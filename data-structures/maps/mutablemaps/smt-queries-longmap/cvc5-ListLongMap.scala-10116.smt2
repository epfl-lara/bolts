; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119230 () Bool)

(assert start!119230)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95085 0))(
  ( (array!95086 (arr!45904 (Array (_ BitVec 32) (_ BitVec 64))) (size!46455 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95085)

(declare-fun e!787372 () Bool)

(declare-fun b!1390285 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10243 0))(
  ( (MissingZero!10243 (index!43342 (_ BitVec 32))) (Found!10243 (index!43343 (_ BitVec 32))) (Intermediate!10243 (undefined!11055 Bool) (index!43344 (_ BitVec 32)) (x!125028 (_ BitVec 32))) (Undefined!10243) (MissingVacant!10243 (index!43345 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95085 (_ BitVec 32)) SeekEntryResult!10243)

(assert (=> b!1390285 (= e!787372 (= (seekEntryOrOpen!0 (select (arr!45904 a!2901) j!112) a!2901 mask!2840) (Found!10243 j!112)))))

(declare-fun b!1390286 () Bool)

(declare-fun res!930557 () Bool)

(declare-fun e!787371 () Bool)

(assert (=> b!1390286 (=> (not res!930557) (not e!787371))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390286 (= res!930557 (and (= (size!46455 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46455 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46455 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390287 () Bool)

(declare-fun res!930556 () Bool)

(assert (=> b!1390287 (=> (not res!930556) (not e!787371))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95085 (_ BitVec 32)) Bool)

(assert (=> b!1390287 (= res!930556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390288 () Bool)

(declare-fun res!930561 () Bool)

(assert (=> b!1390288 (=> (not res!930561) (not e!787371))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390288 (= res!930561 (validKeyInArray!0 (select (arr!45904 a!2901) j!112)))))

(declare-fun res!930559 () Bool)

(assert (=> start!119230 (=> (not res!930559) (not e!787371))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119230 (= res!930559 (validMask!0 mask!2840))))

(assert (=> start!119230 e!787371))

(assert (=> start!119230 true))

(declare-fun array_inv!34849 (array!95085) Bool)

(assert (=> start!119230 (array_inv!34849 a!2901)))

(declare-fun b!1390289 () Bool)

(declare-fun res!930555 () Bool)

(assert (=> b!1390289 (=> (not res!930555) (not e!787371))))

(declare-datatypes ((List!32603 0))(
  ( (Nil!32600) (Cons!32599 (h!33817 (_ BitVec 64)) (t!47304 List!32603)) )
))
(declare-fun arrayNoDuplicates!0 (array!95085 (_ BitVec 32) List!32603) Bool)

(assert (=> b!1390289 (= res!930555 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32600))))

(declare-fun b!1390290 () Bool)

(declare-fun res!930560 () Bool)

(assert (=> b!1390290 (=> (not res!930560) (not e!787371))))

(assert (=> b!1390290 (= res!930560 (validKeyInArray!0 (select (arr!45904 a!2901) i!1037)))))

(declare-fun b!1390291 () Bool)

(assert (=> b!1390291 (= e!787371 (not true))))

(assert (=> b!1390291 e!787372))

(declare-fun res!930558 () Bool)

(assert (=> b!1390291 (=> (not res!930558) (not e!787372))))

(assert (=> b!1390291 (= res!930558 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46440 0))(
  ( (Unit!46441) )
))
(declare-fun lt!610743 () Unit!46440)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95085 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46440)

(assert (=> b!1390291 (= lt!610743 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610744 () SeekEntryResult!10243)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95085 (_ BitVec 32)) SeekEntryResult!10243)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390291 (= lt!610744 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45904 a!2901) j!112) mask!2840) (select (arr!45904 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119230 res!930559) b!1390286))

(assert (= (and b!1390286 res!930557) b!1390290))

(assert (= (and b!1390290 res!930560) b!1390288))

(assert (= (and b!1390288 res!930561) b!1390287))

(assert (= (and b!1390287 res!930556) b!1390289))

(assert (= (and b!1390289 res!930555) b!1390291))

(assert (= (and b!1390291 res!930558) b!1390285))

(declare-fun m!1276175 () Bool)

(assert (=> b!1390285 m!1276175))

(assert (=> b!1390285 m!1276175))

(declare-fun m!1276177 () Bool)

(assert (=> b!1390285 m!1276177))

(declare-fun m!1276179 () Bool)

(assert (=> b!1390287 m!1276179))

(assert (=> b!1390288 m!1276175))

(assert (=> b!1390288 m!1276175))

(declare-fun m!1276181 () Bool)

(assert (=> b!1390288 m!1276181))

(declare-fun m!1276183 () Bool)

(assert (=> b!1390289 m!1276183))

(declare-fun m!1276185 () Bool)

(assert (=> b!1390290 m!1276185))

(assert (=> b!1390290 m!1276185))

(declare-fun m!1276187 () Bool)

(assert (=> b!1390290 m!1276187))

(assert (=> b!1390291 m!1276175))

(declare-fun m!1276189 () Bool)

(assert (=> b!1390291 m!1276189))

(assert (=> b!1390291 m!1276175))

(declare-fun m!1276191 () Bool)

(assert (=> b!1390291 m!1276191))

(assert (=> b!1390291 m!1276189))

(assert (=> b!1390291 m!1276175))

(declare-fun m!1276193 () Bool)

(assert (=> b!1390291 m!1276193))

(declare-fun m!1276195 () Bool)

(assert (=> b!1390291 m!1276195))

(declare-fun m!1276197 () Bool)

(assert (=> start!119230 m!1276197))

(declare-fun m!1276199 () Bool)

(assert (=> start!119230 m!1276199))

(push 1)

(assert (not b!1390288))

(assert (not b!1390287))

(assert (not start!119230))

(assert (not b!1390285))

(assert (not b!1390290))

(assert (not b!1390289))

(assert (not b!1390291))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

