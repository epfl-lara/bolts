; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119648 () Bool)

(assert start!119648)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95248 0))(
  ( (array!95249 (arr!45978 (Array (_ BitVec 32) (_ BitVec 64))) (size!46529 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95248)

(declare-fun e!788897 () Bool)

(declare-fun b!1393149 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10317 0))(
  ( (MissingZero!10317 (index!43638 (_ BitVec 32))) (Found!10317 (index!43639 (_ BitVec 32))) (Intermediate!10317 (undefined!11129 Bool) (index!43640 (_ BitVec 32)) (x!125324 (_ BitVec 32))) (Undefined!10317) (MissingVacant!10317 (index!43641 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95248 (_ BitVec 32)) SeekEntryResult!10317)

(assert (=> b!1393149 (= e!788897 (= (seekEntryOrOpen!0 (select (arr!45978 a!2901) j!112) a!2901 mask!2840) (Found!10317 j!112)))))

(declare-fun b!1393150 () Bool)

(declare-fun res!932668 () Bool)

(declare-fun e!788899 () Bool)

(assert (=> b!1393150 (=> (not res!932668) (not e!788899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95248 (_ BitVec 32)) Bool)

(assert (=> b!1393150 (= res!932668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393152 () Bool)

(declare-fun e!788898 () Bool)

(assert (=> b!1393152 (= e!788898 true)))

(declare-fun lt!611854 () SeekEntryResult!10317)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95248 (_ BitVec 32)) SeekEntryResult!10317)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393152 (= lt!611854 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45978 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45978 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95249 (store (arr!45978 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46529 a!2901)) mask!2840))))

(declare-fun b!1393153 () Bool)

(declare-fun res!932667 () Bool)

(assert (=> b!1393153 (=> (not res!932667) (not e!788899))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393153 (= res!932667 (validKeyInArray!0 (select (arr!45978 a!2901) i!1037)))))

(declare-fun b!1393154 () Bool)

(assert (=> b!1393154 (= e!788899 (not e!788898))))

(declare-fun res!932672 () Bool)

(assert (=> b!1393154 (=> res!932672 e!788898)))

(declare-fun lt!611852 () SeekEntryResult!10317)

(assert (=> b!1393154 (= res!932672 (or (not (is-Intermediate!10317 lt!611852)) (undefined!11129 lt!611852)))))

(assert (=> b!1393154 e!788897))

(declare-fun res!932671 () Bool)

(assert (=> b!1393154 (=> (not res!932671) (not e!788897))))

(assert (=> b!1393154 (= res!932671 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46588 0))(
  ( (Unit!46589) )
))
(declare-fun lt!611853 () Unit!46588)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95248 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46588)

(assert (=> b!1393154 (= lt!611853 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393154 (= lt!611852 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45978 a!2901) j!112) mask!2840) (select (arr!45978 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!932670 () Bool)

(assert (=> start!119648 (=> (not res!932670) (not e!788899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119648 (= res!932670 (validMask!0 mask!2840))))

(assert (=> start!119648 e!788899))

(assert (=> start!119648 true))

(declare-fun array_inv!34923 (array!95248) Bool)

(assert (=> start!119648 (array_inv!34923 a!2901)))

(declare-fun b!1393151 () Bool)

(declare-fun res!932673 () Bool)

(assert (=> b!1393151 (=> (not res!932673) (not e!788899))))

(assert (=> b!1393151 (= res!932673 (validKeyInArray!0 (select (arr!45978 a!2901) j!112)))))

(declare-fun b!1393155 () Bool)

(declare-fun res!932666 () Bool)

(assert (=> b!1393155 (=> (not res!932666) (not e!788899))))

(declare-datatypes ((List!32677 0))(
  ( (Nil!32674) (Cons!32673 (h!33906 (_ BitVec 64)) (t!47378 List!32677)) )
))
(declare-fun arrayNoDuplicates!0 (array!95248 (_ BitVec 32) List!32677) Bool)

(assert (=> b!1393155 (= res!932666 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32674))))

(declare-fun b!1393156 () Bool)

(declare-fun res!932669 () Bool)

(assert (=> b!1393156 (=> (not res!932669) (not e!788899))))

(assert (=> b!1393156 (= res!932669 (and (= (size!46529 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46529 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46529 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119648 res!932670) b!1393156))

(assert (= (and b!1393156 res!932669) b!1393153))

(assert (= (and b!1393153 res!932667) b!1393151))

(assert (= (and b!1393151 res!932673) b!1393150))

(assert (= (and b!1393150 res!932668) b!1393155))

(assert (= (and b!1393155 res!932666) b!1393154))

(assert (= (and b!1393154 res!932671) b!1393149))

(assert (= (and b!1393154 (not res!932672)) b!1393152))

(declare-fun m!1279033 () Bool)

(assert (=> b!1393149 m!1279033))

(assert (=> b!1393149 m!1279033))

(declare-fun m!1279035 () Bool)

(assert (=> b!1393149 m!1279035))

(declare-fun m!1279037 () Bool)

(assert (=> b!1393152 m!1279037))

(declare-fun m!1279039 () Bool)

(assert (=> b!1393152 m!1279039))

(assert (=> b!1393152 m!1279039))

(declare-fun m!1279041 () Bool)

(assert (=> b!1393152 m!1279041))

(assert (=> b!1393152 m!1279041))

(assert (=> b!1393152 m!1279039))

(declare-fun m!1279043 () Bool)

(assert (=> b!1393152 m!1279043))

(declare-fun m!1279045 () Bool)

(assert (=> b!1393153 m!1279045))

(assert (=> b!1393153 m!1279045))

(declare-fun m!1279047 () Bool)

(assert (=> b!1393153 m!1279047))

(declare-fun m!1279049 () Bool)

(assert (=> b!1393150 m!1279049))

(declare-fun m!1279051 () Bool)

(assert (=> start!119648 m!1279051))

(declare-fun m!1279053 () Bool)

(assert (=> start!119648 m!1279053))

(declare-fun m!1279055 () Bool)

(assert (=> b!1393155 m!1279055))

(assert (=> b!1393151 m!1279033))

(assert (=> b!1393151 m!1279033))

(declare-fun m!1279057 () Bool)

(assert (=> b!1393151 m!1279057))

(assert (=> b!1393154 m!1279033))

(declare-fun m!1279059 () Bool)

(assert (=> b!1393154 m!1279059))

(assert (=> b!1393154 m!1279033))

(declare-fun m!1279061 () Bool)

(assert (=> b!1393154 m!1279061))

(assert (=> b!1393154 m!1279059))

(assert (=> b!1393154 m!1279033))

(declare-fun m!1279063 () Bool)

(assert (=> b!1393154 m!1279063))

(declare-fun m!1279065 () Bool)

(assert (=> b!1393154 m!1279065))

(push 1)

(assert (not start!119648))

(assert (not b!1393149))

(assert (not b!1393151))

(assert (not b!1393154))

(assert (not b!1393152))

(assert (not b!1393155))

(assert (not b!1393150))

(assert (not b!1393153))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

