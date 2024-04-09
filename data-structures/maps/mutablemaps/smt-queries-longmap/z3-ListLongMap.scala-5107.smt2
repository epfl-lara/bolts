; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69270 () Bool)

(assert start!69270)

(declare-fun b!807800 () Bool)

(declare-fun e!447227 () Bool)

(declare-fun e!447229 () Bool)

(assert (=> b!807800 (= e!447227 e!447229)))

(declare-fun res!552099 () Bool)

(assert (=> b!807800 (=> (not res!552099) (not e!447229))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43921 0))(
  ( (array!43922 (arr!21034 (Array (_ BitVec 32) (_ BitVec 64))) (size!21455 (_ BitVec 32))) )
))
(declare-fun lt!361964 () array!43921)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!361963 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8632 0))(
  ( (MissingZero!8632 (index!36895 (_ BitVec 32))) (Found!8632 (index!36896 (_ BitVec 32))) (Intermediate!8632 (undefined!9444 Bool) (index!36897 (_ BitVec 32)) (x!67725 (_ BitVec 32))) (Undefined!8632) (MissingVacant!8632 (index!36898 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43921 (_ BitVec 32)) SeekEntryResult!8632)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43921 (_ BitVec 32)) SeekEntryResult!8632)

(assert (=> b!807800 (= res!552099 (= (seekEntryOrOpen!0 lt!361963 lt!361964 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361963 lt!361964 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43921)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!807800 (= lt!361963 (select (store (arr!21034 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!807800 (= lt!361964 (array!43922 (store (arr!21034 a!3170) i!1163 k0!2044) (size!21455 a!3170)))))

(declare-fun b!807801 () Bool)

(declare-fun res!552095 () Bool)

(assert (=> b!807801 (=> (not res!552095) (not e!447227))))

(declare-datatypes ((List!15050 0))(
  ( (Nil!15047) (Cons!15046 (h!16175 (_ BitVec 64)) (t!21373 List!15050)) )
))
(declare-fun arrayNoDuplicates!0 (array!43921 (_ BitVec 32) List!15050) Bool)

(assert (=> b!807801 (= res!552095 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15047))))

(declare-fun b!807802 () Bool)

(declare-fun e!447225 () Bool)

(assert (=> b!807802 (= e!447225 e!447227)))

(declare-fun res!552094 () Bool)

(assert (=> b!807802 (=> (not res!552094) (not e!447227))))

(declare-fun lt!361962 () SeekEntryResult!8632)

(assert (=> b!807802 (= res!552094 (or (= lt!361962 (MissingZero!8632 i!1163)) (= lt!361962 (MissingVacant!8632 i!1163))))))

(assert (=> b!807802 (= lt!361962 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!552102 () Bool)

(assert (=> start!69270 (=> (not res!552102) (not e!447225))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69270 (= res!552102 (validMask!0 mask!3266))))

(assert (=> start!69270 e!447225))

(assert (=> start!69270 true))

(declare-fun array_inv!16808 (array!43921) Bool)

(assert (=> start!69270 (array_inv!16808 a!3170)))

(declare-fun b!807803 () Bool)

(declare-fun res!552098 () Bool)

(assert (=> b!807803 (=> (not res!552098) (not e!447227))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43921 (_ BitVec 32)) Bool)

(assert (=> b!807803 (= res!552098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807804 () Bool)

(declare-fun res!552103 () Bool)

(assert (=> b!807804 (=> (not res!552103) (not e!447225))))

(declare-fun arrayContainsKey!0 (array!43921 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807804 (= res!552103 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807805 () Bool)

(declare-fun e!447226 () Bool)

(assert (=> b!807805 (= e!447229 e!447226)))

(declare-fun res!552093 () Bool)

(assert (=> b!807805 (=> (not res!552093) (not e!447226))))

(declare-fun lt!361966 () SeekEntryResult!8632)

(declare-fun lt!361961 () SeekEntryResult!8632)

(assert (=> b!807805 (= res!552093 (and (= lt!361966 lt!361961) (= lt!361961 (Found!8632 j!153)) (not (= (select (arr!21034 a!3170) index!1236) (select (arr!21034 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!807805 (= lt!361961 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21034 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807805 (= lt!361966 (seekEntryOrOpen!0 (select (arr!21034 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807806 () Bool)

(assert (=> b!807806 (= e!447226 false)))

(declare-fun lt!361965 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807806 (= lt!361965 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807807 () Bool)

(declare-fun res!552101 () Bool)

(assert (=> b!807807 (=> (not res!552101) (not e!447225))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807807 (= res!552101 (validKeyInArray!0 (select (arr!21034 a!3170) j!153)))))

(declare-fun b!807808 () Bool)

(declare-fun res!552096 () Bool)

(assert (=> b!807808 (=> (not res!552096) (not e!447225))))

(assert (=> b!807808 (= res!552096 (validKeyInArray!0 k0!2044))))

(declare-fun b!807809 () Bool)

(declare-fun res!552100 () Bool)

(assert (=> b!807809 (=> (not res!552100) (not e!447225))))

(assert (=> b!807809 (= res!552100 (and (= (size!21455 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21455 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21455 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807810 () Bool)

(declare-fun res!552097 () Bool)

(assert (=> b!807810 (=> (not res!552097) (not e!447227))))

(assert (=> b!807810 (= res!552097 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21455 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21034 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21455 a!3170)) (= (select (arr!21034 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!69270 res!552102) b!807809))

(assert (= (and b!807809 res!552100) b!807807))

(assert (= (and b!807807 res!552101) b!807808))

(assert (= (and b!807808 res!552096) b!807804))

(assert (= (and b!807804 res!552103) b!807802))

(assert (= (and b!807802 res!552094) b!807803))

(assert (= (and b!807803 res!552098) b!807801))

(assert (= (and b!807801 res!552095) b!807810))

(assert (= (and b!807810 res!552097) b!807800))

(assert (= (and b!807800 res!552099) b!807805))

(assert (= (and b!807805 res!552093) b!807806))

(declare-fun m!750009 () Bool)

(assert (=> start!69270 m!750009))

(declare-fun m!750011 () Bool)

(assert (=> start!69270 m!750011))

(declare-fun m!750013 () Bool)

(assert (=> b!807805 m!750013))

(declare-fun m!750015 () Bool)

(assert (=> b!807805 m!750015))

(assert (=> b!807805 m!750015))

(declare-fun m!750017 () Bool)

(assert (=> b!807805 m!750017))

(assert (=> b!807805 m!750015))

(declare-fun m!750019 () Bool)

(assert (=> b!807805 m!750019))

(declare-fun m!750021 () Bool)

(assert (=> b!807801 m!750021))

(declare-fun m!750023 () Bool)

(assert (=> b!807803 m!750023))

(declare-fun m!750025 () Bool)

(assert (=> b!807806 m!750025))

(declare-fun m!750027 () Bool)

(assert (=> b!807804 m!750027))

(declare-fun m!750029 () Bool)

(assert (=> b!807810 m!750029))

(declare-fun m!750031 () Bool)

(assert (=> b!807810 m!750031))

(declare-fun m!750033 () Bool)

(assert (=> b!807802 m!750033))

(assert (=> b!807807 m!750015))

(assert (=> b!807807 m!750015))

(declare-fun m!750035 () Bool)

(assert (=> b!807807 m!750035))

(declare-fun m!750037 () Bool)

(assert (=> b!807800 m!750037))

(declare-fun m!750039 () Bool)

(assert (=> b!807800 m!750039))

(declare-fun m!750041 () Bool)

(assert (=> b!807800 m!750041))

(declare-fun m!750043 () Bool)

(assert (=> b!807800 m!750043))

(declare-fun m!750045 () Bool)

(assert (=> b!807808 m!750045))

(check-sat (not b!807805) (not b!807807) (not b!807804) (not b!807801) (not start!69270) (not b!807802) (not b!807803) (not b!807806) (not b!807808) (not b!807800))
(check-sat)
