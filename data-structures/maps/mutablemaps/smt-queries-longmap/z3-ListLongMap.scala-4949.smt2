; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68100 () Bool)

(assert start!68100)

(declare-fun b!791816 () Bool)

(declare-fun res!536725 () Bool)

(declare-fun e!439995 () Bool)

(assert (=> b!791816 (=> (not res!536725) (not e!439995))))

(declare-datatypes ((array!42958 0))(
  ( (array!42959 (arr!20560 (Array (_ BitVec 32) (_ BitVec 64))) (size!20981 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42958)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791816 (= res!536725 (validKeyInArray!0 (select (arr!20560 a!3170) j!153)))))

(declare-fun b!791817 () Bool)

(declare-fun res!536721 () Bool)

(assert (=> b!791817 (=> (not res!536721) (not e!439995))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42958 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791817 (= res!536721 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun b!791818 () Bool)

(declare-datatypes ((SeekEntryResult!8158 0))(
  ( (MissingZero!8158 (index!34999 (_ BitVec 32))) (Found!8158 (index!35000 (_ BitVec 32))) (Intermediate!8158 (undefined!8970 Bool) (index!35001 (_ BitVec 32)) (x!65981 (_ BitVec 32))) (Undefined!8158) (MissingVacant!8158 (index!35002 (_ BitVec 32))) )
))
(declare-fun lt!353290 () SeekEntryResult!8158)

(assert (=> b!791818 (= e!439995 (and (or (= lt!353290 (MissingZero!8158 i!1163)) (= lt!353290 (MissingVacant!8158 i!1163))) (bvsgt #b00000000000000000000000000000000 (size!20981 a!3170))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42958 (_ BitVec 32)) SeekEntryResult!8158)

(assert (=> b!791818 (= lt!353290 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!791820 () Bool)

(declare-fun res!536723 () Bool)

(assert (=> b!791820 (=> (not res!536723) (not e!439995))))

(assert (=> b!791820 (= res!536723 (and (= (size!20981 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20981 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20981 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!536722 () Bool)

(assert (=> start!68100 (=> (not res!536722) (not e!439995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68100 (= res!536722 (validMask!0 mask!3266))))

(assert (=> start!68100 e!439995))

(assert (=> start!68100 true))

(declare-fun array_inv!16334 (array!42958) Bool)

(assert (=> start!68100 (array_inv!16334 a!3170)))

(declare-fun b!791819 () Bool)

(declare-fun res!536724 () Bool)

(assert (=> b!791819 (=> (not res!536724) (not e!439995))))

(assert (=> b!791819 (= res!536724 (validKeyInArray!0 k0!2044))))

(assert (= (and start!68100 res!536722) b!791820))

(assert (= (and b!791820 res!536723) b!791816))

(assert (= (and b!791816 res!536725) b!791819))

(assert (= (and b!791819 res!536724) b!791817))

(assert (= (and b!791817 res!536721) b!791818))

(declare-fun m!732597 () Bool)

(assert (=> b!791816 m!732597))

(assert (=> b!791816 m!732597))

(declare-fun m!732599 () Bool)

(assert (=> b!791816 m!732599))

(declare-fun m!732601 () Bool)

(assert (=> b!791819 m!732601))

(declare-fun m!732603 () Bool)

(assert (=> start!68100 m!732603))

(declare-fun m!732605 () Bool)

(assert (=> start!68100 m!732605))

(declare-fun m!732607 () Bool)

(assert (=> b!791817 m!732607))

(declare-fun m!732609 () Bool)

(assert (=> b!791818 m!732609))

(check-sat (not b!791816) (not b!791819) (not b!791817) (not b!791818) (not start!68100))
(check-sat)
