; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69206 () Bool)

(assert start!69206)

(declare-fun b!806743 () Bool)

(declare-fun res!551044 () Bool)

(declare-fun e!446749 () Bool)

(assert (=> b!806743 (=> (not res!551044) (not e!446749))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43857 0))(
  ( (array!43858 (arr!21002 (Array (_ BitVec 32) (_ BitVec 64))) (size!21423 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43857)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!806743 (= res!551044 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21423 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21002 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21423 a!3170)) (= (select (arr!21002 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806744 () Bool)

(declare-fun res!551040 () Bool)

(declare-fun e!446746 () Bool)

(assert (=> b!806744 (=> (not res!551040) (not e!446746))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806744 (= res!551040 (validKeyInArray!0 k!2044))))

(declare-fun b!806745 () Bool)

(declare-fun res!551042 () Bool)

(assert (=> b!806745 (=> (not res!551042) (not e!446746))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!806745 (= res!551042 (and (= (size!21423 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21423 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21423 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806746 () Bool)

(declare-fun e!446745 () Bool)

(assert (=> b!806746 (= e!446749 e!446745)))

(declare-fun res!551039 () Bool)

(assert (=> b!806746 (=> (not res!551039) (not e!446745))))

(declare-datatypes ((SeekEntryResult!8600 0))(
  ( (MissingZero!8600 (index!36767 (_ BitVec 32))) (Found!8600 (index!36768 (_ BitVec 32))) (Intermediate!8600 (undefined!9412 Bool) (index!36769 (_ BitVec 32)) (x!67605 (_ BitVec 32))) (Undefined!8600) (MissingVacant!8600 (index!36770 (_ BitVec 32))) )
))
(declare-fun lt!361385 () SeekEntryResult!8600)

(declare-fun lt!361383 () SeekEntryResult!8600)

(assert (=> b!806746 (= res!551039 (= lt!361385 lt!361383))))

(declare-fun lt!361390 () (_ BitVec 64))

(declare-fun lt!361387 () array!43857)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43857 (_ BitVec 32)) SeekEntryResult!8600)

(assert (=> b!806746 (= lt!361383 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361390 lt!361387 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43857 (_ BitVec 32)) SeekEntryResult!8600)

(assert (=> b!806746 (= lt!361385 (seekEntryOrOpen!0 lt!361390 lt!361387 mask!3266))))

(assert (=> b!806746 (= lt!361390 (select (store (arr!21002 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!806746 (= lt!361387 (array!43858 (store (arr!21002 a!3170) i!1163 k!2044) (size!21423 a!3170)))))

(declare-fun lt!361388 () SeekEntryResult!8600)

(declare-fun b!806747 () Bool)

(declare-fun e!446744 () Bool)

(declare-fun lt!361384 () SeekEntryResult!8600)

(assert (=> b!806747 (= e!446744 (not (or (not (= lt!361383 lt!361384)) (= lt!361383 lt!361388))))))

(assert (=> b!806747 (= lt!361383 (Found!8600 index!1236))))

(declare-fun b!806748 () Bool)

(declare-fun res!551045 () Bool)

(assert (=> b!806748 (=> (not res!551045) (not e!446749))))

(declare-datatypes ((List!15018 0))(
  ( (Nil!15015) (Cons!15014 (h!16143 (_ BitVec 64)) (t!21341 List!15018)) )
))
(declare-fun arrayNoDuplicates!0 (array!43857 (_ BitVec 32) List!15018) Bool)

(assert (=> b!806748 (= res!551045 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15015))))

(declare-fun b!806749 () Bool)

(declare-fun res!551047 () Bool)

(assert (=> b!806749 (=> (not res!551047) (not e!446746))))

(assert (=> b!806749 (= res!551047 (validKeyInArray!0 (select (arr!21002 a!3170) j!153)))))

(declare-fun res!551037 () Bool)

(assert (=> start!69206 (=> (not res!551037) (not e!446746))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69206 (= res!551037 (validMask!0 mask!3266))))

(assert (=> start!69206 e!446746))

(assert (=> start!69206 true))

(declare-fun array_inv!16776 (array!43857) Bool)

(assert (=> start!69206 (array_inv!16776 a!3170)))

(declare-fun b!806750 () Bool)

(declare-fun e!446748 () Bool)

(assert (=> b!806750 (= e!446748 e!446744)))

(declare-fun res!551046 () Bool)

(assert (=> b!806750 (=> (not res!551046) (not e!446744))))

(assert (=> b!806750 (= res!551046 (and (= lt!361388 lt!361384) (= (select (arr!21002 a!3170) index!1236) (select (arr!21002 a!3170) j!153))))))

(assert (=> b!806750 (= lt!361384 (Found!8600 j!153))))

(declare-fun b!806751 () Bool)

(declare-fun res!551038 () Bool)

(assert (=> b!806751 (=> (not res!551038) (not e!446749))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43857 (_ BitVec 32)) Bool)

(assert (=> b!806751 (= res!551038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806752 () Bool)

(assert (=> b!806752 (= e!446746 e!446749)))

(declare-fun res!551043 () Bool)

(assert (=> b!806752 (=> (not res!551043) (not e!446749))))

(declare-fun lt!361389 () SeekEntryResult!8600)

(assert (=> b!806752 (= res!551043 (or (= lt!361389 (MissingZero!8600 i!1163)) (= lt!361389 (MissingVacant!8600 i!1163))))))

(assert (=> b!806752 (= lt!361389 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!806753 () Bool)

(assert (=> b!806753 (= e!446745 e!446748)))

(declare-fun res!551036 () Bool)

(assert (=> b!806753 (=> (not res!551036) (not e!446748))))

(declare-fun lt!361386 () SeekEntryResult!8600)

(assert (=> b!806753 (= res!551036 (= lt!361386 lt!361388))))

(assert (=> b!806753 (= lt!361388 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21002 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!806753 (= lt!361386 (seekEntryOrOpen!0 (select (arr!21002 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806754 () Bool)

(declare-fun res!551041 () Bool)

(assert (=> b!806754 (=> (not res!551041) (not e!446746))))

(declare-fun arrayContainsKey!0 (array!43857 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806754 (= res!551041 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69206 res!551037) b!806745))

(assert (= (and b!806745 res!551042) b!806749))

(assert (= (and b!806749 res!551047) b!806744))

(assert (= (and b!806744 res!551040) b!806754))

(assert (= (and b!806754 res!551041) b!806752))

(assert (= (and b!806752 res!551043) b!806751))

(assert (= (and b!806751 res!551038) b!806748))

(assert (= (and b!806748 res!551045) b!806743))

(assert (= (and b!806743 res!551044) b!806746))

(assert (= (and b!806746 res!551039) b!806753))

(assert (= (and b!806753 res!551036) b!806750))

(assert (= (and b!806750 res!551046) b!806747))

(declare-fun m!748795 () Bool)

(assert (=> start!69206 m!748795))

(declare-fun m!748797 () Bool)

(assert (=> start!69206 m!748797))

(declare-fun m!748799 () Bool)

(assert (=> b!806750 m!748799))

(declare-fun m!748801 () Bool)

(assert (=> b!806750 m!748801))

(declare-fun m!748803 () Bool)

(assert (=> b!806751 m!748803))

(declare-fun m!748805 () Bool)

(assert (=> b!806748 m!748805))

(declare-fun m!748807 () Bool)

(assert (=> b!806746 m!748807))

(declare-fun m!748809 () Bool)

(assert (=> b!806746 m!748809))

(declare-fun m!748811 () Bool)

(assert (=> b!806746 m!748811))

(declare-fun m!748813 () Bool)

(assert (=> b!806746 m!748813))

(declare-fun m!748815 () Bool)

(assert (=> b!806752 m!748815))

(declare-fun m!748817 () Bool)

(assert (=> b!806743 m!748817))

(declare-fun m!748819 () Bool)

(assert (=> b!806743 m!748819))

(declare-fun m!748821 () Bool)

(assert (=> b!806754 m!748821))

(declare-fun m!748823 () Bool)

(assert (=> b!806744 m!748823))

(assert (=> b!806749 m!748801))

(assert (=> b!806749 m!748801))

(declare-fun m!748825 () Bool)

(assert (=> b!806749 m!748825))

(assert (=> b!806753 m!748801))

(assert (=> b!806753 m!748801))

(declare-fun m!748827 () Bool)

(assert (=> b!806753 m!748827))

(assert (=> b!806753 m!748801))

(declare-fun m!748829 () Bool)

(assert (=> b!806753 m!748829))

(push 1)

