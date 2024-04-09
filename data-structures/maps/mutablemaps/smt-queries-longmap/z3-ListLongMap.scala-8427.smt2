; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102688 () Bool)

(assert start!102688)

(declare-fun b!1233903 () Bool)

(declare-fun res!822197 () Bool)

(declare-fun e!699935 () Bool)

(assert (=> b!1233903 (=> (not res!822197) (not e!699935))))

(declare-datatypes ((array!79519 0))(
  ( (array!79520 (arr!38365 (Array (_ BitVec 32) (_ BitVec 64))) (size!38902 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79519)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233903 (= res!822197 (validKeyInArray!0 (select (arr!38365 a!3806) from!3184)))))

(declare-fun b!1233904 () Bool)

(declare-fun res!822200 () Bool)

(assert (=> b!1233904 (=> (not res!822200) (not e!699935))))

(declare-fun k0!2913 () (_ BitVec 64))

(assert (=> b!1233904 (= res!822200 (validKeyInArray!0 k0!2913))))

(declare-fun b!1233905 () Bool)

(declare-fun res!822201 () Bool)

(assert (=> b!1233905 (=> (not res!822201) (not e!699935))))

(declare-datatypes ((List!27316 0))(
  ( (Nil!27313) (Cons!27312 (h!28521 (_ BitVec 64)) (t!40786 List!27316)) )
))
(declare-fun acc!823 () List!27316)

(declare-fun contains!7231 (List!27316 (_ BitVec 64)) Bool)

(assert (=> b!1233905 (= res!822201 (not (contains!7231 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233906 () Bool)

(declare-fun res!822198 () Bool)

(assert (=> b!1233906 (=> (not res!822198) (not e!699935))))

(declare-fun arrayNoDuplicates!0 (array!79519 (_ BitVec 32) List!27316) Bool)

(assert (=> b!1233906 (= res!822198 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1233907 () Bool)

(assert (=> b!1233907 (= e!699935 (not (not (= (select (arr!38365 a!3806) from!3184) k0!2913))))))

(declare-fun arrayContainsKey!0 (array!79519 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233907 (not (arrayContainsKey!0 a!3806 (select (arr!38365 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40810 0))(
  ( (Unit!40811) )
))
(declare-fun lt!559722 () Unit!40810)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79519 (_ BitVec 32) (_ BitVec 64) List!27316) Unit!40810)

(assert (=> b!1233907 (= lt!559722 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38365 a!3806) from!3184) (Cons!27312 (select (arr!38365 a!3806) from!3184) Nil!27313)))))

(declare-fun e!699937 () Bool)

(assert (=> b!1233907 e!699937))

(declare-fun res!822196 () Bool)

(assert (=> b!1233907 (=> (not res!822196) (not e!699937))))

(assert (=> b!1233907 (= res!822196 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27313))))

(declare-fun lt!559723 () Unit!40810)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79519 List!27316 List!27316 (_ BitVec 32)) Unit!40810)

(assert (=> b!1233907 (= lt!559723 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27313 from!3184))))

(assert (=> b!1233907 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27312 (select (arr!38365 a!3806) from!3184) acc!823))))

(declare-fun res!822199 () Bool)

(assert (=> start!102688 (=> (not res!822199) (not e!699935))))

(assert (=> start!102688 (= res!822199 (bvslt (size!38902 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102688 e!699935))

(declare-fun array_inv!29141 (array!79519) Bool)

(assert (=> start!102688 (array_inv!29141 a!3806)))

(assert (=> start!102688 true))

(declare-fun b!1233908 () Bool)

(declare-fun res!822194 () Bool)

(assert (=> b!1233908 (=> (not res!822194) (not e!699935))))

(assert (=> b!1233908 (= res!822194 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1233909 () Bool)

(declare-fun res!822203 () Bool)

(assert (=> b!1233909 (=> (not res!822203) (not e!699935))))

(assert (=> b!1233909 (= res!822203 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38902 a!3806)) (bvslt from!3184 (size!38902 a!3806))))))

(declare-fun b!1233910 () Bool)

(assert (=> b!1233910 (= e!699937 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27312 (select (arr!38365 a!3806) from!3184) Nil!27313)))))

(declare-fun b!1233911 () Bool)

(declare-fun res!822195 () Bool)

(assert (=> b!1233911 (=> (not res!822195) (not e!699935))))

(assert (=> b!1233911 (= res!822195 (not (contains!7231 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233912 () Bool)

(declare-fun res!822202 () Bool)

(assert (=> b!1233912 (=> (not res!822202) (not e!699935))))

(declare-fun noDuplicate!1838 (List!27316) Bool)

(assert (=> b!1233912 (= res!822202 (noDuplicate!1838 acc!823))))

(assert (= (and start!102688 res!822199) b!1233904))

(assert (= (and b!1233904 res!822200) b!1233909))

(assert (= (and b!1233909 res!822203) b!1233912))

(assert (= (and b!1233912 res!822202) b!1233911))

(assert (= (and b!1233911 res!822195) b!1233905))

(assert (= (and b!1233905 res!822201) b!1233908))

(assert (= (and b!1233908 res!822194) b!1233906))

(assert (= (and b!1233906 res!822198) b!1233903))

(assert (= (and b!1233903 res!822197) b!1233907))

(assert (= (and b!1233907 res!822196) b!1233910))

(declare-fun m!1138013 () Bool)

(assert (=> b!1233907 m!1138013))

(declare-fun m!1138015 () Bool)

(assert (=> b!1233907 m!1138015))

(declare-fun m!1138017 () Bool)

(assert (=> b!1233907 m!1138017))

(declare-fun m!1138019 () Bool)

(assert (=> b!1233907 m!1138019))

(assert (=> b!1233907 m!1138017))

(declare-fun m!1138021 () Bool)

(assert (=> b!1233907 m!1138021))

(assert (=> b!1233907 m!1138017))

(declare-fun m!1138023 () Bool)

(assert (=> b!1233907 m!1138023))

(declare-fun m!1138025 () Bool)

(assert (=> b!1233911 m!1138025))

(assert (=> b!1233903 m!1138017))

(assert (=> b!1233903 m!1138017))

(declare-fun m!1138027 () Bool)

(assert (=> b!1233903 m!1138027))

(declare-fun m!1138029 () Bool)

(assert (=> b!1233904 m!1138029))

(declare-fun m!1138031 () Bool)

(assert (=> b!1233906 m!1138031))

(assert (=> b!1233910 m!1138017))

(declare-fun m!1138033 () Bool)

(assert (=> b!1233910 m!1138033))

(declare-fun m!1138035 () Bool)

(assert (=> b!1233908 m!1138035))

(declare-fun m!1138037 () Bool)

(assert (=> b!1233912 m!1138037))

(declare-fun m!1138039 () Bool)

(assert (=> start!102688 m!1138039))

(declare-fun m!1138041 () Bool)

(assert (=> b!1233905 m!1138041))

(check-sat (not b!1233911) (not b!1233910) (not b!1233907) (not b!1233905) (not b!1233903) (not start!102688) (not b!1233912) (not b!1233908) (not b!1233906) (not b!1233904))
(check-sat)
