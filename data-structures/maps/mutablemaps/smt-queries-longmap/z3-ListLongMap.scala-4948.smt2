; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68094 () Bool)

(assert start!68094)

(declare-fun b!791771 () Bool)

(declare-fun res!536678 () Bool)

(declare-fun e!439978 () Bool)

(assert (=> b!791771 (=> (not res!536678) (not e!439978))))

(declare-datatypes ((array!42952 0))(
  ( (array!42953 (arr!20557 (Array (_ BitVec 32) (_ BitVec 64))) (size!20978 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42952)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791771 (= res!536678 (validKeyInArray!0 (select (arr!20557 a!3170) j!153)))))

(declare-fun res!536679 () Bool)

(assert (=> start!68094 (=> (not res!536679) (not e!439978))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68094 (= res!536679 (validMask!0 mask!3266))))

(assert (=> start!68094 e!439978))

(assert (=> start!68094 true))

(declare-fun array_inv!16331 (array!42952) Bool)

(assert (=> start!68094 (array_inv!16331 a!3170)))

(declare-fun b!791772 () Bool)

(assert (=> b!791772 (= e!439978 false)))

(declare-datatypes ((SeekEntryResult!8155 0))(
  ( (MissingZero!8155 (index!34987 (_ BitVec 32))) (Found!8155 (index!34988 (_ BitVec 32))) (Intermediate!8155 (undefined!8967 Bool) (index!34989 (_ BitVec 32)) (x!65970 (_ BitVec 32))) (Undefined!8155) (MissingVacant!8155 (index!34990 (_ BitVec 32))) )
))
(declare-fun lt!353281 () SeekEntryResult!8155)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42952 (_ BitVec 32)) SeekEntryResult!8155)

(assert (=> b!791772 (= lt!353281 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!791773 () Bool)

(declare-fun res!536677 () Bool)

(assert (=> b!791773 (=> (not res!536677) (not e!439978))))

(declare-fun arrayContainsKey!0 (array!42952 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791773 (= res!536677 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791774 () Bool)

(declare-fun res!536676 () Bool)

(assert (=> b!791774 (=> (not res!536676) (not e!439978))))

(assert (=> b!791774 (= res!536676 (validKeyInArray!0 k0!2044))))

(declare-fun b!791775 () Bool)

(declare-fun res!536680 () Bool)

(assert (=> b!791775 (=> (not res!536680) (not e!439978))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791775 (= res!536680 (and (= (size!20978 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20978 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20978 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68094 res!536679) b!791775))

(assert (= (and b!791775 res!536680) b!791771))

(assert (= (and b!791771 res!536678) b!791774))

(assert (= (and b!791774 res!536676) b!791773))

(assert (= (and b!791773 res!536677) b!791772))

(declare-fun m!732555 () Bool)

(assert (=> b!791771 m!732555))

(assert (=> b!791771 m!732555))

(declare-fun m!732557 () Bool)

(assert (=> b!791771 m!732557))

(declare-fun m!732559 () Bool)

(assert (=> b!791773 m!732559))

(declare-fun m!732561 () Bool)

(assert (=> b!791772 m!732561))

(declare-fun m!732563 () Bool)

(assert (=> b!791774 m!732563))

(declare-fun m!732565 () Bool)

(assert (=> start!68094 m!732565))

(declare-fun m!732567 () Bool)

(assert (=> start!68094 m!732567))

(check-sat (not b!791773) (not start!68094) (not b!791771) (not b!791772) (not b!791774))
