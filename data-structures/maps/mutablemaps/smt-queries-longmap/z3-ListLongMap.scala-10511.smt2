; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123924 () Bool)

(assert start!123924)

(declare-fun b!1435659 () Bool)

(declare-fun res!968774 () Bool)

(declare-fun e!810239 () Bool)

(assert (=> b!1435659 (=> (not res!968774) (not e!810239))))

(declare-datatypes ((array!97586 0))(
  ( (array!97587 (arr!47090 (Array (_ BitVec 32) (_ BitVec 64))) (size!47641 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97586)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435659 (= res!968774 (validKeyInArray!0 (select (arr!47090 a!2862) j!93)))))

(declare-fun b!1435658 () Bool)

(declare-fun res!968773 () Bool)

(assert (=> b!1435658 (=> (not res!968773) (not e!810239))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1435658 (= res!968773 (validKeyInArray!0 (select (arr!47090 a!2862) i!1006)))))

(declare-fun b!1435657 () Bool)

(declare-fun res!968772 () Bool)

(assert (=> b!1435657 (=> (not res!968772) (not e!810239))))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1435657 (= res!968772 (and (= (size!47641 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47641 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47641 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1435660 () Bool)

(assert (=> b!1435660 (= e!810239 (bvsgt #b00000000000000000000000000000000 (size!47641 a!2862)))))

(declare-fun res!968775 () Bool)

(assert (=> start!123924 (=> (not res!968775) (not e!810239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123924 (= res!968775 (validMask!0 mask!2687))))

(assert (=> start!123924 e!810239))

(assert (=> start!123924 true))

(declare-fun array_inv!36035 (array!97586) Bool)

(assert (=> start!123924 (array_inv!36035 a!2862)))

(assert (= (and start!123924 res!968775) b!1435657))

(assert (= (and b!1435657 res!968772) b!1435658))

(assert (= (and b!1435658 res!968773) b!1435659))

(assert (= (and b!1435659 res!968774) b!1435660))

(declare-fun m!1325087 () Bool)

(assert (=> b!1435659 m!1325087))

(assert (=> b!1435659 m!1325087))

(declare-fun m!1325089 () Bool)

(assert (=> b!1435659 m!1325089))

(declare-fun m!1325091 () Bool)

(assert (=> b!1435658 m!1325091))

(assert (=> b!1435658 m!1325091))

(declare-fun m!1325093 () Bool)

(assert (=> b!1435658 m!1325093))

(declare-fun m!1325095 () Bool)

(assert (=> start!123924 m!1325095))

(declare-fun m!1325097 () Bool)

(assert (=> start!123924 m!1325097))

(check-sat (not start!123924) (not b!1435658) (not b!1435659))
(check-sat)
