; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102808 () Bool)

(assert start!102808)

(declare-fun b!1234897 () Bool)

(declare-fun res!823174 () Bool)

(declare-fun e!700316 () Bool)

(assert (=> b!1234897 (=> (not res!823174) (not e!700316))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79594 0))(
  ( (array!79595 (arr!38401 (Array (_ BitVec 32) (_ BitVec 64))) (size!38938 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79594)

(assert (=> b!1234897 (= res!823174 (not (= from!3213 (bvsub (size!38938 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1234898 () Bool)

(declare-fun res!823173 () Bool)

(declare-fun e!700317 () Bool)

(assert (=> b!1234898 (=> res!823173 e!700317)))

(declare-datatypes ((List!27352 0))(
  ( (Nil!27349) (Cons!27348 (h!28557 (_ BitVec 64)) (t!40822 List!27352)) )
))
(declare-fun lt!560015 () List!27352)

(declare-fun noDuplicate!1874 (List!27352) Bool)

(assert (=> b!1234898 (= res!823173 (not (noDuplicate!1874 lt!560015)))))

(declare-fun b!1234899 () Bool)

(declare-fun res!823181 () Bool)

(assert (=> b!1234899 (=> (not res!823181) (not e!700316))))

(declare-fun acc!846 () List!27352)

(declare-fun contains!7267 (List!27352 (_ BitVec 64)) Bool)

(assert (=> b!1234899 (= res!823181 (not (contains!7267 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234900 () Bool)

(declare-fun res!823178 () Bool)

(assert (=> b!1234900 (=> res!823178 e!700317)))

(assert (=> b!1234900 (= res!823178 (contains!7267 lt!560015 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234901 () Bool)

(declare-fun res!823175 () Bool)

(assert (=> b!1234901 (=> (not res!823175) (not e!700316))))

(declare-fun arrayNoDuplicates!0 (array!79594 (_ BitVec 32) List!27352) Bool)

(assert (=> b!1234901 (= res!823175 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1234902 () Bool)

(assert (=> b!1234902 (= e!700317 true)))

(declare-fun lt!560016 () Bool)

(assert (=> b!1234902 (= lt!560016 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!560015))))

(declare-datatypes ((Unit!40846 0))(
  ( (Unit!40847) )
))
(declare-fun lt!560013 () Unit!40846)

(declare-fun noDuplicateSubseq!69 (List!27352 List!27352) Unit!40846)

(assert (=> b!1234902 (= lt!560013 (noDuplicateSubseq!69 acc!846 lt!560015))))

(declare-fun res!823171 () Bool)

(assert (=> start!102808 (=> (not res!823171) (not e!700316))))

(assert (=> start!102808 (= res!823171 (and (bvslt (size!38938 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38938 a!3835))))))

(assert (=> start!102808 e!700316))

(declare-fun array_inv!29177 (array!79594) Bool)

(assert (=> start!102808 (array_inv!29177 a!3835)))

(assert (=> start!102808 true))

(declare-fun b!1234903 () Bool)

(declare-fun res!823176 () Bool)

(assert (=> b!1234903 (=> (not res!823176) (not e!700316))))

(assert (=> b!1234903 (= res!823176 (noDuplicate!1874 acc!846))))

(declare-fun b!1234904 () Bool)

(assert (=> b!1234904 (= e!700316 (not e!700317))))

(declare-fun res!823172 () Bool)

(assert (=> b!1234904 (=> res!823172 e!700317)))

(assert (=> b!1234904 (= res!823172 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!522 (List!27352 List!27352) Bool)

(assert (=> b!1234904 (subseq!522 acc!846 lt!560015)))

(declare-fun lt!560017 () Unit!40846)

(declare-fun subseqTail!15 (List!27352 List!27352) Unit!40846)

(assert (=> b!1234904 (= lt!560017 (subseqTail!15 lt!560015 lt!560015))))

(assert (=> b!1234904 (subseq!522 lt!560015 lt!560015)))

(declare-fun lt!560014 () Unit!40846)

(declare-fun lemmaListSubSeqRefl!0 (List!27352) Unit!40846)

(assert (=> b!1234904 (= lt!560014 (lemmaListSubSeqRefl!0 lt!560015))))

(assert (=> b!1234904 (= lt!560015 (Cons!27348 (select (arr!38401 a!3835) from!3213) acc!846))))

(declare-fun b!1234905 () Bool)

(declare-fun res!823170 () Bool)

(assert (=> b!1234905 (=> res!823170 e!700317)))

(assert (=> b!1234905 (= res!823170 (contains!7267 lt!560015 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234906 () Bool)

(declare-fun res!823180 () Bool)

(assert (=> b!1234906 (=> (not res!823180) (not e!700316))))

(assert (=> b!1234906 (= res!823180 (not (contains!7267 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234907 () Bool)

(declare-fun res!823177 () Bool)

(assert (=> b!1234907 (=> (not res!823177) (not e!700316))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1234907 (= res!823177 (contains!7267 acc!846 k0!2925))))

(declare-fun b!1234908 () Bool)

(declare-fun res!823179 () Bool)

(assert (=> b!1234908 (=> (not res!823179) (not e!700316))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234908 (= res!823179 (validKeyInArray!0 (select (arr!38401 a!3835) from!3213)))))

(assert (= (and start!102808 res!823171) b!1234903))

(assert (= (and b!1234903 res!823176) b!1234906))

(assert (= (and b!1234906 res!823180) b!1234899))

(assert (= (and b!1234899 res!823181) b!1234901))

(assert (= (and b!1234901 res!823175) b!1234907))

(assert (= (and b!1234907 res!823177) b!1234897))

(assert (= (and b!1234897 res!823174) b!1234908))

(assert (= (and b!1234908 res!823179) b!1234904))

(assert (= (and b!1234904 (not res!823172)) b!1234898))

(assert (= (and b!1234898 (not res!823173)) b!1234905))

(assert (= (and b!1234905 (not res!823170)) b!1234900))

(assert (= (and b!1234900 (not res!823178)) b!1234902))

(declare-fun m!1138857 () Bool)

(assert (=> b!1234906 m!1138857))

(declare-fun m!1138859 () Bool)

(assert (=> b!1234907 m!1138859))

(declare-fun m!1138861 () Bool)

(assert (=> b!1234899 m!1138861))

(declare-fun m!1138863 () Bool)

(assert (=> b!1234903 m!1138863))

(declare-fun m!1138865 () Bool)

(assert (=> b!1234904 m!1138865))

(declare-fun m!1138867 () Bool)

(assert (=> b!1234904 m!1138867))

(declare-fun m!1138869 () Bool)

(assert (=> b!1234904 m!1138869))

(declare-fun m!1138871 () Bool)

(assert (=> b!1234904 m!1138871))

(declare-fun m!1138873 () Bool)

(assert (=> b!1234904 m!1138873))

(declare-fun m!1138875 () Bool)

(assert (=> b!1234905 m!1138875))

(declare-fun m!1138877 () Bool)

(assert (=> b!1234898 m!1138877))

(declare-fun m!1138879 () Bool)

(assert (=> b!1234900 m!1138879))

(declare-fun m!1138881 () Bool)

(assert (=> start!102808 m!1138881))

(declare-fun m!1138883 () Bool)

(assert (=> b!1234902 m!1138883))

(declare-fun m!1138885 () Bool)

(assert (=> b!1234902 m!1138885))

(assert (=> b!1234908 m!1138871))

(assert (=> b!1234908 m!1138871))

(declare-fun m!1138887 () Bool)

(assert (=> b!1234908 m!1138887))

(declare-fun m!1138889 () Bool)

(assert (=> b!1234901 m!1138889))

(check-sat (not b!1234905) (not b!1234907) (not b!1234908) (not start!102808) (not b!1234904) (not b!1234898) (not b!1234901) (not b!1234906) (not b!1234899) (not b!1234903) (not b!1234902) (not b!1234900))
(check-sat)
