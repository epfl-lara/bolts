; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53488 () Bool)

(assert start!53488)

(declare-fun b!581700 () Bool)

(declare-fun res!369666 () Bool)

(declare-fun e!333699 () Bool)

(assert (=> b!581700 (=> (not res!369666) (not e!333699))))

(declare-datatypes ((array!36343 0))(
  ( (array!36344 (arr!17442 (Array (_ BitVec 32) (_ BitVec 64))) (size!17806 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36343)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36343 (_ BitVec 32)) Bool)

(assert (=> b!581700 (= res!369666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581702 () Bool)

(declare-fun res!369667 () Bool)

(assert (=> b!581702 (=> (not res!369667) (not e!333699))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!581702 (= res!369667 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17442 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17442 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581703 () Bool)

(declare-fun res!369669 () Bool)

(declare-fun e!333700 () Bool)

(assert (=> b!581703 (=> (not res!369669) (not e!333700))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!581703 (= res!369669 (and (= (size!17806 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17806 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17806 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581704 () Bool)

(declare-fun res!369670 () Bool)

(assert (=> b!581704 (=> (not res!369670) (not e!333700))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581704 (= res!369670 (validKeyInArray!0 (select (arr!17442 a!2986) j!136)))))

(declare-fun b!581705 () Bool)

(declare-fun res!369673 () Bool)

(assert (=> b!581705 (=> (not res!369673) (not e!333700))))

(declare-fun arrayContainsKey!0 (array!36343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581705 (= res!369673 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581706 () Bool)

(declare-fun res!369671 () Bool)

(assert (=> b!581706 (=> (not res!369671) (not e!333699))))

(declare-datatypes ((List!11536 0))(
  ( (Nil!11533) (Cons!11532 (h!12577 (_ BitVec 64)) (t!17772 List!11536)) )
))
(declare-fun arrayNoDuplicates!0 (array!36343 (_ BitVec 32) List!11536) Bool)

(assert (=> b!581706 (= res!369671 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11533))))

(declare-fun b!581701 () Bool)

(declare-fun res!369672 () Bool)

(assert (=> b!581701 (=> (not res!369672) (not e!333700))))

(assert (=> b!581701 (= res!369672 (validKeyInArray!0 k!1786))))

(declare-fun res!369668 () Bool)

(assert (=> start!53488 (=> (not res!369668) (not e!333700))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53488 (= res!369668 (validMask!0 mask!3053))))

(assert (=> start!53488 e!333700))

(assert (=> start!53488 true))

(declare-fun array_inv!13216 (array!36343) Bool)

(assert (=> start!53488 (array_inv!13216 a!2986)))

(declare-fun b!581707 () Bool)

(assert (=> b!581707 (= e!333700 e!333699)))

(declare-fun res!369674 () Bool)

(assert (=> b!581707 (=> (not res!369674) (not e!333699))))

(declare-datatypes ((SeekEntryResult!5889 0))(
  ( (MissingZero!5889 (index!25783 (_ BitVec 32))) (Found!5889 (index!25784 (_ BitVec 32))) (Intermediate!5889 (undefined!6701 Bool) (index!25785 (_ BitVec 32)) (x!54673 (_ BitVec 32))) (Undefined!5889) (MissingVacant!5889 (index!25786 (_ BitVec 32))) )
))
(declare-fun lt!264955 () SeekEntryResult!5889)

(assert (=> b!581707 (= res!369674 (or (= lt!264955 (MissingZero!5889 i!1108)) (= lt!264955 (MissingVacant!5889 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36343 (_ BitVec 32)) SeekEntryResult!5889)

(assert (=> b!581707 (= lt!264955 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581708 () Bool)

(assert (=> b!581708 (= e!333699 false)))

(declare-fun lt!264956 () SeekEntryResult!5889)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36343 (_ BitVec 32)) SeekEntryResult!5889)

(assert (=> b!581708 (= lt!264956 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17442 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53488 res!369668) b!581703))

(assert (= (and b!581703 res!369669) b!581704))

(assert (= (and b!581704 res!369670) b!581701))

(assert (= (and b!581701 res!369672) b!581705))

(assert (= (and b!581705 res!369673) b!581707))

(assert (= (and b!581707 res!369674) b!581700))

(assert (= (and b!581700 res!369666) b!581706))

(assert (= (and b!581706 res!369671) b!581702))

(assert (= (and b!581702 res!369667) b!581708))

(declare-fun m!560275 () Bool)

(assert (=> b!581708 m!560275))

(assert (=> b!581708 m!560275))

(declare-fun m!560277 () Bool)

(assert (=> b!581708 m!560277))

(declare-fun m!560279 () Bool)

(assert (=> b!581706 m!560279))

(declare-fun m!560281 () Bool)

(assert (=> b!581701 m!560281))

(declare-fun m!560283 () Bool)

(assert (=> start!53488 m!560283))

(declare-fun m!560285 () Bool)

(assert (=> start!53488 m!560285))

(declare-fun m!560287 () Bool)

(assert (=> b!581707 m!560287))

(assert (=> b!581704 m!560275))

(assert (=> b!581704 m!560275))

(declare-fun m!560289 () Bool)

(assert (=> b!581704 m!560289))

(declare-fun m!560291 () Bool)

(assert (=> b!581700 m!560291))

(declare-fun m!560293 () Bool)

(assert (=> b!581705 m!560293))

(declare-fun m!560295 () Bool)

(assert (=> b!581702 m!560295))

(declare-fun m!560297 () Bool)

(assert (=> b!581702 m!560297))

(declare-fun m!560299 () Bool)

(assert (=> b!581702 m!560299))

(push 1)

