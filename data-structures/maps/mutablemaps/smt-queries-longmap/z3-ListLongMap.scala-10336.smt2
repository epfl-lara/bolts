; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121542 () Bool)

(assert start!121542)

(declare-fun b!1411736 () Bool)

(declare-fun res!949078 () Bool)

(declare-fun e!798921 () Bool)

(assert (=> b!1411736 (=> (not res!949078) (not e!798921))))

(declare-datatypes ((array!96461 0))(
  ( (array!96462 (arr!46565 (Array (_ BitVec 32) (_ BitVec 64))) (size!47116 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96461)

(declare-datatypes ((List!33264 0))(
  ( (Nil!33261) (Cons!33260 (h!34532 (_ BitVec 64)) (t!47965 List!33264)) )
))
(declare-fun arrayNoDuplicates!0 (array!96461 (_ BitVec 32) List!33264) Bool)

(assert (=> b!1411736 (= res!949078 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33261))))

(declare-fun b!1411737 () Bool)

(declare-fun e!798923 () Bool)

(assert (=> b!1411737 (= e!798921 (not e!798923))))

(declare-fun res!949075 () Bool)

(assert (=> b!1411737 (=> res!949075 e!798923)))

(declare-datatypes ((SeekEntryResult!10898 0))(
  ( (MissingZero!10898 (index!45968 (_ BitVec 32))) (Found!10898 (index!45969 (_ BitVec 32))) (Intermediate!10898 (undefined!11710 Bool) (index!45970 (_ BitVec 32)) (x!127560 (_ BitVec 32))) (Undefined!10898) (MissingVacant!10898 (index!45971 (_ BitVec 32))) )
))
(declare-fun lt!621909 () SeekEntryResult!10898)

(get-info :version)

(assert (=> b!1411737 (= res!949075 (or (not ((_ is Intermediate!10898) lt!621909)) (undefined!11710 lt!621909)))))

(declare-fun e!798920 () Bool)

(assert (=> b!1411737 e!798920))

(declare-fun res!949080 () Bool)

(assert (=> b!1411737 (=> (not res!949080) (not e!798920))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96461 (_ BitVec 32)) Bool)

(assert (=> b!1411737 (= res!949080 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47720 0))(
  ( (Unit!47721) )
))
(declare-fun lt!621912 () Unit!47720)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96461 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47720)

(assert (=> b!1411737 (= lt!621912 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621913 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96461 (_ BitVec 32)) SeekEntryResult!10898)

(assert (=> b!1411737 (= lt!621909 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621913 (select (arr!46565 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411737 (= lt!621913 (toIndex!0 (select (arr!46565 a!2901) j!112) mask!2840))))

(declare-fun b!1411738 () Bool)

(declare-fun res!949079 () Bool)

(assert (=> b!1411738 (=> (not res!949079) (not e!798921))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411738 (= res!949079 (validKeyInArray!0 (select (arr!46565 a!2901) i!1037)))))

(declare-fun b!1411739 () Bool)

(declare-fun res!949076 () Bool)

(assert (=> b!1411739 (=> (not res!949076) (not e!798921))))

(assert (=> b!1411739 (= res!949076 (validKeyInArray!0 (select (arr!46565 a!2901) j!112)))))

(declare-fun b!1411740 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96461 (_ BitVec 32)) SeekEntryResult!10898)

(assert (=> b!1411740 (= e!798920 (= (seekEntryOrOpen!0 (select (arr!46565 a!2901) j!112) a!2901 mask!2840) (Found!10898 j!112)))))

(declare-fun b!1411741 () Bool)

(declare-fun e!798919 () Bool)

(assert (=> b!1411741 (= e!798919 true)))

(declare-fun lt!621911 () SeekEntryResult!10898)

(assert (=> b!1411741 (and (not (undefined!11710 lt!621911)) (= (index!45970 lt!621911) i!1037) (bvslt (x!127560 lt!621911) (x!127560 lt!621909)) (= (select (store (arr!46565 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45970 lt!621911)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!621910 () Unit!47720)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96461 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47720)

(assert (=> b!1411741 (= lt!621910 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621913 (x!127560 lt!621909) (index!45970 lt!621909) (x!127560 lt!621911) (index!45970 lt!621911) (undefined!11710 lt!621911) mask!2840))))

(declare-fun b!1411743 () Bool)

(declare-fun res!949072 () Bool)

(assert (=> b!1411743 (=> (not res!949072) (not e!798921))))

(assert (=> b!1411743 (= res!949072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411744 () Bool)

(declare-fun res!949073 () Bool)

(assert (=> b!1411744 (=> (not res!949073) (not e!798921))))

(assert (=> b!1411744 (= res!949073 (and (= (size!47116 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47116 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47116 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411742 () Bool)

(assert (=> b!1411742 (= e!798923 e!798919)))

(declare-fun res!949074 () Bool)

(assert (=> b!1411742 (=> res!949074 e!798919)))

(assert (=> b!1411742 (= res!949074 (or (= lt!621909 lt!621911) (not ((_ is Intermediate!10898) lt!621911))))))

(declare-fun lt!621908 () (_ BitVec 64))

(assert (=> b!1411742 (= lt!621911 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621908 mask!2840) lt!621908 (array!96462 (store (arr!46565 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47116 a!2901)) mask!2840))))

(assert (=> b!1411742 (= lt!621908 (select (store (arr!46565 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun res!949077 () Bool)

(assert (=> start!121542 (=> (not res!949077) (not e!798921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121542 (= res!949077 (validMask!0 mask!2840))))

(assert (=> start!121542 e!798921))

(assert (=> start!121542 true))

(declare-fun array_inv!35510 (array!96461) Bool)

(assert (=> start!121542 (array_inv!35510 a!2901)))

(assert (= (and start!121542 res!949077) b!1411744))

(assert (= (and b!1411744 res!949073) b!1411738))

(assert (= (and b!1411738 res!949079) b!1411739))

(assert (= (and b!1411739 res!949076) b!1411743))

(assert (= (and b!1411743 res!949072) b!1411736))

(assert (= (and b!1411736 res!949078) b!1411737))

(assert (= (and b!1411737 res!949080) b!1411740))

(assert (= (and b!1411737 (not res!949075)) b!1411742))

(assert (= (and b!1411742 (not res!949074)) b!1411741))

(declare-fun m!1301797 () Bool)

(assert (=> b!1411736 m!1301797))

(declare-fun m!1301799 () Bool)

(assert (=> b!1411743 m!1301799))

(declare-fun m!1301801 () Bool)

(assert (=> b!1411739 m!1301801))

(assert (=> b!1411739 m!1301801))

(declare-fun m!1301803 () Bool)

(assert (=> b!1411739 m!1301803))

(assert (=> b!1411737 m!1301801))

(declare-fun m!1301805 () Bool)

(assert (=> b!1411737 m!1301805))

(assert (=> b!1411737 m!1301801))

(assert (=> b!1411737 m!1301801))

(declare-fun m!1301807 () Bool)

(assert (=> b!1411737 m!1301807))

(declare-fun m!1301809 () Bool)

(assert (=> b!1411737 m!1301809))

(declare-fun m!1301811 () Bool)

(assert (=> b!1411737 m!1301811))

(declare-fun m!1301813 () Bool)

(assert (=> b!1411738 m!1301813))

(assert (=> b!1411738 m!1301813))

(declare-fun m!1301815 () Bool)

(assert (=> b!1411738 m!1301815))

(declare-fun m!1301817 () Bool)

(assert (=> start!121542 m!1301817))

(declare-fun m!1301819 () Bool)

(assert (=> start!121542 m!1301819))

(assert (=> b!1411740 m!1301801))

(assert (=> b!1411740 m!1301801))

(declare-fun m!1301821 () Bool)

(assert (=> b!1411740 m!1301821))

(declare-fun m!1301823 () Bool)

(assert (=> b!1411742 m!1301823))

(declare-fun m!1301825 () Bool)

(assert (=> b!1411742 m!1301825))

(assert (=> b!1411742 m!1301823))

(declare-fun m!1301827 () Bool)

(assert (=> b!1411742 m!1301827))

(declare-fun m!1301829 () Bool)

(assert (=> b!1411742 m!1301829))

(assert (=> b!1411741 m!1301825))

(declare-fun m!1301831 () Bool)

(assert (=> b!1411741 m!1301831))

(declare-fun m!1301833 () Bool)

(assert (=> b!1411741 m!1301833))

(check-sat (not b!1411741) (not b!1411737) (not b!1411736) (not b!1411740) (not b!1411738) (not b!1411739) (not b!1411743) (not start!121542) (not b!1411742))
(check-sat)
