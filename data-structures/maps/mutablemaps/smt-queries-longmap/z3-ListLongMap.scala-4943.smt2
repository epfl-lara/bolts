; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68064 () Bool)

(assert start!68064)

(declare-fun b!791542 () Bool)

(declare-fun e!439888 () Bool)

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!791542 (= e!439888 (bvslt mask!3266 #b00000000000000000000000000000000))))

(declare-fun b!791543 () Bool)

(declare-fun res!536450 () Bool)

(assert (=> b!791543 (=> (not res!536450) (not e!439888))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791543 (= res!536450 (validKeyInArray!0 k0!2044))))

(declare-fun b!791544 () Bool)

(declare-fun res!536447 () Bool)

(assert (=> b!791544 (=> (not res!536447) (not e!439888))))

(declare-datatypes ((array!42922 0))(
  ( (array!42923 (arr!20542 (Array (_ BitVec 32) (_ BitVec 64))) (size!20963 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42922)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!791544 (= res!536447 (validKeyInArray!0 (select (arr!20542 a!3170) j!153)))))

(declare-fun b!791546 () Bool)

(declare-fun res!536451 () Bool)

(assert (=> b!791546 (=> (not res!536451) (not e!439888))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791546 (= res!536451 (and (= (size!20963 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20963 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20963 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791547 () Bool)

(declare-fun res!536452 () Bool)

(assert (=> b!791547 (=> (not res!536452) (not e!439888))))

(declare-datatypes ((SeekEntryResult!8140 0))(
  ( (MissingZero!8140 (index!34927 (_ BitVec 32))) (Found!8140 (index!34928 (_ BitVec 32))) (Intermediate!8140 (undefined!8952 Bool) (index!34929 (_ BitVec 32)) (x!65915 (_ BitVec 32))) (Undefined!8140) (MissingVacant!8140 (index!34930 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42922 (_ BitVec 32)) SeekEntryResult!8140)

(assert (=> b!791547 (= res!536452 (not (= (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266) (MissingZero!8140 i!1163))))))

(declare-fun res!536448 () Bool)

(assert (=> start!68064 (=> (not res!536448) (not e!439888))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68064 (= res!536448 (validMask!0 mask!3266))))

(assert (=> start!68064 e!439888))

(assert (=> start!68064 true))

(declare-fun array_inv!16316 (array!42922) Bool)

(assert (=> start!68064 (array_inv!16316 a!3170)))

(declare-fun b!791545 () Bool)

(declare-fun res!536449 () Bool)

(assert (=> b!791545 (=> (not res!536449) (not e!439888))))

(declare-fun arrayContainsKey!0 (array!42922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791545 (= res!536449 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68064 res!536448) b!791546))

(assert (= (and b!791546 res!536451) b!791544))

(assert (= (and b!791544 res!536447) b!791543))

(assert (= (and b!791543 res!536450) b!791545))

(assert (= (and b!791545 res!536449) b!791547))

(assert (= (and b!791547 res!536452) b!791542))

(declare-fun m!732345 () Bool)

(assert (=> b!791547 m!732345))

(declare-fun m!732347 () Bool)

(assert (=> b!791543 m!732347))

(declare-fun m!732349 () Bool)

(assert (=> b!791545 m!732349))

(declare-fun m!732351 () Bool)

(assert (=> start!68064 m!732351))

(declare-fun m!732353 () Bool)

(assert (=> start!68064 m!732353))

(declare-fun m!732355 () Bool)

(assert (=> b!791544 m!732355))

(assert (=> b!791544 m!732355))

(declare-fun m!732357 () Bool)

(assert (=> b!791544 m!732357))

(check-sat (not b!791545) (not b!791547) (not start!68064) (not b!791543) (not b!791544))
(check-sat)
