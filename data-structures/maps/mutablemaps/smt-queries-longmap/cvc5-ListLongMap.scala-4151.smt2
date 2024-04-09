; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56604 () Bool)

(assert start!56604)

(declare-fun b!626719 () Bool)

(declare-fun res!404608 () Bool)

(declare-fun e!358991 () Bool)

(assert (=> b!626719 (=> (not res!404608) (not e!358991))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37857 0))(
  ( (array!37858 (arr!18165 (Array (_ BitVec 32) (_ BitVec 64))) (size!18529 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37857)

(assert (=> b!626719 (= res!404608 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18165 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18165 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626720 () Bool)

(declare-fun res!404602 () Bool)

(declare-fun e!358992 () Bool)

(assert (=> b!626720 (=> (not res!404602) (not e!358992))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!626720 (= res!404602 (and (= (size!18529 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18529 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18529 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626722 () Bool)

(declare-fun res!404607 () Bool)

(assert (=> b!626722 (=> (not res!404607) (not e!358992))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626722 (= res!404607 (validKeyInArray!0 k!1786))))

(declare-fun b!626723 () Bool)

(declare-fun res!404601 () Bool)

(assert (=> b!626723 (=> (not res!404601) (not e!358991))))

(declare-datatypes ((SeekEntryResult!6612 0))(
  ( (MissingZero!6612 (index!28731 (_ BitVec 32))) (Found!6612 (index!28732 (_ BitVec 32))) (Intermediate!6612 (undefined!7424 Bool) (index!28733 (_ BitVec 32)) (x!57505 (_ BitVec 32))) (Undefined!6612) (MissingVacant!6612 (index!28734 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37857 (_ BitVec 32)) SeekEntryResult!6612)

(assert (=> b!626723 (= res!404601 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18165 a!2986) j!136) a!2986 mask!3053) (Found!6612 j!136)))))

(declare-fun b!626724 () Bool)

(declare-fun res!404599 () Bool)

(assert (=> b!626724 (=> (not res!404599) (not e!358991))))

(assert (=> b!626724 (= res!404599 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18165 a!2986) index!984) (select (arr!18165 a!2986) j!136))) (not (= (select (arr!18165 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!626725 () Bool)

(declare-fun res!404603 () Bool)

(assert (=> b!626725 (=> (not res!404603) (not e!358991))))

(declare-datatypes ((List!12259 0))(
  ( (Nil!12256) (Cons!12255 (h!13300 (_ BitVec 64)) (t!18495 List!12259)) )
))
(declare-fun arrayNoDuplicates!0 (array!37857 (_ BitVec 32) List!12259) Bool)

(assert (=> b!626725 (= res!404603 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12256))))

(declare-fun b!626726 () Bool)

(declare-fun res!404605 () Bool)

(assert (=> b!626726 (=> (not res!404605) (not e!358991))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37857 (_ BitVec 32)) Bool)

(assert (=> b!626726 (= res!404605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626727 () Bool)

(declare-fun res!404604 () Bool)

(assert (=> b!626727 (=> (not res!404604) (not e!358992))))

(declare-fun arrayContainsKey!0 (array!37857 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626727 (= res!404604 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626721 () Bool)

(declare-fun res!404600 () Bool)

(assert (=> b!626721 (=> (not res!404600) (not e!358992))))

(assert (=> b!626721 (= res!404600 (validKeyInArray!0 (select (arr!18165 a!2986) j!136)))))

(declare-fun res!404609 () Bool)

(assert (=> start!56604 (=> (not res!404609) (not e!358992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56604 (= res!404609 (validMask!0 mask!3053))))

(assert (=> start!56604 e!358992))

(assert (=> start!56604 true))

(declare-fun array_inv!13939 (array!37857) Bool)

(assert (=> start!56604 (array_inv!13939 a!2986)))

(declare-fun b!626728 () Bool)

(assert (=> b!626728 (= e!358991 false)))

(declare-fun lt!290130 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!626728 (= lt!290130 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!626729 () Bool)

(assert (=> b!626729 (= e!358992 e!358991)))

(declare-fun res!404606 () Bool)

(assert (=> b!626729 (=> (not res!404606) (not e!358991))))

(declare-fun lt!290129 () SeekEntryResult!6612)

(assert (=> b!626729 (= res!404606 (or (= lt!290129 (MissingZero!6612 i!1108)) (= lt!290129 (MissingVacant!6612 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37857 (_ BitVec 32)) SeekEntryResult!6612)

(assert (=> b!626729 (= lt!290129 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!56604 res!404609) b!626720))

(assert (= (and b!626720 res!404602) b!626721))

(assert (= (and b!626721 res!404600) b!626722))

(assert (= (and b!626722 res!404607) b!626727))

(assert (= (and b!626727 res!404604) b!626729))

(assert (= (and b!626729 res!404606) b!626726))

(assert (= (and b!626726 res!404605) b!626725))

(assert (= (and b!626725 res!404603) b!626719))

(assert (= (and b!626719 res!404608) b!626723))

(assert (= (and b!626723 res!404601) b!626724))

(assert (= (and b!626724 res!404599) b!626728))

(declare-fun m!602133 () Bool)

(assert (=> b!626728 m!602133))

(declare-fun m!602135 () Bool)

(assert (=> b!626725 m!602135))

(declare-fun m!602137 () Bool)

(assert (=> b!626723 m!602137))

(assert (=> b!626723 m!602137))

(declare-fun m!602139 () Bool)

(assert (=> b!626723 m!602139))

(assert (=> b!626721 m!602137))

(assert (=> b!626721 m!602137))

(declare-fun m!602141 () Bool)

(assert (=> b!626721 m!602141))

(declare-fun m!602143 () Bool)

(assert (=> b!626719 m!602143))

(declare-fun m!602145 () Bool)

(assert (=> b!626719 m!602145))

(declare-fun m!602147 () Bool)

(assert (=> b!626719 m!602147))

(declare-fun m!602149 () Bool)

(assert (=> b!626726 m!602149))

(declare-fun m!602151 () Bool)

(assert (=> start!56604 m!602151))

(declare-fun m!602153 () Bool)

(assert (=> start!56604 m!602153))

(declare-fun m!602155 () Bool)

(assert (=> b!626724 m!602155))

(assert (=> b!626724 m!602137))

(declare-fun m!602157 () Bool)

(assert (=> b!626729 m!602157))

(declare-fun m!602159 () Bool)

(assert (=> b!626727 m!602159))

(declare-fun m!602161 () Bool)

(assert (=> b!626722 m!602161))

(push 1)

