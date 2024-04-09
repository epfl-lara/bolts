; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122808 () Bool)

(assert start!122808)

(declare-fun b!1422985 () Bool)

(declare-fun e!804399 () Bool)

(declare-fun e!804403 () Bool)

(assert (=> b!1422985 (= e!804399 e!804403)))

(declare-fun res!958542 () Bool)

(assert (=> b!1422985 (=> (not res!958542) (not e!804403))))

(declare-fun lt!626893 () (_ BitVec 64))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11166 0))(
  ( (MissingZero!11166 (index!47055 (_ BitVec 32))) (Found!11166 (index!47056 (_ BitVec 32))) (Intermediate!11166 (undefined!11978 Bool) (index!47057 (_ BitVec 32)) (x!128699 (_ BitVec 32))) (Undefined!11166) (MissingVacant!11166 (index!47058 (_ BitVec 32))) )
))
(declare-fun lt!626891 () SeekEntryResult!11166)

(declare-datatypes ((array!97091 0))(
  ( (array!97092 (arr!46859 (Array (_ BitVec 32) (_ BitVec 64))) (size!47410 (_ BitVec 32))) )
))
(declare-fun lt!626894 () array!97091)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97091 (_ BitVec 32)) SeekEntryResult!11166)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422985 (= res!958542 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626893 mask!2608) lt!626893 lt!626894 mask!2608) lt!626891))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422985 (= lt!626891 (Intermediate!11166 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97091)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422985 (= lt!626893 (select (store (arr!46859 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422985 (= lt!626894 (array!97092 (store (arr!46859 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47410 a!2831)))))

(declare-fun b!1422986 () Bool)

(declare-fun res!958533 () Bool)

(declare-fun e!804402 () Bool)

(assert (=> b!1422986 (=> (not res!958533) (not e!804402))))

(declare-datatypes ((List!33549 0))(
  ( (Nil!33546) (Cons!33545 (h!34847 (_ BitVec 64)) (t!48250 List!33549)) )
))
(declare-fun arrayNoDuplicates!0 (array!97091 (_ BitVec 32) List!33549) Bool)

(assert (=> b!1422986 (= res!958533 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33546))))

(declare-fun b!1422987 () Bool)

(declare-fun res!958538 () Bool)

(assert (=> b!1422987 (=> (not res!958538) (not e!804403))))

(declare-fun lt!626895 () SeekEntryResult!11166)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1422987 (= res!958538 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46859 a!2831) j!81) a!2831 mask!2608) lt!626895))))

(declare-fun b!1422988 () Bool)

(declare-fun res!958529 () Bool)

(assert (=> b!1422988 (=> (not res!958529) (not e!804402))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422988 (= res!958529 (validKeyInArray!0 (select (arr!46859 a!2831) i!982)))))

(declare-fun b!1422989 () Bool)

(declare-fun res!958527 () Bool)

(assert (=> b!1422989 (=> (not res!958527) (not e!804403))))

(assert (=> b!1422989 (= res!958527 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626893 lt!626894 mask!2608) lt!626891))))

(declare-fun e!804401 () Bool)

(declare-fun b!1422991 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97091 (_ BitVec 32)) SeekEntryResult!11166)

(assert (=> b!1422991 (= e!804401 (= (seekEntryOrOpen!0 (select (arr!46859 a!2831) j!81) a!2831 mask!2608) (Found!11166 j!81)))))

(declare-fun b!1422992 () Bool)

(declare-fun res!958535 () Bool)

(assert (=> b!1422992 (=> (not res!958535) (not e!804402))))

