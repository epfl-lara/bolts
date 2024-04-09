; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123276 () Bool)

(assert start!123276)

(declare-fun b!1428778 () Bool)

(declare-fun res!963516 () Bool)

(declare-fun e!806901 () Bool)

(assert (=> b!1428778 (=> (not res!963516) (not e!806901))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1428778 (= res!963516 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1428779 () Bool)

(declare-fun res!963526 () Bool)

(declare-fun e!806900 () Bool)

(assert (=> b!1428779 (=> (not res!963526) (not e!806900))))

(declare-datatypes ((array!97355 0))(
  ( (array!97356 (arr!46985 (Array (_ BitVec 32) (_ BitVec 64))) (size!47536 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97355)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428779 (= res!963526 (validKeyInArray!0 (select (arr!46985 a!2831) j!81)))))

(declare-fun e!806903 () Bool)

(declare-fun b!1428780 () Bool)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11286 0))(
  ( (MissingZero!11286 (index!47535 (_ BitVec 32))) (Found!11286 (index!47536 (_ BitVec 32))) (Intermediate!11286 (undefined!12098 Bool) (index!47537 (_ BitVec 32)) (x!129179 (_ BitVec 32))) (Undefined!11286) (MissingVacant!11286 (index!47538 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97355 (_ BitVec 32)) SeekEntryResult!11286)

(assert (=> b!1428780 (= e!806903 (= (seekEntryOrOpen!0 (select (arr!46985 a!2831) j!81) a!2831 mask!2608) (Found!11286 j!81)))))

(declare-fun b!1428781 () Bool)

(declare-fun e!806899 () Bool)

(assert (=> b!1428781 (= e!806899 e!806901)))

(declare-fun res!963525 () Bool)

(assert (=> b!1428781 (=> (not res!963525) (not e!806901))))

(declare-fun lt!629085 () (_ BitVec 64))

(declare-fun lt!629083 () array!97355)

(declare-fun lt!629084 () SeekEntryResult!11286)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97355 (_ BitVec 32)) SeekEntryResult!11286)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428781 (= res!963525 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629085 mask!2608) lt!629085 lt!629083 mask!2608) lt!629084))))

(assert (=> b!1428781 (= lt!629084 (Intermediate!11286 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1428781 (= lt!629085 (select (store (arr!46985 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428781 (= lt!629083 (array!97356 (store (arr!46985 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47536 a!2831)))))

(declare-fun b!1428782 () Bool)

(declare-fun res!963524 () Bool)

(assert (=> b!1428782 (=> (not res!963524) (not e!806901))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1428782 (= res!963524 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629085 lt!629083 mask!2608) lt!629084))))

(declare-fun b!1428783 () Bool)

(assert (=> b!1428783 (= e!806900 e!806899)))

(declare-fun res!963519 () Bool)

(assert (=> b!1428783 (=> (not res!963519) (not e!806899))))

(declare-fun lt!629082 () SeekEntryResult!11286)

(assert (=> b!1428783 (= res!963519 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46985 a!2831) j!81) mask!2608) (select (arr!46985 a!2831) j!81) a!2831 mask!2608) lt!629082))))

(assert (=> b!1428783 (= lt!629082 (Intermediate!11286 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1428785 () Bool)

(declare-fun res!963528 () Bool)

(assert (=> b!1428785 (=> (not res!963528) (not e!806900))))

(declare-datatypes ((List!33675 0))(
  ( (Nil!33672) (Cons!33671 (h!34985 (_ BitVec 64)) (t!48376 List!33675)) )
))
(declare-fun arrayNoDuplicates!0 (array!97355 (_ BitVec 32) List!33675) Bool)

(assert (=> b!1428785 (= res!963528 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33672))))

(declare-fun b!1428786 () Bool)

(declare-fun res!963520 () Bool)

(assert (=> b!1428786 (=> (not res!963520) (not e!806900))))

(assert (=> b!1428786 (= res!963520 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47536 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47536 a!2831))))))

(declare-fun b!1428787 () Bool)

(assert (=> b!1428787 (= e!806901 (not true))))

(assert (=> b!1428787 e!806903))

(declare-fun res!963517 () Bool)

(assert (=> b!1428787 (=> (not res!963517) (not e!806903))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97355 (_ BitVec 32)) Bool)

(assert (=> b!1428787 (= res!963517 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48266 0))(
  ( (Unit!48267) )
))
(declare-fun lt!629086 () Unit!48266)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97355 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48266)

