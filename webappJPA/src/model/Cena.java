package model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;


/**
 * The persistent class for the Cena database table.
 * 
 */
@Entity
@NamedQuery(name="Cena.findAll", query="SELECT c FROM Cena c")
public class Cena implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="tip_sobe")
	private String tipSobe;

	@Column(name="cena_sobe")
	private BigDecimal cenaSobe;

	//bi-directional many-to-one association to Soba
	@OneToMany(mappedBy="cena")
	private List<Soba> sobas;

	public Cena() {
	}

	public String getTipSobe() {
		return this.tipSobe;
	}

	public void setTipSobe(String tipSobe) {
		this.tipSobe = tipSobe;
	}

	public BigDecimal getCenaSobe() {
		return this.cenaSobe;
	}

	public void setCenaSobe(BigDecimal cenaSobe) {
		this.cenaSobe = cenaSobe;
	}

	public List<Soba> getSobas() {
		return this.sobas;
	}

	public void setSobas(List<Soba> sobas) {
		this.sobas = sobas;
	}

	public Soba addSoba(Soba soba) {
		getSobas().add(soba);
		soba.setCena(this);

		return soba;
	}

	public Soba removeSoba(Soba soba) {
		getSobas().remove(soba);
		soba.setCena(null);

		return soba;
	}

}