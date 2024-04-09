; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53348 () Bool)

(assert start!53348)

(declare-fun res!367745 () Bool)

(declare-fun e!333068 () Bool)

(assert (=> start!53348 (=> (not res!367745) (not e!333068))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53348 (= res!367745 (validMask!0 mask!3053))))

(assert (=> start!53348 e!333068))

(assert (=> start!53348 true))

(declare-datatypes ((array!36203 0))(
  ( (array!36204 (arr!17372 (Array (_ BitVec 32) (_ BitVec 64))) (size!17736 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36203)

(declare-fun array_inv!13146 (array!36203) Bool)

(assert (=> start!53348 (array_inv!13146 a!2986)))

(declare-fun b!579774 () Bool)

(declare-fun res!367740 () Bool)

(assert (=> b!579774 (=> (not res!367740) (not e!333068))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579774 (= res!367740 (validKeyInArray!0 k!1786))))

(declare-fun b!579775 () Bool)

(declare-fun e!333069 () Bool)

(assert (=> b!579775 (= e!333068 e!333069)))

(declare-fun res!367748 () Bool)

(assert (=> b!579775 (=> (not res!367748) (not e!333069))))

(declare-datatypes ((SeekEntryResult!5819 0))(
  ( (MissingZero!5819 (index!25503 (_ BitVec 32))) (Found!5819 (index!25504 (_ BitVec 32))) (Intermediate!5819 (undefined!6631 Bool) (index!25505 (_ BitVec 32)) (x!54411 (_ BitVec 32))) (Undefined!5819) (MissingVacant!5819 (index!25506 (_ BitVec 32))) )
))
(declare-fun lt!264562 () SeekEntryResult!5819)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579775 (= res!367748 (or (= lt!264562 (MissingZero!5819 i!1108)) (= lt!264562 (MissingVacant!5819 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36203 (_ BitVec 32)) SeekEntryResult!5819)

(assert (=> b!579775 (= lt!264562 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579776 () Bool)

(declare-fun res!367746 () Bool)

(assert (=> b!579776 (=> (not res!367746) (not e!333069))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36203 (_ BitVec 32)) Bool)

(assert (=> b!579776 (= res!367746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579777 () Bool)

(declare-fun res!367741 () Bool)

(assert (=> b!579777 (=> (not res!367741) (not e!333069))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!579777 (= res!367741 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17372 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17372 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579778 () Bool)

(declare-fun res!367743 () Bool)

(assert (=> b!579778 (=> (not res!367743) (not e!333068))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!579778 (= res!367743 (and (= (size!17736 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17736 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17736 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579779 () Bool)

(declare-fun res!367747 () Bool)

(assert (=> b!579779 (=> (not res!367747) (not e!333069))))

(declare-datatypes ((List!11466 0))(
  ( (Nil!11463) (Cons!11462 (h!12507 (_ BitVec 64)) (t!17702 List!11466)) )
))
(declare-fun arrayNoDuplicates!0 (array!36203 (_ BitVec 32) List!11466) Bool)

(assert (=> b!579779 (= res!367747 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11463))))

(declare-fun b!579780 () Bool)

(assert (=> b!579780 (= e!333069 false)))

(declare-fun lt!264563 () SeekEntryResult!5819)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36203 (_ BitVec 32)) SeekEntryResult!5819)

(assert (=> b!579780 (= lt!264563 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17372 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579781 () Bool)

(declare-fun res!367742 () Bool)

(assert (=> b!579781 (=> (not res!367742) (not e!333068))))

(assert (=> b!579781 (= res!367742 (validKeyInArray!0 (select (arr!17372 a!2986) j!136)))))

(declare-fun b!579782 () Bool)

(declare-fun res!367744 () Bool)

(assert (=> b!579782 (=> (not res!367744) (not e!333068))))

(declare-fun arrayContainsKey!0 (array!36203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579782 (= res!367744 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53348 res!367745) b!579778))

(assert (= (and b!579778 res!367743) b!579781))

(assert (= (and b!579781 res!367742) b!579774))

(assert (= (and b!579774 res!367740) b!579782))

(assert (= (and b!579782 res!367744) b!579775))

(assert (= (and b!579775 res!367748) b!579776))

(assert (= (and b!579776 res!367746) b!579779))

(assert (= (and b!579779 res!367747) b!579777))

(assert (= (and b!579777 res!367741) b!579780))

(declare-fun m!558425 () Bool)

(assert (=> b!579776 m!558425))

(declare-fun m!558427 () Bool)

(assert (=> b!579781 m!558427))

(assert (=> b!579781 m!558427))

(declare-fun m!558429 () Bool)

(assert (=> b!579781 m!558429))

(declare-fun m!558431 () Bool)

(assert (=> b!579775 m!558431))

(declare-fun m!558433 () Bool)

(assert (=> b!579782 m!558433))

(declare-fun m!558435 () Bool)

(assert (=> b!579774 m!558435))

(declare-fun m!558437 () Bool)

(assert (=> b!579777 m!558437))

(declare-fun m!558439 () Bool)

(assert (=> b!579777 m!558439))

(declare-fun m!558441 () Bool)

(assert (=> b!579777 m!558441))

(assert (=> b!579780 m!558427))

(assert (=> b!579780 m!558427))

(declare-fun m!558443 () Bool)

(assert (=> b!579780 m!558443))

(declare-fun m!558445 () Bool)

(assert (=> b!579779 m!558445))

(declare-fun m!558447 () Bool)

(assert (=> start!53348 m!558447))

(declare-fun m!558449 () Bool)

(assert (=> start!53348 m!558449))

(push 1)

(assert (not b!579779))

(assert (not b!579776))

(assert (not