; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68070 () Bool)

(assert start!68070)

(declare-fun b!791591 () Bool)

(declare-fun res!536499 () Bool)

(declare-fun e!439905 () Bool)

(assert (=> b!791591 (=> (not res!536499) (not e!439905))))

(declare-datatypes ((array!42928 0))(
  ( (array!42929 (arr!20545 (Array (_ BitVec 32) (_ BitVec 64))) (size!20966 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42928)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791591 (= res!536499 (validKeyInArray!0 (select (arr!20545 a!3170) j!153)))))

(declare-fun b!791592 () Bool)

(declare-fun res!536498 () Bool)

(assert (=> b!791592 (=> (not res!536498) (not e!439905))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!791592 (= res!536498 (and (= (size!20966 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20966 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20966 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791593 () Bool)

(declare-fun res!536500 () Bool)

(assert (=> b!791593 (=> (not res!536500) (not e!439905))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791593 (= res!536500 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791594 () Bool)

(declare-fun res!536497 () Bool)

(assert (=> b!791594 (=> (not res!536497) (not e!439905))))

(assert (=> b!791594 (= res!536497 (validKeyInArray!0 k0!2044))))

(declare-fun b!791595 () Bool)

(assert (=> b!791595 (= e!439905 false)))

(declare-datatypes ((SeekEntryResult!8143 0))(
  ( (MissingZero!8143 (index!34939 (_ BitVec 32))) (Found!8143 (index!34940 (_ BitVec 32))) (Intermediate!8143 (undefined!8955 Bool) (index!34941 (_ BitVec 32)) (x!65926 (_ BitVec 32))) (Undefined!8143) (MissingVacant!8143 (index!34942 (_ BitVec 32))) )
))
(declare-fun lt!353245 () SeekEntryResult!8143)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42928 (_ BitVec 32)) SeekEntryResult!8143)

(assert (=> b!791595 (= lt!353245 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!536496 () Bool)

(assert (=> start!68070 (=> (not res!536496) (not e!439905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68070 (= res!536496 (validMask!0 mask!3266))))

(assert (=> start!68070 e!439905))

(assert (=> start!68070 true))

(declare-fun array_inv!16319 (array!42928) Bool)

(assert (=> start!68070 (array_inv!16319 a!3170)))

(assert (= (and start!68070 res!536496) b!791592))

(assert (= (and b!791592 res!536498) b!791591))

(assert (= (and b!791591 res!536499) b!791594))

(assert (= (and b!791594 res!536497) b!791593))

(assert (= (and b!791593 res!536500) b!791595))

(declare-fun m!732387 () Bool)

(assert (=> b!791593 m!732387))

(declare-fun m!732389 () Bool)

(assert (=> b!791595 m!732389))

(declare-fun m!732391 () Bool)

(assert (=> b!791594 m!732391))

(declare-fun m!732393 () Bool)

(assert (=> b!791591 m!732393))

(assert (=> b!791591 m!732393))

(declare-fun m!732395 () Bool)

(assert (=> b!791591 m!732395))

(declare-fun m!732397 () Bool)

(assert (=> start!68070 m!732397))

(declare-fun m!732399 () Bool)

(assert (=> start!68070 m!732399))

(check-sat (not start!68070) (not b!791595) (not b!791591) (not b!791593) (not b!791594))
