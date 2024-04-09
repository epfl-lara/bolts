; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69106 () Bool)

(assert start!69106)

(declare-fun b!805607 () Bool)

(declare-fun res!550105 () Bool)

(declare-fun e!446178 () Bool)

(assert (=> b!805607 (=> (not res!550105) (not e!446178))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43802 0))(
  ( (array!43803 (arr!20976 (Array (_ BitVec 32) (_ BitVec 64))) (size!21397 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43802)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!805607 (= res!550105 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21397 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20976 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21397 a!3170)) (= (select (arr!20976 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805608 () Bool)

(declare-fun res!550102 () Bool)

(declare-fun e!446176 () Bool)

(assert (=> b!805608 (=> (not res!550102) (not e!446176))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805608 (= res!550102 (validKeyInArray!0 k!2044))))

(declare-fun b!805609 () Bool)

(declare-fun res!550106 () Bool)

(assert (=> b!805609 (=> (not res!550106) (not e!446176))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!805609 (= res!550106 (validKeyInArray!0 (select (arr!20976 a!3170) j!153)))))

(declare-fun b!805610 () Bool)

(declare-fun res!550103 () Bool)

(assert (=> b!805610 (=> (not res!550103) (not e!446178))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43802 (_ BitVec 32)) Bool)

(assert (=> b!805610 (= res!550103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805611 () Bool)

(declare-fun e!446177 () Bool)

(assert (=> b!805611 (= e!446177 (not true))))

(declare-datatypes ((SeekEntryResult!8574 0))(
  ( (MissingZero!8574 (index!36663 (_ BitVec 32))) (Found!8574 (index!36664 (_ BitVec 32))) (Intermediate!8574 (undefined!9386 Bool) (index!36665 (_ BitVec 32)) (x!67512 (_ BitVec 32))) (Undefined!8574) (MissingVacant!8574 (index!36666 (_ BitVec 32))) )
))
(declare-fun lt!360724 () SeekEntryResult!8574)

(assert (=> b!805611 (= lt!360724 (Found!8574 index!1236))))

(declare-fun b!805612 () Bool)

(declare-fun e!446175 () Bool)

(assert (=> b!805612 (= e!446178 e!446175)))

(declare-fun res!550098 () Bool)

(assert (=> b!805612 (=> (not res!550098) (not e!446175))))

(declare-fun lt!360729 () SeekEntryResult!8574)

(assert (=> b!805612 (= res!550098 (= lt!360729 lt!360724))))

(declare-fun lt!360730 () (_ BitVec 64))

(declare-fun lt!360726 () array!43802)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43802 (_ BitVec 32)) SeekEntryResult!8574)

(assert (=> b!805612 (= lt!360724 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360730 lt!360726 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43802 (_ BitVec 32)) SeekEntryResult!8574)

(assert (=> b!805612 (= lt!360729 (seekEntryOrOpen!0 lt!360730 lt!360726 mask!3266))))

(assert (=> b!805612 (= lt!360730 (select (store (arr!20976 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!805612 (= lt!360726 (array!43803 (store (arr!20976 a!3170) i!1163 k!2044) (size!21397 a!3170)))))

(declare-fun res!550099 () Bool)

(assert (=> start!69106 (=> (not res!550099) (not e!446176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69106 (= res!550099 (validMask!0 mask!3266))))

(assert (=> start!69106 e!446176))

(assert (=> start!69106 true))

(declare-fun array_inv!16750 (array!43802) Bool)

(assert (=> start!69106 (array_inv!16750 a!3170)))

(declare-fun b!805613 () Bool)

(declare-fun res!550104 () Bool)

(assert (=> b!805613 (=> (not res!550104) (not e!446176))))

(declare-fun arrayContainsKey!0 (array!43802 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805613 (= res!550104 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805614 () Bool)

(declare-fun res!550100 () Bool)

(assert (=> b!805614 (=> (not res!550100) (not e!446176))))

(assert (=> b!805614 (= res!550100 (and (= (size!21397 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21397 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21397 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805615 () Bool)

(declare-fun res!550101 () Bool)

(assert (=> b!805615 (=> (not res!550101) (not e!446178))))

(declare-datatypes ((List!14992 0))(
  ( (Nil!14989) (Cons!14988 (h!16117 (_ BitVec 64)) (t!21315 List!14992)) )
))
(declare-fun arrayNoDuplicates!0 (array!43802 (_ BitVec 32) List!14992) Bool)

(assert (=> b!805615 (= res!550101 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14989))))

(declare-fun b!805616 () Bool)

(assert (=> b!805616 (= e!446175 e!446177)))

(declare-fun res!550108 () Bool)

(assert (=> b!805616 (=> (not res!550108) (not e!446177))))

(declare-fun lt!360727 () SeekEntryResult!8574)

(declare-fun lt!360725 () SeekEntryResult!8574)

(assert (=> b!805616 (= res!550108 (and (= lt!360727 lt!360725) (= lt!360725 (Found!8574 j!153)) (= (select (arr!20976 a!3170) index!1236) (select (arr!20976 a!3170) j!153))))))

(assert (=> b!805616 (= lt!360725 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20976 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!805616 (= lt!360727 (seekEntryOrOpen!0 (select (arr!20976 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805617 () Bool)

(assert (=> b!805617 (= e!446176 e!446178)))

(declare-fun res!550107 () Bool)

(assert (=> b!805617 (=> (not res!550107) (not e!446178))))

(declare-fun lt!360728 () SeekEntryResult!8574)

(assert (=> b!805617 (= res!550107 (or (= lt!360728 (MissingZero!8574 i!1163)) (= lt!360728 (MissingVacant!8574 i!1163))))))

(assert (=> b!805617 (= lt!360728 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!69106 res!550099) b!805614))

(assert (= (and b!805614 res!550100) b!805609))

(assert (= (and b!805609 res!550106) b!805608))

(assert (= (and b!805608 res!550102) b!805613))

(assert (= (and b!805613 res!550104) b!805617))

(assert (= (and b!805617 res!550107) b!805610))

(assert (= (and b!805610 res!550103) b!805615))

(assert (= (and b!805615 res!550101) b!805607))

(assert (= (and b!805607 res!550105) b!805612))

(assert (= (and b!805612 res!550098) b!805616))

(assert (= (and b!805616 res!550108) b!805611))

(declare-fun m!747631 () Bool)

(assert (=> b!805613 m!747631))

(declare-fun m!747633 () Bool)

(assert (=> b!805615 m!747633))

(declare-fun m!747635 () Bool)

(assert (=> b!805608 m!747635))

(declare-fun m!747637 () Bool)

(assert (=> b!805616 m!747637))

(declare-fun m!747639 () Bool)

(assert (=> b!805616 m!747639))

(assert (=> b!805616 m!747639))

(declare-fun m!747641 () Bool)

(assert (=> b!805616 m!747641))

(assert (=> b!805616 m!747639))

(declare-fun m!747643 () Bool)

(assert (=> b!805616 m!747643))

(declare-fun m!747645 () Bool)

(assert (=> b!805607 m!747645))

(declare-fun m!747647 () Bool)

(assert (=> b!805607 m!747647))

(declare-fun m!747649 () Bool)

(assert (=> b!805612 m!747649))

(declare-fun m!747651 () Bool)

(assert (=> b!805612 m!747651))

(declare-fun m!747653 () Bool)

(assert (=> b!805612 m!747653))

(declare-fun m!747655 () Bool)

(assert (=> b!805612 m!747655))

(declare-fun m!747657 () Bool)

(assert (=> start!69106 m!747657))

(declare-fun m!747659 () Bool)

(assert (=> start!69106 m!747659))

(declare-fun m!747661 () Bool)

(assert (=> b!805617 m!747661))

(assert (=> b!805609 m!747639))

(assert (=> b!805609 m!747639))

(declare-fun m!747663 () Bool)

(assert (=> b!805609 m!747663))

(declare-fun m!747665 () Bool)

(assert (=> b!805610 m!747665))

(push 1)

