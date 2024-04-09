; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127504 () Bool)

(assert start!127504)

(declare-fun b!1497870 () Bool)

(declare-fun res!1019038 () Bool)

(declare-fun e!838799 () Bool)

(assert (=> b!1497870 (=> (not res!1019038) (not e!838799))))

(declare-datatypes ((array!99831 0))(
  ( (array!99832 (arr!48172 (Array (_ BitVec 32) (_ BitVec 64))) (size!48723 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99831)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99831 (_ BitVec 32)) Bool)

(assert (=> b!1497870 (= res!1019038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1497871 () Bool)

(declare-fun res!1019042 () Bool)

(assert (=> b!1497871 (=> (not res!1019042) (not e!838799))))

(declare-datatypes ((List!34844 0))(
  ( (Nil!34841) (Cons!34840 (h!36238 (_ BitVec 64)) (t!49545 List!34844)) )
))
(declare-fun noDuplicate!2654 (List!34844) Bool)

(assert (=> b!1497871 (= res!1019042 (noDuplicate!2654 Nil!34841))))

(declare-fun b!1497872 () Bool)

(declare-fun e!838797 () Bool)

(assert (=> b!1497872 (= e!838799 e!838797)))

(declare-fun res!1019037 () Bool)

(assert (=> b!1497872 (=> res!1019037 e!838797)))

(declare-fun contains!9951 (List!34844 (_ BitVec 64)) Bool)

(assert (=> b!1497872 (= res!1019037 (contains!9951 Nil!34841 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1497873 () Bool)

(declare-fun res!1019036 () Bool)

(assert (=> b!1497873 (=> (not res!1019036) (not e!838799))))

(assert (=> b!1497873 (= res!1019036 (and (bvsle #b00000000000000000000000000000000 (size!48723 a!2850)) (bvslt (size!48723 a!2850) #b01111111111111111111111111111111)))))

(declare-fun b!1497874 () Bool)

(assert (=> b!1497874 (= e!838797 (contains!9951 Nil!34841 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1497875 () Bool)

(declare-fun res!1019041 () Bool)

(assert (=> b!1497875 (=> (not res!1019041) (not e!838799))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497875 (= res!1019041 (validKeyInArray!0 (select (arr!48172 a!2850) j!87)))))

(declare-fun b!1497876 () Bool)

(declare-fun res!1019043 () Bool)

(assert (=> b!1497876 (=> (not res!1019043) (not e!838799))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1497876 (= res!1019043 (and (= (size!48723 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48723 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48723 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1497877 () Bool)

(declare-fun res!1019040 () Bool)

(assert (=> b!1497877 (=> (not res!1019040) (not e!838799))))

(assert (=> b!1497877 (= res!1019040 (validKeyInArray!0 (select (arr!48172 a!2850) i!996)))))

(declare-fun res!1019039 () Bool)

(assert (=> start!127504 (=> (not res!1019039) (not e!838799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127504 (= res!1019039 (validMask!0 mask!2661))))

(assert (=> start!127504 e!838799))

(assert (=> start!127504 true))

(declare-fun array_inv!37117 (array!99831) Bool)

(assert (=> start!127504 (array_inv!37117 a!2850)))

(assert (= (and start!127504 res!1019039) b!1497876))

(assert (= (and b!1497876 res!1019043) b!1497877))

(assert (= (and b!1497877 res!1019040) b!1497875))

(assert (= (and b!1497875 res!1019041) b!1497870))

(assert (= (and b!1497870 res!1019038) b!1497873))

(assert (= (and b!1497873 res!1019036) b!1497871))

(assert (= (and b!1497871 res!1019042) b!1497872))

(assert (= (and b!1497872 (not res!1019037)) b!1497874))

(declare-fun m!1380993 () Bool)

(assert (=> b!1497877 m!1380993))

(assert (=> b!1497877 m!1380993))

(declare-fun m!1380995 () Bool)

(assert (=> b!1497877 m!1380995))

(declare-fun m!1380997 () Bool)

(assert (=> b!1497870 m!1380997))

(declare-fun m!1380999 () Bool)

(assert (=> b!1497874 m!1380999))

(declare-fun m!1381001 () Bool)

(assert (=> start!127504 m!1381001))

(declare-fun m!1381003 () Bool)

(assert (=> start!127504 m!1381003))

(declare-fun m!1381005 () Bool)

(assert (=> b!1497871 m!1381005))

(declare-fun m!1381007 () Bool)

(assert (=> b!1497872 m!1381007))

(declare-fun m!1381009 () Bool)

(assert (=> b!1497875 m!1381009))

(assert (=> b!1497875 m!1381009))

(declare-fun m!1381011 () Bool)

(assert (=> b!1497875 m!1381011))

(push 1)

(assert (not b!1497871))

(assert (not b!1497874))

(assert (not b!1497877))

(assert (not b!1497870))

(assert (not b!1497872))

(assert (not start!127504))

(assert (not b!1497875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!157459 () Bool)

(assert (=> d!157459 (= (validKeyInArray!0 (select (arr!48172 a!2850) j!87)) (and (not (= (select (arr!48172 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48172 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1497875 d!157459))

(declare-fun b!1497966 () Bool)

(declare-fun e!838853 () Bool)

(declare-fun e!838854 () Bool)

(assert (=> b!1497966 (= e!838853 e!838854)))

(declare-fun lt!652546 () (_ BitVec 64))

(assert (=> b!1497966 (= lt!652546 (select (arr!48172 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50144 0))(
  ( (Unit!50145) )
))
(declare-fun lt!652545 () Unit!50144)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99831 (_ BitVec 64) (_ BitVec 32)) Unit!50144)

(assert (=> b!1497966 (= lt!652545 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!652546 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99831 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1497966 (arrayContainsKey!0 a!2850 lt!652546 #b00000000000000000000000000000000)))

(declare-fun lt!652547 () Unit!50144)

(assert (=> b!1497966 (= lt!652547 lt!652545)))

(declare-fun res!1019123 () Bool)

(declare-datatypes ((SeekEntryResult!12426 0))(
  ( (MissingZero!12426 (index!52095 (_ BitVec 32))) (Found!12426 (index!52096 (_ BitVec 32))) (Intermediate!12426 (undefined!13238 Bool) (index!52097 (_ BitVec 32)) (x!133745 (_ BitVec 32))) (Undefined!12426) (MissingVacant!12426 (index!52098 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99831 (_ BitVec 32)) SeekEntryResult!12426)

(assert (=> b!1497966 (= res!1019123 (= (seekEntryOrOpen!0 (select (arr!48172 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12426 #b00000000000000000000000000000000)))))

(assert (=> b!1497966 (=> (not res!1019123) (not e!838854))))

(declare-fun d!157461 () Bool)

(declare-fun res!1019122 () Bool)

(declare-fun e!838855 () Bool)

(assert (=> d!157461 (=> res!1019122 e!838855)))

(assert (=> d!157461 (= res!1019122 (bvsge #b00000000000000000000000000000000 (size!48723 a!2850)))))

(assert (=> d!157461 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!838855)))

(declare-fun b!1497967 () Bool)

(assert (=> b!1497967 (= e!838855 e!838853)))

(declare-fun c!138959 () Bool)

(assert (=> b!1497967 (= c!138959 (validKeyInArray!0 (select (arr!48172 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1497968 () Bool)

(declare-fun call!68064 () Bool)

(assert (=> b!1497968 (= e!838853 call!68064)))

(declare-fun b!1497969 () Bool)

(assert (=> b!1497969 (= e!838854 call!68064)))

(declare-fun bm!68061 () Bool)

(assert (=> bm!68061 (= call!68064 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(assert (= (and d!157461 (not res!1019122)) b!1497967))

(assert (= (and b!1497967 c!138959) b!1497966))

(assert (= (and b!1497967 (not c!138959)) b!1497968))

(assert (= (and b!1497966 res!1019123) b!1497969))

(assert (= (or b!1497969 b!1497968) bm!68061))

(declare-fun m!1381085 () Bool)

(assert (=> b!1497966 m!1381085))

(declare-fun m!1381087 () Bool)

(assert (=> b!1497966 m!1381087))

(declare-fun m!1381089 () Bool)

(assert (=> b!1497966 m!1381089))

(assert (=> b!1497966 m!1381085))

(declare-fun m!1381091 () Bool)

(assert (=> b!1497966 m!1381091))

(assert (=> b!1497967 m!1381085))

(assert (=> b!1497967 m!1381085))

(declare-fun m!1381093 () Bool)

(assert (=> b!1497967 m!1381093))

(declare-fun m!1381097 () Bool)

(assert (=> bm!68061 m!1381097))

(assert (=> b!1497870 d!157461))

(declare-fun d!157477 () Bool)

(declare-fun res!1019130 () Bool)

(declare-fun e!838862 () Bool)

(assert (=> d!157477 (=> res!1019130 e!838862)))

(assert (=> d!157477 (= res!1019130 (is-Nil!34841 Nil!34841))))

(assert (=> d!157477 (= (noDuplicate!2654 Nil!34841) e!838862)))

(declare-fun b!1497976 () Bool)

(declare-fun e!838863 () Bool)

(assert (=> b!1497976 (= e!838862 e!838863)))

(declare-fun res!1019131 () Bool)

(assert (=> b!1497976 (=> (not res!1019131) (not e!838863))))

(assert (=> b!1497976 (= res!1019131 (not (contains!9951 (t!49545 Nil!34841) (h!36238 Nil!34841))))))

(declare-fun b!1497977 () Bool)

(assert (=> b!1497977 (= e!838863 (noDuplicate!2654 (t!49545 Nil!34841)))))

(assert (= (and d!157477 (not res!1019130)) b!1497976))

(assert (= (and b!1497976 res!1019131) b!1497977))

(declare-fun m!1381101 () Bool)

(assert (=> b!1497976 m!1381101))

(declare-fun m!1381103 () Bool)

(assert (=> b!1497977 m!1381103))

(assert (=> b!1497871 d!157477))

(declare-fun d!157483 () Bool)

(assert (=> d!157483 (= (validKeyInArray!0 (select (arr!48172 a!2850) i!996)) (and (not (= (select (arr!48172 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48172 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1497877 d!157483))

(declare-fun d!157485 () Bool)

(declare-fun lt!652557 () Bool)

(declare-fun content!786 (List!34844) (Set (_ BitVec 64)))

(assert (=> d!157485 (= lt!652557 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!786 Nil!34841)))))

(declare-fun e!838875 () Bool)

(assert (=> d!157485 (= lt!652557 e!838875)))

(declare-fun res!1019141 () Bool)

(assert (=> d!157485 (=> (not res!1019141) (not e!838875))))

(assert (=> d!157485 (= res!1019141 (is-Cons!34840 Nil!34841))))

(assert (=> d!157485 (= (contains!9951 Nil!34841 #b0000000000000000000000000000000000000000000000000000000000000000) lt!652557)))

(declare-fun b!1497990 () Bool)

(declare-fun e!838874 () Bool)

(assert (=> b!1497990 (= e!838875 e!838874)))

(declare-fun res!1019140 () Bool)

(assert (=> b!1497990 (=> res!1019140 e!838874)))

(assert (=> b!1497990 (= res!1019140 (= (h!36238 Nil!34841) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1497991 () Bool)

(assert (=> b!1497991 (= e!838874 (contains!9951 (t!49545 Nil!34841) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!157485 res!1019141) b!1497990))

(assert (= (and b!1497990 (not res!1019140)) b!1497991))

(declare-fun m!1381105 () Bool)

(assert (=> d!157485 m!1381105))

(declare-fun m!1381107 () Bool)

(assert (=> d!157485 m!1381107))

(declare-fun m!1381109 () Bool)

(assert (=> b!1497991 m!1381109))

(assert (=> b!1497872 d!157485))

(declare-fun d!157487 () Bool)

(assert (=> d!157487 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!127504 d!157487))

(declare-fun d!157497 () Bool)

(assert (=> d!157497 (= (array_inv!37117 a!2850) (bvsge (size!48723 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!127504 d!157497))

(declare-fun d!157499 () Bool)

(declare-fun lt!652561 () Bool)

(assert (=> d!157499 (= lt!652561 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!786 Nil!34841)))))

(declare-fun e!838886 () Bool)

(assert (=> d!157499 (= lt!652561 e!838886)))

(declare-fun res!1019151 () Bool)

(assert (=> d!157499 (=> (not res!1019151) (not e!838886))))

