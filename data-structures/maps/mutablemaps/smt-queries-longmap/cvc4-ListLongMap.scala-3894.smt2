; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53396 () Bool)

(assert start!53396)

(declare-fun b!580422 () Bool)

(declare-fun e!333284 () Bool)

(declare-fun e!333286 () Bool)

(assert (=> b!580422 (= e!333284 e!333286)))

(declare-fun res!368396 () Bool)

(assert (=> b!580422 (=> (not res!368396) (not e!333286))))

(declare-datatypes ((SeekEntryResult!5843 0))(
  ( (MissingZero!5843 (index!25599 (_ BitVec 32))) (Found!5843 (index!25600 (_ BitVec 32))) (Intermediate!5843 (undefined!6655 Bool) (index!25601 (_ BitVec 32)) (x!54499 (_ BitVec 32))) (Undefined!5843) (MissingVacant!5843 (index!25602 (_ BitVec 32))) )
))
(declare-fun lt!264706 () SeekEntryResult!5843)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580422 (= res!368396 (or (= lt!264706 (MissingZero!5843 i!1108)) (= lt!264706 (MissingVacant!5843 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36251 0))(
  ( (array!36252 (arr!17396 (Array (_ BitVec 32) (_ BitVec 64))) (size!17760 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36251)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36251 (_ BitVec 32)) SeekEntryResult!5843)

(assert (=> b!580422 (= lt!264706 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580423 () Bool)

(declare-fun res!368393 () Bool)

(assert (=> b!580423 (=> (not res!368393) (not e!333286))))

(declare-datatypes ((List!11490 0))(
  ( (Nil!11487) (Cons!11486 (h!12531 (_ BitVec 64)) (t!17726 List!11490)) )
))
(declare-fun arrayNoDuplicates!0 (array!36251 (_ BitVec 32) List!11490) Bool)

(assert (=> b!580423 (= res!368393 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11487))))

(declare-fun b!580424 () Bool)

(declare-fun res!368394 () Bool)

(assert (=> b!580424 (=> (not res!368394) (not e!333284))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580424 (= res!368394 (validKeyInArray!0 k!1786))))

(declare-fun b!580425 () Bool)

(declare-fun res!368388 () Bool)

(assert (=> b!580425 (=> (not res!368388) (not e!333284))))

(declare-fun arrayContainsKey!0 (array!36251 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580425 (= res!368388 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580426 () Bool)

(declare-fun res!368391 () Bool)

(assert (=> b!580426 (=> (not res!368391) (not e!333286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36251 (_ BitVec 32)) Bool)

(assert (=> b!580426 (= res!368391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580427 () Bool)

(assert (=> b!580427 (= e!333286 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!264707 () SeekEntryResult!5843)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36251 (_ BitVec 32)) SeekEntryResult!5843)

(assert (=> b!580427 (= lt!264707 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17396 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580429 () Bool)

(declare-fun res!368390 () Bool)

(assert (=> b!580429 (=> (not res!368390) (not e!333284))))

(assert (=> b!580429 (= res!368390 (and (= (size!17760 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17760 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17760 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580430 () Bool)

(declare-fun res!368395 () Bool)

(assert (=> b!580430 (=> (not res!368395) (not e!333286))))

(assert (=> b!580430 (= res!368395 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17396 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17396 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580428 () Bool)

(declare-fun res!368389 () Bool)

(assert (=> b!580428 (=> (not res!368389) (not e!333284))))

(assert (=> b!580428 (= res!368389 (validKeyInArray!0 (select (arr!17396 a!2986) j!136)))))

(declare-fun res!368392 () Bool)

(assert (=> start!53396 (=> (not res!368392) (not e!333284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53396 (= res!368392 (validMask!0 mask!3053))))

(assert (=> start!53396 e!333284))

(assert (=> start!53396 true))

(declare-fun array_inv!13170 (array!36251) Bool)

(assert (=> start!53396 (array_inv!13170 a!2986)))

(assert (= (and start!53396 res!368392) b!580429))

(assert (= (and b!580429 res!368390) b!580428))

(assert (= (and b!580428 res!368389) b!580424))

(assert (= (and b!580424 res!368394) b!580425))

(assert (= (and b!580425 res!368388) b!580422))

(assert (= (and b!580422 res!368396) b!580426))

(assert (= (and b!580426 res!368391) b!580423))

(assert (= (and b!580423 res!368393) b!580430))

(assert (= (and b!580430 res!368395) b!580427))

(declare-fun m!559049 () Bool)

(assert (=> start!53396 m!559049))

(declare-fun m!559051 () Bool)

(assert (=> start!53396 m!559051))

(declare-fun m!559053 () Bool)

(assert (=> b!580426 m!559053))

(declare-fun m!559055 () Bool)

(assert (=> b!580423 m!559055))

(declare-fun m!559057 () Bool)

(assert (=> b!580422 m!559057))

(declare-fun m!559059 () Bool)

(assert (=> b!580424 m!559059))

(declare-fun m!559061 () Bool)

(assert (=> b!580430 m!559061))

(declare-fun m!559063 () Bool)

(assert (=> b!580430 m!559063))

(declare-fun m!559065 () Bool)

(assert (=> b!580430 m!559065))

(declare-fun m!559067 () Bool)

(assert (=> b!580428 m!559067))

(assert (=> b!580428 m!559067))

(declare-fun m!559069 () Bool)

(assert (=> b!580428 m!559069))

(assert (=> b!580427 m!559067))

(assert (=> b!580427 m!559067))

(declare-fun m!559071 () Bool)

(assert (=> b!580427 m!559071))

(declare-fun m!559073 () Bool)

(assert (=> b!580425 m!559073))

(push 1)

(assert (not start!53396))

(assert (not b!580425))

(assert (not b!580428))

(assert (not b!580423))

(assert (not b!580422))

(assert (not b!580427))

