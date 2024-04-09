; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53804 () Bool)

(assert start!53804)

(declare-fun b!586738 () Bool)

(declare-fun res!374709 () Bool)

(declare-fun e!335292 () Bool)

(assert (=> b!586738 (=> (not res!374709) (not e!335292))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36659 0))(
  ( (array!36660 (arr!17600 (Array (_ BitVec 32) (_ BitVec 64))) (size!17964 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36659)

(assert (=> b!586738 (= res!374709 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17600 a!2986) index!984) (select (arr!17600 a!2986) j!136))) (not (= (select (arr!17600 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586739 () Bool)

(declare-fun res!374712 () Bool)

(declare-fun e!335291 () Bool)

(assert (=> b!586739 (=> (not res!374712) (not e!335291))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586739 (= res!374712 (validKeyInArray!0 (select (arr!17600 a!2986) j!136)))))

(declare-fun b!586740 () Bool)

(declare-fun res!374704 () Bool)

(assert (=> b!586740 (=> (not res!374704) (not e!335292))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6047 0))(
  ( (MissingZero!6047 (index!26415 (_ BitVec 32))) (Found!6047 (index!26416 (_ BitVec 32))) (Intermediate!6047 (undefined!6859 Bool) (index!26417 (_ BitVec 32)) (x!55247 (_ BitVec 32))) (Undefined!6047) (MissingVacant!6047 (index!26418 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36659 (_ BitVec 32)) SeekEntryResult!6047)

(assert (=> b!586740 (= res!374704 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17600 a!2986) j!136) a!2986 mask!3053) (Found!6047 j!136)))))

(declare-fun b!586741 () Bool)

(declare-fun res!374708 () Bool)

(assert (=> b!586741 (=> (not res!374708) (not e!335291))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!586741 (= res!374708 (and (= (size!17964 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17964 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17964 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586743 () Bool)

(declare-fun res!374714 () Bool)

(assert (=> b!586743 (=> (not res!374714) (not e!335291))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!586743 (= res!374714 (validKeyInArray!0 k!1786))))

(declare-fun b!586744 () Bool)

(declare-fun res!374705 () Bool)

(assert (=> b!586744 (=> (not res!374705) (not e!335292))))

(assert (=> b!586744 (= res!374705 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17600 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17600 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586745 () Bool)

(declare-fun res!374707 () Bool)

(assert (=> b!586745 (=> (not res!374707) (not e!335291))))

(declare-fun arrayContainsKey!0 (array!36659 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586745 (= res!374707 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586746 () Bool)

(assert (=> b!586746 (= e!335291 e!335292)))

(declare-fun res!374710 () Bool)

(assert (=> b!586746 (=> (not res!374710) (not e!335292))))

(declare-fun lt!266190 () SeekEntryResult!6047)

(assert (=> b!586746 (= res!374710 (or (= lt!266190 (MissingZero!6047 i!1108)) (= lt!266190 (MissingVacant!6047 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36659 (_ BitVec 32)) SeekEntryResult!6047)

(assert (=> b!586746 (= lt!266190 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!586747 () Bool)

(assert (=> b!586747 (= e!335292 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun lt!266192 () (_ BitVec 32))

(assert (=> b!586747 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266192 vacantSpotIndex!68 (select (arr!17600 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266192 vacantSpotIndex!68 (select (store (arr!17600 a!2986) i!1108 k!1786) j!136) (array!36660 (store (arr!17600 a!2986) i!1108 k!1786) (size!17964 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18218 0))(
  ( (Unit!18219) )
))
(declare-fun lt!266191 () Unit!18218)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36659 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18218)

(assert (=> b!586747 (= lt!266191 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266192 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586747 (= lt!266192 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586748 () Bool)

(declare-fun res!374713 () Bool)

(assert (=> b!586748 (=> (not res!374713) (not e!335292))))

(declare-datatypes ((List!11694 0))(
  ( (Nil!11691) (Cons!11690 (h!12735 (_ BitVec 64)) (t!17930 List!11694)) )
))
(declare-fun arrayNoDuplicates!0 (array!36659 (_ BitVec 32) List!11694) Bool)

(assert (=> b!586748 (= res!374713 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11691))))

(declare-fun res!374706 () Bool)

(assert (=> start!53804 (=> (not res!374706) (not e!335291))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53804 (= res!374706 (validMask!0 mask!3053))))

(assert (=> start!53804 e!335291))

(assert (=> start!53804 true))

(declare-fun array_inv!13374 (array!36659) Bool)

(assert (=> start!53804 (array_inv!13374 a!2986)))

(declare-fun b!586742 () Bool)

(declare-fun res!374711 () Bool)

(assert (=> b!586742 (=> (not res!374711) (not e!335292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36659 (_ BitVec 32)) Bool)

(assert (=> b!586742 (= res!374711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53804 res!374706) b!586741))

(assert (= (and b!586741 res!374708) b!586739))

(assert (= (and b!586739 res!374712) b!586743))

(assert (= (and b!586743 res!374714) b!586745))

(assert (= (and b!586745 res!374707) b!586746))

(assert (= (and b!586746 res!374710) b!586742))

(assert (= (and b!586742 res!374711) b!586748))

(assert (= (and b!586748 res!374713) b!586744))

(assert (= (and b!586744 res!374705) b!586740))

(assert (= (and b!586740 res!374704) b!586738))

(assert (= (and b!586738 res!374709) b!586747))

(declare-fun m!565223 () Bool)

(assert (=> b!586746 m!565223))

(declare-fun m!565225 () Bool)

(assert (=> b!586747 m!565225))

(declare-fun m!565227 () Bool)

(assert (=> b!586747 m!565227))

(declare-fun m!565229 () Bool)

(assert (=> b!586747 m!565229))

(declare-fun m!565231 () Bool)

(assert (=> b!586747 m!565231))

(assert (=> b!586747 m!565227))

(declare-fun m!565233 () Bool)

(assert (=> b!586747 m!565233))

(declare-fun m!565235 () Bool)

(assert (=> b!586747 m!565235))

(assert (=> b!586747 m!565235))

(declare-fun m!565237 () Bool)

(assert (=> b!586747 m!565237))

(declare-fun m!565239 () Bool)

(assert (=> b!586743 m!565239))

(declare-fun m!565241 () Bool)

(assert (=> b!586748 m!565241))

(declare-fun m!565243 () Bool)

(assert (=> b!586742 m!565243))

(declare-fun m!565245 () Bool)

(assert (=> b!586745 m!565245))

(assert (=> b!586739 m!565235))

(assert (=> b!586739 m!565235))

(declare-fun m!565247 () Bool)

(assert (=> b!586739 m!565247))

(declare-fun m!565249 () Bool)

(assert (=> start!53804 m!565249))

(declare-fun m!565251 () Bool)

(assert (=> start!53804 m!565251))

(assert (=> b!586740 m!565235))

(assert (=> b!586740 m!565235))

(declare-fun m!565253 () Bool)

(assert (=> b!586740 m!565253))

(declare-fun m!565255 () Bool)

(assert (=> b!586738 m!565255))

(assert (=> b!586738 m!565235))

(declare-fun m!565257 () Bool)

(assert (=> b!586744 m!565257))

(assert (=> b!586744 m!565229))

(declare-fun m!565259 () Bool)

(assert (=> b!586744 m!565259))

(push 1)

(assert (not b!586743))

(assert (not b!586742))

