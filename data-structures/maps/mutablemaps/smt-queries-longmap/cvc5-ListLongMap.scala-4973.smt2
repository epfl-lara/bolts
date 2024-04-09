; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68368 () Bool)

(assert start!68368)

(declare-fun b!793950 () Bool)

(declare-fun res!538648 () Bool)

(declare-fun e!440935 () Bool)

(assert (=> b!793950 (=> (not res!538648) (not e!440935))))

(declare-datatypes ((array!43109 0))(
  ( (array!43110 (arr!20631 (Array (_ BitVec 32) (_ BitVec 64))) (size!21052 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43109)

(declare-datatypes ((List!14647 0))(
  ( (Nil!14644) (Cons!14643 (h!15772 (_ BitVec 64)) (t!20970 List!14647)) )
))
(declare-fun arrayNoDuplicates!0 (array!43109 (_ BitVec 32) List!14647) Bool)

(assert (=> b!793950 (= res!538648 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14644))))

(declare-fun b!793951 () Bool)

(declare-fun res!538645 () Bool)

(assert (=> b!793951 (=> (not res!538645) (not e!440935))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793951 (= res!538645 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21052 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20631 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21052 a!3170)) (= (select (arr!20631 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793952 () Bool)

(declare-fun e!440936 () Bool)

(assert (=> b!793952 (= e!440936 e!440935)))

(declare-fun res!538644 () Bool)

(assert (=> b!793952 (=> (not res!538644) (not e!440935))))

(declare-datatypes ((SeekEntryResult!8229 0))(
  ( (MissingZero!8229 (index!35283 (_ BitVec 32))) (Found!8229 (index!35284 (_ BitVec 32))) (Intermediate!8229 (undefined!9041 Bool) (index!35285 (_ BitVec 32)) (x!66244 (_ BitVec 32))) (Undefined!8229) (MissingVacant!8229 (index!35286 (_ BitVec 32))) )
))
(declare-fun lt!353944 () SeekEntryResult!8229)

(assert (=> b!793952 (= res!538644 (or (= lt!353944 (MissingZero!8229 i!1163)) (= lt!353944 (MissingVacant!8229 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43109 (_ BitVec 32)) SeekEntryResult!8229)

(assert (=> b!793952 (= lt!353944 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793953 () Bool)

(declare-fun e!440938 () Bool)

(assert (=> b!793953 (= e!440935 e!440938)))

(declare-fun res!538643 () Bool)

(assert (=> b!793953 (=> (not res!538643) (not e!440938))))

(declare-fun lt!353943 () (_ BitVec 64))

(declare-fun lt!353942 () array!43109)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43109 (_ BitVec 32)) SeekEntryResult!8229)

(assert (=> b!793953 (= res!538643 (= (seekEntryOrOpen!0 lt!353943 lt!353942 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353943 lt!353942 mask!3266)))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793953 (= lt!353943 (select (store (arr!20631 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!793953 (= lt!353942 (array!43110 (store (arr!20631 a!3170) i!1163 k!2044) (size!21052 a!3170)))))

(declare-fun res!538640 () Bool)

(assert (=> start!68368 (=> (not res!538640) (not e!440936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68368 (= res!538640 (validMask!0 mask!3266))))

(assert (=> start!68368 e!440936))

(assert (=> start!68368 true))

(declare-fun array_inv!16405 (array!43109) Bool)

(assert (=> start!68368 (array_inv!16405 a!3170)))

(declare-fun b!793954 () Bool)

(declare-fun res!538639 () Bool)

(assert (=> b!793954 (=> (not res!538639) (not e!440936))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793954 (= res!538639 (validKeyInArray!0 k!2044))))

(declare-fun b!793955 () Bool)

(assert (=> b!793955 (= e!440938 (and (bvsge mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun b!793956 () Bool)

(declare-fun res!538646 () Bool)

(assert (=> b!793956 (=> (not res!538646) (not e!440936))))

(assert (=> b!793956 (= res!538646 (validKeyInArray!0 (select (arr!20631 a!3170) j!153)))))

(declare-fun b!793957 () Bool)

(declare-fun res!538647 () Bool)

(assert (=> b!793957 (=> (not res!538647) (not e!440936))))

(assert (=> b!793957 (= res!538647 (and (= (size!21052 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21052 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21052 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793958 () Bool)

(declare-fun res!538642 () Bool)

(assert (=> b!793958 (=> (not res!538642) (not e!440935))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43109 (_ BitVec 32)) Bool)

(assert (=> b!793958 (= res!538642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793959 () Bool)

(declare-fun res!538641 () Bool)

(assert (=> b!793959 (=> (not res!538641) (not e!440936))))

(declare-fun arrayContainsKey!0 (array!43109 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793959 (= res!538641 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68368 res!538640) b!793957))

(assert (= (and b!793957 res!538647) b!793956))

(assert (= (and b!793956 res!538646) b!793954))

(assert (= (and b!793954 res!538639) b!793959))

(assert (= (and b!793959 res!538641) b!793952))

(assert (= (and b!793952 res!538644) b!793958))

(assert (= (and b!793958 res!538642) b!793950))

(assert (= (and b!793950 res!538648) b!793951))

(assert (= (and b!793951 res!538645) b!793953))

(assert (= (and b!793953 res!538643) b!793955))

(declare-fun m!734563 () Bool)

(assert (=> b!793951 m!734563))

(declare-fun m!734565 () Bool)

(assert (=> b!793951 m!734565))

(declare-fun m!734567 () Bool)

(assert (=> b!793958 m!734567))

(declare-fun m!734569 () Bool)

(assert (=> b!793956 m!734569))

(assert (=> b!793956 m!734569))

(declare-fun m!734571 () Bool)

(assert (=> b!793956 m!734571))

(declare-fun m!734573 () Bool)

(assert (=> b!793950 m!734573))

(declare-fun m!734575 () Bool)

(assert (=> b!793953 m!734575))

(declare-fun m!734577 () Bool)

(assert (=> b!793953 m!734577))

(declare-fun m!734579 () Bool)

(assert (=> b!793953 m!734579))

(declare-fun m!734581 () Bool)

(assert (=> b!793953 m!734581))

(declare-fun m!734583 () Bool)

(assert (=> start!68368 m!734583))

(declare-fun m!734585 () Bool)

(assert (=> start!68368 m!734585))

(declare-fun m!734587 () Bool)

(assert (=> b!793952 m!734587))

(declare-fun m!734589 () Bool)

(assert (=> b!793959 m!734589))

(declare-fun m!734591 () Bool)

(assert (=> b!793954 m!734591))

(push 1)

(assert (not b!793958))

(assert (not b!793956))

(assert (not b!793953))

(assert (not b!793959))

(assert (not b!793952))

(assert (not b!793954))

(assert (not start!68368))

(assert (not b!793950))

(check-sat)

(pop 1)

(push 1)

(check-sat)

