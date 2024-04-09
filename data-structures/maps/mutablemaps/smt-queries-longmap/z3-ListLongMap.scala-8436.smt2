; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102790 () Bool)

(assert start!102790)

(declare-fun res!822850 () Bool)

(declare-fun e!700236 () Bool)

(assert (=> start!102790 (=> (not res!822850) (not e!700236))))

(declare-datatypes ((array!79576 0))(
  ( (array!79577 (arr!38392 (Array (_ BitVec 32) (_ BitVec 64))) (size!38929 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79576)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102790 (= res!822850 (and (bvslt (size!38929 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38929 a!3835))))))

(assert (=> start!102790 e!700236))

(declare-fun array_inv!29168 (array!79576) Bool)

(assert (=> start!102790 (array_inv!29168 a!3835)))

(assert (=> start!102790 true))

(declare-fun b!1234573 () Bool)

(declare-fun res!822856 () Bool)

(declare-fun e!700237 () Bool)

(assert (=> b!1234573 (=> res!822856 e!700237)))

(declare-datatypes ((List!27343 0))(
  ( (Nil!27340) (Cons!27339 (h!28548 (_ BitVec 64)) (t!40813 List!27343)) )
))
(declare-fun lt!559878 () List!27343)

(declare-fun contains!7258 (List!27343 (_ BitVec 64)) Bool)

(assert (=> b!1234573 (= res!822856 (contains!7258 lt!559878 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234574 () Bool)

(declare-fun res!822855 () Bool)

(assert (=> b!1234574 (=> (not res!822855) (not e!700236))))

(declare-fun acc!846 () List!27343)

(assert (=> b!1234574 (= res!822855 (not (contains!7258 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234575 () Bool)

(declare-fun res!822853 () Bool)

(assert (=> b!1234575 (=> (not res!822853) (not e!700236))))

(assert (=> b!1234575 (= res!822853 (not (= from!3213 (bvsub (size!38929 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1234576 () Bool)

(assert (=> b!1234576 (= e!700236 (not e!700237))))

(declare-fun res!822846 () Bool)

(assert (=> b!1234576 (=> res!822846 e!700237)))

(assert (=> b!1234576 (= res!822846 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!513 (List!27343 List!27343) Bool)

(assert (=> b!1234576 (subseq!513 acc!846 lt!559878)))

(declare-datatypes ((Unit!40828 0))(
  ( (Unit!40829) )
))
(declare-fun lt!559881 () Unit!40828)

(declare-fun subseqTail!6 (List!27343 List!27343) Unit!40828)

(assert (=> b!1234576 (= lt!559881 (subseqTail!6 lt!559878 lt!559878))))

(assert (=> b!1234576 (subseq!513 lt!559878 lt!559878)))

(declare-fun lt!559879 () Unit!40828)

(declare-fun lemmaListSubSeqRefl!0 (List!27343) Unit!40828)

(assert (=> b!1234576 (= lt!559879 (lemmaListSubSeqRefl!0 lt!559878))))

(assert (=> b!1234576 (= lt!559878 (Cons!27339 (select (arr!38392 a!3835) from!3213) acc!846))))

(declare-fun b!1234577 () Bool)

(assert (=> b!1234577 (= e!700237 true)))

(declare-fun lt!559882 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79576 (_ BitVec 32) List!27343) Bool)

(assert (=> b!1234577 (= lt!559882 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!559878))))

(declare-fun lt!559880 () Unit!40828)

(declare-fun noDuplicateSubseq!60 (List!27343 List!27343) Unit!40828)

(assert (=> b!1234577 (= lt!559880 (noDuplicateSubseq!60 acc!846 lt!559878))))

(declare-fun b!1234578 () Bool)

(declare-fun res!822847 () Bool)

(assert (=> b!1234578 (=> (not res!822847) (not e!700236))))

(assert (=> b!1234578 (= res!822847 (not (contains!7258 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234579 () Bool)

(declare-fun res!822851 () Bool)

(assert (=> b!1234579 (=> (not res!822851) (not e!700236))))

(declare-fun noDuplicate!1865 (List!27343) Bool)

(assert (=> b!1234579 (= res!822851 (noDuplicate!1865 acc!846))))

(declare-fun b!1234580 () Bool)

(declare-fun res!822849 () Bool)

(assert (=> b!1234580 (=> res!822849 e!700237)))

(assert (=> b!1234580 (= res!822849 (not (noDuplicate!1865 lt!559878)))))

(declare-fun b!1234581 () Bool)

(declare-fun res!822852 () Bool)

(assert (=> b!1234581 (=> (not res!822852) (not e!700236))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1234581 (= res!822852 (contains!7258 acc!846 k0!2925))))

(declare-fun b!1234582 () Bool)

(declare-fun res!822848 () Bool)

(assert (=> b!1234582 (=> (not res!822848) (not e!700236))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234582 (= res!822848 (validKeyInArray!0 (select (arr!38392 a!3835) from!3213)))))

(declare-fun b!1234583 () Bool)

(declare-fun res!822857 () Bool)

(assert (=> b!1234583 (=> (not res!822857) (not e!700236))))

(assert (=> b!1234583 (= res!822857 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1234584 () Bool)

(declare-fun res!822854 () Bool)

(assert (=> b!1234584 (=> res!822854 e!700237)))

(assert (=> b!1234584 (= res!822854 (contains!7258 lt!559878 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102790 res!822850) b!1234579))

(assert (= (and b!1234579 res!822851) b!1234578))

(assert (= (and b!1234578 res!822847) b!1234574))

(assert (= (and b!1234574 res!822855) b!1234583))

(assert (= (and b!1234583 res!822857) b!1234581))

(assert (= (and b!1234581 res!822852) b!1234575))

(assert (= (and b!1234575 res!822853) b!1234582))

(assert (= (and b!1234582 res!822848) b!1234576))

(assert (= (and b!1234576 (not res!822846)) b!1234580))

(assert (= (and b!1234580 (not res!822849)) b!1234573))

(assert (= (and b!1234573 (not res!822856)) b!1234584))

(assert (= (and b!1234584 (not res!822854)) b!1234577))

(declare-fun m!1138551 () Bool)

(assert (=> b!1234584 m!1138551))

(declare-fun m!1138553 () Bool)

(assert (=> b!1234573 m!1138553))

(declare-fun m!1138555 () Bool)

(assert (=> b!1234580 m!1138555))

(declare-fun m!1138557 () Bool)

(assert (=> b!1234583 m!1138557))

(declare-fun m!1138559 () Bool)

(assert (=> b!1234578 m!1138559))

(declare-fun m!1138561 () Bool)

(assert (=> b!1234581 m!1138561))

(declare-fun m!1138563 () Bool)

(assert (=> b!1234582 m!1138563))

(assert (=> b!1234582 m!1138563))

(declare-fun m!1138565 () Bool)

(assert (=> b!1234582 m!1138565))

(declare-fun m!1138567 () Bool)

(assert (=> b!1234579 m!1138567))

(declare-fun m!1138569 () Bool)

(assert (=> b!1234574 m!1138569))

(declare-fun m!1138571 () Bool)

(assert (=> start!102790 m!1138571))

(declare-fun m!1138573 () Bool)

(assert (=> b!1234576 m!1138573))

(declare-fun m!1138575 () Bool)

(assert (=> b!1234576 m!1138575))

(declare-fun m!1138577 () Bool)

(assert (=> b!1234576 m!1138577))

(declare-fun m!1138579 () Bool)

(assert (=> b!1234576 m!1138579))

(assert (=> b!1234576 m!1138563))

(declare-fun m!1138581 () Bool)

(assert (=> b!1234577 m!1138581))

(declare-fun m!1138583 () Bool)

(assert (=> b!1234577 m!1138583))

(check-sat (not b!1234583) (not b!1234581) (not b!1234580) (not start!102790) (not b!1234582) (not b!1234579) (not b!1234574) (not b!1234573) (not b!1234584) (not b!1234578) (not b!1234576) (not b!1234577))
(check-sat)
