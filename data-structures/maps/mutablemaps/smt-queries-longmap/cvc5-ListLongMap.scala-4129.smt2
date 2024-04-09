; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56328 () Bool)

(assert start!56328)

(declare-fun b!624249 () Bool)

(declare-fun res!402586 () Bool)

(declare-fun e!357975 () Bool)

(assert (=> b!624249 (=> (not res!402586) (not e!357975))))

(declare-datatypes ((array!37716 0))(
  ( (array!37717 (arr!18099 (Array (_ BitVec 32) (_ BitVec 64))) (size!18463 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37716)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37716 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624249 (= res!402586 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624250 () Bool)

(declare-fun res!402584 () Bool)

(declare-fun e!357976 () Bool)

(assert (=> b!624250 (=> (not res!402584) (not e!357976))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37716 (_ BitVec 32)) Bool)

(assert (=> b!624250 (= res!402584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624251 () Bool)

(declare-fun res!402580 () Bool)

(assert (=> b!624251 (=> (not res!402580) (not e!357975))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624251 (= res!402580 (validKeyInArray!0 k!1786))))

(declare-fun b!624252 () Bool)

(declare-fun res!402579 () Bool)

(assert (=> b!624252 (=> (not res!402579) (not e!357975))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624252 (= res!402579 (and (= (size!18463 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18463 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18463 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624253 () Bool)

(declare-fun res!402587 () Bool)

(assert (=> b!624253 (=> (not res!402587) (not e!357976))))

(declare-datatypes ((List!12193 0))(
  ( (Nil!12190) (Cons!12189 (h!13234 (_ BitVec 64)) (t!18429 List!12193)) )
))
(declare-fun arrayNoDuplicates!0 (array!37716 (_ BitVec 32) List!12193) Bool)

(assert (=> b!624253 (= res!402587 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12190))))

(declare-fun b!624254 () Bool)

(assert (=> b!624254 (= e!357975 e!357976)))

(declare-fun res!402585 () Bool)

(assert (=> b!624254 (=> (not res!402585) (not e!357976))))

(declare-datatypes ((SeekEntryResult!6546 0))(
  ( (MissingZero!6546 (index!28467 (_ BitVec 32))) (Found!6546 (index!28468 (_ BitVec 32))) (Intermediate!6546 (undefined!7358 Bool) (index!28469 (_ BitVec 32)) (x!57254 (_ BitVec 32))) (Undefined!6546) (MissingVacant!6546 (index!28470 (_ BitVec 32))) )
))
(declare-fun lt!289548 () SeekEntryResult!6546)

(assert (=> b!624254 (= res!402585 (or (= lt!289548 (MissingZero!6546 i!1108)) (= lt!289548 (MissingVacant!6546 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37716 (_ BitVec 32)) SeekEntryResult!6546)

(assert (=> b!624254 (= lt!289548 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!402583 () Bool)

(assert (=> start!56328 (=> (not res!402583) (not e!357975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56328 (= res!402583 (validMask!0 mask!3053))))

(assert (=> start!56328 e!357975))

(assert (=> start!56328 true))

(declare-fun array_inv!13873 (array!37716) Bool)

(assert (=> start!56328 (array_inv!13873 a!2986)))

(declare-fun b!624255 () Bool)

(declare-fun res!402582 () Bool)

(assert (=> b!624255 (=> (not res!402582) (not e!357976))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!624255 (= res!402582 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18099 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18099 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!624256 () Bool)

(declare-fun res!402581 () Bool)

(assert (=> b!624256 (=> (not res!402581) (not e!357975))))

(assert (=> b!624256 (= res!402581 (validKeyInArray!0 (select (arr!18099 a!2986) j!136)))))

(declare-fun b!624257 () Bool)

(assert (=> b!624257 (= e!357976 false)))

(declare-fun lt!289547 () SeekEntryResult!6546)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37716 (_ BitVec 32)) SeekEntryResult!6546)

(assert (=> b!624257 (= lt!289547 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18099 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!56328 res!402583) b!624252))

(assert (= (and b!624252 res!402579) b!624256))

(assert (= (and b!624256 res!402581) b!624251))

(assert (= (and b!624251 res!402580) b!624249))

(assert (= (and b!624249 res!402586) b!624254))

(assert (= (and b!624254 res!402585) b!624250))

(assert (= (and b!624250 res!402584) b!624253))

(assert (= (and b!624253 res!402587) b!624255))

(assert (= (and b!624255 res!402582) b!624257))

(declare-fun m!599997 () Bool)

(assert (=> b!624256 m!599997))

(assert (=> b!624256 m!599997))

(declare-fun m!599999 () Bool)

(assert (=> b!624256 m!599999))

(declare-fun m!600001 () Bool)

(assert (=> b!624249 m!600001))

(declare-fun m!600003 () Bool)

(assert (=> start!56328 m!600003))

(declare-fun m!600005 () Bool)

(assert (=> start!56328 m!600005))

(declare-fun m!600007 () Bool)

(assert (=> b!624254 m!600007))

(assert (=> b!624257 m!599997))

(assert (=> b!624257 m!599997))

(declare-fun m!600009 () Bool)

(assert (=> b!624257 m!600009))

(declare-fun m!600011 () Bool)

(assert (=> b!624255 m!600011))

(declare-fun m!600013 () Bool)

(assert (=> b!624255 m!600013))

(declare-fun m!600015 () Bool)

(assert (=> b!624255 m!600015))

(declare-fun m!600017 () Bool)

(assert (=> b!624250 m!600017))

(declare-fun m!600019 () Bool)

(assert (=> b!624251 m!600019))

(declare-fun m!600021 () Bool)

(assert (=> b!624253 m!600021))

(push 1)

