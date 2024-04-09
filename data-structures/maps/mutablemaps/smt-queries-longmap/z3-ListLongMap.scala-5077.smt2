; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68994 () Bool)

(assert start!68994)

(declare-fun res!549103 () Bool)

(declare-fun e!445649 () Bool)

(assert (=> start!68994 (=> (not res!549103) (not e!445649))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68994 (= res!549103 (validMask!0 mask!3266))))

(assert (=> start!68994 e!445649))

(assert (=> start!68994 true))

(declare-datatypes ((array!43735 0))(
  ( (array!43736 (arr!20944 (Array (_ BitVec 32) (_ BitVec 64))) (size!21365 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43735)

(declare-fun array_inv!16718 (array!43735) Bool)

(assert (=> start!68994 (array_inv!16718 a!3170)))

(declare-fun b!804414 () Bool)

(declare-fun res!549105 () Bool)

(assert (=> b!804414 (=> (not res!549105) (not e!445649))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804414 (= res!549105 (validKeyInArray!0 (select (arr!20944 a!3170) j!153)))))

(declare-fun b!804415 () Bool)

(declare-fun res!549104 () Bool)

(assert (=> b!804415 (=> (not res!549104) (not e!445649))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804415 (= res!549104 (and (= (size!21365 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21365 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21365 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804416 () Bool)

(declare-fun e!445651 () Bool)

(assert (=> b!804416 (= e!445649 e!445651)))

(declare-fun res!549106 () Bool)

(assert (=> b!804416 (=> (not res!549106) (not e!445651))))

(declare-datatypes ((SeekEntryResult!8542 0))(
  ( (MissingZero!8542 (index!36535 (_ BitVec 32))) (Found!8542 (index!36536 (_ BitVec 32))) (Intermediate!8542 (undefined!9354 Bool) (index!36537 (_ BitVec 32)) (x!67389 (_ BitVec 32))) (Undefined!8542) (MissingVacant!8542 (index!36538 (_ BitVec 32))) )
))
(declare-fun lt!360139 () SeekEntryResult!8542)

(assert (=> b!804416 (= res!549106 (or (= lt!360139 (MissingZero!8542 i!1163)) (= lt!360139 (MissingVacant!8542 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43735 (_ BitVec 32)) SeekEntryResult!8542)

(assert (=> b!804416 (= lt!360139 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!804417 () Bool)

(declare-fun res!549108 () Bool)

(assert (=> b!804417 (=> (not res!549108) (not e!445649))))

(declare-fun arrayContainsKey!0 (array!43735 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804417 (= res!549108 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804418 () Bool)

(declare-fun res!549109 () Bool)

(assert (=> b!804418 (=> (not res!549109) (not e!445651))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43735 (_ BitVec 32)) Bool)

(assert (=> b!804418 (= res!549109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804419 () Bool)

(declare-fun res!549107 () Bool)

(assert (=> b!804419 (=> (not res!549107) (not e!445649))))

(assert (=> b!804419 (= res!549107 (validKeyInArray!0 k0!2044))))

(declare-fun b!804420 () Bool)

(assert (=> b!804420 (= e!445651 false)))

(declare-fun lt!360138 () Bool)

(declare-datatypes ((List!14960 0))(
  ( (Nil!14957) (Cons!14956 (h!16085 (_ BitVec 64)) (t!21283 List!14960)) )
))
(declare-fun arrayNoDuplicates!0 (array!43735 (_ BitVec 32) List!14960) Bool)

(assert (=> b!804420 (= lt!360138 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14957))))

(assert (= (and start!68994 res!549103) b!804415))

(assert (= (and b!804415 res!549104) b!804414))

(assert (= (and b!804414 res!549105) b!804419))

(assert (= (and b!804419 res!549107) b!804417))

(assert (= (and b!804417 res!549108) b!804416))

(assert (= (and b!804416 res!549106) b!804418))

(assert (= (and b!804418 res!549109) b!804420))

(declare-fun m!746365 () Bool)

(assert (=> b!804418 m!746365))

(declare-fun m!746367 () Bool)

(assert (=> start!68994 m!746367))

(declare-fun m!746369 () Bool)

(assert (=> start!68994 m!746369))

(declare-fun m!746371 () Bool)

(assert (=> b!804416 m!746371))

(declare-fun m!746373 () Bool)

(assert (=> b!804414 m!746373))

(assert (=> b!804414 m!746373))

(declare-fun m!746375 () Bool)

(assert (=> b!804414 m!746375))

(declare-fun m!746377 () Bool)

(assert (=> b!804417 m!746377))

(declare-fun m!746379 () Bool)

(assert (=> b!804419 m!746379))

(declare-fun m!746381 () Bool)

(assert (=> b!804420 m!746381))

(check-sat (not b!804414) (not b!804416) (not b!804418) (not start!68994) (not b!804417) (not b!804420) (not b!804419))
(check-sat)