(assert (=> b!1428787 (= lt!629086 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1428788 () Bool)

(declare-fun res!963521 () Bool)

(assert (=> b!1428788 (=> (not res!963521) (not e!806900))))

(assert (=> b!1428788 (= res!963521 (validKeyInArray!0 (select (arr!46985 a!2831) i!982)))))

(declare-fun b!1428789 () Bool)

(declare-fun res!963527 () Bool)

(assert (=> b!1428789 (=> (not res!963527) (not e!806900))))

(assert (=> b!1428789 (= res!963527 (and (= (size!47536 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47536 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47536 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1428790 () Bool)

(declare-fun res!963522 () Bool)

(assert (=> b!1428790 (=> (not res!963522) (not e!806901))))

(assert (=> b!1428790 (= res!963522 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46985 a!2831) j!81) a!2831 mask!2608) lt!629082))))

(declare-fun res!963518 () Bool)

(assert (=> start!123276 (=> (not res!963518) (not e!806900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123276 (= res!963518 (validMask!0 mask!2608))))

(assert (=> start!123276 e!806900))

(assert (=> start!123276 true))

(declare-fun array_inv!35930 (array!97355) Bool)

(assert (=> start!123276 (array_inv!35930 a!2831)))

(declare-fun b!1428784 () Bool)

(declare-fun res!963523 () Bool)

(assert (=> b!1428784 (=> (not res!963523) (not e!806900))))

(assert (=> b!1428784 (= res!963523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!123276 res!963518) b!1428789))

(assert (= (and b!1428789 res!963527) b!1428788))

(assert (= (and b!1428788 res!963521) b!1428779))

(assert (= (and b!1428779 res!963526) b!1428784))

(assert (= (and b!1428784 res!963523) b!1428785))

(assert (= (and b!1428785 res!963528) b!1428786))

(assert (= (and b!1428786 res!963520) b!1428783))

(assert (= (and b!1428783 res!963519) b!1428781))

(assert (= (and b!1428781 res!963525) b!1428790))

(assert (= (and b!1428790 res!963522) b!1428782))

(assert (= (and b!1428782 res!963524) b!1428778))

(assert (= (and b!1428778 res!963516) b!1428787))

(assert (= (and b!1428787 res!963517) b!1428780))

(declare-fun m!1318951 () Bool)

(assert (=> b!1428788 m!1318951))

(assert (=> b!1428788 m!1318951))

(declare-fun m!1318953 () Bool)

(assert (=> b!1428788 m!1318953))

(declare-fun m!1318955 () Bool)

(assert (=> b!1428785 m!1318955))

(declare-fun m!1318957 () Bool)

(assert (=> b!1428790 m!1318957))

(assert (=> b!1428790 m!1318957))

(declare-fun m!1318959 () Bool)

(assert (=> b!1428790 m!1318959))

(declare-fun m!1318961 () Bool)

(assert (=> b!1428784 m!1318961))

(declare-fun m!1318963 () Bool)

(assert (=> start!123276 m!1318963))

(declare-fun m!1318965 () Bool)

(assert (=> start!123276 m!1318965))

(declare-fun m!1318967 () Bool)

(assert (=> b!1428781 m!1318967))

(assert (=> b!1428781 m!1318967))

(declare-fun m!1318969 () Bool)

(assert (=> b!1428781 m!1318969))

(declare-fun m!1318971 () Bool)

(assert (=> b!1428781 m!1318971))

(declare-fun m!1318973 () Bool)

(assert (=> b!1428781 m!1318973))

(declare-fun m!1318975 () Bool)

(assert (=> b!1428782 m!1318975))

(assert (=> b!1428780 m!1318957))

(assert (=> b!1428780 m!1318957))

(declare-fun m!1318977 () Bool)

(assert (=> b!1428780 m!1318977))

(declare-fun m!1318979 () Bool)

(assert (=> b!1428787 m!1318979))

(declare-fun m!1318981 () Bool)

(assert (=> b!1428787 m!1318981))

(assert (=> b!1428783 m!1318957))

(assert (=> b!1428783 m!1318957))

(declare-fun m!1318983 () Bool)

(assert (=> b!1428783 m!1318983))

(assert (=> b!1428783 m!1318983))

(assert (=> b!1428783 m!1318957))

(declare-fun m!1318985 () Bool)

(assert (=> b!1428783 m!1318985))

(assert (=> b!1428779 m!1318957))

(assert (=> b!1428779 m!1318957))

(declare-fun m!1318987 () Bool)

(assert (=> b!1428779 m!1318987))

(check-sat (not b!1428782) (not b!1428779) (not b!1428780) (not b!1428784) (not b!1428785) (not b!1428788) (not b!1428781) (not start!123276) (not b!1428787) (not b!1428790) (not b!1428783))
