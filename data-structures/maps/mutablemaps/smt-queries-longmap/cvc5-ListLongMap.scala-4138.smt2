; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56430 () Bool)

(assert start!56430)

(declare-fun b!625203 () Bool)

(declare-fun e!358354 () Bool)

(assert (=> b!625203 (= e!358354 false)))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6573 0))(
  ( (MissingZero!6573 (index!28575 (_ BitVec 32))) (Found!6573 (index!28576 (_ BitVec 32))) (Intermediate!6573 (undefined!7385 Bool) (index!28577 (_ BitVec 32)) (x!57356 (_ BitVec 32))) (Undefined!6573) (MissingVacant!6573 (index!28578 (_ BitVec 32))) )
))
(declare-fun lt!289764 () SeekEntryResult!6573)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37773 0))(
  ( (array!37774 (arr!18126 (Array (_ BitVec 32) (_ BitVec 64))) (size!18490 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37773)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37773 (_ BitVec 32)) SeekEntryResult!6573)

(assert (=> b!625203 (= lt!289764 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18126 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!625204 () Bool)

(declare-fun res!403390 () Bool)

(assert (=> b!625204 (=> (not res!403390) (not e!358354))))

(declare-datatypes ((List!12220 0))(
  ( (Nil!12217) (Cons!12216 (h!13261 (_ BitVec 64)) (t!18456 List!12220)) )
))
(declare-fun arrayNoDuplicates!0 (array!37773 (_ BitVec 32) List!12220) Bool)

(assert (=> b!625204 (= res!403390 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12217))))

(declare-fun res!403392 () Bool)

(declare-fun e!358352 () Bool)

(assert (=> start!56430 (=> (not res!403392) (not e!358352))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56430 (= res!403392 (validMask!0 mask!3053))))

(assert (=> start!56430 e!358352))

(assert (=> start!56430 true))

(declare-fun array_inv!13900 (array!37773) Bool)

(assert (=> start!56430 (array_inv!13900 a!2986)))

(declare-fun b!625205 () Bool)

(declare-fun res!403396 () Bool)

(assert (=> b!625205 (=> (not res!403396) (not e!358352))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625205 (= res!403396 (validKeyInArray!0 (select (arr!18126 a!2986) j!136)))))

(declare-fun b!625206 () Bool)

(declare-fun res!403391 () Bool)

(assert (=> b!625206 (=> (not res!403391) (not e!358352))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625206 (= res!403391 (and (= (size!18490 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18490 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18490 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625207 () Bool)

(assert (=> b!625207 (= e!358352 e!358354)))

(declare-fun res!403393 () Bool)

(assert (=> b!625207 (=> (not res!403393) (not e!358354))))

(declare-fun lt!289763 () SeekEntryResult!6573)

(assert (=> b!625207 (= res!403393 (or (= lt!289763 (MissingZero!6573 i!1108)) (= lt!289763 (MissingVacant!6573 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37773 (_ BitVec 32)) SeekEntryResult!6573)

(assert (=> b!625207 (= lt!289763 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!625208 () Bool)

(declare-fun res!403389 () Bool)

(assert (=> b!625208 (=> (not res!403389) (not e!358354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37773 (_ BitVec 32)) Bool)

(assert (=> b!625208 (= res!403389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625209 () Bool)

(declare-fun res!403395 () Bool)

(assert (=> b!625209 (=> (not res!403395) (not e!358352))))

(declare-fun arrayContainsKey!0 (array!37773 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625209 (= res!403395 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625210 () Bool)

(declare-fun res!403397 () Bool)

(assert (=> b!625210 (=> (not res!403397) (not e!358354))))

(assert (=> b!625210 (= res!403397 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18126 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18126 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625211 () Bool)

(declare-fun res!403394 () Bool)

(assert (=> b!625211 (=> (not res!403394) (not e!358352))))

(assert (=> b!625211 (= res!403394 (validKeyInArray!0 k!1786))))

(assert (= (and start!56430 res!403392) b!625206))

(assert (= (and b!625206 res!403391) b!625205))

(assert (= (and b!625205 res!403396) b!625211))

(assert (= (and b!625211 res!403394) b!625209))

(assert (= (and b!625209 res!403395) b!625207))

(assert (= (and b!625207 res!403393) b!625208))

(assert (= (and b!625208 res!403389) b!625204))

(assert (= (and b!625204 res!403390) b!625210))

(assert (= (and b!625210 res!403397) b!625203))

(declare-fun m!600825 () Bool)

(assert (=> b!625211 m!600825))

(declare-fun m!600827 () Bool)

(assert (=> b!625205 m!600827))

(assert (=> b!625205 m!600827))

(declare-fun m!600829 () Bool)

(assert (=> b!625205 m!600829))

(declare-fun m!600831 () Bool)

(assert (=> b!625204 m!600831))

(declare-fun m!600833 () Bool)

(assert (=> b!625207 m!600833))

(declare-fun m!600835 () Bool)

(assert (=> b!625210 m!600835))

(declare-fun m!600837 () Bool)

(assert (=> b!625210 m!600837))

(declare-fun m!600839 () Bool)

(assert (=> b!625210 m!600839))

(declare-fun m!600841 () Bool)

(assert (=> start!56430 m!600841))

(declare-fun m!600843 () Bool)

(assert (=> start!56430 m!600843))

(declare-fun m!600845 () Bool)

(assert (=> b!625208 m!600845))

(assert (=> b!625203 m!600827))

(assert (=> b!625203 m!600827))

(declare-fun m!600847 () Bool)

(assert (=> b!625203 m!600847))

(declare-fun m!600849 () Bool)

(assert (=> b!625209 m!600849))

(push 1)

