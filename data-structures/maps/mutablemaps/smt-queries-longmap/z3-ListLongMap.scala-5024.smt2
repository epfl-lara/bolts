; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68676 () Bool)

(assert start!68676)

(declare-fun b!798954 () Bool)

(declare-fun e!443120 () Bool)

(declare-fun e!443119 () Bool)

(assert (=> b!798954 (= e!443120 e!443119)))

(declare-fun res!543649 () Bool)

(assert (=> b!798954 (=> (not res!543649) (not e!443119))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8383 0))(
  ( (MissingZero!8383 (index!35899 (_ BitVec 32))) (Found!8383 (index!35900 (_ BitVec 32))) (Intermediate!8383 (undefined!9195 Bool) (index!35901 (_ BitVec 32)) (x!66806 (_ BitVec 32))) (Undefined!8383) (MissingVacant!8383 (index!35902 (_ BitVec 32))) )
))
(declare-fun lt!356740 () SeekEntryResult!8383)

(declare-datatypes ((array!43417 0))(
  ( (array!43418 (arr!20785 (Array (_ BitVec 32) (_ BitVec 64))) (size!21206 (_ BitVec 32))) )
))
(declare-fun lt!356746 () array!43417)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!356744 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43417 (_ BitVec 32)) SeekEntryResult!8383)

