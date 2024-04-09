; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56410 () Bool)

(assert start!56410)

(declare-fun b!624924 () Bool)

(declare-fun res!403110 () Bool)

(declare-fun e!358264 () Bool)

(assert (=> b!624924 (=> (not res!403110) (not e!358264))))

(declare-datatypes ((array!37753 0))(
  ( (array!37754 (arr!18116 (Array (_ BitVec 32) (_ BitVec 64))) (size!18480 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37753)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37753 (_ BitVec 32)) Bool)

(assert (=> b!624924 (= res!403110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624925 () Bool)

(assert (=> b!624925 (= e!358264 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6563 0))(
  ( (MissingZero!6563 (index!28535 (_ BitVec 32))) (Found!6563 (index!28536 (_ BitVec 32))) (Intermediate!6563 (undefined!7375 Bool) (index!28537 (_ BitVec 32)) (x!57314 (_ BitVec 32))) (Undefined!6563) (MissingVacant!6563 (index!28538 (_ BitVec 32))) )
))
(declare-fun lt!289713 () SeekEntryResult!6563)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37753 (_ BitVec 32)) SeekEntryResult!6563)

(assert (=> b!624925 (= lt!289713 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18116 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!624926 () Bool)

(declare-fun res!403111 () Bool)

(declare-fun e!358263 () Bool)

(assert (=> b!624926 (=> (not res!403111) (not e!358263))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624926 (= res!403111 (validKeyInArray!0 k!1786))))

(declare-fun b!624927 () Bool)

(declare-fun res!403112 () Bool)

(assert (=> b!624927 (=> (not res!403112) (not e!358263))))

(assert (=> b!624927 (= res!403112 (validKeyInArray!0 (select (arr!18116 a!2986) j!136)))))

(declare-fun b!624928 () Bool)

(assert (=> b!624928 (= e!358263 e!358264)))

(declare-fun res!403118 () Bool)

(assert (=> b!624928 (=> (not res!403118) (not e!358264))))

(declare-fun lt!289712 () SeekEntryResult!6563)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624928 (= res!403118 (or (= lt!289712 (MissingZero!6563 i!1108)) (= lt!289712 (MissingVacant!6563 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37753 (_ BitVec 32)) SeekEntryResult!6563)

(assert (=> b!624928 (= lt!289712 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!624929 () Bool)

(declare-fun res!403113 () Bool)

(assert (=> b!624929 (=> (not res!403113) (not e!358264))))

(declare-datatypes ((List!12210 0))(
  ( (Nil!12207) (Cons!12206 (h!13251 (_ BitVec 64)) (t!18446 List!12210)) )
))
(declare-fun arrayNoDuplicates!0 (array!37753 (_ BitVec 32) List!12210) Bool)

(assert (=> b!624929 (= res!403113 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12207))))

(declare-fun b!624930 () Bool)

(declare-fun res!403117 () Bool)

(assert (=> b!624930 (=> (not res!403117) (not e!358264))))

(assert (=> b!624930 (= res!403117 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18116 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18116 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!403115 () Bool)

(assert (=> start!56410 (=> (not res!403115) (not e!358263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56410 (= res!403115 (validMask!0 mask!3053))))

(assert (=> start!56410 e!358263))

(assert (=> start!56410 true))

(declare-fun array_inv!13890 (array!37753) Bool)

(assert (=> start!56410 (array_inv!13890 a!2986)))

(declare-fun b!624931 () Bool)

(declare-fun res!403114 () Bool)

(assert (=> b!624931 (=> (not res!403114) (not e!358263))))

(declare-fun arrayContainsKey!0 (array!37753 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624931 (= res!403114 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624932 () Bool)

(declare-fun res!403116 () Bool)

(assert (=> b!624932 (=> (not res!403116) (not e!358263))))

(assert (=> b!624932 (= res!403116 (and (= (size!18480 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18480 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18480 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!56410 res!403115) b!624932))

(assert (= (and b!624932 res!403116) b!624927))

(assert (= (and b!624927 res!403112) b!624926))

(assert (= (and b!624926 res!403111) b!624931))

(assert (= (and b!624931 res!403114) b!624928))

(assert (= (and b!624928 res!403118) b!624924))

(assert (= (and b!624924 res!403110) b!624929))

(assert (= (and b!624929 res!403113) b!624930))

(assert (= (and b!624930 res!403117) b!624925))

(declare-fun m!600565 () Bool)

(assert (=> b!624931 m!600565))

(declare-fun m!600567 () Bool)

(assert (=> start!56410 m!600567))

(declare-fun m!600569 () Bool)

(assert (=> start!56410 m!600569))

(declare-fun m!600571 () Bool)

(assert (=> b!624929 m!600571))

(declare-fun m!600573 () Bool)

(assert (=> b!624926 m!600573))

(declare-fun m!600575 () Bool)

(assert (=> b!624928 m!600575))

(declare-fun m!600577 () Bool)

(assert (=> b!624930 m!600577))

(declare-fun m!600579 () Bool)

(assert (=> b!624930 m!600579))

(declare-fun m!600581 () Bool)

(assert (=> b!624930 m!600581))

(declare-fun m!600583 () Bool)

(assert (=> b!624927 m!600583))

(assert (=> b!624927 m!600583))

(declare-fun m!600585 () Bool)

(assert (=> b!624927 m!600585))

(assert (=> b!624925 m!600583))

(assert (=> b!624925 m!600583))

(declare-fun m!600587 () Bool)

(assert (=> b!624925 m!600587))

(declare-fun m!600589 () Bool)

(assert (=> b!624924 m!600589))

(push 1)

(assert (not b!624931))

(assert (not b!624928))

