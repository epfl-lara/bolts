; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56640 () Bool)

(assert start!56640)

(declare-fun b!627313 () Bool)

(declare-fun res!405200 () Bool)

(declare-fun e!359155 () Bool)

(assert (=> b!627313 (=> (not res!405200) (not e!359155))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37893 0))(
  ( (array!37894 (arr!18183 (Array (_ BitVec 32) (_ BitVec 64))) (size!18547 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37893)

(assert (=> b!627313 (= res!405200 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18183 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18183 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!405197 () Bool)

(declare-fun e!359153 () Bool)

(assert (=> start!56640 (=> (not res!405197) (not e!359153))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56640 (= res!405197 (validMask!0 mask!3053))))

(assert (=> start!56640 e!359153))

(assert (=> start!56640 true))

(declare-fun array_inv!13957 (array!37893) Bool)

(assert (=> start!56640 (array_inv!13957 a!2986)))

(declare-fun b!627314 () Bool)

(assert (=> b!627314 (= e!359153 e!359155)))

(declare-fun res!405198 () Bool)

(assert (=> b!627314 (=> (not res!405198) (not e!359155))))

(declare-datatypes ((SeekEntryResult!6630 0))(
  ( (MissingZero!6630 (index!28803 (_ BitVec 32))) (Found!6630 (index!28804 (_ BitVec 32))) (Intermediate!6630 (undefined!7442 Bool) (index!28805 (_ BitVec 32)) (x!57571 (_ BitVec 32))) (Undefined!6630) (MissingVacant!6630 (index!28806 (_ BitVec 32))) )
))
(declare-fun lt!290238 () SeekEntryResult!6630)

(assert (=> b!627314 (= res!405198 (or (= lt!290238 (MissingZero!6630 i!1108)) (= lt!290238 (MissingVacant!6630 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37893 (_ BitVec 32)) SeekEntryResult!6630)

(assert (=> b!627314 (= lt!290238 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627315 () Bool)

(declare-fun res!405199 () Bool)

(assert (=> b!627315 (=> (not res!405199) (not e!359155))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37893 (_ BitVec 32)) SeekEntryResult!6630)

(assert (=> b!627315 (= res!405199 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18183 a!2986) j!136) a!2986 mask!3053) (Found!6630 j!136)))))

(declare-fun b!627316 () Bool)

(declare-fun res!405195 () Bool)

(assert (=> b!627316 (=> (not res!405195) (not e!359155))))

(declare-datatypes ((List!12277 0))(
  ( (Nil!12274) (Cons!12273 (h!13318 (_ BitVec 64)) (t!18513 List!12277)) )
))
(declare-fun arrayNoDuplicates!0 (array!37893 (_ BitVec 32) List!12277) Bool)

(assert (=> b!627316 (= res!405195 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12274))))

(declare-fun b!627317 () Bool)

(declare-fun res!405202 () Bool)

(assert (=> b!627317 (=> (not res!405202) (not e!359153))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627317 (= res!405202 (validKeyInArray!0 (select (arr!18183 a!2986) j!136)))))

(declare-fun b!627318 () Bool)

(declare-fun res!405196 () Bool)

(assert (=> b!627318 (=> (not res!405196) (not e!359155))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37893 (_ BitVec 32)) Bool)

(assert (=> b!627318 (= res!405196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627319 () Bool)

(declare-fun res!405203 () Bool)

(assert (=> b!627319 (=> (not res!405203) (not e!359155))))

(assert (=> b!627319 (= res!405203 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18183 a!2986) index!984) (select (arr!18183 a!2986) j!136))) (not (= (select (arr!18183 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627320 () Bool)

(declare-fun res!405193 () Bool)

(assert (=> b!627320 (=> (not res!405193) (not e!359153))))

(declare-fun arrayContainsKey!0 (array!37893 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627320 (= res!405193 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627321 () Bool)

(declare-fun res!405201 () Bool)

(assert (=> b!627321 (=> (not res!405201) (not e!359153))))

(assert (=> b!627321 (= res!405201 (validKeyInArray!0 k!1786))))

(declare-fun b!627322 () Bool)

(assert (=> b!627322 (= e!359155 false)))

(declare-fun lt!290237 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627322 (= lt!290237 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627323 () Bool)

(declare-fun res!405194 () Bool)

(assert (=> b!627323 (=> (not res!405194) (not e!359153))))

(assert (=> b!627323 (= res!405194 (and (= (size!18547 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18547 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18547 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!56640 res!405197) b!627323))

(assert (= (and b!627323 res!405194) b!627317))

(assert (= (and b!627317 res!405202) b!627321))

(assert (= (and b!627321 res!405201) b!627320))

(assert (= (and b!627320 res!405193) b!627314))

(assert (= (and b!627314 res!405198) b!627318))

(assert (= (and b!627318 res!405196) b!627316))

(assert (= (and b!627316 res!405195) b!627313))

(assert (= (and b!627313 res!405200) b!627315))

(assert (= (and b!627315 res!405199) b!627319))

(assert (= (and b!627319 res!405203) b!627322))

(declare-fun m!602673 () Bool)

(assert (=> b!627321 m!602673))

(declare-fun m!602675 () Bool)

(assert (=> b!627322 m!602675))

(declare-fun m!602677 () Bool)

(assert (=> b!627317 m!602677))

(assert (=> b!627317 m!602677))

(declare-fun m!602679 () Bool)

(assert (=> b!627317 m!602679))

(declare-fun m!602681 () Bool)

(assert (=> b!627318 m!602681))

(declare-fun m!602683 () Bool)

(assert (=> b!627320 m!602683))

(declare-fun m!602685 () Bool)

(assert (=> b!627316 m!602685))

(declare-fun m!602687 () Bool)

(assert (=> start!56640 m!602687))

(declare-fun m!602689 () Bool)

(assert (=> start!56640 m!602689))

(declare-fun m!602691 () Bool)

(assert (=> b!627313 m!602691))

(declare-fun m!602693 () Bool)

(assert (=> b!627313 m!602693))

(declare-fun m!602695 () Bool)

(assert (=> b!627313 m!602695))

(declare-fun m!602697 () Bool)

(assert (=> b!627314 m!602697))

(assert (=> b!627315 m!602677))

(assert (=> b!627315 m!602677))

(declare-fun m!602699 () Bool)

(assert (=> b!627315 m!602699))

(declare-fun m!602701 () Bool)

(assert (=> b!627319 m!602701))

(assert (=> b!627319 m!602677))

(push 1)

