; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53272 () Bool)

(assert start!53272)

(declare-fun b!578748 () Bool)

(declare-fun e!332726 () Bool)

(assert (=> b!578748 (= e!332726 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5781 0))(
  ( (MissingZero!5781 (index!25351 (_ BitVec 32))) (Found!5781 (index!25352 (_ BitVec 32))) (Intermediate!5781 (undefined!6593 Bool) (index!25353 (_ BitVec 32)) (x!54277 (_ BitVec 32))) (Undefined!5781) (MissingVacant!5781 (index!25354 (_ BitVec 32))) )
))
(declare-fun lt!264334 () SeekEntryResult!5781)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36127 0))(
  ( (array!36128 (arr!17334 (Array (_ BitVec 32) (_ BitVec 64))) (size!17698 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36127)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36127 (_ BitVec 32)) SeekEntryResult!5781)

(assert (=> b!578748 (= lt!264334 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17334 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!578749 () Bool)

(declare-fun res!366716 () Bool)

(assert (=> b!578749 (=> (not res!366716) (not e!332726))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!578749 (= res!366716 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17334 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17334 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!366715 () Bool)

(declare-fun e!332728 () Bool)

(assert (=> start!53272 (=> (not res!366715) (not e!332728))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53272 (= res!366715 (validMask!0 mask!3053))))

(assert (=> start!53272 e!332728))

(assert (=> start!53272 true))

(declare-fun array_inv!13108 (array!36127) Bool)

(assert (=> start!53272 (array_inv!13108 a!2986)))

(declare-fun b!578750 () Bool)

(declare-fun res!366721 () Bool)

(assert (=> b!578750 (=> (not res!366721) (not e!332728))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578750 (= res!366721 (validKeyInArray!0 k!1786))))

(declare-fun b!578751 () Bool)

(assert (=> b!578751 (= e!332728 e!332726)))

(declare-fun res!366719 () Bool)

(assert (=> b!578751 (=> (not res!366719) (not e!332726))))

(declare-fun lt!264335 () SeekEntryResult!5781)

(assert (=> b!578751 (= res!366719 (or (= lt!264335 (MissingZero!5781 i!1108)) (= lt!264335 (MissingVacant!5781 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36127 (_ BitVec 32)) SeekEntryResult!5781)

(assert (=> b!578751 (= lt!264335 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578752 () Bool)

(declare-fun res!366720 () Bool)

(assert (=> b!578752 (=> (not res!366720) (not e!332728))))

(declare-fun arrayContainsKey!0 (array!36127 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578752 (= res!366720 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578753 () Bool)

(declare-fun res!366717 () Bool)

(assert (=> b!578753 (=> (not res!366717) (not e!332728))))

(assert (=> b!578753 (= res!366717 (and (= (size!17698 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17698 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17698 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578754 () Bool)

(declare-fun res!366722 () Bool)

(assert (=> b!578754 (=> (not res!366722) (not e!332728))))

(assert (=> b!578754 (= res!366722 (validKeyInArray!0 (select (arr!17334 a!2986) j!136)))))

(declare-fun b!578755 () Bool)

(declare-fun res!366718 () Bool)

(assert (=> b!578755 (=> (not res!366718) (not e!332726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36127 (_ BitVec 32)) Bool)

(assert (=> b!578755 (= res!366718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578756 () Bool)

(declare-fun res!366714 () Bool)

(assert (=> b!578756 (=> (not res!366714) (not e!332726))))

(declare-datatypes ((List!11428 0))(
  ( (Nil!11425) (Cons!11424 (h!12469 (_ BitVec 64)) (t!17664 List!11428)) )
))
(declare-fun arrayNoDuplicates!0 (array!36127 (_ BitVec 32) List!11428) Bool)

(assert (=> b!578756 (= res!366714 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11425))))

(assert (= (and start!53272 res!366715) b!578753))

(assert (= (and b!578753 res!366717) b!578754))

(assert (= (and b!578754 res!366722) b!578750))

(assert (= (and b!578750 res!366721) b!578752))

(assert (= (and b!578752 res!366720) b!578751))

(assert (= (and b!578751 res!366719) b!578755))

(assert (= (and b!578755 res!366718) b!578756))

(assert (= (and b!578756 res!366714) b!578749))

(assert (= (and b!578749 res!366716) b!578748))

(declare-fun m!557437 () Bool)

(assert (=> start!53272 m!557437))

(declare-fun m!557439 () Bool)

(assert (=> start!53272 m!557439))

(declare-fun m!557441 () Bool)

(assert (=> b!578752 m!557441))

(declare-fun m!557443 () Bool)

(assert (=> b!578749 m!557443))

(declare-fun m!557445 () Bool)

(assert (=> b!578749 m!557445))

(declare-fun m!557447 () Bool)

(assert (=> b!578749 m!557447))

(declare-fun m!557449 () Bool)

(assert (=> b!578750 m!557449))

(declare-fun m!557451 () Bool)

(assert (=> b!578748 m!557451))

(assert (=> b!578748 m!557451))

(declare-fun m!557453 () Bool)

(assert (=> b!578748 m!557453))

(declare-fun m!557455 () Bool)

(assert (=> b!578751 m!557455))

(assert (=> b!578754 m!557451))

(assert (=> b!578754 m!557451))

(declare-fun m!557457 () Bool)

(assert (=> b!578754 m!557457))

(declare-fun m!557459 () Bool)

(assert (=> b!578755 m!557459))

(declare-fun m!557461 () Bool)

(assert (=> b!578756 m!557461))

(push 1)

