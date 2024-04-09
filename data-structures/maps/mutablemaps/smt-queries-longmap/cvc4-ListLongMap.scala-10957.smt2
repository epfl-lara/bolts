; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128300 () Bool)

(assert start!128300)

(declare-fun b!1505469 () Bool)

(declare-fun res!1025989 () Bool)

(declare-fun e!841460 () Bool)

(assert (=> b!1505469 (=> (not res!1025989) (not e!841460))))

(declare-datatypes ((array!100366 0))(
  ( (array!100367 (arr!48429 (Array (_ BitVec 32) (_ BitVec 64))) (size!48980 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100366)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100366 (_ BitVec 32)) Bool)

(assert (=> b!1505469 (= res!1025989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1025990 () Bool)

(assert (=> start!128300 (=> (not res!1025990) (not e!841460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128300 (= res!1025990 (validMask!0 mask!2512))))

(assert (=> start!128300 e!841460))

(assert (=> start!128300 true))

(declare-fun array_inv!37374 (array!100366) Bool)

(assert (=> start!128300 (array_inv!37374 a!2804)))

(declare-fun b!1505470 () Bool)

(declare-fun res!1025988 () Bool)

(assert (=> b!1505470 (=> (not res!1025988) (not e!841460))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505470 (= res!1025988 (validKeyInArray!0 (select (arr!48429 a!2804) j!70)))))

(declare-fun b!1505471 () Bool)

(declare-fun res!1025987 () Bool)

(assert (=> b!1505471 (=> (not res!1025987) (not e!841460))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1505471 (= res!1025987 (and (= (size!48980 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48980 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48980 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1505472 () Bool)

(assert (=> b!1505472 (= e!841460 (bvsgt #b00000000000000000000000000000000 (size!48980 a!2804)))))

(declare-fun b!1505473 () Bool)

(declare-fun res!1025991 () Bool)

(assert (=> b!1505473 (=> (not res!1025991) (not e!841460))))

(assert (=> b!1505473 (= res!1025991 (validKeyInArray!0 (select (arr!48429 a!2804) i!961)))))

(assert (= (and start!128300 res!1025990) b!1505471))

(assert (= (and b!1505471 res!1025987) b!1505473))

(assert (= (and b!1505473 res!1025991) b!1505470))

(assert (= (and b!1505470 res!1025988) b!1505469))

(assert (= (and b!1505469 res!1025989) b!1505472))

(declare-fun m!1388623 () Bool)

(assert (=> b!1505469 m!1388623))

(declare-fun m!1388625 () Bool)

(assert (=> start!128300 m!1388625))

(declare-fun m!1388627 () Bool)

(assert (=> start!128300 m!1388627))

(declare-fun m!1388629 () Bool)

(assert (=> b!1505470 m!1388629))

(assert (=> b!1505470 m!1388629))

(declare-fun m!1388631 () Bool)

(assert (=> b!1505470 m!1388631))

(declare-fun m!1388633 () Bool)

(assert (=> b!1505473 m!1388633))

(assert (=> b!1505473 m!1388633))

(declare-fun m!1388635 () Bool)

(assert (=> b!1505473 m!1388635))

(push 1)

(assert (not b!1505469))

(assert (not start!128300))

(assert (not b!1505473))

(assert (not b!1505470))

(check-sat)

(pop 1)

