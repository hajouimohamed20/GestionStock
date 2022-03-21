package user_package;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="instructor")
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	protected int id;
	
	@Column(name="dr")
	protected String dr;
	
	@Column(name="dp")
	protected String dp;
	
	@Column(name="centre")
	protected String centre;
	
	@Column(name="site")
	protected String site;
	
	@Column(name="coordonneeslambert")
	protected String coordonneeslambert;
	
	@Column(name="sourceenergie")
	protected String sourceenergie;
	
	@Column(name="mes")
	protected String mes;
	
	@Column(name="nbrgp")
	protected String nbrgp;
	
	@Column(name="q")
	protected String q;
	
	@Column(name="hmt")
	protected String hmt;
	
	@Column(name="p")
	protected String p;
	
	
	@Column(name="ocond")
	protected String ocond;
	
	@Column(name="tvannes")
	protected String tvannes;
	
	@Column(name="ovannes")
	protected String ovannes;
	
	@Column(name="tcl")
	protected String tcl;
	
	@Column(name="oclap")
	protected String oclap;
	
	public User() {
	}


	public User(int id, String dr, String dp, String centre, String site, String coordonneeslambert, String sourceenergie, String mes, String nbrgp, String q, String hmt, String p, String ocond, String tvannes, String ovannes, String tcl, String oclap ) {
		super();
		this.id = id;
		this.dr = dr;
		this.dp = dp;
		this.centre = centre;
		this.site = site;
		this.coordonneeslambert = coordonneeslambert;
		this.sourceenergie = sourceenergie;
		this.mes = mes;
		this.nbrgp = nbrgp;
		this.q = q;
		this.hmt = hmt;
		this.p = p;
		this.ocond = ocond;
		this.tvannes = tvannes;
		this.ovannes = ovannes;
		this.tcl = tcl;
		this.oclap = oclap;
		
		
		
	}
	public User(String dr, String dp, String centre, String site, String coordonneeslambert, String sourceenergie, String mes, String nbrgp,  String q, String hmt, String p, String ocond, String tvannes, String ovannes, String tcl, String oclap  ) {
		super();
		this.dr = dr;
		this.dp = dp;
		this.centre = centre;
		this.site = site;
		this.coordonneeslambert = coordonneeslambert;
		this.sourceenergie = sourceenergie;
		this.mes = mes;
		this.nbrgp = nbrgp;
		this.q = q;
		this.hmt = hmt;
		this.p = p;
		this.ocond = ocond;
		this.tvannes = tvannes;
		this.ovannes = ovannes;
		this.tcl = tcl;
		this.oclap = oclap;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public String getDr() {
		return dr;
	}


	public void setDr(String dr) {
		this.dr = dr;
	}


	public String getDp() {
		return dp;
	}


	public void setDp(String dp) {
		this.dp = dp;
	}


	public String getCentre() {
		return centre;
	}


	public void setCentre(String centre) {
		this.centre = centre;
	}


	public String getSite() {
		return site;
	}


	public void setSite(String site) {
		this.site = site;
	}


	public String getCoordonneeslambert() {
		return coordonneeslambert;
	}


	public void setCoordonneeslambert(String coordonneeslambert) {
		this.coordonneeslambert = coordonneeslambert;
	}


	public String getSourceenergie() {
		return sourceenergie;
	}


	public void setSourceenergie(String sourceenergie) {
		this.sourceenergie = sourceenergie;
	}


	public String getMes() {
		return mes;
	}


	public void setMes(String mes) {
		this.mes = mes;
	}


	public String getNbrgp() {
		return nbrgp;
	}


	public void setNbrgp(String nbrgp) {
		this.nbrgp = nbrgp;
	}


	public String getQ() {
		return q;
	}


	public void setQ(String q) {
		this.q = q;
	}


	public String getHmt() {
		return hmt;
	}


	public void setHmt(String hmt) {
		this.hmt = hmt;
	}


	public String getP() {
		return p;
	}


	public void setP(String p) {
		this.p = p;
	}


	public String getOcond() {
		return ocond;
	}


	public void setOcond(String ocond) {
		this.ocond = ocond;
	}


	public String getTvannes() {
		return tvannes;
	}


	public void setTvannes(String tvannes) {
		this.tvannes = tvannes;
	}


	public String getOvannes() {
		return ovannes;
	}


	public void setOvannes(String ovannes) {
		this.ovannes = ovannes;
	}


	public String getTcl() {
		return tcl;
	}


	public void setTcl(String tcl) {
		this.tcl = tcl;
	}


	public String getOclap() {
		return oclap;
	}


	public void setOclap(String oclap) {
		this.oclap = oclap;
	}
	
	
	
	
	
	
	
}
