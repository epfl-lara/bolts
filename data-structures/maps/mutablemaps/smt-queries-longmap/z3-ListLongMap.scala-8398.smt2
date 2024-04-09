; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102210 () Bool)

(assert start!102210)

(declare-fun b!1229903 () Bool)

(declare-fun res!818497 () Bool)

(declare-fun e!697988 () Bool)

(assert (=> b!1229903 (=> (not res!818497) (not e!697988))))

(declare-datatypes ((List!27229 0))(
  ( (Nil!27226) (Cons!27225 (h!28434 (_ BitVec 64)) (t!40699 List!27229)) )
))
(declare-fun acc!823 () List!27229)

(declare-fun contains!7144 (List!27229 (_ BitVec 64)) Bool)

(assert (=> b!1229903 (= res!818497 (not (contains!7144 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229904 () Bool)

(declare-fun res!818505 () Bool)

(assert (=> b!1229904 (=> (not res!818505) (not e!697988))))

(declare-datatypes ((array!79324 0))(
  ( (array!79325 (arr!38278 (Array (_ BitVec 32) (_ BitVec 64))) (size!38815 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79324)

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79324 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229904 (= res!818505 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229905 () Bool)

(declare-fun res!818495 () Bool)

(declare-fun e!697990 () Bool)

(assert (=> b!1229905 (=> res!818495 e!697990)))

(declare-fun lt!559235 () List!27229)

(declare-fun noDuplicate!1751 (List!27229) Bool)

(assert (=> b!1229905 (= res!818495 (not (noDuplicate!1751 lt!559235)))))

(declare-fun b!1229906 () Bool)

(declare-fun res!818498 () Bool)

(assert (=> b!1229906 (=> res!818498 e!697990)))

(assert (=> b!1229906 (= res!818498 (contains!7144 lt!559235 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229907 () Bool)

(declare-fun res!818494 () Bool)

(assert (=> b!1229907 (=> (not res!818494) (not e!697988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229907 (= res!818494 (validKeyInArray!0 k0!2913))))

(declare-fun b!1229908 () Bool)

(assert (=> b!1229908 (= e!697988 (not e!697990))))

(declare-fun res!818503 () Bool)

(assert (=> b!1229908 (=> res!818503 e!697990)))

(assert (=> b!1229908 (= res!818503 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1229908 (= lt!559235 (Cons!27225 (select (arr!38278 a!3806) from!3184) Nil!27226))))

(declare-fun e!697987 () Bool)

(assert (=> b!1229908 e!697987))

(declare-fun res!818506 () Bool)

(assert (=> b!1229908 (=> (not res!818506) (not e!697987))))

(declare-fun arrayNoDuplicates!0 (array!79324 (_ BitVec 32) List!27229) Bool)

(assert (=> b!1229908 (= res!818506 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27226))))

(declare-datatypes ((Unit!40696 0))(
  ( (Unit!40697) )
))
(declare-fun lt!559234 () Unit!40696)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79324 List!27229 List!27229 (_ BitVec 32)) Unit!40696)

(assert (=> b!1229908 (= lt!559234 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27226 from!3184))))

(assert (=> b!1229908 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27225 (select (arr!38278 a!3806) from!3184) acc!823))))

(declare-fun res!818507 () Bool)

(assert (=> start!102210 (=> (not res!818507) (not e!697988))))

(assert (=> start!102210 (= res!818507 (bvslt (size!38815 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102210 e!697988))

(declare-fun array_inv!29054 (array!79324) Bool)

(assert (=> start!102210 (array_inv!29054 a!3806)))

(assert (=> start!102210 true))

(declare-fun b!1229909 () Bool)

(assert (=> b!1229909 (= e!697990 true)))

(declare-fun lt!559233 () Bool)

(assert (=> b!1229909 (= lt!559233 (contains!7144 lt!559235 (select (arr!38278 a!3806) from!3184)))))

(declare-fun b!1229910 () Bool)

(declare-fun res!818504 () Bool)

(assert (=> b!1229910 (=> (not res!818504) (not e!697988))))

(assert (=> b!1229910 (= res!818504 (validKeyInArray!0 (select (arr!38278 a!3806) from!3184)))))

(declare-fun b!1229911 () Bool)

(declare-fun res!818496 () Bool)

(assert (=> b!1229911 (=> (not res!818496) (not e!697988))))

(assert (=> b!1229911 (= res!818496 (noDuplicate!1751 acc!823))))

(declare-fun b!1229912 () Bool)

(declare-fun res!818501 () Bool)

(assert (=> b!1229912 (=> (not res!818501) (not e!697988))))

(assert (=> b!1229912 (= res!818501 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38815 a!3806)) (bvslt from!3184 (size!38815 a!3806))))))

(declare-fun b!1229913 () Bool)

(declare-fun res!818502 () Bool)

(assert (=> b!1229913 (=> (not res!818502) (not e!697988))))

(assert (=> b!1229913 (= res!818502 (not (contains!7144 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229914 () Bool)

(assert (=> b!1229914 (= e!697987 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27225 (select (arr!38278 a!3806) from!3184) Nil!27226)))))

(declare-fun b!1229915 () Bool)

(declare-fun res!818500 () Bool)

(assert (=> b!1229915 (=> res!818500 e!697990)))

(assert (=> b!1229915 (= res!818500 (contains!7144 lt!559235 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229916 () Bool)

(declare-fun res!818499 () Bool)

(assert (=> b!1229916 (=> (not res!818499) (not e!697988))))

(assert (=> b!1229916 (= res!818499 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(assert (= (and start!102210 res!818507) b!1229907))

(assert (= (and b!1229907 res!818494) b!1229912))

(assert (= (and b!1229912 res!818501) b!1229911))

(assert (= (and b!1229911 res!818496) b!1229903))

(assert (= (and b!1229903 res!818497) b!1229913))

(assert (= (and b!1229913 res!818502) b!1229904))

(assert (= (and b!1229904 res!818505) b!1229916))

(assert (= (and b!1229916 res!818499) b!1229910))

(assert (= (and b!1229910 res!818504) b!1229908))

(assert (= (and b!1229908 res!818506) b!1229914))

(assert (= (and b!1229908 (not res!818503)) b!1229905))

(assert (= (and b!1229905 (not res!818495)) b!1229915))

(assert (= (and b!1229915 (not res!818500)) b!1229906))

(assert (= (and b!1229906 (not res!818498)) b!1229909))

(declare-fun m!1134435 () Bool)

(assert (=> b!1229910 m!1134435))

(assert (=> b!1229910 m!1134435))

(declare-fun m!1134437 () Bool)

(assert (=> b!1229910 m!1134437))

(assert (=> b!1229908 m!1134435))

(declare-fun m!1134439 () Bool)

(assert (=> b!1229908 m!1134439))

(declare-fun m!1134441 () Bool)

(assert (=> b!1229908 m!1134441))

(declare-fun m!1134443 () Bool)

(assert (=> b!1229908 m!1134443))

(declare-fun m!1134445 () Bool)

(assert (=> b!1229906 m!1134445))

(declare-fun m!1134447 () Bool)

(assert (=> b!1229911 m!1134447))

(assert (=> b!1229914 m!1134435))

(declare-fun m!1134449 () Bool)

(assert (=> b!1229914 m!1134449))

(declare-fun m!1134451 () Bool)

(assert (=> b!1229905 m!1134451))

(declare-fun m!1134453 () Bool)

(assert (=> b!1229903 m!1134453))

(assert (=> b!1229909 m!1134435))

(assert (=> b!1229909 m!1134435))

(declare-fun m!1134455 () Bool)

(assert (=> b!1229909 m!1134455))

(declare-fun m!1134457 () Bool)

(assert (=> start!102210 m!1134457))

(declare-fun m!1134459 () Bool)

(assert (=> b!1229904 m!1134459))

(declare-fun m!1134461 () Bool)

(assert (=> b!1229913 m!1134461))

(declare-fun m!1134463 () Bool)

(assert (=> b!1229907 m!1134463))

(declare-fun m!1134465 () Bool)

(assert (=> b!1229916 m!1134465))

(declare-fun m!1134467 () Bool)

(assert (=> b!1229915 m!1134467))

(check-sat (not b!1229905) (not b!1229907) (not b!1229906) (not b!1229904) (not b!1229910) (not b!1229914) (not b!1229909) (not b!1229903) (not b!1229911) (not b!1229913) (not b!1229915) (not start!102210) (not b!1229908) (not b!1229916))
