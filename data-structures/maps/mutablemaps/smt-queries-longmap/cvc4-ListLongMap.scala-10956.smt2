; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128294 () Bool)

(assert start!128294)

(declare-fun b!1505428 () Bool)

(declare-fun e!841441 () Bool)

(declare-datatypes ((array!100360 0))(
  ( (array!100361 (arr!48426 (Array (_ BitVec 32) (_ BitVec 64))) (size!48977 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100360)

(assert (=> b!1505428 (= e!841441 (bvsgt #b00000000000000000000000000000000 (size!48977 a!2804)))))

(declare-fun b!1505425 () Bool)

(declare-fun res!1025945 () Bool)

(assert (=> b!1505425 (=> (not res!1025945) (not e!841441))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1505425 (= res!1025945 (and (= (size!48977 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48977 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48977 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1505426 () Bool)

(declare-fun res!1025943 () Bool)

(assert (=> b!1505426 (=> (not res!1025943) (not e!841441))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505426 (= res!1025943 (validKeyInArray!0 (select (arr!48426 a!2804) i!961)))))

(declare-fun b!1505427 () Bool)

(declare-fun res!1025946 () Bool)

(assert (=> b!1505427 (=> (not res!1025946) (not e!841441))))

(assert (=> b!1505427 (= res!1025946 (validKeyInArray!0 (select (arr!48426 a!2804) j!70)))))

(declare-fun res!1025944 () Bool)

(assert (=> start!128294 (=> (not res!1025944) (not e!841441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128294 (= res!1025944 (validMask!0 mask!2512))))

(assert (=> start!128294 e!841441))

(assert (=> start!128294 true))

(declare-fun array_inv!37371 (array!100360) Bool)

(assert (=> start!128294 (array_inv!37371 a!2804)))

(assert (= (and start!128294 res!1025944) b!1505425))

(assert (= (and b!1505425 res!1025945) b!1505426))

(assert (= (and b!1505426 res!1025943) b!1505427))

(assert (= (and b!1505427 res!1025946) b!1505428))

(declare-fun m!1388583 () Bool)

(assert (=> b!1505426 m!1388583))

(assert (=> b!1505426 m!1388583))

(declare-fun m!1388585 () Bool)

(assert (=> b!1505426 m!1388585))

(declare-fun m!1388587 () Bool)

(assert (=> b!1505427 m!1388587))

(assert (=> b!1505427 m!1388587))

(declare-fun m!1388589 () Bool)

(assert (=> b!1505427 m!1388589))

(declare-fun m!1388591 () Bool)

(assert (=> start!128294 m!1388591))

(declare-fun m!1388593 () Bool)

(assert (=> start!128294 m!1388593))

(push 1)

(assert (not b!1505427))

(assert (not b!1505426))

(assert (not start!128294))

(check-sat)

(pop 1)

(push 1)

(check-sat)

