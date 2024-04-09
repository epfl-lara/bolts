; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69114 () Bool)

(assert start!69114)

(declare-fun b!805739 () Bool)

(declare-fun res!550239 () Bool)

(declare-fun e!446236 () Bool)

(assert (=> b!805739 (=> (not res!550239) (not e!446236))))

(declare-datatypes ((array!43810 0))(
  ( (array!43811 (arr!20980 (Array (_ BitVec 32) (_ BitVec 64))) (size!21401 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43810)

(declare-datatypes ((List!14996 0))(
  ( (Nil!14993) (Cons!14992 (h!16121 (_ BitVec 64)) (t!21319 List!14996)) )
))
(declare-fun arrayNoDuplicates!0 (array!43810 (_ BitVec 32) List!14996) Bool)

(assert (=> b!805739 (= res!550239 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14993))))

(declare-fun b!805740 () Bool)

(declare-fun res!550232 () Bool)

(declare-fun e!446237 () Bool)

(assert (=> b!805740 (=> (not res!550232) (not e!446237))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805740 (= res!550232 (validKeyInArray!0 k0!2044))))

(declare-fun b!805741 () Bool)

(declare-fun res!550231 () Bool)

(assert (=> b!805741 (=> (not res!550231) (not e!446237))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!805741 (= res!550231 (and (= (size!21401 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21401 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21401 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805742 () Bool)

(declare-fun res!550233 () Bool)

(assert (=> b!805742 (=> (not res!550233) (not e!446236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43810 (_ BitVec 32)) Bool)

(assert (=> b!805742 (= res!550233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805743 () Bool)

(declare-fun res!550235 () Bool)

(assert (=> b!805743 (=> (not res!550235) (not e!446236))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!805743 (= res!550235 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21401 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20980 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21401 a!3170)) (= (select (arr!20980 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805744 () Bool)

(declare-fun e!446235 () Bool)

(assert (=> b!805744 (= e!446236 e!446235)))

(declare-fun res!550236 () Bool)

(assert (=> b!805744 (=> (not res!550236) (not e!446235))))

(declare-datatypes ((SeekEntryResult!8578 0))(
  ( (MissingZero!8578 (index!36679 (_ BitVec 32))) (Found!8578 (index!36680 (_ BitVec 32))) (Intermediate!8578 (undefined!9390 Bool) (index!36681 (_ BitVec 32)) (x!67524 (_ BitVec 32))) (Undefined!8578) (MissingVacant!8578 (index!36682 (_ BitVec 32))) )
))
(declare-fun lt!360809 () SeekEntryResult!8578)

(declare-fun lt!360812 () SeekEntryResult!8578)

(assert (=> b!805744 (= res!550236 (= lt!360809 lt!360812))))

(declare-fun lt!360810 () array!43810)

(declare-fun lt!360808 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43810 (_ BitVec 32)) SeekEntryResult!8578)

(assert (=> b!805744 (= lt!360812 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360808 lt!360810 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43810 (_ BitVec 32)) SeekEntryResult!8578)

(assert (=> b!805744 (= lt!360809 (seekEntryOrOpen!0 lt!360808 lt!360810 mask!3266))))

(assert (=> b!805744 (= lt!360808 (select (store (arr!20980 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!805744 (= lt!360810 (array!43811 (store (arr!20980 a!3170) i!1163 k0!2044) (size!21401 a!3170)))))

(declare-fun b!805745 () Bool)

(declare-fun res!550240 () Bool)

(assert (=> b!805745 (=> (not res!550240) (not e!446237))))

(assert (=> b!805745 (= res!550240 (validKeyInArray!0 (select (arr!20980 a!3170) j!153)))))

(declare-fun res!550230 () Bool)

(assert (=> start!69114 (=> (not res!550230) (not e!446237))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69114 (= res!550230 (validMask!0 mask!3266))))

(assert (=> start!69114 e!446237))

(assert (=> start!69114 true))

(declare-fun array_inv!16754 (array!43810) Bool)

(assert (=> start!69114 (array_inv!16754 a!3170)))

(declare-fun b!805746 () Bool)

(declare-fun e!446239 () Bool)

(assert (=> b!805746 (= e!446239 (not true))))

(assert (=> b!805746 (= lt!360812 (Found!8578 index!1236))))

(declare-fun b!805747 () Bool)

(declare-fun res!550238 () Bool)

(assert (=> b!805747 (=> (not res!550238) (not e!446237))))

(declare-fun arrayContainsKey!0 (array!43810 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805747 (= res!550238 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805748 () Bool)

(assert (=> b!805748 (= e!446237 e!446236)))

(declare-fun res!550234 () Bool)

(assert (=> b!805748 (=> (not res!550234) (not e!446236))))

(declare-fun lt!360811 () SeekEntryResult!8578)

(assert (=> b!805748 (= res!550234 (or (= lt!360811 (MissingZero!8578 i!1163)) (= lt!360811 (MissingVacant!8578 i!1163))))))

(assert (=> b!805748 (= lt!360811 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!805749 () Bool)

(assert (=> b!805749 (= e!446235 e!446239)))

(declare-fun res!550237 () Bool)

(assert (=> b!805749 (=> (not res!550237) (not e!446239))))

(declare-fun lt!360814 () SeekEntryResult!8578)

(declare-fun lt!360813 () SeekEntryResult!8578)

(assert (=> b!805749 (= res!550237 (and (= lt!360813 lt!360814) (= lt!360814 (Found!8578 j!153)) (= (select (arr!20980 a!3170) index!1236) (select (arr!20980 a!3170) j!153))))))

(assert (=> b!805749 (= lt!360814 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20980 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!805749 (= lt!360813 (seekEntryOrOpen!0 (select (arr!20980 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!69114 res!550230) b!805741))

(assert (= (and b!805741 res!550231) b!805745))

(assert (= (and b!805745 res!550240) b!805740))

(assert (= (and b!805740 res!550232) b!805747))

(assert (= (and b!805747 res!550238) b!805748))

(assert (= (and b!805748 res!550234) b!805742))

(assert (= (and b!805742 res!550233) b!805739))

(assert (= (and b!805739 res!550239) b!805743))

(assert (= (and b!805743 res!550235) b!805744))

(assert (= (and b!805744 res!550236) b!805749))

(assert (= (and b!805749 res!550237) b!805746))

(declare-fun m!747775 () Bool)

(assert (=> b!805744 m!747775))

(declare-fun m!747777 () Bool)

(assert (=> b!805744 m!747777))

(declare-fun m!747779 () Bool)

(assert (=> b!805744 m!747779))

(declare-fun m!747781 () Bool)

(assert (=> b!805744 m!747781))

(declare-fun m!747783 () Bool)

(assert (=> b!805748 m!747783))

(declare-fun m!747785 () Bool)

(assert (=> b!805747 m!747785))

(declare-fun m!747787 () Bool)

(assert (=> b!805749 m!747787))

(declare-fun m!747789 () Bool)

(assert (=> b!805749 m!747789))

(assert (=> b!805749 m!747789))

(declare-fun m!747791 () Bool)

(assert (=> b!805749 m!747791))

(assert (=> b!805749 m!747789))

(declare-fun m!747793 () Bool)

(assert (=> b!805749 m!747793))

(declare-fun m!747795 () Bool)

(assert (=> b!805739 m!747795))

(declare-fun m!747797 () Bool)

(assert (=> b!805743 m!747797))

(declare-fun m!747799 () Bool)

(assert (=> b!805743 m!747799))

(declare-fun m!747801 () Bool)

(assert (=> start!69114 m!747801))

(declare-fun m!747803 () Bool)

(assert (=> start!69114 m!747803))

(assert (=> b!805745 m!747789))

(assert (=> b!805745 m!747789))

(declare-fun m!747805 () Bool)

(assert (=> b!805745 m!747805))

(declare-fun m!747807 () Bool)

(assert (=> b!805742 m!747807))

(declare-fun m!747809 () Bool)

(assert (=> b!805740 m!747809))

(check-sat (not b!805742) (not b!805739) (not b!805748) (not b!805745) (not b!805749) (not b!805744) (not start!69114) (not b!805747) (not b!805740))
(check-sat)
