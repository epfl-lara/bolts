; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123324 () Bool)

(assert start!123324)

(declare-fun res!964458 () Bool)

(declare-fun e!807260 () Bool)

(assert (=> start!123324 (=> (not res!964458) (not e!807260))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123324 (= res!964458 (validMask!0 mask!2608))))

(assert (=> start!123324 e!807260))

(assert (=> start!123324 true))

(declare-datatypes ((array!97403 0))(
  ( (array!97404 (arr!47009 (Array (_ BitVec 32) (_ BitVec 64))) (size!47560 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97403)

(declare-fun array_inv!35954 (array!97403) Bool)

(assert (=> start!123324 (array_inv!35954 a!2831)))

(declare-fun e!807259 () Bool)

(declare-fun b!1429714 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11310 0))(
  ( (MissingZero!11310 (index!47631 (_ BitVec 32))) (Found!11310 (index!47632 (_ BitVec 32))) (Intermediate!11310 (undefined!12122 Bool) (index!47633 (_ BitVec 32)) (x!129267 (_ BitVec 32))) (Undefined!11310) (MissingVacant!11310 (index!47634 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97403 (_ BitVec 32)) SeekEntryResult!11310)

(assert (=> b!1429714 (= e!807259 (= (seekEntryOrOpen!0 (select (arr!47009 a!2831) j!81) a!2831 mask!2608) (Found!11310 j!81)))))

(declare-fun b!1429715 () Bool)

(declare-fun res!964452 () Bool)

(assert (=> b!1429715 (=> (not res!964452) (not e!807260))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429715 (= res!964452 (validKeyInArray!0 (select (arr!47009 a!2831) i!982)))))

(declare-fun b!1429716 () Bool)

(declare-fun res!964461 () Bool)

(assert (=> b!1429716 (=> (not res!964461) (not e!807260))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1429716 (= res!964461 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47560 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47560 a!2831))))))

(declare-fun b!1429717 () Bool)

(declare-fun res!964464 () Bool)

(assert (=> b!1429717 (=> (not res!964464) (not e!807260))))

(assert (=> b!1429717 (= res!964464 (validKeyInArray!0 (select (arr!47009 a!2831) j!81)))))

(declare-fun b!1429718 () Bool)

(declare-fun res!964459 () Bool)

(assert (=> b!1429718 (=> (not res!964459) (not e!807260))))

(declare-datatypes ((List!33699 0))(
  ( (Nil!33696) (Cons!33695 (h!35009 (_ BitVec 64)) (t!48400 List!33699)) )
))
(declare-fun arrayNoDuplicates!0 (array!97403 (_ BitVec 32) List!33699) Bool)

(assert (=> b!1429718 (= res!964459 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33696))))

(declare-fun b!1429719 () Bool)

(declare-fun e!807261 () Bool)

(declare-fun e!807262 () Bool)

(assert (=> b!1429719 (= e!807261 e!807262)))

(declare-fun res!964457 () Bool)

(assert (=> b!1429719 (=> (not res!964457) (not e!807262))))

(declare-fun lt!629444 () array!97403)

(declare-fun lt!629446 () (_ BitVec 64))

(declare-fun lt!629443 () SeekEntryResult!11310)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97403 (_ BitVec 32)) SeekEntryResult!11310)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429719 (= res!964457 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629446 mask!2608) lt!629446 lt!629444 mask!2608) lt!629443))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429719 (= lt!629443 (Intermediate!11310 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429719 (= lt!629446 (select (store (arr!47009 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429719 (= lt!629444 (array!97404 (store (arr!47009 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47560 a!2831)))))

(declare-fun b!1429720 () Bool)

(assert (=> b!1429720 (= e!807260 e!807261)))

(declare-fun res!964460 () Bool)

(assert (=> b!1429720 (=> (not res!964460) (not e!807261))))

(declare-fun lt!629445 () SeekEntryResult!11310)

(assert (=> b!1429720 (= res!964460 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47009 a!2831) j!81) mask!2608) (select (arr!47009 a!2831) j!81) a!2831 mask!2608) lt!629445))))

(assert (=> b!1429720 (= lt!629445 (Intermediate!11310 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429721 () Bool)

(declare-fun res!964456 () Bool)

(assert (=> b!1429721 (=> (not res!964456) (not e!807262))))

(assert (=> b!1429721 (= res!964456 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47009 a!2831) j!81) a!2831 mask!2608) lt!629445))))

(declare-fun b!1429722 () Bool)

(declare-fun res!964453 () Bool)

(assert (=> b!1429722 (=> (not res!964453) (not e!807260))))

