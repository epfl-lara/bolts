; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122154 () Bool)

(assert start!122154)

(declare-fun b!1416960 () Bool)

(declare-fun res!952947 () Bool)

(declare-fun e!801975 () Bool)

(assert (=> b!1416960 (=> (not res!952947) (not e!801975))))

(declare-datatypes ((array!96707 0))(
  ( (array!96708 (arr!46679 (Array (_ BitVec 32) (_ BitVec 64))) (size!47230 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96707)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96707 (_ BitVec 32)) Bool)

(assert (=> b!1416960 (= res!952947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416961 () Bool)

(declare-fun res!952948 () Bool)

(assert (=> b!1416961 (=> (not res!952948) (not e!801975))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1416961 (= res!952948 (and (= (size!47230 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47230 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47230 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1416962 () Bool)

(declare-fun res!952946 () Bool)

(assert (=> b!1416962 (=> (not res!952946) (not e!801975))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416962 (= res!952946 (validKeyInArray!0 (select (arr!46679 a!2901) i!1037)))))

(declare-fun b!1416963 () Bool)

(declare-fun e!801977 () Bool)

(declare-datatypes ((SeekEntryResult!11012 0))(
  ( (MissingZero!11012 (index!46439 (_ BitVec 32))) (Found!11012 (index!46440 (_ BitVec 32))) (Intermediate!11012 (undefined!11824 Bool) (index!46441 (_ BitVec 32)) (x!128044 (_ BitVec 32))) (Undefined!11012) (MissingVacant!11012 (index!46442 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96707 (_ BitVec 32)) SeekEntryResult!11012)

(assert (=> b!1416963 (= e!801977 (= (seekEntryOrOpen!0 (select (arr!46679 a!2901) j!112) a!2901 mask!2840) (Found!11012 j!112)))))

(declare-fun res!952951 () Bool)

(assert (=> start!122154 (=> (not res!952951) (not e!801975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122154 (= res!952951 (validMask!0 mask!2840))))

(assert (=> start!122154 e!801975))

(assert (=> start!122154 true))

(declare-fun array_inv!35624 (array!96707) Bool)

(assert (=> start!122154 (array_inv!35624 a!2901)))

(declare-fun b!1416964 () Bool)

(declare-fun e!801976 () Bool)

(assert (=> b!1416964 (= e!801975 (not e!801976))))

(declare-fun res!952952 () Bool)

(assert (=> b!1416964 (=> res!952952 e!801976)))

(declare-fun lt!625153 () SeekEntryResult!11012)

(get-info :version)

(assert (=> b!1416964 (= res!952952 (or (not ((_ is Intermediate!11012) lt!625153)) (undefined!11824 lt!625153)))))

(assert (=> b!1416964 e!801977))

(declare-fun res!952950 () Bool)

(assert (=> b!1416964 (=> (not res!952950) (not e!801977))))

(assert (=> b!1416964 (= res!952950 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47948 0))(
  ( (Unit!47949) )
))
(declare-fun lt!625152 () Unit!47948)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96707 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47948)

(assert (=> b!1416964 (= lt!625152 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96707 (_ BitVec 32)) SeekEntryResult!11012)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416964 (= lt!625153 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46679 a!2901) j!112) mask!2840) (select (arr!46679 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416965 () Bool)

(assert (=> b!1416965 (= e!801976 true)))

(declare-fun lt!625151 () SeekEntryResult!11012)

(assert (=> b!1416965 (= lt!625151 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46679 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46679 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96708 (store (arr!46679 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47230 a!2901)) mask!2840))))

(declare-fun b!1416966 () Bool)

(declare-fun res!952949 () Bool)

(assert (=> b!1416966 (=> (not res!952949) (not e!801975))))

(assert (=> b!1416966 (= res!952949 (validKeyInArray!0 (select (arr!46679 a!2901) j!112)))))

(declare-fun b!1416967 () Bool)

(declare-fun res!952953 () Bool)

(assert (=> b!1416967 (=> (not res!952953) (not e!801975))))

(declare-datatypes ((List!33378 0))(
  ( (Nil!33375) (Cons!33374 (h!34664 (_ BitVec 64)) (t!48079 List!33378)) )
))
(declare-fun arrayNoDuplicates!0 (array!96707 (_ BitVec 32) List!33378) Bool)

(assert (=> b!1416967 (= res!952953 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33375))))

(assert (= (and start!122154 res!952951) b!1416961))

(assert (= (and b!1416961 res!952948) b!1416962))

(assert (= (and b!1416962 res!952946) b!1416966))

(assert (= (and b!1416966 res!952949) b!1416960))

(assert (= (and b!1416960 res!952947) b!1416967))

(assert (= (and b!1416967 res!952953) b!1416964))

(assert (= (and b!1416964 res!952950) b!1416963))

(assert (= (and b!1416964 (not res!952952)) b!1416965))

(declare-fun m!1307787 () Bool)

(assert (=> start!122154 m!1307787))

(declare-fun m!1307789 () Bool)

(assert (=> start!122154 m!1307789))

(declare-fun m!1307791 () Bool)

(assert (=> b!1416963 m!1307791))

(assert (=> b!1416963 m!1307791))

(declare-fun m!1307793 () Bool)

(assert (=> b!1416963 m!1307793))

(declare-fun m!1307795 () Bool)

(assert (=> b!1416965 m!1307795))

(declare-fun m!1307797 () Bool)

(assert (=> b!1416965 m!1307797))

(assert (=> b!1416965 m!1307797))

(declare-fun m!1307799 () Bool)

(assert (=> b!1416965 m!1307799))

(assert (=> b!1416965 m!1307799))

(assert (=> b!1416965 m!1307797))

(declare-fun m!1307801 () Bool)

(assert (=> b!1416965 m!1307801))

(declare-fun m!1307803 () Bool)

(assert (=> b!1416967 m!1307803))

(declare-fun m!1307805 () Bool)

(assert (=> b!1416960 m!1307805))

(declare-fun m!1307807 () Bool)

(assert (=> b!1416962 m!1307807))

(assert (=> b!1416962 m!1307807))

(declare-fun m!1307809 () Bool)

(assert (=> b!1416962 m!1307809))

(assert (=> b!1416966 m!1307791))

(assert (=> b!1416966 m!1307791))

(declare-fun m!1307811 () Bool)

(assert (=> b!1416966 m!1307811))

(assert (=> b!1416964 m!1307791))

(declare-fun m!1307813 () Bool)

(assert (=> b!1416964 m!1307813))

(assert (=> b!1416964 m!1307791))

(declare-fun m!1307815 () Bool)

(assert (=> b!1416964 m!1307815))

(assert (=> b!1416964 m!1307813))

(assert (=> b!1416964 m!1307791))

(declare-fun m!1307817 () Bool)

(assert (=> b!1416964 m!1307817))

(declare-fun m!1307819 () Bool)

(assert (=> b!1416964 m!1307819))

(check-sat (not b!1416965) (not b!1416963) (not b!1416966) (not b!1416964) (not b!1416960) (not start!122154) (not b!1416962) (not b!1416967))
