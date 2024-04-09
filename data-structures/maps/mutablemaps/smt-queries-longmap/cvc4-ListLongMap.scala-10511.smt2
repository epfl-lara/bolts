; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123926 () Bool)

(assert start!123926)

(declare-fun b!1435672 () Bool)

(declare-fun e!810245 () Bool)

(declare-datatypes ((array!97588 0))(
  ( (array!97589 (arr!47091 (Array (_ BitVec 32) (_ BitVec 64))) (size!47642 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97588)

(assert (=> b!1435672 (= e!810245 (bvsgt #b00000000000000000000000000000000 (size!47642 a!2862)))))

(declare-fun b!1435669 () Bool)

(declare-fun res!968784 () Bool)

(assert (=> b!1435669 (=> (not res!968784) (not e!810245))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1435669 (= res!968784 (and (= (size!47642 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47642 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47642 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1435670 () Bool)

(declare-fun res!968786 () Bool)

(assert (=> b!1435670 (=> (not res!968786) (not e!810245))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435670 (= res!968786 (validKeyInArray!0 (select (arr!47091 a!2862) i!1006)))))

(declare-fun b!1435671 () Bool)

(declare-fun res!968785 () Bool)

(assert (=> b!1435671 (=> (not res!968785) (not e!810245))))

(assert (=> b!1435671 (= res!968785 (validKeyInArray!0 (select (arr!47091 a!2862) j!93)))))

(declare-fun res!968787 () Bool)

(assert (=> start!123926 (=> (not res!968787) (not e!810245))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123926 (= res!968787 (validMask!0 mask!2687))))

(assert (=> start!123926 e!810245))

(assert (=> start!123926 true))

(declare-fun array_inv!36036 (array!97588) Bool)

(assert (=> start!123926 (array_inv!36036 a!2862)))

(assert (= (and start!123926 res!968787) b!1435669))

(assert (= (and b!1435669 res!968784) b!1435670))

(assert (= (and b!1435670 res!968786) b!1435671))

(assert (= (and b!1435671 res!968785) b!1435672))

(declare-fun m!1325099 () Bool)

(assert (=> b!1435670 m!1325099))

(assert (=> b!1435670 m!1325099))

(declare-fun m!1325101 () Bool)

(assert (=> b!1435670 m!1325101))

(declare-fun m!1325103 () Bool)

(assert (=> b!1435671 m!1325103))

(assert (=> b!1435671 m!1325103))

(declare-fun m!1325105 () Bool)

(assert (=> b!1435671 m!1325105))

(declare-fun m!1325107 () Bool)

(assert (=> start!123926 m!1325107))

(declare-fun m!1325109 () Bool)

(assert (=> start!123926 m!1325109))

(push 1)

(assert (not start!123926))

(assert (not b!1435670))

(assert (not b!1435671))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

