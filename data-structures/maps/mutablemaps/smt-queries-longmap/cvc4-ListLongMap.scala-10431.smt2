; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122792 () Bool)

(assert start!122792)

(declare-fun b!1422602 () Bool)

(declare-fun res!958147 () Bool)

(declare-fun e!804235 () Bool)

(assert (=> b!1422602 (=> (not res!958147) (not e!804235))))

(declare-datatypes ((SeekEntryResult!11158 0))(
  ( (MissingZero!11158 (index!47023 (_ BitVec 32))) (Found!11158 (index!47024 (_ BitVec 32))) (Intermediate!11158 (undefined!11970 Bool) (index!47025 (_ BitVec 32)) (x!128667 (_ BitVec 32))) (Undefined!11158) (MissingVacant!11158 (index!47026 (_ BitVec 32))) )
))
(declare-fun lt!626722 () SeekEntryResult!11158)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((array!97075 0))(
  ( (array!97076 (arr!46851 (Array (_ BitVec 32) (_ BitVec 64))) (size!47402 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97075)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97075 (_ BitVec 32)) SeekEntryResult!11158)

(assert (=> b!1422602 (= res!958147 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46851 a!2831) j!81) a!2831 mask!2608) lt!626722))))

(declare-fun b!1422603 () Bool)

(declare-fun res!958158 () Bool)

(declare-fun e!804230 () Bool)

(assert (=> b!1422603 (=> (not res!958158) (not e!804230))))

(declare-datatypes ((List!33541 0))(
  ( (Nil!33538) (Cons!33537 (h!34839 (_ BitVec 64)) (t!48242 List!33541)) )
))
(declare-fun arrayNoDuplicates!0 (array!97075 (_ BitVec 32) List!33541) Bool)

(assert (=> b!1422603 (= res!958158 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33538))))

(declare-fun b!1422604 () Bool)

(declare-fun e!804233 () Bool)

(assert (=> b!1422604 (= e!804235 (not e!804233))))

(declare-fun res!958151 () Bool)

