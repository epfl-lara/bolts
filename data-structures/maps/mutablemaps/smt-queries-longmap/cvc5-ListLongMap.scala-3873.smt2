; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53266 () Bool)

(assert start!53266)

(declare-fun res!366641 () Bool)

(declare-fun e!332701 () Bool)

(assert (=> start!53266 (=> (not res!366641) (not e!332701))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53266 (= res!366641 (validMask!0 mask!3053))))

(assert (=> start!53266 e!332701))

(assert (=> start!53266 true))

(declare-datatypes ((array!36121 0))(
  ( (array!36122 (arr!17331 (Array (_ BitVec 32) (_ BitVec 64))) (size!17695 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36121)

(declare-fun array_inv!13105 (array!36121) Bool)

(assert (=> start!53266 (array_inv!13105 a!2986)))

(declare-fun b!578667 () Bool)

(declare-fun res!366633 () Bool)

(assert (=> b!578667 (=> (not res!366633) (not e!332701))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578667 (= res!366633 (validKeyInArray!0 k!1786))))

(declare-fun b!578668 () Bool)

(declare-fun res!366638 () Bool)

(declare-fun e!332700 () Bool)

(assert (=> b!578668 (=> (not res!366638) (not e!332700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36121 (_ BitVec 32)) Bool)

(assert (=> b!578668 (= res!366638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578669 () Bool)

(declare-fun res!366640 () Bool)

(assert (=> b!578669 (=> (not res!366640) (not e!332701))))

(declare-fun arrayContainsKey!0 (array!36121 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578669 (= res!366640 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578670 () Bool)

(assert (=> b!578670 (= e!332700 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5778 0))(
  ( (MissingZero!5778 (index!25339 (_ BitVec 32))) (Found!5778 (index!25340 (_ BitVec 32))) (Intermediate!5778 (undefined!6590 Bool) (index!25341 (_ BitVec 32)) (x!54266 (_ BitVec 32))) (Undefined!5778) (MissingVacant!5778 (index!25342 (_ BitVec 32))) )
))
(declare-fun lt!264316 () SeekEntryResult!5778)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36121 (_ BitVec 32)) SeekEntryResult!5778)

(assert (=> b!578670 (= lt!264316 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17331 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!578671 () Bool)

(declare-fun res!366636 () Bool)

(assert (=> b!578671 (=> (not res!366636) (not e!332700))))

(declare-datatypes ((List!11425 0))(
  ( (Nil!11422) (Cons!11421 (h!12466 (_ BitVec 64)) (t!17661 List!11425)) )
))
(declare-fun arrayNoDuplicates!0 (array!36121 (_ BitVec 32) List!11425) Bool)

(assert (=> b!578671 (= res!366636 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11422))))

(declare-fun b!578672 () Bool)

(assert (=> b!578672 (= e!332701 e!332700)))

(declare-fun res!366634 () Bool)

(assert (=> b!578672 (=> (not res!366634) (not e!332700))))

(declare-fun lt!264317 () SeekEntryResult!5778)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578672 (= res!366634 (or (= lt!264317 (MissingZero!5778 i!1108)) (= lt!264317 (MissingVacant!5778 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36121 (_ BitVec 32)) SeekEntryResult!5778)

(assert (=> b!578672 (= lt!264317 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578673 () Bool)

(declare-fun res!366635 () Bool)

(assert (=> b!578673 (=> (not res!366635) (not e!332701))))

(assert (=> b!578673 (= res!366635 (and (= (size!17695 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17695 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17695 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578674 () Bool)

(declare-fun res!366637 () Bool)

(assert (=> b!578674 (=> (not res!366637) (not e!332701))))

(assert (=> b!578674 (= res!366637 (validKeyInArray!0 (select (arr!17331 a!2986) j!136)))))

(declare-fun b!578675 () Bool)

(declare-fun res!366639 () Bool)

(assert (=> b!578675 (=> (not res!366639) (not e!332700))))

(assert (=> b!578675 (= res!366639 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17331 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17331 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53266 res!366641) b!578673))

(assert (= (and b!578673 res!366635) b!578674))

(assert (= (and b!578674 res!366637) b!578667))

(assert (= (and b!578667 res!366633) b!578669))

(assert (= (and b!578669 res!366640) b!578672))

(assert (= (and b!578672 res!366634) b!578668))

(assert (= (and b!578668 res!366638) b!578671))

(assert (= (and b!578671 res!366636) b!578675))

(assert (= (and b!578675 res!366639) b!578670))

(declare-fun m!557359 () Bool)

(assert (=> b!578672 m!557359))

(declare-fun m!557361 () Bool)

(assert (=> start!53266 m!557361))

(declare-fun m!557363 () Bool)

(assert (=> start!53266 m!557363))

(declare-fun m!557365 () Bool)

(assert (=> b!578668 m!557365))

(declare-fun m!557367 () Bool)

(assert (=> b!578667 m!557367))

(declare-fun m!557369 () Bool)

(assert (=> b!578675 m!557369))

(declare-fun m!557371 () Bool)

(assert (=> b!578675 m!557371))

(declare-fun m!557373 () Bool)

(assert (=> b!578675 m!557373))

(declare-fun m!557375 () Bool)

(assert (=> b!578669 m!557375))

(declare-fun m!557377 () Bool)

(assert (=> b!578670 m!557377))

(assert (=> b!578670 m!557377))

(declare-fun m!557379 () Bool)

(assert (=> b!578670 m!557379))

(declare-fun m!557381 () Bool)

(assert (=> b!578671 m!557381))

(assert (=> b!578674 m!557377))

(assert (=> b!578674 m!557377))

(declare-fun m!557383 () Bool)

(assert (=> b!578674 m!557383))

(push 1)

