; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122996 () Bool)

(assert start!122996)

(declare-fun res!961837 () Bool)

(declare-fun e!805667 () Bool)

(assert (=> start!122996 (=> (not res!961837) (not e!805667))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122996 (= res!961837 (validMask!0 mask!2608))))

(assert (=> start!122996 e!805667))

(assert (=> start!122996 true))

(declare-datatypes ((array!97279 0))(
  ( (array!97280 (arr!46953 (Array (_ BitVec 32) (_ BitVec 64))) (size!47504 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97279)

(declare-fun array_inv!35898 (array!97279) Bool)

(assert (=> start!122996 (array_inv!35898 a!2831)))

(declare-fun b!1426295 () Bool)

(declare-fun e!805666 () Bool)

(assert (=> b!1426295 (= e!805667 e!805666)))

(declare-fun res!961843 () Bool)

(assert (=> b!1426295 (=> (not res!961843) (not e!805666))))

(declare-datatypes ((SeekEntryResult!11254 0))(
  ( (MissingZero!11254 (index!47407 (_ BitVec 32))) (Found!11254 (index!47408 (_ BitVec 32))) (Intermediate!11254 (undefined!12066 Bool) (index!47409 (_ BitVec 32)) (x!129035 (_ BitVec 32))) (Undefined!11254) (MissingVacant!11254 (index!47410 (_ BitVec 32))) )
))
(declare-fun lt!628076 () SeekEntryResult!11254)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97279 (_ BitVec 32)) SeekEntryResult!11254)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426295 (= res!961843 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46953 a!2831) j!81) mask!2608) (select (arr!46953 a!2831) j!81) a!2831 mask!2608) lt!628076))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1426295 (= lt!628076 (Intermediate!11254 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1426296 () Bool)

(declare-fun res!961839 () Bool)

(assert (=> b!1426296 (=> (not res!961839) (not e!805667))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1426296 (= res!961839 (and (= (size!47504 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47504 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47504 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1426297 () Bool)

(declare-fun res!961842 () Bool)

(assert (=> b!1426297 (=> (not res!961842) (not e!805667))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1426297 (= res!961842 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47504 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47504 a!2831))))))

(declare-fun b!1426298 () Bool)

(declare-fun res!961846 () Bool)

(declare-fun e!805664 () Bool)

(assert (=> b!1426298 (=> (not res!961846) (not e!805664))))

(assert (=> b!1426298 (= res!961846 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46953 a!2831) j!81) a!2831 mask!2608) lt!628076))))

(declare-fun b!1426299 () Bool)

(assert (=> b!1426299 (= e!805666 e!805664)))

(declare-fun res!961840 () Bool)

(assert (=> b!1426299 (=> (not res!961840) (not e!805664))))

(declare-fun lt!628074 () array!97279)

(declare-fun lt!628078 () (_ BitVec 64))

(declare-fun lt!628075 () SeekEntryResult!11254)

