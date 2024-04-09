; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68330 () Bool)

(assert start!68330)

(declare-fun res!538109 () Bool)

(declare-fun e!440746 () Bool)

(assert (=> start!68330 (=> (not res!538109) (not e!440746))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68330 (= res!538109 (validMask!0 mask!3266))))

(assert (=> start!68330 e!440746))

(assert (=> start!68330 true))

(declare-datatypes ((array!43071 0))(
  ( (array!43072 (arr!20612 (Array (_ BitVec 32) (_ BitVec 64))) (size!21033 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43071)

(declare-fun array_inv!16386 (array!43071) Bool)

(assert (=> start!68330 (array_inv!16386 a!3170)))

(declare-fun b!793417 () Bool)

(declare-fun res!538112 () Bool)

(declare-fun e!440745 () Bool)

(assert (=> b!793417 (=> (not res!538112) (not e!440745))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793417 (= res!538112 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21033 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20612 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21033 a!3170)) (= (select (arr!20612 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793418 () Bool)

(assert (=> b!793418 (= e!440745 false)))

(declare-fun lt!353701 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8210 0))(
  ( (MissingZero!8210 (index!35207 (_ BitVec 32))) (Found!8210 (index!35208 (_ BitVec 32))) (Intermediate!8210 (undefined!9022 Bool) (index!35209 (_ BitVec 32)) (x!66169 (_ BitVec 32))) (Undefined!8210) (MissingVacant!8210 (index!35210 (_ BitVec 32))) )
))
(declare-fun lt!353699 () SeekEntryResult!8210)

(declare-fun lt!353700 () array!43071)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43071 (_ BitVec 32)) SeekEntryResult!8210)

(assert (=> b!793418 (= lt!353699 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353701 lt!353700 mask!3266))))

(declare-fun lt!353697 () SeekEntryResult!8210)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43071 (_ BitVec 32)) SeekEntryResult!8210)

(assert (=> b!793418 (= lt!353697 (seekEntryOrOpen!0 lt!353701 lt!353700 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793418 (= lt!353701 (select (store (arr!20612 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!793418 (= lt!353700 (array!43072 (store (arr!20612 a!3170) i!1163 k!2044) (size!21033 a!3170)))))

(declare-fun b!793419 () Bool)

(declare-fun res!538106 () Bool)

(assert (=> b!793419 (=> (not res!538106) (not e!440746))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793419 (= res!538106 (validKeyInArray!0 (select (arr!20612 a!3170) j!153)))))

(declare-fun b!793420 () Bool)

(declare-fun res!538108 () Bool)

(assert (=> b!793420 (=> (not res!538108) (not e!440746))))

(declare-fun arrayContainsKey!0 (array!43071 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793420 (= res!538108 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793421 () Bool)

(declare-fun res!538113 () Bool)

(assert (=> b!793421 (=> (not res!538113) (not e!440746))))

(assert (=> b!793421 (= res!538113 (validKeyInArray!0 k!2044))))

(declare-fun b!793422 () Bool)

(declare-fun res!538107 () Bool)

(assert (=> b!793422 (=> (not res!538107) (not e!440745))))

(declare-datatypes ((List!14628 0))(
  ( (Nil!14625) (Cons!14624 (h!15753 (_ BitVec 64)) (t!20951 List!14628)) )
))
(declare-fun arrayNoDuplicates!0 (array!43071 (_ BitVec 32) List!14628) Bool)

(assert (=> b!793422 (= res!538107 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14625))))

(declare-fun b!793423 () Bool)

(declare-fun res!538114 () Bool)

(assert (=> b!793423 (=> (not res!538114) (not e!440745))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43071 (_ BitVec 32)) Bool)

(assert (=> b!793423 (= res!538114 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793424 () Bool)

(assert (=> b!793424 (= e!440746 e!440745)))

(declare-fun res!538110 () Bool)

(assert (=> b!793424 (=> (not res!538110) (not e!440745))))

(declare-fun lt!353698 () SeekEntryResult!8210)

(assert (=> b!793424 (= res!538110 (or (= lt!353698 (MissingZero!8210 i!1163)) (= lt!353698 (MissingVacant!8210 i!1163))))))

(assert (=> b!793424 (= lt!353698 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793425 () Bool)

(declare-fun res!538111 () Bool)

(assert (=> b!793425 (=> (not res!538111) (not e!440746))))

(assert (=> b!793425 (= res!538111 (and (= (size!21033 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21033 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21033 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68330 res!538109) b!793425))

(assert (= (and b!793425 res!538111) b!793419))

(assert (= (and b!793419 res!538106) b!793421))

(assert (= (and b!793421 res!538113) b!793420))

(assert (= (and b!793420 res!538108) b!793424))

(assert (= (and b!793424 res!538110) b!793423))

(assert (= (and b!793423 res!538114) b!793422))

(assert (= (and b!793422 res!538107) b!793417))

(assert (= (and b!793417 res!538112) b!793418))

(declare-fun m!733993 () Bool)

(assert (=> b!793420 m!733993))

(declare-fun m!733995 () Bool)

(assert (=> b!793418 m!733995))

(declare-fun m!733997 () Bool)

(assert (=> b!793418 m!733997))

(declare-fun m!733999 () Bool)

(assert (=> b!793418 m!733999))

(declare-fun m!734001 () Bool)

(assert (=> b!793418 m!734001))

(declare-fun m!734003 () Bool)

(assert (=> b!793417 m!734003))

(declare-fun m!734005 () Bool)

(assert (=> b!793417 m!734005))

(declare-fun m!734007 () Bool)

(assert (=> b!793422 m!734007))

(declare-fun m!734009 () Bool)

(assert (=> b!793421 m!734009))

(declare-fun m!734011 () Bool)

(assert (=> start!68330 m!734011))

(declare-fun m!734013 () Bool)

(assert (=> start!68330 m!734013))

(declare-fun m!734015 () Bool)

(assert (=> b!793419 m!734015))

(assert (=> b!793419 m!734015))

(declare-fun m!734017 () Bool)

(assert (=> b!793419 m!734017))

(declare-fun m!734019 () Bool)

(assert (=> b!793423 m!734019))

(declare-fun m!734021 () Bool)

(assert (=> b!793424 m!734021))

(push 1)

(assert (not b!793421))

(assert (not b!793423))