(assert (=> b!1422604 (=> res!958151 e!804233)))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422604 (= res!958151 (or (= (select (arr!46851 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46851 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46851 a!2831) index!585) (select (arr!46851 a!2831) j!81)) (= (select (store (arr!46851 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804232 () Bool)

(assert (=> b!1422604 e!804232))

(declare-fun res!958144 () Bool)

(assert (=> b!1422604 (=> (not res!958144) (not e!804232))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97075 (_ BitVec 32)) Bool)

(assert (=> b!1422604 (= res!958144 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48100 0))(
  ( (Unit!48101) )
))
(declare-fun lt!626723 () Unit!48100)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97075 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48100)

(assert (=> b!1422604 (= lt!626723 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422605 () Bool)

(declare-fun res!958154 () Bool)

(declare-fun e!804236 () Bool)

(assert (=> b!1422605 (=> res!958154 e!804236)))

(declare-fun lt!626728 () (_ BitVec 32))

(assert (=> b!1422605 (= res!958154 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626728 (select (arr!46851 a!2831) j!81) a!2831 mask!2608) lt!626722)))))

(declare-fun b!1422606 () Bool)

(declare-fun res!958152 () Bool)

(assert (=> b!1422606 (=> (not res!958152) (not e!804230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422606 (= res!958152 (validKeyInArray!0 (select (arr!46851 a!2831) j!81)))))

(declare-fun b!1422607 () Bool)

(declare-fun res!958146 () Bool)

(assert (=> b!1422607 (=> (not res!958146) (not e!804230))))

(assert (=> b!1422607 (= res!958146 (and (= (size!47402 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47402 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47402 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422608 () Bool)

(assert (=> b!1422608 (= e!804236 true)))

(declare-fun lt!626724 () array!97075)

(declare-fun lt!626727 () (_ BitVec 64))

(declare-fun lt!626725 () SeekEntryResult!11158)

(assert (=> b!1422608 (= lt!626725 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626728 lt!626727 lt!626724 mask!2608))))

(declare-fun b!1422609 () Bool)

(declare-fun e!804234 () Bool)

(assert (=> b!1422609 (= e!804234 e!804235)))

(declare-fun res!958148 () Bool)

(assert (=> b!1422609 (=> (not res!958148) (not e!804235))))

(declare-fun lt!626726 () SeekEntryResult!11158)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422609 (= res!958148 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626727 mask!2608) lt!626727 lt!626724 mask!2608) lt!626726))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422609 (= lt!626726 (Intermediate!11158 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1422609 (= lt!626727 (select (store (arr!46851 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422609 (= lt!626724 (array!97076 (store (arr!46851 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47402 a!2831)))))

(declare-fun b!1422610 () Bool)

(declare-fun res!958156 () Bool)

(assert (=> b!1422610 (=> (not res!958156) (not e!804230))))

(assert (=> b!1422610 (= res!958156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422611 () Bool)

(assert (=> b!1422611 (= e!804233 e!804236)))

(declare-fun res!958150 () Bool)

(assert (=> b!1422611 (=> res!958150 e!804236)))

(assert (=> b!1422611 (= res!958150 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626728 #b00000000000000000000000000000000) (bvsge lt!626728 (size!47402 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422611 (= lt!626728 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1422612 () Bool)

(declare-fun res!958149 () Bool)

(assert (=> b!1422612 (=> (not res!958149) (not e!804235))))

(assert (=> b!1422612 (= res!958149 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626727 lt!626724 mask!2608) lt!626726))))

(declare-fun b!1422613 () Bool)

(declare-fun res!958145 () Bool)

(assert (=> b!1422613 (=> (not res!958145) (not e!804235))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1422613 (= res!958145 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422614 () Bool)

(declare-fun res!958153 () Bool)

(assert (=> b!1422614 (=> (not res!958153) (not e!804230))))

(assert (=> b!1422614 (= res!958153 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47402 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47402 a!2831))))))

(declare-fun res!958155 () Bool)

(assert (=> start!122792 (=> (not res!958155) (not e!804230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122792 (= res!958155 (validMask!0 mask!2608))))

(assert (=> start!122792 e!804230))

(assert (=> start!122792 true))

(declare-fun array_inv!35796 (array!97075) Bool)

(assert (=> start!122792 (array_inv!35796 a!2831)))

(declare-fun b!1422601 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97075 (_ BitVec 32)) SeekEntryResult!11158)

(assert (=> b!1422601 (= e!804232 (= (seekEntryOrOpen!0 (select (arr!46851 a!2831) j!81) a!2831 mask!2608) (Found!11158 j!81)))))

(declare-fun b!1422615 () Bool)

(declare-fun res!958143 () Bool)

(assert (=> b!1422615 (=> (not res!958143) (not e!804230))))

(assert (=> b!1422615 (= res!958143 (validKeyInArray!0 (select (arr!46851 a!2831) i!982)))))

(declare-fun b!1422616 () Bool)

(assert (=> b!1422616 (= e!804230 e!804234)))

(declare-fun res!958157 () Bool)

(assert (=> b!1422616 (=> (not res!958157) (not e!804234))))

(assert (=> b!1422616 (= res!958157 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46851 a!2831) j!81) mask!2608) (select (arr!46851 a!2831) j!81) a!2831 mask!2608) lt!626722))))

(assert (=> b!1422616 (= lt!626722 (Intermediate!11158 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(assert (= (and start!122792 res!958155) b!1422607))

(assert (= (and b!1422607 res!958146) b!1422615))

(assert (= (and b!1422615 res!958143) b!1422606))

(assert (= (and b!1422606 res!958152) b!1422610))

(assert (= (and b!1422610 res!958156) b!1422603))

(assert (= (and b!1422603 res!958158) b!1422614))

(assert (= (and b!1422614 res!958153) b!1422616))

(assert (= (and b!1422616 res!958157) b!1422609))

(assert (= (and b!1422609 res!958148) b!1422602))

(assert (= (and b!1422602 res!958147) b!1422612))

(assert (= (and b!1422612 res!958149) b!1422613))

(assert (= (and b!1422613 res!958145) b!1422604))

(assert (= (and b!1422604 res!958144) b!1422601))

(assert (= (and b!1422604 (not res!958151)) b!1422611))

(assert (= (and b!1422611 (not res!958150)) b!1422605))

(assert (= (and b!1422605 (not res!958154)) b!1422608))

(declare-fun m!1313207 () Bool)

(assert (=> b!1422606 m!1313207))

(assert (=> b!1422606 m!1313207))

(declare-fun m!1313209 () Bool)

(assert (=> b!1422606 m!1313209))

(declare-fun m!1313211 () Bool)

(assert (=> b!1422608 m!1313211))

(declare-fun m!1313213 () Bool)

(assert (=> b!1422612 m!1313213))

(declare-fun m!1313215 () Bool)

(assert (=> b!1422609 m!1313215))

(assert (=> b!1422609 m!1313215))

(declare-fun m!1313217 () Bool)

(assert (=> b!1422609 m!1313217))

(declare-fun m!1313219 () Bool)

(assert (=> b!1422609 m!1313219))

(declare-fun m!1313221 () Bool)

(assert (=> b!1422609 m!1313221))

(assert (=> b!1422616 m!1313207))

(assert (=> b!1422616 m!1313207))

(declare-fun m!1313223 () Bool)

(assert (=> b!1422616 m!1313223))

(assert (=> b!1422616 m!1313223))

(assert (=> b!1422616 m!1313207))

(declare-fun m!1313225 () Bool)

(assert (=> b!1422616 m!1313225))

(declare-fun m!1313227 () Bool)

(assert (=> b!1422615 m!1313227))

(assert (=> b!1422615 m!1313227))

(declare-fun m!1313229 () Bool)

(assert (=> b!1422615 m!1313229))

(assert (=> b!1422605 m!1313207))

(assert (=> b!1422605 m!1313207))

(declare-fun m!1313231 () Bool)

(assert (=> b!1422605 m!1313231))

(declare-fun m!1313233 () Bool)

(assert (=> start!122792 m!1313233))

(declare-fun m!1313235 () Bool)

(assert (=> start!122792 m!1313235))

(declare-fun m!1313237 () Bool)

(assert (=> b!1422603 m!1313237))

(assert (=> b!1422604 m!1313219))

(declare-fun m!1313239 () Bool)

(assert (=> b!1422604 m!1313239))

(declare-fun m!1313241 () Bool)

(assert (=> b!1422604 m!1313241))

(declare-fun m!1313243 () Bool)

(assert (=> b!1422604 m!1313243))

(assert (=> b!1422604 m!1313207))

(declare-fun m!1313245 () Bool)

(assert (=> b!1422604 m!1313245))

(assert (=> b!1422602 m!1313207))

(assert (=> b!1422602 m!1313207))

(declare-fun m!1313247 () Bool)

(assert (=> b!1422602 m!1313247))

(declare-fun m!1313249 () Bool)

(assert (=> b!1422610 m!1313249))

(declare-fun m!1313251 () Bool)

(assert (=> b!1422611 m!1313251))

(assert (=> b!1422601 m!1313207))

(assert (=> b!1422601 m!1313207))

(declare-fun m!1313253 () Bool)

(assert (=> b!1422601 m!1313253))

(push 1)

