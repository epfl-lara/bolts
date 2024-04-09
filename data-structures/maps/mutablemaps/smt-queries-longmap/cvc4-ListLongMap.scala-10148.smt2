; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119696 () Bool)

(assert start!119696)

(declare-fun b!1393725 () Bool)

(declare-fun res!933247 () Bool)

(declare-fun e!789187 () Bool)

(assert (=> b!1393725 (=> (not res!933247) (not e!789187))))

(declare-datatypes ((array!95296 0))(
  ( (array!95297 (arr!46002 (Array (_ BitVec 32) (_ BitVec 64))) (size!46553 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95296)

(declare-datatypes ((List!32701 0))(
  ( (Nil!32698) (Cons!32697 (h!33930 (_ BitVec 64)) (t!47402 List!32701)) )
))
(declare-fun arrayNoDuplicates!0 (array!95296 (_ BitVec 32) List!32701) Bool)

(assert (=> b!1393725 (= res!933247 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32698))))

(declare-fun b!1393726 () Bool)

(declare-fun res!933246 () Bool)

(assert (=> b!1393726 (=> (not res!933246) (not e!789187))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1393726 (= res!933246 (and (= (size!46553 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46553 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46553 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!933248 () Bool)

(assert (=> start!119696 (=> (not res!933248) (not e!789187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119696 (= res!933248 (validMask!0 mask!2840))))

(assert (=> start!119696 e!789187))

(assert (=> start!119696 true))

(declare-fun array_inv!34947 (array!95296) Bool)

(assert (=> start!119696 (array_inv!34947 a!2901)))

(declare-fun e!789185 () Bool)

(declare-fun b!1393727 () Bool)

(declare-datatypes ((SeekEntryResult!10341 0))(
  ( (MissingZero!10341 (index!43734 (_ BitVec 32))) (Found!10341 (index!43735 (_ BitVec 32))) (Intermediate!10341 (undefined!11153 Bool) (index!43736 (_ BitVec 32)) (x!125412 (_ BitVec 32))) (Undefined!10341) (MissingVacant!10341 (index!43737 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95296 (_ BitVec 32)) SeekEntryResult!10341)

(assert (=> b!1393727 (= e!789185 (= (seekEntryOrOpen!0 (select (arr!46002 a!2901) j!112) a!2901 mask!2840) (Found!10341 j!112)))))

(declare-fun b!1393728 () Bool)

(declare-fun res!933249 () Bool)

(assert (=> b!1393728 (=> (not res!933249) (not e!789187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95296 (_ BitVec 32)) Bool)

(assert (=> b!1393728 (= res!933249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393729 () Bool)

(declare-fun e!789188 () Bool)

(assert (=> b!1393729 (= e!789187 (not e!789188))))

(declare-fun res!933242 () Bool)

(assert (=> b!1393729 (=> res!933242 e!789188)))

(declare-fun lt!612070 () SeekEntryResult!10341)

(assert (=> b!1393729 (= res!933242 (or (not (is-Intermediate!10341 lt!612070)) (undefined!11153 lt!612070)))))

(assert (=> b!1393729 e!789185))

(declare-fun res!933245 () Bool)

(assert (=> b!1393729 (=> (not res!933245) (not e!789185))))

(assert (=> b!1393729 (= res!933245 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46636 0))(
  ( (Unit!46637) )
))
(declare-fun lt!612069 () Unit!46636)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95296 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46636)

(assert (=> b!1393729 (= lt!612069 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95296 (_ BitVec 32)) SeekEntryResult!10341)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393729 (= lt!612070 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46002 a!2901) j!112) mask!2840) (select (arr!46002 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393730 () Bool)

(assert (=> b!1393730 (= e!789188 true)))

(declare-fun lt!612068 () SeekEntryResult!10341)

(assert (=> b!1393730 (= lt!612068 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46002 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46002 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95297 (store (arr!46002 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46553 a!2901)) mask!2840))))

(declare-fun b!1393731 () Bool)

(declare-fun res!933243 () Bool)

(assert (=> b!1393731 (=> (not res!933243) (not e!789187))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393731 (= res!933243 (validKeyInArray!0 (select (arr!46002 a!2901) i!1037)))))

(declare-fun b!1393732 () Bool)

(declare-fun res!933244 () Bool)

(assert (=> b!1393732 (=> (not res!933244) (not e!789187))))

(assert (=> b!1393732 (= res!933244 (validKeyInArray!0 (select (arr!46002 a!2901) j!112)))))

(assert (= (and start!119696 res!933248) b!1393726))

(assert (= (and b!1393726 res!933246) b!1393731))

(assert (= (and b!1393731 res!933243) b!1393732))

(assert (= (and b!1393732 res!933244) b!1393728))

(assert (= (and b!1393728 res!933249) b!1393725))

(assert (= (and b!1393725 res!933247) b!1393729))

(assert (= (and b!1393729 res!933245) b!1393727))

(assert (= (and b!1393729 (not res!933242)) b!1393730))

(declare-fun m!1279849 () Bool)

(assert (=> b!1393725 m!1279849))

(declare-fun m!1279851 () Bool)

(assert (=> b!1393729 m!1279851))

(declare-fun m!1279853 () Bool)

(assert (=> b!1393729 m!1279853))

(assert (=> b!1393729 m!1279851))

(declare-fun m!1279855 () Bool)

(assert (=> b!1393729 m!1279855))

(assert (=> b!1393729 m!1279853))

(assert (=> b!1393729 m!1279851))

(declare-fun m!1279857 () Bool)

(assert (=> b!1393729 m!1279857))

(declare-fun m!1279859 () Bool)

(assert (=> b!1393729 m!1279859))

(declare-fun m!1279861 () Bool)

(assert (=> b!1393730 m!1279861))

(declare-fun m!1279863 () Bool)

(assert (=> b!1393730 m!1279863))

(assert (=> b!1393730 m!1279863))

(declare-fun m!1279865 () Bool)

(assert (=> b!1393730 m!1279865))

(assert (=> b!1393730 m!1279865))

(assert (=> b!1393730 m!1279863))

(declare-fun m!1279867 () Bool)

(assert (=> b!1393730 m!1279867))

(declare-fun m!1279869 () Bool)

(assert (=> start!119696 m!1279869))

(declare-fun m!1279871 () Bool)

(assert (=> start!119696 m!1279871))

(declare-fun m!1279873 () Bool)

(assert (=> b!1393728 m!1279873))

(assert (=> b!1393727 m!1279851))

(assert (=> b!1393727 m!1279851))

(declare-fun m!1279875 () Bool)

(assert (=> b!1393727 m!1279875))

(declare-fun m!1279877 () Bool)

(assert (=> b!1393731 m!1279877))

(assert (=> b!1393731 m!1279877))

(declare-fun m!1279879 () Bool)

(assert (=> b!1393731 m!1279879))

(assert (=> b!1393732 m!1279851))

(assert (=> b!1393732 m!1279851))

(declare-fun m!1279881 () Bool)

(assert (=> b!1393732 m!1279881))

(push 1)

(assert (not b!1393729))

(assert (not b!1393725))

(assert (not start!119696))

(assert (not b!1393727))

(assert (not b!1393732))

(assert (not b!1393728))

(assert (not b!1393731))

(assert (not b!1393730))

(check-sat)

(pop 1)

(push 1)

(check-sat)

