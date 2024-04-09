; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68058 () Bool)

(assert start!68058)

(declare-fun b!791492 () Bool)

(declare-fun res!536400 () Bool)

(declare-fun e!439870 () Bool)

(assert (=> b!791492 (=> (not res!536400) (not e!439870))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791492 (= res!536400 (validKeyInArray!0 k0!2044))))

(declare-fun b!791493 () Bool)

(declare-fun res!536399 () Bool)

(assert (=> b!791493 (=> (not res!536399) (not e!439870))))

(declare-datatypes ((array!42916 0))(
  ( (array!42917 (arr!20539 (Array (_ BitVec 32) (_ BitVec 64))) (size!20960 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42916)

(declare-fun arrayContainsKey!0 (array!42916 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791493 (= res!536399 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun res!536398 () Bool)

(assert (=> start!68058 (=> (not res!536398) (not e!439870))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68058 (= res!536398 (validMask!0 mask!3266))))

(assert (=> start!68058 e!439870))

(assert (=> start!68058 true))

(declare-fun array_inv!16313 (array!42916) Bool)

(assert (=> start!68058 (array_inv!16313 a!3170)))

(declare-fun b!791494 () Bool)

(assert (=> b!791494 (= e!439870 false)))

(declare-datatypes ((SeekEntryResult!8137 0))(
  ( (MissingZero!8137 (index!34915 (_ BitVec 32))) (Found!8137 (index!34916 (_ BitVec 32))) (Intermediate!8137 (undefined!8949 Bool) (index!34917 (_ BitVec 32)) (x!65904 (_ BitVec 32))) (Undefined!8137) (MissingVacant!8137 (index!34918 (_ BitVec 32))) )
))
(declare-fun lt!353236 () SeekEntryResult!8137)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42916 (_ BitVec 32)) SeekEntryResult!8137)

(assert (=> b!791494 (= lt!353236 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!791495 () Bool)

(declare-fun res!536397 () Bool)

(assert (=> b!791495 (=> (not res!536397) (not e!439870))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!791495 (= res!536397 (validKeyInArray!0 (select (arr!20539 a!3170) j!153)))))

(declare-fun b!791496 () Bool)

(declare-fun res!536401 () Bool)

(assert (=> b!791496 (=> (not res!536401) (not e!439870))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791496 (= res!536401 (and (= (size!20960 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20960 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20960 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68058 res!536398) b!791496))

(assert (= (and b!791496 res!536401) b!791495))

(assert (= (and b!791495 res!536397) b!791492))

(assert (= (and b!791492 res!536400) b!791493))

(assert (= (and b!791493 res!536399) b!791494))

(declare-fun m!732303 () Bool)

(assert (=> b!791494 m!732303))

(declare-fun m!732305 () Bool)

(assert (=> b!791493 m!732305))

(declare-fun m!732307 () Bool)

(assert (=> start!68058 m!732307))

(declare-fun m!732309 () Bool)

(assert (=> start!68058 m!732309))

(declare-fun m!732311 () Bool)

(assert (=> b!791492 m!732311))

(declare-fun m!732313 () Bool)

(assert (=> b!791495 m!732313))

(assert (=> b!791495 m!732313))

(declare-fun m!732315 () Bool)

(assert (=> b!791495 m!732315))

(check-sat (not b!791494) (not start!68058) (not b!791493) (not b!791495) (not b!791492))
