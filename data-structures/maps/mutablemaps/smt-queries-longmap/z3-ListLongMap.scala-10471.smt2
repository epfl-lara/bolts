; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123192 () Bool)

(assert start!123192)

(declare-fun b!1427884 () Bool)

(declare-fun res!962832 () Bool)

(declare-fun e!806489 () Bool)

(assert (=> b!1427884 (=> (not res!962832) (not e!806489))))

(declare-datatypes ((array!97322 0))(
  ( (array!97323 (arr!46970 (Array (_ BitVec 32) (_ BitVec 64))) (size!47521 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97322)

(declare-datatypes ((List!33660 0))(
  ( (Nil!33657) (Cons!33656 (h!34967 (_ BitVec 64)) (t!48361 List!33660)) )
))
(declare-fun arrayNoDuplicates!0 (array!97322 (_ BitVec 32) List!33660) Bool)

(assert (=> b!1427884 (= res!962832 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33657))))

(declare-fun b!1427885 () Bool)

(declare-fun res!962827 () Bool)

(assert (=> b!1427885 (=> (not res!962827) (not e!806489))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1427885 (= res!962827 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47521 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47521 a!2831))))))

(declare-fun b!1427886 () Bool)

(declare-fun res!962824 () Bool)

(assert (=> b!1427886 (=> (not res!962824) (not e!806489))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1427886 (= res!962824 (validKeyInArray!0 (select (arr!46970 a!2831) j!81)))))

(declare-fun b!1427887 () Bool)

(declare-fun res!962829 () Bool)

(declare-fun e!806486 () Bool)

