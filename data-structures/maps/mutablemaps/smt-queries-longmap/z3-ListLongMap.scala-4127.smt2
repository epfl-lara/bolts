; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56318 () Bool)

(assert start!56318)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun b!624136 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun e!357929 () Bool)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37706 0))(
  ( (array!37707 (arr!18094 (Array (_ BitVec 32) (_ BitVec 64))) (size!18458 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37706)

(assert (=> b!624136 (= e!357929 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18094 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantSpotIndex!68 (size!18458 a!2986))))))

(declare-fun b!624137 () Bool)

(declare-fun res!402466 () Bool)

(declare-fun e!357930 () Bool)

(assert (=> b!624137 (=> (not res!402466) (not e!357930))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624137 (= res!402466 (validKeyInArray!0 k0!1786))))

(declare-fun b!624138 () Bool)

(declare-fun res!402471 () Bool)

(assert (=> b!624138 (=> (not res!402471) (not e!357929))))

(declare-datatypes ((List!12188 0))(
  ( (Nil!12185) (Cons!12184 (h!13229 (_ BitVec 64)) (t!18424 List!12188)) )
))
(declare-fun arrayNoDuplicates!0 (array!37706 (_ BitVec 32) List!12188) Bool)

(assert (=> b!624138 (= res!402471 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12185))))

(declare-fun b!624139 () Bool)

(declare-fun res!402467 () Bool)

(assert (=> b!624139 (=> (not res!402467) (not e!357930))))

(declare-fun arrayContainsKey!0 (array!37706 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624139 (= res!402467 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!402469 () Bool)

(assert (=> start!56318 (=> (not res!402469) (not e!357930))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56318 (= res!402469 (validMask!0 mask!3053))))

(assert (=> start!56318 e!357930))

(assert (=> start!56318 true))

(declare-fun array_inv!13868 (array!37706) Bool)

(assert (=> start!56318 (array_inv!13868 a!2986)))

(declare-fun b!624140 () Bool)

(declare-fun res!402468 () Bool)

(assert (=> b!624140 (=> (not res!402468) (not e!357930))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624140 (= res!402468 (and (= (size!18458 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18458 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18458 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624141 () Bool)

(declare-fun res!402470 () Bool)

(assert (=> b!624141 (=> (not res!402470) (not e!357929))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37706 (_ BitVec 32)) Bool)

(assert (=> b!624141 (= res!402470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624142 () Bool)

(declare-fun res!402473 () Bool)

(assert (=> b!624142 (=> (not res!402473) (not e!357930))))

(assert (=> b!624142 (= res!402473 (validKeyInArray!0 (select (arr!18094 a!2986) j!136)))))

(declare-fun b!624143 () Bool)

(assert (=> b!624143 (= e!357930 e!357929)))

(declare-fun res!402472 () Bool)

(assert (=> b!624143 (=> (not res!402472) (not e!357929))))

(declare-datatypes ((SeekEntryResult!6541 0))(
  ( (MissingZero!6541 (index!28447 (_ BitVec 32))) (Found!6541 (index!28448 (_ BitVec 32))) (Intermediate!6541 (undefined!7353 Bool) (index!28449 (_ BitVec 32)) (x!57233 (_ BitVec 32))) (Undefined!6541) (MissingVacant!6541 (index!28450 (_ BitVec 32))) )
))
(declare-fun lt!289521 () SeekEntryResult!6541)

(assert (=> b!624143 (= res!402472 (or (= lt!289521 (MissingZero!6541 i!1108)) (= lt!289521 (MissingVacant!6541 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37706 (_ BitVec 32)) SeekEntryResult!6541)

(assert (=> b!624143 (= lt!289521 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!56318 res!402469) b!624140))

(assert (= (and b!624140 res!402468) b!624142))

(assert (= (and b!624142 res!402473) b!624137))

(assert (= (and b!624137 res!402466) b!624139))

(assert (= (and b!624139 res!402467) b!624143))

(assert (= (and b!624143 res!402472) b!624141))

(assert (= (and b!624141 res!402470) b!624138))

(assert (= (and b!624138 res!402471) b!624136))

(declare-fun m!599903 () Bool)

(assert (=> b!624138 m!599903))

(declare-fun m!599905 () Bool)

(assert (=> b!624143 m!599905))

(declare-fun m!599907 () Bool)

(assert (=> b!624136 m!599907))

(declare-fun m!599909 () Bool)

(assert (=> b!624142 m!599909))

(assert (=> b!624142 m!599909))

(declare-fun m!599911 () Bool)

(assert (=> b!624142 m!599911))

(declare-fun m!599913 () Bool)

(assert (=> b!624137 m!599913))

(declare-fun m!599915 () Bool)

(assert (=> b!624141 m!599915))

(declare-fun m!599917 () Bool)

(assert (=> start!56318 m!599917))

(declare-fun m!599919 () Bool)

(assert (=> start!56318 m!599919))

(declare-fun m!599921 () Bool)

(assert (=> b!624139 m!599921))

(check-sat (not b!624139) (not b!624138) (not start!56318) (not b!624137) (not b!624143) (not b!624141) (not b!624142))
(check-sat)
