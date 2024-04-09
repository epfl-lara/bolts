; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56680 () Bool)

(assert start!56680)

(declare-fun res!405861 () Bool)

(declare-fun e!359333 () Bool)

(assert (=> start!56680 (=> (not res!405861) (not e!359333))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56680 (= res!405861 (validMask!0 mask!3053))))

(assert (=> start!56680 e!359333))

(assert (=> start!56680 true))

(declare-datatypes ((array!37933 0))(
  ( (array!37934 (arr!18203 (Array (_ BitVec 32) (_ BitVec 64))) (size!18567 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37933)

(declare-fun array_inv!13977 (array!37933) Bool)

(assert (=> start!56680 (array_inv!13977 a!2986)))

(declare-fun b!627973 () Bool)

(declare-fun res!405853 () Bool)

(declare-fun e!359334 () Bool)

(assert (=> b!627973 (=> (not res!405853) (not e!359334))))

(declare-datatypes ((List!12297 0))(
  ( (Nil!12294) (Cons!12293 (h!13338 (_ BitVec 64)) (t!18533 List!12297)) )
))
(declare-fun arrayNoDuplicates!0 (array!37933 (_ BitVec 32) List!12297) Bool)

(assert (=> b!627973 (= res!405853 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12294))))

(declare-fun b!627974 () Bool)

(declare-fun res!405860 () Bool)

(assert (=> b!627974 (=> (not res!405860) (not e!359333))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627974 (= res!405860 (and (= (size!18567 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18567 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18567 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627975 () Bool)

(declare-fun res!405857 () Bool)

(assert (=> b!627975 (=> (not res!405857) (not e!359333))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627975 (= res!405857 (validKeyInArray!0 (select (arr!18203 a!2986) j!136)))))

(declare-fun b!627976 () Bool)

(declare-fun res!405854 () Bool)

(assert (=> b!627976 (=> (not res!405854) (not e!359333))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37933 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627976 (= res!405854 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627977 () Bool)

(declare-fun res!405863 () Bool)

(assert (=> b!627977 (=> (not res!405863) (not e!359334))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!627977 (= res!405863 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18203 a!2986) index!984) (select (arr!18203 a!2986) j!136))) (not (= (select (arr!18203 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627978 () Bool)

(declare-fun res!405856 () Bool)

(assert (=> b!627978 (=> (not res!405856) (not e!359334))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6650 0))(
  ( (MissingZero!6650 (index!28883 (_ BitVec 32))) (Found!6650 (index!28884 (_ BitVec 32))) (Intermediate!6650 (undefined!7462 Bool) (index!28885 (_ BitVec 32)) (x!57639 (_ BitVec 32))) (Undefined!6650) (MissingVacant!6650 (index!28886 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37933 (_ BitVec 32)) SeekEntryResult!6650)

(assert (=> b!627978 (= res!405856 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18203 a!2986) j!136) a!2986 mask!3053) (Found!6650 j!136)))))

(declare-fun b!627979 () Bool)

(assert (=> b!627979 (= e!359334 false)))

(declare-fun lt!290357 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627979 (= lt!290357 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627980 () Bool)

(assert (=> b!627980 (= e!359333 e!359334)))

(declare-fun res!405858 () Bool)

(assert (=> b!627980 (=> (not res!405858) (not e!359334))))

(declare-fun lt!290358 () SeekEntryResult!6650)

(assert (=> b!627980 (= res!405858 (or (= lt!290358 (MissingZero!6650 i!1108)) (= lt!290358 (MissingVacant!6650 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37933 (_ BitVec 32)) SeekEntryResult!6650)

(assert (=> b!627980 (= lt!290358 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627981 () Bool)

(declare-fun res!405859 () Bool)

(assert (=> b!627981 (=> (not res!405859) (not e!359334))))

(assert (=> b!627981 (= res!405859 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18203 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18203 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627982 () Bool)

(declare-fun res!405855 () Bool)

(assert (=> b!627982 (=> (not res!405855) (not e!359334))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37933 (_ BitVec 32)) Bool)

(assert (=> b!627982 (= res!405855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627983 () Bool)

(declare-fun res!405862 () Bool)

(assert (=> b!627983 (=> (not res!405862) (not e!359333))))

(assert (=> b!627983 (= res!405862 (validKeyInArray!0 k!1786))))

(assert (= (and start!56680 res!405861) b!627974))

(assert (= (and b!627974 res!405860) b!627975))

(assert (= (and b!627975 res!405857) b!627983))

(assert (= (and b!627983 res!405862) b!627976))

(assert (= (and b!627976 res!405854) b!627980))

(assert (= (and b!627980 res!405858) b!627982))

(assert (= (and b!627982 res!405855) b!627973))

(assert (= (and b!627973 res!405853) b!627981))

(assert (= (and b!627981 res!405859) b!627978))

(assert (= (and b!627978 res!405856) b!627977))

(assert (= (and b!627977 res!405863) b!627979))

(declare-fun m!603273 () Bool)

(assert (=> b!627978 m!603273))

(assert (=> b!627978 m!603273))

(declare-fun m!603275 () Bool)

(assert (=> b!627978 m!603275))

(declare-fun m!603277 () Bool)

(assert (=> b!627977 m!603277))

(assert (=> b!627977 m!603273))

(declare-fun m!603279 () Bool)

(assert (=> b!627973 m!603279))

(declare-fun m!603281 () Bool)

(assert (=> start!56680 m!603281))

(declare-fun m!603283 () Bool)

(assert (=> start!56680 m!603283))

(declare-fun m!603285 () Bool)

(assert (=> b!627976 m!603285))

(declare-fun m!603287 () Bool)

(assert (=> b!627979 m!603287))

(assert (=> b!627975 m!603273))

(assert (=> b!627975 m!603273))

(declare-fun m!603289 () Bool)

(assert (=> b!627975 m!603289))

(declare-fun m!603291 () Bool)

(assert (=> b!627980 m!603291))

(declare-fun m!603293 () Bool)

(assert (=> b!627981 m!603293))

(declare-fun m!603295 () Bool)

(assert (=> b!627981 m!603295))

(declare-fun m!603297 () Bool)

(assert (=> b!627981 m!603297))

(declare-fun m!603299 () Bool)

(assert (=> b!627983 m!603299))

(declare-fun m!603301 () Bool)

(assert (=> b!627982 m!603301))

(push 1)

(assert (not start!56680))

(assert (not b!627979))

(assert (not b!627982))

(assert (not b!627973))

(assert (not b!627980))

