; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68050 () Bool)

(assert start!68050)

(declare-fun b!791433 () Bool)

(declare-fun res!536339 () Bool)

(declare-fun e!439846 () Bool)

(assert (=> b!791433 (=> (not res!536339) (not e!439846))))

(declare-datatypes ((array!42908 0))(
  ( (array!42909 (arr!20535 (Array (_ BitVec 32) (_ BitVec 64))) (size!20956 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42908)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791433 (= res!536339 (validKeyInArray!0 (select (arr!20535 a!3170) j!153)))))

(declare-fun b!791434 () Bool)

(declare-fun res!536337 () Bool)

(assert (=> b!791434 (=> (not res!536337) (not e!439846))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42908 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791434 (= res!536337 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791435 () Bool)

(declare-fun res!536341 () Bool)

(assert (=> b!791435 (=> (not res!536341) (not e!439846))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791435 (= res!536341 (and (= (size!20956 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20956 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20956 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791436 () Bool)

(assert (=> b!791436 (= e!439846 (bvslt mask!3266 #b00000000000000000000000000000000))))

(declare-fun res!536338 () Bool)

(assert (=> start!68050 (=> (not res!536338) (not e!439846))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68050 (= res!536338 (validMask!0 mask!3266))))

(assert (=> start!68050 e!439846))

(assert (=> start!68050 true))

(declare-fun array_inv!16309 (array!42908) Bool)

(assert (=> start!68050 (array_inv!16309 a!3170)))

(declare-fun b!791432 () Bool)

(declare-fun res!536340 () Bool)

(assert (=> b!791432 (=> (not res!536340) (not e!439846))))

(assert (=> b!791432 (= res!536340 (validKeyInArray!0 k!2044))))

(assert (= (and start!68050 res!536338) b!791435))

(assert (= (and b!791435 res!536341) b!791433))

(assert (= (and b!791433 res!536339) b!791432))

(assert (= (and b!791432 res!536340) b!791434))

(assert (= (and b!791434 res!536337) b!791436))

(declare-fun m!732253 () Bool)

(assert (=> b!791433 m!732253))

(assert (=> b!791433 m!732253))

(declare-fun m!732255 () Bool)

(assert (=> b!791433 m!732255))

(declare-fun m!732257 () Bool)

(assert (=> b!791434 m!732257))

(declare-fun m!732259 () Bool)

(assert (=> start!68050 m!732259))

(declare-fun m!732261 () Bool)

(assert (=> start!68050 m!732261))

(declare-fun m!732263 () Bool)

(assert (=> b!791432 m!732263))

(push 1)

(assert (not b!791434))

(assert (not b!791433))

(assert (not b!791432))

(assert (not start!68050))

(check-sat)