(assert (=> b!798954 (= res!543649 (= lt!356740 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356744 lt!356746 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43417 (_ BitVec 32)) SeekEntryResult!8383)

(assert (=> b!798954 (= lt!356740 (seekEntryOrOpen!0 lt!356744 lt!356746 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43417)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!798954 (= lt!356744 (select (store (arr!20785 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!798954 (= lt!356746 (array!43418 (store (arr!20785 a!3170) i!1163 k0!2044) (size!21206 a!3170)))))

(declare-fun b!798955 () Bool)

(declare-fun res!543647 () Bool)

(declare-fun e!443118 () Bool)

(assert (=> b!798955 (=> (not res!543647) (not e!443118))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798955 (= res!543647 (validKeyInArray!0 k0!2044))))

(declare-fun b!798956 () Bool)

(declare-fun e!443121 () Bool)

(assert (=> b!798956 (= e!443119 e!443121)))

(declare-fun res!543646 () Bool)

(assert (=> b!798956 (=> (not res!543646) (not e!443121))))

(declare-fun lt!356743 () SeekEntryResult!8383)

(declare-fun lt!356739 () SeekEntryResult!8383)

(assert (=> b!798956 (= res!543646 (and (= lt!356743 lt!356739) (= lt!356739 (Found!8383 j!153)) (not (= (select (arr!20785 a!3170) index!1236) (select (arr!20785 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!798956 (= lt!356739 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20785 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!798956 (= lt!356743 (seekEntryOrOpen!0 (select (arr!20785 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798957 () Bool)

(declare-fun e!443117 () Bool)

(assert (=> b!798957 (= e!443121 e!443117)))

(declare-fun res!543655 () Bool)

(assert (=> b!798957 (=> (not res!543655) (not e!443117))))

(declare-fun lt!356742 () (_ BitVec 32))

(assert (=> b!798957 (= res!543655 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356742 #b00000000000000000000000000000000) (bvslt lt!356742 (size!21206 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!798957 (= lt!356742 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!798958 () Bool)

(declare-fun res!543644 () Bool)

(assert (=> b!798958 (=> (not res!543644) (not e!443118))))

(assert (=> b!798958 (= res!543644 (and (= (size!21206 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21206 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21206 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798959 () Bool)

(declare-fun res!543648 () Bool)

(assert (=> b!798959 (=> (not res!543648) (not e!443120))))

(assert (=> b!798959 (= res!543648 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21206 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20785 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21206 a!3170)) (= (select (arr!20785 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!543653 () Bool)

(assert (=> start!68676 (=> (not res!543653) (not e!443118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68676 (= res!543653 (validMask!0 mask!3266))))

(assert (=> start!68676 e!443118))

(assert (=> start!68676 true))

(declare-fun array_inv!16559 (array!43417) Bool)

(assert (=> start!68676 (array_inv!16559 a!3170)))

(declare-fun b!798960 () Bool)

(declare-fun res!543645 () Bool)

(assert (=> b!798960 (=> (not res!543645) (not e!443120))))

(declare-datatypes ((List!14801 0))(
  ( (Nil!14798) (Cons!14797 (h!15926 (_ BitVec 64)) (t!21124 List!14801)) )
))
(declare-fun arrayNoDuplicates!0 (array!43417 (_ BitVec 32) List!14801) Bool)

(assert (=> b!798960 (= res!543645 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14798))))

(declare-fun b!798961 () Bool)

(declare-fun res!543643 () Bool)

(assert (=> b!798961 (=> (not res!543643) (not e!443120))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43417 (_ BitVec 32)) Bool)

(assert (=> b!798961 (= res!543643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798962 () Bool)

(declare-fun res!543650 () Bool)

(assert (=> b!798962 (=> (not res!543650) (not e!443117))))

(assert (=> b!798962 (= res!543650 (= lt!356740 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356742 vacantAfter!23 lt!356744 lt!356746 mask!3266)))))

(declare-fun b!798963 () Bool)

(assert (=> b!798963 (= e!443117 false)))

(declare-fun lt!356741 () SeekEntryResult!8383)

(assert (=> b!798963 (= lt!356741 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356742 vacantBefore!23 (select (arr!20785 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798964 () Bool)

(declare-fun res!543651 () Bool)

(assert (=> b!798964 (=> (not res!543651) (not e!443118))))

(assert (=> b!798964 (= res!543651 (validKeyInArray!0 (select (arr!20785 a!3170) j!153)))))

(declare-fun b!798965 () Bool)

(declare-fun res!543652 () Bool)

(assert (=> b!798965 (=> (not res!543652) (not e!443118))))

(declare-fun arrayContainsKey!0 (array!43417 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798965 (= res!543652 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798966 () Bool)

(assert (=> b!798966 (= e!443118 e!443120)))

(declare-fun res!543654 () Bool)

(assert (=> b!798966 (=> (not res!543654) (not e!443120))))

(declare-fun lt!356745 () SeekEntryResult!8383)

(assert (=> b!798966 (= res!543654 (or (= lt!356745 (MissingZero!8383 i!1163)) (= lt!356745 (MissingVacant!8383 i!1163))))))

(assert (=> b!798966 (= lt!356745 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(assert (= (and start!68676 res!543653) b!798958))

(assert (= (and b!798958 res!543644) b!798964))

(assert (= (and b!798964 res!543651) b!798955))

(assert (= (and b!798955 res!543647) b!798965))

(assert (= (and b!798965 res!543652) b!798966))

(assert (= (and b!798966 res!543654) b!798961))

(assert (= (and b!798961 res!543643) b!798960))

(assert (= (and b!798960 res!543645) b!798959))

(assert (= (and b!798959 res!543648) b!798954))

(assert (= (and b!798954 res!543649) b!798956))

(assert (= (and b!798956 res!543646) b!798957))

(assert (= (and b!798957 res!543655) b!798962))

(assert (= (and b!798962 res!543650) b!798963))

(declare-fun m!740035 () Bool)

(assert (=> b!798961 m!740035))

(declare-fun m!740037 () Bool)

(assert (=> b!798965 m!740037))

(declare-fun m!740039 () Bool)

(assert (=> b!798959 m!740039))

(declare-fun m!740041 () Bool)

(assert (=> b!798959 m!740041))

(declare-fun m!740043 () Bool)

(assert (=> b!798964 m!740043))

(assert (=> b!798964 m!740043))

(declare-fun m!740045 () Bool)

(assert (=> b!798964 m!740045))

(declare-fun m!740047 () Bool)

(assert (=> start!68676 m!740047))

(declare-fun m!740049 () Bool)

(assert (=> start!68676 m!740049))

(declare-fun m!740051 () Bool)

(assert (=> b!798956 m!740051))

(assert (=> b!798956 m!740043))

(assert (=> b!798956 m!740043))

(declare-fun m!740053 () Bool)

(assert (=> b!798956 m!740053))

(assert (=> b!798956 m!740043))

(declare-fun m!740055 () Bool)

(assert (=> b!798956 m!740055))

(declare-fun m!740057 () Bool)

(assert (=> b!798954 m!740057))

(declare-fun m!740059 () Bool)

(assert (=> b!798954 m!740059))

(declare-fun m!740061 () Bool)

(assert (=> b!798954 m!740061))

(declare-fun m!740063 () Bool)

(assert (=> b!798954 m!740063))

(assert (=> b!798963 m!740043))

(assert (=> b!798963 m!740043))

(declare-fun m!740065 () Bool)

(assert (=> b!798963 m!740065))

(declare-fun m!740067 () Bool)

(assert (=> b!798955 m!740067))

(declare-fun m!740069 () Bool)

(assert (=> b!798960 m!740069))

(declare-fun m!740071 () Bool)

(assert (=> b!798962 m!740071))

(declare-fun m!740073 () Bool)

(assert (=> b!798957 m!740073))

(declare-fun m!740075 () Bool)

(assert (=> b!798966 m!740075))

(check-sat (not b!798964) (not b!798966) (not start!68676) (not b!798960) (not b!798956) (not b!798963) (not b!798957) (not b!798955) (not b!798954) (not b!798961) (not b!798962) (not b!798965))
(check-sat)
