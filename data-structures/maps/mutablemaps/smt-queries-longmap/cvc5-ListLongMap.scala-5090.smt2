; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69118 () Bool)

(assert start!69118)

(declare-fun b!805805 () Bool)

(declare-fun res!550298 () Bool)

(declare-fun e!446267 () Bool)

(assert (=> b!805805 (=> (not res!550298) (not e!446267))))

(declare-datatypes ((array!43814 0))(
  ( (array!43815 (arr!20982 (Array (_ BitVec 32) (_ BitVec 64))) (size!21403 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43814)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43814 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805805 (= res!550298 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805806 () Bool)

(declare-fun e!446268 () Bool)

(declare-fun e!446265 () Bool)

(assert (=> b!805806 (= e!446268 e!446265)))

(declare-fun res!550300 () Bool)

(assert (=> b!805806 (=> (not res!550300) (not e!446265))))

(declare-datatypes ((SeekEntryResult!8580 0))(
  ( (MissingZero!8580 (index!36687 (_ BitVec 32))) (Found!8580 (index!36688 (_ BitVec 32))) (Intermediate!8580 (undefined!9392 Bool) (index!36689 (_ BitVec 32)) (x!67534 (_ BitVec 32))) (Undefined!8580) (MissingVacant!8580 (index!36690 (_ BitVec 32))) )
))
(declare-fun lt!360850 () SeekEntryResult!8580)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!360852 () SeekEntryResult!8580)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!805806 (= res!550300 (and (= lt!360850 lt!360852) (= lt!360852 (Found!8580 j!153)) (= (select (arr!20982 a!3170) index!1236) (select (arr!20982 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43814 (_ BitVec 32)) SeekEntryResult!8580)

(assert (=> b!805806 (= lt!360852 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20982 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43814 (_ BitVec 32)) SeekEntryResult!8580)

(assert (=> b!805806 (= lt!360850 (seekEntryOrOpen!0 (select (arr!20982 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805807 () Bool)

(declare-fun res!550302 () Bool)

(declare-fun e!446266 () Bool)

(assert (=> b!805807 (=> (not res!550302) (not e!446266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43814 (_ BitVec 32)) Bool)

(assert (=> b!805807 (= res!550302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805808 () Bool)

(declare-fun res!550301 () Bool)

(assert (=> b!805808 (=> (not res!550301) (not e!446267))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805808 (= res!550301 (validKeyInArray!0 (select (arr!20982 a!3170) j!153)))))

(declare-fun b!805809 () Bool)

(declare-fun res!550297 () Bool)

(assert (=> b!805809 (=> (not res!550297) (not e!446267))))

(assert (=> b!805809 (= res!550297 (validKeyInArray!0 k!2044))))

(declare-fun res!550303 () Bool)

(assert (=> start!69118 (=> (not res!550303) (not e!446267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69118 (= res!550303 (validMask!0 mask!3266))))

(assert (=> start!69118 e!446267))

(assert (=> start!69118 true))

(declare-fun array_inv!16756 (array!43814) Bool)

(assert (=> start!69118 (array_inv!16756 a!3170)))

(declare-fun b!805810 () Bool)

(assert (=> b!805810 (= e!446266 e!446268)))

(declare-fun res!550305 () Bool)

(assert (=> b!805810 (=> (not res!550305) (not e!446268))))

(declare-fun lt!360854 () SeekEntryResult!8580)

(declare-fun lt!360853 () SeekEntryResult!8580)

(assert (=> b!805810 (= res!550305 (= lt!360854 lt!360853))))

(declare-fun lt!360855 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!360851 () array!43814)

(assert (=> b!805810 (= lt!360853 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360855 lt!360851 mask!3266))))

(assert (=> b!805810 (= lt!360854 (seekEntryOrOpen!0 lt!360855 lt!360851 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!805810 (= lt!360855 (select (store (arr!20982 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!805810 (= lt!360851 (array!43815 (store (arr!20982 a!3170) i!1163 k!2044) (size!21403 a!3170)))))

(declare-fun b!805811 () Bool)

(declare-fun res!550304 () Bool)

(assert (=> b!805811 (=> (not res!550304) (not e!446266))))

(declare-datatypes ((List!14998 0))(
  ( (Nil!14995) (Cons!14994 (h!16123 (_ BitVec 64)) (t!21321 List!14998)) )
))
(declare-fun arrayNoDuplicates!0 (array!43814 (_ BitVec 32) List!14998) Bool)

(assert (=> b!805811 (= res!550304 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14995))))

(declare-fun b!805812 () Bool)

(assert (=> b!805812 (= e!446267 e!446266)))

(declare-fun res!550306 () Bool)

(assert (=> b!805812 (=> (not res!550306) (not e!446266))))

(declare-fun lt!360856 () SeekEntryResult!8580)

(assert (=> b!805812 (= res!550306 (or (= lt!360856 (MissingZero!8580 i!1163)) (= lt!360856 (MissingVacant!8580 i!1163))))))

(assert (=> b!805812 (= lt!360856 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!805813 () Bool)

(declare-fun res!550296 () Bool)

(assert (=> b!805813 (=> (not res!550296) (not e!446266))))

(assert (=> b!805813 (= res!550296 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21403 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20982 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21403 a!3170)) (= (select (arr!20982 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805814 () Bool)

(declare-fun res!550299 () Bool)

(assert (=> b!805814 (=> (not res!550299) (not e!446267))))

(assert (=> b!805814 (= res!550299 (and (= (size!21403 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21403 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21403 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805815 () Bool)

(assert (=> b!805815 (= e!446265 (not true))))

(assert (=> b!805815 (= lt!360853 (Found!8580 index!1236))))

(assert (= (and start!69118 res!550303) b!805814))

(assert (= (and b!805814 res!550299) b!805808))

(assert (= (and b!805808 res!550301) b!805809))

(assert (= (and b!805809 res!550297) b!805805))

(assert (= (and b!805805 res!550298) b!805812))

(assert (= (and b!805812 res!550306) b!805807))

(assert (= (and b!805807 res!550302) b!805811))

(assert (= (and b!805811 res!550304) b!805813))

(assert (= (and b!805813 res!550296) b!805810))

(assert (= (and b!805810 res!550305) b!805806))

(assert (= (and b!805806 res!550300) b!805815))

(declare-fun m!747847 () Bool)

(assert (=> b!805813 m!747847))

(declare-fun m!747849 () Bool)

(assert (=> b!805813 m!747849))

(declare-fun m!747851 () Bool)

(assert (=> b!805809 m!747851))

(declare-fun m!747853 () Bool)

(assert (=> b!805807 m!747853))

(declare-fun m!747855 () Bool)

(assert (=> b!805812 m!747855))

(declare-fun m!747857 () Bool)

(assert (=> start!69118 m!747857))

(declare-fun m!747859 () Bool)

(assert (=> start!69118 m!747859))

(declare-fun m!747861 () Bool)

(assert (=> b!805806 m!747861))

(declare-fun m!747863 () Bool)

(assert (=> b!805806 m!747863))

(assert (=> b!805806 m!747863))

(declare-fun m!747865 () Bool)

(assert (=> b!805806 m!747865))

(assert (=> b!805806 m!747863))

(declare-fun m!747867 () Bool)

(assert (=> b!805806 m!747867))

(declare-fun m!747869 () Bool)

(assert (=> b!805805 m!747869))

(declare-fun m!747871 () Bool)

(assert (=> b!805811 m!747871))

(declare-fun m!747873 () Bool)

(assert (=> b!805810 m!747873))

(declare-fun m!747875 () Bool)

(assert (=> b!805810 m!747875))

(declare-fun m!747877 () Bool)

(assert (=> b!805810 m!747877))

(declare-fun m!747879 () Bool)

(assert (=> b!805810 m!747879))

(assert (=> b!805808 m!747863))

(assert (=> b!805808 m!747863))

(declare-fun m!747881 () Bool)

(assert (=> b!805808 m!747881))

(push 1)

