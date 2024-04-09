; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56412 () Bool)

(assert start!56412)

(declare-fun b!624951 () Bool)

(declare-fun e!358271 () Bool)

(declare-fun e!358273 () Bool)

(assert (=> b!624951 (= e!358271 e!358273)))

(declare-fun res!403140 () Bool)

(assert (=> b!624951 (=> (not res!403140) (not e!358273))))

(declare-datatypes ((SeekEntryResult!6564 0))(
  ( (MissingZero!6564 (index!28539 (_ BitVec 32))) (Found!6564 (index!28540 (_ BitVec 32))) (Intermediate!6564 (undefined!7376 Bool) (index!28541 (_ BitVec 32)) (x!57323 (_ BitVec 32))) (Undefined!6564) (MissingVacant!6564 (index!28542 (_ BitVec 32))) )
))
(declare-fun lt!289719 () SeekEntryResult!6564)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624951 (= res!403140 (or (= lt!289719 (MissingZero!6564 i!1108)) (= lt!289719 (MissingVacant!6564 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!37755 0))(
  ( (array!37756 (arr!18117 (Array (_ BitVec 32) (_ BitVec 64))) (size!18481 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37755)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37755 (_ BitVec 32)) SeekEntryResult!6564)

(assert (=> b!624951 (= lt!289719 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!624952 () Bool)

(declare-fun res!403143 () Bool)

(assert (=> b!624952 (=> (not res!403143) (not e!358271))))

(declare-fun arrayContainsKey!0 (array!37755 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624952 (= res!403143 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!403144 () Bool)

(assert (=> start!56412 (=> (not res!403144) (not e!358271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56412 (= res!403144 (validMask!0 mask!3053))))

(assert (=> start!56412 e!358271))

(assert (=> start!56412 true))

(declare-fun array_inv!13891 (array!37755) Bool)

(assert (=> start!56412 (array_inv!13891 a!2986)))

(declare-fun b!624953 () Bool)

(declare-fun res!403145 () Bool)

(assert (=> b!624953 (=> (not res!403145) (not e!358273))))

(declare-datatypes ((List!12211 0))(
  ( (Nil!12208) (Cons!12207 (h!13252 (_ BitVec 64)) (t!18447 List!12211)) )
))
(declare-fun arrayNoDuplicates!0 (array!37755 (_ BitVec 32) List!12211) Bool)

(assert (=> b!624953 (= res!403145 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12208))))

(declare-fun b!624954 () Bool)

(declare-fun res!403139 () Bool)

(assert (=> b!624954 (=> (not res!403139) (not e!358273))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!624954 (= res!403139 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18117 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18117 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!624955 () Bool)

(declare-fun res!403137 () Bool)

(assert (=> b!624955 (=> (not res!403137) (not e!358273))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37755 (_ BitVec 32)) Bool)

(assert (=> b!624955 (= res!403137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624956 () Bool)

(declare-fun res!403142 () Bool)

(assert (=> b!624956 (=> (not res!403142) (not e!358271))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624956 (= res!403142 (validKeyInArray!0 (select (arr!18117 a!2986) j!136)))))

(declare-fun b!624957 () Bool)

(declare-fun res!403138 () Bool)

(assert (=> b!624957 (=> (not res!403138) (not e!358271))))

(assert (=> b!624957 (= res!403138 (validKeyInArray!0 k!1786))))

(declare-fun b!624958 () Bool)

(assert (=> b!624958 (= e!358273 false)))

(declare-fun lt!289718 () SeekEntryResult!6564)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37755 (_ BitVec 32)) SeekEntryResult!6564)

(assert (=> b!624958 (= lt!289718 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18117 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!624959 () Bool)

(declare-fun res!403141 () Bool)

(assert (=> b!624959 (=> (not res!403141) (not e!358271))))

(assert (=> b!624959 (= res!403141 (and (= (size!18481 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18481 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18481 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!56412 res!403144) b!624959))

(assert (= (and b!624959 res!403141) b!624956))

(assert (= (and b!624956 res!403142) b!624957))

(assert (= (and b!624957 res!403138) b!624952))

(assert (= (and b!624952 res!403143) b!624951))

(assert (= (and b!624951 res!403140) b!624955))

(assert (= (and b!624955 res!403137) b!624953))

(assert (= (and b!624953 res!403145) b!624954))

(assert (= (and b!624954 res!403139) b!624958))

(declare-fun m!600591 () Bool)

(assert (=> b!624955 m!600591))

(declare-fun m!600593 () Bool)

(assert (=> b!624952 m!600593))

(declare-fun m!600595 () Bool)

(assert (=> b!624953 m!600595))

(declare-fun m!600597 () Bool)

(assert (=> b!624957 m!600597))

(declare-fun m!600599 () Bool)

(assert (=> b!624958 m!600599))

(assert (=> b!624958 m!600599))

(declare-fun m!600601 () Bool)

(assert (=> b!624958 m!600601))

(declare-fun m!600603 () Bool)

(assert (=> b!624954 m!600603))

(declare-fun m!600605 () Bool)

(assert (=> b!624954 m!600605))

(declare-fun m!600607 () Bool)

(assert (=> b!624954 m!600607))

(declare-fun m!600609 () Bool)

(assert (=> b!624951 m!600609))

(assert (=> b!624956 m!600599))

(assert (=> b!624956 m!600599))

(declare-fun m!600611 () Bool)

(assert (=> b!624956 m!600611))

(declare-fun m!600613 () Bool)

(assert (=> start!56412 m!600613))

(declare-fun m!600615 () Bool)

(assert (=> start!56412 m!600615))

(push 1)

