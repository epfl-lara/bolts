; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69012 () Bool)

(assert start!69012)

(declare-fun b!804654 () Bool)

(declare-fun res!549352 () Bool)

(declare-fun e!445735 () Bool)

(assert (=> b!804654 (=> (not res!549352) (not e!445735))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43753 0))(
  ( (array!43754 (arr!20953 (Array (_ BitVec 32) (_ BitVec 64))) (size!21374 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43753)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!804654 (= res!549352 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21374 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20953 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21374 a!3170)) (= (select (arr!20953 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!804655 () Bool)

(declare-fun res!549349 () Bool)

(declare-fun e!445737 () Bool)

(assert (=> b!804655 (=> (not res!549349) (not e!445737))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804655 (= res!549349 (validKeyInArray!0 k0!2044))))

(declare-fun b!804656 () Bool)

(declare-fun e!445738 () Bool)

(assert (=> b!804656 (= e!445738 false)))

(declare-datatypes ((SeekEntryResult!8551 0))(
  ( (MissingZero!8551 (index!36571 (_ BitVec 32))) (Found!8551 (index!36572 (_ BitVec 32))) (Intermediate!8551 (undefined!9363 Bool) (index!36573 (_ BitVec 32)) (x!67422 (_ BitVec 32))) (Undefined!8551) (MissingVacant!8551 (index!36574 (_ BitVec 32))) )
))
(declare-fun lt!360261 () SeekEntryResult!8551)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43753 (_ BitVec 32)) SeekEntryResult!8551)

(assert (=> b!804656 (= lt!360261 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20953 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360264 () SeekEntryResult!8551)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43753 (_ BitVec 32)) SeekEntryResult!8551)

(assert (=> b!804656 (= lt!360264 (seekEntryOrOpen!0 (select (arr!20953 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!804657 () Bool)

(declare-fun res!549350 () Bool)

(assert (=> b!804657 (=> (not res!549350) (not e!445735))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43753 (_ BitVec 32)) Bool)

(assert (=> b!804657 (= res!549350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804658 () Bool)

(declare-fun res!549345 () Bool)

(assert (=> b!804658 (=> (not res!549345) (not e!445737))))

(declare-fun arrayContainsKey!0 (array!43753 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804658 (= res!549345 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804659 () Bool)

(declare-fun res!549344 () Bool)

(assert (=> b!804659 (=> (not res!549344) (not e!445737))))

(assert (=> b!804659 (= res!549344 (validKeyInArray!0 (select (arr!20953 a!3170) j!153)))))

(declare-fun b!804660 () Bool)

(declare-fun res!549343 () Bool)

(assert (=> b!804660 (=> (not res!549343) (not e!445735))))

(declare-datatypes ((List!14969 0))(
  ( (Nil!14966) (Cons!14965 (h!16094 (_ BitVec 64)) (t!21292 List!14969)) )
))
(declare-fun arrayNoDuplicates!0 (array!43753 (_ BitVec 32) List!14969) Bool)

(assert (=> b!804660 (= res!549343 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14966))))

(declare-fun b!804661 () Bool)

(declare-fun res!549348 () Bool)

(assert (=> b!804661 (=> (not res!549348) (not e!445737))))

(assert (=> b!804661 (= res!549348 (and (= (size!21374 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21374 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21374 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!549351 () Bool)

(assert (=> start!69012 (=> (not res!549351) (not e!445737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69012 (= res!549351 (validMask!0 mask!3266))))

(assert (=> start!69012 e!445737))

(assert (=> start!69012 true))

(declare-fun array_inv!16727 (array!43753) Bool)

(assert (=> start!69012 (array_inv!16727 a!3170)))

(declare-fun b!804662 () Bool)

(assert (=> b!804662 (= e!445735 e!445738)))

(declare-fun res!549347 () Bool)

(assert (=> b!804662 (=> (not res!549347) (not e!445738))))

(declare-fun lt!360265 () array!43753)

(declare-fun lt!360262 () (_ BitVec 64))

(assert (=> b!804662 (= res!549347 (= (seekEntryOrOpen!0 lt!360262 lt!360265 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360262 lt!360265 mask!3266)))))

(assert (=> b!804662 (= lt!360262 (select (store (arr!20953 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!804662 (= lt!360265 (array!43754 (store (arr!20953 a!3170) i!1163 k0!2044) (size!21374 a!3170)))))

(declare-fun b!804663 () Bool)

(assert (=> b!804663 (= e!445737 e!445735)))

(declare-fun res!549346 () Bool)

(assert (=> b!804663 (=> (not res!549346) (not e!445735))))

(declare-fun lt!360263 () SeekEntryResult!8551)

(assert (=> b!804663 (= res!549346 (or (= lt!360263 (MissingZero!8551 i!1163)) (= lt!360263 (MissingVacant!8551 i!1163))))))

(assert (=> b!804663 (= lt!360263 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(assert (= (and start!69012 res!549351) b!804661))

(assert (= (and b!804661 res!549348) b!804659))

(assert (= (and b!804659 res!549344) b!804655))

(assert (= (and b!804655 res!549349) b!804658))

(assert (= (and b!804658 res!549345) b!804663))

(assert (= (and b!804663 res!549346) b!804657))

(assert (= (and b!804657 res!549350) b!804660))

(assert (= (and b!804660 res!549343) b!804654))

(assert (= (and b!804654 res!549352) b!804662))

(assert (= (and b!804662 res!549347) b!804656))

(declare-fun m!746615 () Bool)

(assert (=> start!69012 m!746615))

(declare-fun m!746617 () Bool)

(assert (=> start!69012 m!746617))

(declare-fun m!746619 () Bool)

(assert (=> b!804663 m!746619))

(declare-fun m!746621 () Bool)

(assert (=> b!804657 m!746621))

(declare-fun m!746623 () Bool)

(assert (=> b!804659 m!746623))

(assert (=> b!804659 m!746623))

(declare-fun m!746625 () Bool)

(assert (=> b!804659 m!746625))

(declare-fun m!746627 () Bool)

(assert (=> b!804660 m!746627))

(declare-fun m!746629 () Bool)

(assert (=> b!804662 m!746629))

(declare-fun m!746631 () Bool)

(assert (=> b!804662 m!746631))

(declare-fun m!746633 () Bool)

(assert (=> b!804662 m!746633))

(declare-fun m!746635 () Bool)

(assert (=> b!804662 m!746635))

(declare-fun m!746637 () Bool)

(assert (=> b!804654 m!746637))

(declare-fun m!746639 () Bool)

(assert (=> b!804654 m!746639))

(declare-fun m!746641 () Bool)

(assert (=> b!804655 m!746641))

(assert (=> b!804656 m!746623))

(assert (=> b!804656 m!746623))

(declare-fun m!746643 () Bool)

(assert (=> b!804656 m!746643))

(assert (=> b!804656 m!746623))

(declare-fun m!746645 () Bool)

(assert (=> b!804656 m!746645))

(declare-fun m!746647 () Bool)

(assert (=> b!804658 m!746647))

(check-sat (not b!804656) (not b!804662) (not b!804659) (not b!804663) (not b!804660) (not b!804655) (not b!804657) (not start!69012) (not b!804658))
(check-sat)
