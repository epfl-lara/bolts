; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53632 () Bool)

(assert start!53632)

(declare-fun b!583767 () Bool)

(declare-fun res!371740 () Bool)

(declare-fun e!334384 () Bool)

(assert (=> b!583767 (=> (not res!371740) (not e!334384))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36487 0))(
  ( (array!36488 (arr!17514 (Array (_ BitVec 32) (_ BitVec 64))) (size!17878 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36487)

(assert (=> b!583767 (= res!371740 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17514 a!2986) index!984) (select (arr!17514 a!2986) j!136))) (not (= (select (arr!17514 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!583768 () Bool)

(declare-fun res!371742 () Bool)

(assert (=> b!583768 (=> (not res!371742) (not e!334384))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36487 (_ BitVec 32)) Bool)

(assert (=> b!583768 (= res!371742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583769 () Bool)

(declare-fun res!371738 () Bool)

(declare-fun e!334385 () Bool)

(assert (=> b!583769 (=> (not res!371738) (not e!334385))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583769 (= res!371738 (validKeyInArray!0 (select (arr!17514 a!2986) j!136)))))

(declare-fun b!583770 () Bool)

(declare-fun res!371733 () Bool)

(assert (=> b!583770 (=> (not res!371733) (not e!334385))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36487 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583770 (= res!371733 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583771 () Bool)

(declare-fun e!334386 () Bool)

(assert (=> b!583771 (= e!334386 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5961 0))(
  ( (MissingZero!5961 (index!26071 (_ BitVec 32))) (Found!5961 (index!26072 (_ BitVec 32))) (Intermediate!5961 (undefined!6773 Bool) (index!26073 (_ BitVec 32)) (x!54937 (_ BitVec 32))) (Undefined!5961) (MissingVacant!5961 (index!26074 (_ BitVec 32))) )
))
(declare-fun lt!265417 () SeekEntryResult!5961)

(declare-fun lt!265416 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36487 (_ BitVec 32)) SeekEntryResult!5961)

(assert (=> b!583771 (= lt!265417 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265416 vacantSpotIndex!68 (select (arr!17514 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583772 () Bool)

(declare-fun res!371734 () Bool)

(assert (=> b!583772 (=> (not res!371734) (not e!334385))))

(assert (=> b!583772 (= res!371734 (validKeyInArray!0 k!1786))))

(declare-fun res!371743 () Bool)

(assert (=> start!53632 (=> (not res!371743) (not e!334385))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53632 (= res!371743 (validMask!0 mask!3053))))

(assert (=> start!53632 e!334385))

(assert (=> start!53632 true))

(declare-fun array_inv!13288 (array!36487) Bool)

(assert (=> start!53632 (array_inv!13288 a!2986)))

(declare-fun b!583773 () Bool)

(declare-fun res!371736 () Bool)

(assert (=> b!583773 (=> (not res!371736) (not e!334384))))

(assert (=> b!583773 (= res!371736 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17514 a!2986) j!136) a!2986 mask!3053) (Found!5961 j!136)))))

(declare-fun b!583774 () Bool)

(assert (=> b!583774 (= e!334384 e!334386)))

(declare-fun res!371735 () Bool)

(assert (=> b!583774 (=> (not res!371735) (not e!334386))))

(assert (=> b!583774 (= res!371735 (and (bvsge lt!265416 #b00000000000000000000000000000000) (bvslt lt!265416 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583774 (= lt!265416 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!583775 () Bool)

(declare-fun res!371737 () Bool)

(assert (=> b!583775 (=> (not res!371737) (not e!334384))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583775 (= res!371737 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17514 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17514 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583776 () Bool)

(declare-fun res!371741 () Bool)

(assert (=> b!583776 (=> (not res!371741) (not e!334385))))

(assert (=> b!583776 (= res!371741 (and (= (size!17878 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17878 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17878 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583777 () Bool)

(assert (=> b!583777 (= e!334385 e!334384)))

(declare-fun res!371744 () Bool)

(assert (=> b!583777 (=> (not res!371744) (not e!334384))))

(declare-fun lt!265418 () SeekEntryResult!5961)

(assert (=> b!583777 (= res!371744 (or (= lt!265418 (MissingZero!5961 i!1108)) (= lt!265418 (MissingVacant!5961 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36487 (_ BitVec 32)) SeekEntryResult!5961)

(assert (=> b!583777 (= lt!265418 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!583778 () Bool)

(declare-fun res!371739 () Bool)

(assert (=> b!583778 (=> (not res!371739) (not e!334384))))

(declare-datatypes ((List!11608 0))(
  ( (Nil!11605) (Cons!11604 (h!12649 (_ BitVec 64)) (t!17844 List!11608)) )
))
(declare-fun arrayNoDuplicates!0 (array!36487 (_ BitVec 32) List!11608) Bool)

(assert (=> b!583778 (= res!371739 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11605))))

(assert (= (and start!53632 res!371743) b!583776))

(assert (= (and b!583776 res!371741) b!583769))

(assert (= (and b!583769 res!371738) b!583772))

(assert (= (and b!583772 res!371734) b!583770))

(assert (= (and b!583770 res!371733) b!583777))

(assert (= (and b!583777 res!371744) b!583768))

(assert (= (and b!583768 res!371742) b!583778))

(assert (= (and b!583778 res!371739) b!583775))

(assert (= (and b!583775 res!371737) b!583773))

(assert (= (and b!583773 res!371736) b!583767))

(assert (= (and b!583767 res!371740) b!583774))

(assert (= (and b!583774 res!371735) b!583771))

(declare-fun m!562225 () Bool)

(assert (=> b!583770 m!562225))

(declare-fun m!562227 () Bool)

(assert (=> b!583773 m!562227))

(assert (=> b!583773 m!562227))

(declare-fun m!562229 () Bool)

(assert (=> b!583773 m!562229))

(declare-fun m!562231 () Bool)

(assert (=> b!583767 m!562231))

(assert (=> b!583767 m!562227))

(declare-fun m!562233 () Bool)

(assert (=> b!583777 m!562233))

(declare-fun m!562235 () Bool)

(assert (=> b!583772 m!562235))

(assert (=> b!583771 m!562227))

(assert (=> b!583771 m!562227))

(declare-fun m!562237 () Bool)

(assert (=> b!583771 m!562237))

(declare-fun m!562239 () Bool)

(assert (=> start!53632 m!562239))

(declare-fun m!562241 () Bool)

(assert (=> start!53632 m!562241))

(declare-fun m!562243 () Bool)

(assert (=> b!583768 m!562243))

(assert (=> b!583769 m!562227))

(assert (=> b!583769 m!562227))

(declare-fun m!562245 () Bool)

(assert (=> b!583769 m!562245))

(declare-fun m!562247 () Bool)

(assert (=> b!583778 m!562247))

(declare-fun m!562249 () Bool)

(assert (=> b!583774 m!562249))

(declare-fun m!562251 () Bool)

(assert (=> b!583775 m!562251))

(declare-fun m!562253 () Bool)

(assert (=> b!583775 m!562253))

(declare-fun m!562255 () Bool)

(assert (=> b!583775 m!562255))

(push 1)