(assert (=> b!1429722 (= res!964453 (and (= (size!47560 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47560 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47560 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429723 () Bool)

(declare-fun res!964455 () Bool)

(assert (=> b!1429723 (=> (not res!964455) (not e!807262))))

(assert (=> b!1429723 (= res!964455 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629446 lt!629444 mask!2608) lt!629443))))

(declare-fun b!1429724 () Bool)

(declare-fun res!964463 () Bool)

(assert (=> b!1429724 (=> (not res!964463) (not e!807260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97403 (_ BitVec 32)) Bool)

(assert (=> b!1429724 (= res!964463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429725 () Bool)

(assert (=> b!1429725 (= e!807262 (not true))))

(assert (=> b!1429725 e!807259))

(declare-fun res!964454 () Bool)

(assert (=> b!1429725 (=> (not res!964454) (not e!807259))))

(assert (=> b!1429725 (= res!964454 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48314 0))(
  ( (Unit!48315) )
))
(declare-fun lt!629442 () Unit!48314)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97403 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48314)

(assert (=> b!1429725 (= lt!629442 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429726 () Bool)

(declare-fun res!964462 () Bool)

(assert (=> b!1429726 (=> (not res!964462) (not e!807262))))

(assert (=> b!1429726 (= res!964462 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!123324 res!964458) b!1429722))

(assert (= (and b!1429722 res!964453) b!1429715))

(assert (= (and b!1429715 res!964452) b!1429717))

(assert (= (and b!1429717 res!964464) b!1429724))

(assert (= (and b!1429724 res!964463) b!1429718))

(assert (= (and b!1429718 res!964459) b!1429716))

(assert (= (and b!1429716 res!964461) b!1429720))

(assert (= (and b!1429720 res!964460) b!1429719))

(assert (= (and b!1429719 res!964457) b!1429721))

(assert (= (and b!1429721 res!964456) b!1429723))

(assert (= (and b!1429723 res!964455) b!1429726))

(assert (= (and b!1429726 res!964462) b!1429725))

(assert (= (and b!1429725 res!964454) b!1429714))

(declare-fun m!1319863 () Bool)

(assert (=> b!1429725 m!1319863))

(declare-fun m!1319865 () Bool)

(assert (=> b!1429725 m!1319865))

(declare-fun m!1319867 () Bool)

(assert (=> b!1429719 m!1319867))

(assert (=> b!1429719 m!1319867))

(declare-fun m!1319869 () Bool)

(assert (=> b!1429719 m!1319869))

(declare-fun m!1319871 () Bool)

(assert (=> b!1429719 m!1319871))

(declare-fun m!1319873 () Bool)

(assert (=> b!1429719 m!1319873))

(declare-fun m!1319875 () Bool)

(assert (=> start!123324 m!1319875))

(declare-fun m!1319877 () Bool)

(assert (=> start!123324 m!1319877))

(declare-fun m!1319879 () Bool)

(assert (=> b!1429723 m!1319879))

(declare-fun m!1319881 () Bool)

(assert (=> b!1429718 m!1319881))

(declare-fun m!1319883 () Bool)

(assert (=> b!1429720 m!1319883))

(assert (=> b!1429720 m!1319883))

(declare-fun m!1319885 () Bool)

(assert (=> b!1429720 m!1319885))

(assert (=> b!1429720 m!1319885))

(assert (=> b!1429720 m!1319883))

(declare-fun m!1319887 () Bool)

(assert (=> b!1429720 m!1319887))

(declare-fun m!1319889 () Bool)

(assert (=> b!1429715 m!1319889))

(assert (=> b!1429715 m!1319889))

(declare-fun m!1319891 () Bool)

(assert (=> b!1429715 m!1319891))

(assert (=> b!1429717 m!1319883))

(assert (=> b!1429717 m!1319883))

(declare-fun m!1319893 () Bool)

(assert (=> b!1429717 m!1319893))

(declare-fun m!1319895 () Bool)

(assert (=> b!1429724 m!1319895))

(assert (=> b!1429714 m!1319883))

(assert (=> b!1429714 m!1319883))

(declare-fun m!1319897 () Bool)

(assert (=> b!1429714 m!1319897))

(assert (=> b!1429721 m!1319883))

(assert (=> b!1429721 m!1319883))

(declare-fun m!1319899 () Bool)

(assert (=> b!1429721 m!1319899))

(check-sat (not b!1429718) (not b!1429715) (not b!1429721) (not b!1429719) (not b!1429714) (not b!1429724) (not b!1429725) (not b!1429717) (not b!1429720) (not b!1429723) (not start!123324))
(check-sat)
