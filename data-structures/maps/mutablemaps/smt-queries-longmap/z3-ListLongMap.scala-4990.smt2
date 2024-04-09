; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68472 () Bool)

(assert start!68472)

(declare-fun b!795510 () Bool)

(declare-fun e!441532 () Bool)

(declare-fun e!441533 () Bool)

(assert (=> b!795510 (= e!441532 e!441533)))

(declare-fun res!540205 () Bool)

(assert (=> b!795510 (=> (not res!540205) (not e!441533))))

(declare-datatypes ((SeekEntryResult!8281 0))(
  ( (MissingZero!8281 (index!35491 (_ BitVec 32))) (Found!8281 (index!35492 (_ BitVec 32))) (Intermediate!8281 (undefined!9093 Bool) (index!35493 (_ BitVec 32)) (x!66432 (_ BitVec 32))) (Undefined!8281) (MissingVacant!8281 (index!35494 (_ BitVec 32))) )
))
(declare-fun lt!354638 () SeekEntryResult!8281)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!795510 (= res!540205 (or (= lt!354638 (MissingZero!8281 i!1163)) (= lt!354638 (MissingVacant!8281 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-datatypes ((array!43213 0))(
  ( (array!43214 (arr!20683 (Array (_ BitVec 32) (_ BitVec 64))) (size!21104 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43213)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43213 (_ BitVec 32)) SeekEntryResult!8281)

(assert (=> b!795510 (= lt!354638 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!795511 () Bool)

(declare-fun e!441534 () Bool)

(assert (=> b!795511 (= e!441534 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354640 () SeekEntryResult!8281)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43213 (_ BitVec 32)) SeekEntryResult!8281)

(assert (=> b!795511 (= lt!354640 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20683 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354639 () SeekEntryResult!8281)

(assert (=> b!795511 (= lt!354639 (seekEntryOrOpen!0 (select (arr!20683 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795512 () Bool)

(declare-fun res!540199 () Bool)

(assert (=> b!795512 (=> (not res!540199) (not e!441532))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795512 (= res!540199 (validKeyInArray!0 k0!2044))))

(declare-fun b!795513 () Bool)

(declare-fun res!540203 () Bool)

(assert (=> b!795513 (=> (not res!540203) (not e!441533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43213 (_ BitVec 32)) Bool)

(assert (=> b!795513 (= res!540203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795514 () Bool)

(assert (=> b!795514 (= e!441533 e!441534)))

(declare-fun res!540204 () Bool)

(assert (=> b!795514 (=> (not res!540204) (not e!441534))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!354636 () (_ BitVec 64))

(declare-fun lt!354637 () array!43213)

(assert (=> b!795514 (= res!540204 (= (seekEntryOrOpen!0 lt!354636 lt!354637 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354636 lt!354637 mask!3266)))))

(assert (=> b!795514 (= lt!354636 (select (store (arr!20683 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!795514 (= lt!354637 (array!43214 (store (arr!20683 a!3170) i!1163 k0!2044) (size!21104 a!3170)))))

(declare-fun b!795515 () Bool)

(declare-fun res!540202 () Bool)

(assert (=> b!795515 (=> (not res!540202) (not e!441533))))

(assert (=> b!795515 (= res!540202 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21104 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20683 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21104 a!3170)) (= (select (arr!20683 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795516 () Bool)

(declare-fun res!540201 () Bool)

(assert (=> b!795516 (=> (not res!540201) (not e!441533))))

(declare-datatypes ((List!14699 0))(
  ( (Nil!14696) (Cons!14695 (h!15824 (_ BitVec 64)) (t!21022 List!14699)) )
))
(declare-fun arrayNoDuplicates!0 (array!43213 (_ BitVec 32) List!14699) Bool)

(assert (=> b!795516 (= res!540201 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14696))))

(declare-fun b!795517 () Bool)

(declare-fun res!540200 () Bool)

(assert (=> b!795517 (=> (not res!540200) (not e!441532))))

(assert (=> b!795517 (= res!540200 (validKeyInArray!0 (select (arr!20683 a!3170) j!153)))))

(declare-fun res!540208 () Bool)

(assert (=> start!68472 (=> (not res!540208) (not e!441532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68472 (= res!540208 (validMask!0 mask!3266))))

(assert (=> start!68472 e!441532))

(assert (=> start!68472 true))

(declare-fun array_inv!16457 (array!43213) Bool)

(assert (=> start!68472 (array_inv!16457 a!3170)))

(declare-fun b!795518 () Bool)

(declare-fun res!540207 () Bool)

(assert (=> b!795518 (=> (not res!540207) (not e!441532))))

(assert (=> b!795518 (= res!540207 (and (= (size!21104 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21104 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21104 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795519 () Bool)

(declare-fun res!540206 () Bool)

(assert (=> b!795519 (=> (not res!540206) (not e!441532))))

(declare-fun arrayContainsKey!0 (array!43213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795519 (= res!540206 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68472 res!540208) b!795518))

(assert (= (and b!795518 res!540207) b!795517))

(assert (= (and b!795517 res!540200) b!795512))

(assert (= (and b!795512 res!540199) b!795519))

(assert (= (and b!795519 res!540206) b!795510))

(assert (= (and b!795510 res!540205) b!795513))

(assert (= (and b!795513 res!540203) b!795516))

(assert (= (and b!795516 res!540201) b!795515))

(assert (= (and b!795515 res!540202) b!795514))

(assert (= (and b!795514 res!540204) b!795511))

(declare-fun m!736283 () Bool)

(assert (=> b!795517 m!736283))

(assert (=> b!795517 m!736283))

(declare-fun m!736285 () Bool)

(assert (=> b!795517 m!736285))

(declare-fun m!736287 () Bool)

(assert (=> b!795514 m!736287))

(declare-fun m!736289 () Bool)

(assert (=> b!795514 m!736289))

(declare-fun m!736291 () Bool)

(assert (=> b!795514 m!736291))

(declare-fun m!736293 () Bool)

(assert (=> b!795514 m!736293))

(assert (=> b!795511 m!736283))

(assert (=> b!795511 m!736283))

(declare-fun m!736295 () Bool)

(assert (=> b!795511 m!736295))

(assert (=> b!795511 m!736283))

(declare-fun m!736297 () Bool)

(assert (=> b!795511 m!736297))

(declare-fun m!736299 () Bool)

(assert (=> start!68472 m!736299))

(declare-fun m!736301 () Bool)

(assert (=> start!68472 m!736301))

(declare-fun m!736303 () Bool)

(assert (=> b!795519 m!736303))

(declare-fun m!736305 () Bool)

(assert (=> b!795512 m!736305))

(declare-fun m!736307 () Bool)

(assert (=> b!795513 m!736307))

(declare-fun m!736309 () Bool)

(assert (=> b!795510 m!736309))

(declare-fun m!736311 () Bool)

(assert (=> b!795515 m!736311))

(declare-fun m!736313 () Bool)

(assert (=> b!795515 m!736313))

(declare-fun m!736315 () Bool)

(assert (=> b!795516 m!736315))

(check-sat (not b!795513) (not b!795512) (not b!795514) (not b!795511) (not b!795519) (not b!795510) (not start!68472) (not b!795516) (not b!795517))
(check-sat)
