; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68440 () Bool)

(assert start!68440)

(declare-fun b!795030 () Bool)

(declare-fun res!539720 () Bool)

(declare-fun e!441341 () Bool)

(assert (=> b!795030 (=> (not res!539720) (not e!441341))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795030 (= res!539720 (validKeyInArray!0 k!2044))))

(declare-fun b!795031 () Bool)

(declare-fun res!539726 () Bool)

(declare-fun e!441342 () Bool)

(assert (=> b!795031 (=> (not res!539726) (not e!441342))))

(declare-datatypes ((array!43181 0))(
  ( (array!43182 (arr!20667 (Array (_ BitVec 32) (_ BitVec 64))) (size!21088 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43181)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43181 (_ BitVec 32)) Bool)

(assert (=> b!795031 (= res!539726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795032 () Bool)

(declare-fun e!441343 () Bool)

(assert (=> b!795032 (= e!441342 e!441343)))

(declare-fun res!539725 () Bool)

(assert (=> b!795032 (=> (not res!539725) (not e!441343))))

(declare-fun lt!354398 () array!43181)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354399 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8265 0))(
  ( (MissingZero!8265 (index!35427 (_ BitVec 32))) (Found!8265 (index!35428 (_ BitVec 32))) (Intermediate!8265 (undefined!9077 Bool) (index!35429 (_ BitVec 32)) (x!66376 (_ BitVec 32))) (Undefined!8265) (MissingVacant!8265 (index!35430 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43181 (_ BitVec 32)) SeekEntryResult!8265)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43181 (_ BitVec 32)) SeekEntryResult!8265)

(assert (=> b!795032 (= res!539725 (= (seekEntryOrOpen!0 lt!354399 lt!354398 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354399 lt!354398 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!795032 (= lt!354399 (select (store (arr!20667 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795032 (= lt!354398 (array!43182 (store (arr!20667 a!3170) i!1163 k!2044) (size!21088 a!3170)))))

(declare-fun b!795033 () Bool)

(declare-fun res!539724 () Bool)

(assert (=> b!795033 (=> (not res!539724) (not e!441341))))

(declare-fun arrayContainsKey!0 (array!43181 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795033 (= res!539724 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795034 () Bool)

(assert (=> b!795034 (= e!441343 false)))

(declare-fun lt!354396 () SeekEntryResult!8265)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!795034 (= lt!354396 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20667 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354397 () SeekEntryResult!8265)

(assert (=> b!795034 (= lt!354397 (seekEntryOrOpen!0 (select (arr!20667 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795035 () Bool)

(declare-fun res!539728 () Bool)

(assert (=> b!795035 (=> (not res!539728) (not e!441342))))

(declare-datatypes ((List!14683 0))(
  ( (Nil!14680) (Cons!14679 (h!15808 (_ BitVec 64)) (t!21006 List!14683)) )
))
(declare-fun arrayNoDuplicates!0 (array!43181 (_ BitVec 32) List!14683) Bool)

(assert (=> b!795035 (= res!539728 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14680))))

(declare-fun b!795036 () Bool)

(declare-fun res!539719 () Bool)

(assert (=> b!795036 (=> (not res!539719) (not e!441341))))

(assert (=> b!795036 (= res!539719 (validKeyInArray!0 (select (arr!20667 a!3170) j!153)))))

(declare-fun res!539722 () Bool)

(assert (=> start!68440 (=> (not res!539722) (not e!441341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68440 (= res!539722 (validMask!0 mask!3266))))

(assert (=> start!68440 e!441341))

(assert (=> start!68440 true))

(declare-fun array_inv!16441 (array!43181) Bool)

(assert (=> start!68440 (array_inv!16441 a!3170)))

(declare-fun b!795037 () Bool)

(declare-fun res!539721 () Bool)

(assert (=> b!795037 (=> (not res!539721) (not e!441342))))

(assert (=> b!795037 (= res!539721 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21088 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20667 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21088 a!3170)) (= (select (arr!20667 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795038 () Bool)

(assert (=> b!795038 (= e!441341 e!441342)))

(declare-fun res!539723 () Bool)

(assert (=> b!795038 (=> (not res!539723) (not e!441342))))

(declare-fun lt!354400 () SeekEntryResult!8265)

(assert (=> b!795038 (= res!539723 (or (= lt!354400 (MissingZero!8265 i!1163)) (= lt!354400 (MissingVacant!8265 i!1163))))))

(assert (=> b!795038 (= lt!354400 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795039 () Bool)

(declare-fun res!539727 () Bool)

(assert (=> b!795039 (=> (not res!539727) (not e!441341))))

(assert (=> b!795039 (= res!539727 (and (= (size!21088 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21088 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21088 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68440 res!539722) b!795039))

(assert (= (and b!795039 res!539727) b!795036))

(assert (= (and b!795036 res!539719) b!795030))

(assert (= (and b!795030 res!539720) b!795033))

(assert (= (and b!795033 res!539724) b!795038))

(assert (= (and b!795038 res!539723) b!795031))

(assert (= (and b!795031 res!539726) b!795035))

(assert (= (and b!795035 res!539728) b!795037))

(assert (= (and b!795037 res!539721) b!795032))

(assert (= (and b!795032 res!539725) b!795034))

(declare-fun m!735727 () Bool)

(assert (=> b!795033 m!735727))

(declare-fun m!735729 () Bool)

(assert (=> b!795032 m!735729))

(declare-fun m!735731 () Bool)

(assert (=> b!795032 m!735731))

(declare-fun m!735733 () Bool)

(assert (=> b!795032 m!735733))

(declare-fun m!735735 () Bool)

(assert (=> b!795032 m!735735))

(declare-fun m!735737 () Bool)

(assert (=> b!795036 m!735737))

(assert (=> b!795036 m!735737))

(declare-fun m!735739 () Bool)

(assert (=> b!795036 m!735739))

(declare-fun m!735741 () Bool)

(assert (=> b!795030 m!735741))

(declare-fun m!735743 () Bool)

(assert (=> b!795035 m!735743))

(declare-fun m!735745 () Bool)

(assert (=> b!795037 m!735745))

(declare-fun m!735747 () Bool)

(assert (=> b!795037 m!735747))

(declare-fun m!735749 () Bool)

(assert (=> b!795038 m!735749))

(declare-fun m!735751 () Bool)

(assert (=> start!68440 m!735751))

(declare-fun m!735753 () Bool)

(assert (=> start!68440 m!735753))

(assert (=> b!795034 m!735737))

(assert (=> b!795034 m!735737))

(declare-fun m!735755 () Bool)

(assert (=> b!795034 m!735755))

(assert (=> b!795034 m!735737))

(declare-fun m!735757 () Bool)

(assert (=> b!795034 m!735757))

(declare-fun m!735759 () Bool)

(assert (=> b!795031 m!735759))

(push 1)

