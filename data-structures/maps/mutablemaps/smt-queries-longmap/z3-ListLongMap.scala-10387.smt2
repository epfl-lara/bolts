; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122376 () Bool)

(assert start!122376)

(declare-fun b!1418102 () Bool)

(declare-fun res!953888 () Bool)

(declare-fun e!802565 () Bool)

(assert (=> b!1418102 (=> (not res!953888) (not e!802565))))

(declare-datatypes ((array!96797 0))(
  ( (array!96798 (arr!46718 (Array (_ BitVec 32) (_ BitVec 64))) (size!47269 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96797)

(declare-datatypes ((List!33408 0))(
  ( (Nil!33405) (Cons!33404 (h!34697 (_ BitVec 64)) (t!48109 List!33408)) )
))
(declare-fun arrayNoDuplicates!0 (array!96797 (_ BitVec 32) List!33408) Bool)

(assert (=> b!1418102 (= res!953888 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33405))))

(declare-fun res!953887 () Bool)

(assert (=> start!122376 (=> (not res!953887) (not e!802565))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122376 (= res!953887 (validMask!0 mask!2608))))

(assert (=> start!122376 e!802565))

(assert (=> start!122376 true))

(declare-fun array_inv!35663 (array!96797) Bool)

(assert (=> start!122376 (array_inv!35663 a!2831)))

(declare-fun b!1418103 () Bool)

(declare-fun res!953889 () Bool)

(assert (=> b!1418103 (=> (not res!953889) (not e!802565))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1418103 (= res!953889 (and (= (size!47269 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47269 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47269 a!2831)) (not (= i!982 j!81))))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun b!1418104 () Bool)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1418104 (= e!802565 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47269 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47269 a!2831)) (bvsge mask!2608 #b00000000000000000000000000000000) (bvsgt mask!2608 #b00111111111111111111111111111111)))))

(declare-fun b!1418105 () Bool)

(declare-fun res!953890 () Bool)

(assert (=> b!1418105 (=> (not res!953890) (not e!802565))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418105 (= res!953890 (validKeyInArray!0 (select (arr!46718 a!2831) i!982)))))

(declare-fun b!1418106 () Bool)

(declare-fun res!953891 () Bool)

(assert (=> b!1418106 (=> (not res!953891) (not e!802565))))

(assert (=> b!1418106 (= res!953891 (validKeyInArray!0 (select (arr!46718 a!2831) j!81)))))

(declare-fun b!1418107 () Bool)

(declare-fun res!953892 () Bool)

(assert (=> b!1418107 (=> (not res!953892) (not e!802565))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96797 (_ BitVec 32)) Bool)

(assert (=> b!1418107 (= res!953892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122376 res!953887) b!1418103))

(assert (= (and b!1418103 res!953889) b!1418105))

(assert (= (and b!1418105 res!953890) b!1418106))

(assert (= (and b!1418106 res!953891) b!1418107))

(assert (= (and b!1418107 res!953892) b!1418102))

(assert (= (and b!1418102 res!953888) b!1418104))

(declare-fun m!1308903 () Bool)

(assert (=> b!1418106 m!1308903))

(assert (=> b!1418106 m!1308903))

(declare-fun m!1308905 () Bool)

(assert (=> b!1418106 m!1308905))

(declare-fun m!1308907 () Bool)

(assert (=> b!1418107 m!1308907))

(declare-fun m!1308909 () Bool)

(assert (=> b!1418102 m!1308909))

(declare-fun m!1308911 () Bool)

(assert (=> b!1418105 m!1308911))

(assert (=> b!1418105 m!1308911))

(declare-fun m!1308913 () Bool)

(assert (=> b!1418105 m!1308913))

(declare-fun m!1308915 () Bool)

(assert (=> start!122376 m!1308915))

(declare-fun m!1308917 () Bool)

(assert (=> start!122376 m!1308917))

(check-sat (not b!1418106) (not b!1418107) (not b!1418105) (not start!122376) (not b!1418102))
(check-sat)
(get-model)

(declare-fun bm!67248 () Bool)

(declare-fun call!67251 () Bool)

(assert (=> bm!67248 (= call!67251 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1418134 () Bool)

(declare-fun e!802579 () Bool)

(assert (=> b!1418134 (= e!802579 call!67251)))

(declare-fun b!1418135 () Bool)

(declare-fun e!802578 () Bool)

(assert (=> b!1418135 (= e!802578 e!802579)))

(declare-fun c!131594 () Bool)

(assert (=> b!1418135 (= c!131594 (validKeyInArray!0 (select (arr!46718 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1418136 () Bool)

(declare-fun e!802580 () Bool)

(assert (=> b!1418136 (= e!802579 e!802580)))

(declare-fun lt!625479 () (_ BitVec 64))

(assert (=> b!1418136 (= lt!625479 (select (arr!46718 a!2831) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48004 0))(
  ( (Unit!48005) )
))
(declare-fun lt!625480 () Unit!48004)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96797 (_ BitVec 64) (_ BitVec 32)) Unit!48004)

(assert (=> b!1418136 (= lt!625480 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!625479 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96797 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1418136 (arrayContainsKey!0 a!2831 lt!625479 #b00000000000000000000000000000000)))

(declare-fun lt!625478 () Unit!48004)

(assert (=> b!1418136 (= lt!625478 lt!625480)))

(declare-fun res!953916 () Bool)

(declare-datatypes ((SeekEntryResult!11040 0))(
  ( (MissingZero!11040 (index!46551 (_ BitVec 32))) (Found!11040 (index!46552 (_ BitVec 32))) (Intermediate!11040 (undefined!11852 Bool) (index!46553 (_ BitVec 32)) (x!128182 (_ BitVec 32))) (Undefined!11040) (MissingVacant!11040 (index!46554 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96797 (_ BitVec 32)) SeekEntryResult!11040)

(assert (=> b!1418136 (= res!953916 (= (seekEntryOrOpen!0 (select (arr!46718 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11040 #b00000000000000000000000000000000)))))

(assert (=> b!1418136 (=> (not res!953916) (not e!802580))))

(declare-fun d!152765 () Bool)

(declare-fun res!953915 () Bool)

(assert (=> d!152765 (=> res!953915 e!802578)))

(assert (=> d!152765 (= res!953915 (bvsge #b00000000000000000000000000000000 (size!47269 a!2831)))))

(assert (=> d!152765 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!802578)))

(declare-fun b!1418137 () Bool)

(assert (=> b!1418137 (= e!802580 call!67251)))

(assert (= (and d!152765 (not res!953915)) b!1418135))

(assert (= (and b!1418135 c!131594) b!1418136))

(assert (= (and b!1418135 (not c!131594)) b!1418134))

(assert (= (and b!1418136 res!953916) b!1418137))

(assert (= (or b!1418137 b!1418134) bm!67248))

(declare-fun m!1308935 () Bool)

(assert (=> bm!67248 m!1308935))

(declare-fun m!1308937 () Bool)

(assert (=> b!1418135 m!1308937))

(assert (=> b!1418135 m!1308937))

(declare-fun m!1308939 () Bool)

(assert (=> b!1418135 m!1308939))

(assert (=> b!1418136 m!1308937))

(declare-fun m!1308941 () Bool)

(assert (=> b!1418136 m!1308941))

(declare-fun m!1308943 () Bool)

(assert (=> b!1418136 m!1308943))

(assert (=> b!1418136 m!1308937))

(declare-fun m!1308945 () Bool)

(assert (=> b!1418136 m!1308945))

(assert (=> b!1418107 d!152765))

(declare-fun d!152767 () Bool)

(assert (=> d!152767 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!122376 d!152767))

(declare-fun d!152773 () Bool)

(assert (=> d!152773 (= (array_inv!35663 a!2831) (bvsge (size!47269 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!122376 d!152773))

(declare-fun b!1418156 () Bool)

(declare-fun e!802597 () Bool)

(declare-fun e!802596 () Bool)

(assert (=> b!1418156 (= e!802597 e!802596)))

(declare-fun res!953927 () Bool)

(assert (=> b!1418156 (=> (not res!953927) (not e!802596))))

(declare-fun e!802598 () Bool)

(assert (=> b!1418156 (= res!953927 (not e!802598))))

(declare-fun res!953929 () Bool)

(assert (=> b!1418156 (=> (not res!953929) (not e!802598))))

(assert (=> b!1418156 (= res!953929 (validKeyInArray!0 (select (arr!46718 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67253 () Bool)

(declare-fun call!67256 () Bool)

(declare-fun c!131599 () Bool)

(assert (=> bm!67253 (= call!67256 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131599 (Cons!33404 (select (arr!46718 a!2831) #b00000000000000000000000000000000) Nil!33405) Nil!33405)))))

(declare-fun b!1418157 () Bool)

(declare-fun e!802595 () Bool)

(assert (=> b!1418157 (= e!802595 call!67256)))

(declare-fun b!1418158 () Bool)

(declare-fun contains!9847 (List!33408 (_ BitVec 64)) Bool)

(assert (=> b!1418158 (= e!802598 (contains!9847 Nil!33405 (select (arr!46718 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1418159 () Bool)

(assert (=> b!1418159 (= e!802595 call!67256)))

(declare-fun d!152775 () Bool)

(declare-fun res!953928 () Bool)

(assert (=> d!152775 (=> res!953928 e!802597)))

(assert (=> d!152775 (= res!953928 (bvsge #b00000000000000000000000000000000 (size!47269 a!2831)))))

(assert (=> d!152775 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33405) e!802597)))

(declare-fun b!1418160 () Bool)

(assert (=> b!1418160 (= e!802596 e!802595)))

(assert (=> b!1418160 (= c!131599 (validKeyInArray!0 (select (arr!46718 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!152775 (not res!953928)) b!1418156))

(assert (= (and b!1418156 res!953929) b!1418158))

(assert (= (and b!1418156 res!953927) b!1418160))

(assert (= (and b!1418160 c!131599) b!1418159))

(assert (= (and b!1418160 (not c!131599)) b!1418157))

(assert (= (or b!1418159 b!1418157) bm!67253))

(assert (=> b!1418156 m!1308937))

(assert (=> b!1418156 m!1308937))

(assert (=> b!1418156 m!1308939))

(assert (=> bm!67253 m!1308937))

(declare-fun m!1308951 () Bool)

(assert (=> bm!67253 m!1308951))

(assert (=> b!1418158 m!1308937))

(assert (=> b!1418158 m!1308937))

(declare-fun m!1308957 () Bool)

(assert (=> b!1418158 m!1308957))

(assert (=> b!1418160 m!1308937))

(assert (=> b!1418160 m!1308937))

(assert (=> b!1418160 m!1308939))

(assert (=> b!1418102 d!152775))

(declare-fun d!152783 () Bool)

(assert (=> d!152783 (= (validKeyInArray!0 (select (arr!46718 a!2831) i!982)) (and (not (= (select (arr!46718 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46718 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1418105 d!152783))

(declare-fun d!152787 () Bool)

(assert (=> d!152787 (= (validKeyInArray!0 (select (arr!46718 a!2831) j!81)) (and (not (= (select (arr!46718 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46718 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1418106 d!152787))

(check-sat (not b!1418158) (not b!1418136) (not b!1418156) (not bm!67253) (not b!1418135) (not bm!67248) (not b!1418160))
(check-sat)
