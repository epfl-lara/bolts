; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68348 () Bool)

(assert start!68348)

(declare-fun b!793669 () Bool)

(declare-fun res!538361 () Bool)

(declare-fun e!440834 () Bool)

(assert (=> b!793669 (=> (not res!538361) (not e!440834))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43089 0))(
  ( (array!43090 (arr!20621 (Array (_ BitVec 32) (_ BitVec 64))) (size!21042 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43089)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793669 (= res!538361 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21042 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20621 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21042 a!3170)) (= (select (arr!20621 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793670 () Bool)

(declare-fun res!538358 () Bool)

(declare-fun e!440836 () Bool)

(assert (=> b!793670 (=> (not res!538358) (not e!440836))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793670 (= res!538358 (validKeyInArray!0 k!2044))))

(declare-fun b!793671 () Bool)

(declare-fun res!538363 () Bool)

(assert (=> b!793671 (=> (not res!538363) (not e!440836))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!793671 (= res!538363 (and (= (size!21042 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21042 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21042 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793673 () Bool)

(declare-fun res!538362 () Bool)

(assert (=> b!793673 (=> (not res!538362) (not e!440834))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43089 (_ BitVec 32)) Bool)

(assert (=> b!793673 (= res!538362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793674 () Bool)

(declare-fun res!538364 () Bool)

(assert (=> b!793674 (=> (not res!538364) (not e!440834))))

(declare-datatypes ((List!14637 0))(
  ( (Nil!14634) (Cons!14633 (h!15762 (_ BitVec 64)) (t!20960 List!14637)) )
))
(declare-fun arrayNoDuplicates!0 (array!43089 (_ BitVec 32) List!14637) Bool)

(assert (=> b!793674 (= res!538364 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14634))))

(declare-fun b!793675 () Bool)

(assert (=> b!793675 (= e!440834 false)))

(declare-fun lt!353818 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8219 0))(
  ( (MissingZero!8219 (index!35243 (_ BitVec 32))) (Found!8219 (index!35244 (_ BitVec 32))) (Intermediate!8219 (undefined!9031 Bool) (index!35245 (_ BitVec 32)) (x!66202 (_ BitVec 32))) (Undefined!8219) (MissingVacant!8219 (index!35246 (_ BitVec 32))) )
))
(declare-fun lt!353816 () SeekEntryResult!8219)

(declare-fun lt!353814 () array!43089)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43089 (_ BitVec 32)) SeekEntryResult!8219)

(assert (=> b!793675 (= lt!353816 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353818 lt!353814 mask!3266))))

(declare-fun lt!353815 () SeekEntryResult!8219)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43089 (_ BitVec 32)) SeekEntryResult!8219)

(assert (=> b!793675 (= lt!353815 (seekEntryOrOpen!0 lt!353818 lt!353814 mask!3266))))

(assert (=> b!793675 (= lt!353818 (select (store (arr!20621 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!793675 (= lt!353814 (array!43090 (store (arr!20621 a!3170) i!1163 k!2044) (size!21042 a!3170)))))

(declare-fun b!793672 () Bool)

(assert (=> b!793672 (= e!440836 e!440834)))

(declare-fun res!538365 () Bool)

(assert (=> b!793672 (=> (not res!538365) (not e!440834))))

(declare-fun lt!353817 () SeekEntryResult!8219)

(assert (=> b!793672 (= res!538365 (or (= lt!353817 (MissingZero!8219 i!1163)) (= lt!353817 (MissingVacant!8219 i!1163))))))

(assert (=> b!793672 (= lt!353817 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!538360 () Bool)

(assert (=> start!68348 (=> (not res!538360) (not e!440836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68348 (= res!538360 (validMask!0 mask!3266))))

(assert (=> start!68348 e!440836))

(assert (=> start!68348 true))

(declare-fun array_inv!16395 (array!43089) Bool)

(assert (=> start!68348 (array_inv!16395 a!3170)))

(declare-fun b!793676 () Bool)

(declare-fun res!538359 () Bool)

(assert (=> b!793676 (=> (not res!538359) (not e!440836))))

(declare-fun arrayContainsKey!0 (array!43089 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793676 (= res!538359 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793677 () Bool)

(declare-fun res!538366 () Bool)

(assert (=> b!793677 (=> (not res!538366) (not e!440836))))

(assert (=> b!793677 (= res!538366 (validKeyInArray!0 (select (arr!20621 a!3170) j!153)))))

(assert (= (and start!68348 res!538360) b!793671))

(assert (= (and b!793671 res!538363) b!793677))

(assert (= (and b!793677 res!538366) b!793670))

(assert (= (and b!793670 res!538358) b!793676))

(assert (= (and b!793676 res!538359) b!793672))

(assert (= (and b!793672 res!538365) b!793673))

(assert (= (and b!793673 res!538362) b!793674))

(assert (= (and b!793674 res!538364) b!793669))

(assert (= (and b!793669 res!538361) b!793675))

(declare-fun m!734263 () Bool)

(assert (=> b!793670 m!734263))

(declare-fun m!734265 () Bool)

(assert (=> b!793676 m!734265))

(declare-fun m!734267 () Bool)

(assert (=> b!793675 m!734267))

(declare-fun m!734269 () Bool)

(assert (=> b!793675 m!734269))

(declare-fun m!734271 () Bool)

(assert (=> b!793675 m!734271))

(declare-fun m!734273 () Bool)

(assert (=> b!793675 m!734273))

(declare-fun m!734275 () Bool)

(assert (=> b!793669 m!734275))

(declare-fun m!734277 () Bool)

(assert (=> b!793669 m!734277))

(declare-fun m!734279 () Bool)

(assert (=> b!793673 m!734279))

(declare-fun m!734281 () Bool)

(assert (=> b!793677 m!734281))

(assert (=> b!793677 m!734281))

(declare-fun m!734283 () Bool)

(assert (=> b!793677 m!734283))

(declare-fun m!734285 () Bool)

(assert (=> b!793672 m!734285))

(declare-fun m!734287 () Bool)

(assert (=> b!793674 m!734287))

(declare-fun m!734289 () Bool)

(assert (=> start!68348 m!734289))

(declare-fun m!734291 () Bool)

(assert (=> start!68348 m!734291))

(push 1)

(assert (not b!793673))

(assert (not b!793670))

(assert (not b!793675))

