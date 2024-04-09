; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121238 () Bool)

(assert start!121238)

(declare-fun res!946973 () Bool)

(declare-fun e!797468 () Bool)

(assert (=> start!121238 (=> (not res!946973) (not e!797468))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121238 (= res!946973 (validMask!0 mask!2840))))

(assert (=> start!121238 e!797468))

(assert (=> start!121238 true))

(declare-datatypes ((array!96310 0))(
  ( (array!96311 (arr!46494 (Array (_ BitVec 32) (_ BitVec 64))) (size!47045 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96310)

(declare-fun array_inv!35439 (array!96310) Bool)

(assert (=> start!121238 (array_inv!35439 a!2901)))

(declare-fun b!1409136 () Bool)

(declare-fun e!797470 () Bool)

(assert (=> b!1409136 (= e!797468 (not e!797470))))

(declare-fun res!946972 () Bool)

(assert (=> b!1409136 (=> res!946972 e!797470)))

(declare-datatypes ((SeekEntryResult!10827 0))(
  ( (MissingZero!10827 (index!45684 (_ BitVec 32))) (Found!10827 (index!45685 (_ BitVec 32))) (Intermediate!10827 (undefined!11639 Bool) (index!45686 (_ BitVec 32)) (x!127279 (_ BitVec 32))) (Undefined!10827) (MissingVacant!10827 (index!45687 (_ BitVec 32))) )
))
(declare-fun lt!620579 () SeekEntryResult!10827)

(assert (=> b!1409136 (= res!946972 (or (not (is-Intermediate!10827 lt!620579)) (undefined!11639 lt!620579)))))

(declare-fun e!797471 () Bool)

(assert (=> b!1409136 e!797471))

(declare-fun res!946971 () Bool)

(assert (=> b!1409136 (=> (not res!946971) (not e!797471))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96310 (_ BitVec 32)) Bool)

(assert (=> b!1409136 (= res!946971 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47578 0))(
  ( (Unit!47579) )
))
(declare-fun lt!620581 () Unit!47578)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96310 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47578)

(assert (=> b!1409136 (= lt!620581 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96310 (_ BitVec 32)) SeekEntryResult!10827)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409136 (= lt!620579 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46494 a!2901) j!112) mask!2840) (select (arr!46494 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409137 () Bool)

(declare-fun res!946974 () Bool)

(assert (=> b!1409137 (=> (not res!946974) (not e!797468))))

(assert (=> b!1409137 (= res!946974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409138 () Bool)

(declare-fun res!946970 () Bool)

(assert (=> b!1409138 (=> (not res!946970) (not e!797468))))

(declare-datatypes ((List!33193 0))(
  ( (Nil!33190) (Cons!33189 (h!34452 (_ BitVec 64)) (t!47894 List!33193)) )
))
(declare-fun arrayNoDuplicates!0 (array!96310 (_ BitVec 32) List!33193) Bool)

(assert (=> b!1409138 (= res!946970 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33190))))

(declare-fun b!1409139 () Bool)

(declare-fun res!946968 () Bool)

(assert (=> b!1409139 (=> (not res!946968) (not e!797468))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409139 (= res!946968 (validKeyInArray!0 (select (arr!46494 a!2901) j!112)))))

(declare-fun b!1409140 () Bool)

(declare-fun res!946967 () Bool)

(assert (=> b!1409140 (=> (not res!946967) (not e!797468))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1409140 (= res!946967 (and (= (size!47045 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47045 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47045 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409141 () Bool)

(assert (=> b!1409141 (= e!797470 true)))

(declare-fun lt!620580 () SeekEntryResult!10827)

(assert (=> b!1409141 (= lt!620580 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46494 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46494 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96311 (store (arr!46494 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47045 a!2901)) mask!2840))))

(declare-fun b!1409142 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96310 (_ BitVec 32)) SeekEntryResult!10827)

(assert (=> b!1409142 (= e!797471 (= (seekEntryOrOpen!0 (select (arr!46494 a!2901) j!112) a!2901 mask!2840) (Found!10827 j!112)))))

(declare-fun b!1409143 () Bool)

(declare-fun res!946969 () Bool)

(assert (=> b!1409143 (=> (not res!946969) (not e!797468))))

(assert (=> b!1409143 (= res!946969 (validKeyInArray!0 (select (arr!46494 a!2901) i!1037)))))

(assert (= (and start!121238 res!946973) b!1409140))

(assert (= (and b!1409140 res!946967) b!1409143))

(assert (= (and b!1409143 res!946969) b!1409139))

(assert (= (and b!1409139 res!946968) b!1409137))

(assert (= (and b!1409137 res!946974) b!1409138))

(assert (= (and b!1409138 res!946970) b!1409136))

(assert (= (and b!1409136 res!946971) b!1409142))

(assert (= (and b!1409136 (not res!946972)) b!1409141))

(declare-fun m!1298821 () Bool)

(assert (=> b!1409139 m!1298821))

(assert (=> b!1409139 m!1298821))

(declare-fun m!1298823 () Bool)

(assert (=> b!1409139 m!1298823))

(declare-fun m!1298825 () Bool)

(assert (=> b!1409138 m!1298825))

(declare-fun m!1298827 () Bool)

(assert (=> b!1409137 m!1298827))

(assert (=> b!1409136 m!1298821))

(declare-fun m!1298829 () Bool)

(assert (=> b!1409136 m!1298829))

(assert (=> b!1409136 m!1298821))

(declare-fun m!1298831 () Bool)

(assert (=> b!1409136 m!1298831))

(assert (=> b!1409136 m!1298829))

(assert (=> b!1409136 m!1298821))

(declare-fun m!1298833 () Bool)

(assert (=> b!1409136 m!1298833))

(declare-fun m!1298835 () Bool)

(assert (=> b!1409136 m!1298835))

(assert (=> b!1409142 m!1298821))

(assert (=> b!1409142 m!1298821))

(declare-fun m!1298837 () Bool)

(assert (=> b!1409142 m!1298837))

(declare-fun m!1298839 () Bool)

(assert (=> b!1409143 m!1298839))

(assert (=> b!1409143 m!1298839))

(declare-fun m!1298841 () Bool)

(assert (=> b!1409143 m!1298841))

(declare-fun m!1298843 () Bool)

(assert (=> start!121238 m!1298843))

(declare-fun m!1298845 () Bool)

(assert (=> start!121238 m!1298845))

(declare-fun m!1298847 () Bool)

(assert (=> b!1409141 m!1298847))

(declare-fun m!1298849 () Bool)

(assert (=> b!1409141 m!1298849))

(assert (=> b!1409141 m!1298849))

(declare-fun m!1298851 () Bool)

(assert (=> b!1409141 m!1298851))

(assert (=> b!1409141 m!1298851))

(assert (=> b!1409141 m!1298849))

(declare-fun m!1298853 () Bool)

(assert (=> b!1409141 m!1298853))

(push 1)

(assert (not b!1409138))

(assert (not b!1409142))

(assert (not start!121238))

(assert (not b!1409139))

(assert (not b!1409137))

(assert (not b!1409143))

(assert (not b!1409136))

(assert (not b!1409141))

(check-sat)

(pop 1)

(push 1)

