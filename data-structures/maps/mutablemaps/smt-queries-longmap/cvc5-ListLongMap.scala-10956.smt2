; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128290 () Bool)

(assert start!128290)

(declare-fun b!1505403 () Bool)

(declare-fun res!1025920 () Bool)

(declare-fun e!841429 () Bool)

(assert (=> b!1505403 (=> (not res!1025920) (not e!841429))))

(declare-datatypes ((array!100356 0))(
  ( (array!100357 (arr!48424 (Array (_ BitVec 32) (_ BitVec 64))) (size!48975 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100356)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505403 (= res!1025920 (validKeyInArray!0 (select (arr!48424 a!2804) j!70)))))

(declare-fun b!1505402 () Bool)

(declare-fun res!1025922 () Bool)

(assert (=> b!1505402 (=> (not res!1025922) (not e!841429))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1505402 (= res!1025922 (validKeyInArray!0 (select (arr!48424 a!2804) i!961)))))

(declare-fun b!1505401 () Bool)

(declare-fun res!1025919 () Bool)

(assert (=> b!1505401 (=> (not res!1025919) (not e!841429))))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1505401 (= res!1025919 (and (= (size!48975 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48975 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48975 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1505404 () Bool)

(assert (=> b!1505404 (= e!841429 (bvsgt #b00000000000000000000000000000000 (size!48975 a!2804)))))

(declare-fun res!1025921 () Bool)

(assert (=> start!128290 (=> (not res!1025921) (not e!841429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128290 (= res!1025921 (validMask!0 mask!2512))))

(assert (=> start!128290 e!841429))

(assert (=> start!128290 true))

(declare-fun array_inv!37369 (array!100356) Bool)

(assert (=> start!128290 (array_inv!37369 a!2804)))

(assert (= (and start!128290 res!1025921) b!1505401))

(assert (= (and b!1505401 res!1025919) b!1505402))

(assert (= (and b!1505402 res!1025922) b!1505403))

(assert (= (and b!1505403 res!1025920) b!1505404))

(declare-fun m!1388559 () Bool)

(assert (=> b!1505403 m!1388559))

(assert (=> b!1505403 m!1388559))

(declare-fun m!1388561 () Bool)

(assert (=> b!1505403 m!1388561))

(declare-fun m!1388563 () Bool)

(assert (=> b!1505402 m!1388563))

(assert (=> b!1505402 m!1388563))

(declare-fun m!1388565 () Bool)

(assert (=> b!1505402 m!1388565))

(declare-fun m!1388567 () Bool)

(assert (=> start!128290 m!1388567))

(declare-fun m!1388569 () Bool)

(assert (=> start!128290 m!1388569))

(push 1)

(assert (not b!1505403))

(assert (not b!1505402))

(assert (not start!128290))

(check-sat)

