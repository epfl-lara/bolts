; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123922 () Bool)

(assert start!123922)

(declare-fun b!1435646 () Bool)

(declare-fun res!968763 () Bool)

(declare-fun e!810232 () Bool)

(assert (=> b!1435646 (=> (not res!968763) (not e!810232))))

(declare-datatypes ((array!97584 0))(
  ( (array!97585 (arr!47089 (Array (_ BitVec 32) (_ BitVec 64))) (size!47640 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97584)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435646 (= res!968763 (validKeyInArray!0 (select (arr!47089 a!2862) i!1006)))))

(declare-fun b!1435647 () Bool)

(declare-fun res!968761 () Bool)

(assert (=> b!1435647 (=> (not res!968761) (not e!810232))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1435647 (= res!968761 (validKeyInArray!0 (select (arr!47089 a!2862) j!93)))))

(declare-fun b!1435645 () Bool)

(declare-fun res!968762 () Bool)

(assert (=> b!1435645 (=> (not res!968762) (not e!810232))))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1435645 (= res!968762 (and (= (size!47640 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47640 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47640 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!968760 () Bool)

(assert (=> start!123922 (=> (not res!968760) (not e!810232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123922 (= res!968760 (validMask!0 mask!2687))))

(assert (=> start!123922 e!810232))

(assert (=> start!123922 true))

(declare-fun array_inv!36034 (array!97584) Bool)

(assert (=> start!123922 (array_inv!36034 a!2862)))

(declare-fun b!1435648 () Bool)

(assert (=> b!1435648 (= e!810232 (bvsgt #b00000000000000000000000000000000 (size!47640 a!2862)))))

(assert (= (and start!123922 res!968760) b!1435645))

(assert (= (and b!1435645 res!968762) b!1435646))

(assert (= (and b!1435646 res!968763) b!1435647))

(assert (= (and b!1435647 res!968761) b!1435648))

(declare-fun m!1325075 () Bool)

(assert (=> b!1435646 m!1325075))

(assert (=> b!1435646 m!1325075))

(declare-fun m!1325077 () Bool)

(assert (=> b!1435646 m!1325077))

(declare-fun m!1325079 () Bool)

(assert (=> b!1435647 m!1325079))

(assert (=> b!1435647 m!1325079))

(declare-fun m!1325081 () Bool)

(assert (=> b!1435647 m!1325081))

(declare-fun m!1325083 () Bool)

(assert (=> start!123922 m!1325083))

(declare-fun m!1325085 () Bool)

(assert (=> start!123922 m!1325085))

(push 1)

(assert (not start!123922))

(assert (not b!1435646))

(assert (not b!1435647))

(check-sat)

