; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68318 () Bool)

(assert start!68318)

(declare-fun b!793256 () Bool)

(declare-fun res!537952 () Bool)

(declare-fun e!440691 () Bool)

(assert (=> b!793256 (=> (not res!537952) (not e!440691))))

(declare-datatypes ((array!43059 0))(
  ( (array!43060 (arr!20606 (Array (_ BitVec 32) (_ BitVec 64))) (size!21027 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43059)

(declare-datatypes ((List!14622 0))(
  ( (Nil!14619) (Cons!14618 (h!15747 (_ BitVec 64)) (t!20945 List!14622)) )
))
(declare-fun arrayNoDuplicates!0 (array!43059 (_ BitVec 32) List!14622) Bool)

(assert (=> b!793256 (= res!537952 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14619))))

(declare-fun res!537946 () Bool)

(declare-fun e!440690 () Bool)

(assert (=> start!68318 (=> (not res!537946) (not e!440690))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68318 (= res!537946 (validMask!0 mask!3266))))

(assert (=> start!68318 e!440690))

(assert (=> start!68318 true))

(declare-fun array_inv!16380 (array!43059) Bool)

(assert (=> start!68318 (array_inv!16380 a!3170)))

(declare-fun b!793257 () Bool)

(declare-fun res!537951 () Bool)

(assert (=> b!793257 (=> (not res!537951) (not e!440690))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793257 (= res!537951 (validKeyInArray!0 (select (arr!20606 a!3170) j!153)))))

(declare-fun b!793258 () Bool)

(assert (=> b!793258 (= e!440690 e!440691)))

(declare-fun res!537950 () Bool)

(assert (=> b!793258 (=> (not res!537950) (not e!440691))))

(declare-datatypes ((SeekEntryResult!8204 0))(
  ( (MissingZero!8204 (index!35183 (_ BitVec 32))) (Found!8204 (index!35184 (_ BitVec 32))) (Intermediate!8204 (undefined!9016 Bool) (index!35185 (_ BitVec 32)) (x!66147 (_ BitVec 32))) (Undefined!8204) (MissingVacant!8204 (index!35186 (_ BitVec 32))) )
))
(declare-fun lt!353647 () SeekEntryResult!8204)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!793258 (= res!537950 (or (= lt!353647 (MissingZero!8204 i!1163)) (= lt!353647 (MissingVacant!8204 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43059 (_ BitVec 32)) SeekEntryResult!8204)

(assert (=> b!793258 (= lt!353647 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793259 () Bool)

(declare-fun res!537949 () Bool)

(assert (=> b!793259 (=> (not res!537949) (not e!440691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43059 (_ BitVec 32)) Bool)

(assert (=> b!793259 (= res!537949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793260 () Bool)

(declare-fun res!537948 () Bool)

(assert (=> b!793260 (=> (not res!537948) (not e!440690))))

(assert (=> b!793260 (= res!537948 (validKeyInArray!0 k!2044))))

(declare-fun b!793261 () Bool)

(declare-fun res!537945 () Bool)

(assert (=> b!793261 (=> (not res!537945) (not e!440690))))

(assert (=> b!793261 (= res!537945 (and (= (size!21027 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21027 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21027 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793262 () Bool)

(declare-fun res!537947 () Bool)

(assert (=> b!793262 (=> (not res!537947) (not e!440690))))

(declare-fun arrayContainsKey!0 (array!43059 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793262 (= res!537947 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun b!793263 () Bool)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793263 (= e!440691 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21027 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20606 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21027 a!3170)) (= (select (arr!20606 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20606 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!68318 res!537946) b!793261))

(assert (= (and b!793261 res!537945) b!793257))

(assert (= (and b!793257 res!537951) b!793260))

(assert (= (and b!793260 res!537948) b!793262))

(assert (= (and b!793262 res!537947) b!793258))

(assert (= (and b!793258 res!537950) b!793259))

(assert (= (and b!793259 res!537949) b!793256))

(assert (= (and b!793256 res!537952) b!793263))

(declare-fun m!733817 () Bool)

(assert (=> b!793257 m!733817))

(assert (=> b!793257 m!733817))

(declare-fun m!733819 () Bool)

(assert (=> b!793257 m!733819))

(declare-fun m!733821 () Bool)

(assert (=> b!793263 m!733821))

(declare-fun m!733823 () Bool)

(assert (=> b!793263 m!733823))

(declare-fun m!733825 () Bool)

(assert (=> b!793263 m!733825))

(declare-fun m!733827 () Bool)

(assert (=> b!793263 m!733827))

(declare-fun m!733829 () Bool)

(assert (=> start!68318 m!733829))

(declare-fun m!733831 () Bool)

(assert (=> start!68318 m!733831))

(declare-fun m!733833 () Bool)

(assert (=> b!793256 m!733833))

(declare-fun m!733835 () Bool)

(assert (=> b!793258 m!733835))

(declare-fun m!733837 () Bool)

(assert (=> b!793260 m!733837))

(declare-fun m!733839 () Bool)

(assert (=> b!793262 m!733839))

(declare-fun m!733841 () Bool)

(assert (=> b!793259 m!733841))

(push 1)

(assert (not b!793260))

(assert (not b!793257))

(assert (not start!68318))

(assert (not b!793262))

(assert (not b!793259))

(assert (not b!793256))

(assert (not b!793258))

(check-sat)

(pop 1)

(push 1)

(check-sat)

