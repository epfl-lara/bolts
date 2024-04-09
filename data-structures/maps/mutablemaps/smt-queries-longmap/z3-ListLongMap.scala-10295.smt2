; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121134 () Bool)

(assert start!121134)

(declare-fun b!1407843 () Bool)

(declare-fun res!945680 () Bool)

(declare-fun e!796846 () Bool)

(assert (=> b!1407843 (=> (not res!945680) (not e!796846))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96206 0))(
  ( (array!96207 (arr!46442 (Array (_ BitVec 32) (_ BitVec 64))) (size!46993 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96206)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1407843 (= res!945680 (and (= (size!46993 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46993 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46993 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1407844 () Bool)

(declare-fun res!945676 () Bool)

(assert (=> b!1407844 (=> (not res!945676) (not e!796846))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407844 (= res!945676 (validKeyInArray!0 (select (arr!46442 a!2901) i!1037)))))

(declare-fun res!945674 () Bool)

(assert (=> start!121134 (=> (not res!945674) (not e!796846))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121134 (= res!945674 (validMask!0 mask!2840))))

(assert (=> start!121134 e!796846))

(assert (=> start!121134 true))

(declare-fun array_inv!35387 (array!96206) Bool)

(assert (=> start!121134 (array_inv!35387 a!2901)))

(declare-fun b!1407845 () Bool)

(declare-fun res!945679 () Bool)

(assert (=> b!1407845 (=> (not res!945679) (not e!796846))))

(assert (=> b!1407845 (= res!945679 (validKeyInArray!0 (select (arr!46442 a!2901) j!112)))))

(declare-fun b!1407846 () Bool)

(declare-fun res!945675 () Bool)

(assert (=> b!1407846 (=> (not res!945675) (not e!796846))))

(declare-datatypes ((List!33141 0))(
  ( (Nil!33138) (Cons!33137 (h!34400 (_ BitVec 64)) (t!47842 List!33141)) )
))
(declare-fun arrayNoDuplicates!0 (array!96206 (_ BitVec 32) List!33141) Bool)

(assert (=> b!1407846 (= res!945675 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33138))))

(declare-fun e!796844 () Bool)

(declare-fun b!1407847 () Bool)

(declare-datatypes ((SeekEntryResult!10775 0))(
  ( (MissingZero!10775 (index!45476 (_ BitVec 32))) (Found!10775 (index!45477 (_ BitVec 32))) (Intermediate!10775 (undefined!11587 Bool) (index!45478 (_ BitVec 32)) (x!127091 (_ BitVec 32))) (Undefined!10775) (MissingVacant!10775 (index!45479 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96206 (_ BitVec 32)) SeekEntryResult!10775)

(assert (=> b!1407847 (= e!796844 (= (seekEntryOrOpen!0 (select (arr!46442 a!2901) j!112) a!2901 mask!2840) (Found!10775 j!112)))))

(declare-fun b!1407848 () Bool)

(declare-fun res!945681 () Bool)

(assert (=> b!1407848 (=> (not res!945681) (not e!796846))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96206 (_ BitVec 32)) Bool)

(assert (=> b!1407848 (= res!945681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1407849 () Bool)

(declare-fun e!796847 () Bool)

(assert (=> b!1407849 (= e!796847 true)))

(declare-fun lt!619931 () SeekEntryResult!10775)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96206 (_ BitVec 32)) SeekEntryResult!10775)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407849 (= lt!619931 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46442 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46442 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96207 (store (arr!46442 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46993 a!2901)) mask!2840))))

(declare-fun b!1407850 () Bool)

(assert (=> b!1407850 (= e!796846 (not e!796847))))

(declare-fun res!945678 () Bool)

(assert (=> b!1407850 (=> res!945678 e!796847)))

(declare-fun lt!619932 () SeekEntryResult!10775)

(get-info :version)

(assert (=> b!1407850 (= res!945678 (or (not ((_ is Intermediate!10775) lt!619932)) (undefined!11587 lt!619932)))))

(assert (=> b!1407850 e!796844))

(declare-fun res!945677 () Bool)

(assert (=> b!1407850 (=> (not res!945677) (not e!796844))))

(assert (=> b!1407850 (= res!945677 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47474 0))(
  ( (Unit!47475) )
))
(declare-fun lt!619933 () Unit!47474)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96206 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47474)

(assert (=> b!1407850 (= lt!619933 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1407850 (= lt!619932 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46442 a!2901) j!112) mask!2840) (select (arr!46442 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!121134 res!945674) b!1407843))

(assert (= (and b!1407843 res!945680) b!1407844))

(assert (= (and b!1407844 res!945676) b!1407845))

(assert (= (and b!1407845 res!945679) b!1407848))

(assert (= (and b!1407848 res!945681) b!1407846))

(assert (= (and b!1407846 res!945675) b!1407850))

(assert (= (and b!1407850 res!945677) b!1407847))

(assert (= (and b!1407850 (not res!945678)) b!1407849))

(declare-fun m!1296993 () Bool)

(assert (=> b!1407848 m!1296993))

(declare-fun m!1296995 () Bool)

(assert (=> b!1407849 m!1296995))

(declare-fun m!1296997 () Bool)

(assert (=> b!1407849 m!1296997))

(assert (=> b!1407849 m!1296997))

(declare-fun m!1296999 () Bool)

(assert (=> b!1407849 m!1296999))

(assert (=> b!1407849 m!1296999))

(assert (=> b!1407849 m!1296997))

(declare-fun m!1297001 () Bool)

(assert (=> b!1407849 m!1297001))

(declare-fun m!1297003 () Bool)

(assert (=> start!121134 m!1297003))

(declare-fun m!1297005 () Bool)

(assert (=> start!121134 m!1297005))

(declare-fun m!1297007 () Bool)

(assert (=> b!1407844 m!1297007))

(assert (=> b!1407844 m!1297007))

(declare-fun m!1297009 () Bool)

(assert (=> b!1407844 m!1297009))

(declare-fun m!1297011 () Bool)

(assert (=> b!1407845 m!1297011))

(assert (=> b!1407845 m!1297011))

(declare-fun m!1297013 () Bool)

(assert (=> b!1407845 m!1297013))

(declare-fun m!1297015 () Bool)

(assert (=> b!1407846 m!1297015))

(assert (=> b!1407850 m!1297011))

(declare-fun m!1297017 () Bool)

(assert (=> b!1407850 m!1297017))

(assert (=> b!1407850 m!1297011))

(declare-fun m!1297019 () Bool)

(assert (=> b!1407850 m!1297019))

(assert (=> b!1407850 m!1297017))

(assert (=> b!1407850 m!1297011))

(declare-fun m!1297021 () Bool)

(assert (=> b!1407850 m!1297021))

(declare-fun m!1297023 () Bool)

(assert (=> b!1407850 m!1297023))

(assert (=> b!1407847 m!1297011))

(assert (=> b!1407847 m!1297011))

(declare-fun m!1297025 () Bool)

(assert (=> b!1407847 m!1297025))

(check-sat (not b!1407846) (not b!1407845) (not start!121134) (not b!1407847) (not b!1407850) (not b!1407844) (not b!1407848) (not b!1407849))
