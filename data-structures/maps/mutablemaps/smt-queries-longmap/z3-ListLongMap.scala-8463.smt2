; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103016 () Bool)

(assert start!103016)

(declare-fun b!1237109 () Bool)

(declare-fun res!825104 () Bool)

(declare-fun e!701216 () Bool)

(assert (=> b!1237109 (=> (not res!825104) (not e!701216))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79741 0))(
  ( (array!79742 (arr!38473 (Array (_ BitVec 32) (_ BitVec 64))) (size!39010 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79741)

(assert (=> b!1237109 (= res!825104 (not (= from!3213 (bvsub (size!39010 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1237110 () Bool)

(declare-fun res!825103 () Bool)

(assert (=> b!1237110 (=> (not res!825103) (not e!701216))))

(declare-datatypes ((List!27424 0))(
  ( (Nil!27421) (Cons!27420 (h!28629 (_ BitVec 64)) (t!40894 List!27424)) )
))
(declare-fun acc!846 () List!27424)

(declare-fun k0!2925 () (_ BitVec 64))

(declare-fun contains!7339 (List!27424 (_ BitVec 64)) Bool)

(assert (=> b!1237110 (= res!825103 (contains!7339 acc!846 k0!2925))))

(declare-fun res!825106 () Bool)

(assert (=> start!103016 (=> (not res!825106) (not e!701216))))

(assert (=> start!103016 (= res!825106 (and (bvslt (size!39010 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39010 a!3835))))))

(assert (=> start!103016 e!701216))

(declare-fun array_inv!29249 (array!79741) Bool)

(assert (=> start!103016 (array_inv!29249 a!3835)))

(assert (=> start!103016 true))

(declare-fun b!1237111 () Bool)

(declare-fun res!825108 () Bool)

(assert (=> b!1237111 (=> (not res!825108) (not e!701216))))

(declare-fun arrayNoDuplicates!0 (array!79741 (_ BitVec 32) List!27424) Bool)

(assert (=> b!1237111 (= res!825108 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237112 () Bool)

(declare-fun res!825105 () Bool)

(assert (=> b!1237112 (=> (not res!825105) (not e!701216))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237112 (= res!825105 (validKeyInArray!0 (select (arr!38473 a!3835) from!3213)))))

(declare-fun b!1237113 () Bool)

(declare-fun res!825109 () Bool)

(assert (=> b!1237113 (=> (not res!825109) (not e!701216))))

(declare-fun noDuplicate!1946 (List!27424) Bool)

(assert (=> b!1237113 (= res!825109 (noDuplicate!1946 acc!846))))

(declare-fun b!1237114 () Bool)

(declare-fun res!825107 () Bool)

(assert (=> b!1237114 (=> (not res!825107) (not e!701216))))

(assert (=> b!1237114 (= res!825107 (not (contains!7339 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237115 () Bool)

(assert (=> b!1237115 (= e!701216 (not true))))

(declare-fun lt!560904 () List!27424)

(declare-fun subseq!576 (List!27424 List!27424) Bool)

(assert (=> b!1237115 (subseq!576 acc!846 lt!560904)))

(declare-datatypes ((Unit!40992 0))(
  ( (Unit!40993) )
))
(declare-fun lt!560903 () Unit!40992)

(declare-fun subseqTail!63 (List!27424 List!27424) Unit!40992)

(assert (=> b!1237115 (= lt!560903 (subseqTail!63 lt!560904 lt!560904))))

(assert (=> b!1237115 (subseq!576 lt!560904 lt!560904)))

(declare-fun lt!560905 () Unit!40992)

(declare-fun lemmaListSubSeqRefl!0 (List!27424) Unit!40992)

(assert (=> b!1237115 (= lt!560905 (lemmaListSubSeqRefl!0 lt!560904))))

(assert (=> b!1237115 (= lt!560904 (Cons!27420 (select (arr!38473 a!3835) from!3213) acc!846))))

(declare-fun b!1237116 () Bool)

(declare-fun res!825102 () Bool)

(assert (=> b!1237116 (=> (not res!825102) (not e!701216))))

(assert (=> b!1237116 (= res!825102 (not (contains!7339 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103016 res!825106) b!1237113))

(assert (= (and b!1237113 res!825109) b!1237114))

(assert (= (and b!1237114 res!825107) b!1237116))

(assert (= (and b!1237116 res!825102) b!1237111))

(assert (= (and b!1237111 res!825108) b!1237110))

(assert (= (and b!1237110 res!825103) b!1237109))

(assert (= (and b!1237109 res!825104) b!1237112))

(assert (= (and b!1237112 res!825105) b!1237115))

(declare-fun m!1140863 () Bool)

(assert (=> b!1237115 m!1140863))

(declare-fun m!1140865 () Bool)

(assert (=> b!1237115 m!1140865))

(declare-fun m!1140867 () Bool)

(assert (=> b!1237115 m!1140867))

(declare-fun m!1140869 () Bool)

(assert (=> b!1237115 m!1140869))

(declare-fun m!1140871 () Bool)

(assert (=> b!1237115 m!1140871))

(assert (=> b!1237112 m!1140871))

(assert (=> b!1237112 m!1140871))

(declare-fun m!1140873 () Bool)

(assert (=> b!1237112 m!1140873))

(declare-fun m!1140875 () Bool)

(assert (=> b!1237113 m!1140875))

(declare-fun m!1140877 () Bool)

(assert (=> b!1237110 m!1140877))

(declare-fun m!1140879 () Bool)

(assert (=> b!1237116 m!1140879))

(declare-fun m!1140881 () Bool)

(assert (=> start!103016 m!1140881))

(declare-fun m!1140883 () Bool)

(assert (=> b!1237111 m!1140883))

(declare-fun m!1140885 () Bool)

(assert (=> b!1237114 m!1140885))

(check-sat (not b!1237114) (not b!1237115) (not b!1237110) (not b!1237116) (not b!1237111) (not b!1237113) (not b!1237112) (not start!103016))
(check-sat)
