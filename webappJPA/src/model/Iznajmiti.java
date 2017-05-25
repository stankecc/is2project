package model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;


/**
 * The persistent class for the Iznajmiti database table.
 * 
 */
@Entity
@NamedQuery(name="Iznajmiti.findAll", query="SELECT i FROM Iznajmiti i")
public class Iznajmiti implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="iznajmljivanje_id")
	private int iznajmljivanjeId;

	@Column(name="cena_iznajmljivanja")
	private BigDecimal cenaIznajmljivanja;

	private BigDecimal trajanje;

	//bi-directional many-to-one association to Dodaci
	@OneToMany(mappedBy="iznajmiti")
	private List<Dodaci> dodacis;

	//bi-directional many-to-one association to Klijent
	@ManyToOne
	@JoinColumn(name="jmbg")
	private Klijent klijent;

	//bi-directional many-to-one association to Soba
	@ManyToOne
	@JoinColumn(name="broj_sobe")
	private Soba soba;

	public Iznajmiti() {
	}

	public int getIznajmljivanjeId() {
		return this.iznajmljivanjeId;
	}

	public void setIznajmljivanjeId(int iznajmljivanjeId) {
		this.iznajmljivanjeId = iznajmljivanjeId;
	}

	public BigDecimal getCenaIznajmljivanja() {
		return this.cenaIznajmljivanja;
	}

	public void setCenaIznajmljivanja(BigDecimal cenaIznajmljivanja) {
		this.cenaIznajmljivanja = cenaIznajmljivanja;
	}

	public BigDecimal getTrajanje() {
		return this.trajanje;
	}

	public void setTrajanje(BigDecimal trajanje) {
		this.trajanje = trajanje;
	}

	public List<Dodaci> getDodacis() {
		return this.dodacis;
	}

	public void setDodacis(List<Dodaci> dodacis) {
		this.dodacis = dodacis;
	}

	public Dodaci addDodaci(Dodaci dodaci) {
		getDodacis().add(dodaci);
		dodaci.setIznajmiti(this);

		return dodaci;
	}

	public Dodaci removeDodaci(Dodaci dodaci) {
		getDodacis().remove(dodaci);
		dodaci.setIznajmiti(null);

		return dodaci;
	}

	public Klijent getKlijent() {
		return this.klijent;
	}

	public void setKlijent(Klijent klijent) {
		this.klijent = klijent;
	}

	public Soba getSoba() {
		return this.soba;
	}

	public void setSoba(Soba soba) {
		this.soba = soba;
	}

}