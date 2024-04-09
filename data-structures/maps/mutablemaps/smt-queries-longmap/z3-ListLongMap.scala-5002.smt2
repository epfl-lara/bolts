; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68544 () Bool)

(assert start!68544)

(declare-fun b!796685 () Bool)

(declare-fun res!541376 () Bool)

(declare-fun e!442062 () Bool)

(assert (=> b!796685 (=> (not res!541376) (not e!442062))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43285 0))(
  ( (array!43286 (arr!20719 (Array (_ BitVec 32) (_ BitVec 64))) (size!21140 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43285)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!796685 (= res!541376 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21140 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20719 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21140 a!3170)) (= (select (arr!20719 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796686 () Bool)

(declare-fun res!541375 () Bool)

(declare-fun e!442059 () Bool)

(assert (=> b!796686 (=> (not res!541375) (not e!442059))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43285 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796686 (= res!541375 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796687 () Bool)

(declare-fun res!541374 () Bool)

(assert (=> b!796687 (=> (not res!541374) (not e!442059))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796687 (= res!541374 (validKeyInArray!0 (select (arr!20719 a!3170) j!153)))))

(declare-fun b!796688 () Bool)

(declare-fun e!442061 () Bool)

(assert (=> b!796688 (= e!442062 e!442061)))

(declare-fun res!541377 () Bool)

(assert (=> b!796688 (=> (not res!541377) (not e!442061))))

(declare-datatypes ((SeekEntryResult!8317 0))(
  ( (MissingZero!8317 (index!35635 (_ BitVec 32))) (Found!8317 (index!35636 (_ BitVec 32))) (Intermediate!8317 (undefined!9129 Bool) (index!35637 (_ BitVec 32)) (x!66564 (_ BitVec 32))) (Undefined!8317) (MissingVacant!8317 (index!35638 (_ BitVec 32))) )
))
(declare-fun lt!355333 () SeekEntryResult!8317)

(declare-fun lt!355336 () SeekEntryResult!8317)

(assert (=> b!796688 (= res!541377 (= lt!355333 lt!355336))))

(declare-fun lt!355330 () array!43285)

(declare-fun lt!355334 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43285 (_ BitVec 32)) SeekEntryResult!8317)

(assert (=> b!796688 (= lt!355336 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355334 lt!355330 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43285 (_ BitVec 32)) SeekEntryResult!8317)

(assert (=> b!796688 (= lt!355333 (seekEntryOrOpen!0 lt!355334 lt!355330 mask!3266))))

(assert (=> b!796688 (= lt!355334 (select (store (arr!20719 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!796688 (= lt!355330 (array!43286 (store (arr!20719 a!3170) i!1163 k0!2044) (size!21140 a!3170)))))

(declare-fun b!796689 () Bool)

(declare-fun res!541381 () Bool)

(assert (=> b!796689 (=> (not res!541381) (not e!442059))))

(assert (=> b!796689 (= res!541381 (validKeyInArray!0 k0!2044))))

(declare-fun b!796690 () Bool)

(declare-fun e!442060 () Bool)

(assert (=> b!796690 (= e!442060 (not true))))

(assert (=> b!796690 (= lt!355336 (Found!8317 index!1236))))

(declare-fun b!796691 () Bool)

(declare-fun res!541383 () Bool)

(assert (=> b!796691 (=> (not res!541383) (not e!442062))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43285 (_ BitVec 32)) Bool)

(assert (=> b!796691 (= res!541383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796692 () Bool)

(assert (=> b!796692 (= e!442061 e!442060)))

(declare-fun res!541380 () Bool)

(assert (=> b!796692 (=> (not res!541380) (not e!442060))))

(declare-fun lt!355335 () SeekEntryResult!8317)

(declare-fun lt!355332 () SeekEntryResult!8317)

(assert (=> b!796692 (= res!541380 (and (= lt!355335 lt!355332) (= lt!355332 (Found!8317 j!153)) (= (select (arr!20719 a!3170) index!1236) (select (arr!20719 a!3170) j!153))))))

(assert (=> b!796692 (= lt!355332 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20719 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!796692 (= lt!355335 (seekEntryOrOpen!0 (select (arr!20719 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796694 () Bool)

(declare-fun res!541384 () Bool)

(assert (=> b!796694 (=> (not res!541384) (not e!442062))))

(declare-datatypes ((List!14735 0))(
  ( (Nil!14732) (Cons!14731 (h!15860 (_ BitVec 64)) (t!21058 List!14735)) )
))
(declare-fun arrayNoDuplicates!0 (array!43285 (_ BitVec 32) List!14735) Bool)

(assert (=> b!796694 (= res!541384 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14732))))

(declare-fun b!796695 () Bool)

(declare-fun res!541379 () Bool)

(assert (=> b!796695 (=> (not res!541379) (not e!442059))))

(assert (=> b!796695 (= res!541379 (and (= (size!21140 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21140 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21140 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!541378 () Bool)

(assert (=> start!68544 (=> (not res!541378) (not e!442059))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68544 (= res!541378 (validMask!0 mask!3266))))

(assert (=> start!68544 e!442059))

(assert (=> start!68544 true))

(declare-fun array_inv!16493 (array!43285) Bool)

(assert (=> start!68544 (array_inv!16493 a!3170)))

(declare-fun b!796693 () Bool)

(assert (=> b!796693 (= e!442059 e!442062)))

(declare-fun res!541382 () Bool)

(assert (=> b!796693 (=> (not res!541382) (not e!442062))))

(declare-fun lt!355331 () SeekEntryResult!8317)

(assert (=> b!796693 (= res!541382 (or (= lt!355331 (MissingZero!8317 i!1163)) (= lt!355331 (MissingVacant!8317 i!1163))))))

(assert (=> b!796693 (= lt!355331 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(assert (= (and start!68544 res!541378) b!796695))

(assert (= (and b!796695 res!541379) b!796687))

(assert (= (and b!796687 res!541374) b!796689))

(assert (= (and b!796689 res!541381) b!796686))

(assert (= (and b!796686 res!541375) b!796693))

(assert (= (and b!796693 res!541382) b!796691))

(assert (= (and b!796691 res!541383) b!796694))

(assert (= (and b!796694 res!541384) b!796685))

(assert (= (and b!796685 res!541376) b!796688))

(assert (= (and b!796688 res!541377) b!796692))

(assert (= (and b!796692 res!541380) b!796690))

(declare-fun m!737611 () Bool)

(assert (=> b!796685 m!737611))

(declare-fun m!737613 () Bool)

(assert (=> b!796685 m!737613))

(declare-fun m!737615 () Bool)

(assert (=> start!68544 m!737615))

(declare-fun m!737617 () Bool)

(assert (=> start!68544 m!737617))

(declare-fun m!737619 () Bool)

(assert (=> b!796688 m!737619))

(declare-fun m!737621 () Bool)

(assert (=> b!796688 m!737621))

(declare-fun m!737623 () Bool)

(assert (=> b!796688 m!737623))

(declare-fun m!737625 () Bool)

(assert (=> b!796688 m!737625))

(declare-fun m!737627 () Bool)

(assert (=> b!796692 m!737627))

(declare-fun m!737629 () Bool)

(assert (=> b!796692 m!737629))

(assert (=> b!796692 m!737629))

(declare-fun m!737631 () Bool)

(assert (=> b!796692 m!737631))

(assert (=> b!796692 m!737629))

(declare-fun m!737633 () Bool)

(assert (=> b!796692 m!737633))

(declare-fun m!737635 () Bool)

(assert (=> b!796689 m!737635))

(declare-fun m!737637 () Bool)

(assert (=> b!796686 m!737637))

(declare-fun m!737639 () Bool)

(assert (=> b!796693 m!737639))

(assert (=> b!796687 m!737629))

(assert (=> b!796687 m!737629))

(declare-fun m!737641 () Bool)

(assert (=> b!796687 m!737641))

(declare-fun m!737643 () Bool)

(assert (=> b!796691 m!737643))

(declare-fun m!737645 () Bool)

(assert (=> b!796694 m!737645))

(check-sat (not b!796689) (not b!796693) (not b!796694) (not start!68544) (not b!796692) (not b!796686) (not b!796691) (not b!796688) (not b!796687))
(check-sat)
