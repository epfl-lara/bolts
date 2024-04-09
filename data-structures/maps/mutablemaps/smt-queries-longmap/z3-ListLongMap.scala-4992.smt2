; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68484 () Bool)

(assert start!68484)

(declare-fun b!795690 () Bool)

(declare-fun e!441606 () Bool)

(declare-fun e!441607 () Bool)

(assert (=> b!795690 (= e!441606 e!441607)))

(declare-fun res!540387 () Bool)

(assert (=> b!795690 (=> (not res!540387) (not e!441607))))

(declare-datatypes ((SeekEntryResult!8287 0))(
  ( (MissingZero!8287 (index!35515 (_ BitVec 32))) (Found!8287 (index!35516 (_ BitVec 32))) (Intermediate!8287 (undefined!9099 Bool) (index!35517 (_ BitVec 32)) (x!66454 (_ BitVec 32))) (Undefined!8287) (MissingVacant!8287 (index!35518 (_ BitVec 32))) )
))
(declare-fun lt!354730 () SeekEntryResult!8287)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!795690 (= res!540387 (or (= lt!354730 (MissingZero!8287 i!1163)) (= lt!354730 (MissingVacant!8287 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((array!43225 0))(
  ( (array!43226 (arr!20689 (Array (_ BitVec 32) (_ BitVec 64))) (size!21110 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43225)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43225 (_ BitVec 32)) SeekEntryResult!8287)

(assert (=> b!795690 (= lt!354730 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!795691 () Bool)

(declare-fun res!540385 () Bool)

(assert (=> b!795691 (=> (not res!540385) (not e!441606))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795691 (= res!540385 (validKeyInArray!0 k0!2044))))

(declare-fun b!795692 () Bool)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!354729 () SeekEntryResult!8287)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!354728 () SeekEntryResult!8287)

(declare-fun e!441605 () Bool)

(assert (=> b!795692 (= e!441605 (and (= lt!354729 lt!354728) (= lt!354728 (Found!8287 j!153)) (= (select (arr!20689 a!3170) index!1236) (select (arr!20689 a!3170) j!153)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20689 a!3170) i!1163 k0!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43225 (_ BitVec 32)) SeekEntryResult!8287)

(assert (=> b!795692 (= lt!354728 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20689 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!795692 (= lt!354729 (seekEntryOrOpen!0 (select (arr!20689 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!540379 () Bool)

(assert (=> start!68484 (=> (not res!540379) (not e!441606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68484 (= res!540379 (validMask!0 mask!3266))))

(assert (=> start!68484 e!441606))

(assert (=> start!68484 true))

(declare-fun array_inv!16463 (array!43225) Bool)

(assert (=> start!68484 (array_inv!16463 a!3170)))

(declare-fun b!795693 () Bool)

(declare-fun res!540382 () Bool)

(assert (=> b!795693 (=> (not res!540382) (not e!441607))))

(declare-datatypes ((List!14705 0))(
  ( (Nil!14702) (Cons!14701 (h!15830 (_ BitVec 64)) (t!21028 List!14705)) )
))
(declare-fun arrayNoDuplicates!0 (array!43225 (_ BitVec 32) List!14705) Bool)

(assert (=> b!795693 (= res!540382 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14702))))

(declare-fun b!795694 () Bool)

(assert (=> b!795694 (= e!441607 e!441605)))

(declare-fun res!540380 () Bool)

(assert (=> b!795694 (=> (not res!540380) (not e!441605))))

(declare-fun lt!354726 () (_ BitVec 64))

(declare-fun lt!354727 () array!43225)

(assert (=> b!795694 (= res!540380 (= (seekEntryOrOpen!0 lt!354726 lt!354727 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354726 lt!354727 mask!3266)))))

(assert (=> b!795694 (= lt!354726 (select (store (arr!20689 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!795694 (= lt!354727 (array!43226 (store (arr!20689 a!3170) i!1163 k0!2044) (size!21110 a!3170)))))

(declare-fun b!795695 () Bool)

(declare-fun res!540388 () Bool)

(assert (=> b!795695 (=> (not res!540388) (not e!441607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43225 (_ BitVec 32)) Bool)

(assert (=> b!795695 (= res!540388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795696 () Bool)

(declare-fun res!540384 () Bool)

(assert (=> b!795696 (=> (not res!540384) (not e!441607))))

(assert (=> b!795696 (= res!540384 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21110 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20689 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21110 a!3170)) (= (select (arr!20689 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795697 () Bool)

(declare-fun res!540386 () Bool)

(assert (=> b!795697 (=> (not res!540386) (not e!441606))))

(declare-fun arrayContainsKey!0 (array!43225 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795697 (= res!540386 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795698 () Bool)

(declare-fun res!540383 () Bool)

(assert (=> b!795698 (=> (not res!540383) (not e!441606))))

(assert (=> b!795698 (= res!540383 (and (= (size!21110 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21110 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21110 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795699 () Bool)

(declare-fun res!540381 () Bool)

(assert (=> b!795699 (=> (not res!540381) (not e!441606))))

(assert (=> b!795699 (= res!540381 (validKeyInArray!0 (select (arr!20689 a!3170) j!153)))))

(assert (= (and start!68484 res!540379) b!795698))

(assert (= (and b!795698 res!540383) b!795699))

(assert (= (and b!795699 res!540381) b!795691))

(assert (= (and b!795691 res!540385) b!795697))

(assert (= (and b!795697 res!540386) b!795690))

(assert (= (and b!795690 res!540387) b!795695))

(assert (= (and b!795695 res!540388) b!795693))

(assert (= (and b!795693 res!540382) b!795696))

(assert (= (and b!795696 res!540384) b!795694))

(assert (= (and b!795694 res!540380) b!795692))

(declare-fun m!736497 () Bool)

(assert (=> b!795696 m!736497))

(declare-fun m!736499 () Bool)

(assert (=> b!795696 m!736499))

(declare-fun m!736501 () Bool)

(assert (=> b!795695 m!736501))

(declare-fun m!736503 () Bool)

(assert (=> b!795691 m!736503))

(declare-fun m!736505 () Bool)

(assert (=> start!68484 m!736505))

(declare-fun m!736507 () Bool)

(assert (=> start!68484 m!736507))

(declare-fun m!736509 () Bool)

(assert (=> b!795690 m!736509))

(declare-fun m!736511 () Bool)

(assert (=> b!795694 m!736511))

(declare-fun m!736513 () Bool)

(assert (=> b!795694 m!736513))

(declare-fun m!736515 () Bool)

(assert (=> b!795694 m!736515))

(declare-fun m!736517 () Bool)

(assert (=> b!795694 m!736517))

(declare-fun m!736519 () Bool)

(assert (=> b!795693 m!736519))

(declare-fun m!736521 () Bool)

(assert (=> b!795692 m!736521))

(declare-fun m!736523 () Bool)

(assert (=> b!795692 m!736523))

(declare-fun m!736525 () Bool)

(assert (=> b!795692 m!736525))

(assert (=> b!795692 m!736521))

(declare-fun m!736527 () Bool)

(assert (=> b!795692 m!736527))

(assert (=> b!795692 m!736521))

(declare-fun m!736529 () Bool)

(assert (=> b!795692 m!736529))

(assert (=> b!795692 m!736515))

(declare-fun m!736531 () Bool)

(assert (=> b!795697 m!736531))

(assert (=> b!795699 m!736521))

(assert (=> b!795699 m!736521))

(declare-fun m!736533 () Bool)

(assert (=> b!795699 m!736533))

(check-sat (not b!795692) (not start!68484) (not b!795697) (not b!795695) (not b!795691) (not b!795699) (not b!795693) (not b!795694) (not b!795690))
(check-sat)
