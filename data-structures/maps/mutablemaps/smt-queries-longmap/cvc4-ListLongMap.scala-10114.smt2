; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119222 () Bool)

(assert start!119222)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95077 0))(
  ( (array!95078 (arr!45900 (Array (_ BitVec 32) (_ BitVec 64))) (size!46451 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95077)

(declare-fun e!787336 () Bool)

(declare-fun b!1390202 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10239 0))(
  ( (MissingZero!10239 (index!43326 (_ BitVec 32))) (Found!10239 (index!43327 (_ BitVec 32))) (Intermediate!10239 (undefined!11051 Bool) (index!43328 (_ BitVec 32)) (x!125008 (_ BitVec 32))) (Undefined!10239) (MissingVacant!10239 (index!43329 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95077 (_ BitVec 32)) SeekEntryResult!10239)

(assert (=> b!1390202 (= e!787336 (= (seekEntryOrOpen!0 (select (arr!45900 a!2901) j!112) a!2901 mask!2840) (Found!10239 j!112)))))

(declare-fun b!1390203 () Bool)

(declare-fun res!930471 () Bool)

(declare-fun e!787337 () Bool)

(assert (=> b!1390203 (=> (not res!930471) (not e!787337))))

(declare-datatypes ((List!32599 0))(
  ( (Nil!32596) (Cons!32595 (h!33813 (_ BitVec 64)) (t!47300 List!32599)) )
))
(declare-fun arrayNoDuplicates!0 (array!95077 (_ BitVec 32) List!32599) Bool)

(assert (=> b!1390203 (= res!930471 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32596))))

(declare-fun b!1390204 () Bool)

(declare-fun res!930476 () Bool)

(assert (=> b!1390204 (=> (not res!930476) (not e!787337))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95077 (_ BitVec 32)) Bool)

(assert (=> b!1390204 (= res!930476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390205 () Bool)

(declare-fun res!930473 () Bool)

(assert (=> b!1390205 (=> (not res!930473) (not e!787337))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390205 (= res!930473 (and (= (size!46451 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46451 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46451 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390206 () Bool)

(assert (=> b!1390206 (= e!787337 (not true))))

(assert (=> b!1390206 e!787336))

(declare-fun res!930474 () Bool)

(assert (=> b!1390206 (=> (not res!930474) (not e!787336))))

(assert (=> b!1390206 (= res!930474 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46432 0))(
  ( (Unit!46433) )
))
(declare-fun lt!610720 () Unit!46432)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95077 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46432)

(assert (=> b!1390206 (= lt!610720 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610719 () SeekEntryResult!10239)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95077 (_ BitVec 32)) SeekEntryResult!10239)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390206 (= lt!610719 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45900 a!2901) j!112) mask!2840) (select (arr!45900 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390207 () Bool)

(declare-fun res!930477 () Bool)

(assert (=> b!1390207 (=> (not res!930477) (not e!787337))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390207 (= res!930477 (validKeyInArray!0 (select (arr!45900 a!2901) i!1037)))))

(declare-fun b!1390201 () Bool)

(declare-fun res!930472 () Bool)

(assert (=> b!1390201 (=> (not res!930472) (not e!787337))))

(assert (=> b!1390201 (= res!930472 (validKeyInArray!0 (select (arr!45900 a!2901) j!112)))))

(declare-fun res!930475 () Bool)

(assert (=> start!119222 (=> (not res!930475) (not e!787337))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119222 (= res!930475 (validMask!0 mask!2840))))

(assert (=> start!119222 e!787337))

(assert (=> start!119222 true))

(declare-fun array_inv!34845 (array!95077) Bool)

(assert (=> start!119222 (array_inv!34845 a!2901)))

(assert (= (and start!119222 res!930475) b!1390205))

(assert (= (and b!1390205 res!930473) b!1390207))

(assert (= (and b!1390207 res!930477) b!1390201))

(assert (= (and b!1390201 res!930472) b!1390204))

(assert (= (and b!1390204 res!930476) b!1390203))

(assert (= (and b!1390203 res!930471) b!1390206))

(assert (= (and b!1390206 res!930474) b!1390202))

(declare-fun m!1276071 () Bool)

(assert (=> b!1390203 m!1276071))

(declare-fun m!1276073 () Bool)

(assert (=> b!1390202 m!1276073))

(assert (=> b!1390202 m!1276073))

(declare-fun m!1276075 () Bool)

(assert (=> b!1390202 m!1276075))

(declare-fun m!1276077 () Bool)

(assert (=> b!1390207 m!1276077))

(assert (=> b!1390207 m!1276077))

(declare-fun m!1276079 () Bool)

(assert (=> b!1390207 m!1276079))

(assert (=> b!1390201 m!1276073))

(assert (=> b!1390201 m!1276073))

(declare-fun m!1276081 () Bool)

(assert (=> b!1390201 m!1276081))

(assert (=> b!1390206 m!1276073))

(declare-fun m!1276083 () Bool)

(assert (=> b!1390206 m!1276083))

(assert (=> b!1390206 m!1276073))

(declare-fun m!1276085 () Bool)

(assert (=> b!1390206 m!1276085))

(assert (=> b!1390206 m!1276083))

(assert (=> b!1390206 m!1276073))

(declare-fun m!1276087 () Bool)

(assert (=> b!1390206 m!1276087))

(declare-fun m!1276089 () Bool)

(assert (=> b!1390206 m!1276089))

(declare-fun m!1276091 () Bool)

(assert (=> b!1390204 m!1276091))

(declare-fun m!1276093 () Bool)

(assert (=> start!119222 m!1276093))

(declare-fun m!1276095 () Bool)

(assert (=> start!119222 m!1276095))

(push 1)

(assert (not b!1390204))

(assert (not b!1390201))

(assert (not b!1390202))

(assert (not b!1390207))

(assert (not b!1390206))

(assert (not start!119222))

(assert (not b!1390203))

(check-sat)

(pop 1)

(push 1)

