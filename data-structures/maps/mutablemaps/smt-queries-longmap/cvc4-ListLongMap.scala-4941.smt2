; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68054 () Bool)

(assert start!68054)

(declare-fun b!791462 () Bool)

(declare-fun res!536369 () Bool)

(declare-fun e!439858 () Bool)

(assert (=> b!791462 (=> (not res!536369) (not e!439858))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!42912 0))(
  ( (array!42913 (arr!20537 (Array (_ BitVec 32) (_ BitVec 64))) (size!20958 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42912)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!791462 (= res!536369 (and (= (size!20958 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20958 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20958 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791463 () Bool)

(assert (=> b!791463 (= e!439858 (bvslt mask!3266 #b00000000000000000000000000000000))))

(declare-fun res!536370 () Bool)

(assert (=> start!68054 (=> (not res!536370) (not e!439858))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68054 (= res!536370 (validMask!0 mask!3266))))

(assert (=> start!68054 e!439858))

(assert (=> start!68054 true))

(declare-fun array_inv!16311 (array!42912) Bool)

(assert (=> start!68054 (array_inv!16311 a!3170)))

(declare-fun b!791464 () Bool)

(declare-fun res!536371 () Bool)

(assert (=> b!791464 (=> (not res!536371) (not e!439858))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791464 (= res!536371 (validKeyInArray!0 (select (arr!20537 a!3170) j!153)))))

(declare-fun b!791465 () Bool)

(declare-fun res!536368 () Bool)

(assert (=> b!791465 (=> (not res!536368) (not e!439858))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42912 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791465 (= res!536368 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791466 () Bool)

(declare-fun res!536367 () Bool)

(assert (=> b!791466 (=> (not res!536367) (not e!439858))))

(assert (=> b!791466 (= res!536367 (validKeyInArray!0 k!2044))))

(assert (= (and start!68054 res!536370) b!791462))

(assert (= (and b!791462 res!536369) b!791464))

(assert (= (and b!791464 res!536371) b!791466))

(assert (= (and b!791466 res!536367) b!791465))

(assert (= (and b!791465 res!536368) b!791463))

(declare-fun m!732277 () Bool)

(assert (=> start!68054 m!732277))

(declare-fun m!732279 () Bool)

(assert (=> start!68054 m!732279))

(declare-fun m!732281 () Bool)

(assert (=> b!791464 m!732281))

(assert (=> b!791464 m!732281))

(declare-fun m!732283 () Bool)

(assert (=> b!791464 m!732283))

(declare-fun m!732285 () Bool)

(assert (=> b!791465 m!732285))

(declare-fun m!732287 () Bool)

(assert (=> b!791466 m!732287))

(push 1)

(assert (not b!791466))

(assert (not b!791465))

(assert (not start!68054))

(assert (not b!791464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

