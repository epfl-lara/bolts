; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56614 () Bool)

(assert start!56614)

(declare-fun b!626884 () Bool)

(declare-fun e!359038 () Bool)

(assert (=> b!626884 (= e!359038 false)))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!290159 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!626884 (= lt!290159 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!626885 () Bool)

(declare-fun res!404764 () Bool)

(assert (=> b!626885 (=> (not res!404764) (not e!359038))))

(declare-datatypes ((array!37867 0))(
  ( (array!37868 (arr!18170 (Array (_ BitVec 32) (_ BitVec 64))) (size!18534 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37867)

(declare-datatypes ((List!12264 0))(
  ( (Nil!12261) (Cons!12260 (h!13305 (_ BitVec 64)) (t!18500 List!12264)) )
))
(declare-fun arrayNoDuplicates!0 (array!37867 (_ BitVec 32) List!12264) Bool)

(assert (=> b!626885 (= res!404764 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12261))))

(declare-fun b!626886 () Bool)

(declare-fun res!404773 () Bool)

(assert (=> b!626886 (=> (not res!404773) (not e!359038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37867 (_ BitVec 32)) Bool)

(assert (=> b!626886 (= res!404773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626887 () Bool)

(declare-fun res!404774 () Bool)

(assert (=> b!626887 (=> (not res!404774) (not e!359038))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!626887 (= res!404774 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18170 a!2986) index!984) (select (arr!18170 a!2986) j!136))) (not (= (select (arr!18170 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!626888 () Bool)

(declare-fun res!404770 () Bool)

(declare-fun e!359036 () Bool)

(assert (=> b!626888 (=> (not res!404770) (not e!359036))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626888 (= res!404770 (validKeyInArray!0 (select (arr!18170 a!2986) j!136)))))

(declare-fun b!626889 () Bool)

(declare-fun res!404766 () Bool)

(assert (=> b!626889 (=> (not res!404766) (not e!359036))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!626889 (= res!404766 (validKeyInArray!0 k!1786))))

(declare-fun b!626890 () Bool)

(declare-fun res!404771 () Bool)

(assert (=> b!626890 (=> (not res!404771) (not e!359036))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!626890 (= res!404771 (and (= (size!18534 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18534 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18534 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!404765 () Bool)

(assert (=> start!56614 (=> (not res!404765) (not e!359036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56614 (= res!404765 (validMask!0 mask!3053))))

(assert (=> start!56614 e!359036))

(assert (=> start!56614 true))

(declare-fun array_inv!13944 (array!37867) Bool)

(assert (=> start!56614 (array_inv!13944 a!2986)))

(declare-fun b!626891 () Bool)

(declare-fun res!404768 () Bool)

(assert (=> b!626891 (=> (not res!404768) (not e!359038))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6617 0))(
  ( (MissingZero!6617 (index!28751 (_ BitVec 32))) (Found!6617 (index!28752 (_ BitVec 32))) (Intermediate!6617 (undefined!7429 Bool) (index!28753 (_ BitVec 32)) (x!57518 (_ BitVec 32))) (Undefined!6617) (MissingVacant!6617 (index!28754 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37867 (_ BitVec 32)) SeekEntryResult!6617)

(assert (=> b!626891 (= res!404768 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18170 a!2986) j!136) a!2986 mask!3053) (Found!6617 j!136)))))

(declare-fun b!626892 () Bool)

(declare-fun res!404772 () Bool)

(assert (=> b!626892 (=> (not res!404772) (not e!359038))))

(assert (=> b!626892 (= res!404772 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18170 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18170 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626893 () Bool)

(declare-fun res!404769 () Bool)

(assert (=> b!626893 (=> (not res!404769) (not e!359036))))

(declare-fun arrayContainsKey!0 (array!37867 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626893 (= res!404769 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626894 () Bool)

(assert (=> b!626894 (= e!359036 e!359038)))

(declare-fun res!404767 () Bool)

(assert (=> b!626894 (=> (not res!404767) (not e!359038))))

(declare-fun lt!290160 () SeekEntryResult!6617)

(assert (=> b!626894 (= res!404767 (or (= lt!290160 (MissingZero!6617 i!1108)) (= lt!290160 (MissingVacant!6617 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37867 (_ BitVec 32)) SeekEntryResult!6617)

(assert (=> b!626894 (= lt!290160 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!56614 res!404765) b!626890))

(assert (= (and b!626890 res!404771) b!626888))

(assert (= (and b!626888 res!404770) b!626889))

(assert (= (and b!626889 res!404766) b!626893))

(assert (= (and b!626893 res!404769) b!626894))

(assert (= (and b!626894 res!404767) b!626886))

(assert (= (and b!626886 res!404773) b!626885))

(assert (= (and b!626885 res!404764) b!626892))

(assert (= (and b!626892 res!404772) b!626891))

(assert (= (and b!626891 res!404768) b!626887))

(assert (= (and b!626887 res!404774) b!626884))

(declare-fun m!602283 () Bool)

(assert (=> b!626886 m!602283))

(declare-fun m!602285 () Bool)

(assert (=> b!626892 m!602285))

(declare-fun m!602287 () Bool)

(assert (=> b!626892 m!602287))

(declare-fun m!602289 () Bool)

(assert (=> b!626892 m!602289))

(declare-fun m!602291 () Bool)

(assert (=> b!626889 m!602291))

(declare-fun m!602293 () Bool)

(assert (=> b!626884 m!602293))

(declare-fun m!602295 () Bool)

(assert (=> b!626893 m!602295))

(declare-fun m!602297 () Bool)

(assert (=> b!626887 m!602297))

(declare-fun m!602299 () Bool)

(assert (=> b!626887 m!602299))

(assert (=> b!626888 m!602299))

(assert (=> b!626888 m!602299))

(declare-fun m!602301 () Bool)

(assert (=> b!626888 m!602301))

(declare-fun m!602303 () Bool)

(assert (=> b!626894 m!602303))

(assert (=> b!626891 m!602299))

(assert (=> b!626891 m!602299))

(declare-fun m!602305 () Bool)

(assert (=> b!626891 m!602305))

(declare-fun m!602307 () Bool)

(assert (=> start!56614 m!602307))

(declare-fun m!602309 () Bool)

(assert (=> start!56614 m!602309))

(declare-fun m!602311 () Bool)

(assert (=> b!626885 m!602311))

(push 1)

(assert (not b!626885))

(assert (not b!626891))

(assert (not b!626893))

