; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56408 () Bool)

(assert start!56408)

(declare-fun res!403089 () Bool)

(declare-fun e!358253 () Bool)

(assert (=> start!56408 (=> (not res!403089) (not e!358253))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56408 (= res!403089 (validMask!0 mask!3053))))

(assert (=> start!56408 e!358253))

(assert (=> start!56408 true))

(declare-datatypes ((array!37751 0))(
  ( (array!37752 (arr!18115 (Array (_ BitVec 32) (_ BitVec 64))) (size!18479 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37751)

(declare-fun array_inv!13889 (array!37751) Bool)

(assert (=> start!56408 (array_inv!13889 a!2986)))

(declare-fun b!624897 () Bool)

(declare-fun res!403083 () Bool)

(assert (=> b!624897 (=> (not res!403083) (not e!358253))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624897 (= res!403083 (validKeyInArray!0 (select (arr!18115 a!2986) j!136)))))

(declare-fun b!624898 () Bool)

(declare-fun res!403086 () Bool)

(declare-fun e!358254 () Bool)

(assert (=> b!624898 (=> (not res!403086) (not e!358254))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!624898 (= res!403086 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18115 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18115 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!624899 () Bool)

(assert (=> b!624899 (= e!358253 e!358254)))

(declare-fun res!403085 () Bool)

(assert (=> b!624899 (=> (not res!403085) (not e!358254))))

(declare-datatypes ((SeekEntryResult!6562 0))(
  ( (MissingZero!6562 (index!28531 (_ BitVec 32))) (Found!6562 (index!28532 (_ BitVec 32))) (Intermediate!6562 (undefined!7374 Bool) (index!28533 (_ BitVec 32)) (x!57313 (_ BitVec 32))) (Undefined!6562) (MissingVacant!6562 (index!28534 (_ BitVec 32))) )
))
(declare-fun lt!289706 () SeekEntryResult!6562)

(assert (=> b!624899 (= res!403085 (or (= lt!289706 (MissingZero!6562 i!1108)) (= lt!289706 (MissingVacant!6562 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37751 (_ BitVec 32)) SeekEntryResult!6562)

(assert (=> b!624899 (= lt!289706 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!624900 () Bool)

(declare-fun res!403091 () Bool)

(assert (=> b!624900 (=> (not res!403091) (not e!358254))))

(declare-datatypes ((List!12209 0))(
  ( (Nil!12206) (Cons!12205 (h!13250 (_ BitVec 64)) (t!18445 List!12209)) )
))
(declare-fun arrayNoDuplicates!0 (array!37751 (_ BitVec 32) List!12209) Bool)

(assert (=> b!624900 (= res!403091 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12206))))

(declare-fun b!624901 () Bool)

(declare-fun res!403087 () Bool)

(assert (=> b!624901 (=> (not res!403087) (not e!358253))))

(assert (=> b!624901 (= res!403087 (and (= (size!18479 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18479 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18479 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624902 () Bool)

(assert (=> b!624902 (= e!358254 false)))

(declare-fun lt!289707 () SeekEntryResult!6562)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37751 (_ BitVec 32)) SeekEntryResult!6562)

(assert (=> b!624902 (= lt!289707 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18115 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!624903 () Bool)

(declare-fun res!403090 () Bool)

(assert (=> b!624903 (=> (not res!403090) (not e!358253))))

(declare-fun arrayContainsKey!0 (array!37751 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624903 (= res!403090 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624904 () Bool)

(declare-fun res!403088 () Bool)

(assert (=> b!624904 (=> (not res!403088) (not e!358253))))

(assert (=> b!624904 (= res!403088 (validKeyInArray!0 k0!1786))))

(declare-fun b!624905 () Bool)

(declare-fun res!403084 () Bool)

(assert (=> b!624905 (=> (not res!403084) (not e!358254))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37751 (_ BitVec 32)) Bool)

(assert (=> b!624905 (= res!403084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56408 res!403089) b!624901))

(assert (= (and b!624901 res!403087) b!624897))

(assert (= (and b!624897 res!403083) b!624904))

(assert (= (and b!624904 res!403088) b!624903))

(assert (= (and b!624903 res!403090) b!624899))

(assert (= (and b!624899 res!403085) b!624905))

(assert (= (and b!624905 res!403084) b!624900))

(assert (= (and b!624900 res!403091) b!624898))

(assert (= (and b!624898 res!403086) b!624902))

(declare-fun m!600539 () Bool)

(assert (=> b!624902 m!600539))

(assert (=> b!624902 m!600539))

(declare-fun m!600541 () Bool)

(assert (=> b!624902 m!600541))

(declare-fun m!600543 () Bool)

(assert (=> b!624904 m!600543))

(declare-fun m!600545 () Bool)

(assert (=> b!624900 m!600545))

(declare-fun m!600547 () Bool)

(assert (=> b!624899 m!600547))

(declare-fun m!600549 () Bool)

(assert (=> b!624905 m!600549))

(declare-fun m!600551 () Bool)

(assert (=> start!56408 m!600551))

(declare-fun m!600553 () Bool)

(assert (=> start!56408 m!600553))

(assert (=> b!624897 m!600539))

(assert (=> b!624897 m!600539))

(declare-fun m!600555 () Bool)

(assert (=> b!624897 m!600555))

(declare-fun m!600557 () Bool)

(assert (=> b!624898 m!600557))

(declare-fun m!600559 () Bool)

(assert (=> b!624898 m!600559))

(declare-fun m!600561 () Bool)

(assert (=> b!624898 m!600561))

(declare-fun m!600563 () Bool)

(assert (=> b!624903 m!600563))

(check-sat (not b!624903) (not b!624905) (not b!624897) (not b!624904) (not b!624900) (not b!624899) (not start!56408) (not b!624902))
(check-sat)
