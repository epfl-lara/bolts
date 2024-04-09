; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68298 () Bool)

(assert start!68298)

(declare-fun b!793025 () Bool)

(declare-fun res!537720 () Bool)

(declare-fun e!440601 () Bool)

(assert (=> b!793025 (=> (not res!537720) (not e!440601))))

(declare-datatypes ((array!43039 0))(
  ( (array!43040 (arr!20596 (Array (_ BitVec 32) (_ BitVec 64))) (size!21017 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43039)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43039 (_ BitVec 32)) Bool)

(assert (=> b!793025 (= res!537720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793026 () Bool)

(declare-fun res!537715 () Bool)

(declare-fun e!440600 () Bool)

(assert (=> b!793026 (=> (not res!537715) (not e!440600))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793026 (= res!537715 (validKeyInArray!0 (select (arr!20596 a!3170) j!153)))))

(declare-fun b!793027 () Bool)

(declare-fun res!537719 () Bool)

(assert (=> b!793027 (=> (not res!537719) (not e!440600))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!793027 (= res!537719 (and (= (size!21017 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21017 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21017 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793028 () Bool)

(declare-fun res!537717 () Bool)

(assert (=> b!793028 (=> (not res!537717) (not e!440601))))

(declare-datatypes ((List!14612 0))(
  ( (Nil!14609) (Cons!14608 (h!15737 (_ BitVec 64)) (t!20935 List!14612)) )
))
(declare-fun arrayNoDuplicates!0 (array!43039 (_ BitVec 32) List!14612) Bool)

(assert (=> b!793028 (= res!537717 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14609))))

(declare-fun b!793029 () Bool)

(declare-fun res!537718 () Bool)

(assert (=> b!793029 (=> (not res!537718) (not e!440600))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43039 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793029 (= res!537718 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793030 () Bool)

(declare-fun res!537716 () Bool)

(assert (=> b!793030 (=> (not res!537716) (not e!440600))))

(assert (=> b!793030 (= res!537716 (validKeyInArray!0 k0!2044))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun b!793031 () Bool)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793031 (= e!440601 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21017 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20596 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21017 a!3170)) (= (select (arr!20596 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun res!537721 () Bool)

(assert (=> start!68298 (=> (not res!537721) (not e!440600))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68298 (= res!537721 (validMask!0 mask!3266))))

(assert (=> start!68298 e!440600))

(assert (=> start!68298 true))

(declare-fun array_inv!16370 (array!43039) Bool)

(assert (=> start!68298 (array_inv!16370 a!3170)))

(declare-fun b!793032 () Bool)

(assert (=> b!793032 (= e!440600 e!440601)))

(declare-fun res!537714 () Bool)

(assert (=> b!793032 (=> (not res!537714) (not e!440601))))

(declare-datatypes ((SeekEntryResult!8194 0))(
  ( (MissingZero!8194 (index!35143 (_ BitVec 32))) (Found!8194 (index!35144 (_ BitVec 32))) (Intermediate!8194 (undefined!9006 Bool) (index!35145 (_ BitVec 32)) (x!66113 (_ BitVec 32))) (Undefined!8194) (MissingVacant!8194 (index!35146 (_ BitVec 32))) )
))
(declare-fun lt!353608 () SeekEntryResult!8194)

(assert (=> b!793032 (= res!537714 (or (= lt!353608 (MissingZero!8194 i!1163)) (= lt!353608 (MissingVacant!8194 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43039 (_ BitVec 32)) SeekEntryResult!8194)

(assert (=> b!793032 (= lt!353608 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(assert (= (and start!68298 res!537721) b!793027))

(assert (= (and b!793027 res!537719) b!793026))

(assert (= (and b!793026 res!537715) b!793030))

(assert (= (and b!793030 res!537716) b!793029))

(assert (= (and b!793029 res!537718) b!793032))

(assert (= (and b!793032 res!537714) b!793025))

(assert (= (and b!793025 res!537720) b!793028))

(assert (= (and b!793028 res!537717) b!793031))

(declare-fun m!733601 () Bool)

(assert (=> b!793031 m!733601))

(declare-fun m!733603 () Bool)

(assert (=> b!793031 m!733603))

(declare-fun m!733605 () Bool)

(assert (=> b!793029 m!733605))

(declare-fun m!733607 () Bool)

(assert (=> b!793030 m!733607))

(declare-fun m!733609 () Bool)

(assert (=> b!793026 m!733609))

(assert (=> b!793026 m!733609))

(declare-fun m!733611 () Bool)

(assert (=> b!793026 m!733611))

(declare-fun m!733613 () Bool)

(assert (=> start!68298 m!733613))

(declare-fun m!733615 () Bool)

(assert (=> start!68298 m!733615))

(declare-fun m!733617 () Bool)

(assert (=> b!793032 m!733617))

(declare-fun m!733619 () Bool)

(assert (=> b!793028 m!733619))

(declare-fun m!733621 () Bool)

(assert (=> b!793025 m!733621))

(check-sat (not b!793028) (not start!68298) (not b!793029) (not b!793026) (not b!793030) (not b!793025) (not b!793032))
(check-sat)
