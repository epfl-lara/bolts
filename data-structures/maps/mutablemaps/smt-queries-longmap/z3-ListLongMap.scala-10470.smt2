; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123132 () Bool)

(assert start!123132)

(declare-fun b!1427458 () Bool)

(declare-fun res!962607 () Bool)

(declare-fun e!806251 () Bool)

(assert (=> b!1427458 (=> (not res!962607) (not e!806251))))

(declare-datatypes ((SeekEntryResult!11268 0))(
  ( (MissingZero!11268 (index!47463 (_ BitVec 32))) (Found!11268 (index!47464 (_ BitVec 32))) (Intermediate!11268 (undefined!12080 Bool) (index!47465 (_ BitVec 32)) (x!129101 (_ BitVec 32))) (Undefined!11268) (MissingVacant!11268 (index!47466 (_ BitVec 32))) )
))
(declare-fun lt!628548 () SeekEntryResult!11268)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97313 0))(
  ( (array!97314 (arr!46967 (Array (_ BitVec 32) (_ BitVec 64))) (size!47518 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97313)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97313 (_ BitVec 32)) SeekEntryResult!11268)

(assert (=> b!1427458 (= res!962607 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46967 a!2831) j!81) a!2831 mask!2608) lt!628548))))

(declare-fun b!1427459 () Bool)

