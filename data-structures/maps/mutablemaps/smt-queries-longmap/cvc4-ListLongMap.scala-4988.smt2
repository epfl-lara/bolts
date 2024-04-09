; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68462 () Bool)

(assert start!68462)

(declare-fun b!795360 () Bool)

(declare-fun res!540053 () Bool)

(declare-fun e!441472 () Bool)

(assert (=> b!795360 (=> (not res!540053) (not e!441472))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795360 (= res!540053 (validKeyInArray!0 k!2044))))

(declare-fun b!795361 () Bool)

(declare-fun e!441473 () Bool)

(declare-fun e!441474 () Bool)

(assert (=> b!795361 (= e!441473 e!441474)))

(declare-fun res!540051 () Bool)

(assert (=> b!795361 (=> (not res!540051) (not e!441474))))

(declare-fun lt!354564 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43203 0))(
  ( (array!43204 (arr!20678 (Array (_ BitVec 32) (_ BitVec 64))) (size!21099 (_ BitVec 32))) )
))
(declare-fun lt!354561 () array!43203)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8276 0))(
  ( (MissingZero!8276 (index!35471 (_ BitVec 32))) (Found!8276 (index!35472 (_ BitVec 32))) (Intermediate!8276 (undefined!9088 Bool) (index!35473 (_ BitVec 32)) (x!66411 (_ BitVec 32))) (Undefined!8276) (MissingVacant!8276 (index!35474 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43203 (_ BitVec 32)) SeekEntryResult!8276)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43203 (_ BitVec 32)) SeekEntryResult!8276)

(assert (=> b!795361 (= res!540051 (= (seekEntryOrOpen!0 lt!354564 lt!354561 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354564 lt!354561 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43203)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!795361 (= lt!354564 (select (store (arr!20678 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795361 (= lt!354561 (array!43204 (store (arr!20678 a!3170) i!1163 k!2044) (size!21099 a!3170)))))

(declare-fun b!795362 () Bool)

(declare-fun res!540049 () Bool)

(assert (=> b!795362 (=> (not res!540049) (not e!441472))))

(assert (=> b!795362 (= res!540049 (validKeyInArray!0 (select (arr!20678 a!3170) j!153)))))

(declare-fun b!795363 () Bool)

(assert (=> b!795363 (= e!441474 false)))

(declare-fun lt!354562 () SeekEntryResult!8276)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!795363 (= lt!354562 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20678 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354565 () SeekEntryResult!8276)

(assert (=> b!795363 (= lt!354565 (seekEntryOrOpen!0 (select (arr!20678 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!540050 () Bool)

(assert (=> start!68462 (=> (not res!540050) (not e!441472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68462 (= res!540050 (validMask!0 mask!3266))))

(assert (=> start!68462 e!441472))

(assert (=> start!68462 true))

(declare-fun array_inv!16452 (array!43203) Bool)

(assert (=> start!68462 (array_inv!16452 a!3170)))

(declare-fun b!795364 () Bool)

(declare-fun res!540052 () Bool)

(assert (=> b!795364 (=> (not res!540052) (not e!441473))))

(declare-datatypes ((List!14694 0))(
  ( (Nil!14691) (Cons!14690 (h!15819 (_ BitVec 64)) (t!21017 List!14694)) )
))
(declare-fun arrayNoDuplicates!0 (array!43203 (_ BitVec 32) List!14694) Bool)

(assert (=> b!795364 (= res!540052 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14691))))

(declare-fun b!795365 () Bool)

(declare-fun res!540055 () Bool)

(assert (=> b!795365 (=> (not res!540055) (not e!441473))))

(assert (=> b!795365 (= res!540055 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21099 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20678 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21099 a!3170)) (= (select (arr!20678 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795366 () Bool)

(declare-fun res!540056 () Bool)

(assert (=> b!795366 (=> (not res!540056) (not e!441472))))

(assert (=> b!795366 (= res!540056 (and (= (size!21099 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21099 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21099 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795367 () Bool)

(declare-fun res!540057 () Bool)

(assert (=> b!795367 (=> (not res!540057) (not e!441473))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43203 (_ BitVec 32)) Bool)

(assert (=> b!795367 (= res!540057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795368 () Bool)

(assert (=> b!795368 (= e!441472 e!441473)))

(declare-fun res!540054 () Bool)

(assert (=> b!795368 (=> (not res!540054) (not e!441473))))

(declare-fun lt!354563 () SeekEntryResult!8276)

(assert (=> b!795368 (= res!540054 (or (= lt!354563 (MissingZero!8276 i!1163)) (= lt!354563 (MissingVacant!8276 i!1163))))))

(assert (=> b!795368 (= lt!354563 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795369 () Bool)

(declare-fun res!540058 () Bool)

(assert (=> b!795369 (=> (not res!540058) (not e!441472))))

(declare-fun arrayContainsKey!0 (array!43203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795369 (= res!540058 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68462 res!540050) b!795366))

(assert (= (and b!795366 res!540056) b!795362))

(assert (= (and b!795362 res!540049) b!795360))

(assert (= (and b!795360 res!540053) b!795369))

(assert (= (and b!795369 res!540058) b!795368))

(assert (= (and b!795368 res!540054) b!795367))

(assert (= (and b!795367 res!540057) b!795364))

(assert (= (and b!795364 res!540052) b!795365))

(assert (= (and b!795365 res!540055) b!795361))

(assert (= (and b!795361 res!540051) b!795363))

(declare-fun m!736107 () Bool)

(assert (=> b!795369 m!736107))

(declare-fun m!736109 () Bool)

(assert (=> b!795368 m!736109))

(declare-fun m!736111 () Bool)

(assert (=> b!795365 m!736111))

(declare-fun m!736113 () Bool)

(assert (=> b!795365 m!736113))

(declare-fun m!736115 () Bool)

(assert (=> b!795363 m!736115))

(assert (=> b!795363 m!736115))

(declare-fun m!736117 () Bool)

(assert (=> b!795363 m!736117))

(assert (=> b!795363 m!736115))

(declare-fun m!736119 () Bool)

(assert (=> b!795363 m!736119))

(declare-fun m!736121 () Bool)

(assert (=> b!795360 m!736121))

(declare-fun m!736123 () Bool)

(assert (=> b!795361 m!736123))

(declare-fun m!736125 () Bool)

(assert (=> b!795361 m!736125))

(declare-fun m!736127 () Bool)

(assert (=> b!795361 m!736127))

(declare-fun m!736129 () Bool)

(assert (=> b!795361 m!736129))

(declare-fun m!736131 () Bool)

(assert (=> b!795364 m!736131))

(assert (=> b!795362 m!736115))

(assert (=> b!795362 m!736115))

(declare-fun m!736133 () Bool)

(assert (=> b!795362 m!736133))

(declare-fun m!736135 () Bool)

(assert (=> start!68462 m!736135))

(declare-fun m!736137 () Bool)

(assert (=> start!68462 m!736137))

(declare-fun m!736139 () Bool)

(assert (=> b!795367 m!736139))

(push 1)

(assert (not b!795367))

(assert (not b!795362))

(assert (not start!68462))

