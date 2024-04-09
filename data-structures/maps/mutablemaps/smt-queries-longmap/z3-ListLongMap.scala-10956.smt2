; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128292 () Bool)

(assert start!128292)

(declare-fun b!1505413 () Bool)

(declare-fun res!1025932 () Bool)

(declare-fun e!841436 () Bool)

(assert (=> b!1505413 (=> (not res!1025932) (not e!841436))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100358 0))(
  ( (array!100359 (arr!48425 (Array (_ BitVec 32) (_ BitVec 64))) (size!48976 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100358)

(assert (=> b!1505413 (= res!1025932 (and (= (size!48976 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48976 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48976 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1505416 () Bool)

(assert (=> b!1505416 (= e!841436 (bvsgt #b00000000000000000000000000000000 (size!48976 a!2804)))))

(declare-fun b!1505415 () Bool)

(declare-fun res!1025933 () Bool)

(assert (=> b!1505415 (=> (not res!1025933) (not e!841436))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505415 (= res!1025933 (validKeyInArray!0 (select (arr!48425 a!2804) j!70)))))

(declare-fun b!1505414 () Bool)

(declare-fun res!1025934 () Bool)

(assert (=> b!1505414 (=> (not res!1025934) (not e!841436))))

(assert (=> b!1505414 (= res!1025934 (validKeyInArray!0 (select (arr!48425 a!2804) i!961)))))

(declare-fun res!1025931 () Bool)

(assert (=> start!128292 (=> (not res!1025931) (not e!841436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128292 (= res!1025931 (validMask!0 mask!2512))))

(assert (=> start!128292 e!841436))

(assert (=> start!128292 true))

(declare-fun array_inv!37370 (array!100358) Bool)

(assert (=> start!128292 (array_inv!37370 a!2804)))

(assert (= (and start!128292 res!1025931) b!1505413))

(assert (= (and b!1505413 res!1025932) b!1505414))

(assert (= (and b!1505414 res!1025934) b!1505415))

(assert (= (and b!1505415 res!1025933) b!1505416))

(declare-fun m!1388571 () Bool)

(assert (=> b!1505415 m!1388571))

(assert (=> b!1505415 m!1388571))

(declare-fun m!1388573 () Bool)

(assert (=> b!1505415 m!1388573))

(declare-fun m!1388575 () Bool)

(assert (=> b!1505414 m!1388575))

(assert (=> b!1505414 m!1388575))

(declare-fun m!1388577 () Bool)

(assert (=> b!1505414 m!1388577))

(declare-fun m!1388579 () Bool)

(assert (=> start!128292 m!1388579))

(declare-fun m!1388581 () Bool)

(assert (=> start!128292 m!1388581))

(check-sat (not b!1505415) (not b!1505414) (not start!128292))
(check-sat)
