package model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the Dodaci database table.
 * 
 */
@Entity
@NamedQuery(name="Dodaci.findAll", query="SELECT d FROM Dodaci d")
public class Dodaci implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="dodatak_id")
	private int dodatakId;

	@Column(name="cena_dodatka")
	private BigDecimal cenaDodatka;

	@Column(name="ime_dodatka")
	private String imeDodatka;

	//bi-directional many-to-one association to Iznajmiti
	@ManyToOne
	@JoinColumn(name="iznajmljivanje_id")
	private Iznajmiti iznajmiti;

	public Dodaci() {
	}

	public int getDodatakId() {
		return this.dodatakId;
	}

	public void setDodatakId(int dodatakId) {
		this.dodatakId = dodatakId;
	}

	public BigDecimal getCenaDodatka() {
		return this.cenaDodatka;
	}

	public void setCenaDodatka(BigDecimal cenaDodatka) {
		this.cenaDodatka = cenaDodatka;
	}

	public String getImeDodatka() {
		return this.imeDodatka;
	}

	public void setImeDodatka(String imeDodatka) {
		this.imeDodatka = imeDodatka;
	}

	public Iznajmiti getIznajmiti() {
		return this.iznajmiti;
	}

	public void setIznajmiti(Iznajmiti iznajmiti) {
		this.iznajmiti = iznajmiti;
	}

}