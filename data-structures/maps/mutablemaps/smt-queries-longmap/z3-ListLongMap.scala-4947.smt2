; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68088 () Bool)

(assert start!68088)

(declare-fun res!536631 () Bool)

(declare-fun e!439960 () Bool)

(assert (=> start!68088 (=> (not res!536631) (not e!439960))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68088 (= res!536631 (validMask!0 mask!3266))))

(assert (=> start!68088 e!439960))

(assert (=> start!68088 true))

(declare-datatypes ((array!42946 0))(
  ( (array!42947 (arr!20554 (Array (_ BitVec 32) (_ BitVec 64))) (size!20975 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42946)

(declare-fun array_inv!16328 (array!42946) Bool)

(assert (=> start!68088 (array_inv!16328 a!3170)))

(declare-fun b!791726 () Bool)

(declare-fun res!536634 () Bool)

(assert (=> b!791726 (=> (not res!536634) (not e!439960))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791726 (= res!536634 (validKeyInArray!0 k0!2044))))

(declare-fun b!791727 () Bool)

(declare-fun res!536633 () Bool)

(assert (=> b!791727 (=> (not res!536633) (not e!439960))))

(declare-fun arrayContainsKey!0 (array!42946 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791727 (= res!536633 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791728 () Bool)

(declare-fun res!536635 () Bool)

(assert (=> b!791728 (=> (not res!536635) (not e!439960))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!791728 (= res!536635 (validKeyInArray!0 (select (arr!20554 a!3170) j!153)))))

(declare-fun b!791729 () Bool)

(assert (=> b!791729 (= e!439960 false)))

(declare-datatypes ((SeekEntryResult!8152 0))(
  ( (MissingZero!8152 (index!34975 (_ BitVec 32))) (Found!8152 (index!34976 (_ BitVec 32))) (Intermediate!8152 (undefined!8964 Bool) (index!34977 (_ BitVec 32)) (x!65959 (_ BitVec 32))) (Undefined!8152) (MissingVacant!8152 (index!34978 (_ BitVec 32))) )
))
(declare-fun lt!353272 () SeekEntryResult!8152)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42946 (_ BitVec 32)) SeekEntryResult!8152)

(assert (=> b!791729 (= lt!353272 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!791730 () Bool)

(declare-fun res!536632 () Bool)

(assert (=> b!791730 (=> (not res!536632) (not e!439960))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791730 (= res!536632 (and (= (size!20975 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20975 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20975 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68088 res!536631) b!791730))

(assert (= (and b!791730 res!536632) b!791728))

(assert (= (and b!791728 res!536635) b!791726))

(assert (= (and b!791726 res!536634) b!791727))

(assert (= (and b!791727 res!536633) b!791729))

(declare-fun m!732513 () Bool)

(assert (=> start!68088 m!732513))

(declare-fun m!732515 () Bool)

(assert (=> start!68088 m!732515))

(declare-fun m!732517 () Bool)

(assert (=> b!791727 m!732517))

(declare-fun m!732519 () Bool)

(assert (=> b!791728 m!732519))

(assert (=> b!791728 m!732519))

(declare-fun m!732521 () Bool)

(assert (=> b!791728 m!732521))

(declare-fun m!732523 () Bool)

(assert (=> b!791729 m!732523))

(declare-fun m!732525 () Bool)

(assert (=> b!791726 m!732525))

(check-sat (not b!791729) (not b!791727) (not start!68088) (not b!791728) (not b!791726))
