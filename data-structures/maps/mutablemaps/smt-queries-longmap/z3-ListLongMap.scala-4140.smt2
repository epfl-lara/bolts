; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56444 () Bool)

(assert start!56444)

(declare-fun b!625392 () Bool)

(declare-fun res!403584 () Bool)

(declare-fun e!358415 () Bool)

(assert (=> b!625392 (=> (not res!403584) (not e!358415))))

(declare-datatypes ((array!37787 0))(
  ( (array!37788 (arr!18133 (Array (_ BitVec 32) (_ BitVec 64))) (size!18497 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37787)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37787 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625392 (= res!403584 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625393 () Bool)

(declare-fun e!358416 () Bool)

(assert (=> b!625393 (= e!358416 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6580 0))(
  ( (MissingZero!6580 (index!28603 (_ BitVec 32))) (Found!6580 (index!28604 (_ BitVec 32))) (Intermediate!6580 (undefined!7392 Bool) (index!28605 (_ BitVec 32)) (x!57379 (_ BitVec 32))) (Undefined!6580) (MissingVacant!6580 (index!28606 (_ BitVec 32))) )
))
(declare-fun lt!289805 () SeekEntryResult!6580)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37787 (_ BitVec 32)) SeekEntryResult!6580)

(assert (=> b!625393 (= lt!289805 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18133 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!625394 () Bool)

(assert (=> b!625394 (= e!358415 e!358416)))

(declare-fun res!403580 () Bool)

(assert (=> b!625394 (=> (not res!403580) (not e!358416))))

(declare-fun lt!289806 () SeekEntryResult!6580)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625394 (= res!403580 (or (= lt!289806 (MissingZero!6580 i!1108)) (= lt!289806 (MissingVacant!6580 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37787 (_ BitVec 32)) SeekEntryResult!6580)

(assert (=> b!625394 (= lt!289806 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!625395 () Bool)

(declare-fun res!403586 () Bool)

(assert (=> b!625395 (=> (not res!403586) (not e!358416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37787 (_ BitVec 32)) Bool)

(assert (=> b!625395 (= res!403586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625396 () Bool)

(declare-fun res!403582 () Bool)

(assert (=> b!625396 (=> (not res!403582) (not e!358416))))

(assert (=> b!625396 (= res!403582 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18133 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18133 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!403583 () Bool)

(assert (=> start!56444 (=> (not res!403583) (not e!358415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56444 (= res!403583 (validMask!0 mask!3053))))

(assert (=> start!56444 e!358415))

(assert (=> start!56444 true))

(declare-fun array_inv!13907 (array!37787) Bool)

(assert (=> start!56444 (array_inv!13907 a!2986)))

(declare-fun b!625397 () Bool)

(declare-fun res!403579 () Bool)

(assert (=> b!625397 (=> (not res!403579) (not e!358416))))

(declare-datatypes ((List!12227 0))(
  ( (Nil!12224) (Cons!12223 (h!13268 (_ BitVec 64)) (t!18463 List!12227)) )
))
(declare-fun arrayNoDuplicates!0 (array!37787 (_ BitVec 32) List!12227) Bool)

(assert (=> b!625397 (= res!403579 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12224))))

(declare-fun b!625398 () Bool)

(declare-fun res!403578 () Bool)

(assert (=> b!625398 (=> (not res!403578) (not e!358415))))

(assert (=> b!625398 (= res!403578 (and (= (size!18497 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18497 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18497 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625399 () Bool)

(declare-fun res!403581 () Bool)

(assert (=> b!625399 (=> (not res!403581) (not e!358415))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625399 (= res!403581 (validKeyInArray!0 (select (arr!18133 a!2986) j!136)))))

(declare-fun b!625400 () Bool)

(declare-fun res!403585 () Bool)

(assert (=> b!625400 (=> (not res!403585) (not e!358415))))

(assert (=> b!625400 (= res!403585 (validKeyInArray!0 k0!1786))))

(assert (= (and start!56444 res!403583) b!625398))

(assert (= (and b!625398 res!403578) b!625399))

(assert (= (and b!625399 res!403581) b!625400))

(assert (= (and b!625400 res!403585) b!625392))

(assert (= (and b!625392 res!403584) b!625394))

(assert (= (and b!625394 res!403580) b!625395))

(assert (= (and b!625395 res!403586) b!625397))

(assert (= (and b!625397 res!403579) b!625396))

(assert (= (and b!625396 res!403582) b!625393))

(declare-fun m!601007 () Bool)

(assert (=> b!625396 m!601007))

(declare-fun m!601009 () Bool)

(assert (=> b!625396 m!601009))

(declare-fun m!601011 () Bool)

(assert (=> b!625396 m!601011))

(declare-fun m!601013 () Bool)

(assert (=> b!625397 m!601013))

(declare-fun m!601015 () Bool)

(assert (=> b!625393 m!601015))

(assert (=> b!625393 m!601015))

(declare-fun m!601017 () Bool)

(assert (=> b!625393 m!601017))

(declare-fun m!601019 () Bool)

(assert (=> b!625394 m!601019))

(assert (=> b!625399 m!601015))

(assert (=> b!625399 m!601015))

(declare-fun m!601021 () Bool)

(assert (=> b!625399 m!601021))

(declare-fun m!601023 () Bool)

(assert (=> start!56444 m!601023))

(declare-fun m!601025 () Bool)

(assert (=> start!56444 m!601025))

(declare-fun m!601027 () Bool)

(assert (=> b!625392 m!601027))

(declare-fun m!601029 () Bool)

(assert (=> b!625400 m!601029))

(declare-fun m!601031 () Bool)

(assert (=> b!625395 m!601031))

(check-sat (not b!625394) (not b!625400) (not b!625397) (not start!56444) (not b!625399) (not b!625393) (not b!625392) (not b!625395))
(check-sat)
