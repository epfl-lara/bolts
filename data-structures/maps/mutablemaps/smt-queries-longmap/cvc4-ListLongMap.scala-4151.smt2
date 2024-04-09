; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56608 () Bool)

(assert start!56608)

(declare-fun b!626785 () Bool)

(declare-fun e!359010 () Bool)

(declare-fun e!359011 () Bool)

(assert (=> b!626785 (= e!359010 e!359011)))

(declare-fun res!404665 () Bool)

(assert (=> b!626785 (=> (not res!404665) (not e!359011))))

(declare-datatypes ((SeekEntryResult!6614 0))(
  ( (MissingZero!6614 (index!28739 (_ BitVec 32))) (Found!6614 (index!28740 (_ BitVec 32))) (Intermediate!6614 (undefined!7426 Bool) (index!28741 (_ BitVec 32)) (x!57507 (_ BitVec 32))) (Undefined!6614) (MissingVacant!6614 (index!28742 (_ BitVec 32))) )
))
(declare-fun lt!290142 () SeekEntryResult!6614)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!626785 (= res!404665 (or (= lt!290142 (MissingZero!6614 i!1108)) (= lt!290142 (MissingVacant!6614 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37861 0))(
  ( (array!37862 (arr!18167 (Array (_ BitVec 32) (_ BitVec 64))) (size!18531 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37861)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37861 (_ BitVec 32)) SeekEntryResult!6614)

(assert (=> b!626785 (= lt!290142 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!626786 () Bool)

(declare-fun res!404673 () Bool)

(assert (=> b!626786 (=> (not res!404673) (not e!359011))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37861 (_ BitVec 32)) Bool)

(assert (=> b!626786 (= res!404673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626787 () Bool)

(declare-fun res!404674 () Bool)

(assert (=> b!626787 (=> (not res!404674) (not e!359010))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626787 (= res!404674 (validKeyInArray!0 (select (arr!18167 a!2986) j!136)))))

(declare-fun b!626789 () Bool)

(declare-fun res!404675 () Bool)

(assert (=> b!626789 (=> (not res!404675) (not e!359011))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!626789 (= res!404675 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18167 a!2986) index!984) (select (arr!18167 a!2986) j!136))) (not (= (select (arr!18167 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!626790 () Bool)

(declare-fun res!404668 () Bool)

(assert (=> b!626790 (=> (not res!404668) (not e!359010))))

(declare-fun arrayContainsKey!0 (array!37861 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626790 (= res!404668 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626791 () Bool)

(declare-fun res!404669 () Bool)

(assert (=> b!626791 (=> (not res!404669) (not e!359010))))

(assert (=> b!626791 (= res!404669 (validKeyInArray!0 k!1786))))

(declare-fun b!626792 () Bool)

(assert (=> b!626792 (= e!359011 false)))

(declare-fun lt!290141 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!626792 (= lt!290141 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!626793 () Bool)

(declare-fun res!404667 () Bool)

(assert (=> b!626793 (=> (not res!404667) (not e!359010))))

(assert (=> b!626793 (= res!404667 (and (= (size!18531 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18531 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18531 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626794 () Bool)

(declare-fun res!404672 () Bool)

(assert (=> b!626794 (=> (not res!404672) (not e!359011))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37861 (_ BitVec 32)) SeekEntryResult!6614)

(assert (=> b!626794 (= res!404672 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18167 a!2986) j!136) a!2986 mask!3053) (Found!6614 j!136)))))

(declare-fun b!626795 () Bool)

(declare-fun res!404666 () Bool)

(assert (=> b!626795 (=> (not res!404666) (not e!359011))))

(assert (=> b!626795 (= res!404666 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18167 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18167 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626788 () Bool)

(declare-fun res!404670 () Bool)

(assert (=> b!626788 (=> (not res!404670) (not e!359011))))

(declare-datatypes ((List!12261 0))(
  ( (Nil!12258) (Cons!12257 (h!13302 (_ BitVec 64)) (t!18497 List!12261)) )
))
(declare-fun arrayNoDuplicates!0 (array!37861 (_ BitVec 32) List!12261) Bool)

(assert (=> b!626788 (= res!404670 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12258))))

(declare-fun res!404671 () Bool)

(assert (=> start!56608 (=> (not res!404671) (not e!359010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56608 (= res!404671 (validMask!0 mask!3053))))

(assert (=> start!56608 e!359010))

(assert (=> start!56608 true))

(declare-fun array_inv!13941 (array!37861) Bool)

(assert (=> start!56608 (array_inv!13941 a!2986)))

(assert (= (and start!56608 res!404671) b!626793))

(assert (= (and b!626793 res!404667) b!626787))

(assert (= (and b!626787 res!404674) b!626791))

(assert (= (and b!626791 res!404669) b!626790))

(assert (= (and b!626790 res!404668) b!626785))

(assert (= (and b!626785 res!404665) b!626786))

(assert (= (and b!626786 res!404673) b!626788))

(assert (= (and b!626788 res!404670) b!626795))

(assert (= (and b!626795 res!404666) b!626794))

(assert (= (and b!626794 res!404672) b!626789))

(assert (= (and b!626789 res!404675) b!626792))

(declare-fun m!602193 () Bool)

(assert (=> b!626788 m!602193))

(declare-fun m!602195 () Bool)

(assert (=> b!626786 m!602195))

(declare-fun m!602197 () Bool)

(assert (=> b!626785 m!602197))

(declare-fun m!602199 () Bool)

(assert (=> b!626787 m!602199))

(assert (=> b!626787 m!602199))

(declare-fun m!602201 () Bool)

(assert (=> b!626787 m!602201))

(declare-fun m!602203 () Bool)

(assert (=> b!626795 m!602203))

(declare-fun m!602205 () Bool)

(assert (=> b!626795 m!602205))

(declare-fun m!602207 () Bool)

(assert (=> b!626795 m!602207))

(declare-fun m!602209 () Bool)

(assert (=> b!626789 m!602209))

(assert (=> b!626789 m!602199))

(declare-fun m!602211 () Bool)

(assert (=> start!56608 m!602211))

(declare-fun m!602213 () Bool)

(assert (=> start!56608 m!602213))

(declare-fun m!602215 () Bool)

(assert (=> b!626790 m!602215))

(declare-fun m!602217 () Bool)

(assert (=> b!626791 m!602217))

(assert (=> b!626794 m!602199))

(assert (=> b!626794 m!602199))

(declare-fun m!602219 () Bool)

(assert (=> b!626794 m!602219))

(declare-fun m!602221 () Bool)

(assert (=> b!626792 m!602221))

(push 1)

(assert (not start!56608))

(assert (not b!626787))

(assert (not b!626791))

