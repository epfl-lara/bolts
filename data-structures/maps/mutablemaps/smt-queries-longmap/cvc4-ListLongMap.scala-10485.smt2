; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123332 () Bool)

(assert start!123332)

(declare-fun res!964611 () Bool)

(declare-fun e!807322 () Bool)

(assert (=> start!123332 (=> (not res!964611) (not e!807322))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123332 (= res!964611 (validMask!0 mask!2608))))

(assert (=> start!123332 e!807322))

(assert (=> start!123332 true))

(declare-datatypes ((array!97411 0))(
  ( (array!97412 (arr!47013 (Array (_ BitVec 32) (_ BitVec 64))) (size!47564 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97411)

(declare-fun array_inv!35958 (array!97411) Bool)

(assert (=> start!123332 (array_inv!35958 a!2831)))

(declare-fun b!1429870 () Bool)

(declare-fun e!807321 () Bool)

(declare-fun e!807320 () Bool)

(assert (=> b!1429870 (= e!807321 e!807320)))

(declare-fun res!964613 () Bool)

(assert (=> b!1429870 (=> (not res!964613) (not e!807320))))

(declare-fun lt!629502 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11314 0))(
  ( (MissingZero!11314 (index!47647 (_ BitVec 32))) (Found!11314 (index!47648 (_ BitVec 32))) (Intermediate!11314 (undefined!12126 Bool) (index!47649 (_ BitVec 32)) (x!129279 (_ BitVec 32))) (Undefined!11314) (MissingVacant!11314 (index!47650 (_ BitVec 32))) )
))
(declare-fun lt!629503 () SeekEntryResult!11314)

(declare-fun lt!629506 () array!97411)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97411 (_ BitVec 32)) SeekEntryResult!11314)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429870 (= res!964613 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629502 mask!2608) lt!629502 lt!629506 mask!2608) lt!629503))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429870 (= lt!629503 (Intermediate!11314 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1429870 (= lt!629502 (select (store (arr!47013 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429870 (= lt!629506 (array!97412 (store (arr!47013 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47564 a!2831)))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun b!1429871 () Bool)

(assert (=> b!1429871 (= e!807320 (not (or (= (select (arr!47013 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47013 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47013 a!2831) index!585) (select (arr!47013 a!2831) j!81)) (not (= (select (store (arr!47013 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!585 intermediateAfterIndex!13))))))

(declare-fun e!807323 () Bool)

(assert (=> b!1429871 e!807323))

(declare-fun res!964616 () Bool)

(assert (=> b!1429871 (=> (not res!964616) (not e!807323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97411 (_ BitVec 32)) Bool)

(assert (=> b!1429871 (= res!964616 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48322 0))(
  ( (Unit!48323) )
))
(declare-fun lt!629504 () Unit!48322)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97411 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48322)

(assert (=> b!1429871 (= lt!629504 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429872 () Bool)

(declare-fun res!964620 () Bool)

(assert (=> b!1429872 (=> (not res!964620) (not e!807322))))

(assert (=> b!1429872 (= res!964620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429873 () Bool)

(declare-fun res!964612 () Bool)

(assert (=> b!1429873 (=> (not res!964612) (not e!807322))))

(declare-datatypes ((List!33703 0))(
  ( (Nil!33700) (Cons!33699 (h!35013 (_ BitVec 64)) (t!48404 List!33703)) )
))
(declare-fun arrayNoDuplicates!0 (array!97411 (_ BitVec 32) List!33703) Bool)

(assert (=> b!1429873 (= res!964612 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33700))))

(declare-fun b!1429874 () Bool)

(assert (=> b!1429874 (= e!807322 e!807321)))

(declare-fun res!964610 () Bool)

(assert (=> b!1429874 (=> (not res!964610) (not e!807321))))

(declare-fun lt!629505 () SeekEntryResult!11314)

(assert (=> b!1429874 (= res!964610 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47013 a!2831) j!81) mask!2608) (select (arr!47013 a!2831) j!81) a!2831 mask!2608) lt!629505))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1429874 (= lt!629505 (Intermediate!11314 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429875 () Bool)

(declare-fun res!964608 () Bool)

(assert (=> b!1429875 (=> (not res!964608) (not e!807320))))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1429875 (= res!964608 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629502 lt!629506 mask!2608) lt!629503))))

(declare-fun b!1429876 () Bool)

(declare-fun res!964617 () Bool)

(assert (=> b!1429876 (=> (not res!964617) (not e!807320))))

(assert (=> b!1429876 (= res!964617 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47013 a!2831) j!81) a!2831 mask!2608) lt!629505))))

(declare-fun b!1429877 () Bool)

(declare-fun res!964615 () Bool)

(assert (=> b!1429877 (=> (not res!964615) (not e!807322))))

(assert (=> b!1429877 (= res!964615 (and (= (size!47564 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47564 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47564 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429878 () Bool)

(declare-fun res!964609 () Bool)

(assert (=> b!1429878 (=> (not res!964609) (not e!807322))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429878 (= res!964609 (validKeyInArray!0 (select (arr!47013 a!2831) i!982)))))

(declare-fun b!1429879 () Bool)

(declare-fun res!964618 () Bool)

(assert (=> b!1429879 (=> (not res!964618) (not e!807322))))

(assert (=> b!1429879 (= res!964618 (validKeyInArray!0 (select (arr!47013 a!2831) j!81)))))

(declare-fun b!1429880 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97411 (_ BitVec 32)) SeekEntryResult!11314)

(assert (=> b!1429880 (= e!807323 (= (seekEntryOrOpen!0 (select (arr!47013 a!2831) j!81) a!2831 mask!2608) (Found!11314 j!81)))))

(declare-fun b!1429881 () Bool)

(declare-fun res!964619 () Bool)

(assert (=> b!1429881 (=> (not res!964619) (not e!807322))))

(assert (=> b!1429881 (= res!964619 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47564 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47564 a!2831))))))

(declare-fun b!1429882 () Bool)

(declare-fun res!964614 () Bool)

(assert (=> b!1429882 (=> (not res!964614) (not e!807320))))

(assert (=> b!1429882 (= res!964614 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!123332 res!964611) b!1429877))

(assert (= (and b!1429877 res!964615) b!1429878))

(assert (= (and b!1429878 res!964609) b!1429879))

(assert (= (and b!1429879 res!964618) b!1429872))

(assert (= (and b!1429872 res!964620) b!1429873))

(assert (= (and b!1429873 res!964612) b!1429881))

(assert (= (and b!1429881 res!964619) b!1429874))

(assert (= (and b!1429874 res!964610) b!1429870))

(assert (= (and b!1429870 res!964613) b!1429876))

(assert (= (and b!1429876 res!964617) b!1429875))

(assert (= (and b!1429875 res!964608) b!1429882))

(assert (= (and b!1429882 res!964614) b!1429871))

(assert (= (and b!1429871 res!964616) b!1429880))

(declare-fun m!1320023 () Bool)

(assert (=> b!1429872 m!1320023))

(declare-fun m!1320025 () Bool)

(assert (=> b!1429878 m!1320025))

(assert (=> b!1429878 m!1320025))

(declare-fun m!1320027 () Bool)

(assert (=> b!1429878 m!1320027))

(declare-fun m!1320029 () Bool)

(assert (=> b!1429871 m!1320029))

(declare-fun m!1320031 () Bool)

(assert (=> b!1429871 m!1320031))

(declare-fun m!1320033 () Bool)

(assert (=> b!1429871 m!1320033))

(declare-fun m!1320035 () Bool)

(assert (=> b!1429871 m!1320035))

(declare-fun m!1320037 () Bool)

(assert (=> b!1429871 m!1320037))

(declare-fun m!1320039 () Bool)

(assert (=> b!1429871 m!1320039))

(declare-fun m!1320041 () Bool)

(assert (=> start!123332 m!1320041))

(declare-fun m!1320043 () Bool)

(assert (=> start!123332 m!1320043))

(declare-fun m!1320045 () Bool)

(assert (=> b!1429875 m!1320045))

(declare-fun m!1320047 () Bool)

(assert (=> b!1429873 m!1320047))

(declare-fun m!1320049 () Bool)

(assert (=> b!1429870 m!1320049))

(assert (=> b!1429870 m!1320049))

(declare-fun m!1320051 () Bool)

(assert (=> b!1429870 m!1320051))

(assert (=> b!1429870 m!1320029))

(declare-fun m!1320053 () Bool)

(assert (=> b!1429870 m!1320053))

(assert (=> b!1429876 m!1320037))

(assert (=> b!1429876 m!1320037))

(declare-fun m!1320055 () Bool)

(assert (=> b!1429876 m!1320055))

(assert (=> b!1429874 m!1320037))

(assert (=> b!1429874 m!1320037))

(declare-fun m!1320057 () Bool)

(assert (=> b!1429874 m!1320057))

(assert (=> b!1429874 m!1320057))

(assert (=> b!1429874 m!1320037))

(declare-fun m!1320059 () Bool)

(assert (=> b!1429874 m!1320059))

(assert (=> b!1429879 m!1320037))

(assert (=> b!1429879 m!1320037))

(declare-fun m!1320061 () Bool)

(assert (=> b!1429879 m!1320061))

(assert (=> b!1429880 m!1320037))

(assert (=> b!1429880 m!1320037))

(declare-fun m!1320063 () Bool)

(assert (=> b!1429880 m!1320063))

(push 1)

(assert (not start!123332))

(assert (not b!1429875))

(assert (not b!1429872))

(assert (not b!1429876))

(assert (not b!1429871))

(assert (not b!1429873))

(assert (not b!1429874))

(assert (not b!1429870))

(assert (not b!1429880))

(assert (not b!1429878))

(assert (not b!1429879))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!153505 () Bool)

(assert (=> d!153505 (= (validKeyInArray!0 (select (arr!47013 a!2831) i!982)) (and (not (= (select (arr!47013 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47013 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1429878 d!153505))

(declare-fun d!153507 () Bool)

(declare-fun res!964638 () Bool)

(declare-fun e!807358 () Bool)

(assert (=> d!153507 (=> res!964638 e!807358)))

(assert (=> d!153507 (= res!964638 (bvsge #b00000000000000000000000000000000 (size!47564 a!2831)))))

(assert (=> d!153507 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33700) e!807358)))

(declare-fun b!1429944 () Bool)

(declare-fun e!807361 () Bool)

(assert (=> b!1429944 (= e!807358 e!807361)))

(declare-fun res!964640 () Bool)

(assert (=> b!1429944 (=> (not res!964640) (not e!807361))))

(declare-fun e!807362 () Bool)

(assert (=> b!1429944 (= res!964640 (not e!807362))))

(declare-fun res!964639 () Bool)

(assert (=> b!1429944 (=> (not res!964639) (not e!807362))))

(assert (=> b!1429944 (= res!964639 (validKeyInArray!0 (select (arr!47013 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1429945 () Bool)

(declare-fun e!807360 () Bool)

(declare-fun call!67407 () Bool)

(assert (=> b!1429945 (= e!807360 call!67407)))

(declare-fun b!1429946 () Bool)

(assert (=> b!1429946 (= e!807361 e!807360)))

(declare-fun c!132147 () Bool)

(assert (=> b!1429946 (= c!132147 (validKeyInArray!0 (select (arr!47013 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1429947 () Bool)

(assert (=> b!1429947 (= e!807360 call!67407)))

(declare-fun bm!67404 () Bool)

(assert (=> bm!67404 (= call!67407 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132147 (Cons!33699 (select (arr!47013 a!2831) #b00000000000000000000000000000000) Nil!33700) Nil!33700)))))

(declare-fun b!1429948 () Bool)

(declare-fun contains!9869 (List!33703 (_ BitVec 64)) Bool)

(assert (=> b!1429948 (= e!807362 (contains!9869 Nil!33700 (select (arr!47013 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!153507 (not res!964638)) b!1429944))

(assert (= (and b!1429944 res!964639) b!1429948))

(assert (= (and b!1429944 res!964640) b!1429946))

(assert (= (and b!1429946 c!132147) b!1429947))

(assert (= (and b!1429946 (not c!132147)) b!1429945))

(assert (= (or b!1429947 b!1429945) bm!67404))

(declare-fun m!1320083 () Bool)

(assert (=> b!1429944 m!1320083))

(assert (=> b!1429944 m!1320083))

(declare-fun m!1320085 () Bool)

(assert (=> b!1429944 m!1320085))

(assert (=> b!1429946 m!1320083))

(assert (=> b!1429946 m!1320083))

(assert (=> b!1429946 m!1320085))

(assert (=> bm!67404 m!1320083))

(declare-fun m!1320087 () Bool)

(assert (=> bm!67404 m!1320087))

(assert (=> b!1429948 m!1320083))

(assert (=> b!1429948 m!1320083))

(declare-fun m!1320089 () Bool)

(assert (=> b!1429948 m!1320089))

(assert (=> b!1429873 d!153507))

(declare-fun d!153513 () Bool)

(assert (=> d!153513 (= (validKeyInArray!0 (select (arr!47013 a!2831) j!81)) (and (not (= (select (arr!47013 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47013 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1429879 d!153513))

(declare-fun b!1429987 () Bool)

(declare-fun e!807394 () Bool)

(declare-fun call!67416 () Bool)

(assert (=> b!1429987 (= e!807394 call!67416)))

(declare-fun b!1429988 () Bool)

(declare-fun e!807393 () Bool)

(assert (=> b!1429988 (= e!807394 e!807393)))

(declare-fun lt!629539 () (_ BitVec 64))

(assert (=> b!1429988 (= lt!629539 (select (arr!47013 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!629541 () Unit!48322)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97411 (_ BitVec 64) (_ BitVec 32)) Unit!48322)

(assert (=> b!1429988 (= lt!629541 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629539 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97411 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1429988 (arrayContainsKey!0 a!2831 lt!629539 #b00000000000000000000000000000000)))

(declare-fun lt!629540 () Unit!48322)

(assert (=> b!1429988 (= lt!629540 lt!629541)))

(declare-fun res!964662 () Bool)

(assert (=> b!1429988 (= res!964662 (= (seekEntryOrOpen!0 (select (arr!47013 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11314 #b00000000000000000000000000000000)))))

(assert (=> b!1429988 (=> (not res!964662) (not e!807393))))

(declare-fun b!1429989 () Bool)

(assert (=> b!1429989 (= e!807393 call!67416)))

(declare-fun bm!67413 () Bool)

(assert (=> bm!67413 (= call!67416 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1429990 () Bool)

(declare-fun e!807392 () Bool)

(assert (=> b!1429990 (= e!807392 e!807394)))

(declare-fun c!132158 () Bool)

(assert (=> b!1429990 (= c!132158 (validKeyInArray!0 (select (arr!47013 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!153515 () Bool)

(declare-fun res!964663 () Bool)

(assert (=> d!153515 (=> res!964663 e!807392)))

(assert (=> d!153515 (= res!964663 (bvsge #b00000000000000000000000000000000 (size!47564 a!2831)))))

(assert (=> d!153515 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!807392)))

(assert (= (and d!153515 (not res!964663)) b!1429990))

(assert (= (and b!1429990 c!132158) b!1429988))

(assert (= (and b!1429990 (not c!132158)) b!1429987))

(assert (= (and b!1429988 res!964662) b!1429989))

(assert (= (or b!1429989 b!1429987) bm!67413))

(assert (=> b!1429988 m!1320083))

(declare-fun m!1320119 () Bool)

(assert (=> b!1429988 m!1320119))

(declare-fun m!1320121 () Bool)

(assert (=> b!1429988 m!1320121))

(assert (=> b!1429988 m!1320083))

(declare-fun m!1320123 () Bool)

(assert (=> b!1429988 m!1320123))

(declare-fun m!1320125 () Bool)

(assert (=> bm!67413 m!1320125))

(assert (=> b!1429990 m!1320083))

(assert (=> b!1429990 m!1320083))

(assert (=> b!1429990 m!1320085))

(assert (=> b!1429872 d!153515))

(declare-fun d!153525 () Bool)

(assert (=> d!153525 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123332 d!153525))

(declare-fun d!153531 () Bool)

(assert (=> d!153531 (= (array_inv!35958 a!2831) (bvsge (size!47564 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123332 d!153531))

(declare-fun b!1430089 () Bool)

(declare-fun lt!629583 () SeekEntryResult!11314)

(assert (=> b!1430089 (and (bvsge (index!47649 lt!629583) #b00000000000000000000000000000000) (bvslt (index!47649 lt!629583) (size!47564 lt!629506)))))

(declare-fun e!807460 () Bool)

(assert (=> b!1430089 (= e!807460 (= (select (arr!47013 lt!629506) (index!47649 lt!629583)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430090 () Bool)

(declare-fun e!807457 () SeekEntryResult!11314)

(declare-fun e!807461 () SeekEntryResult!11314)

(assert (=> b!1430090 (= e!807457 e!807461)))

(declare-fun c!132188 () Bool)

(declare-fun lt!629584 () (_ BitVec 64))

(assert (=> b!1430090 (= c!132188 (or (= lt!629584 lt!629502) (= (bvadd lt!629584 lt!629584) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430091 () Bool)

(assert (=> b!1430091 (and (bvsge (index!47649 lt!629583) #b00000000000000000000000000000000) (bvslt (index!47649 lt!629583) (size!47564 lt!629506)))))

(declare-fun res!964706 () Bool)

(assert (=> b!1430091 (= res!964706 (= (select (arr!47013 lt!629506) (index!47649 lt!629583)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430091 (=> res!964706 e!807460)))

(declare-fun d!153533 () Bool)

(declare-fun e!807459 () Bool)

(assert (=> d!153533 e!807459))

(declare-fun c!132190 () Bool)

(assert (=> d!153533 (= c!132190 (and (is-Intermediate!11314 lt!629583) (undefined!12126 lt!629583)))))

(assert (=> d!153533 (= lt!629583 e!807457)))

(declare-fun c!132189 () Bool)

(assert (=> d!153533 (= c!132189 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153533 (= lt!629584 (select (arr!47013 lt!629506) (toIndex!0 lt!629502 mask!2608)))))

(assert (=> d!153533 (validMask!0 mask!2608)))

(assert (=> d!153533 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629502 mask!2608) lt!629502 lt!629506 mask!2608) lt!629583)))

(declare-fun b!1430092 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1430092 (= e!807461 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!629502 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!629502 lt!629506 mask!2608))))

(declare-fun b!1430093 () Bool)

(assert (=> b!1430093 (and (bvsge (index!47649 lt!629583) #b00000000000000000000000000000000) (bvslt (index!47649 lt!629583) (size!47564 lt!629506)))))

(declare-fun res!964704 () Bool)

(assert (=> b!1430093 (= res!964704 (= (select (arr!47013 lt!629506) (index!47649 lt!629583)) lt!629502))))

(assert (=> b!1430093 (=> res!964704 e!807460)))

(declare-fun e!807458 () Bool)

(assert (=> b!1430093 (= e!807458 e!807460)))

(declare-fun b!1430094 () Bool)

(assert (=> b!1430094 (= e!807457 (Intermediate!11314 true (toIndex!0 lt!629502 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1430095 () Bool)

(assert (=> b!1430095 (= e!807459 (bvsge (x!129279 lt!629583) #b01111111111111111111111111111110))))

(declare-fun b!1430096 () Bool)

(assert (=> b!1430096 (= e!807459 e!807458)))

(declare-fun res!964705 () Bool)

(assert (=> b!1430096 (= res!964705 (and (is-Intermediate!11314 lt!629583) (not (undefined!12126 lt!629583)) (bvslt (x!129279 lt!629583) #b01111111111111111111111111111110) (bvsge (x!129279 lt!629583) #b00000000000000000000000000000000) (bvsge (x!129279 lt!629583) #b00000000000000000000000000000000)))))

(assert (=> b!1430096 (=> (not res!964705) (not e!807458))))

(declare-fun b!1430097 () Bool)

(assert (=> b!1430097 (= e!807461 (Intermediate!11314 false (toIndex!0 lt!629502 mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!153533 c!132189) b!1430094))

(assert (= (and d!153533 (not c!132189)) b!1430090))

(assert (= (and b!1430090 c!132188) b!1430097))

(assert (= (and b!1430090 (not c!132188)) b!1430092))

(assert (= (and d!153533 c!132190) b!1430095))

(assert (= (and d!153533 (not c!132190)) b!1430096))

(assert (= (and b!1430096 res!964705) b!1430093))

(assert (= (and b!1430093 (not res!964704)) b!1430091))

(assert (= (and b!1430091 (not res!964706)) b!1430089))

(declare-fun m!1320175 () Bool)

(assert (=> b!1430093 m!1320175))

(assert (=> d!153533 m!1320049))

(declare-fun m!1320177 () Bool)

(assert (=> d!153533 m!1320177))

(assert (=> d!153533 m!1320041))

(assert (=> b!1430092 m!1320049))

(declare-fun m!1320179 () Bool)

(assert (=> b!1430092 m!1320179))

(assert (=> b!1430092 m!1320179))

(declare-fun m!1320181 () Bool)

(assert (=> b!1430092 m!1320181))

(assert (=> b!1430089 m!1320175))

(assert (=> b!1430091 m!1320175))

(assert (=> b!1429870 d!153533))

(declare-fun d!153559 () Bool)

(declare-fun lt!629592 () (_ BitVec 32))

(declare-fun lt!629591 () (_ BitVec 32))

(assert (=> d!153559 (= lt!629592 (bvmul (bvxor lt!629591 (bvlshr lt!629591 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153559 (= lt!629591 ((_ extract 31 0) (bvand (bvxor lt!629502 (bvlshr lt!629502 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153559 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!964707 (let ((h!35015 ((_ extract 31 0) (bvand (bvxor lt!629502 (bvlshr lt!629502 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129284 (bvmul (bvxor h!35015 (bvlshr h!35015 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129284 (bvlshr x!129284 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!964707 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!964707 #b00000000000000000000000000000000))))))

(assert (=> d!153559 (= (toIndex!0 lt!629502 mask!2608) (bvand (bvxor lt!629592 (bvlshr lt!629592 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1429870 d!153559))

(declare-fun b!1430098 () Bool)

(declare-fun lt!629593 () SeekEntryResult!11314)

(assert (=> b!1430098 (and (bvsge (index!47649 lt!629593) #b00000000000000000000000000000000) (bvslt (index!47649 lt!629593) (size!47564 a!2831)))))

(declare-fun e!807465 () Bool)

(assert (=> b!1430098 (= e!807465 (= (select (arr!47013 a!2831) (index!47649 lt!629593)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430099 () Bool)

(declare-fun e!807462 () SeekEntryResult!11314)

(declare-fun e!807466 () SeekEntryResult!11314)

(assert (=> b!1430099 (= e!807462 e!807466)))

(declare-fun c!132191 () Bool)

(declare-fun lt!629594 () (_ BitVec 64))

(assert (=> b!1430099 (= c!132191 (or (= lt!629594 (select (arr!47013 a!2831) j!81)) (= (bvadd lt!629594 lt!629594) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430100 () Bool)

(assert (=> b!1430100 (and (bvsge (index!47649 lt!629593) #b00000000000000000000000000000000) (bvslt (index!47649 lt!629593) (size!47564 a!2831)))))

(declare-fun res!964710 () Bool)

(assert (=> b!1430100 (= res!964710 (= (select (arr!47013 a!2831) (index!47649 lt!629593)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430100 (=> res!964710 e!807465)))

(declare-fun d!153561 () Bool)

(declare-fun e!807464 () Bool)

(assert (=> d!153561 e!807464))

(declare-fun c!132193 () Bool)

(assert (=> d!153561 (= c!132193 (and (is-Intermediate!11314 lt!629593) (undefined!12126 lt!629593)))))

(assert (=> d!153561 (= lt!629593 e!807462)))

(declare-fun c!132192 () Bool)

(assert (=> d!153561 (= c!132192 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153561 (= lt!629594 (select (arr!47013 a!2831) index!585))))

(assert (=> d!153561 (validMask!0 mask!2608)))

(assert (=> d!153561 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47013 a!2831) j!81) a!2831 mask!2608) lt!629593)))

(declare-fun b!1430101 () Bool)

(assert (=> b!1430101 (= e!807466 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47013 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430102 () Bool)

(assert (=> b!1430102 (and (bvsge (index!47649 lt!629593) #b00000000000000000000000000000000) (bvslt (index!47649 lt!629593) (size!47564 a!2831)))))

(declare-fun res!964708 () Bool)

(assert (=> b!1430102 (= res!964708 (= (select (arr!47013 a!2831) (index!47649 lt!629593)) (select (arr!47013 a!2831) j!81)))))

(assert (=> b!1430102 (=> res!964708 e!807465)))

(declare-fun e!807463 () Bool)

(assert (=> b!1430102 (= e!807463 e!807465)))

(declare-fun b!1430103 () Bool)

(assert (=> b!1430103 (= e!807462 (Intermediate!11314 true index!585 x!605))))

(declare-fun b!1430104 () Bool)

(assert (=> b!1430104 (= e!807464 (bvsge (x!129279 lt!629593) #b01111111111111111111111111111110))))

(declare-fun b!1430105 () Bool)

(assert (=> b!1430105 (= e!807464 e!807463)))

(declare-fun res!964709 () Bool)

(assert (=> b!1430105 (= res!964709 (and (is-Intermediate!11314 lt!629593) (not (undefined!12126 lt!629593)) (bvslt (x!129279 lt!629593) #b01111111111111111111111111111110) (bvsge (x!129279 lt!629593) #b00000000000000000000000000000000) (bvsge (x!129279 lt!629593) x!605)))))

(assert (=> b!1430105 (=> (not res!964709) (not e!807463))))

(declare-fun b!1430106 () Bool)

(assert (=> b!1430106 (= e!807466 (Intermediate!11314 false index!585 x!605))))

(assert (= (and d!153561 c!132192) b!1430103))

(assert (= (and d!153561 (not c!132192)) b!1430099))

(assert (= (and b!1430099 c!132191) b!1430106))

(assert (= (and b!1430099 (not c!132191)) b!1430101))

(assert (= (and d!153561 c!132193) b!1430104))

(assert (= (and d!153561 (not c!132193)) b!1430105))

(assert (= (and b!1430105 res!964709) b!1430102))

(assert (= (and b!1430102 (not res!964708)) b!1430100))

(assert (= (and b!1430100 (not res!964710)) b!1430098))

(declare-fun m!1320183 () Bool)

(assert (=> b!1430102 m!1320183))

(assert (=> d!153561 m!1320033))

(assert (=> d!153561 m!1320041))

(declare-fun m!1320185 () Bool)

(assert (=> b!1430101 m!1320185))

(assert (=> b!1430101 m!1320185))

(assert (=> b!1430101 m!1320037))

(declare-fun m!1320187 () Bool)

(assert (=> b!1430101 m!1320187))

(assert (=> b!1430098 m!1320183))

(assert (=> b!1430100 m!1320183))

(assert (=> b!1429876 d!153561))

(declare-fun b!1430107 () Bool)

(declare-fun e!807469 () Bool)

(declare-fun call!67425 () Bool)

(assert (=> b!1430107 (= e!807469 call!67425)))

(declare-fun b!1430108 () Bool)

(declare-fun e!807468 () Bool)

(assert (=> b!1430108 (= e!807469 e!807468)))

(declare-fun lt!629595 () (_ BitVec 64))

(assert (=> b!1430108 (= lt!629595 (select (arr!47013 a!2831) j!81))))

(declare-fun lt!629597 () Unit!48322)

(assert (=> b!1430108 (= lt!629597 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629595 j!81))))

(assert (=> b!1430108 (arrayContainsKey!0 a!2831 lt!629595 #b00000000000000000000000000000000)))

(declare-fun lt!629596 () Unit!48322)

(assert (=> b!1430108 (= lt!629596 lt!629597)))

(declare-fun res!964711 () Bool)

(assert (=> b!1430108 (= res!964711 (= (seekEntryOrOpen!0 (select (arr!47013 a!2831) j!81) a!2831 mask!2608) (Found!11314 j!81)))))

(assert (=> b!1430108 (=> (not res!964711) (not e!807468))))

(declare-fun b!1430109 () Bool)

(assert (=> b!1430109 (= e!807468 call!67425)))

(declare-fun bm!67422 () Bool)

(assert (=> bm!67422 (= call!67425 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1430110 () Bool)

(declare-fun e!807467 () Bool)

(assert (=> b!1430110 (= e!807467 e!807469)))

(declare-fun c!132194 () Bool)

(assert (=> b!1430110 (= c!132194 (validKeyInArray!0 (select (arr!47013 a!2831) j!81)))))

(declare-fun d!153563 () Bool)

(declare-fun res!964712 () Bool)

(assert (=> d!153563 (=> res!964712 e!807467)))

(assert (=> d!153563 (= res!964712 (bvsge j!81 (size!47564 a!2831)))))

(assert (=> d!153563 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!807467)))

(assert (= (and d!153563 (not res!964712)) b!1430110))

(assert (= (and b!1430110 c!132194) b!1430108))

(assert (= (and b!1430110 (not c!132194)) b!1430107))

(assert (= (and b!1430108 res!964711) b!1430109))

(assert (= (or b!1430109 b!1430107) bm!67422))

(assert (=> b!1430108 m!1320037))

(declare-fun m!1320189 () Bool)

(assert (=> b!1430108 m!1320189))

(declare-fun m!1320191 () Bool)

(assert (=> b!1430108 m!1320191))

(assert (=> b!1430108 m!1320037))

(assert (=> b!1430108 m!1320063))

(declare-fun m!1320193 () Bool)

(assert (=> bm!67422 m!1320193))

(assert (=> b!1430110 m!1320037))

(assert (=> b!1430110 m!1320037))

(assert (=> b!1430110 m!1320061))

(assert (=> b!1429871 d!153563))

(declare-fun d!153567 () Bool)

(assert (=> d!153567 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!629602 () Unit!48322)

(declare-fun choose!38 (array!97411 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48322)

(assert (=> d!153567 (= lt!629602 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153567 (validMask!0 mask!2608)))

(assert (=> d!153567 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!629602)))

(declare-fun bs!41656 () Bool)

(assert (= bs!41656 d!153567))

(assert (=> bs!41656 m!1320035))

(declare-fun m!1320203 () Bool)

(assert (=> bs!41656 m!1320203))

(assert (=> bs!41656 m!1320041))

(assert (=> b!1429871 d!153567))

(declare-fun b!1430120 () Bool)

(declare-fun lt!629603 () SeekEntryResult!11314)

(assert (=> b!1430120 (and (bvsge (index!47649 lt!629603) #b00000000000000000000000000000000) (bvslt (index!47649 lt!629603) (size!47564 a!2831)))))

(declare-fun e!807478 () Bool)

(assert (=> b!1430120 (= e!807478 (= (select (arr!47013 a!2831) (index!47649 lt!629603)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430121 () Bool)

(declare-fun e!807475 () SeekEntryResult!11314)

(declare-fun e!807479 () SeekEntryResult!11314)

(assert (=> b!1430121 (= e!807475 e!807479)))

(declare-fun c!132198 () Bool)

(declare-fun lt!629604 () (_ BitVec 64))

(assert (=> b!1430121 (= c!132198 (or (= lt!629604 (select (arr!47013 a!2831) j!81)) (= (bvadd lt!629604 lt!629604) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430122 () Bool)

(assert (=> b!1430122 (and (bvsge (index!47649 lt!629603) #b00000000000000000000000000000000) (bvslt (index!47649 lt!629603) (size!47564 a!2831)))))

(declare-fun res!964719 () Bool)

(assert (=> b!1430122 (= res!964719 (= (select (arr!47013 a!2831) (index!47649 lt!629603)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430122 (=> res!964719 e!807478)))

(declare-fun d!153573 () Bool)

(declare-fun e!807477 () Bool)

(assert (=> d!153573 e!807477))

(declare-fun c!132200 () Bool)

(assert (=> d!153573 (= c!132200 (and (is-Intermediate!11314 lt!629603) (undefined!12126 lt!629603)))))

(assert (=> d!153573 (= lt!629603 e!807475)))

(declare-fun c!132199 () Bool)

(assert (=> d!153573 (= c!132199 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153573 (= lt!629604 (select (arr!47013 a!2831) (toIndex!0 (select (arr!47013 a!2831) j!81) mask!2608)))))

(assert (=> d!153573 (validMask!0 mask!2608)))

(assert (=> d!153573 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47013 a!2831) j!81) mask!2608) (select (arr!47013 a!2831) j!81) a!2831 mask!2608) lt!629603)))

(declare-fun b!1430123 () Bool)

(assert (=> b!1430123 (= e!807479 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47013 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47013 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430124 () Bool)

(assert (=> b!1430124 (and (bvsge (index!47649 lt!629603) #b00000000000000000000000000000000) (bvslt (index!47649 lt!629603) (size!47564 a!2831)))))

(declare-fun res!964717 () Bool)

(assert (=> b!1430124 (= res!964717 (= (select (arr!47013 a!2831) (index!47649 lt!629603)) (select (arr!47013 a!2831) j!81)))))

(assert (=> b!1430124 (=> res!964717 e!807478)))

(declare-fun e!807476 () Bool)

(assert (=> b!1430124 (= e!807476 e!807478)))

(declare-fun b!1430125 () Bool)

(assert (=> b!1430125 (= e!807475 (Intermediate!11314 true (toIndex!0 (select (arr!47013 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1430126 () Bool)

(assert (=> b!1430126 (= e!807477 (bvsge (x!129279 lt!629603) #b01111111111111111111111111111110))))

(declare-fun b!1430127 () Bool)

(assert (=> b!1430127 (= e!807477 e!807476)))

(declare-fun res!964718 () Bool)

(assert (=> b!1430127 (= res!964718 (and (is-Intermediate!11314 lt!629603) (not (undefined!12126 lt!629603)) (bvslt (x!129279 lt!629603) #b01111111111111111111111111111110) (bvsge (x!129279 lt!629603) #b00000000000000000000000000000000) (bvsge (x!129279 lt!629603) #b00000000000000000000000000000000)))))

(assert (=> b!1430127 (=> (not res!964718) (not e!807476))))

(declare-fun b!1430128 () Bool)

(assert (=> b!1430128 (= e!807479 (Intermediate!11314 false (toIndex!0 (select (arr!47013 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!153573 c!132199) b!1430125))

(assert (= (and d!153573 (not c!132199)) b!1430121))

(assert (= (and b!1430121 c!132198) b!1430128))

(assert (= (and b!1430121 (not c!132198)) b!1430123))

(assert (= (and d!153573 c!132200) b!1430126))

(assert (= (and d!153573 (not c!132200)) b!1430127))

(assert (= (and b!1430127 res!964718) b!1430124))

(assert (= (and b!1430124 (not res!964717)) b!1430122))

(assert (= (and b!1430122 (not res!964719)) b!1430120))

(declare-fun m!1320205 () Bool)

(assert (=> b!1430124 m!1320205))

(assert (=> d!153573 m!1320057))

(declare-fun m!1320207 () Bool)

(assert (=> d!153573 m!1320207))

(assert (=> d!153573 m!1320041))

(assert (=> b!1430123 m!1320057))

(declare-fun m!1320209 () Bool)

(assert (=> b!1430123 m!1320209))

(assert (=> b!1430123 m!1320209))

(assert (=> b!1430123 m!1320037))

(declare-fun m!1320211 () Bool)

(assert (=> b!1430123 m!1320211))

(assert (=> b!1430120 m!1320205))

(assert (=> b!1430122 m!1320205))

(assert (=> b!1429874 d!153573))

(declare-fun d!153575 () Bool)

(declare-fun lt!629606 () (_ BitVec 32))

(declare-fun lt!629605 () (_ BitVec 32))

(assert (=> d!153575 (= lt!629606 (bvmul (bvxor lt!629605 (bvlshr lt!629605 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153575 (= lt!629605 ((_ extract 31 0) (bvand (bvxor (select (arr!47013 a!2831) j!81) (bvlshr (select (arr!47013 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153575 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!964707 (let ((h!35015 ((_ extract 31 0) (bvand (bvxor (select (arr!47013 a!2831) j!81) (bvlshr (select (arr!47013 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129284 (bvmul (bvxor h!35015 (bvlshr h!35015 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129284 (bvlshr x!129284 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!964707 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!964707 #b00000000000000000000000000000000))))))

(assert (=> d!153575 (= (toIndex!0 (select (arr!47013 a!2831) j!81) mask!2608) (bvand (bvxor lt!629606 (bvlshr lt!629606 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1429874 d!153575))

(declare-fun b!1430141 () Bool)

(declare-fun e!807488 () SeekEntryResult!11314)

(assert (=> b!1430141 (= e!807488 Undefined!11314)))

(declare-fun b!1430142 () Bool)

(declare-fun e!807486 () SeekEntryResult!11314)

(declare-fun lt!629621 () SeekEntryResult!11314)

(assert (=> b!1430142 (= e!807486 (MissingZero!11314 (index!47649 lt!629621)))))

(declare-fun b!1430143 () Bool)

(declare-fun e!807487 () SeekEntryResult!11314)

(assert (=> b!1430143 (= e!807488 e!807487)))

(declare-fun lt!629619 () (_ BitVec 64))

(assert (=> b!1430143 (= lt!629619 (select (arr!47013 a!2831) (index!47649 lt!629621)))))

(declare-fun c!132209 () Bool)

(assert (=> b!1430143 (= c!132209 (= lt!629619 (select (arr!47013 a!2831) j!81)))))

(declare-fun b!1430144 () Bool)

(assert (=> b!1430144 (= e!807487 (Found!11314 (index!47649 lt!629621)))))

(declare-fun d!153577 () Bool)

(declare-fun lt!629620 () SeekEntryResult!11314)

(assert (=> d!153577 (and (or (is-Undefined!11314 lt!629620) (not (is-Found!11314 lt!629620)) (and (bvsge (index!47648 lt!629620) #b00000000000000000000000000000000) (bvslt (index!47648 lt!629620) (size!47564 a!2831)))) (or (is-Undefined!11314 lt!629620) (is-Found!11314 lt!629620) (not (is-MissingZero!11314 lt!629620)) (and (bvsge (index!47647 lt!629620) #b00000000000000000000000000000000) (bvslt (index!47647 lt!629620) (size!47564 a!2831)))) (or (is-Undefined!11314 lt!629620) (is-Found!11314 lt!629620) (is-MissingZero!11314 lt!629620) (not (is-MissingVacant!11314 lt!629620)) (and (bvsge (index!47650 lt!629620) #b00000000000000000000000000000000) (bvslt (index!47650 lt!629620) (size!47564 a!2831)))) (or (is-Undefined!11314 lt!629620) (ite (is-Found!11314 lt!629620) (= (select (arr!47013 a!2831) (index!47648 lt!629620)) (select (arr!47013 a!2831) j!81)) (ite (is-MissingZero!11314 lt!629620) (= (select (arr!47013 a!2831) (index!47647 lt!629620)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11314 lt!629620) (= (select (arr!47013 a!2831) (index!47650 lt!629620)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!153577 (= lt!629620 e!807488)))

(declare-fun c!132208 () Bool)

(assert (=> d!153577 (= c!132208 (and (is-Intermediate!11314 lt!629621) (undefined!12126 lt!629621)))))