(assert (=> b!1426299 (= res!961840 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628078 mask!2608) lt!628078 lt!628074 mask!2608) lt!628075))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1426299 (= lt!628075 (Intermediate!11254 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1426299 (= lt!628078 (select (store (arr!46953 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1426299 (= lt!628074 (array!97280 (store (arr!46953 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47504 a!2831)))))

(declare-fun b!1426300 () Bool)

(declare-fun res!961845 () Bool)

(assert (=> b!1426300 (=> (not res!961845) (not e!805664))))

(assert (=> b!1426300 (= res!961845 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628078 lt!628074 mask!2608) lt!628075))))

(declare-fun b!1426301 () Bool)

(declare-fun res!961848 () Bool)

(assert (=> b!1426301 (=> (not res!961848) (not e!805667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97279 (_ BitVec 32)) Bool)

(assert (=> b!1426301 (= res!961848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1426302 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97279 (_ BitVec 32)) SeekEntryResult!11254)

(assert (=> b!1426302 (= e!805664 (not (= (seekEntryOrOpen!0 (select (arr!46953 a!2831) j!81) a!2831 mask!2608) (Found!11254 j!81))))))

(assert (=> b!1426302 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48202 0))(
  ( (Unit!48203) )
))
(declare-fun lt!628077 () Unit!48202)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97279 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48202)

(assert (=> b!1426302 (= lt!628077 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1426303 () Bool)

(declare-fun res!961841 () Bool)

(assert (=> b!1426303 (=> (not res!961841) (not e!805667))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1426303 (= res!961841 (validKeyInArray!0 (select (arr!46953 a!2831) j!81)))))

(declare-fun b!1426304 () Bool)

(declare-fun res!961838 () Bool)

(assert (=> b!1426304 (=> (not res!961838) (not e!805667))))

(assert (=> b!1426304 (= res!961838 (validKeyInArray!0 (select (arr!46953 a!2831) i!982)))))

(declare-fun b!1426305 () Bool)

(declare-fun res!961847 () Bool)

(assert (=> b!1426305 (=> (not res!961847) (not e!805667))))

(declare-datatypes ((List!33643 0))(
  ( (Nil!33640) (Cons!33639 (h!34941 (_ BitVec 64)) (t!48344 List!33643)) )
))
(declare-fun arrayNoDuplicates!0 (array!97279 (_ BitVec 32) List!33643) Bool)

(assert (=> b!1426305 (= res!961847 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33640))))

(declare-fun b!1426306 () Bool)

(declare-fun res!961844 () Bool)

(assert (=> b!1426306 (=> (not res!961844) (not e!805664))))

(assert (=> b!1426306 (= res!961844 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!122996 res!961837) b!1426296))

(assert (= (and b!1426296 res!961839) b!1426304))

(assert (= (and b!1426304 res!961838) b!1426303))

(assert (= (and b!1426303 res!961841) b!1426301))

(assert (= (and b!1426301 res!961848) b!1426305))

(assert (= (and b!1426305 res!961847) b!1426297))

(assert (= (and b!1426297 res!961842) b!1426295))

(assert (= (and b!1426295 res!961843) b!1426299))

(assert (= (and b!1426299 res!961840) b!1426298))

(assert (= (and b!1426298 res!961846) b!1426300))

(assert (= (and b!1426300 res!961845) b!1426306))

(assert (= (and b!1426306 res!961844) b!1426302))

(declare-fun m!1316967 () Bool)

(assert (=> b!1426301 m!1316967))

(declare-fun m!1316969 () Bool)

(assert (=> b!1426303 m!1316969))

(assert (=> b!1426303 m!1316969))

(declare-fun m!1316971 () Bool)

(assert (=> b!1426303 m!1316971))

(declare-fun m!1316973 () Bool)

(assert (=> b!1426300 m!1316973))

(assert (=> b!1426298 m!1316969))

(assert (=> b!1426298 m!1316969))

(declare-fun m!1316975 () Bool)

(assert (=> b!1426298 m!1316975))

(declare-fun m!1316977 () Bool)

(assert (=> b!1426299 m!1316977))

(assert (=> b!1426299 m!1316977))

(declare-fun m!1316979 () Bool)

(assert (=> b!1426299 m!1316979))

(declare-fun m!1316981 () Bool)

(assert (=> b!1426299 m!1316981))

(declare-fun m!1316983 () Bool)

(assert (=> b!1426299 m!1316983))

(declare-fun m!1316985 () Bool)

(assert (=> b!1426305 m!1316985))

(assert (=> b!1426295 m!1316969))

(assert (=> b!1426295 m!1316969))

(declare-fun m!1316987 () Bool)

(assert (=> b!1426295 m!1316987))

(assert (=> b!1426295 m!1316987))

(assert (=> b!1426295 m!1316969))

(declare-fun m!1316989 () Bool)

(assert (=> b!1426295 m!1316989))

(declare-fun m!1316991 () Bool)

(assert (=> start!122996 m!1316991))

(declare-fun m!1316993 () Bool)

(assert (=> start!122996 m!1316993))

(declare-fun m!1316995 () Bool)

(assert (=> b!1426304 m!1316995))

(assert (=> b!1426304 m!1316995))

(declare-fun m!1316997 () Bool)

(assert (=> b!1426304 m!1316997))

(assert (=> b!1426302 m!1316969))

(assert (=> b!1426302 m!1316969))

(declare-fun m!1316999 () Bool)

(assert (=> b!1426302 m!1316999))

(declare-fun m!1317001 () Bool)

(assert (=> b!1426302 m!1317001))

(declare-fun m!1317003 () Bool)

(assert (=> b!1426302 m!1317003))

(push 1)

(assert (not start!122996))

(assert (not b!1426302))

(assert (not b!1426303))

(assert (not b!1426304))

(assert (not b!1426305))

(assert (not b!1426300))

(assert (not b!1426298))

(assert (not b!1426299))

(assert (not b!1426301))

(assert (not b!1426295))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!805736 () SeekEntryResult!11254)

(declare-fun b!1426406 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426406 (= e!805736 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!628078 lt!628074 mask!2608))))

(declare-fun b!1426407 () Bool)

(declare-fun e!805738 () Bool)

(declare-fun lt!628108 () SeekEntryResult!11254)

(assert (=> b!1426407 (= e!805738 (bvsge (x!129035 lt!628108) #b01111111111111111111111111111110))))

(declare-fun b!1426408 () Bool)

(assert (=> b!1426408 (and (bvsge (index!47409 lt!628108) #b00000000000000000000000000000000) (bvslt (index!47409 lt!628108) (size!47504 lt!628074)))))

(declare-fun res!961895 () Bool)

(assert (=> b!1426408 (= res!961895 (= (select (arr!46953 lt!628074) (index!47409 lt!628108)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!805737 () Bool)

(assert (=> b!1426408 (=> res!961895 e!805737)))

(declare-fun b!1426410 () Bool)

(declare-fun e!805739 () SeekEntryResult!11254)

(assert (=> b!1426410 (= e!805739 e!805736)))

(declare-fun c!131747 () Bool)

(declare-fun lt!628107 () (_ BitVec 64))

(assert (=> b!1426410 (= c!131747 (or (= lt!628107 lt!628078) (= (bvadd lt!628107 lt!628107) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1426411 () Bool)

(assert (=> b!1426411 (= e!805736 (Intermediate!11254 false index!585 x!605))))

(declare-fun b!1426412 () Bool)

(assert (=> b!1426412 (and (bvsge (index!47409 lt!628108) #b00000000000000000000000000000000) (bvslt (index!47409 lt!628108) (size!47504 lt!628074)))))

(assert (=> b!1426412 (= e!805737 (= (select (arr!46953 lt!628074) (index!47409 lt!628108)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1426413 () Bool)

(declare-fun e!805735 () Bool)

(assert (=> b!1426413 (= e!805738 e!805735)))

(declare-fun res!961896 () Bool)

(assert (=> b!1426413 (= res!961896 (and (is-Intermediate!11254 lt!628108) (not (undefined!12066 lt!628108)) (bvslt (x!129035 lt!628108) #b01111111111111111111111111111110) (bvsge (x!129035 lt!628108) #b00000000000000000000000000000000) (bvsge (x!129035 lt!628108) x!605)))))

(assert (=> b!1426413 (=> (not res!961896) (not e!805735))))

(declare-fun b!1426414 () Bool)

(assert (=> b!1426414 (= e!805739 (Intermediate!11254 true index!585 x!605))))

(declare-fun d!153111 () Bool)

(assert (=> d!153111 e!805738))

(declare-fun c!131746 () Bool)

(assert (=> d!153111 (= c!131746 (and (is-Intermediate!11254 lt!628108) (undefined!12066 lt!628108)))))

(assert (=> d!153111 (= lt!628108 e!805739)))

(declare-fun c!131745 () Bool)

(assert (=> d!153111 (= c!131745 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153111 (= lt!628107 (select (arr!46953 lt!628074) index!585))))

(assert (=> d!153111 (validMask!0 mask!2608)))

(assert (=> d!153111 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628078 lt!628074 mask!2608) lt!628108)))

(declare-fun b!1426409 () Bool)

(assert (=> b!1426409 (and (bvsge (index!47409 lt!628108) #b00000000000000000000000000000000) (bvslt (index!47409 lt!628108) (size!47504 lt!628074)))))

(declare-fun res!961894 () Bool)

(assert (=> b!1426409 (= res!961894 (= (select (arr!46953 lt!628074) (index!47409 lt!628108)) lt!628078))))

(assert (=> b!1426409 (=> res!961894 e!805737)))

(assert (=> b!1426409 (= e!805735 e!805737)))

(assert (= (and d!153111 c!131745) b!1426414))

(assert (= (and d!153111 (not c!131745)) b!1426410))

(assert (= (and b!1426410 c!131747) b!1426411))

(assert (= (and b!1426410 (not c!131747)) b!1426406))

(assert (= (and d!153111 c!131746) b!1426407))

(assert (= (and d!153111 (not c!131746)) b!1426413))

(assert (= (and b!1426413 res!961896) b!1426409))

(assert (= (and b!1426409 (not res!961894)) b!1426408))

(assert (= (and b!1426408 (not res!961895)) b!1426412))

(declare-fun m!1317045 () Bool)

(assert (=> b!1426408 m!1317045))

(declare-fun m!1317047 () Bool)

(assert (=> b!1426406 m!1317047))

(assert (=> b!1426406 m!1317047))

(declare-fun m!1317049 () Bool)

(assert (=> b!1426406 m!1317049))

(declare-fun m!1317051 () Bool)

(assert (=> d!153111 m!1317051))

(assert (=> d!153111 m!1316991))

(assert (=> b!1426409 m!1317045))

(assert (=> b!1426412 m!1317045))

(assert (=> b!1426300 d!153111))

(declare-fun b!1426425 () Bool)

(declare-fun e!805749 () Bool)

(declare-fun contains!9859 (List!33643 (_ BitVec 64)) Bool)

(assert (=> b!1426425 (= e!805749 (contains!9859 Nil!33640 (select (arr!46953 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67332 () Bool)

(declare-fun call!67335 () Bool)

(declare-fun c!131750 () Bool)

(assert (=> bm!67332 (= call!67335 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131750 (Cons!33639 (select (arr!46953 a!2831) #b00000000000000000000000000000000) Nil!33640) Nil!33640)))))

(declare-fun b!1426426 () Bool)

(declare-fun e!805751 () Bool)

(declare-fun e!805750 () Bool)

(assert (=> b!1426426 (= e!805751 e!805750)))

(declare-fun res!961905 () Bool)

(assert (=> b!1426426 (=> (not res!961905) (not e!805750))))

(assert (=> b!1426426 (= res!961905 (not e!805749))))

(declare-fun res!961903 () Bool)

(assert (=> b!1426426 (=> (not res!961903) (not e!805749))))

(assert (=> b!1426426 (= res!961903 (validKeyInArray!0 (select (arr!46953 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1426427 () Bool)

(declare-fun e!805748 () Bool)

(assert (=> b!1426427 (= e!805748 call!67335)))

(declare-fun b!1426428 () Bool)

(assert (=> b!1426428 (= e!805748 call!67335)))

(declare-fun b!1426429 () Bool)

(assert (=> b!1426429 (= e!805750 e!805748)))

(assert (=> b!1426429 (= c!131750 (validKeyInArray!0 (select (arr!46953 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!153125 () Bool)

(declare-fun res!961904 () Bool)

(assert (=> d!153125 (=> res!961904 e!805751)))

(assert (=> d!153125 (= res!961904 (bvsge #b00000000000000000000000000000000 (size!47504 a!2831)))))

(assert (=> d!153125 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33640) e!805751)))

(assert (= (and d!153125 (not res!961904)) b!1426426))

(assert (= (and b!1426426 res!961903) b!1426425))

(assert (= (and b!1426426 res!961905) b!1426429))

(assert (= (and b!1426429 c!131750) b!1426428))

(assert (= (and b!1426429 (not c!131750)) b!1426427))

(assert (= (or b!1426428 b!1426427) bm!67332))

(declare-fun m!1317053 () Bool)

(assert (=> b!1426425 m!1317053))

(assert (=> b!1426425 m!1317053))

(declare-fun m!1317055 () Bool)

(assert (=> b!1426425 m!1317055))

(assert (=> bm!67332 m!1317053))

(declare-fun m!1317057 () Bool)

(assert (=> bm!67332 m!1317057))

(assert (=> b!1426426 m!1317053))

(assert (=> b!1426426 m!1317053))

(declare-fun m!1317059 () Bool)

(assert (=> b!1426426 m!1317059))

(assert (=> b!1426429 m!1317053))

(assert (=> b!1426429 m!1317053))

(assert (=> b!1426429 m!1317059))

(assert (=> b!1426305 d!153125))

(declare-fun e!805753 () SeekEntryResult!11254)

(declare-fun b!1426430 () Bool)

(assert (=> b!1426430 (= e!805753 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46953 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!46953 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1426431 () Bool)

(declare-fun e!805755 () Bool)

(declare-fun lt!628110 () SeekEntryResult!11254)

(assert (=> b!1426431 (= e!805755 (bvsge (x!129035 lt!628110) #b01111111111111111111111111111110))))

(declare-fun b!1426432 () Bool)

(assert (=> b!1426432 (and (bvsge (index!47409 lt!628110) #b00000000000000000000000000000000) (bvslt (index!47409 lt!628110) (size!47504 a!2831)))))

(declare-fun res!961907 () Bool)

(assert (=> b!1426432 (= res!961907 (= (select (arr!46953 a!2831) (index!47409 lt!628110)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!805754 () Bool)

(assert (=> b!1426432 (=> res!961907 e!805754)))

(declare-fun b!1426434 () Bool)

(declare-fun e!805756 () SeekEntryResult!11254)

(assert (=> b!1426434 (= e!805756 e!805753)))

(declare-fun lt!628109 () (_ BitVec 64))

(declare-fun c!131753 () Bool)

(assert (=> b!1426434 (= c!131753 (or (= lt!628109 (select (arr!46953 a!2831) j!81)) (= (bvadd lt!628109 lt!628109) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1426435 () Bool)

(assert (=> b!1426435 (= e!805753 (Intermediate!11254 false (toIndex!0 (select (arr!46953 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1426436 () Bool)

(assert (=> b!1426436 (and (bvsge (index!47409 lt!628110) #b00000000000000000000000000000000) (bvslt (index!47409 lt!628110) (size!47504 a!2831)))))

(assert (=> b!1426436 (= e!805754 (= (select (arr!46953 a!2831) (index!47409 lt!628110)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1426437 () Bool)

(declare-fun e!805752 () Bool)

(assert (=> b!1426437 (= e!805755 e!805752)))

(declare-fun res!961908 () Bool)

(assert (=> b!1426437 (= res!961908 (and (is-Intermediate!11254 lt!628110) (not (undefined!12066 lt!628110)) (bvslt (x!129035 lt!628110) #b01111111111111111111111111111110) (bvsge (x!129035 lt!628110) #b00000000000000000000000000000000) (bvsge (x!129035 lt!628110) #b00000000000000000000000000000000)))))

(assert (=> b!1426437 (=> (not res!961908) (not e!805752))))

(declare-fun b!1426438 () Bool)

(assert (=> b!1426438 (= e!805756 (Intermediate!11254 true (toIndex!0 (select (arr!46953 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun d!153127 () Bool)

(assert (=> d!153127 e!805755))

(declare-fun c!131752 () Bool)

(assert (=> d!153127 (= c!131752 (and (is-Intermediate!11254 lt!628110) (undefined!12066 lt!628110)))))

(assert (=> d!153127 (= lt!628110 e!805756)))

(declare-fun c!131751 () Bool)

(assert (=> d!153127 (= c!131751 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153127 (= lt!628109 (select (arr!46953 a!2831) (toIndex!0 (select (arr!46953 a!2831) j!81) mask!2608)))))

(assert (=> d!153127 (validMask!0 mask!2608)))

(assert (=> d!153127 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46953 a!2831) j!81) mask!2608) (select (arr!46953 a!2831) j!81) a!2831 mask!2608) lt!628110)))

(declare-fun b!1426433 () Bool)

(assert (=> b!1426433 (and (bvsge (index!47409 lt!628110) #b00000000000000000000000000000000) (bvslt (index!47409 lt!628110) (size!47504 a!2831)))))

(declare-fun res!961906 () Bool)

(assert (=> b!1426433 (= res!961906 (= (select (arr!46953 a!2831) (index!47409 lt!628110)) (select (arr!46953 a!2831) j!81)))))

(assert (=> b!1426433 (=> res!961906 e!805754)))

(assert (=> b!1426433 (= e!805752 e!805754)))

(assert (= (and d!153127 c!131751) b!1426438))

(assert (= (and d!153127 (not c!131751)) b!1426434))

(assert (= (and b!1426434 c!131753) b!1426435))

(assert (= (and b!1426434 (not c!131753)) b!1426430))

(assert (= (and d!153127 c!131752) b!1426431))

(assert (= (and d!153127 (not c!131752)) b!1426437))

(assert (= (and b!1426437 res!961908) b!1426433))

(assert (= (and b!1426433 (not res!961906)) b!1426432))

(assert (= (and b!1426432 (not res!961907)) b!1426436))

(declare-fun m!1317061 () Bool)

(assert (=> b!1426432 m!1317061))

(assert (=> b!1426430 m!1316987))

(declare-fun m!1317063 () Bool)

(assert (=> b!1426430 m!1317063))

(assert (=> b!1426430 m!1317063))

(assert (=> b!1426430 m!1316969))

(declare-fun m!1317065 () Bool)

(assert (=> b!1426430 m!1317065))

(assert (=> d!153127 m!1316987))

(declare-fun m!1317067 () Bool)

(assert (=> d!153127 m!1317067))

(assert (=> d!153127 m!1316991))

(assert (=> b!1426433 m!1317061))

(assert (=> b!1426436 m!1317061))

(assert (=> b!1426295 d!153127))

(declare-fun d!153129 () Bool)

(declare-fun lt!628120 () (_ BitVec 32))

(declare-fun lt!628119 () (_ BitVec 32))

(assert (=> d!153129 (= lt!628120 (bvmul (bvxor lt!628119 (bvlshr lt!628119 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153129 (= lt!628119 ((_ extract 31 0) (bvand (bvxor (select (arr!46953 a!2831) j!81) (bvlshr (select (arr!46953 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153129 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!961909 (let ((h!34942 ((_ extract 31 0) (bvand (bvxor (select (arr!46953 a!2831) j!81) (bvlshr (select (arr!46953 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129038 (bvmul (bvxor h!34942 (bvlshr h!34942 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129038 (bvlshr x!129038 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!961909 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!961909 #b00000000000000000000000000000000))))))

(assert (=> d!153129 (= (toIndex!0 (select (arr!46953 a!2831) j!81) mask!2608) (bvand (bvxor lt!628120 (bvlshr lt!628120 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1426295 d!153129))

(declare-fun d!153131 () Bool)

(assert (=> d!153131 (= (validKeyInArray!0 (select (arr!46953 a!2831) i!982)) (and (not (= (select (arr!46953 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46953 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1426304 d!153131))

(declare-fun b!1426463 () Bool)

(declare-fun e!805770 () SeekEntryResult!11254)

(assert (=> b!1426463 (= e!805770 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!628078 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!628078 lt!628074 mask!2608))))

(declare-fun b!1426464 () Bool)

(declare-fun e!805772 () Bool)

(declare-fun lt!628128 () SeekEntryResult!11254)

(assert (=> b!1426464 (= e!805772 (bvsge (x!129035 lt!628128) #b01111111111111111111111111111110))))

(declare-fun b!1426465 () Bool)

(assert (=> b!1426465 (and (bvsge (index!47409 lt!628128) #b00000000000000000000000000000000) (bvslt (index!47409 lt!628128) (size!47504 lt!628074)))))

(declare-fun res!961917 () Bool)

(assert (=> b!1426465 (= res!961917 (= (select (arr!46953 lt!628074) (index!47409 lt!628128)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!805771 () Bool)

(assert (=> b!1426465 (=> res!961917 e!805771)))

(declare-fun b!1426467 () Bool)

(declare-fun e!805773 () SeekEntryResult!11254)

(assert (=> b!1426467 (= e!805773 e!805770)))

(declare-fun c!131764 () Bool)

(declare-fun lt!628127 () (_ BitVec 64))

(assert (=> b!1426467 (= c!131764 (or (= lt!628127 lt!628078) (= (bvadd lt!628127 lt!628127) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1426468 () Bool)

(assert (=> b!1426468 (= e!805770 (Intermediate!11254 false (toIndex!0 lt!628078 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1426469 () Bool)

(assert (=> b!1426469 (and (bvsge (index!47409 lt!628128) #b00000000000000000000000000000000) (bvslt (index!47409 lt!628128) (size!47504 lt!628074)))))

(assert (=> b!1426469 (= e!805771 (= (select (arr!46953 lt!628074) (index!47409 lt!628128)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1426471 () Bool)

(declare-fun e!805769 () Bool)

(assert (=> b!1426471 (= e!805772 e!805769)))

(declare-fun res!961918 () Bool)

(assert (=> b!1426471 (= res!961918 (and (is-Intermediate!11254 lt!628128) (not (undefined!12066 lt!628128)) (bvslt (x!129035 lt!628128) #b01111111111111111111111111111110) (bvsge (x!129035 lt!628128) #b00000000000000000000000000000000) (bvsge (x!129035 lt!628128) #b00000000000000000000000000000000)))))

(assert (=> b!1426471 (=> (not res!961918) (not e!805769))))

(declare-fun b!1426472 () Bool)

(assert (=> b!1426472 (= e!805773 (Intermediate!11254 true (toIndex!0 lt!628078 mask!2608) #b00000000000000000000000000000000))))

(declare-fun d!153133 () Bool)

(assert (=> d!153133 e!805772))

(declare-fun c!131763 () Bool)

(assert (=> d!153133 (= c!131763 (and (is-Intermediate!11254 lt!628128) (undefined!12066 lt!628128)))))

(assert (=> d!153133 (= lt!628128 e!805773)))

(declare-fun c!131762 () Bool)

(assert (=> d!153133 (= c!131762 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153133 (= lt!628127 (select (arr!46953 lt!628074) (toIndex!0 lt!628078 mask!2608)))))

(assert (=> d!153133 (validMask!0 mask!2608)))

(assert (=> d!153133 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628078 mask!2608) lt!628078 lt!628074 mask!2608) lt!628128)))

(declare-fun b!1426466 () Bool)

(assert (=> b!1426466 (and (bvsge (index!47409 lt!628128) #b00000000000000000000000000000000) (bvslt (index!47409 lt!628128) (size!47504 lt!628074)))))

(declare-fun res!961916 () Bool)

(assert (=> b!1426466 (= res!961916 (= (select (arr!46953 lt!628074) (index!47409 lt!628128)) lt!628078))))

(assert (=> b!1426466 (=> res!961916 e!805771)))

(assert (=> b!1426466 (= e!805769 e!805771)))

(assert (= (and d!153133 c!131762) b!1426472))

