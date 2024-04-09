; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119938 () Bool)

(assert start!119938)

(declare-fun b!1395978 () Bool)

(declare-fun res!935168 () Bool)

(declare-fun e!790334 () Bool)

(assert (=> b!1395978 (=> (not res!935168) (not e!790334))))

(declare-datatypes ((array!95436 0))(
  ( (array!95437 (arr!46069 (Array (_ BitVec 32) (_ BitVec 64))) (size!46620 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95436)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395978 (= res!935168 (validKeyInArray!0 (select (arr!46069 a!2901) i!1037)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!790335 () Bool)

(declare-datatypes ((SeekEntryResult!10408 0))(
  ( (MissingZero!10408 (index!44002 (_ BitVec 32))) (Found!10408 (index!44003 (_ BitVec 32))) (Intermediate!10408 (undefined!11220 Bool) (index!44004 (_ BitVec 32)) (x!125675 (_ BitVec 32))) (Undefined!10408) (MissingVacant!10408 (index!44005 (_ BitVec 32))) )
))
(declare-fun lt!613174 () SeekEntryResult!10408)

(declare-fun lt!613173 () SeekEntryResult!10408)

(declare-fun b!1395979 () Bool)

(assert (=> b!1395979 (= e!790335 (or (= lt!613174 lt!613173) (not (is-Intermediate!10408 lt!613173)) (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95436 (_ BitVec 32)) SeekEntryResult!10408)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395979 (= lt!613173 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95437 (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46620 a!2901)) mask!2840))))

(declare-fun b!1395980 () Bool)

(declare-fun res!935165 () Bool)

(assert (=> b!1395980 (=> (not res!935165) (not e!790334))))

(declare-datatypes ((List!32768 0))(
  ( (Nil!32765) (Cons!32764 (h!34003 (_ BitVec 64)) (t!47469 List!32768)) )
))
(declare-fun arrayNoDuplicates!0 (array!95436 (_ BitVec 32) List!32768) Bool)

(assert (=> b!1395980 (= res!935165 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32765))))

(declare-fun res!935167 () Bool)

(assert (=> start!119938 (=> (not res!935167) (not e!790334))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119938 (= res!935167 (validMask!0 mask!2840))))

(assert (=> start!119938 e!790334))

(assert (=> start!119938 true))

(declare-fun array_inv!35014 (array!95436) Bool)

(assert (=> start!119938 (array_inv!35014 a!2901)))

(declare-fun b!1395981 () Bool)

(declare-fun res!935166 () Bool)

(assert (=> b!1395981 (=> (not res!935166) (not e!790334))))

(assert (=> b!1395981 (= res!935166 (validKeyInArray!0 (select (arr!46069 a!2901) j!112)))))

(declare-fun e!790337 () Bool)

(declare-fun b!1395982 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95436 (_ BitVec 32)) SeekEntryResult!10408)

(assert (=> b!1395982 (= e!790337 (= (seekEntryOrOpen!0 (select (arr!46069 a!2901) j!112) a!2901 mask!2840) (Found!10408 j!112)))))

(declare-fun b!1395983 () Bool)

(assert (=> b!1395983 (= e!790334 (not e!790335))))

(declare-fun res!935170 () Bool)

(assert (=> b!1395983 (=> res!935170 e!790335)))

(assert (=> b!1395983 (= res!935170 (or (not (is-Intermediate!10408 lt!613174)) (undefined!11220 lt!613174)))))

(assert (=> b!1395983 e!790337))

(declare-fun res!935171 () Bool)

(assert (=> b!1395983 (=> (not res!935171) (not e!790337))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95436 (_ BitVec 32)) Bool)

(assert (=> b!1395983 (= res!935171 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46770 0))(
  ( (Unit!46771) )
))
(declare-fun lt!613172 () Unit!46770)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95436 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46770)

(assert (=> b!1395983 (= lt!613172 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1395983 (= lt!613174 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46069 a!2901) j!112) mask!2840) (select (arr!46069 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395984 () Bool)

(declare-fun res!935172 () Bool)

(assert (=> b!1395984 (=> (not res!935172) (not e!790334))))

(assert (=> b!1395984 (= res!935172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1395985 () Bool)

(declare-fun res!935169 () Bool)

(assert (=> b!1395985 (=> (not res!935169) (not e!790334))))

(assert (=> b!1395985 (= res!935169 (and (= (size!46620 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46620 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46620 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119938 res!935167) b!1395985))

(assert (= (and b!1395985 res!935169) b!1395978))

(assert (= (and b!1395978 res!935168) b!1395981))

(assert (= (and b!1395981 res!935166) b!1395984))

(assert (= (and b!1395984 res!935172) b!1395980))

(assert (= (and b!1395980 res!935165) b!1395983))

(assert (= (and b!1395983 res!935171) b!1395982))

(assert (= (and b!1395983 (not res!935170)) b!1395979))

(declare-fun m!1282535 () Bool)

(assert (=> start!119938 m!1282535))

(declare-fun m!1282537 () Bool)

(assert (=> start!119938 m!1282537))

(declare-fun m!1282539 () Bool)

(assert (=> b!1395984 m!1282539))

(declare-fun m!1282541 () Bool)

(assert (=> b!1395981 m!1282541))

(assert (=> b!1395981 m!1282541))

(declare-fun m!1282543 () Bool)

(assert (=> b!1395981 m!1282543))

(declare-fun m!1282545 () Bool)

(assert (=> b!1395980 m!1282545))

(assert (=> b!1395983 m!1282541))

(declare-fun m!1282547 () Bool)

(assert (=> b!1395983 m!1282547))

(assert (=> b!1395983 m!1282541))

(declare-fun m!1282549 () Bool)

(assert (=> b!1395983 m!1282549))

(assert (=> b!1395983 m!1282547))

(assert (=> b!1395983 m!1282541))

(declare-fun m!1282551 () Bool)

(assert (=> b!1395983 m!1282551))

(declare-fun m!1282553 () Bool)

(assert (=> b!1395983 m!1282553))

(assert (=> b!1395982 m!1282541))

(assert (=> b!1395982 m!1282541))

(declare-fun m!1282555 () Bool)

(assert (=> b!1395982 m!1282555))

(declare-fun m!1282557 () Bool)

(assert (=> b!1395978 m!1282557))

(assert (=> b!1395978 m!1282557))

(declare-fun m!1282559 () Bool)

(assert (=> b!1395978 m!1282559))

(declare-fun m!1282561 () Bool)

(assert (=> b!1395979 m!1282561))

(declare-fun m!1282563 () Bool)

(assert (=> b!1395979 m!1282563))

(assert (=> b!1395979 m!1282563))

(declare-fun m!1282565 () Bool)

(assert (=> b!1395979 m!1282565))

(assert (=> b!1395979 m!1282565))

(assert (=> b!1395979 m!1282563))

(declare-fun m!1282567 () Bool)

(assert (=> b!1395979 m!1282567))

(push 1)

(assert (not b!1395979))

(assert (not b!1395983))

(assert (not b!1395980))

(assert (not b!1395981))

(assert (not start!119938))

(assert (not b!1395984))

(assert (not b!1395982))

(assert (not b!1395978))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1396100 () Bool)

(declare-fun e!790412 () SeekEntryResult!10408)

(declare-fun lt!613225 () SeekEntryResult!10408)

(assert (=> b!1396100 (= e!790412 (Found!10408 (index!44004 lt!613225)))))

(declare-fun b!1396101 () Bool)

(declare-fun e!790410 () SeekEntryResult!10408)

(assert (=> b!1396101 (= e!790410 Undefined!10408)))

(declare-fun b!1396102 () Bool)

(declare-fun e!790411 () SeekEntryResult!10408)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95436 (_ BitVec 32)) SeekEntryResult!10408)

(assert (=> b!1396102 (= e!790411 (seekKeyOrZeroReturnVacant!0 (x!125675 lt!613225) (index!44004 lt!613225) (index!44004 lt!613225) (select (arr!46069 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1396103 () Bool)

(declare-fun c!129882 () Bool)

(declare-fun lt!613224 () (_ BitVec 64))

(assert (=> b!1396103 (= c!129882 (= lt!613224 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1396103 (= e!790412 e!790411)))

(declare-fun d!150753 () Bool)

(declare-fun lt!613223 () SeekEntryResult!10408)

(assert (=> d!150753 (and (or (is-Undefined!10408 lt!613223) (not (is-Found!10408 lt!613223)) (and (bvsge (index!44003 lt!613223) #b00000000000000000000000000000000) (bvslt (index!44003 lt!613223) (size!46620 a!2901)))) (or (is-Undefined!10408 lt!613223) (is-Found!10408 lt!613223) (not (is-MissingZero!10408 lt!613223)) (and (bvsge (index!44002 lt!613223) #b00000000000000000000000000000000) (bvslt (index!44002 lt!613223) (size!46620 a!2901)))) (or (is-Undefined!10408 lt!613223) (is-Found!10408 lt!613223) (is-MissingZero!10408 lt!613223) (not (is-MissingVacant!10408 lt!613223)) (and (bvsge (index!44005 lt!613223) #b00000000000000000000000000000000) (bvslt (index!44005 lt!613223) (size!46620 a!2901)))) (or (is-Undefined!10408 lt!613223) (ite (is-Found!10408 lt!613223) (= (select (arr!46069 a!2901) (index!44003 lt!613223)) (select (arr!46069 a!2901) j!112)) (ite (is-MissingZero!10408 lt!613223) (= (select (arr!46069 a!2901) (index!44002 lt!613223)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10408 lt!613223) (= (select (arr!46069 a!2901) (index!44005 lt!613223)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150753 (= lt!613223 e!790410)))

(declare-fun c!129883 () Bool)

(assert (=> d!150753 (= c!129883 (and (is-Intermediate!10408 lt!613225) (undefined!11220 lt!613225)))))

(assert (=> d!150753 (= lt!613225 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46069 a!2901) j!112) mask!2840) (select (arr!46069 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150753 (validMask!0 mask!2840)))

(assert (=> d!150753 (= (seekEntryOrOpen!0 (select (arr!46069 a!2901) j!112) a!2901 mask!2840) lt!613223)))

(declare-fun b!1396104 () Bool)

(assert (=> b!1396104 (= e!790410 e!790412)))

(assert (=> b!1396104 (= lt!613224 (select (arr!46069 a!2901) (index!44004 lt!613225)))))

(declare-fun c!129884 () Bool)

(assert (=> b!1396104 (= c!129884 (= lt!613224 (select (arr!46069 a!2901) j!112)))))

(declare-fun b!1396105 () Bool)

(assert (=> b!1396105 (= e!790411 (MissingZero!10408 (index!44004 lt!613225)))))

(assert (= (and d!150753 c!129883) b!1396101))

(assert (= (and d!150753 (not c!129883)) b!1396104))

(assert (= (and b!1396104 c!129884) b!1396100))

(assert (= (and b!1396104 (not c!129884)) b!1396103))

(assert (= (and b!1396103 c!129882) b!1396105))

(assert (= (and b!1396103 (not c!129882)) b!1396102))

(assert (=> b!1396102 m!1282541))

(declare-fun m!1282669 () Bool)

(assert (=> b!1396102 m!1282669))

(assert (=> d!150753 m!1282547))

(assert (=> d!150753 m!1282541))

(assert (=> d!150753 m!1282551))

(declare-fun m!1282671 () Bool)

(assert (=> d!150753 m!1282671))

(assert (=> d!150753 m!1282535))

(declare-fun m!1282673 () Bool)

(assert (=> d!150753 m!1282673))

(assert (=> d!150753 m!1282541))

(assert (=> d!150753 m!1282547))

(declare-fun m!1282675 () Bool)

(assert (=> d!150753 m!1282675))

(declare-fun m!1282677 () Bool)

(assert (=> b!1396104 m!1282677))

(assert (=> b!1395982 d!150753))

(declare-fun d!150765 () Bool)

(assert (=> d!150765 (= (validKeyInArray!0 (select (arr!46069 a!2901) j!112)) (and (not (= (select (arr!46069 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46069 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1395981 d!150765))

(declare-fun b!1396132 () Bool)

(declare-fun e!790429 () Bool)

(declare-fun call!66858 () Bool)

(assert (=> b!1396132 (= e!790429 call!66858)))

(declare-fun b!1396133 () Bool)

(declare-fun e!790430 () Bool)

(assert (=> b!1396133 (= e!790429 e!790430)))

(declare-fun lt!613237 () (_ BitVec 64))

(assert (=> b!1396133 (= lt!613237 (select (arr!46069 a!2901) j!112))))

(declare-fun lt!613236 () Unit!46770)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95436 (_ BitVec 64) (_ BitVec 32)) Unit!46770)

(assert (=> b!1396133 (= lt!613236 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!613237 j!112))))

(declare-fun arrayContainsKey!0 (array!95436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1396133 (arrayContainsKey!0 a!2901 lt!613237 #b00000000000000000000000000000000)))

(declare-fun lt!613238 () Unit!46770)

(assert (=> b!1396133 (= lt!613238 lt!613236)))

(declare-fun res!935262 () Bool)

(assert (=> b!1396133 (= res!935262 (= (seekEntryOrOpen!0 (select (arr!46069 a!2901) j!112) a!2901 mask!2840) (Found!10408 j!112)))))

(assert (=> b!1396133 (=> (not res!935262) (not e!790430))))

(declare-fun b!1396134 () Bool)

(declare-fun e!790431 () Bool)

(assert (=> b!1396134 (= e!790431 e!790429)))

(declare-fun c!129893 () Bool)

(assert (=> b!1396134 (= c!129893 (validKeyInArray!0 (select (arr!46069 a!2901) j!112)))))

(declare-fun b!1396135 () Bool)

(assert (=> b!1396135 (= e!790430 call!66858)))

(declare-fun d!150767 () Bool)

(declare-fun res!935261 () Bool)

(assert (=> d!150767 (=> res!935261 e!790431)))

(assert (=> d!150767 (= res!935261 (bvsge j!112 (size!46620 a!2901)))))

(assert (=> d!150767 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!790431)))

(declare-fun bm!66855 () Bool)

(assert (=> bm!66855 (= call!66858 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!150767 (not res!935261)) b!1396134))

(assert (= (and b!1396134 c!129893) b!1396133))

(assert (= (and b!1396134 (not c!129893)) b!1396132))

(assert (= (and b!1396133 res!935262) b!1396135))

(assert (= (or b!1396135 b!1396132) bm!66855))

(assert (=> b!1396133 m!1282541))

(declare-fun m!1282679 () Bool)

(assert (=> b!1396133 m!1282679))

(declare-fun m!1282681 () Bool)

(assert (=> b!1396133 m!1282681))

(assert (=> b!1396133 m!1282541))

(assert (=> b!1396133 m!1282555))

(assert (=> b!1396134 m!1282541))

(assert (=> b!1396134 m!1282541))

(assert (=> b!1396134 m!1282543))

(declare-fun m!1282683 () Bool)

(assert (=> bm!66855 m!1282683))

(assert (=> b!1395983 d!150767))

(declare-fun d!150769 () Bool)

(assert (=> d!150769 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!613247 () Unit!46770)

(declare-fun choose!38 (array!95436 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46770)

(assert (=> d!150769 (= lt!613247 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150769 (validMask!0 mask!2840)))

(assert (=> d!150769 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!613247)))

(declare-fun bs!40627 () Bool)

(assert (= bs!40627 d!150769))

(assert (=> bs!40627 m!1282553))

(declare-fun m!1282693 () Bool)

(assert (=> bs!40627 m!1282693))

(assert (=> bs!40627 m!1282535))

(assert (=> b!1395983 d!150769))

(declare-fun d!150773 () Bool)

(declare-fun e!790474 () Bool)

(assert (=> d!150773 e!790474))

(declare-fun c!129917 () Bool)

(declare-fun lt!613277 () SeekEntryResult!10408)

(assert (=> d!150773 (= c!129917 (and (is-Intermediate!10408 lt!613277) (undefined!11220 lt!613277)))))

(declare-fun e!790475 () SeekEntryResult!10408)

(assert (=> d!150773 (= lt!613277 e!790475)))

(declare-fun c!129918 () Bool)

(assert (=> d!150773 (= c!129918 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!613276 () (_ BitVec 64))

(assert (=> d!150773 (= lt!613276 (select (arr!46069 a!2901) (toIndex!0 (select (arr!46069 a!2901) j!112) mask!2840)))))

(assert (=> d!150773 (validMask!0 mask!2840)))

(assert (=> d!150773 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46069 a!2901) j!112) mask!2840) (select (arr!46069 a!2901) j!112) a!2901 mask!2840) lt!613277)))

(declare-fun b!1396207 () Bool)

(assert (=> b!1396207 (and (bvsge (index!44004 lt!613277) #b00000000000000000000000000000000) (bvslt (index!44004 lt!613277) (size!46620 a!2901)))))

(declare-fun res!935291 () Bool)

(assert (=> b!1396207 (= res!935291 (= (select (arr!46069 a!2901) (index!44004 lt!613277)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!790473 () Bool)

(assert (=> b!1396207 (=> res!935291 e!790473)))

(declare-fun b!1396208 () Bool)

(assert (=> b!1396208 (= e!790475 (Intermediate!10408 true (toIndex!0 (select (arr!46069 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1396209 () Bool)

(assert (=> b!1396209 (and (bvsge (index!44004 lt!613277) #b00000000000000000000000000000000) (bvslt (index!44004 lt!613277) (size!46620 a!2901)))))

(assert (=> b!1396209 (= e!790473 (= (select (arr!46069 a!2901) (index!44004 lt!613277)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1396210 () Bool)

(declare-fun e!790476 () Bool)

(assert (=> b!1396210 (= e!790474 e!790476)))

(declare-fun res!935290 () Bool)

(assert (=> b!1396210 (= res!935290 (and (is-Intermediate!10408 lt!613277) (not (undefined!11220 lt!613277)) (bvslt (x!125675 lt!613277) #b01111111111111111111111111111110) (bvsge (x!125675 lt!613277) #b00000000000000000000000000000000) (bvsge (x!125675 lt!613277) #b00000000000000000000000000000000)))))

(assert (=> b!1396210 (=> (not res!935290) (not e!790476))))

(declare-fun b!1396211 () Bool)

(assert (=> b!1396211 (and (bvsge (index!44004 lt!613277) #b00000000000000000000000000000000) (bvslt (index!44004 lt!613277) (size!46620 a!2901)))))

(declare-fun res!935292 () Bool)

(assert (=> b!1396211 (= res!935292 (= (select (arr!46069 a!2901) (index!44004 lt!613277)) (select (arr!46069 a!2901) j!112)))))

(assert (=> b!1396211 (=> res!935292 e!790473)))

(assert (=> b!1396211 (= e!790476 e!790473)))

(declare-fun b!1396212 () Bool)

(declare-fun e!790477 () SeekEntryResult!10408)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396212 (= e!790477 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46069 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46069 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1396213 () Bool)

(assert (=> b!1396213 (= e!790477 (Intermediate!10408 false (toIndex!0 (select (arr!46069 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1396214 () Bool)

(assert (=> b!1396214 (= e!790474 (bvsge (x!125675 lt!613277) #b01111111111111111111111111111110))))

(declare-fun b!1396215 () Bool)

(assert (=> b!1396215 (= e!790475 e!790477)))

(declare-fun c!129919 () Bool)

(assert (=> b!1396215 (= c!129919 (or (= lt!613276 (select (arr!46069 a!2901) j!112)) (= (bvadd lt!613276 lt!613276) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!150773 c!129918) b!1396208))

(assert (= (and d!150773 (not c!129918)) b!1396215))

(assert (= (and b!1396215 c!129919) b!1396213))

(assert (= (and b!1396215 (not c!129919)) b!1396212))

(assert (= (and d!150773 c!129917) b!1396214))

(assert (= (and d!150773 (not c!129917)) b!1396210))

(assert (= (and b!1396210 res!935290) b!1396211))

(assert (= (and b!1396211 (not res!935292)) b!1396207))

(assert (= (and b!1396207 (not res!935291)) b!1396209))

(declare-fun m!1282727 () Bool)

(assert (=> b!1396211 m!1282727))

(assert (=> b!1396207 m!1282727))

(assert (=> b!1396209 m!1282727))

(assert (=> d!150773 m!1282547))

(declare-fun m!1282729 () Bool)

(assert (=> d!150773 m!1282729))

(assert (=> d!150773 m!1282535))

(assert (=> b!1396212 m!1282547))

(declare-fun m!1282731 () Bool)

(assert (=> b!1396212 m!1282731))

(assert (=> b!1396212 m!1282731))

(assert (=> b!1396212 m!1282541))

(declare-fun m!1282733 () Bool)

(assert (=> b!1396212 m!1282733))

(assert (=> b!1395983 d!150773))

(declare-fun d!150793 () Bool)

(declare-fun lt!613295 () (_ BitVec 32))

(declare-fun lt!613294 () (_ BitVec 32))

(assert (=> d!150793 (= lt!613295 (bvmul (bvxor lt!613294 (bvlshr lt!613294 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150793 (= lt!613294 ((_ extract 31 0) (bvand (bvxor (select (arr!46069 a!2901) j!112) (bvlshr (select (arr!46069 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150793 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!935293 (let ((h!34008 ((_ extract 31 0) (bvand (bvxor (select (arr!46069 a!2901) j!112) (bvlshr (select (arr!46069 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125683 (bvmul (bvxor h!34008 (bvlshr h!34008 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125683 (bvlshr x!125683 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!935293 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!935293 #b00000000000000000000000000000000))))))

(assert (=> d!150793 (= (toIndex!0 (select (arr!46069 a!2901) j!112) mask!2840) (bvand (bvxor lt!613295 (bvlshr lt!613295 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1395983 d!150793))

(declare-fun d!150795 () Bool)

(assert (=> d!150795 (= (validKeyInArray!0 (select (arr!46069 a!2901) i!1037)) (and (not (= (select (arr!46069 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46069 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1395978 d!150795))

(declare-fun d!150797 () Bool)

(declare-fun e!790494 () Bool)

(assert (=> d!150797 e!790494))

(declare-fun c!129935 () Bool)

(declare-fun lt!613300 () SeekEntryResult!10408)

(assert (=> d!150797 (= c!129935 (and (is-Intermediate!10408 lt!613300) (undefined!11220 lt!613300)))))

(declare-fun e!790495 () SeekEntryResult!10408)

(assert (=> d!150797 (= lt!613300 e!790495)))

(declare-fun c!129936 () Bool)

(assert (=> d!150797 (= c!129936 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!613299 () (_ BitVec 64))

(assert (=> d!150797 (= lt!613299 (select (arr!46069 (array!95437 (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46620 a!2901))) (toIndex!0 (select (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!150797 (validMask!0 mask!2840)))

(assert (=> d!150797 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95437 (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46620 a!2901)) mask!2840) lt!613300)))

(declare-fun b!1396246 () Bool)

(assert (=> b!1396246 (and (bvsge (index!44004 lt!613300) #b00000000000000000000000000000000) (bvslt (index!44004 lt!613300) (size!46620 (array!95437 (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46620 a!2901)))))))

(declare-fun res!935295 () Bool)

(assert (=> b!1396246 (= res!935295 (= (select (arr!46069 (array!95437 (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46620 a!2901))) (index!44004 lt!613300)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!790493 () Bool)

(assert (=> b!1396246 (=> res!935295 e!790493)))

(declare-fun b!1396247 () Bool)

(assert (=> b!1396247 (= e!790495 (Intermediate!10408 true (toIndex!0 (select (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1396248 () Bool)

(assert (=> b!1396248 (and (bvsge (index!44004 lt!613300) #b00000000000000000000000000000000) (bvslt (index!44004 lt!613300) (size!46620 (array!95437 (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46620 a!2901)))))))

(assert (=> b!1396248 (= e!790493 (= (select (arr!46069 (array!95437 (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46620 a!2901))) (index!44004 lt!613300)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1396249 () Bool)

(declare-fun e!790496 () Bool)

(assert (=> b!1396249 (= e!790494 e!790496)))

(declare-fun res!935294 () Bool)

(assert (=> b!1396249 (= res!935294 (and (is-Intermediate!10408 lt!613300) (not (undefined!11220 lt!613300)) (bvslt (x!125675 lt!613300) #b01111111111111111111111111111110) (bvsge (x!125675 lt!613300) #b00000000000000000000000000000000) (bvsge (x!125675 lt!613300) #b00000000000000000000000000000000)))))

(assert (=> b!1396249 (=> (not res!935294) (not e!790496))))

(declare-fun b!1396250 () Bool)

(assert (=> b!1396250 (and (bvsge (index!44004 lt!613300) #b00000000000000000000000000000000) (bvslt (index!44004 lt!613300) (size!46620 (array!95437 (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46620 a!2901)))))))

(declare-fun res!935296 () Bool)

(assert (=> b!1396250 (= res!935296 (= (select (arr!46069 (array!95437 (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46620 a!2901))) (index!44004 lt!613300)) (select (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1396250 (=> res!935296 e!790493)))

(assert (=> b!1396250 (= e!790496 e!790493)))

(declare-fun b!1396251 () Bool)

(declare-fun e!790497 () SeekEntryResult!10408)

(assert (=> b!1396251 (= e!790497 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95437 (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46620 a!2901)) mask!2840))))

(declare-fun b!1396252 () Bool)

(assert (=> b!1396252 (= e!790497 (Intermediate!10408 false (toIndex!0 (select (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1396253 () Bool)

(assert (=> b!1396253 (= e!790494 (bvsge (x!125675 lt!613300) #b01111111111111111111111111111110))))

(declare-fun b!1396254 () Bool)

(assert (=> b!1396254 (= e!790495 e!790497)))

(declare-fun c!129937 () Bool)

(assert (=> b!1396254 (= c!129937 (or (= lt!613299 (select (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!613299 lt!613299) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!150797 c!129936) b!1396247))

(assert (= (and d!150797 (not c!129936)) b!1396254))

(assert (= (and b!1396254 c!129937) b!1396252))

(assert (= (and b!1396254 (not c!129937)) b!1396251))

(assert (= (and d!150797 c!129935) b!1396253))

(assert (= (and d!150797 (not c!129935)) b!1396249))

(assert (= (and b!1396249 res!935294) b!1396250))

(assert (= (and b!1396250 (not res!935296)) b!1396246))

(assert (= (and b!1396246 (not res!935295)) b!1396248))

(declare-fun m!1282745 () Bool)

(assert (=> b!1396250 m!1282745))

(assert (=> b!1396246 m!1282745))

(assert (=> b!1396248 m!1282745))

(assert (=> d!150797 m!1282565))

(declare-fun m!1282747 () Bool)

(assert (=> d!150797 m!1282747))

(assert (=> d!150797 m!1282535))

(assert (=> b!1396251 m!1282565))

(declare-fun m!1282749 () Bool)

(assert (=> b!1396251 m!1282749))

(assert (=> b!1396251 m!1282749))

(assert (=> b!1396251 m!1282563))

(declare-fun m!1282751 () Bool)

(assert (=> b!1396251 m!1282751))

(assert (=> b!1395979 d!150797))

(declare-fun d!150799 () Bool)

(declare-fun lt!613302 () (_ BitVec 32))

(declare-fun lt!613301 () (_ BitVec 32))

(assert (=> d!150799 (= lt!613302 (bvmul (bvxor lt!613301 (bvlshr lt!613301 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150799 (= lt!613301 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150799 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!935293 (let ((h!34008 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125683 (bvmul (bvxor h!34008 (bvlshr h!34008 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125683 (bvlshr x!125683 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!935293 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!935293 #b00000000000000000000000000000000))))))

(assert (=> d!150799 (= (toIndex!0 (select (store (arr!46069 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!613302 (bvlshr lt!613302 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1395979 d!150799))

(declare-fun b!1396255 () Bool)

(declare-fun e!790498 () Bool)

(declare-fun call!66861 () Bool)

(assert (=> b!1396255 (= e!790498 call!66861)))

(declare-fun b!1396256 () Bool)

(declare-fun e!790499 () Bool)

(assert (=> b!1396256 (= e!790498 e!790499)))

(declare-fun lt!613304 () (_ BitVec 64))

(assert (=> b!1396256 (= lt!613304 (select (arr!46069 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!613303 () Unit!46770)

(assert (=> b!1396256 (= lt!613303 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!613304 #b00000000000000000000000000000000))))

(assert (=> b!1396256 (arrayContainsKey!0 a!2901 lt!613304 #b00000000000000000000000000000000)))

(declare-fun lt!613305 () Unit!46770)

(assert (=> b!1396256 (= lt!613305 lt!613303)))

(declare-fun res!935298 () Bool)

(assert (=> b!1396256 (= res!935298 (= (seekEntryOrOpen!0 (select (arr!46069 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10408 #b00000000000000000000000000000000)))))

(assert (=> b!1396256 (=> (not res!935298) (not e!790499))))

(declare-fun b!1396257 () Bool)

(declare-fun e!790500 () Bool)

(assert (=> b!1396257 (= e!790500 e!790498)))

(declare-fun c!129938 () Bool)

(assert (=> b!1396257 (= c!129938 (validKeyInArray!0 (select (arr!46069 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1396258 () Bool)

(assert (=> b!1396258 (= e!790499 call!66861)))

(declare-fun d!150801 () Bool)

(declare-fun res!935297 () Bool)

(assert (=> d!150801 (=> res!935297 e!790500)))

(assert (=> d!150801 (= res!935297 (bvsge #b00000000000000000000000000000000 (size!46620 a!2901)))))

(assert (=> d!150801 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!790500)))

(declare-fun bm!66858 () Bool)

(assert (=> bm!66858 (= call!66861 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!150801 (not res!935297)) b!1396257))

(assert (= (and b!1396257 c!129938) b!1396256))

(assert (= (and b!1396257 (not c!129938)) b!1396255))

(assert (= (and b!1396256 res!935298) b!1396258))

(assert (= (or b!1396258 b!1396255) bm!66858))

(declare-fun m!1282753 () Bool)

(assert (=> b!1396256 m!1282753))

(declare-fun m!1282755 () Bool)

(assert (=> b!1396256 m!1282755))

(declare-fun m!1282757 () Bool)

(assert (=> b!1396256 m!1282757))

(assert (=> b!1396256 m!1282753))

(declare-fun m!1282759 () Bool)

(assert (=> b!1396256 m!1282759))

(assert (=> b!1396257 m!1282753))

(assert (=> b!1396257 m!1282753))

(declare-fun m!1282761 () Bool)

(assert (=> b!1396257 m!1282761))

(declare-fun m!1282763 () Bool)

(assert (=> bm!66858 m!1282763))

(assert (=> b!1395984 d!150801))

(declare-fun d!150803 () Bool)

(assert (=> d!150803 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119938 d!150803))

(declare-fun d!150811 () Bool)

(assert (=> d!150811 (= (array_inv!35014 a!2901) (bvsge (size!46620 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119938 d!150811))

(declare-fun b!1396284 () Bool)

(declare-fun e!790517 () Bool)

(declare-fun call!66864 () Bool)

(assert (=> b!1396284 (= e!790517 call!66864)))

(declare-fun d!150813 () Bool)

(declare-fun res!935310 () Bool)

(declare-fun e!790520 () Bool)

(assert (=> d!150813 (=> res!935310 e!790520)))

(assert (=> d!150813 (= res!935310 (bvsge #b00000000000000000000000000000000 (size!46620 a!2901)))))

(assert (=> d!150813 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32765) e!790520)))

(declare-fun bm!66861 () Bool)

(declare-fun c!129947 () Bool)

(assert (=> bm!66861 (= call!66864 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129947 (Cons!32764 (select (arr!46069 a!2901) #b00000000000000000000000000000000) Nil!32765) Nil!32765)))))

(declare-fun b!1396285 () Bool)

(declare-fun e!790519 () Bool)

(declare-fun contains!9795 (List!32768 (_ BitVec 64)) Bool)

(assert (=> b!1396285 (= e!790519 (contains!9795 Nil!32765 (select (arr!46069 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1396286 () Bool)

(declare-fun e!790518 () Bool)

(assert (=> b!1396286 (= e!790518 e!790517)))

(assert (=> b!1396286 (= c!129947 (validKeyInArray!0 (select (arr!46069 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1396287 () Bool)

(assert (=> b!1396287 (= e!790517 call!66864)))

(declare-fun b!1396288 () Bool)

(assert (=> b!1396288 (= e!790520 e!790518)))

(declare-fun res!935308 () Bool)

(assert (=> b!1396288 (=> (not res!935308) (not e!790518))))

(assert (=> b!1396288 (= res!935308 (not e!790519))))

(declare-fun res!935309 () Bool)

(assert (=> b!1396288 (=> (not res!935309) (not e!790519))))

(assert (=> b!1396288 (= res!935309 (validKeyInArray!0 (select (arr!46069 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150813 (not res!935310)) b!1396288))

(assert (= (and b!1396288 res!935309) b!1396285))

(assert (= (and b!1396288 res!935308) b!1396286))

(assert (= (and b!1396286 c!129947) b!1396284))

(assert (= (and b!1396286 (not c!129947)) b!1396287))

(assert (= (or b!1396284 b!1396287) bm!66861))

(assert (=> bm!66861 m!1282753))

(declare-fun m!1282783 () Bool)

(assert (=> bm!66861 m!1282783))

(assert (=> b!1396285 m!1282753))

(assert (=> b!1396285 m!1282753))

(declare-fun m!1282785 () Bool)

(assert (=> b!1396285 m!1282785))

(assert (=> b!1396286 m!1282753))

(assert (=> b!1396286 m!1282753))

(assert (=> b!1396286 m!1282761))

(assert (=> b!1396288 m!1282753))

(assert (=> b!1396288 m!1282753))

(assert (=> b!1396288 m!1282761))

(assert (=> b!1395980 d!150813))

(push 1)

