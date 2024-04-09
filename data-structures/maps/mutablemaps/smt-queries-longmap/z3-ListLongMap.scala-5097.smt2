; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69210 () Bool)

(assert start!69210)

(declare-fun b!806810 () Bool)

(declare-fun res!551103 () Bool)

(declare-fun e!446779 () Bool)

(assert (=> b!806810 (=> (not res!551103) (not e!446779))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806810 (= res!551103 (validKeyInArray!0 k0!2044))))

(declare-fun b!806811 () Bool)

(declare-fun res!551113 () Bool)

(declare-fun e!446776 () Bool)

(assert (=> b!806811 (=> (not res!551113) (not e!446776))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43861 0))(
  ( (array!43862 (arr!21004 (Array (_ BitVec 32) (_ BitVec 64))) (size!21425 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43861)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!806811 (= res!551113 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21425 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21004 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21425 a!3170)) (= (select (arr!21004 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806812 () Bool)

(declare-fun res!551107 () Bool)

(assert (=> b!806812 (=> (not res!551107) (not e!446779))))

(declare-fun arrayContainsKey!0 (array!43861 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806812 (= res!551107 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806813 () Bool)

(declare-fun e!446777 () Bool)

(declare-fun e!446775 () Bool)

(assert (=> b!806813 (= e!446777 e!446775)))

(declare-fun res!551111 () Bool)

(assert (=> b!806813 (=> (not res!551111) (not e!446775))))

(declare-datatypes ((SeekEntryResult!8602 0))(
  ( (MissingZero!8602 (index!36775 (_ BitVec 32))) (Found!8602 (index!36776 (_ BitVec 32))) (Intermediate!8602 (undefined!9414 Bool) (index!36777 (_ BitVec 32)) (x!67615 (_ BitVec 32))) (Undefined!8602) (MissingVacant!8602 (index!36778 (_ BitVec 32))) )
))
(declare-fun lt!361423 () SeekEntryResult!8602)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!361422 () SeekEntryResult!8602)

(assert (=> b!806813 (= res!551111 (and (= lt!361423 lt!361422) (= lt!361422 (Found!8602 j!153)) (not (= (select (arr!21004 a!3170) index!1236) (select (arr!21004 a!3170) j!153)))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43861 (_ BitVec 32)) SeekEntryResult!8602)

(assert (=> b!806813 (= lt!361422 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21004 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43861 (_ BitVec 32)) SeekEntryResult!8602)

(assert (=> b!806813 (= lt!361423 (seekEntryOrOpen!0 (select (arr!21004 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806814 () Bool)

(assert (=> b!806814 (= e!446775 false)))

(declare-fun lt!361425 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!806814 (= lt!361425 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!806815 () Bool)

(declare-fun res!551110 () Bool)

(assert (=> b!806815 (=> (not res!551110) (not e!446776))))

(declare-datatypes ((List!15020 0))(
  ( (Nil!15017) (Cons!15016 (h!16145 (_ BitVec 64)) (t!21343 List!15020)) )
))
(declare-fun arrayNoDuplicates!0 (array!43861 (_ BitVec 32) List!15020) Bool)

(assert (=> b!806815 (= res!551110 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15017))))

(declare-fun res!551104 () Bool)

(assert (=> start!69210 (=> (not res!551104) (not e!446779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69210 (= res!551104 (validMask!0 mask!3266))))

(assert (=> start!69210 e!446779))

(assert (=> start!69210 true))

(declare-fun array_inv!16778 (array!43861) Bool)

(assert (=> start!69210 (array_inv!16778 a!3170)))

(declare-fun b!806816 () Bool)

(declare-fun res!551109 () Bool)

(assert (=> b!806816 (=> (not res!551109) (not e!446779))))

(assert (=> b!806816 (= res!551109 (validKeyInArray!0 (select (arr!21004 a!3170) j!153)))))

(declare-fun b!806817 () Bool)

(declare-fun res!551106 () Bool)

(assert (=> b!806817 (=> (not res!551106) (not e!446776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43861 (_ BitVec 32)) Bool)

(assert (=> b!806817 (= res!551106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806818 () Bool)

(assert (=> b!806818 (= e!446776 e!446777)))

(declare-fun res!551112 () Bool)

(assert (=> b!806818 (=> (not res!551112) (not e!446777))))

(declare-fun lt!361421 () (_ BitVec 64))

(declare-fun lt!361426 () array!43861)

(assert (=> b!806818 (= res!551112 (= (seekEntryOrOpen!0 lt!361421 lt!361426 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361421 lt!361426 mask!3266)))))

(assert (=> b!806818 (= lt!361421 (select (store (arr!21004 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!806818 (= lt!361426 (array!43862 (store (arr!21004 a!3170) i!1163 k0!2044) (size!21425 a!3170)))))

(declare-fun b!806819 () Bool)

(assert (=> b!806819 (= e!446779 e!446776)))

(declare-fun res!551108 () Bool)

(assert (=> b!806819 (=> (not res!551108) (not e!446776))))

(declare-fun lt!361424 () SeekEntryResult!8602)

(assert (=> b!806819 (= res!551108 (or (= lt!361424 (MissingZero!8602 i!1163)) (= lt!361424 (MissingVacant!8602 i!1163))))))

(assert (=> b!806819 (= lt!361424 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!806820 () Bool)

(declare-fun res!551105 () Bool)

(assert (=> b!806820 (=> (not res!551105) (not e!446779))))

(assert (=> b!806820 (= res!551105 (and (= (size!21425 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21425 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21425 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!69210 res!551104) b!806820))

(assert (= (and b!806820 res!551105) b!806816))

(assert (= (and b!806816 res!551109) b!806810))

(assert (= (and b!806810 res!551103) b!806812))

(assert (= (and b!806812 res!551107) b!806819))

(assert (= (and b!806819 res!551108) b!806817))

(assert (= (and b!806817 res!551106) b!806815))

(assert (= (and b!806815 res!551110) b!806811))

(assert (= (and b!806811 res!551113) b!806818))

(assert (= (and b!806818 res!551112) b!806813))

(assert (= (and b!806813 res!551111) b!806814))

(declare-fun m!748869 () Bool)

(assert (=> b!806811 m!748869))

(declare-fun m!748871 () Bool)

(assert (=> b!806811 m!748871))

(declare-fun m!748873 () Bool)

(assert (=> b!806812 m!748873))

(declare-fun m!748875 () Bool)

(assert (=> b!806817 m!748875))

(declare-fun m!748877 () Bool)

(assert (=> b!806818 m!748877))

(declare-fun m!748879 () Bool)

(assert (=> b!806818 m!748879))

(declare-fun m!748881 () Bool)

(assert (=> b!806818 m!748881))

(declare-fun m!748883 () Bool)

(assert (=> b!806818 m!748883))

(declare-fun m!748885 () Bool)

(assert (=> b!806810 m!748885))

(declare-fun m!748887 () Bool)

(assert (=> b!806819 m!748887))

(declare-fun m!748889 () Bool)

(assert (=> b!806815 m!748889))

(declare-fun m!748891 () Bool)

(assert (=> b!806816 m!748891))

(assert (=> b!806816 m!748891))

(declare-fun m!748893 () Bool)

(assert (=> b!806816 m!748893))

(declare-fun m!748895 () Bool)

(assert (=> b!806814 m!748895))

(declare-fun m!748897 () Bool)

(assert (=> b!806813 m!748897))

(assert (=> b!806813 m!748891))

(assert (=> b!806813 m!748891))

(declare-fun m!748899 () Bool)

(assert (=> b!806813 m!748899))

(assert (=> b!806813 m!748891))

(declare-fun m!748901 () Bool)

(assert (=> b!806813 m!748901))

(declare-fun m!748903 () Bool)

(assert (=> start!69210 m!748903))

(declare-fun m!748905 () Bool)

(assert (=> start!69210 m!748905))

(check-sat (not b!806818) (not b!806817) (not b!806816) (not b!806819) (not b!806813) (not b!806812) (not b!806815) (not b!806810) (not start!69210) (not b!806814))
(check-sat)
