; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104198 () Bool)

(assert start!104198)

(declare-fun b!1245083 () Bool)

(declare-fun res!830710 () Bool)

(declare-fun e!705934 () Bool)

(assert (=> b!1245083 (=> (not res!830710) (not e!705934))))

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1245083 (= res!830710 (and (= from!3270 newFrom!287) (bvsge newFrom!287 #b00000000000000000000000000000000)))))

(declare-fun b!1245084 () Bool)

(declare-fun res!830712 () Bool)

(assert (=> b!1245084 (=> (not res!830712) (not e!705934))))

(declare-datatypes ((List!27619 0))(
  ( (Nil!27616) (Cons!27615 (h!28824 (_ BitVec 64)) (t!41095 List!27619)) )
))
(declare-fun noDuplicate!2048 (List!27619) Bool)

(assert (=> b!1245084 (= res!830712 (noDuplicate!2048 Nil!27616))))

(declare-fun b!1245085 () Bool)

(declare-fun res!830709 () Bool)

(assert (=> b!1245085 (=> (not res!830709) (not e!705934))))

(declare-datatypes ((array!80113 0))(
  ( (array!80114 (arr!38638 (Array (_ BitVec 32) (_ BitVec 64))) (size!39175 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80113)

(declare-fun arrayNoDuplicates!0 (array!80113 (_ BitVec 32) List!27619) Bool)

(assert (=> b!1245085 (= res!830709 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27616))))

(declare-fun b!1245086 () Bool)

(declare-fun e!705935 () Bool)

(assert (=> b!1245086 (= e!705934 e!705935)))

(declare-fun res!830711 () Bool)

(assert (=> b!1245086 (=> res!830711 e!705935)))

(declare-fun contains!7458 (List!27619 (_ BitVec 64)) Bool)

(assert (=> b!1245086 (= res!830711 (contains!7458 Nil!27616 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!830713 () Bool)

(assert (=> start!104198 (=> (not res!830713) (not e!705934))))

(assert (=> start!104198 (= res!830713 (and (bvslt (size!39175 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39175 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39175 a!3892))))))

(assert (=> start!104198 e!705934))

(declare-fun array_inv!29414 (array!80113) Bool)

(assert (=> start!104198 (array_inv!29414 a!3892)))

(assert (=> start!104198 true))

(declare-fun b!1245087 () Bool)

(assert (=> b!1245087 (= e!705935 (contains!7458 Nil!27616 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!104198 res!830713) b!1245085))

(assert (= (and b!1245085 res!830709) b!1245083))

(assert (= (and b!1245083 res!830710) b!1245084))

(assert (= (and b!1245084 res!830712) b!1245086))

(assert (= (and b!1245086 (not res!830711)) b!1245087))

(declare-fun m!1147225 () Bool)

(assert (=> b!1245087 m!1147225))

(declare-fun m!1147227 () Bool)

(assert (=> b!1245085 m!1147227))

(declare-fun m!1147229 () Bool)

(assert (=> b!1245086 m!1147229))

(declare-fun m!1147231 () Bool)

(assert (=> b!1245084 m!1147231))

(declare-fun m!1147233 () Bool)

(assert (=> start!104198 m!1147233))

(check-sat (not b!1245087) (not b!1245084) (not b!1245086) (not start!104198) (not b!1245085))
(check-sat)
(get-model)

(declare-fun d!137223 () Bool)

(declare-fun lt!562809 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!623 (List!27619) (InoxSet (_ BitVec 64)))

(assert (=> d!137223 (= lt!562809 (select (content!623 Nil!27616) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!705957 () Bool)

(assert (=> d!137223 (= lt!562809 e!705957)))

(declare-fun res!830741 () Bool)

(assert (=> d!137223 (=> (not res!830741) (not e!705957))))

(get-info :version)

(assert (=> d!137223 (= res!830741 ((_ is Cons!27615) Nil!27616))))

(assert (=> d!137223 (= (contains!7458 Nil!27616 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562809)))

(declare-fun b!1245115 () Bool)

(declare-fun e!705958 () Bool)

(assert (=> b!1245115 (= e!705957 e!705958)))

(declare-fun res!830742 () Bool)

(assert (=> b!1245115 (=> res!830742 e!705958)))

(assert (=> b!1245115 (= res!830742 (= (h!28824 Nil!27616) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245116 () Bool)

(assert (=> b!1245116 (= e!705958 (contains!7458 (t!41095 Nil!27616) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137223 res!830741) b!1245115))

(assert (= (and b!1245115 (not res!830742)) b!1245116))

(declare-fun m!1147249 () Bool)

(assert (=> d!137223 m!1147249))

(declare-fun m!1147251 () Bool)

(assert (=> d!137223 m!1147251))

(declare-fun m!1147253 () Bool)

(assert (=> b!1245116 m!1147253))

(assert (=> b!1245086 d!137223))

(declare-fun d!137233 () Bool)

(assert (=> d!137233 (= (array_inv!29414 a!3892) (bvsge (size!39175 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104198 d!137233))

(declare-fun bm!61463 () Bool)

(declare-fun c!121878 () Bool)

(declare-fun call!61466 () Bool)

(assert (=> bm!61463 (= call!61466 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121878 (Cons!27615 (select (arr!38638 a!3892) from!3270) Nil!27616) Nil!27616)))))

(declare-fun b!1245151 () Bool)

(declare-fun e!705989 () Bool)

(assert (=> b!1245151 (= e!705989 (contains!7458 Nil!27616 (select (arr!38638 a!3892) from!3270)))))

(declare-fun d!137235 () Bool)

(declare-fun res!830769 () Bool)

(declare-fun e!705992 () Bool)

(assert (=> d!137235 (=> res!830769 e!705992)))

(assert (=> d!137235 (= res!830769 (bvsge from!3270 (size!39175 a!3892)))))

(assert (=> d!137235 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27616) e!705992)))

(declare-fun b!1245152 () Bool)

(declare-fun e!705990 () Bool)

(assert (=> b!1245152 (= e!705992 e!705990)))

(declare-fun res!830770 () Bool)

(assert (=> b!1245152 (=> (not res!830770) (not e!705990))))

(assert (=> b!1245152 (= res!830770 (not e!705989))))

(declare-fun res!830771 () Bool)

(assert (=> b!1245152 (=> (not res!830771) (not e!705989))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245152 (= res!830771 (validKeyInArray!0 (select (arr!38638 a!3892) from!3270)))))

(declare-fun b!1245153 () Bool)

(declare-fun e!705991 () Bool)

(assert (=> b!1245153 (= e!705991 call!61466)))

(declare-fun b!1245154 () Bool)

(assert (=> b!1245154 (= e!705991 call!61466)))

(declare-fun b!1245155 () Bool)

(assert (=> b!1245155 (= e!705990 e!705991)))

(assert (=> b!1245155 (= c!121878 (validKeyInArray!0 (select (arr!38638 a!3892) from!3270)))))

(assert (= (and d!137235 (not res!830769)) b!1245152))

(assert (= (and b!1245152 res!830771) b!1245151))

(assert (= (and b!1245152 res!830770) b!1245155))

(assert (= (and b!1245155 c!121878) b!1245153))

(assert (= (and b!1245155 (not c!121878)) b!1245154))

(assert (= (or b!1245153 b!1245154) bm!61463))

(declare-fun m!1147271 () Bool)

(assert (=> bm!61463 m!1147271))

(declare-fun m!1147273 () Bool)

(assert (=> bm!61463 m!1147273))

(assert (=> b!1245151 m!1147271))

(assert (=> b!1245151 m!1147271))

(declare-fun m!1147275 () Bool)

(assert (=> b!1245151 m!1147275))

(assert (=> b!1245152 m!1147271))

(assert (=> b!1245152 m!1147271))

(declare-fun m!1147277 () Bool)

(assert (=> b!1245152 m!1147277))

(assert (=> b!1245155 m!1147271))

(assert (=> b!1245155 m!1147271))

(assert (=> b!1245155 m!1147277))

(assert (=> b!1245085 d!137235))

(declare-fun d!137243 () Bool)

(declare-fun res!830790 () Bool)

(declare-fun e!706015 () Bool)

(assert (=> d!137243 (=> res!830790 e!706015)))

(assert (=> d!137243 (= res!830790 ((_ is Nil!27616) Nil!27616))))

(assert (=> d!137243 (= (noDuplicate!2048 Nil!27616) e!706015)))

(declare-fun b!1245180 () Bool)

(declare-fun e!706016 () Bool)

(assert (=> b!1245180 (= e!706015 e!706016)))

(declare-fun res!830791 () Bool)

(assert (=> b!1245180 (=> (not res!830791) (not e!706016))))

(assert (=> b!1245180 (= res!830791 (not (contains!7458 (t!41095 Nil!27616) (h!28824 Nil!27616))))))

(declare-fun b!1245181 () Bool)

(assert (=> b!1245181 (= e!706016 (noDuplicate!2048 (t!41095 Nil!27616)))))

(assert (= (and d!137243 (not res!830790)) b!1245180))

(assert (= (and b!1245180 res!830791) b!1245181))

(declare-fun m!1147287 () Bool)

(assert (=> b!1245180 m!1147287))

(declare-fun m!1147289 () Bool)

(assert (=> b!1245181 m!1147289))

(assert (=> b!1245084 d!137243))

(declare-fun d!137249 () Bool)

(declare-fun lt!562815 () Bool)

(assert (=> d!137249 (= lt!562815 (select (content!623 Nil!27616) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!706017 () Bool)

(assert (=> d!137249 (= lt!562815 e!706017)))

(declare-fun res!830792 () Bool)

(assert (=> d!137249 (=> (not res!830792) (not e!706017))))

(assert (=> d!137249 (= res!830792 ((_ is Cons!27615) Nil!27616))))

(assert (=> d!137249 (= (contains!7458 Nil!27616 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562815)))

(declare-fun b!1245184 () Bool)

(declare-fun e!706018 () Bool)

(assert (=> b!1245184 (= e!706017 e!706018)))

(declare-fun res!830793 () Bool)

(assert (=> b!1245184 (=> res!830793 e!706018)))

(assert (=> b!1245184 (= res!830793 (= (h!28824 Nil!27616) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245185 () Bool)

(assert (=> b!1245185 (= e!706018 (contains!7458 (t!41095 Nil!27616) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137249 res!830792) b!1245184))

(assert (= (and b!1245184 (not res!830793)) b!1245185))

(assert (=> d!137249 m!1147249))

(declare-fun m!1147299 () Bool)

(assert (=> d!137249 m!1147299))

(declare-fun m!1147301 () Bool)

(assert (=> b!1245185 m!1147301))

(assert (=> b!1245087 d!137249))

(check-sat (not bm!61463) (not b!1245185) (not b!1245152) (not b!1245116) (not b!1245181) (not d!137223) (not b!1245180) (not d!137249) (not b!1245155) (not b!1245151))
(check-sat)
