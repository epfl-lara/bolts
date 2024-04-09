; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56826 () Bool)

(assert start!56826)

(declare-fun b!629045 () Bool)

(declare-fun res!406626 () Bool)

(declare-fun e!359807 () Bool)

(assert (=> b!629045 (=> (not res!406626) (not e!359807))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629045 (= res!406626 (validKeyInArray!0 k!1786))))

(declare-fun b!629046 () Bool)

(declare-fun res!406630 () Bool)

(assert (=> b!629046 (=> (not res!406630) (not e!359807))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37977 0))(
  ( (array!37978 (arr!18222 (Array (_ BitVec 32) (_ BitVec 64))) (size!18586 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37977)

(assert (=> b!629046 (= res!406630 (and (= (size!18586 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18586 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18586 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!629047 () Bool)

(declare-fun res!406619 () Bool)

(declare-fun e!359809 () Bool)

(assert (=> b!629047 (=> (not res!406619) (not e!359809))))

(declare-datatypes ((List!12316 0))(
  ( (Nil!12313) (Cons!12312 (h!13357 (_ BitVec 64)) (t!18552 List!12316)) )
))
(declare-fun arrayNoDuplicates!0 (array!37977 (_ BitVec 32) List!12316) Bool)

(assert (=> b!629047 (= res!406619 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12313))))

(declare-fun b!629048 () Bool)

(declare-fun e!359806 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!629048 (= e!359806 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!910)) (bvsub #b01111111111111111111111111111110 x!910)))))

(declare-fun b!629049 () Bool)

(declare-fun e!359808 () Bool)

(assert (=> b!629049 (= e!359808 e!359806)))

(declare-fun res!406631 () Bool)

(assert (=> b!629049 (=> (not res!406631) (not e!359806))))

(declare-fun lt!290651 () (_ BitVec 32))

(assert (=> b!629049 (= res!406631 (and (bvsge lt!290651 #b00000000000000000000000000000000) (bvslt lt!290651 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629049 (= lt!290651 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629050 () Bool)

(declare-fun res!406628 () Bool)

(assert (=> b!629050 (=> (not res!406628) (not e!359807))))

(declare-fun arrayContainsKey!0 (array!37977 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629050 (= res!406628 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629051 () Bool)

(declare-fun res!406625 () Bool)

(assert (=> b!629051 (=> (not res!406625) (not e!359809))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37977 (_ BitVec 32)) Bool)

(assert (=> b!629051 (= res!406625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!629052 () Bool)

(declare-fun res!406623 () Bool)

(assert (=> b!629052 (=> (not res!406623) (not e!359808))))

(assert (=> b!629052 (= res!406623 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18222 a!2986) index!984) (select (arr!18222 a!2986) j!136))) (not (= (select (arr!18222 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun res!406624 () Bool)

(assert (=> start!56826 (=> (not res!406624) (not e!359807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56826 (= res!406624 (validMask!0 mask!3053))))

(assert (=> start!56826 e!359807))

(assert (=> start!56826 true))

(declare-fun array_inv!13996 (array!37977) Bool)

(assert (=> start!56826 (array_inv!13996 a!2986)))

(declare-fun b!629053 () Bool)

(declare-fun res!406621 () Bool)

(assert (=> b!629053 (=> (not res!406621) (not e!359806))))

(declare-datatypes ((SeekEntryResult!6669 0))(
  ( (MissingZero!6669 (index!28959 (_ BitVec 32))) (Found!6669 (index!28960 (_ BitVec 32))) (Intermediate!6669 (undefined!7481 Bool) (index!28961 (_ BitVec 32)) (x!57726 (_ BitVec 32))) (Undefined!6669) (MissingVacant!6669 (index!28962 (_ BitVec 32))) )
))
(declare-fun lt!290650 () SeekEntryResult!6669)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37977 (_ BitVec 32)) SeekEntryResult!6669)

(assert (=> b!629053 (= res!406621 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290651 vacantSpotIndex!68 (select (arr!18222 a!2986) j!136) a!2986 mask!3053) lt!290650))))

(declare-fun b!629054 () Bool)

(assert (=> b!629054 (= e!359807 e!359809)))

(declare-fun res!406627 () Bool)

(assert (=> b!629054 (=> (not res!406627) (not e!359809))))

(declare-fun lt!290652 () SeekEntryResult!6669)

(assert (=> b!629054 (= res!406627 (or (= lt!290652 (MissingZero!6669 i!1108)) (= lt!290652 (MissingVacant!6669 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37977 (_ BitVec 32)) SeekEntryResult!6669)

(assert (=> b!629054 (= lt!290652 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!629055 () Bool)

(declare-fun res!406629 () Bool)

(assert (=> b!629055 (=> (not res!406629) (not e!359807))))

(assert (=> b!629055 (= res!406629 (validKeyInArray!0 (select (arr!18222 a!2986) j!136)))))

(declare-fun b!629056 () Bool)

(assert (=> b!629056 (= e!359809 e!359808)))

(declare-fun res!406620 () Bool)

(assert (=> b!629056 (=> (not res!406620) (not e!359808))))

(assert (=> b!629056 (= res!406620 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18222 a!2986) j!136) a!2986 mask!3053) lt!290650))))

(assert (=> b!629056 (= lt!290650 (Found!6669 j!136))))

(declare-fun b!629057 () Bool)

(declare-fun res!406622 () Bool)

(assert (=> b!629057 (=> (not res!406622) (not e!359809))))

(assert (=> b!629057 (= res!406622 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18222 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18222 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56826 res!406624) b!629046))

(assert (= (and b!629046 res!406630) b!629055))

(assert (= (and b!629055 res!406629) b!629045))

(assert (= (and b!629045 res!406626) b!629050))

(assert (= (and b!629050 res!406628) b!629054))

(assert (= (and b!629054 res!406627) b!629051))

(assert (= (and b!629051 res!406625) b!629047))

(assert (= (and b!629047 res!406619) b!629057))

(assert (= (and b!629057 res!406622) b!629056))

(assert (= (and b!629056 res!406620) b!629052))

(assert (= (and b!629052 res!406623) b!629049))

(assert (= (and b!629049 res!406631) b!629053))

(assert (= (and b!629053 res!406621) b!629048))

(declare-fun m!604119 () Bool)

(assert (=> start!56826 m!604119))

(declare-fun m!604121 () Bool)

(assert (=> start!56826 m!604121))

(declare-fun m!604123 () Bool)

(assert (=> b!629057 m!604123))

(declare-fun m!604125 () Bool)

(assert (=> b!629057 m!604125))

(declare-fun m!604127 () Bool)

(assert (=> b!629057 m!604127))

(declare-fun m!604129 () Bool)

(assert (=> b!629045 m!604129))

(declare-fun m!604131 () Bool)

(assert (=> b!629054 m!604131))

(declare-fun m!604133 () Bool)

(assert (=> b!629055 m!604133))

(assert (=> b!629055 m!604133))

(declare-fun m!604135 () Bool)

(assert (=> b!629055 m!604135))

(declare-fun m!604137 () Bool)

(assert (=> b!629049 m!604137))

(declare-fun m!604139 () Bool)

(assert (=> b!629047 m!604139))

(declare-fun m!604141 () Bool)

(assert (=> b!629051 m!604141))

(declare-fun m!604143 () Bool)

(assert (=> b!629050 m!604143))

(assert (=> b!629056 m!604133))

(assert (=> b!629056 m!604133))

(declare-fun m!604145 () Bool)

(assert (=> b!629056 m!604145))

(declare-fun m!604147 () Bool)

(assert (=> b!629052 m!604147))

(assert (=> b!629052 m!604133))

(assert (=> b!629053 m!604133))

(assert (=> b!629053 m!604133))

(declare-fun m!604149 () Bool)

(assert (=> b!629053 m!604149))

(push 1)

(assert (not b!629051))

(assert (not b!629053))

(assert (not b!629050))

(assert (not b!629047))

(assert (not b!629045))

(assert (not b!629056))

(assert (not b!629049))

(assert (not start!56826))

(assert (not b!629054))

(assert (not b!629055))

(check-sat)

(pop 1)

(push 1)

(check-sat)

