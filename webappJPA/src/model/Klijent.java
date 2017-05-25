package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the Klijent database table.
 * 
 */
@Entity
@NamedQuery(name="Klijent.findAll", query="SELECT k FROM Klijent k")
public class Klijent implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private String jmbg;

	@Temporal(TemporalType.DATE)
	@Column(name="datum_rodjenja")
	private Date datumRodjenja;

	private String ime;

	private String prezime;

	//bi-directional many-to-one association to Iznajmiti
	@OneToMany(mappedBy="klijent")
	private List<Iznajmiti> iznajmitis;

	//bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name="email")
	private User user;

	public Klijent() {
	}

	public String getJmbg() {
		return this.jmbg;
	}

	public void setJmbg(String jmbg) {
		this.jmbg = jmbg;
	}

	public Date getDatumRodjenja() {
		return this.datumRodjenja;
	}

	public void setDatumRodjenja(Date datumRodjenja) {
		this.datumRodjenja = datumRodjenja;
	}

	public String getIme() {
		return this.ime;
	}

	public void setIme(String ime) {
		this.ime = ime;
	}

	public String getPrezime() {
		return this.prezime;
	}

	public void setPrezime(String prezime) {
		this.prezime = prezime;
	}

	public List<Iznajmiti> getIznajmitis() {
		return this.iznajmitis;
	}

	public void setIznajmitis(List<Iznajmiti> iznajmitis) {
		this.iznajmitis = iznajmitis;
	}

	public Iznajmiti addIznajmiti(Iznajmiti iznajmiti) {
		getIznajmitis().add(iznajmiti);
		iznajmiti.setKlijent(this);

		return iznajmiti;
	}

	public Iznajmiti removeIznajmiti(Iznajmiti iznajmiti) {
		getIznajmitis().remove(iznajmiti);
		iznajmiti.setKlijent(null);

		return iznajmiti;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}