; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68820 () Bool)

(assert start!68820)

(declare-fun b!801716 () Bool)

(declare-fun e!444391 () Bool)

(declare-fun e!444394 () Bool)

(assert (=> b!801716 (= e!444391 e!444394)))

(declare-fun res!546412 () Bool)

(assert (=> b!801716 (=> (not res!546412) (not e!444394))))

(declare-datatypes ((SeekEntryResult!8455 0))(
  ( (MissingZero!8455 (index!36187 (_ BitVec 32))) (Found!8455 (index!36188 (_ BitVec 32))) (Intermediate!8455 (undefined!9267 Bool) (index!36189 (_ BitVec 32)) (x!67070 (_ BitVec 32))) (Undefined!8455) (MissingVacant!8455 (index!36190 (_ BitVec 32))) )
))
(declare-fun lt!358450 () SeekEntryResult!8455)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!801716 (= res!546412 (or (= lt!358450 (MissingZero!8455 i!1163)) (= lt!358450 (MissingVacant!8455 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-datatypes ((array!43561 0))(
  ( (array!43562 (arr!20857 (Array (_ BitVec 32) (_ BitVec 64))) (size!21278 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43561)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43561 (_ BitVec 32)) SeekEntryResult!8455)

(assert (=> b!801716 (= lt!358450 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!801717 () Bool)

(declare-fun res!546413 () Bool)

(assert (=> b!801717 (=> (not res!546413) (not e!444394))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43561 (_ BitVec 32)) Bool)

(assert (=> b!801717 (= res!546413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801718 () Bool)

(declare-fun res!546411 () Bool)

(assert (=> b!801718 (=> (not res!546411) (not e!444391))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801718 (= res!546411 (validKeyInArray!0 (select (arr!20857 a!3170) j!153)))))

(declare-fun b!801719 () Bool)

(declare-fun res!546406 () Bool)

(assert (=> b!801719 (=> (not res!546406) (not e!444391))))

(assert (=> b!801719 (= res!546406 (validKeyInArray!0 k0!2044))))

(declare-fun b!801720 () Bool)

(declare-fun e!444392 () Bool)

(assert (=> b!801720 (= e!444394 e!444392)))

(declare-fun res!546405 () Bool)

(assert (=> b!801720 (=> (not res!546405) (not e!444392))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!358448 () (_ BitVec 64))

(declare-fun lt!358447 () array!43561)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43561 (_ BitVec 32)) SeekEntryResult!8455)

(assert (=> b!801720 (= res!546405 (= (seekEntryOrOpen!0 lt!358448 lt!358447 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358448 lt!358447 mask!3266)))))

(assert (=> b!801720 (= lt!358448 (select (store (arr!20857 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!801720 (= lt!358447 (array!43562 (store (arr!20857 a!3170) i!1163 k0!2044) (size!21278 a!3170)))))

(declare-fun b!801721 () Bool)

(declare-fun res!546407 () Bool)

(assert (=> b!801721 (=> (not res!546407) (not e!444391))))

(declare-fun arrayContainsKey!0 (array!43561 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801721 (= res!546407 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun res!546409 () Bool)

(assert (=> start!68820 (=> (not res!546409) (not e!444391))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68820 (= res!546409 (validMask!0 mask!3266))))

(assert (=> start!68820 e!444391))

(assert (=> start!68820 true))

(declare-fun array_inv!16631 (array!43561) Bool)

(assert (=> start!68820 (array_inv!16631 a!3170)))

(declare-fun b!801722 () Bool)

(declare-fun res!546408 () Bool)

(assert (=> b!801722 (=> (not res!546408) (not e!444394))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!801722 (= res!546408 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21278 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20857 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21278 a!3170)) (= (select (arr!20857 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801723 () Bool)

(declare-fun e!444390 () Bool)

(assert (=> b!801723 (= e!444390 (not true))))

(declare-fun lt!358444 () (_ BitVec 32))

(assert (=> b!801723 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358444 vacantAfter!23 lt!358448 lt!358447 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358444 vacantBefore!23 (select (arr!20857 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27452 0))(
  ( (Unit!27453) )
))
(declare-fun lt!358445 () Unit!27452)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43561 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27452)

(assert (=> b!801723 (= lt!358445 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!358444 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801723 (= lt!358444 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801724 () Bool)

(declare-fun res!546414 () Bool)

(assert (=> b!801724 (=> (not res!546414) (not e!444394))))

(declare-datatypes ((List!14873 0))(
  ( (Nil!14870) (Cons!14869 (h!15998 (_ BitVec 64)) (t!21196 List!14873)) )
))
(declare-fun arrayNoDuplicates!0 (array!43561 (_ BitVec 32) List!14873) Bool)

(assert (=> b!801724 (= res!546414 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14870))))

(declare-fun b!801725 () Bool)

(declare-fun res!546410 () Bool)

(assert (=> b!801725 (=> (not res!546410) (not e!444391))))

(assert (=> b!801725 (= res!546410 (and (= (size!21278 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21278 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21278 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801726 () Bool)

(assert (=> b!801726 (= e!444392 e!444390)))

(declare-fun res!546415 () Bool)

(assert (=> b!801726 (=> (not res!546415) (not e!444390))))

(declare-fun lt!358446 () SeekEntryResult!8455)

(declare-fun lt!358449 () SeekEntryResult!8455)

(assert (=> b!801726 (= res!546415 (and (= lt!358449 lt!358446) (= lt!358446 (Found!8455 j!153)) (not (= (select (arr!20857 a!3170) index!1236) (select (arr!20857 a!3170) j!153)))))))

(assert (=> b!801726 (= lt!358446 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20857 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801726 (= lt!358449 (seekEntryOrOpen!0 (select (arr!20857 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68820 res!546409) b!801725))

(assert (= (and b!801725 res!546410) b!801718))

(assert (= (and b!801718 res!546411) b!801719))

(assert (= (and b!801719 res!546406) b!801721))

(assert (= (and b!801721 res!546407) b!801716))

(assert (= (and b!801716 res!546412) b!801717))

(assert (= (and b!801717 res!546413) b!801724))

(assert (= (and b!801724 res!546414) b!801722))

(assert (= (and b!801722 res!546408) b!801720))

(assert (= (and b!801720 res!546405) b!801726))

(assert (= (and b!801726 res!546415) b!801723))

(declare-fun m!743073 () Bool)

(assert (=> b!801726 m!743073))

(declare-fun m!743075 () Bool)

(assert (=> b!801726 m!743075))

(assert (=> b!801726 m!743075))

(declare-fun m!743077 () Bool)

(assert (=> b!801726 m!743077))

(assert (=> b!801726 m!743075))

(declare-fun m!743079 () Bool)

(assert (=> b!801726 m!743079))

(declare-fun m!743081 () Bool)

(assert (=> b!801723 m!743081))

(assert (=> b!801723 m!743075))

(declare-fun m!743083 () Bool)

(assert (=> b!801723 m!743083))

(assert (=> b!801723 m!743075))

(declare-fun m!743085 () Bool)

(assert (=> b!801723 m!743085))

(declare-fun m!743087 () Bool)

(assert (=> b!801723 m!743087))

(assert (=> b!801718 m!743075))

(assert (=> b!801718 m!743075))

(declare-fun m!743089 () Bool)

(assert (=> b!801718 m!743089))

(declare-fun m!743091 () Bool)

(assert (=> b!801724 m!743091))

(declare-fun m!743093 () Bool)

(assert (=> b!801716 m!743093))

(declare-fun m!743095 () Bool)

(assert (=> b!801722 m!743095))

(declare-fun m!743097 () Bool)

(assert (=> b!801722 m!743097))

(declare-fun m!743099 () Bool)

(assert (=> b!801720 m!743099))

(declare-fun m!743101 () Bool)

(assert (=> b!801720 m!743101))

(declare-fun m!743103 () Bool)

(assert (=> b!801720 m!743103))

(declare-fun m!743105 () Bool)

(assert (=> b!801720 m!743105))

(declare-fun m!743107 () Bool)

(assert (=> b!801719 m!743107))

(declare-fun m!743109 () Bool)

(assert (=> b!801717 m!743109))

(declare-fun m!743111 () Bool)

(assert (=> b!801721 m!743111))

(declare-fun m!743113 () Bool)

(assert (=> start!68820 m!743113))

(declare-fun m!743115 () Bool)

(assert (=> start!68820 m!743115))

(check-sat (not start!68820) (not b!801726) (not b!801719) (not b!801720) (not b!801718) (not b!801724) (not b!801723) (not b!801721) (not b!801716) (not b!801717))
(check-sat)