(assert (=> b!1422992 (= res!958535 (and (= (size!47410 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47410 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47410 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422993 () Bool)

(declare-fun e!804400 () Bool)

(assert (=> b!1422993 (= e!804403 (not e!804400))))

(declare-fun res!958539 () Bool)

(assert (=> b!1422993 (=> res!958539 e!804400)))

(assert (=> b!1422993 (= res!958539 (or (= (select (arr!46859 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46859 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46859 a!2831) index!585) (select (arr!46859 a!2831) j!81)) (= (select (store (arr!46859 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1422993 e!804401))

(declare-fun res!958534 () Bool)

(assert (=> b!1422993 (=> (not res!958534) (not e!804401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97091 (_ BitVec 32)) Bool)

(assert (=> b!1422993 (= res!958534 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48116 0))(
  ( (Unit!48117) )
))
(declare-fun lt!626896 () Unit!48116)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97091 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48116)

(assert (=> b!1422993 (= lt!626896 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422994 () Bool)

(declare-fun e!804404 () Bool)

(assert (=> b!1422994 (= e!804400 e!804404)))

(declare-fun res!958528 () Bool)

(assert (=> b!1422994 (=> res!958528 e!804404)))

(declare-fun lt!626890 () (_ BitVec 32))

(assert (=> b!1422994 (= res!958528 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626890 #b00000000000000000000000000000000) (bvsge lt!626890 (size!47410 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422994 (= lt!626890 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1422995 () Bool)

(declare-fun res!958532 () Bool)

(assert (=> b!1422995 (=> (not res!958532) (not e!804402))))

(assert (=> b!1422995 (= res!958532 (validKeyInArray!0 (select (arr!46859 a!2831) j!81)))))

(declare-fun b!1422996 () Bool)

(assert (=> b!1422996 (= e!804402 e!804399)))

(declare-fun res!958541 () Bool)

(assert (=> b!1422996 (=> (not res!958541) (not e!804399))))

(assert (=> b!1422996 (= res!958541 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46859 a!2831) j!81) mask!2608) (select (arr!46859 a!2831) j!81) a!2831 mask!2608) lt!626895))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1422996 (= lt!626895 (Intermediate!11166 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422997 () Bool)

(declare-fun res!958537 () Bool)

(assert (=> b!1422997 (=> (not res!958537) (not e!804403))))

(assert (=> b!1422997 (= res!958537 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422998 () Bool)

(declare-fun res!958536 () Bool)

(assert (=> b!1422998 (=> (not res!958536) (not e!804402))))

(assert (=> b!1422998 (= res!958536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422999 () Bool)

(declare-fun res!958531 () Bool)

(assert (=> b!1422999 (=> res!958531 e!804404)))

(assert (=> b!1422999 (= res!958531 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626890 (select (arr!46859 a!2831) j!81) a!2831 mask!2608) lt!626895)))))

(declare-fun b!1423000 () Bool)

(declare-fun res!958540 () Bool)

(assert (=> b!1423000 (=> (not res!958540) (not e!804402))))

(assert (=> b!1423000 (= res!958540 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47410 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47410 a!2831))))))

(declare-fun res!958530 () Bool)

(assert (=> start!122808 (=> (not res!958530) (not e!804402))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122808 (= res!958530 (validMask!0 mask!2608))))

(assert (=> start!122808 e!804402))

(assert (=> start!122808 true))

(declare-fun array_inv!35804 (array!97091) Bool)

(assert (=> start!122808 (array_inv!35804 a!2831)))

(declare-fun b!1422990 () Bool)

(assert (=> b!1422990 (= e!804404 true)))

(declare-fun lt!626892 () SeekEntryResult!11166)

(assert (=> b!1422990 (= lt!626892 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626890 lt!626893 lt!626894 mask!2608))))

(assert (= (and start!122808 res!958530) b!1422992))

(assert (= (and b!1422992 res!958535) b!1422988))

(assert (= (and b!1422988 res!958529) b!1422995))

(assert (= (and b!1422995 res!958532) b!1422998))

(assert (= (and b!1422998 res!958536) b!1422986))

(assert (= (and b!1422986 res!958533) b!1423000))

(assert (= (and b!1423000 res!958540) b!1422996))

(assert (= (and b!1422996 res!958541) b!1422985))

(assert (= (and b!1422985 res!958542) b!1422987))

(assert (= (and b!1422987 res!958538) b!1422989))

(assert (= (and b!1422989 res!958527) b!1422997))

(assert (= (and b!1422997 res!958537) b!1422993))

(assert (= (and b!1422993 res!958534) b!1422991))

(assert (= (and b!1422993 (not res!958539)) b!1422994))

(assert (= (and b!1422994 (not res!958528)) b!1422999))

(assert (= (and b!1422999 (not res!958531)) b!1422990))

(declare-fun m!1313591 () Bool)

(assert (=> b!1422996 m!1313591))

(assert (=> b!1422996 m!1313591))

(declare-fun m!1313593 () Bool)

(assert (=> b!1422996 m!1313593))

(assert (=> b!1422996 m!1313593))

(assert (=> b!1422996 m!1313591))

(declare-fun m!1313595 () Bool)

(assert (=> b!1422996 m!1313595))

(declare-fun m!1313597 () Bool)

(assert (=> b!1422993 m!1313597))

(declare-fun m!1313599 () Bool)

(assert (=> b!1422993 m!1313599))

(declare-fun m!1313601 () Bool)

(assert (=> b!1422993 m!1313601))

(declare-fun m!1313603 () Bool)

(assert (=> b!1422993 m!1313603))

(assert (=> b!1422993 m!1313591))

(declare-fun m!1313605 () Bool)

(assert (=> b!1422993 m!1313605))

(declare-fun m!1313607 () Bool)

(assert (=> b!1422998 m!1313607))

(declare-fun m!1313609 () Bool)

(assert (=> b!1422989 m!1313609))

(declare-fun m!1313611 () Bool)

(assert (=> start!122808 m!1313611))

(declare-fun m!1313613 () Bool)

(assert (=> start!122808 m!1313613))

(declare-fun m!1313615 () Bool)

(assert (=> b!1422988 m!1313615))

(assert (=> b!1422988 m!1313615))

(declare-fun m!1313617 () Bool)

(assert (=> b!1422988 m!1313617))

(assert (=> b!1422991 m!1313591))

(assert (=> b!1422991 m!1313591))

(declare-fun m!1313619 () Bool)

(assert (=> b!1422991 m!1313619))

(assert (=> b!1422999 m!1313591))

(assert (=> b!1422999 m!1313591))

(declare-fun m!1313621 () Bool)

(assert (=> b!1422999 m!1313621))

(declare-fun m!1313623 () Bool)

(assert (=> b!1422990 m!1313623))

(declare-fun m!1313625 () Bool)

(assert (=> b!1422985 m!1313625))

(assert (=> b!1422985 m!1313625))

(declare-fun m!1313627 () Bool)

(assert (=> b!1422985 m!1313627))

(assert (=> b!1422985 m!1313597))

(declare-fun m!1313629 () Bool)

(assert (=> b!1422985 m!1313629))

(assert (=> b!1422995 m!1313591))

(assert (=> b!1422995 m!1313591))

(declare-fun m!1313631 () Bool)

(assert (=> b!1422995 m!1313631))

(declare-fun m!1313633 () Bool)

(assert (=> b!1422994 m!1313633))

(assert (=> b!1422987 m!1313591))

(assert (=> b!1422987 m!1313591))

(declare-fun m!1313635 () Bool)

(assert (=> b!1422987 m!1313635))

(declare-fun m!1313637 () Bool)

(assert (=> b!1422986 m!1313637))

(check-sat (not start!122808) (not b!1422990) (not b!1422994) (not b!1422987) (not b!1422995) (not b!1422998) (not b!1422991) (not b!1422999) (not b!1422985) (not b!1422986) (not b!1422988) (not b!1422989) (not b!1422993) (not b!1422996))
(check-sat)