(assert (=> b!1427459 (= e!806251 (not (or (= (select (arr!46967 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (select (arr!46967 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!806252 () Bool)

(assert (=> b!1427459 e!806252))

(declare-fun res!962602 () Bool)

(assert (=> b!1427459 (=> (not res!962602) (not e!806252))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97313 (_ BitVec 32)) Bool)

(assert (=> b!1427459 (= res!962602 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48230 0))(
  ( (Unit!48231) )
))
(declare-fun lt!628550 () Unit!48230)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97313 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48230)

(assert (=> b!1427459 (= lt!628550 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1427460 () Bool)

(declare-fun res!962604 () Bool)

(assert (=> b!1427460 (=> (not res!962604) (not e!806251))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1427460 (= res!962604 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1427461 () Bool)

(declare-fun res!962605 () Bool)

(declare-fun e!806253 () Bool)

(assert (=> b!1427461 (=> (not res!962605) (not e!806253))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1427461 (= res!962605 (validKeyInArray!0 (select (arr!46967 a!2831) j!81)))))

(declare-fun b!1427462 () Bool)

(declare-fun res!962599 () Bool)

(assert (=> b!1427462 (=> (not res!962599) (not e!806253))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1427462 (= res!962599 (validKeyInArray!0 (select (arr!46967 a!2831) i!982)))))

(declare-fun b!1427463 () Bool)

(declare-fun res!962600 () Bool)

(assert (=> b!1427463 (=> (not res!962600) (not e!806253))))

(assert (=> b!1427463 (= res!962600 (and (= (size!47518 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47518 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47518 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1427464 () Bool)

(declare-fun e!806255 () Bool)

(assert (=> b!1427464 (= e!806255 e!806251)))

(declare-fun res!962610 () Bool)

(assert (=> b!1427464 (=> (not res!962610) (not e!806251))))

(declare-fun lt!628549 () array!97313)

(declare-fun lt!628552 () SeekEntryResult!11268)

(declare-fun lt!628551 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1427464 (= res!962610 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628551 mask!2608) lt!628551 lt!628549 mask!2608) lt!628552))))

(assert (=> b!1427464 (= lt!628552 (Intermediate!11268 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1427464 (= lt!628551 (select (store (arr!46967 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1427464 (= lt!628549 (array!97314 (store (arr!46967 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47518 a!2831)))))

(declare-fun b!1427465 () Bool)

(declare-fun res!962608 () Bool)

(assert (=> b!1427465 (=> (not res!962608) (not e!806253))))

(declare-datatypes ((List!33657 0))(
  ( (Nil!33654) (Cons!33653 (h!34961 (_ BitVec 64)) (t!48358 List!33657)) )
))
(declare-fun arrayNoDuplicates!0 (array!97313 (_ BitVec 32) List!33657) Bool)

(assert (=> b!1427465 (= res!962608 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33654))))

(declare-fun b!1427467 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97313 (_ BitVec 32)) SeekEntryResult!11268)

(assert (=> b!1427467 (= e!806252 (= (seekEntryOrOpen!0 (select (arr!46967 a!2831) j!81) a!2831 mask!2608) (Found!11268 j!81)))))

(declare-fun b!1427468 () Bool)

(assert (=> b!1427468 (= e!806253 e!806255)))

(declare-fun res!962609 () Bool)

(assert (=> b!1427468 (=> (not res!962609) (not e!806255))))

(assert (=> b!1427468 (= res!962609 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46967 a!2831) j!81) mask!2608) (select (arr!46967 a!2831) j!81) a!2831 mask!2608) lt!628548))))

(assert (=> b!1427468 (= lt!628548 (Intermediate!11268 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1427469 () Bool)

(declare-fun res!962606 () Bool)

(assert (=> b!1427469 (=> (not res!962606) (not e!806251))))

(assert (=> b!1427469 (= res!962606 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628551 lt!628549 mask!2608) lt!628552))))

(declare-fun b!1427470 () Bool)

(declare-fun res!962598 () Bool)

(assert (=> b!1427470 (=> (not res!962598) (not e!806253))))

(assert (=> b!1427470 (= res!962598 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47518 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47518 a!2831))))))

(declare-fun res!962601 () Bool)

(assert (=> start!123132 (=> (not res!962601) (not e!806253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123132 (= res!962601 (validMask!0 mask!2608))))

(assert (=> start!123132 e!806253))

(assert (=> start!123132 true))

(declare-fun array_inv!35912 (array!97313) Bool)

(assert (=> start!123132 (array_inv!35912 a!2831)))

(declare-fun b!1427466 () Bool)

(declare-fun res!962603 () Bool)

(assert (=> b!1427466 (=> (not res!962603) (not e!806253))))

(assert (=> b!1427466 (= res!962603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!123132 res!962601) b!1427463))

(assert (= (and b!1427463 res!962600) b!1427462))

(assert (= (and b!1427462 res!962599) b!1427461))

(assert (= (and b!1427461 res!962605) b!1427466))

(assert (= (and b!1427466 res!962603) b!1427465))

(assert (= (and b!1427465 res!962608) b!1427470))

(assert (= (and b!1427470 res!962598) b!1427468))

(assert (= (and b!1427468 res!962609) b!1427464))

(assert (= (and b!1427464 res!962610) b!1427458))

(assert (= (and b!1427458 res!962607) b!1427469))

(assert (= (and b!1427469 res!962606) b!1427460))

(assert (= (and b!1427460 res!962604) b!1427459))

(assert (= (and b!1427459 res!962602) b!1427467))

(declare-fun m!1317885 () Bool)

(assert (=> start!123132 m!1317885))

(declare-fun m!1317887 () Bool)

(assert (=> start!123132 m!1317887))

(declare-fun m!1317889 () Bool)

(assert (=> b!1427461 m!1317889))

(assert (=> b!1427461 m!1317889))

(declare-fun m!1317891 () Bool)

(assert (=> b!1427461 m!1317891))

(declare-fun m!1317893 () Bool)

(assert (=> b!1427469 m!1317893))

(declare-fun m!1317895 () Bool)

(assert (=> b!1427465 m!1317895))

(declare-fun m!1317897 () Bool)

(assert (=> b!1427459 m!1317897))

(declare-fun m!1317899 () Bool)

(assert (=> b!1427459 m!1317899))

(declare-fun m!1317901 () Bool)

(assert (=> b!1427459 m!1317901))

(assert (=> b!1427468 m!1317889))

(assert (=> b!1427468 m!1317889))

(declare-fun m!1317903 () Bool)

(assert (=> b!1427468 m!1317903))

(assert (=> b!1427468 m!1317903))

(assert (=> b!1427468 m!1317889))

(declare-fun m!1317905 () Bool)

(assert (=> b!1427468 m!1317905))

(declare-fun m!1317907 () Bool)

(assert (=> b!1427464 m!1317907))

(assert (=> b!1427464 m!1317907))

(declare-fun m!1317909 () Bool)

(assert (=> b!1427464 m!1317909))

(declare-fun m!1317911 () Bool)

(assert (=> b!1427464 m!1317911))

(declare-fun m!1317913 () Bool)

(assert (=> b!1427464 m!1317913))

(assert (=> b!1427467 m!1317889))

(assert (=> b!1427467 m!1317889))

(declare-fun m!1317915 () Bool)

(assert (=> b!1427467 m!1317915))

(declare-fun m!1317917 () Bool)

(assert (=> b!1427462 m!1317917))

(assert (=> b!1427462 m!1317917))

(declare-fun m!1317919 () Bool)

(assert (=> b!1427462 m!1317919))

(assert (=> b!1427458 m!1317889))

(assert (=> b!1427458 m!1317889))

(declare-fun m!1317921 () Bool)

(assert (=> b!1427458 m!1317921))

(declare-fun m!1317923 () Bool)

(assert (=> b!1427466 m!1317923))

(check-sat (not b!1427465) (not b!1427468) (not start!123132) (not b!1427458) (not b!1427461) (not b!1427467) (not b!1427459) (not b!1427466) (not b!1427464) (not b!1427462) (not b!1427469))
(check-sat)
(get-model)

(declare-fun b!1427520 () Bool)

(declare-fun e!806281 () Bool)

(declare-fun contains!9863 (List!33657 (_ BitVec 64)) Bool)

(assert (=> b!1427520 (= e!806281 (contains!9863 Nil!33654 (select (arr!46967 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!153291 () Bool)

(declare-fun res!962658 () Bool)

(declare-fun e!806280 () Bool)

(assert (=> d!153291 (=> res!962658 e!806280)))

(assert (=> d!153291 (= res!962658 (bvsge #b00000000000000000000000000000000 (size!47518 a!2831)))))

(assert (=> d!153291 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33654) e!806280)))

(declare-fun b!1427521 () Bool)

(declare-fun e!806279 () Bool)

(declare-fun call!67365 () Bool)

(assert (=> b!1427521 (= e!806279 call!67365)))

(declare-fun b!1427522 () Bool)

(declare-fun e!806282 () Bool)

(assert (=> b!1427522 (= e!806280 e!806282)))

(declare-fun res!962657 () Bool)

(assert (=> b!1427522 (=> (not res!962657) (not e!806282))))

(assert (=> b!1427522 (= res!962657 (not e!806281))))

(declare-fun res!962656 () Bool)

(assert (=> b!1427522 (=> (not res!962656) (not e!806281))))

(assert (=> b!1427522 (= res!962656 (validKeyInArray!0 (select (arr!46967 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67362 () Bool)

(declare-fun c!131924 () Bool)

(assert (=> bm!67362 (= call!67365 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131924 (Cons!33653 (select (arr!46967 a!2831) #b00000000000000000000000000000000) Nil!33654) Nil!33654)))))

(declare-fun b!1427523 () Bool)

(assert (=> b!1427523 (= e!806282 e!806279)))

(assert (=> b!1427523 (= c!131924 (validKeyInArray!0 (select (arr!46967 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1427524 () Bool)

(assert (=> b!1427524 (= e!806279 call!67365)))

(assert (= (and d!153291 (not res!962658)) b!1427522))

(assert (= (and b!1427522 res!962656) b!1427520))

(assert (= (and b!1427522 res!962657) b!1427523))

(assert (= (and b!1427523 c!131924) b!1427524))

(assert (= (and b!1427523 (not c!131924)) b!1427521))

(assert (= (or b!1427524 b!1427521) bm!67362))

(declare-fun m!1317965 () Bool)

(assert (=> b!1427520 m!1317965))

(assert (=> b!1427520 m!1317965))

(declare-fun m!1317967 () Bool)

(assert (=> b!1427520 m!1317967))

(assert (=> b!1427522 m!1317965))

(assert (=> b!1427522 m!1317965))

(declare-fun m!1317969 () Bool)

(assert (=> b!1427522 m!1317969))

(assert (=> bm!67362 m!1317965))

(declare-fun m!1317971 () Bool)

(assert (=> bm!67362 m!1317971))

(assert (=> b!1427523 m!1317965))

(assert (=> b!1427523 m!1317965))

(assert (=> b!1427523 m!1317969))

(assert (=> b!1427465 d!153291))

(declare-fun call!67368 () Bool)

(declare-fun bm!67365 () Bool)

(assert (=> bm!67365 (= call!67368 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun d!153293 () Bool)

(declare-fun res!962664 () Bool)

(declare-fun e!806289 () Bool)

(assert (=> d!153293 (=> res!962664 e!806289)))

(assert (=> d!153293 (= res!962664 (bvsge j!81 (size!47518 a!2831)))))

(assert (=> d!153293 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!806289)))

(declare-fun b!1427533 () Bool)

(declare-fun e!806290 () Bool)

(assert (=> b!1427533 (= e!806290 call!67368)))

(declare-fun b!1427534 () Bool)

(declare-fun e!806291 () Bool)

(assert (=> b!1427534 (= e!806289 e!806291)))

(declare-fun c!131927 () Bool)

(assert (=> b!1427534 (= c!131927 (validKeyInArray!0 (select (arr!46967 a!2831) j!81)))))

(declare-fun b!1427535 () Bool)

(assert (=> b!1427535 (= e!806291 call!67368)))

(declare-fun b!1427536 () Bool)

(assert (=> b!1427536 (= e!806291 e!806290)))

(declare-fun lt!628575 () (_ BitVec 64))

(assert (=> b!1427536 (= lt!628575 (select (arr!46967 a!2831) j!81))))

(declare-fun lt!628576 () Unit!48230)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97313 (_ BitVec 64) (_ BitVec 32)) Unit!48230)

(assert (=> b!1427536 (= lt!628576 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628575 j!81))))

(declare-fun arrayContainsKey!0 (array!97313 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1427536 (arrayContainsKey!0 a!2831 lt!628575 #b00000000000000000000000000000000)))

(declare-fun lt!628574 () Unit!48230)

(assert (=> b!1427536 (= lt!628574 lt!628576)))

(declare-fun res!962663 () Bool)

(assert (=> b!1427536 (= res!962663 (= (seekEntryOrOpen!0 (select (arr!46967 a!2831) j!81) a!2831 mask!2608) (Found!11268 j!81)))))

(assert (=> b!1427536 (=> (not res!962663) (not e!806290))))

(assert (= (and d!153293 (not res!962664)) b!1427534))

(assert (= (and b!1427534 c!131927) b!1427536))

(assert (= (and b!1427534 (not c!131927)) b!1427535))

(assert (= (and b!1427536 res!962663) b!1427533))

(assert (= (or b!1427533 b!1427535) bm!67365))

(declare-fun m!1317973 () Bool)

(assert (=> bm!67365 m!1317973))

(assert (=> b!1427534 m!1317889))

(assert (=> b!1427534 m!1317889))

(assert (=> b!1427534 m!1317891))

(assert (=> b!1427536 m!1317889))

(declare-fun m!1317975 () Bool)

(assert (=> b!1427536 m!1317975))

(declare-fun m!1317977 () Bool)

(assert (=> b!1427536 m!1317977))

(assert (=> b!1427536 m!1317889))

(assert (=> b!1427536 m!1317915))

(assert (=> b!1427459 d!153293))

(declare-fun d!153295 () Bool)

(assert (=> d!153295 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!628579 () Unit!48230)

(declare-fun choose!38 (array!97313 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48230)

(assert (=> d!153295 (= lt!628579 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153295 (validMask!0 mask!2608)))

(assert (=> d!153295 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!628579)))

(declare-fun bs!41603 () Bool)

(assert (= bs!41603 d!153295))

(assert (=> bs!41603 m!1317899))

(declare-fun m!1317979 () Bool)

(assert (=> bs!41603 m!1317979))

(assert (=> bs!41603 m!1317885))

(assert (=> b!1427459 d!153295))

(declare-fun b!1427563 () Bool)

(declare-fun e!806310 () SeekEntryResult!11268)

(assert (=> b!1427563 (= e!806310 (Intermediate!11268 false (toIndex!0 lt!628551 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1427564 () Bool)

(declare-fun lt!628590 () SeekEntryResult!11268)

(assert (=> b!1427564 (and (bvsge (index!47465 lt!628590) #b00000000000000000000000000000000) (bvslt (index!47465 lt!628590) (size!47518 lt!628549)))))

(declare-fun e!806308 () Bool)

(assert (=> b!1427564 (= e!806308 (= (select (arr!46967 lt!628549) (index!47465 lt!628590)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1427565 () Bool)

(declare-fun e!806311 () Bool)

(assert (=> b!1427565 (= e!806311 (bvsge (x!129101 lt!628590) #b01111111111111111111111111111110))))

(declare-fun d!153297 () Bool)

(assert (=> d!153297 e!806311))

(declare-fun c!131936 () Bool)

(get-info :version)

(assert (=> d!153297 (= c!131936 (and ((_ is Intermediate!11268) lt!628590) (undefined!12080 lt!628590)))))

(declare-fun e!806309 () SeekEntryResult!11268)

(assert (=> d!153297 (= lt!628590 e!806309)))

(declare-fun c!131938 () Bool)

(assert (=> d!153297 (= c!131938 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!628591 () (_ BitVec 64))

(assert (=> d!153297 (= lt!628591 (select (arr!46967 lt!628549) (toIndex!0 lt!628551 mask!2608)))))

(assert (=> d!153297 (validMask!0 mask!2608)))

(assert (=> d!153297 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628551 mask!2608) lt!628551 lt!628549 mask!2608) lt!628590)))

(declare-fun b!1427566 () Bool)

(assert (=> b!1427566 (and (bvsge (index!47465 lt!628590) #b00000000000000000000000000000000) (bvslt (index!47465 lt!628590) (size!47518 lt!628549)))))

(declare-fun res!962677 () Bool)

(assert (=> b!1427566 (= res!962677 (= (select (arr!46967 lt!628549) (index!47465 lt!628590)) lt!628551))))

(assert (=> b!1427566 (=> res!962677 e!806308)))

(declare-fun e!806312 () Bool)

(assert (=> b!1427566 (= e!806312 e!806308)))

(declare-fun b!1427567 () Bool)

(assert (=> b!1427567 (= e!806309 (Intermediate!11268 true (toIndex!0 lt!628551 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1427568 () Bool)

(assert (=> b!1427568 (and (bvsge (index!47465 lt!628590) #b00000000000000000000000000000000) (bvslt (index!47465 lt!628590) (size!47518 lt!628549)))))

(declare-fun res!962675 () Bool)

(assert (=> b!1427568 (= res!962675 (= (select (arr!46967 lt!628549) (index!47465 lt!628590)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1427568 (=> res!962675 e!806308)))

(declare-fun b!1427569 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1427569 (= e!806310 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!628551 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!628551 lt!628549 mask!2608))))

(declare-fun b!1427570 () Bool)

(assert (=> b!1427570 (= e!806309 e!806310)))

(declare-fun c!131937 () Bool)

(assert (=> b!1427570 (= c!131937 (or (= lt!628591 lt!628551) (= (bvadd lt!628591 lt!628591) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1427571 () Bool)

(assert (=> b!1427571 (= e!806311 e!806312)))

(declare-fun res!962676 () Bool)

(assert (=> b!1427571 (= res!962676 (and ((_ is Intermediate!11268) lt!628590) (not (undefined!12080 lt!628590)) (bvslt (x!129101 lt!628590) #b01111111111111111111111111111110) (bvsge (x!129101 lt!628590) #b00000000000000000000000000000000) (bvsge (x!129101 lt!628590) #b00000000000000000000000000000000)))))

(assert (=> b!1427571 (=> (not res!962676) (not e!806312))))

(assert (= (and d!153297 c!131938) b!1427567))

(assert (= (and d!153297 (not c!131938)) b!1427570))

(assert (= (and b!1427570 c!131937) b!1427563))

(assert (= (and b!1427570 (not c!131937)) b!1427569))

(assert (= (and d!153297 c!131936) b!1427565))

(assert (= (and d!153297 (not c!131936)) b!1427571))

(assert (= (and b!1427571 res!962676) b!1427566))

(assert (= (and b!1427566 (not res!962677)) b!1427568))

(assert (= (and b!1427568 (not res!962675)) b!1427564))

(declare-fun m!1317981 () Bool)

(assert (=> b!1427564 m!1317981))

(assert (=> b!1427568 m!1317981))

(assert (=> d!153297 m!1317907))

(declare-fun m!1317983 () Bool)

(assert (=> d!153297 m!1317983))

(assert (=> d!153297 m!1317885))

(assert (=> b!1427566 m!1317981))

(assert (=> b!1427569 m!1317907))

(declare-fun m!1317985 () Bool)

(assert (=> b!1427569 m!1317985))

(assert (=> b!1427569 m!1317985))

(declare-fun m!1317987 () Bool)

(assert (=> b!1427569 m!1317987))

(assert (=> b!1427464 d!153297))

(declare-fun d!153303 () Bool)

(declare-fun lt!628604 () (_ BitVec 32))

(declare-fun lt!628603 () (_ BitVec 32))

(assert (=> d!153303 (= lt!628604 (bvmul (bvxor lt!628603 (bvlshr lt!628603 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153303 (= lt!628603 ((_ extract 31 0) (bvand (bvxor lt!628551 (bvlshr lt!628551 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153303 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!962678 (let ((h!34963 ((_ extract 31 0) (bvand (bvxor lt!628551 (bvlshr lt!628551 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129104 (bvmul (bvxor h!34963 (bvlshr h!34963 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129104 (bvlshr x!129104 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!962678 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!962678 #b00000000000000000000000000000000))))))

(assert (=> d!153303 (= (toIndex!0 lt!628551 mask!2608) (bvand (bvxor lt!628604 (bvlshr lt!628604 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1427464 d!153303))

(declare-fun b!1427584 () Bool)

(declare-fun e!806322 () SeekEntryResult!11268)

(assert (=> b!1427584 (= e!806322 (Intermediate!11268 false index!585 x!605))))

(declare-fun b!1427585 () Bool)

(declare-fun lt!628605 () SeekEntryResult!11268)

(assert (=> b!1427585 (and (bvsge (index!47465 lt!628605) #b00000000000000000000000000000000) (bvslt (index!47465 lt!628605) (size!47518 lt!628549)))))

(declare-fun e!806320 () Bool)

(assert (=> b!1427585 (= e!806320 (= (select (arr!46967 lt!628549) (index!47465 lt!628605)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1427586 () Bool)

(declare-fun e!806323 () Bool)

(assert (=> b!1427586 (= e!806323 (bvsge (x!129101 lt!628605) #b01111111111111111111111111111110))))

(declare-fun d!153307 () Bool)

(assert (=> d!153307 e!806323))

(declare-fun c!131944 () Bool)

(assert (=> d!153307 (= c!131944 (and ((_ is Intermediate!11268) lt!628605) (undefined!12080 lt!628605)))))

(declare-fun e!806321 () SeekEntryResult!11268)

(assert (=> d!153307 (= lt!628605 e!806321)))

(declare-fun c!131946 () Bool)

(assert (=> d!153307 (= c!131946 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!628606 () (_ BitVec 64))

(assert (=> d!153307 (= lt!628606 (select (arr!46967 lt!628549) index!585))))

(assert (=> d!153307 (validMask!0 mask!2608)))

(assert (=> d!153307 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628551 lt!628549 mask!2608) lt!628605)))

(declare-fun b!1427587 () Bool)

(assert (=> b!1427587 (and (bvsge (index!47465 lt!628605) #b00000000000000000000000000000000) (bvslt (index!47465 lt!628605) (size!47518 lt!628549)))))

(declare-fun res!962683 () Bool)

(assert (=> b!1427587 (= res!962683 (= (select (arr!46967 lt!628549) (index!47465 lt!628605)) lt!628551))))

(assert (=> b!1427587 (=> res!962683 e!806320)))

(declare-fun e!806324 () Bool)

(assert (=> b!1427587 (= e!806324 e!806320)))

(declare-fun b!1427588 () Bool)

(assert (=> b!1427588 (= e!806321 (Intermediate!11268 true index!585 x!605))))

(declare-fun b!1427589 () Bool)

(assert (=> b!1427589 (and (bvsge (index!47465 lt!628605) #b00000000000000000000000000000000) (bvslt (index!47465 lt!628605) (size!47518 lt!628549)))))

(declare-fun res!962681 () Bool)

(assert (=> b!1427589 (= res!962681 (= (select (arr!46967 lt!628549) (index!47465 lt!628605)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1427589 (=> res!962681 e!806320)))

(declare-fun b!1427590 () Bool)

(assert (=> b!1427590 (= e!806322 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!628551 lt!628549 mask!2608))))

(declare-fun b!1427591 () Bool)

(assert (=> b!1427591 (= e!806321 e!806322)))

(declare-fun c!131945 () Bool)

(assert (=> b!1427591 (= c!131945 (or (= lt!628606 lt!628551) (= (bvadd lt!628606 lt!628606) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1427592 () Bool)

(assert (=> b!1427592 (= e!806323 e!806324)))

(declare-fun res!962682 () Bool)

(assert (=> b!1427592 (= res!962682 (and ((_ is Intermediate!11268) lt!628605) (not (undefined!12080 lt!628605)) (bvslt (x!129101 lt!628605) #b01111111111111111111111111111110) (bvsge (x!129101 lt!628605) #b00000000000000000000000000000000) (bvsge (x!129101 lt!628605) x!605)))))

(assert (=> b!1427592 (=> (not res!962682) (not e!806324))))

(assert (= (and d!153307 c!131946) b!1427588))

(assert (= (and d!153307 (not c!131946)) b!1427591))

(assert (= (and b!1427591 c!131945) b!1427584))

(assert (= (and b!1427591 (not c!131945)) b!1427590))

(assert (= (and d!153307 c!131944) b!1427586))

(assert (= (and d!153307 (not c!131944)) b!1427592))

(assert (= (and b!1427592 res!962682) b!1427587))

(assert (= (and b!1427587 (not res!962683)) b!1427589))

(assert (= (and b!1427589 (not res!962681)) b!1427585))

(declare-fun m!1317995 () Bool)

(assert (=> b!1427585 m!1317995))

(assert (=> b!1427589 m!1317995))

(declare-fun m!1317997 () Bool)

(assert (=> d!153307 m!1317997))

(assert (=> d!153307 m!1317885))

(assert (=> b!1427587 m!1317995))

(declare-fun m!1317999 () Bool)

(assert (=> b!1427590 m!1317999))

(assert (=> b!1427590 m!1317999))

(declare-fun m!1318001 () Bool)

(assert (=> b!1427590 m!1318001))

(assert (=> b!1427469 d!153307))

(declare-fun b!1427597 () Bool)

(declare-fun e!806329 () SeekEntryResult!11268)

(assert (=> b!1427597 (= e!806329 (Intermediate!11268 false index!585 x!605))))

(declare-fun b!1427598 () Bool)

(declare-fun lt!628610 () SeekEntryResult!11268)

(assert (=> b!1427598 (and (bvsge (index!47465 lt!628610) #b00000000000000000000000000000000) (bvslt (index!47465 lt!628610) (size!47518 a!2831)))))

(declare-fun e!806327 () Bool)

(assert (=> b!1427598 (= e!806327 (= (select (arr!46967 a!2831) (index!47465 lt!628610)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1427599 () Bool)

(declare-fun e!806330 () Bool)

(assert (=> b!1427599 (= e!806330 (bvsge (x!129101 lt!628610) #b01111111111111111111111111111110))))

(declare-fun d!153309 () Bool)

(assert (=> d!153309 e!806330))

(declare-fun c!131949 () Bool)

(assert (=> d!153309 (= c!131949 (and ((_ is Intermediate!11268) lt!628610) (undefined!12080 lt!628610)))))

(declare-fun e!806328 () SeekEntryResult!11268)

(assert (=> d!153309 (= lt!628610 e!806328)))

(declare-fun c!131951 () Bool)

(assert (=> d!153309 (= c!131951 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!628611 () (_ BitVec 64))

(assert (=> d!153309 (= lt!628611 (select (arr!46967 a!2831) index!585))))

(assert (=> d!153309 (validMask!0 mask!2608)))

(assert (=> d!153309 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46967 a!2831) j!81) a!2831 mask!2608) lt!628610)))

(declare-fun b!1427600 () Bool)

(assert (=> b!1427600 (and (bvsge (index!47465 lt!628610) #b00000000000000000000000000000000) (bvslt (index!47465 lt!628610) (size!47518 a!2831)))))

(declare-fun res!962686 () Bool)

(assert (=> b!1427600 (= res!962686 (= (select (arr!46967 a!2831) (index!47465 lt!628610)) (select (arr!46967 a!2831) j!81)))))

(assert (=> b!1427600 (=> res!962686 e!806327)))

(declare-fun e!806333 () Bool)

(assert (=> b!1427600 (= e!806333 e!806327)))

(declare-fun b!1427601 () Bool)

(assert (=> b!1427601 (= e!806328 (Intermediate!11268 true index!585 x!605))))

(declare-fun b!1427602 () Bool)

(assert (=> b!1427602 (and (bvsge (index!47465 lt!628610) #b00000000000000000000000000000000) (bvslt (index!47465 lt!628610) (size!47518 a!2831)))))

(declare-fun res!962684 () Bool)

(assert (=> b!1427602 (= res!962684 (= (select (arr!46967 a!2831) (index!47465 lt!628610)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1427602 (=> res!962684 e!806327)))

(declare-fun b!1427603 () Bool)

(assert (=> b!1427603 (= e!806329 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!46967 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1427604 () Bool)

(assert (=> b!1427604 (= e!806328 e!806329)))

(declare-fun c!131950 () Bool)

(assert (=> b!1427604 (= c!131950 (or (= lt!628611 (select (arr!46967 a!2831) j!81)) (= (bvadd lt!628611 lt!628611) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1427605 () Bool)

(assert (=> b!1427605 (= e!806330 e!806333)))

(declare-fun res!962685 () Bool)

(assert (=> b!1427605 (= res!962685 (and ((_ is Intermediate!11268) lt!628610) (not (undefined!12080 lt!628610)) (bvslt (x!129101 lt!628610) #b01111111111111111111111111111110) (bvsge (x!129101 lt!628610) #b00000000000000000000000000000000) (bvsge (x!129101 lt!628610) x!605)))))

(assert (=> b!1427605 (=> (not res!962685) (not e!806333))))

(assert (= (and d!153309 c!131951) b!1427601))

(assert (= (and d!153309 (not c!131951)) b!1427604))

(assert (= (and b!1427604 c!131950) b!1427597))

(assert (= (and b!1427604 (not c!131950)) b!1427603))

(assert (= (and d!153309 c!131949) b!1427599))

(assert (= (and d!153309 (not c!131949)) b!1427605))

(assert (= (and b!1427605 res!962685) b!1427600))

(assert (= (and b!1427600 (not res!962686)) b!1427602))

(assert (= (and b!1427602 (not res!962684)) b!1427598))

(declare-fun m!1318005 () Bool)

(assert (=> b!1427598 m!1318005))

(assert (=> b!1427602 m!1318005))

(assert (=> d!153309 m!1317897))

(assert (=> d!153309 m!1317885))

(assert (=> b!1427600 m!1318005))

(assert (=> b!1427603 m!1317999))

(assert (=> b!1427603 m!1317999))

(assert (=> b!1427603 m!1317889))

(declare-fun m!1318007 () Bool)

(assert (=> b!1427603 m!1318007))

(assert (=> b!1427458 d!153309))

(declare-fun b!1427612 () Bool)

(declare-fun e!806338 () SeekEntryResult!11268)

(assert (=> b!1427612 (= e!806338 (Intermediate!11268 false (toIndex!0 (select (arr!46967 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1427613 () Bool)

(declare-fun lt!628612 () SeekEntryResult!11268)

(assert (=> b!1427613 (and (bvsge (index!47465 lt!628612) #b00000000000000000000000000000000) (bvslt (index!47465 lt!628612) (size!47518 a!2831)))))

(declare-fun e!806336 () Bool)

(assert (=> b!1427613 (= e!806336 (= (select (arr!46967 a!2831) (index!47465 lt!628612)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1427614 () Bool)

(declare-fun e!806339 () Bool)

(assert (=> b!1427614 (= e!806339 (bvsge (x!129101 lt!628612) #b01111111111111111111111111111110))))

(declare-fun d!153313 () Bool)

(assert (=> d!153313 e!806339))

(declare-fun c!131952 () Bool)

(assert (=> d!153313 (= c!131952 (and ((_ is Intermediate!11268) lt!628612) (undefined!12080 lt!628612)))))

(declare-fun e!806337 () SeekEntryResult!11268)

(assert (=> d!153313 (= lt!628612 e!806337)))

(declare-fun c!131954 () Bool)

(assert (=> d!153313 (= c!131954 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!628613 () (_ BitVec 64))

(assert (=> d!153313 (= lt!628613 (select (arr!46967 a!2831) (toIndex!0 (select (arr!46967 a!2831) j!81) mask!2608)))))

(assert (=> d!153313 (validMask!0 mask!2608)))

(assert (=> d!153313 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46967 a!2831) j!81) mask!2608) (select (arr!46967 a!2831) j!81) a!2831 mask!2608) lt!628612)))

(declare-fun b!1427615 () Bool)

(assert (=> b!1427615 (and (bvsge (index!47465 lt!628612) #b00000000000000000000000000000000) (bvslt (index!47465 lt!628612) (size!47518 a!2831)))))

(declare-fun res!962695 () Bool)

(assert (=> b!1427615 (= res!962695 (= (select (arr!46967 a!2831) (index!47465 lt!628612)) (select (arr!46967 a!2831) j!81)))))

(assert (=> b!1427615 (=> res!962695 e!806336)))

(declare-fun e!806340 () Bool)

(assert (=> b!1427615 (= e!806340 e!806336)))

(declare-fun b!1427616 () Bool)

(assert (=> b!1427616 (= e!806337 (Intermediate!11268 true (toIndex!0 (select (arr!46967 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1427617 () Bool)

(assert (=> b!1427617 (and (bvsge (index!47465 lt!628612) #b00000000000000000000000000000000) (bvslt (index!47465 lt!628612) (size!47518 a!2831)))))

(declare-fun res!962693 () Bool)

(assert (=> b!1427617 (= res!962693 (= (select (arr!46967 a!2831) (index!47465 lt!628612)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1427617 (=> res!962693 e!806336)))

(declare-fun b!1427618 () Bool)

(assert (=> b!1427618 (= e!806338 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46967 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!46967 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1427619 () Bool)

(assert (=> b!1427619 (= e!806337 e!806338)))

(declare-fun c!131953 () Bool)

(assert (=> b!1427619 (= c!131953 (or (= lt!628613 (select (arr!46967 a!2831) j!81)) (= (bvadd lt!628613 lt!628613) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1427620 () Bool)

(assert (=> b!1427620 (= e!806339 e!806340)))

(declare-fun res!962694 () Bool)

(assert (=> b!1427620 (= res!962694 (and ((_ is Intermediate!11268) lt!628612) (not (undefined!12080 lt!628612)) (bvslt (x!129101 lt!628612) #b01111111111111111111111111111110) (bvsge (x!129101 lt!628612) #b00000000000000000000000000000000) (bvsge (x!129101 lt!628612) #b00000000000000000000000000000000)))))

(assert (=> b!1427620 (=> (not res!962694) (not e!806340))))

(assert (= (and d!153313 c!131954) b!1427616))

(assert (= (and d!153313 (not c!131954)) b!1427619))

(assert (= (and b!1427619 c!131953) b!1427612))

(assert (= (and b!1427619 (not c!131953)) b!1427618))

(assert (= (and d!153313 c!131952) b!1427614))

(assert (= (and d!153313 (not c!131952)) b!1427620))

(assert (= (and b!1427620 res!962694) b!1427615))

(assert (= (and b!1427615 (not res!962695)) b!1427617))

(assert (= (and b!1427617 (not res!962693)) b!1427613))

(declare-fun m!1318009 () Bool)

(assert (=> b!1427613 m!1318009))

(assert (=> b!1427617 m!1318009))

(assert (=> d!153313 m!1317903))

(declare-fun m!1318011 () Bool)

(assert (=> d!153313 m!1318011))

(assert (=> d!153313 m!1317885))

(assert (=> b!1427615 m!1318009))

(assert (=> b!1427618 m!1317903))

(declare-fun m!1318013 () Bool)

(assert (=> b!1427618 m!1318013))

(assert (=> b!1427618 m!1318013))

(assert (=> b!1427618 m!1317889))

(declare-fun m!1318015 () Bool)

(assert (=> b!1427618 m!1318015))

(assert (=> b!1427468 d!153313))

(declare-fun d!153315 () Bool)

(declare-fun lt!628615 () (_ BitVec 32))

(declare-fun lt!628614 () (_ BitVec 32))

(assert (=> d!153315 (= lt!628615 (bvmul (bvxor lt!628614 (bvlshr lt!628614 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153315 (= lt!628614 ((_ extract 31 0) (bvand (bvxor (select (arr!46967 a!2831) j!81) (bvlshr (select (arr!46967 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153315 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!962678 (let ((h!34963 ((_ extract 31 0) (bvand (bvxor (select (arr!46967 a!2831) j!81) (bvlshr (select (arr!46967 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129104 (bvmul (bvxor h!34963 (bvlshr h!34963 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129104 (bvlshr x!129104 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!962678 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!962678 #b00000000000000000000000000000000))))))

(assert (=> d!153315 (= (toIndex!0 (select (arr!46967 a!2831) j!81) mask!2608) (bvand (bvxor lt!628615 (bvlshr lt!628615 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1427468 d!153315))

(declare-fun d!153317 () Bool)

(assert (=> d!153317 (= (validKeyInArray!0 (select (arr!46967 a!2831) i!982)) (and (not (= (select (arr!46967 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46967 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1427462 d!153317))

(declare-fun d!153319 () Bool)

(assert (=> d!153319 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123132 d!153319))

(declare-fun d!153329 () Bool)

(assert (=> d!153329 (= (array_inv!35912 a!2831) (bvsge (size!47518 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123132 d!153329))

(declare-fun b!1427715 () Bool)

(declare-fun e!806398 () SeekEntryResult!11268)

(declare-fun lt!628654 () SeekEntryResult!11268)

(assert (=> b!1427715 (= e!806398 (Found!11268 (index!47465 lt!628654)))))

(declare-fun b!1427716 () Bool)

(declare-fun e!806397 () SeekEntryResult!11268)

(assert (=> b!1427716 (= e!806397 Undefined!11268)))

(declare-fun d!153331 () Bool)

(declare-fun lt!628653 () SeekEntryResult!11268)

(assert (=> d!153331 (and (or ((_ is Undefined!11268) lt!628653) (not ((_ is Found!11268) lt!628653)) (and (bvsge (index!47464 lt!628653) #b00000000000000000000000000000000) (bvslt (index!47464 lt!628653) (size!47518 a!2831)))) (or ((_ is Undefined!11268) lt!628653) ((_ is Found!11268) lt!628653) (not ((_ is MissingZero!11268) lt!628653)) (and (bvsge (index!47463 lt!628653) #b00000000000000000000000000000000) (bvslt (index!47463 lt!628653) (size!47518 a!2831)))) (or ((_ is Undefined!11268) lt!628653) ((_ is Found!11268) lt!628653) ((_ is MissingZero!11268) lt!628653) (not ((_ is MissingVacant!11268) lt!628653)) (and (bvsge (index!47466 lt!628653) #b00000000000000000000000000000000) (bvslt (index!47466 lt!628653) (size!47518 a!2831)))) (or ((_ is Undefined!11268) lt!628653) (ite ((_ is Found!11268) lt!628653) (= (select (arr!46967 a!2831) (index!47464 lt!628653)) (select (arr!46967 a!2831) j!81)) (ite ((_ is MissingZero!11268) lt!628653) (= (select (arr!46967 a!2831) (index!47463 lt!628653)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!11268) lt!628653) (= (select (arr!46967 a!2831) (index!47466 lt!628653)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!153331 (= lt!628653 e!806397)))

(declare-fun c!131990 () Bool)

(assert (=> d!153331 (= c!131990 (and ((_ is Intermediate!11268) lt!628654) (undefined!12080 lt!628654)))))

(assert (=> d!153331 (= lt!628654 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46967 a!2831) j!81) mask!2608) (select (arr!46967 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153331 (validMask!0 mask!2608)))

(assert (=> d!153331 (= (seekEntryOrOpen!0 (select (arr!46967 a!2831) j!81) a!2831 mask!2608) lt!628653)))

(declare-fun b!1427717 () Bool)

(assert (=> b!1427717 (= e!806397 e!806398)))

(declare-fun lt!628652 () (_ BitVec 64))

(assert (=> b!1427717 (= lt!628652 (select (arr!46967 a!2831) (index!47465 lt!628654)))))

(declare-fun c!131991 () Bool)

(assert (=> b!1427717 (= c!131991 (= lt!628652 (select (arr!46967 a!2831) j!81)))))

(declare-fun b!1427718 () Bool)

(declare-fun c!131989 () Bool)

(assert (=> b!1427718 (= c!131989 (= lt!628652 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!806396 () SeekEntryResult!11268)

(assert (=> b!1427718 (= e!806398 e!806396)))

(declare-fun b!1427719 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97313 (_ BitVec 32)) SeekEntryResult!11268)

(assert (=> b!1427719 (= e!806396 (seekKeyOrZeroReturnVacant!0 (x!129101 lt!628654) (index!47465 lt!628654) (index!47465 lt!628654) (select (arr!46967 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1427720 () Bool)

(assert (=> b!1427720 (= e!806396 (MissingZero!11268 (index!47465 lt!628654)))))

(assert (= (and d!153331 c!131990) b!1427716))

(assert (= (and d!153331 (not c!131990)) b!1427717))

(assert (= (and b!1427717 c!131991) b!1427715))

(assert (= (and b!1427717 (not c!131991)) b!1427718))

(assert (= (and b!1427718 c!131989) b!1427720))

(assert (= (and b!1427718 (not c!131989)) b!1427719))

(assert (=> d!153331 m!1317889))

(assert (=> d!153331 m!1317903))

(declare-fun m!1318067 () Bool)

(assert (=> d!153331 m!1318067))

(declare-fun m!1318069 () Bool)

(assert (=> d!153331 m!1318069))

(assert (=> d!153331 m!1317885))

(assert (=> d!153331 m!1317903))

(assert (=> d!153331 m!1317889))

(assert (=> d!153331 m!1317905))

(declare-fun m!1318071 () Bool)

(assert (=> d!153331 m!1318071))

(declare-fun m!1318073 () Bool)

(assert (=> b!1427717 m!1318073))

(assert (=> b!1427719 m!1317889))

(declare-fun m!1318075 () Bool)

(assert (=> b!1427719 m!1318075))

(assert (=> b!1427467 d!153331))

(declare-fun d!153345 () Bool)

(assert (=> d!153345 (= (validKeyInArray!0 (select (arr!46967 a!2831) j!81)) (and (not (= (select (arr!46967 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46967 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1427461 d!153345))

(declare-fun bm!67373 () Bool)

(declare-fun call!67376 () Bool)

(assert (=> bm!67373 (= call!67376 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun d!153347 () Bool)

(declare-fun res!962724 () Bool)

(declare-fun e!806399 () Bool)

(assert (=> d!153347 (=> res!962724 e!806399)))

(assert (=> d!153347 (= res!962724 (bvsge #b00000000000000000000000000000000 (size!47518 a!2831)))))

(assert (=> d!153347 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!806399)))

(declare-fun b!1427721 () Bool)

(declare-fun e!806400 () Bool)

(assert (=> b!1427721 (= e!806400 call!67376)))

(declare-fun b!1427722 () Bool)

(declare-fun e!806401 () Bool)

(assert (=> b!1427722 (= e!806399 e!806401)))

(declare-fun c!131992 () Bool)

(assert (=> b!1427722 (= c!131992 (validKeyInArray!0 (select (arr!46967 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1427723 () Bool)

(assert (=> b!1427723 (= e!806401 call!67376)))

(declare-fun b!1427724 () Bool)

(assert (=> b!1427724 (= e!806401 e!806400)))

(declare-fun lt!628656 () (_ BitVec 64))

(assert (=> b!1427724 (= lt!628656 (select (arr!46967 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!628657 () Unit!48230)

(assert (=> b!1427724 (= lt!628657 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628656 #b00000000000000000000000000000000))))

(assert (=> b!1427724 (arrayContainsKey!0 a!2831 lt!628656 #b00000000000000000000000000000000)))

(declare-fun lt!628655 () Unit!48230)

(assert (=> b!1427724 (= lt!628655 lt!628657)))

(declare-fun res!962723 () Bool)

(assert (=> b!1427724 (= res!962723 (= (seekEntryOrOpen!0 (select (arr!46967 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11268 #b00000000000000000000000000000000)))))

(assert (=> b!1427724 (=> (not res!962723) (not e!806400))))

(assert (= (and d!153347 (not res!962724)) b!1427722))

(assert (= (and b!1427722 c!131992) b!1427724))

(assert (= (and b!1427722 (not c!131992)) b!1427723))

(assert (= (and b!1427724 res!962723) b!1427721))

(assert (= (or b!1427721 b!1427723) bm!67373))

(declare-fun m!1318077 () Bool)

(assert (=> bm!67373 m!1318077))

(assert (=> b!1427722 m!1317965))

(assert (=> b!1427722 m!1317965))

(assert (=> b!1427722 m!1317969))

(assert (=> b!1427724 m!1317965))

(declare-fun m!1318079 () Bool)

(assert (=> b!1427724 m!1318079))

(declare-fun m!1318081 () Bool)

(assert (=> b!1427724 m!1318081))

(assert (=> b!1427724 m!1317965))

(declare-fun m!1318083 () Bool)

(assert (=> b!1427724 m!1318083))

(assert (=> b!1427466 d!153347))

(check-sat (not d!153313) (not b!1427534) (not b!1427523) (not b!1427522) (not b!1427719) (not bm!67365) (not d!153331) (not bm!67362) (not d!153295) (not b!1427569) (not b!1427603) (not b!1427724) (not b!1427536) (not b!1427520) (not b!1427722) (not d!153307) (not b!1427618) (not d!153297) (not d!153309) (not b!1427590) (not bm!67373))
(check-sat)
