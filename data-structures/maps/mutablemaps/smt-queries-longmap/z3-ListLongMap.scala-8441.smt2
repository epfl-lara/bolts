; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102820 () Bool)

(assert start!102820)

(declare-fun b!1235113 () Bool)

(declare-fun res!823393 () Bool)

(declare-fun e!700372 () Bool)

(assert (=> b!1235113 (=> res!823393 e!700372)))

(declare-datatypes ((List!27358 0))(
  ( (Nil!27355) (Cons!27354 (h!28563 (_ BitVec 64)) (t!40828 List!27358)) )
))
(declare-fun lt!560104 () List!27358)

(declare-fun noDuplicate!1880 (List!27358) Bool)

(assert (=> b!1235113 (= res!823393 (not (noDuplicate!1880 lt!560104)))))

(declare-fun b!1235114 () Bool)

(declare-fun res!823386 () Bool)

(declare-fun e!700370 () Bool)

(assert (=> b!1235114 (=> (not res!823386) (not e!700370))))

(declare-fun acc!846 () List!27358)

(declare-fun contains!7273 (List!27358 (_ BitVec 64)) Bool)

(assert (=> b!1235114 (= res!823386 (not (contains!7273 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235115 () Bool)

(declare-fun res!823391 () Bool)

(assert (=> b!1235115 (=> (not res!823391) (not e!700370))))

(assert (=> b!1235115 (= res!823391 (noDuplicate!1880 acc!846))))

(declare-fun b!1235116 () Bool)

(declare-fun res!823397 () Bool)

(assert (=> b!1235116 (=> res!823397 e!700372)))

(assert (=> b!1235116 (= res!823397 (contains!7273 lt!560104 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1235117 () Bool)

(declare-fun res!823396 () Bool)

(assert (=> b!1235117 (=> (not res!823396) (not e!700370))))

(assert (=> b!1235117 (= res!823396 (not (contains!7273 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235118 () Bool)

(declare-fun res!823392 () Bool)

(assert (=> b!1235118 (=> (not res!823392) (not e!700370))))

(declare-datatypes ((array!79606 0))(
  ( (array!79607 (arr!38407 (Array (_ BitVec 32) (_ BitVec 64))) (size!38944 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79606)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235118 (= res!823392 (validKeyInArray!0 (select (arr!38407 a!3835) from!3213)))))

(declare-fun res!823394 () Bool)

(assert (=> start!102820 (=> (not res!823394) (not e!700370))))

(assert (=> start!102820 (= res!823394 (and (bvslt (size!38944 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38944 a!3835))))))

(assert (=> start!102820 e!700370))

(declare-fun array_inv!29183 (array!79606) Bool)

(assert (=> start!102820 (array_inv!29183 a!3835)))

(assert (=> start!102820 true))

(declare-fun b!1235119 () Bool)

(declare-fun res!823389 () Bool)

(assert (=> b!1235119 (=> (not res!823389) (not e!700370))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1235119 (= res!823389 (contains!7273 acc!846 k0!2925))))

(declare-fun b!1235120 () Bool)

(declare-fun res!823388 () Bool)

(assert (=> b!1235120 (=> (not res!823388) (not e!700370))))

(declare-fun arrayNoDuplicates!0 (array!79606 (_ BitVec 32) List!27358) Bool)

(assert (=> b!1235120 (= res!823388 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235121 () Bool)

(declare-fun res!823390 () Bool)

(assert (=> b!1235121 (=> (not res!823390) (not e!700370))))

(assert (=> b!1235121 (= res!823390 (not (= from!3213 (bvsub (size!38944 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235122 () Bool)

(assert (=> b!1235122 (= e!700372 true)))

(declare-fun lt!560103 () Bool)

(assert (=> b!1235122 (= lt!560103 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!560104))))

(declare-datatypes ((Unit!40858 0))(
  ( (Unit!40859) )
))
(declare-fun lt!560107 () Unit!40858)

(declare-fun noDuplicateSubseq!75 (List!27358 List!27358) Unit!40858)

(assert (=> b!1235122 (= lt!560107 (noDuplicateSubseq!75 acc!846 lt!560104))))

(declare-fun b!1235123 () Bool)

(assert (=> b!1235123 (= e!700370 (not e!700372))))

(declare-fun res!823395 () Bool)

(assert (=> b!1235123 (=> res!823395 e!700372)))

(assert (=> b!1235123 (= res!823395 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!528 (List!27358 List!27358) Bool)

(assert (=> b!1235123 (subseq!528 acc!846 lt!560104)))

(declare-fun lt!560106 () Unit!40858)

(declare-fun subseqTail!21 (List!27358 List!27358) Unit!40858)

(assert (=> b!1235123 (= lt!560106 (subseqTail!21 lt!560104 lt!560104))))

(assert (=> b!1235123 (subseq!528 lt!560104 lt!560104)))

(declare-fun lt!560105 () Unit!40858)

(declare-fun lemmaListSubSeqRefl!0 (List!27358) Unit!40858)

(assert (=> b!1235123 (= lt!560105 (lemmaListSubSeqRefl!0 lt!560104))))

(assert (=> b!1235123 (= lt!560104 (Cons!27354 (select (arr!38407 a!3835) from!3213) acc!846))))

(declare-fun b!1235124 () Bool)

(declare-fun res!823387 () Bool)

(assert (=> b!1235124 (=> res!823387 e!700372)))

(assert (=> b!1235124 (= res!823387 (contains!7273 lt!560104 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102820 res!823394) b!1235115))

(assert (= (and b!1235115 res!823391) b!1235117))

(assert (= (and b!1235117 res!823396) b!1235114))

(assert (= (and b!1235114 res!823386) b!1235120))

(assert (= (and b!1235120 res!823388) b!1235119))

(assert (= (and b!1235119 res!823389) b!1235121))

(assert (= (and b!1235121 res!823390) b!1235118))

(assert (= (and b!1235118 res!823392) b!1235123))

(assert (= (and b!1235123 (not res!823395)) b!1235113))

(assert (= (and b!1235113 (not res!823393)) b!1235124))

(assert (= (and b!1235124 (not res!823387)) b!1235116))

(assert (= (and b!1235116 (not res!823397)) b!1235122))

(declare-fun m!1139061 () Bool)

(assert (=> b!1235113 m!1139061))

(declare-fun m!1139063 () Bool)

(assert (=> start!102820 m!1139063))

(declare-fun m!1139065 () Bool)

(assert (=> b!1235116 m!1139065))

(declare-fun m!1139067 () Bool)

(assert (=> b!1235120 m!1139067))

(declare-fun m!1139069 () Bool)

(assert (=> b!1235124 m!1139069))

(declare-fun m!1139071 () Bool)

(assert (=> b!1235114 m!1139071))

(declare-fun m!1139073 () Bool)

(assert (=> b!1235117 m!1139073))

(declare-fun m!1139075 () Bool)

(assert (=> b!1235122 m!1139075))

(declare-fun m!1139077 () Bool)

(assert (=> b!1235122 m!1139077))

(declare-fun m!1139079 () Bool)

(assert (=> b!1235118 m!1139079))

(assert (=> b!1235118 m!1139079))

(declare-fun m!1139081 () Bool)

(assert (=> b!1235118 m!1139081))

(declare-fun m!1139083 () Bool)

(assert (=> b!1235115 m!1139083))

(declare-fun m!1139085 () Bool)

(assert (=> b!1235123 m!1139085))

(declare-fun m!1139087 () Bool)

(assert (=> b!1235123 m!1139087))

(assert (=> b!1235123 m!1139079))

(declare-fun m!1139089 () Bool)

(assert (=> b!1235123 m!1139089))

(declare-fun m!1139091 () Bool)

(assert (=> b!1235123 m!1139091))

(declare-fun m!1139093 () Bool)

(assert (=> b!1235119 m!1139093))

(check-sat (not b!1235123) (not b!1235113) (not b!1235122) (not b!1235119) (not b!1235116) (not b!1235124) (not b!1235117) (not b!1235114) (not b!1235120) (not start!102820) (not b!1235115) (not b!1235118))
(check-sat)
