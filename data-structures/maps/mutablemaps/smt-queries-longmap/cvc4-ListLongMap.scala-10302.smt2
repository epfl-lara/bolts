; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121178 () Bool)

(assert start!121178)

(declare-fun b!1408416 () Bool)

(declare-fun res!946251 () Bool)

(declare-fun e!797108 () Bool)

(assert (=> b!1408416 (=> (not res!946251) (not e!797108))))

(declare-datatypes ((array!96250 0))(
  ( (array!96251 (arr!46464 (Array (_ BitVec 32) (_ BitVec 64))) (size!47015 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96250)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96250 (_ BitVec 32)) Bool)

(assert (=> b!1408416 (= res!946251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408417 () Bool)

(declare-fun e!797110 () Bool)

(assert (=> b!1408417 (= e!797108 (not e!797110))))

(declare-fun res!946248 () Bool)

(assert (=> b!1408417 (=> res!946248 e!797110)))

(declare-datatypes ((SeekEntryResult!10797 0))(
  ( (MissingZero!10797 (index!45564 (_ BitVec 32))) (Found!10797 (index!45565 (_ BitVec 32))) (Intermediate!10797 (undefined!11609 Bool) (index!45566 (_ BitVec 32)) (x!127169 (_ BitVec 32))) (Undefined!10797) (MissingVacant!10797 (index!45567 (_ BitVec 32))) )
))
(declare-fun lt!620310 () SeekEntryResult!10797)

(assert (=> b!1408417 (= res!946248 (or (not (is-Intermediate!10797 lt!620310)) (undefined!11609 lt!620310)))))

(declare-fun e!797109 () Bool)

(assert (=> b!1408417 e!797109))

(declare-fun res!946247 () Bool)

(assert (=> b!1408417 (=> (not res!946247) (not e!797109))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1408417 (= res!946247 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47518 0))(
  ( (Unit!47519) )
))
(declare-fun lt!620311 () Unit!47518)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96250 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47518)

(assert (=> b!1408417 (= lt!620311 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96250 (_ BitVec 32)) SeekEntryResult!10797)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408417 (= lt!620310 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46464 a!2901) j!112) mask!2840) (select (arr!46464 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408418 () Bool)

(declare-fun res!946252 () Bool)

(assert (=> b!1408418 (=> (not res!946252) (not e!797108))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408418 (= res!946252 (validKeyInArray!0 (select (arr!46464 a!2901) j!112)))))

(declare-fun res!946253 () Bool)

(assert (=> start!121178 (=> (not res!946253) (not e!797108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121178 (= res!946253 (validMask!0 mask!2840))))

(assert (=> start!121178 e!797108))

(assert (=> start!121178 true))

(declare-fun array_inv!35409 (array!96250) Bool)

(assert (=> start!121178 (array_inv!35409 a!2901)))

(declare-fun b!1408419 () Bool)

(declare-fun res!946250 () Bool)

(assert (=> b!1408419 (=> (not res!946250) (not e!797108))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1408419 (= res!946250 (and (= (size!47015 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47015 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47015 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408420 () Bool)

(declare-fun res!946249 () Bool)

(assert (=> b!1408420 (=> (not res!946249) (not e!797108))))

(declare-datatypes ((List!33163 0))(
  ( (Nil!33160) (Cons!33159 (h!34422 (_ BitVec 64)) (t!47864 List!33163)) )
))
(declare-fun arrayNoDuplicates!0 (array!96250 (_ BitVec 32) List!33163) Bool)

(assert (=> b!1408420 (= res!946249 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33160))))

(declare-fun b!1408421 () Bool)

(assert (=> b!1408421 (= e!797110 true)))

(declare-fun lt!620309 () SeekEntryResult!10797)

(assert (=> b!1408421 (= lt!620309 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46464 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46464 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96251 (store (arr!46464 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47015 a!2901)) mask!2840))))

(declare-fun b!1408422 () Bool)

(declare-fun res!946254 () Bool)

(assert (=> b!1408422 (=> (not res!946254) (not e!797108))))

(assert (=> b!1408422 (= res!946254 (validKeyInArray!0 (select (arr!46464 a!2901) i!1037)))))

(declare-fun b!1408423 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96250 (_ BitVec 32)) SeekEntryResult!10797)

(assert (=> b!1408423 (= e!797109 (= (seekEntryOrOpen!0 (select (arr!46464 a!2901) j!112) a!2901 mask!2840) (Found!10797 j!112)))))

(assert (= (and start!121178 res!946253) b!1408419))

(assert (= (and b!1408419 res!946250) b!1408422))

(assert (= (and b!1408422 res!946254) b!1408418))

(assert (= (and b!1408418 res!946252) b!1408416))

(assert (= (and b!1408416 res!946251) b!1408420))

(assert (= (and b!1408420 res!946249) b!1408417))

(assert (= (and b!1408417 res!946247) b!1408423))

(assert (= (and b!1408417 (not res!946248)) b!1408421))

(declare-fun m!1297801 () Bool)

(assert (=> b!1408421 m!1297801))

(declare-fun m!1297803 () Bool)

(assert (=> b!1408421 m!1297803))

(assert (=> b!1408421 m!1297803))

(declare-fun m!1297805 () Bool)

(assert (=> b!1408421 m!1297805))

(assert (=> b!1408421 m!1297805))

(assert (=> b!1408421 m!1297803))

(declare-fun m!1297807 () Bool)

(assert (=> b!1408421 m!1297807))

(declare-fun m!1297809 () Bool)

(assert (=> b!1408423 m!1297809))

(assert (=> b!1408423 m!1297809))

(declare-fun m!1297811 () Bool)

(assert (=> b!1408423 m!1297811))

(declare-fun m!1297813 () Bool)

(assert (=> start!121178 m!1297813))

(declare-fun m!1297815 () Bool)

(assert (=> start!121178 m!1297815))

(declare-fun m!1297817 () Bool)

(assert (=> b!1408420 m!1297817))

(assert (=> b!1408417 m!1297809))

(declare-fun m!1297819 () Bool)

(assert (=> b!1408417 m!1297819))

(assert (=> b!1408417 m!1297809))

(declare-fun m!1297821 () Bool)

(assert (=> b!1408417 m!1297821))

(assert (=> b!1408417 m!1297819))

(assert (=> b!1408417 m!1297809))

(declare-fun m!1297823 () Bool)

(assert (=> b!1408417 m!1297823))

(declare-fun m!1297825 () Bool)

(assert (=> b!1408417 m!1297825))

(declare-fun m!1297827 () Bool)

(assert (=> b!1408422 m!1297827))

(assert (=> b!1408422 m!1297827))

(declare-fun m!1297829 () Bool)

(assert (=> b!1408422 m!1297829))

(declare-fun m!1297831 () Bool)

(assert (=> b!1408416 m!1297831))

(assert (=> b!1408418 m!1297809))

(assert (=> b!1408418 m!1297809))

(declare-fun m!1297833 () Bool)

(assert (=> b!1408418 m!1297833))

(push 1)

(assert (not b!1408420))

(assert (not start!121178))

(assert (not b!1408416))

(assert (not b!1408417))

(assert (not b!1408422))

(assert (not b!1408423))

(assert (not b!1408421))

(assert (not b!1408418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

