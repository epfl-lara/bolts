; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69022 () Bool)

(assert start!69022)

(declare-fun b!804804 () Bool)

(declare-fun e!445798 () Bool)

(assert (=> b!804804 (= e!445798 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43763 0))(
  ( (array!43764 (arr!20958 (Array (_ BitVec 32) (_ BitVec 64))) (size!21379 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43763)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8556 0))(
  ( (MissingZero!8556 (index!36591 (_ BitVec 32))) (Found!8556 (index!36592 (_ BitVec 32))) (Intermediate!8556 (undefined!9368 Bool) (index!36593 (_ BitVec 32)) (x!67443 (_ BitVec 32))) (Undefined!8556) (MissingVacant!8556 (index!36594 (_ BitVec 32))) )
))
(declare-fun lt!360339 () SeekEntryResult!8556)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43763 (_ BitVec 32)) SeekEntryResult!8556)

(assert (=> b!804804 (= lt!360339 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20958 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360337 () SeekEntryResult!8556)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43763 (_ BitVec 32)) SeekEntryResult!8556)

(assert (=> b!804804 (= lt!360337 (seekEntryOrOpen!0 (select (arr!20958 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!804805 () Bool)

(declare-fun res!549494 () Bool)

(declare-fun e!445795 () Bool)

(assert (=> b!804805 (=> (not res!549494) (not e!445795))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43763 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804805 (= res!549494 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804806 () Bool)

(declare-fun res!549495 () Bool)

(declare-fun e!445796 () Bool)

(assert (=> b!804806 (=> (not res!549495) (not e!445796))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43763 (_ BitVec 32)) Bool)

(assert (=> b!804806 (= res!549495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!549502 () Bool)

(assert (=> start!69022 (=> (not res!549502) (not e!445795))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69022 (= res!549502 (validMask!0 mask!3266))))

(assert (=> start!69022 e!445795))

(assert (=> start!69022 true))

(declare-fun array_inv!16732 (array!43763) Bool)

(assert (=> start!69022 (array_inv!16732 a!3170)))

(declare-fun b!804807 () Bool)

(declare-fun res!549493 () Bool)

(assert (=> b!804807 (=> (not res!549493) (not e!445795))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804807 (= res!549493 (and (= (size!21379 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21379 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21379 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804808 () Bool)

(declare-fun res!549500 () Bool)

(assert (=> b!804808 (=> (not res!549500) (not e!445796))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!804808 (= res!549500 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21379 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20958 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21379 a!3170)) (= (select (arr!20958 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!804809 () Bool)

(declare-fun res!549496 () Bool)

(assert (=> b!804809 (=> (not res!549496) (not e!445795))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804809 (= res!549496 (validKeyInArray!0 (select (arr!20958 a!3170) j!153)))))

(declare-fun b!804810 () Bool)

(declare-fun res!549498 () Bool)

(assert (=> b!804810 (=> (not res!549498) (not e!445796))))

(declare-datatypes ((List!14974 0))(
  ( (Nil!14971) (Cons!14970 (h!16099 (_ BitVec 64)) (t!21297 List!14974)) )
))
(declare-fun arrayNoDuplicates!0 (array!43763 (_ BitVec 32) List!14974) Bool)

(assert (=> b!804810 (= res!549498 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14971))))

(declare-fun b!804811 () Bool)

(assert (=> b!804811 (= e!445796 e!445798)))

(declare-fun res!549497 () Bool)

(assert (=> b!804811 (=> (not res!549497) (not e!445798))))

(declare-fun lt!360336 () (_ BitVec 64))

(declare-fun lt!360340 () array!43763)

(assert (=> b!804811 (= res!549497 (= (seekEntryOrOpen!0 lt!360336 lt!360340 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360336 lt!360340 mask!3266)))))

(assert (=> b!804811 (= lt!360336 (select (store (arr!20958 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!804811 (= lt!360340 (array!43764 (store (arr!20958 a!3170) i!1163 k!2044) (size!21379 a!3170)))))

(declare-fun b!804812 () Bool)

(declare-fun res!549501 () Bool)

(assert (=> b!804812 (=> (not res!549501) (not e!445795))))

(assert (=> b!804812 (= res!549501 (validKeyInArray!0 k!2044))))

(declare-fun b!804813 () Bool)

(assert (=> b!804813 (= e!445795 e!445796)))

(declare-fun res!549499 () Bool)

(assert (=> b!804813 (=> (not res!549499) (not e!445796))))

(declare-fun lt!360338 () SeekEntryResult!8556)

(assert (=> b!804813 (= res!549499 (or (= lt!360338 (MissingZero!8556 i!1163)) (= lt!360338 (MissingVacant!8556 i!1163))))))

(assert (=> b!804813 (= lt!360338 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!69022 res!549502) b!804807))

(assert (= (and b!804807 res!549493) b!804809))

(assert (= (and b!804809 res!549496) b!804812))

(assert (= (and b!804812 res!549501) b!804805))

(assert (= (and b!804805 res!549494) b!804813))

(assert (= (and b!804813 res!549499) b!804806))

(assert (= (and b!804806 res!549495) b!804810))

(assert (= (and b!804810 res!549498) b!804808))

(assert (= (and b!804808 res!549500) b!804811))

(assert (= (and b!804811 res!549497) b!804804))

(declare-fun m!746785 () Bool)

(assert (=> b!804804 m!746785))

(assert (=> b!804804 m!746785))

(declare-fun m!746787 () Bool)

(assert (=> b!804804 m!746787))

(assert (=> b!804804 m!746785))

(declare-fun m!746789 () Bool)

(assert (=> b!804804 m!746789))

(declare-fun m!746791 () Bool)

(assert (=> b!804813 m!746791))

(declare-fun m!746793 () Bool)

(assert (=> b!804808 m!746793))

(declare-fun m!746795 () Bool)

(assert (=> b!804808 m!746795))

(declare-fun m!746797 () Bool)

(assert (=> b!804810 m!746797))

(declare-fun m!746799 () Bool)

(assert (=> b!804811 m!746799))

(declare-fun m!746801 () Bool)

(assert (=> b!804811 m!746801))

(declare-fun m!746803 () Bool)

(assert (=> b!804811 m!746803))

(declare-fun m!746805 () Bool)

(assert (=> b!804811 m!746805))

(declare-fun m!746807 () Bool)

(assert (=> b!804805 m!746807))

(declare-fun m!746809 () Bool)

(assert (=> b!804806 m!746809))

(declare-fun m!746811 () Bool)

(assert (=> start!69022 m!746811))

(declare-fun m!746813 () Bool)

(assert (=> start!69022 m!746813))

(assert (=> b!804809 m!746785))

(assert (=> b!804809 m!746785))

(declare-fun m!746815 () Bool)

(assert (=> b!804809 m!746815))

(declare-fun m!746817 () Bool)

(assert (=> b!804812 m!746817))

(push 1)

