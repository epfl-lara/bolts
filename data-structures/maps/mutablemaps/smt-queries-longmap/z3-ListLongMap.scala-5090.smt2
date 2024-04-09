; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69120 () Bool)

(assert start!69120)

(declare-fun b!805838 () Bool)

(declare-fun res!550329 () Bool)

(declare-fun e!446280 () Bool)

(assert (=> b!805838 (=> (not res!550329) (not e!446280))))

(declare-datatypes ((array!43816 0))(
  ( (array!43817 (arr!20983 (Array (_ BitVec 32) (_ BitVec 64))) (size!21404 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43816)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805838 (= res!550329 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun res!550331 () Bool)

(assert (=> start!69120 (=> (not res!550331) (not e!446280))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69120 (= res!550331 (validMask!0 mask!3266))))

(assert (=> start!69120 e!446280))

(assert (=> start!69120 true))

(declare-fun array_inv!16757 (array!43816) Bool)

(assert (=> start!69120 (array_inv!16757 a!3170)))

(declare-fun b!805839 () Bool)

(declare-fun res!550335 () Bool)

(declare-fun e!446283 () Bool)

(assert (=> b!805839 (=> (not res!550335) (not e!446283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43816 (_ BitVec 32)) Bool)

(assert (=> b!805839 (= res!550335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805840 () Bool)

(declare-fun res!550337 () Bool)

(assert (=> b!805840 (=> (not res!550337) (not e!446280))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!805840 (= res!550337 (and (= (size!21404 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21404 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21404 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805841 () Bool)

(declare-fun res!550338 () Bool)

(assert (=> b!805841 (=> (not res!550338) (not e!446283))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!805841 (= res!550338 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21404 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20983 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21404 a!3170)) (= (select (arr!20983 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805842 () Bool)

(declare-fun res!550332 () Bool)

(assert (=> b!805842 (=> (not res!550332) (not e!446280))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805842 (= res!550332 (validKeyInArray!0 (select (arr!20983 a!3170) j!153)))))

(declare-fun b!805843 () Bool)

(declare-fun e!446284 () Bool)

(assert (=> b!805843 (= e!446283 e!446284)))

(declare-fun res!550333 () Bool)

(assert (=> b!805843 (=> (not res!550333) (not e!446284))))

(declare-datatypes ((SeekEntryResult!8581 0))(
  ( (MissingZero!8581 (index!36691 (_ BitVec 32))) (Found!8581 (index!36692 (_ BitVec 32))) (Intermediate!8581 (undefined!9393 Bool) (index!36693 (_ BitVec 32)) (x!67535 (_ BitVec 32))) (Undefined!8581) (MissingVacant!8581 (index!36694 (_ BitVec 32))) )
))
(declare-fun lt!360873 () SeekEntryResult!8581)

(declare-fun lt!360871 () SeekEntryResult!8581)

(assert (=> b!805843 (= res!550333 (= lt!360873 lt!360871))))

(declare-fun lt!360872 () (_ BitVec 64))

(declare-fun lt!360876 () array!43816)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43816 (_ BitVec 32)) SeekEntryResult!8581)

(assert (=> b!805843 (= lt!360871 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360872 lt!360876 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43816 (_ BitVec 32)) SeekEntryResult!8581)

(assert (=> b!805843 (= lt!360873 (seekEntryOrOpen!0 lt!360872 lt!360876 mask!3266))))

(assert (=> b!805843 (= lt!360872 (select (store (arr!20983 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!805843 (= lt!360876 (array!43817 (store (arr!20983 a!3170) i!1163 k0!2044) (size!21404 a!3170)))))

(declare-fun b!805844 () Bool)

(declare-fun res!550339 () Bool)

(assert (=> b!805844 (=> (not res!550339) (not e!446283))))

(declare-datatypes ((List!14999 0))(
  ( (Nil!14996) (Cons!14995 (h!16124 (_ BitVec 64)) (t!21322 List!14999)) )
))
(declare-fun arrayNoDuplicates!0 (array!43816 (_ BitVec 32) List!14999) Bool)

(assert (=> b!805844 (= res!550339 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14996))))

(declare-fun b!805845 () Bool)

(declare-fun e!446282 () Bool)

(assert (=> b!805845 (= e!446284 e!446282)))

(declare-fun res!550330 () Bool)

(assert (=> b!805845 (=> (not res!550330) (not e!446282))))

(declare-fun lt!360875 () SeekEntryResult!8581)

(declare-fun lt!360877 () SeekEntryResult!8581)

(assert (=> b!805845 (= res!550330 (and (= lt!360877 lt!360875) (= lt!360875 (Found!8581 j!153)) (= (select (arr!20983 a!3170) index!1236) (select (arr!20983 a!3170) j!153))))))

(assert (=> b!805845 (= lt!360875 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20983 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!805845 (= lt!360877 (seekEntryOrOpen!0 (select (arr!20983 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805846 () Bool)

(assert (=> b!805846 (= e!446282 (not true))))

(assert (=> b!805846 (= lt!360871 (Found!8581 index!1236))))

(declare-fun b!805847 () Bool)

(declare-fun res!550336 () Bool)

(assert (=> b!805847 (=> (not res!550336) (not e!446280))))

(assert (=> b!805847 (= res!550336 (validKeyInArray!0 k0!2044))))

(declare-fun b!805848 () Bool)

(assert (=> b!805848 (= e!446280 e!446283)))

(declare-fun res!550334 () Bool)

(assert (=> b!805848 (=> (not res!550334) (not e!446283))))

(declare-fun lt!360874 () SeekEntryResult!8581)

(assert (=> b!805848 (= res!550334 (or (= lt!360874 (MissingZero!8581 i!1163)) (= lt!360874 (MissingVacant!8581 i!1163))))))

(assert (=> b!805848 (= lt!360874 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(assert (= (and start!69120 res!550331) b!805840))

(assert (= (and b!805840 res!550337) b!805842))

(assert (= (and b!805842 res!550332) b!805847))

(assert (= (and b!805847 res!550336) b!805838))

(assert (= (and b!805838 res!550329) b!805848))

(assert (= (and b!805848 res!550334) b!805839))

(assert (= (and b!805839 res!550335) b!805844))

(assert (= (and b!805844 res!550339) b!805841))

(assert (= (and b!805841 res!550338) b!805843))

(assert (= (and b!805843 res!550333) b!805845))

(assert (= (and b!805845 res!550330) b!805846))

(declare-fun m!747883 () Bool)

(assert (=> b!805839 m!747883))

(declare-fun m!747885 () Bool)

(assert (=> b!805848 m!747885))

(declare-fun m!747887 () Bool)

(assert (=> start!69120 m!747887))

(declare-fun m!747889 () Bool)

(assert (=> start!69120 m!747889))

(declare-fun m!747891 () Bool)

(assert (=> b!805843 m!747891))

(declare-fun m!747893 () Bool)

(assert (=> b!805843 m!747893))

(declare-fun m!747895 () Bool)

(assert (=> b!805843 m!747895))

(declare-fun m!747897 () Bool)

(assert (=> b!805843 m!747897))

(declare-fun m!747899 () Bool)

(assert (=> b!805842 m!747899))

(assert (=> b!805842 m!747899))

(declare-fun m!747901 () Bool)

(assert (=> b!805842 m!747901))

(declare-fun m!747903 () Bool)

(assert (=> b!805841 m!747903))

(declare-fun m!747905 () Bool)

(assert (=> b!805841 m!747905))

(declare-fun m!747907 () Bool)

(assert (=> b!805847 m!747907))

(declare-fun m!747909 () Bool)

(assert (=> b!805845 m!747909))

(assert (=> b!805845 m!747899))

(assert (=> b!805845 m!747899))

(declare-fun m!747911 () Bool)

(assert (=> b!805845 m!747911))

(assert (=> b!805845 m!747899))

(declare-fun m!747913 () Bool)

(assert (=> b!805845 m!747913))

(declare-fun m!747915 () Bool)

(assert (=> b!805844 m!747915))

(declare-fun m!747917 () Bool)

(assert (=> b!805838 m!747917))

(check-sat (not b!805839) (not b!805844) (not start!69120) (not b!805848) (not b!805838) (not b!805847) (not b!805842) (not b!805845) (not b!805843))
(check-sat)
