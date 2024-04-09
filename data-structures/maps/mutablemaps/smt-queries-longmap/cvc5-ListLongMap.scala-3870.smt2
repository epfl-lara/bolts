; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53248 () Bool)

(assert start!53248)

(declare-fun b!578415 () Bool)

(declare-fun res!366385 () Bool)

(declare-fun e!332618 () Bool)

(assert (=> b!578415 (=> (not res!366385) (not e!332618))))

(declare-datatypes ((array!36103 0))(
  ( (array!36104 (arr!17322 (Array (_ BitVec 32) (_ BitVec 64))) (size!17686 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36103)

(declare-datatypes ((List!11416 0))(
  ( (Nil!11413) (Cons!11412 (h!12457 (_ BitVec 64)) (t!17652 List!11416)) )
))
(declare-fun arrayNoDuplicates!0 (array!36103 (_ BitVec 32) List!11416) Bool)

(assert (=> b!578415 (= res!366385 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11413))))

(declare-fun b!578416 () Bool)

(declare-fun e!332619 () Bool)

(assert (=> b!578416 (= e!332619 e!332618)))

(declare-fun res!366383 () Bool)

(assert (=> b!578416 (=> (not res!366383) (not e!332618))))

(declare-datatypes ((SeekEntryResult!5769 0))(
  ( (MissingZero!5769 (index!25303 (_ BitVec 32))) (Found!5769 (index!25304 (_ BitVec 32))) (Intermediate!5769 (undefined!6581 Bool) (index!25305 (_ BitVec 32)) (x!54233 (_ BitVec 32))) (Undefined!5769) (MissingVacant!5769 (index!25306 (_ BitVec 32))) )
))
(declare-fun lt!264272 () SeekEntryResult!5769)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578416 (= res!366383 (or (= lt!264272 (MissingZero!5769 i!1108)) (= lt!264272 (MissingVacant!5769 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36103 (_ BitVec 32)) SeekEntryResult!5769)

(assert (=> b!578416 (= lt!264272 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578417 () Bool)

(declare-fun res!366387 () Bool)

(assert (=> b!578417 (=> (not res!366387) (not e!332619))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578417 (= res!366387 (validKeyInArray!0 (select (arr!17322 a!2986) j!136)))))

(declare-fun b!578418 () Bool)

(declare-fun res!366386 () Bool)

(assert (=> b!578418 (=> (not res!366386) (not e!332619))))

(declare-fun arrayContainsKey!0 (array!36103 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578418 (= res!366386 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578419 () Bool)

(assert (=> b!578419 (= e!332618 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!264271 () SeekEntryResult!5769)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36103 (_ BitVec 32)) SeekEntryResult!5769)

(assert (=> b!578419 (= lt!264271 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17322 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!578420 () Bool)

(declare-fun res!366381 () Bool)

(assert (=> b!578420 (=> (not res!366381) (not e!332619))))

(assert (=> b!578420 (= res!366381 (validKeyInArray!0 k!1786))))

(declare-fun res!366384 () Bool)

(assert (=> start!53248 (=> (not res!366384) (not e!332619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53248 (= res!366384 (validMask!0 mask!3053))))

(assert (=> start!53248 e!332619))

(assert (=> start!53248 true))

(declare-fun array_inv!13096 (array!36103) Bool)

(assert (=> start!53248 (array_inv!13096 a!2986)))

(declare-fun b!578421 () Bool)

(declare-fun res!366382 () Bool)

(assert (=> b!578421 (=> (not res!366382) (not e!332618))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36103 (_ BitVec 32)) Bool)

(assert (=> b!578421 (= res!366382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578422 () Bool)

(declare-fun res!366388 () Bool)

(assert (=> b!578422 (=> (not res!366388) (not e!332618))))

(assert (=> b!578422 (= res!366388 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17322 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17322 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578423 () Bool)

(declare-fun res!366389 () Bool)

(assert (=> b!578423 (=> (not res!366389) (not e!332619))))

(assert (=> b!578423 (= res!366389 (and (= (size!17686 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17686 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17686 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53248 res!366384) b!578423))

(assert (= (and b!578423 res!366389) b!578417))

(assert (= (and b!578417 res!366387) b!578420))

(assert (= (and b!578420 res!366381) b!578418))

(assert (= (and b!578418 res!366386) b!578416))

(assert (= (and b!578416 res!366383) b!578421))

(assert (= (and b!578421 res!366382) b!578415))

(assert (= (and b!578415 res!366385) b!578422))

(assert (= (and b!578422 res!366388) b!578419))

(declare-fun m!557125 () Bool)

(assert (=> b!578417 m!557125))

(assert (=> b!578417 m!557125))

(declare-fun m!557127 () Bool)

(assert (=> b!578417 m!557127))

(assert (=> b!578419 m!557125))

(assert (=> b!578419 m!557125))

(declare-fun m!557129 () Bool)

(assert (=> b!578419 m!557129))

(declare-fun m!557131 () Bool)

(assert (=> b!578418 m!557131))

(declare-fun m!557133 () Bool)

(assert (=> b!578420 m!557133))

(declare-fun m!557135 () Bool)

(assert (=> b!578421 m!557135))

(declare-fun m!557137 () Bool)

(assert (=> b!578415 m!557137))

(declare-fun m!557139 () Bool)

(assert (=> start!53248 m!557139))

(declare-fun m!557141 () Bool)

(assert (=> start!53248 m!557141))

(declare-fun m!557143 () Bool)

(assert (=> b!578422 m!557143))

(declare-fun m!557145 () Bool)

(assert (=> b!578422 m!557145))

(declare-fun m!557147 () Bool)

(assert (=> b!578422 m!557147))

(declare-fun m!557149 () Bool)

(assert (=> b!578416 m!557149))

(push 1)