(assert (=> b!1427887 (=> (not res!962829) (not e!806486))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1427887 (= res!962829 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1427888 () Bool)

(declare-fun res!962834 () Bool)

(assert (=> b!1427888 (=> (not res!962834) (not e!806489))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1427888 (= res!962834 (validKeyInArray!0 (select (arr!46970 a!2831) i!982)))))

(declare-fun res!962828 () Bool)

(assert (=> start!123192 (=> (not res!962828) (not e!806489))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123192 (= res!962828 (validMask!0 mask!2608))))

(assert (=> start!123192 e!806489))

(assert (=> start!123192 true))

(declare-fun array_inv!35915 (array!97322) Bool)

(assert (=> start!123192 (array_inv!35915 a!2831)))

(declare-fun b!1427889 () Bool)

(declare-fun res!962825 () Bool)

(assert (=> b!1427889 (=> (not res!962825) (not e!806489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97322 (_ BitVec 32)) Bool)

(assert (=> b!1427889 (= res!962825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun e!806485 () Bool)

(declare-fun b!1427890 () Bool)

(declare-datatypes ((SeekEntryResult!11271 0))(
  ( (MissingZero!11271 (index!47475 (_ BitVec 32))) (Found!11271 (index!47476 (_ BitVec 32))) (Intermediate!11271 (undefined!12083 Bool) (index!47477 (_ BitVec 32)) (x!129118 (_ BitVec 32))) (Undefined!11271) (MissingVacant!11271 (index!47478 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97322 (_ BitVec 32)) SeekEntryResult!11271)

(assert (=> b!1427890 (= e!806485 (= (seekEntryOrOpen!0 (select (arr!46970 a!2831) j!81) a!2831 mask!2608) (Found!11271 j!81)))))

(declare-fun b!1427891 () Bool)

(declare-fun res!962835 () Bool)

(assert (=> b!1427891 (=> (not res!962835) (not e!806489))))

(assert (=> b!1427891 (= res!962835 (and (= (size!47521 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47521 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47521 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1427892 () Bool)

(declare-fun res!962830 () Bool)

(assert (=> b!1427892 (=> (not res!962830) (not e!806486))))

(declare-fun lt!628727 () SeekEntryResult!11271)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97322 (_ BitVec 32)) SeekEntryResult!11271)

(assert (=> b!1427892 (= res!962830 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46970 a!2831) j!81) a!2831 mask!2608) lt!628727))))

(declare-fun b!1427893 () Bool)

(declare-fun e!806488 () Bool)

(assert (=> b!1427893 (= e!806488 e!806486)))

(declare-fun res!962833 () Bool)

(assert (=> b!1427893 (=> (not res!962833) (not e!806486))))

(declare-fun lt!628726 () SeekEntryResult!11271)

(declare-fun lt!628728 () array!97322)

(declare-fun lt!628725 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1427893 (= res!962833 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628725 mask!2608) lt!628725 lt!628728 mask!2608) lt!628726))))

(assert (=> b!1427893 (= lt!628726 (Intermediate!11271 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1427893 (= lt!628725 (select (store (arr!46970 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1427893 (= lt!628728 (array!97323 (store (arr!46970 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47521 a!2831)))))

(declare-fun b!1427894 () Bool)

(assert (=> b!1427894 (= e!806489 e!806488)))

(declare-fun res!962826 () Bool)

(assert (=> b!1427894 (=> (not res!962826) (not e!806488))))

(assert (=> b!1427894 (= res!962826 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46970 a!2831) j!81) mask!2608) (select (arr!46970 a!2831) j!81) a!2831 mask!2608) lt!628727))))

(assert (=> b!1427894 (= lt!628727 (Intermediate!11271 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1427895 () Bool)

(declare-fun res!962831 () Bool)

(assert (=> b!1427895 (=> (not res!962831) (not e!806486))))

(assert (=> b!1427895 (= res!962831 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628725 lt!628728 mask!2608) lt!628726))))

(declare-fun b!1427896 () Bool)

(assert (=> b!1427896 (= e!806486 (not true))))

(assert (=> b!1427896 e!806485))

(declare-fun res!962823 () Bool)

(assert (=> b!1427896 (=> (not res!962823) (not e!806485))))

(assert (=> b!1427896 (= res!962823 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48236 0))(
  ( (Unit!48237) )
))
(declare-fun lt!628729 () Unit!48236)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97322 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48236)

(assert (=> b!1427896 (= lt!628729 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (= (and start!123192 res!962828) b!1427891))

(assert (= (and b!1427891 res!962835) b!1427888))

(assert (= (and b!1427888 res!962834) b!1427886))

(assert (= (and b!1427886 res!962824) b!1427889))

(assert (= (and b!1427889 res!962825) b!1427884))

(assert (= (and b!1427884 res!962832) b!1427885))

(assert (= (and b!1427885 res!962827) b!1427894))

(assert (= (and b!1427894 res!962826) b!1427893))

(assert (= (and b!1427893 res!962833) b!1427892))

(assert (= (and b!1427892 res!962830) b!1427895))

(assert (= (and b!1427895 res!962831) b!1427887))

(assert (= (and b!1427887 res!962829) b!1427896))

(assert (= (and b!1427896 res!962823) b!1427890))

(declare-fun m!1318189 () Bool)

(assert (=> start!123192 m!1318189))

(declare-fun m!1318191 () Bool)

(assert (=> start!123192 m!1318191))

(declare-fun m!1318193 () Bool)

(assert (=> b!1427884 m!1318193))

(declare-fun m!1318195 () Bool)

(assert (=> b!1427888 m!1318195))

(assert (=> b!1427888 m!1318195))

(declare-fun m!1318197 () Bool)

(assert (=> b!1427888 m!1318197))

(declare-fun m!1318199 () Bool)

(assert (=> b!1427895 m!1318199))

(declare-fun m!1318201 () Bool)

(assert (=> b!1427892 m!1318201))

(assert (=> b!1427892 m!1318201))

(declare-fun m!1318203 () Bool)

(assert (=> b!1427892 m!1318203))

(assert (=> b!1427890 m!1318201))

(assert (=> b!1427890 m!1318201))

(declare-fun m!1318205 () Bool)

(assert (=> b!1427890 m!1318205))

(assert (=> b!1427886 m!1318201))

(assert (=> b!1427886 m!1318201))

(declare-fun m!1318207 () Bool)

(assert (=> b!1427886 m!1318207))

(declare-fun m!1318209 () Bool)

(assert (=> b!1427889 m!1318209))

(declare-fun m!1318211 () Bool)

(assert (=> b!1427896 m!1318211))

(declare-fun m!1318213 () Bool)

(assert (=> b!1427896 m!1318213))

(declare-fun m!1318215 () Bool)

(assert (=> b!1427893 m!1318215))

(assert (=> b!1427893 m!1318215))

(declare-fun m!1318217 () Bool)

(assert (=> b!1427893 m!1318217))

(declare-fun m!1318219 () Bool)

(assert (=> b!1427893 m!1318219))

(declare-fun m!1318221 () Bool)

(assert (=> b!1427893 m!1318221))

(assert (=> b!1427894 m!1318201))

(assert (=> b!1427894 m!1318201))

(declare-fun m!1318223 () Bool)

(assert (=> b!1427894 m!1318223))

(assert (=> b!1427894 m!1318223))

(assert (=> b!1427894 m!1318201))

(declare-fun m!1318225 () Bool)

(assert (=> b!1427894 m!1318225))

(check-sat (not b!1427888) (not b!1427884) (not b!1427889) (not b!1427892) (not b!1427895) (not start!123192) (not b!1427890) (not b!1427896) (not b!1427893) (not b!1427894) (not b!1427886))
(check-sat)
