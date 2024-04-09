; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69208 () Bool)

(assert start!69208)

(declare-fun b!806777 () Bool)

(declare-fun e!446764 () Bool)

(assert (=> b!806777 (= e!446764 false)))

(declare-fun lt!361405 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!806777 (= lt!361405 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!806778 () Bool)

(declare-fun res!551072 () Bool)

(declare-fun e!446760 () Bool)

(assert (=> b!806778 (=> (not res!551072) (not e!446760))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43859 0))(
  ( (array!43860 (arr!21003 (Array (_ BitVec 32) (_ BitVec 64))) (size!21424 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43859)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!806778 (= res!551072 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21424 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21003 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21424 a!3170)) (= (select (arr!21003 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806779 () Bool)

(declare-fun res!551079 () Bool)

(declare-fun e!446762 () Bool)

(assert (=> b!806779 (=> (not res!551079) (not e!446762))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!806779 (= res!551079 (and (= (size!21424 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21424 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21424 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!551071 () Bool)

(assert (=> start!69208 (=> (not res!551071) (not e!446762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69208 (= res!551071 (validMask!0 mask!3266))))

(assert (=> start!69208 e!446762))

(assert (=> start!69208 true))

(declare-fun array_inv!16777 (array!43859) Bool)

(assert (=> start!69208 (array_inv!16777 a!3170)))

(declare-fun b!806780 () Bool)

(declare-fun e!446763 () Bool)

(assert (=> b!806780 (= e!446763 e!446764)))

(declare-fun res!551070 () Bool)

(assert (=> b!806780 (=> (not res!551070) (not e!446764))))

(declare-datatypes ((SeekEntryResult!8601 0))(
  ( (MissingZero!8601 (index!36771 (_ BitVec 32))) (Found!8601 (index!36772 (_ BitVec 32))) (Intermediate!8601 (undefined!9413 Bool) (index!36773 (_ BitVec 32)) (x!67614 (_ BitVec 32))) (Undefined!8601) (MissingVacant!8601 (index!36774 (_ BitVec 32))) )
))
(declare-fun lt!361403 () SeekEntryResult!8601)

(declare-fun lt!361407 () SeekEntryResult!8601)

(assert (=> b!806780 (= res!551070 (and (= lt!361403 lt!361407) (= lt!361407 (Found!8601 j!153)) (not (= (select (arr!21003 a!3170) index!1236) (select (arr!21003 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43859 (_ BitVec 32)) SeekEntryResult!8601)

(assert (=> b!806780 (= lt!361407 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21003 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43859 (_ BitVec 32)) SeekEntryResult!8601)

(assert (=> b!806780 (= lt!361403 (seekEntryOrOpen!0 (select (arr!21003 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806781 () Bool)

(declare-fun res!551080 () Bool)

(assert (=> b!806781 (=> (not res!551080) (not e!446760))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43859 (_ BitVec 32)) Bool)

(assert (=> b!806781 (= res!551080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806782 () Bool)

(declare-fun res!551074 () Bool)

(assert (=> b!806782 (=> (not res!551074) (not e!446762))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806782 (= res!551074 (validKeyInArray!0 k!2044))))

(declare-fun b!806783 () Bool)

(declare-fun res!551077 () Bool)

(assert (=> b!806783 (=> (not res!551077) (not e!446760))))

(declare-datatypes ((List!15019 0))(
  ( (Nil!15016) (Cons!15015 (h!16144 (_ BitVec 64)) (t!21342 List!15019)) )
))
(declare-fun arrayNoDuplicates!0 (array!43859 (_ BitVec 32) List!15019) Bool)

(assert (=> b!806783 (= res!551077 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15016))))

(declare-fun b!806784 () Bool)

(declare-fun res!551078 () Bool)

(assert (=> b!806784 (=> (not res!551078) (not e!446762))))

(assert (=> b!806784 (= res!551078 (validKeyInArray!0 (select (arr!21003 a!3170) j!153)))))

(declare-fun b!806785 () Bool)

(assert (=> b!806785 (= e!446762 e!446760)))

(declare-fun res!551075 () Bool)

(assert (=> b!806785 (=> (not res!551075) (not e!446760))))

(declare-fun lt!361408 () SeekEntryResult!8601)

(assert (=> b!806785 (= res!551075 (or (= lt!361408 (MissingZero!8601 i!1163)) (= lt!361408 (MissingVacant!8601 i!1163))))))

(assert (=> b!806785 (= lt!361408 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!806786 () Bool)

(declare-fun res!551073 () Bool)

(assert (=> b!806786 (=> (not res!551073) (not e!446762))))

(declare-fun arrayContainsKey!0 (array!43859 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806786 (= res!551073 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806787 () Bool)

(assert (=> b!806787 (= e!446760 e!446763)))

(declare-fun res!551076 () Bool)

(assert (=> b!806787 (=> (not res!551076) (not e!446763))))

(declare-fun lt!361406 () (_ BitVec 64))

(declare-fun lt!361404 () array!43859)

(assert (=> b!806787 (= res!551076 (= (seekEntryOrOpen!0 lt!361406 lt!361404 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361406 lt!361404 mask!3266)))))

(assert (=> b!806787 (= lt!361406 (select (store (arr!21003 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!806787 (= lt!361404 (array!43860 (store (arr!21003 a!3170) i!1163 k!2044) (size!21424 a!3170)))))

(assert (= (and start!69208 res!551071) b!806779))

(assert (= (and b!806779 res!551079) b!806784))

(assert (= (and b!806784 res!551078) b!806782))

(assert (= (and b!806782 res!551074) b!806786))

(assert (= (and b!806786 res!551073) b!806785))

(assert (= (and b!806785 res!551075) b!806781))

(assert (= (and b!806781 res!551080) b!806783))

(assert (= (and b!806783 res!551077) b!806778))

(assert (= (and b!806778 res!551072) b!806787))

(assert (= (and b!806787 res!551076) b!806780))

(assert (= (and b!806780 res!551070) b!806777))

(declare-fun m!748831 () Bool)

(assert (=> start!69208 m!748831))

(declare-fun m!748833 () Bool)

(assert (=> start!69208 m!748833))

(declare-fun m!748835 () Bool)

(assert (=> b!806778 m!748835))

(declare-fun m!748837 () Bool)

(assert (=> b!806778 m!748837))

(declare-fun m!748839 () Bool)

(assert (=> b!806786 m!748839))

(declare-fun m!748841 () Bool)

(assert (=> b!806781 m!748841))

(declare-fun m!748843 () Bool)

(assert (=> b!806784 m!748843))

(assert (=> b!806784 m!748843))

(declare-fun m!748845 () Bool)

(assert (=> b!806784 m!748845))

(declare-fun m!748847 () Bool)

(assert (=> b!806777 m!748847))

(declare-fun m!748849 () Bool)

(assert (=> b!806785 m!748849))

(declare-fun m!748851 () Bool)

(assert (=> b!806782 m!748851))

(declare-fun m!748853 () Bool)

(assert (=> b!806783 m!748853))

(declare-fun m!748855 () Bool)

(assert (=> b!806787 m!748855))

(declare-fun m!748857 () Bool)

(assert (=> b!806787 m!748857))

(declare-fun m!748859 () Bool)

(assert (=> b!806787 m!748859))

(declare-fun m!748861 () Bool)

(assert (=> b!806787 m!748861))

(declare-fun m!748863 () Bool)

(assert (=> b!806780 m!748863))

(assert (=> b!806780 m!748843))

(assert (=> b!806780 m!748843))

(declare-fun m!748865 () Bool)

(assert (=> b!806780 m!748865))

(assert (=> b!806780 m!748843))

(declare-fun m!748867 () Bool)

(assert (=> b!806780 m!748867))

(push 1)

