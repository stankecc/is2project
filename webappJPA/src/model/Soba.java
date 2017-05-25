package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the Soba database table.
 * 
 */
@Entity
@NamedQuery(name="Soba.findAll", query="SELECT s FROM Soba s")
public class Soba implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="broj_sobe")
	private String brojSobe;

	//bi-directional many-to-one association to Iznajmiti
	@OneToMany(mappedBy="soba")
	private List<Iznajmiti> iznajmitis;

	//bi-directional many-to-one association to Cena
	@ManyToOne
	@JoinColumn(name="tip_sobe")
	private Cena cena;

	public Soba() {
	}

	public String getBrojSobe() {
		return this.brojSobe;
	}

	public void setBrojSobe(String brojSobe) {
		this.brojSobe = brojSobe;
	}

	public List<Iznajmiti> getIznajmitis() {
		return this.iznajmitis;
	}

	public void setIznajmitis(List<Iznajmiti> iznajmitis) {
		this.iznajmitis = iznajmitis;
	}

	public Iznajmiti addIznajmiti(Iznajmiti iznajmiti) {
		getIznajmitis().add(iznajmiti);
		iznajmiti.setSoba(this);

		return iznajmiti;
	}

	public Iznajmiti removeIznajmiti(Iznajmiti iznajmiti) {
		getIznajmitis().remove(iznajmiti);
		iznajmiti.setSoba(null);

		return iznajmiti;
	}

	public Cena getCena() {
		return this.cena;
	}

	public void setCena(Cena cena) {
		this.cena = cena;
	}

}