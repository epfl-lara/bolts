; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56394 () Bool)

(assert start!56394)

(declare-fun b!624708 () Bool)

(declare-fun res!402896 () Bool)

(declare-fun e!358190 () Bool)

(assert (=> b!624708 (=> (not res!402896) (not e!358190))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37737 0))(
  ( (array!37738 (arr!18108 (Array (_ BitVec 32) (_ BitVec 64))) (size!18472 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37737)

(assert (=> b!624708 (= res!402896 (and (= (size!18472 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18472 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18472 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624709 () Bool)

(declare-fun res!402897 () Bool)

(declare-fun e!358191 () Bool)

(assert (=> b!624709 (=> (not res!402897) (not e!358191))))

(declare-datatypes ((List!12202 0))(
  ( (Nil!12199) (Cons!12198 (h!13243 (_ BitVec 64)) (t!18438 List!12202)) )
))
(declare-fun arrayNoDuplicates!0 (array!37737 (_ BitVec 32) List!12202) Bool)

(assert (=> b!624709 (= res!402897 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12199))))

(declare-fun b!624710 () Bool)

(assert (=> b!624710 (= e!358190 e!358191)))

(declare-fun res!402894 () Bool)

(assert (=> b!624710 (=> (not res!402894) (not e!358191))))

(declare-datatypes ((SeekEntryResult!6555 0))(
  ( (MissingZero!6555 (index!28503 (_ BitVec 32))) (Found!6555 (index!28504 (_ BitVec 32))) (Intermediate!6555 (undefined!7367 Bool) (index!28505 (_ BitVec 32)) (x!57290 (_ BitVec 32))) (Undefined!6555) (MissingVacant!6555 (index!28506 (_ BitVec 32))) )
))
(declare-fun lt!289664 () SeekEntryResult!6555)

(assert (=> b!624710 (= res!402894 (or (= lt!289664 (MissingZero!6555 i!1108)) (= lt!289664 (MissingVacant!6555 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37737 (_ BitVec 32)) SeekEntryResult!6555)

(assert (=> b!624710 (= lt!289664 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!624711 () Bool)

(declare-fun res!402900 () Bool)

(assert (=> b!624711 (=> (not res!402900) (not e!358190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624711 (= res!402900 (validKeyInArray!0 k!1786))))

(declare-fun b!624712 () Bool)

(declare-fun res!402898 () Bool)

(assert (=> b!624712 (=> (not res!402898) (not e!358191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37737 (_ BitVec 32)) Bool)

(assert (=> b!624712 (= res!402898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624713 () Bool)

(declare-fun res!402895 () Bool)

(assert (=> b!624713 (=> (not res!402895) (not e!358191))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!624713 (= res!402895 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18108 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18108 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!624714 () Bool)

(declare-fun res!402899 () Bool)

(assert (=> b!624714 (=> (not res!402899) (not e!358190))))

(assert (=> b!624714 (= res!402899 (validKeyInArray!0 (select (arr!18108 a!2986) j!136)))))

(declare-fun b!624715 () Bool)

(assert (=> b!624715 (= e!358191 false)))

(declare-fun lt!289665 () SeekEntryResult!6555)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37737 (_ BitVec 32)) SeekEntryResult!6555)

(assert (=> b!624715 (= lt!289665 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18108 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!402901 () Bool)

(assert (=> start!56394 (=> (not res!402901) (not e!358190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56394 (= res!402901 (validMask!0 mask!3053))))

(assert (=> start!56394 e!358190))

(assert (=> start!56394 true))

(declare-fun array_inv!13882 (array!37737) Bool)

(assert (=> start!56394 (array_inv!13882 a!2986)))

(declare-fun b!624716 () Bool)

(declare-fun res!402902 () Bool)

(assert (=> b!624716 (=> (not res!402902) (not e!358190))))

(declare-fun arrayContainsKey!0 (array!37737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624716 (= res!402902 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!56394 res!402901) b!624708))

(assert (= (and b!624708 res!402896) b!624714))

(assert (= (and b!624714 res!402899) b!624711))

(assert (= (and b!624711 res!402900) b!624716))

(assert (= (and b!624716 res!402902) b!624710))

(assert (= (and b!624710 res!402894) b!624712))

(assert (= (and b!624712 res!402898) b!624709))

(assert (= (and b!624709 res!402897) b!624713))

(assert (= (and b!624713 res!402895) b!624715))

(declare-fun m!600357 () Bool)

(assert (=> b!624714 m!600357))

(assert (=> b!624714 m!600357))

(declare-fun m!600359 () Bool)

(assert (=> b!624714 m!600359))

(declare-fun m!600361 () Bool)

(assert (=> b!624711 m!600361))

(declare-fun m!600363 () Bool)

(assert (=> b!624713 m!600363))

(declare-fun m!600365 () Bool)

(assert (=> b!624713 m!600365))

(declare-fun m!600367 () Bool)

(assert (=> b!624713 m!600367))

(declare-fun m!600369 () Bool)

(assert (=> b!624716 m!600369))

(assert (=> b!624715 m!600357))

(assert (=> b!624715 m!600357))

(declare-fun m!600371 () Bool)

(assert (=> b!624715 m!600371))

(declare-fun m!600373 () Bool)

(assert (=> b!624709 m!600373))

(declare-fun m!600375 () Bool)

(assert (=> b!624710 m!600375))

(declare-fun m!600377 () Bool)

(assert (=> start!56394 m!600377))

(declare-fun m!600379 () Bool)

(assert (=> start!56394 m!600379))

(declare-fun m!600381 () Bool)

(assert (=> b!624712 m!600381))

(push 1)

