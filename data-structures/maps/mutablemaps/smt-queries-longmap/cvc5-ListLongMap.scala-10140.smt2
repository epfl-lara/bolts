; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119644 () Bool)

(assert start!119644)

(declare-fun res!932624 () Bool)

(declare-fun e!788874 () Bool)

(assert (=> start!119644 (=> (not res!932624) (not e!788874))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119644 (= res!932624 (validMask!0 mask!2840))))

(assert (=> start!119644 e!788874))

(assert (=> start!119644 true))

(declare-datatypes ((array!95244 0))(
  ( (array!95245 (arr!45976 (Array (_ BitVec 32) (_ BitVec 64))) (size!46527 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95244)

(declare-fun array_inv!34921 (array!95244) Bool)

(assert (=> start!119644 (array_inv!34921 a!2901)))

(declare-fun b!1393101 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!788876 () Bool)

(declare-datatypes ((SeekEntryResult!10315 0))(
  ( (MissingZero!10315 (index!43630 (_ BitVec 32))) (Found!10315 (index!43631 (_ BitVec 32))) (Intermediate!10315 (undefined!11127 Bool) (index!43632 (_ BitVec 32)) (x!125322 (_ BitVec 32))) (Undefined!10315) (MissingVacant!10315 (index!43633 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95244 (_ BitVec 32)) SeekEntryResult!10315)

(assert (=> b!1393101 (= e!788876 (= (seekEntryOrOpen!0 (select (arr!45976 a!2901) j!112) a!2901 mask!2840) (Found!10315 j!112)))))

(declare-fun b!1393102 () Bool)

(declare-fun res!932619 () Bool)

(assert (=> b!1393102 (=> (not res!932619) (not e!788874))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95244 (_ BitVec 32)) Bool)

(assert (=> b!1393102 (= res!932619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393103 () Bool)

(declare-fun res!932623 () Bool)

(assert (=> b!1393103 (=> (not res!932623) (not e!788874))))

(declare-datatypes ((List!32675 0))(
  ( (Nil!32672) (Cons!32671 (h!33904 (_ BitVec 64)) (t!47376 List!32675)) )
))
(declare-fun arrayNoDuplicates!0 (array!95244 (_ BitVec 32) List!32675) Bool)

(assert (=> b!1393103 (= res!932623 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32672))))

(declare-fun b!1393104 () Bool)

(declare-fun res!932622 () Bool)

(assert (=> b!1393104 (=> (not res!932622) (not e!788874))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1393104 (= res!932622 (and (= (size!46527 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46527 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46527 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393105 () Bool)

(declare-fun e!788875 () Bool)

(assert (=> b!1393105 (= e!788874 (not e!788875))))

(declare-fun res!932621 () Bool)

(assert (=> b!1393105 (=> res!932621 e!788875)))

(declare-fun lt!611834 () SeekEntryResult!10315)

(assert (=> b!1393105 (= res!932621 (or (not (is-Intermediate!10315 lt!611834)) (undefined!11127 lt!611834)))))

(assert (=> b!1393105 e!788876))

(declare-fun res!932620 () Bool)

(assert (=> b!1393105 (=> (not res!932620) (not e!788876))))

(assert (=> b!1393105 (= res!932620 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46584 0))(
  ( (Unit!46585) )
))
(declare-fun lt!611836 () Unit!46584)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95244 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46584)

(assert (=> b!1393105 (= lt!611836 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95244 (_ BitVec 32)) SeekEntryResult!10315)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393105 (= lt!611834 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45976 a!2901) j!112) mask!2840) (select (arr!45976 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393106 () Bool)

(declare-fun res!932625 () Bool)

(assert (=> b!1393106 (=> (not res!932625) (not e!788874))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393106 (= res!932625 (validKeyInArray!0 (select (arr!45976 a!2901) j!112)))))

(declare-fun b!1393107 () Bool)

(declare-fun res!932618 () Bool)

(assert (=> b!1393107 (=> (not res!932618) (not e!788874))))

(assert (=> b!1393107 (= res!932618 (validKeyInArray!0 (select (arr!45976 a!2901) i!1037)))))

(declare-fun b!1393108 () Bool)

(assert (=> b!1393108 (= e!788875 true)))

(declare-fun lt!611835 () SeekEntryResult!10315)

(assert (=> b!1393108 (= lt!611835 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45976 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45976 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95245 (store (arr!45976 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46527 a!2901)) mask!2840))))

(assert (= (and start!119644 res!932624) b!1393104))

(assert (= (and b!1393104 res!932622) b!1393107))

(assert (= (and b!1393107 res!932618) b!1393106))

(assert (= (and b!1393106 res!932625) b!1393102))

(assert (= (and b!1393102 res!932619) b!1393103))

(assert (= (and b!1393103 res!932623) b!1393105))

(assert (= (and b!1393105 res!932620) b!1393101))

(assert (= (and b!1393105 (not res!932621)) b!1393108))

(declare-fun m!1278965 () Bool)

(assert (=> b!1393103 m!1278965))

(declare-fun m!1278967 () Bool)

(assert (=> b!1393107 m!1278967))

(assert (=> b!1393107 m!1278967))

(declare-fun m!1278969 () Bool)

(assert (=> b!1393107 m!1278969))

(declare-fun m!1278971 () Bool)

(assert (=> start!119644 m!1278971))

(declare-fun m!1278973 () Bool)

(assert (=> start!119644 m!1278973))

(declare-fun m!1278975 () Bool)

(assert (=> b!1393108 m!1278975))

(declare-fun m!1278977 () Bool)

(assert (=> b!1393108 m!1278977))

(assert (=> b!1393108 m!1278977))

(declare-fun m!1278979 () Bool)

(assert (=> b!1393108 m!1278979))

(assert (=> b!1393108 m!1278979))

(assert (=> b!1393108 m!1278977))

(declare-fun m!1278981 () Bool)

(assert (=> b!1393108 m!1278981))

(declare-fun m!1278983 () Bool)

(assert (=> b!1393105 m!1278983))

(declare-fun m!1278985 () Bool)

(assert (=> b!1393105 m!1278985))

(assert (=> b!1393105 m!1278983))

(declare-fun m!1278987 () Bool)

(assert (=> b!1393105 m!1278987))

(assert (=> b!1393105 m!1278985))

(assert (=> b!1393105 m!1278983))

(declare-fun m!1278989 () Bool)

(assert (=> b!1393105 m!1278989))

(declare-fun m!1278991 () Bool)

(assert (=> b!1393105 m!1278991))

(declare-fun m!1278993 () Bool)

(assert (=> b!1393102 m!1278993))

(assert (=> b!1393101 m!1278983))

(assert (=> b!1393101 m!1278983))

(declare-fun m!1278995 () Bool)

(assert (=> b!1393101 m!1278995))

(assert (=> b!1393106 m!1278983))

(assert (=> b!1393106 m!1278983))

(declare-fun m!1278997 () Bool)

(assert (=> b!1393106 m!1278997))

(push 1)

(assert (not b!1393108))

(assert (not b!1393102))

(assert (not b!1393101))

(assert (not b!1393106))

(assert (not b!1393103))

(assert (not start!119644))

(assert (not b!1393107))

(assert (not b!1393105))

(check-sat)

