; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68604 () Bool)

(assert start!68604)

(declare-fun b!797738 () Bool)

(declare-fun res!542435 () Bool)

(declare-fun e!442573 () Bool)

(assert (=> b!797738 (=> (not res!542435) (not e!442573))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43345 0))(
  ( (array!43346 (arr!20749 (Array (_ BitVec 32) (_ BitVec 64))) (size!21170 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43345)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797738 (= res!542435 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21170 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20749 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21170 a!3170)) (= (select (arr!20749 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797739 () Bool)

(declare-fun res!542436 () Bool)

(declare-fun e!442572 () Bool)

(assert (=> b!797739 (=> (not res!542436) (not e!442572))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!797739 (= res!542436 (and (= (size!21170 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21170 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21170 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!542437 () Bool)

(assert (=> start!68604 (=> (not res!542437) (not e!442572))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68604 (= res!542437 (validMask!0 mask!3266))))

(assert (=> start!68604 e!442572))

(assert (=> start!68604 true))

(declare-fun array_inv!16523 (array!43345) Bool)

(assert (=> start!68604 (array_inv!16523 a!3170)))

(declare-fun b!797740 () Bool)

(declare-fun res!542432 () Bool)

(assert (=> b!797740 (=> (not res!542432) (not e!442572))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797740 (= res!542432 (validKeyInArray!0 k0!2044))))

(declare-fun b!797741 () Bool)

(declare-fun res!542431 () Bool)

(assert (=> b!797741 (=> (not res!542431) (not e!442572))))

(assert (=> b!797741 (= res!542431 (validKeyInArray!0 (select (arr!20749 a!3170) j!153)))))

(declare-fun b!797742 () Bool)

(declare-fun res!542429 () Bool)

(assert (=> b!797742 (=> (not res!542429) (not e!442573))))

(declare-datatypes ((List!14765 0))(
  ( (Nil!14762) (Cons!14761 (h!15890 (_ BitVec 64)) (t!21088 List!14765)) )
))
(declare-fun arrayNoDuplicates!0 (array!43345 (_ BitVec 32) List!14765) Bool)

(assert (=> b!797742 (= res!542429 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14762))))

(declare-fun b!797743 () Bool)

(declare-fun e!442575 () Bool)

(declare-fun e!442574 () Bool)

(assert (=> b!797743 (= e!442575 e!442574)))

(declare-fun res!542434 () Bool)

(assert (=> b!797743 (=> (not res!542434) (not e!442574))))

(declare-datatypes ((SeekEntryResult!8347 0))(
  ( (MissingZero!8347 (index!35755 (_ BitVec 32))) (Found!8347 (index!35756 (_ BitVec 32))) (Intermediate!8347 (undefined!9159 Bool) (index!35757 (_ BitVec 32)) (x!66674 (_ BitVec 32))) (Undefined!8347) (MissingVacant!8347 (index!35758 (_ BitVec 32))) )
))
(declare-fun lt!356018 () SeekEntryResult!8347)

(declare-fun lt!356019 () SeekEntryResult!8347)

(assert (=> b!797743 (= res!542434 (and (= lt!356019 lt!356018) (= lt!356018 (Found!8347 j!153)) (= (select (arr!20749 a!3170) index!1236) (select (arr!20749 a!3170) j!153))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43345 (_ BitVec 32)) SeekEntryResult!8347)

(assert (=> b!797743 (= lt!356018 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20749 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43345 (_ BitVec 32)) SeekEntryResult!8347)

(assert (=> b!797743 (= lt!356019 (seekEntryOrOpen!0 (select (arr!20749 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797744 () Bool)

(declare-fun res!542428 () Bool)

(assert (=> b!797744 (=> (not res!542428) (not e!442572))))

(declare-fun arrayContainsKey!0 (array!43345 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797744 (= res!542428 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797745 () Bool)

(assert (=> b!797745 (= e!442574 (not true))))

(declare-fun lt!356017 () SeekEntryResult!8347)

(assert (=> b!797745 (= lt!356017 (Found!8347 index!1236))))

(declare-fun b!797746 () Bool)

(declare-fun res!542430 () Bool)

(assert (=> b!797746 (=> (not res!542430) (not e!442573))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43345 (_ BitVec 32)) Bool)

(assert (=> b!797746 (= res!542430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797747 () Bool)

(assert (=> b!797747 (= e!442572 e!442573)))

(declare-fun res!542433 () Bool)

(assert (=> b!797747 (=> (not res!542433) (not e!442573))))

(declare-fun lt!356020 () SeekEntryResult!8347)

(assert (=> b!797747 (= res!542433 (or (= lt!356020 (MissingZero!8347 i!1163)) (= lt!356020 (MissingVacant!8347 i!1163))))))

(assert (=> b!797747 (= lt!356020 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!797748 () Bool)

(assert (=> b!797748 (= e!442573 e!442575)))

(declare-fun res!542427 () Bool)

(assert (=> b!797748 (=> (not res!542427) (not e!442575))))

(declare-fun lt!356016 () SeekEntryResult!8347)

(assert (=> b!797748 (= res!542427 (= lt!356016 lt!356017))))

(declare-fun lt!356014 () array!43345)

(declare-fun lt!356015 () (_ BitVec 64))

(assert (=> b!797748 (= lt!356017 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356015 lt!356014 mask!3266))))

(assert (=> b!797748 (= lt!356016 (seekEntryOrOpen!0 lt!356015 lt!356014 mask!3266))))

(assert (=> b!797748 (= lt!356015 (select (store (arr!20749 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!797748 (= lt!356014 (array!43346 (store (arr!20749 a!3170) i!1163 k0!2044) (size!21170 a!3170)))))

(assert (= (and start!68604 res!542437) b!797739))

(assert (= (and b!797739 res!542436) b!797741))

(assert (= (and b!797741 res!542431) b!797740))

(assert (= (and b!797740 res!542432) b!797744))

(assert (= (and b!797744 res!542428) b!797747))

(assert (= (and b!797747 res!542433) b!797746))

(assert (= (and b!797746 res!542430) b!797742))

(assert (= (and b!797742 res!542429) b!797738))

(assert (= (and b!797738 res!542435) b!797748))

(assert (= (and b!797748 res!542427) b!797743))

(assert (= (and b!797743 res!542434) b!797745))

(declare-fun m!738709 () Bool)

(assert (=> b!797744 m!738709))

(declare-fun m!738711 () Bool)

(assert (=> start!68604 m!738711))

(declare-fun m!738713 () Bool)

(assert (=> start!68604 m!738713))

(declare-fun m!738715 () Bool)

(assert (=> b!797740 m!738715))

(declare-fun m!738717 () Bool)

(assert (=> b!797747 m!738717))

(declare-fun m!738719 () Bool)

(assert (=> b!797746 m!738719))

(declare-fun m!738721 () Bool)

(assert (=> b!797743 m!738721))

(declare-fun m!738723 () Bool)

(assert (=> b!797743 m!738723))

(assert (=> b!797743 m!738723))

(declare-fun m!738725 () Bool)

(assert (=> b!797743 m!738725))

(assert (=> b!797743 m!738723))

(declare-fun m!738727 () Bool)

(assert (=> b!797743 m!738727))

(assert (=> b!797741 m!738723))

(assert (=> b!797741 m!738723))

(declare-fun m!738729 () Bool)

(assert (=> b!797741 m!738729))

(declare-fun m!738731 () Bool)

(assert (=> b!797738 m!738731))

(declare-fun m!738733 () Bool)

(assert (=> b!797738 m!738733))

(declare-fun m!738735 () Bool)

(assert (=> b!797748 m!738735))

(declare-fun m!738737 () Bool)

(assert (=> b!797748 m!738737))

(declare-fun m!738739 () Bool)

(assert (=> b!797748 m!738739))

(declare-fun m!738741 () Bool)

(assert (=> b!797748 m!738741))

(declare-fun m!738743 () Bool)

(assert (=> b!797742 m!738743))

(check-sat (not b!797744) (not start!68604) (not b!797741) (not b!797746) (not b!797747) (not b!797742) (not b!797748) (not b!797740) (not b!797743))
(check-sat)
