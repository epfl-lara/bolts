; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56590 () Bool)

(assert start!56590)

(declare-fun b!626526 () Bool)

(declare-fun e!358928 () Bool)

(declare-fun e!358929 () Bool)

(assert (=> b!626526 (= e!358928 e!358929)))

(declare-fun res!404414 () Bool)

(assert (=> b!626526 (=> (not res!404414) (not e!358929))))

(declare-datatypes ((SeekEntryResult!6605 0))(
  ( (MissingZero!6605 (index!28703 (_ BitVec 32))) (Found!6605 (index!28704 (_ BitVec 32))) (Intermediate!6605 (undefined!7417 Bool) (index!28705 (_ BitVec 32)) (x!57474 (_ BitVec 32))) (Undefined!6605) (MissingVacant!6605 (index!28706 (_ BitVec 32))) )
))
(declare-fun lt!290087 () SeekEntryResult!6605)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!626526 (= res!404414 (or (= lt!290087 (MissingZero!6605 i!1108)) (= lt!290087 (MissingVacant!6605 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37843 0))(
  ( (array!37844 (arr!18158 (Array (_ BitVec 32) (_ BitVec 64))) (size!18522 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37843)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37843 (_ BitVec 32)) SeekEntryResult!6605)

(assert (=> b!626526 (= lt!290087 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!626527 () Bool)

(declare-fun res!404406 () Bool)

(assert (=> b!626527 (=> (not res!404406) (not e!358928))))

(declare-fun arrayContainsKey!0 (array!37843 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626527 (= res!404406 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626528 () Bool)

(assert (=> b!626528 (= e!358929 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!290088 () SeekEntryResult!6605)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37843 (_ BitVec 32)) SeekEntryResult!6605)

(assert (=> b!626528 (= lt!290088 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18158 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!404407 () Bool)

(assert (=> start!56590 (=> (not res!404407) (not e!358928))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56590 (= res!404407 (validMask!0 mask!3053))))

(assert (=> start!56590 e!358928))

(assert (=> start!56590 true))

(declare-fun array_inv!13932 (array!37843) Bool)

(assert (=> start!56590 (array_inv!13932 a!2986)))

(declare-fun b!626529 () Bool)

(declare-fun res!404409 () Bool)

(assert (=> b!626529 (=> (not res!404409) (not e!358928))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626529 (= res!404409 (validKeyInArray!0 (select (arr!18158 a!2986) j!136)))))

(declare-fun b!626530 () Bool)

(declare-fun res!404410 () Bool)

(assert (=> b!626530 (=> (not res!404410) (not e!358929))))

(assert (=> b!626530 (= res!404410 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18158 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18158 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626531 () Bool)

(declare-fun res!404408 () Bool)

(assert (=> b!626531 (=> (not res!404408) (not e!358929))))

(declare-datatypes ((List!12252 0))(
  ( (Nil!12249) (Cons!12248 (h!13293 (_ BitVec 64)) (t!18488 List!12252)) )
))
(declare-fun arrayNoDuplicates!0 (array!37843 (_ BitVec 32) List!12252) Bool)

(assert (=> b!626531 (= res!404408 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12249))))

(declare-fun b!626532 () Bool)

(declare-fun res!404413 () Bool)

(assert (=> b!626532 (=> (not res!404413) (not e!358928))))

(assert (=> b!626532 (= res!404413 (and (= (size!18522 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18522 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18522 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626533 () Bool)

(declare-fun res!404411 () Bool)

(assert (=> b!626533 (=> (not res!404411) (not e!358929))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37843 (_ BitVec 32)) Bool)

(assert (=> b!626533 (= res!404411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626534 () Bool)

(declare-fun res!404412 () Bool)

(assert (=> b!626534 (=> (not res!404412) (not e!358928))))

(assert (=> b!626534 (= res!404412 (validKeyInArray!0 k!1786))))

(assert (= (and start!56590 res!404407) b!626532))

(assert (= (and b!626532 res!404413) b!626529))

(assert (= (and b!626529 res!404409) b!626534))

(assert (= (and b!626534 res!404412) b!626527))

(assert (= (and b!626527 res!404406) b!626526))

(assert (= (and b!626526 res!404414) b!626533))

(assert (= (and b!626533 res!404411) b!626531))

(assert (= (and b!626531 res!404408) b!626530))

(assert (= (and b!626530 res!404410) b!626528))

(declare-fun m!601951 () Bool)

(assert (=> b!626533 m!601951))

(declare-fun m!601953 () Bool)

(assert (=> b!626527 m!601953))

(declare-fun m!601955 () Bool)

(assert (=> b!626531 m!601955))

(declare-fun m!601957 () Bool)

(assert (=> b!626534 m!601957))

(declare-fun m!601959 () Bool)

(assert (=> start!56590 m!601959))

(declare-fun m!601961 () Bool)

(assert (=> start!56590 m!601961))

(declare-fun m!601963 () Bool)

(assert (=> b!626528 m!601963))

(assert (=> b!626528 m!601963))

(declare-fun m!601965 () Bool)

(assert (=> b!626528 m!601965))

(declare-fun m!601967 () Bool)

(assert (=> b!626530 m!601967))

(declare-fun m!601969 () Bool)

(assert (=> b!626530 m!601969))

(declare-fun m!601971 () Bool)

(assert (=> b!626530 m!601971))

(assert (=> b!626529 m!601963))

(assert (=> b!626529 m!601963))

(declare-fun m!601973 () Bool)

(assert (=> b!626529 m!601973))

(declare-fun m!601975 () Bool)

(assert (=> b!626526 m!601975))

(push 1)

(assert (not b!626529))

