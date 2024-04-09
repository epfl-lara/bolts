; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68082 () Bool)

(assert start!68082)

(declare-fun b!791681 () Bool)

(declare-fun res!536590 () Bool)

(declare-fun e!439942 () Bool)

(assert (=> b!791681 (=> (not res!536590) (not e!439942))))

(declare-datatypes ((array!42940 0))(
  ( (array!42941 (arr!20551 (Array (_ BitVec 32) (_ BitVec 64))) (size!20972 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42940)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791681 (= res!536590 (validKeyInArray!0 (select (arr!20551 a!3170) j!153)))))

(declare-fun b!791682 () Bool)

(assert (=> b!791682 (= e!439942 false)))

(declare-datatypes ((SeekEntryResult!8149 0))(
  ( (MissingZero!8149 (index!34963 (_ BitVec 32))) (Found!8149 (index!34964 (_ BitVec 32))) (Intermediate!8149 (undefined!8961 Bool) (index!34965 (_ BitVec 32)) (x!65948 (_ BitVec 32))) (Undefined!8149) (MissingVacant!8149 (index!34966 (_ BitVec 32))) )
))
(declare-fun lt!353263 () SeekEntryResult!8149)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42940 (_ BitVec 32)) SeekEntryResult!8149)

(assert (=> b!791682 (= lt!353263 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!536588 () Bool)

(assert (=> start!68082 (=> (not res!536588) (not e!439942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68082 (= res!536588 (validMask!0 mask!3266))))

(assert (=> start!68082 e!439942))

(assert (=> start!68082 true))

(declare-fun array_inv!16325 (array!42940) Bool)

(assert (=> start!68082 (array_inv!16325 a!3170)))

(declare-fun b!791683 () Bool)

(declare-fun res!536587 () Bool)

(assert (=> b!791683 (=> (not res!536587) (not e!439942))))

(declare-fun arrayContainsKey!0 (array!42940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791683 (= res!536587 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791684 () Bool)

(declare-fun res!536589 () Bool)

(assert (=> b!791684 (=> (not res!536589) (not e!439942))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791684 (= res!536589 (and (= (size!20972 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20972 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20972 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791685 () Bool)

(declare-fun res!536586 () Bool)

(assert (=> b!791685 (=> (not res!536586) (not e!439942))))

(assert (=> b!791685 (= res!536586 (validKeyInArray!0 k0!2044))))

(assert (= (and start!68082 res!536588) b!791684))

(assert (= (and b!791684 res!536589) b!791681))

(assert (= (and b!791681 res!536590) b!791685))

(assert (= (and b!791685 res!536586) b!791683))

(assert (= (and b!791683 res!536587) b!791682))

(declare-fun m!732471 () Bool)

(assert (=> start!68082 m!732471))

(declare-fun m!732473 () Bool)

(assert (=> start!68082 m!732473))

(declare-fun m!732475 () Bool)

(assert (=> b!791682 m!732475))

(declare-fun m!732477 () Bool)

(assert (=> b!791685 m!732477))

(declare-fun m!732479 () Bool)

(assert (=> b!791681 m!732479))

(assert (=> b!791681 m!732479))

(declare-fun m!732481 () Bool)

(assert (=> b!791681 m!732481))

(declare-fun m!732483 () Bool)

(assert (=> b!791683 m!732483))

(check-sat (not b!791682) (not b!791681) (not b!791685) (not b!791683) (not start!68082))
