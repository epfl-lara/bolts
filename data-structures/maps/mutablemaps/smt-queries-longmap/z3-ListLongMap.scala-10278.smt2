; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120870 () Bool)

(assert start!120870)

(declare-fun res!944151 () Bool)

(declare-fun e!795758 () Bool)

(assert (=> start!120870 (=> (not res!944151) (not e!795758))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120870 (= res!944151 (validMask!0 mask!2840))))

(assert (=> start!120870 e!795758))

(assert (=> start!120870 true))

(declare-datatypes ((array!96095 0))(
  ( (array!96096 (arr!46391 (Array (_ BitVec 32) (_ BitVec 64))) (size!46942 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96095)

(declare-fun array_inv!35336 (array!96095) Bool)

(assert (=> start!120870 (array_inv!35336 a!2901)))

(declare-fun b!1405818 () Bool)

(declare-fun res!944149 () Bool)

(assert (=> b!1405818 (=> (not res!944149) (not e!795758))))

(declare-datatypes ((List!33090 0))(
  ( (Nil!33087) (Cons!33086 (h!34340 (_ BitVec 64)) (t!47791 List!33090)) )
))
(declare-fun arrayNoDuplicates!0 (array!96095 (_ BitVec 32) List!33090) Bool)

(assert (=> b!1405818 (= res!944149 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33087))))

(declare-fun b!1405819 () Bool)

(declare-fun e!795757 () Bool)

(assert (=> b!1405819 (= e!795757 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10724 0))(
  ( (MissingZero!10724 (index!45272 (_ BitVec 32))) (Found!10724 (index!45273 (_ BitVec 32))) (Intermediate!10724 (undefined!11536 Bool) (index!45274 (_ BitVec 32)) (x!126886 (_ BitVec 32))) (Undefined!10724) (MissingVacant!10724 (index!45275 (_ BitVec 32))) )
))
(declare-fun lt!619123 () SeekEntryResult!10724)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96095 (_ BitVec 32)) SeekEntryResult!10724)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405819 (= lt!619123 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46391 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46391 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96096 (store (arr!46391 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46942 a!2901)) mask!2840))))

(declare-fun b!1405820 () Bool)

(declare-fun res!944150 () Bool)

(assert (=> b!1405820 (=> (not res!944150) (not e!795758))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96095 (_ BitVec 32)) Bool)

(assert (=> b!1405820 (= res!944150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405821 () Bool)

(declare-fun res!944146 () Bool)

(assert (=> b!1405821 (=> (not res!944146) (not e!795758))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405821 (= res!944146 (validKeyInArray!0 (select (arr!46391 a!2901) j!112)))))

(declare-fun b!1405822 () Bool)

(declare-fun res!944144 () Bool)

(assert (=> b!1405822 (=> (not res!944144) (not e!795758))))

(assert (=> b!1405822 (= res!944144 (validKeyInArray!0 (select (arr!46391 a!2901) i!1037)))))

(declare-fun b!1405823 () Bool)

(declare-fun res!944145 () Bool)

(assert (=> b!1405823 (=> (not res!944145) (not e!795758))))

(assert (=> b!1405823 (= res!944145 (and (= (size!46942 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46942 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46942 a!2901)) (not (= i!1037 j!112))))))

(declare-fun e!795756 () Bool)

(declare-fun b!1405824 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96095 (_ BitVec 32)) SeekEntryResult!10724)

(assert (=> b!1405824 (= e!795756 (= (seekEntryOrOpen!0 (select (arr!46391 a!2901) j!112) a!2901 mask!2840) (Found!10724 j!112)))))

(declare-fun b!1405825 () Bool)

(assert (=> b!1405825 (= e!795758 (not e!795757))))

(declare-fun res!944148 () Bool)

(assert (=> b!1405825 (=> res!944148 e!795757)))

(declare-fun lt!619121 () SeekEntryResult!10724)

(get-info :version)

(assert (=> b!1405825 (= res!944148 (or (not ((_ is Intermediate!10724) lt!619121)) (undefined!11536 lt!619121)))))

(assert (=> b!1405825 e!795756))

(declare-fun res!944147 () Bool)

(assert (=> b!1405825 (=> (not res!944147) (not e!795756))))

(assert (=> b!1405825 (= res!944147 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47372 0))(
  ( (Unit!47373) )
))
(declare-fun lt!619122 () Unit!47372)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96095 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47372)

(assert (=> b!1405825 (= lt!619122 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1405825 (= lt!619121 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46391 a!2901) j!112) mask!2840) (select (arr!46391 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!120870 res!944151) b!1405823))

(assert (= (and b!1405823 res!944145) b!1405822))

(assert (= (and b!1405822 res!944144) b!1405821))

(assert (= (and b!1405821 res!944146) b!1405820))

(assert (= (and b!1405820 res!944150) b!1405818))

(assert (= (and b!1405818 res!944149) b!1405825))

(assert (= (and b!1405825 res!944147) b!1405824))

(assert (= (and b!1405825 (not res!944148)) b!1405819))

(declare-fun m!1294797 () Bool)

(assert (=> b!1405818 m!1294797))

(declare-fun m!1294799 () Bool)

(assert (=> start!120870 m!1294799))

(declare-fun m!1294801 () Bool)

(assert (=> start!120870 m!1294801))

(declare-fun m!1294803 () Bool)

(assert (=> b!1405824 m!1294803))

(assert (=> b!1405824 m!1294803))

(declare-fun m!1294805 () Bool)

(assert (=> b!1405824 m!1294805))

(assert (=> b!1405821 m!1294803))

(assert (=> b!1405821 m!1294803))

(declare-fun m!1294807 () Bool)

(assert (=> b!1405821 m!1294807))

(declare-fun m!1294809 () Bool)

(assert (=> b!1405819 m!1294809))

(declare-fun m!1294811 () Bool)

(assert (=> b!1405819 m!1294811))

(assert (=> b!1405819 m!1294811))

(declare-fun m!1294813 () Bool)

(assert (=> b!1405819 m!1294813))

(assert (=> b!1405819 m!1294813))

(assert (=> b!1405819 m!1294811))

(declare-fun m!1294815 () Bool)

(assert (=> b!1405819 m!1294815))

(declare-fun m!1294817 () Bool)

(assert (=> b!1405820 m!1294817))

(assert (=> b!1405825 m!1294803))

(declare-fun m!1294819 () Bool)

(assert (=> b!1405825 m!1294819))

(assert (=> b!1405825 m!1294803))

(declare-fun m!1294821 () Bool)

(assert (=> b!1405825 m!1294821))

(assert (=> b!1405825 m!1294819))

(assert (=> b!1405825 m!1294803))

(declare-fun m!1294823 () Bool)

(assert (=> b!1405825 m!1294823))

(declare-fun m!1294825 () Bool)

(assert (=> b!1405825 m!1294825))

(declare-fun m!1294827 () Bool)

(assert (=> b!1405822 m!1294827))

(assert (=> b!1405822 m!1294827))

(declare-fun m!1294829 () Bool)

(assert (=> b!1405822 m!1294829))

(check-sat (not b!1405820) (not b!1405821) (not b!1405818) (not b!1405825) (not b!1405819) (not start!120870) (not b!1405824) (not b!1405822))
