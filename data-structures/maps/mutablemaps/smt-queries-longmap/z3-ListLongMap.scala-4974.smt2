; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68376 () Bool)

(assert start!68376)

(declare-fun b!794065 () Bool)

(declare-fun e!440980 () Bool)

(declare-fun e!440978 () Bool)

(assert (=> b!794065 (= e!440980 e!440978)))

(declare-fun res!538761 () Bool)

(assert (=> b!794065 (=> (not res!538761) (not e!440978))))

(declare-datatypes ((SeekEntryResult!8233 0))(
  ( (MissingZero!8233 (index!35299 (_ BitVec 32))) (Found!8233 (index!35300 (_ BitVec 32))) (Intermediate!8233 (undefined!9045 Bool) (index!35301 (_ BitVec 32)) (x!66256 (_ BitVec 32))) (Undefined!8233) (MissingVacant!8233 (index!35302 (_ BitVec 32))) )
))
(declare-fun lt!353991 () SeekEntryResult!8233)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!794065 (= res!538761 (or (= lt!353991 (MissingZero!8233 i!1163)) (= lt!353991 (MissingVacant!8233 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-datatypes ((array!43117 0))(
  ( (array!43118 (arr!20635 (Array (_ BitVec 32) (_ BitVec 64))) (size!21056 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43117)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43117 (_ BitVec 32)) SeekEntryResult!8233)

(assert (=> b!794065 (= lt!353991 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!794066 () Bool)

(declare-fun res!538755 () Bool)

(assert (=> b!794066 (=> (not res!538755) (not e!440978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43117 (_ BitVec 32)) Bool)

(assert (=> b!794066 (= res!538755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794068 () Bool)

(declare-fun res!538756 () Bool)

(assert (=> b!794068 (=> (not res!538756) (not e!440980))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794068 (= res!538756 (validKeyInArray!0 k0!2044))))

(declare-fun b!794069 () Bool)

(declare-fun res!538758 () Bool)

(assert (=> b!794069 (=> (not res!538758) (not e!440978))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!794069 (= res!538758 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21056 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20635 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21056 a!3170)) (= (select (arr!20635 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794070 () Bool)

(declare-fun res!538762 () Bool)

(assert (=> b!794070 (=> (not res!538762) (not e!440980))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794070 (= res!538762 (and (= (size!21056 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21056 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21056 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794071 () Bool)

(declare-fun res!538759 () Bool)

(assert (=> b!794071 (=> (not res!538759) (not e!440980))))

(declare-fun arrayContainsKey!0 (array!43117 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794071 (= res!538759 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun res!538754 () Bool)

(assert (=> start!68376 (=> (not res!538754) (not e!440980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68376 (= res!538754 (validMask!0 mask!3266))))

(assert (=> start!68376 e!440980))

(assert (=> start!68376 true))

(declare-fun array_inv!16409 (array!43117) Bool)

(assert (=> start!68376 (array_inv!16409 a!3170)))

(declare-fun b!794067 () Bool)

(declare-fun res!538760 () Bool)

(assert (=> b!794067 (=> (not res!538760) (not e!440978))))

(declare-datatypes ((List!14651 0))(
  ( (Nil!14648) (Cons!14647 (h!15776 (_ BitVec 64)) (t!20974 List!14651)) )
))
(declare-fun arrayNoDuplicates!0 (array!43117 (_ BitVec 32) List!14651) Bool)

(assert (=> b!794067 (= res!538760 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14648))))

(declare-fun b!794072 () Bool)

(assert (=> b!794072 (= e!440978 false)))

(declare-fun lt!353990 () array!43117)

(declare-fun lt!353988 () (_ BitVec 64))

(declare-fun lt!353992 () SeekEntryResult!8233)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43117 (_ BitVec 32)) SeekEntryResult!8233)

(assert (=> b!794072 (= lt!353992 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353988 lt!353990 mask!3266))))

(declare-fun lt!353989 () SeekEntryResult!8233)

(assert (=> b!794072 (= lt!353989 (seekEntryOrOpen!0 lt!353988 lt!353990 mask!3266))))

(assert (=> b!794072 (= lt!353988 (select (store (arr!20635 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!794072 (= lt!353990 (array!43118 (store (arr!20635 a!3170) i!1163 k0!2044) (size!21056 a!3170)))))

(declare-fun b!794073 () Bool)

(declare-fun res!538757 () Bool)

(assert (=> b!794073 (=> (not res!538757) (not e!440980))))

(assert (=> b!794073 (= res!538757 (validKeyInArray!0 (select (arr!20635 a!3170) j!153)))))

(assert (= (and start!68376 res!538754) b!794070))

(assert (= (and b!794070 res!538762) b!794073))

(assert (= (and b!794073 res!538757) b!794068))

(assert (= (and b!794068 res!538756) b!794071))

(assert (= (and b!794071 res!538759) b!794065))

(assert (= (and b!794065 res!538761) b!794066))

(assert (= (and b!794066 res!538755) b!794067))

(assert (= (and b!794067 res!538760) b!794069))

(assert (= (and b!794069 res!538758) b!794072))

(declare-fun m!734683 () Bool)

(assert (=> b!794065 m!734683))

(declare-fun m!734685 () Bool)

(assert (=> b!794066 m!734685))

(declare-fun m!734687 () Bool)

(assert (=> b!794071 m!734687))

(declare-fun m!734689 () Bool)

(assert (=> b!794072 m!734689))

(declare-fun m!734691 () Bool)

(assert (=> b!794072 m!734691))

(declare-fun m!734693 () Bool)

(assert (=> b!794072 m!734693))

(declare-fun m!734695 () Bool)

(assert (=> b!794072 m!734695))

(declare-fun m!734697 () Bool)

(assert (=> b!794069 m!734697))

(declare-fun m!734699 () Bool)

(assert (=> b!794069 m!734699))

(declare-fun m!734701 () Bool)

(assert (=> b!794067 m!734701))

(declare-fun m!734703 () Bool)

(assert (=> start!68376 m!734703))

(declare-fun m!734705 () Bool)

(assert (=> start!68376 m!734705))

(declare-fun m!734707 () Bool)

(assert (=> b!794068 m!734707))

(declare-fun m!734709 () Bool)

(assert (=> b!794073 m!734709))

(assert (=> b!794073 m!734709))

(declare-fun m!734711 () Bool)

(assert (=> b!794073 m!734711))

(check-sat (not b!794065) (not b!794071) (not b!794067) (not b!794066) (not b!794072) (not start!68376) (not b!794073) (not b!794068))
(check-sat)
