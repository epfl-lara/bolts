; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68364 () Bool)

(assert start!68364)

(declare-fun res!538586 () Bool)

(declare-fun e!440916 () Bool)

(assert (=> start!68364 (=> (not res!538586) (not e!440916))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68364 (= res!538586 (validMask!0 mask!3266))))

(assert (=> start!68364 e!440916))

(assert (=> start!68364 true))

(declare-datatypes ((array!43105 0))(
  ( (array!43106 (arr!20629 (Array (_ BitVec 32) (_ BitVec 64))) (size!21050 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43105)

(declare-fun array_inv!16403 (array!43105) Bool)

(assert (=> start!68364 (array_inv!16403 a!3170)))

(declare-fun b!793894 () Bool)

(declare-fun res!538585 () Bool)

(assert (=> b!793894 (=> (not res!538585) (not e!440916))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793894 (= res!538585 (and (= (size!21050 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21050 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21050 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793895 () Bool)

(declare-fun e!440917 () Bool)

(assert (=> b!793895 (= e!440916 e!440917)))

(declare-fun res!538588 () Bool)

(assert (=> b!793895 (=> (not res!538588) (not e!440917))))

(declare-datatypes ((SeekEntryResult!8227 0))(
  ( (MissingZero!8227 (index!35275 (_ BitVec 32))) (Found!8227 (index!35276 (_ BitVec 32))) (Intermediate!8227 (undefined!9039 Bool) (index!35277 (_ BitVec 32)) (x!66234 (_ BitVec 32))) (Undefined!8227) (MissingVacant!8227 (index!35278 (_ BitVec 32))) )
))
(declare-fun lt!353916 () SeekEntryResult!8227)

(assert (=> b!793895 (= res!538588 (or (= lt!353916 (MissingZero!8227 i!1163)) (= lt!353916 (MissingVacant!8227 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43105 (_ BitVec 32)) SeekEntryResult!8227)

(assert (=> b!793895 (= lt!353916 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!793896 () Bool)

(declare-fun res!538590 () Bool)

(assert (=> b!793896 (=> (not res!538590) (not e!440917))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793896 (= res!538590 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21050 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20629 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21050 a!3170)) (= (select (arr!20629 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793897 () Bool)

(declare-fun res!538587 () Bool)

(assert (=> b!793897 (=> (not res!538587) (not e!440917))))

(declare-datatypes ((List!14645 0))(
  ( (Nil!14642) (Cons!14641 (h!15770 (_ BitVec 64)) (t!20968 List!14645)) )
))
(declare-fun arrayNoDuplicates!0 (array!43105 (_ BitVec 32) List!14645) Bool)

(assert (=> b!793897 (= res!538587 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14642))))

(declare-fun b!793898 () Bool)

(declare-fun res!538583 () Bool)

(assert (=> b!793898 (=> (not res!538583) (not e!440917))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43105 (_ BitVec 32)) Bool)

(assert (=> b!793898 (= res!538583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793899 () Bool)

(declare-fun res!538591 () Bool)

(assert (=> b!793899 (=> (not res!538591) (not e!440916))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793899 (= res!538591 (validKeyInArray!0 (select (arr!20629 a!3170) j!153)))))

(declare-fun b!793900 () Bool)

(assert (=> b!793900 (= e!440917 false)))

(declare-fun lt!353919 () (_ BitVec 64))

(declare-fun lt!353920 () SeekEntryResult!8227)

(declare-fun lt!353917 () array!43105)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43105 (_ BitVec 32)) SeekEntryResult!8227)

(assert (=> b!793900 (= lt!353920 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353919 lt!353917 mask!3266))))

(declare-fun lt!353918 () SeekEntryResult!8227)

(assert (=> b!793900 (= lt!353918 (seekEntryOrOpen!0 lt!353919 lt!353917 mask!3266))))

(assert (=> b!793900 (= lt!353919 (select (store (arr!20629 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!793900 (= lt!353917 (array!43106 (store (arr!20629 a!3170) i!1163 k0!2044) (size!21050 a!3170)))))

(declare-fun b!793901 () Bool)

(declare-fun res!538589 () Bool)

(assert (=> b!793901 (=> (not res!538589) (not e!440916))))

(declare-fun arrayContainsKey!0 (array!43105 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793901 (= res!538589 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793902 () Bool)

(declare-fun res!538584 () Bool)

(assert (=> b!793902 (=> (not res!538584) (not e!440916))))

(assert (=> b!793902 (= res!538584 (validKeyInArray!0 k0!2044))))

(assert (= (and start!68364 res!538586) b!793894))

(assert (= (and b!793894 res!538585) b!793899))

(assert (= (and b!793899 res!538591) b!793902))

(assert (= (and b!793902 res!538584) b!793901))

(assert (= (and b!793901 res!538589) b!793895))

(assert (= (and b!793895 res!538588) b!793898))

(assert (= (and b!793898 res!538583) b!793897))

(assert (= (and b!793897 res!538587) b!793896))

(assert (= (and b!793896 res!538590) b!793900))

(declare-fun m!734503 () Bool)

(assert (=> b!793896 m!734503))

(declare-fun m!734505 () Bool)

(assert (=> b!793896 m!734505))

(declare-fun m!734507 () Bool)

(assert (=> b!793900 m!734507))

(declare-fun m!734509 () Bool)

(assert (=> b!793900 m!734509))

(declare-fun m!734511 () Bool)

(assert (=> b!793900 m!734511))

(declare-fun m!734513 () Bool)

(assert (=> b!793900 m!734513))

(declare-fun m!734515 () Bool)

(assert (=> b!793901 m!734515))

(declare-fun m!734517 () Bool)

(assert (=> b!793902 m!734517))

(declare-fun m!734519 () Bool)

(assert (=> b!793897 m!734519))

(declare-fun m!734521 () Bool)

(assert (=> b!793899 m!734521))

(assert (=> b!793899 m!734521))

(declare-fun m!734523 () Bool)

(assert (=> b!793899 m!734523))

(declare-fun m!734525 () Bool)

(assert (=> b!793898 m!734525))

(declare-fun m!734527 () Bool)

(assert (=> start!68364 m!734527))

(declare-fun m!734529 () Bool)

(assert (=> start!68364 m!734529))

(declare-fun m!734531 () Bool)

(assert (=> b!793895 m!734531))

(check-sat (not b!793899) (not b!793901) (not b!793897) (not b!793900) (not start!68364) (not b!793895) (not b!793902) (not b!793898))
(check-sat)
