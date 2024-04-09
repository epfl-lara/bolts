; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68338 () Bool)

(assert start!68338)

(declare-fun res!538229 () Bool)

(declare-fun e!440789 () Bool)

(assert (=> start!68338 (=> (not res!538229) (not e!440789))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68338 (= res!538229 (validMask!0 mask!3266))))

(assert (=> start!68338 e!440789))

(assert (=> start!68338 true))

(declare-datatypes ((array!43079 0))(
  ( (array!43080 (arr!20616 (Array (_ BitVec 32) (_ BitVec 64))) (size!21037 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43079)

(declare-fun array_inv!16390 (array!43079) Bool)

(assert (=> start!68338 (array_inv!16390 a!3170)))

(declare-fun b!793534 () Bool)

(declare-fun res!538225 () Bool)

(assert (=> b!793534 (=> (not res!538225) (not e!440789))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793534 (= res!538225 (validKeyInArray!0 k!2044))))

(declare-fun b!793535 () Bool)

(declare-fun res!538230 () Bool)

(assert (=> b!793535 (=> (not res!538230) (not e!440789))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793535 (= res!538230 (and (= (size!21037 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21037 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21037 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793536 () Bool)

(declare-fun res!538227 () Bool)

(declare-fun e!440790 () Bool)

(assert (=> b!793536 (=> (not res!538227) (not e!440790))))

(declare-datatypes ((List!14632 0))(
  ( (Nil!14629) (Cons!14628 (h!15757 (_ BitVec 64)) (t!20955 List!14632)) )
))
(declare-fun arrayNoDuplicates!0 (array!43079 (_ BitVec 32) List!14632) Bool)

(assert (=> b!793536 (= res!538227 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14629))))

(declare-fun b!793537 () Bool)

(assert (=> b!793537 (= e!440789 e!440790)))

(declare-fun res!538224 () Bool)

(assert (=> b!793537 (=> (not res!538224) (not e!440790))))

(declare-datatypes ((SeekEntryResult!8214 0))(
  ( (MissingZero!8214 (index!35223 (_ BitVec 32))) (Found!8214 (index!35224 (_ BitVec 32))) (Intermediate!8214 (undefined!9026 Bool) (index!35225 (_ BitVec 32)) (x!66189 (_ BitVec 32))) (Undefined!8214) (MissingVacant!8214 (index!35226 (_ BitVec 32))) )
))
(declare-fun lt!353743 () SeekEntryResult!8214)

(assert (=> b!793537 (= res!538224 (or (= lt!353743 (MissingZero!8214 i!1163)) (= lt!353743 (MissingVacant!8214 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43079 (_ BitVec 32)) SeekEntryResult!8214)

(assert (=> b!793537 (= lt!353743 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793538 () Bool)

(assert (=> b!793538 (= e!440790 false)))

(declare-fun lt!353742 () array!43079)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!353741 () SeekEntryResult!8214)

(declare-fun lt!353739 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43079 (_ BitVec 32)) SeekEntryResult!8214)

(assert (=> b!793538 (= lt!353741 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353739 lt!353742 mask!3266))))

(declare-fun lt!353740 () SeekEntryResult!8214)

(assert (=> b!793538 (= lt!353740 (seekEntryOrOpen!0 lt!353739 lt!353742 mask!3266))))

(assert (=> b!793538 (= lt!353739 (select (store (arr!20616 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!793538 (= lt!353742 (array!43080 (store (arr!20616 a!3170) i!1163 k!2044) (size!21037 a!3170)))))

(declare-fun b!793539 () Bool)

(declare-fun res!538228 () Bool)

(assert (=> b!793539 (=> (not res!538228) (not e!440790))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!793539 (= res!538228 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21037 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20616 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21037 a!3170)) (= (select (arr!20616 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793540 () Bool)

(declare-fun res!538231 () Bool)

(assert (=> b!793540 (=> (not res!538231) (not e!440789))))

(assert (=> b!793540 (= res!538231 (validKeyInArray!0 (select (arr!20616 a!3170) j!153)))))

(declare-fun b!793541 () Bool)

(declare-fun res!538226 () Bool)

(assert (=> b!793541 (=> (not res!538226) (not e!440790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43079 (_ BitVec 32)) Bool)

(assert (=> b!793541 (= res!538226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793542 () Bool)

(declare-fun res!538223 () Bool)

(assert (=> b!793542 (=> (not res!538223) (not e!440789))))

(declare-fun arrayContainsKey!0 (array!43079 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793542 (= res!538223 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68338 res!538229) b!793535))

(assert (= (and b!793535 res!538230) b!793540))

(assert (= (and b!793540 res!538231) b!793534))

(assert (= (and b!793534 res!538225) b!793542))

(assert (= (and b!793542 res!538223) b!793537))

(assert (= (and b!793537 res!538224) b!793541))

(assert (= (and b!793541 res!538226) b!793536))

(assert (= (and b!793536 res!538227) b!793539))

(assert (= (and b!793539 res!538228) b!793538))

(declare-fun m!734113 () Bool)

(assert (=> b!793538 m!734113))

(declare-fun m!734115 () Bool)

(assert (=> b!793538 m!734115))

(declare-fun m!734117 () Bool)

(assert (=> b!793538 m!734117))

(declare-fun m!734119 () Bool)

(assert (=> b!793538 m!734119))

(declare-fun m!734121 () Bool)

(assert (=> b!793536 m!734121))

(declare-fun m!734123 () Bool)

(assert (=> b!793542 m!734123))

(declare-fun m!734125 () Bool)

(assert (=> b!793541 m!734125))

(declare-fun m!734127 () Bool)

(assert (=> b!793540 m!734127))

(assert (=> b!793540 m!734127))

(declare-fun m!734129 () Bool)

(assert (=> b!793540 m!734129))

(declare-fun m!734131 () Bool)

(assert (=> b!793537 m!734131))

(declare-fun m!734133 () Bool)

(assert (=> b!793534 m!734133))

(declare-fun m!734135 () Bool)

(assert (=> start!68338 m!734135))

(declare-fun m!734137 () Bool)

(assert (=> start!68338 m!734137))

(declare-fun m!734139 () Bool)

(assert (=> b!793539 m!734139))

(declare-fun m!734141 () Bool)

(assert (=> b!793539 m!734141))

(push 1)

