; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54268 () Bool)

(assert start!54268)

(declare-fun b!592709 () Bool)

(declare-fun res!379514 () Bool)

(declare-fun e!338521 () Bool)

(assert (=> b!592709 (=> (not res!379514) (not e!338521))))

(declare-datatypes ((array!36898 0))(
  ( (array!36899 (arr!17714 (Array (_ BitVec 32) (_ BitVec 64))) (size!18078 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36898)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!592709 (= res!379514 (validKeyInArray!0 (select (arr!17714 a!2986) j!136)))))

(declare-fun b!592710 () Bool)

(declare-datatypes ((Unit!18588 0))(
  ( (Unit!18589) )
))
(declare-fun e!338518 () Unit!18588)

(declare-fun Unit!18590 () Unit!18588)

(assert (=> b!592710 (= e!338518 Unit!18590)))

(declare-fun b!592711 () Bool)

(declare-fun e!338513 () Bool)

(declare-fun e!338514 () Bool)

(assert (=> b!592711 (= e!338513 e!338514)))

(declare-fun res!379511 () Bool)

(assert (=> b!592711 (=> (not res!379511) (not e!338514))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6161 0))(
  ( (MissingZero!6161 (index!26882 (_ BitVec 32))) (Found!6161 (index!26883 (_ BitVec 32))) (Intermediate!6161 (undefined!6973 Bool) (index!26884 (_ BitVec 32)) (x!55699 (_ BitVec 32))) (Undefined!6161) (MissingVacant!6161 (index!26885 (_ BitVec 32))) )
))
(declare-fun lt!269121 () SeekEntryResult!6161)

(assert (=> b!592711 (= res!379511 (and (= lt!269121 (Found!6161 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17714 a!2986) index!984) (select (arr!17714 a!2986) j!136))) (not (= (select (arr!17714 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36898 (_ BitVec 32)) SeekEntryResult!6161)

(assert (=> b!592711 (= lt!269121 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17714 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!592712 () Bool)

(declare-fun res!379506 () Bool)

(declare-fun e!338523 () Bool)

(assert (=> b!592712 (=> (not res!379506) (not e!338523))))

(declare-datatypes ((List!11808 0))(
  ( (Nil!11805) (Cons!11804 (h!12849 (_ BitVec 64)) (t!18044 List!11808)) )
))
(declare-fun arrayNoDuplicates!0 (array!36898 (_ BitVec 32) List!11808) Bool)

(assert (=> b!592712 (= res!379506 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11805))))

(declare-fun b!592713 () Bool)

(declare-fun e!338522 () Bool)

(assert (=> b!592713 (= e!338522 (bvsle #b00000000000000000000000000000000 (size!18078 a!2986)))))

(declare-fun lt!269122 () array!36898)

(declare-fun arrayContainsKey!0 (array!36898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!592713 (arrayContainsKey!0 lt!269122 (select (arr!17714 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269123 () Unit!18588)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36898 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18588)

(assert (=> b!592713 (= lt!269123 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269122 (select (arr!17714 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!592714 () Bool)

(declare-fun res!379505 () Bool)

(assert (=> b!592714 (=> (not res!379505) (not e!338521))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!592714 (= res!379505 (validKeyInArray!0 k!1786))))

(declare-fun res!379509 () Bool)

(assert (=> start!54268 (=> (not res!379509) (not e!338521))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54268 (= res!379509 (validMask!0 mask!3053))))

(assert (=> start!54268 e!338521))

(assert (=> start!54268 true))

(declare-fun array_inv!13488 (array!36898) Bool)

(assert (=> start!54268 (array_inv!13488 a!2986)))

(declare-fun b!592715 () Bool)

(declare-fun e!338516 () Bool)

(assert (=> b!592715 (= e!338514 (not e!338516))))

(declare-fun res!379515 () Bool)

(assert (=> b!592715 (=> res!379515 e!338516)))

(declare-fun lt!269114 () SeekEntryResult!6161)

(assert (=> b!592715 (= res!379515 (not (= lt!269114 (Found!6161 index!984))))))

(declare-fun lt!269115 () Unit!18588)

(assert (=> b!592715 (= lt!269115 e!338518)))

(declare-fun c!66971 () Bool)

(assert (=> b!592715 (= c!66971 (= lt!269114 Undefined!6161))))

(declare-fun lt!269119 () (_ BitVec 64))

(assert (=> b!592715 (= lt!269114 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269119 lt!269122 mask!3053))))

(declare-fun e!338515 () Bool)

(assert (=> b!592715 e!338515))

(declare-fun res!379507 () Bool)

(assert (=> b!592715 (=> (not res!379507) (not e!338515))))

(declare-fun lt!269116 () SeekEntryResult!6161)

(declare-fun lt!269124 () (_ BitVec 32))

(assert (=> b!592715 (= res!379507 (= lt!269116 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269124 vacantSpotIndex!68 lt!269119 lt!269122 mask!3053)))))

(assert (=> b!592715 (= lt!269116 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269124 vacantSpotIndex!68 (select (arr!17714 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!592715 (= lt!269119 (select (store (arr!17714 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!269118 () Unit!18588)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36898 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18588)

(assert (=> b!592715 (= lt!269118 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269124 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!592715 (= lt!269124 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!592716 () Bool)

(assert (=> b!592716 (= e!338523 e!338513)))

(declare-fun res!379508 () Bool)

(assert (=> b!592716 (=> (not res!379508) (not e!338513))))

(assert (=> b!592716 (= res!379508 (= (select (store (arr!17714 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!592716 (= lt!269122 (array!36899 (store (arr!17714 a!2986) i!1108 k!1786) (size!18078 a!2986)))))

(declare-fun b!592717 () Bool)

(declare-fun res!379512 () Bool)

(assert (=> b!592717 (=> (not res!379512) (not e!338521))))

(assert (=> b!592717 (= res!379512 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!592718 () Bool)

(declare-fun e!338524 () Bool)

(declare-fun e!338520 () Bool)

(assert (=> b!592718 (= e!338524 e!338520)))

(declare-fun res!379502 () Bool)

(assert (=> b!592718 (=> res!379502 e!338520)))

(declare-fun lt!269117 () (_ BitVec 64))

(assert (=> b!592718 (= res!379502 (or (not (= (select (arr!17714 a!2986) j!136) lt!269119)) (not (= (select (arr!17714 a!2986) j!136) lt!269117)) (bvsge j!136 index!984)))))

(declare-fun b!592719 () Bool)

(assert (=> b!592719 (= e!338521 e!338523)))

(declare-fun res!379517 () Bool)

(assert (=> b!592719 (=> (not res!379517) (not e!338523))))

(declare-fun lt!269120 () SeekEntryResult!6161)

(assert (=> b!592719 (= res!379517 (or (= lt!269120 (MissingZero!6161 i!1108)) (= lt!269120 (MissingVacant!6161 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36898 (_ BitVec 32)) SeekEntryResult!6161)

(assert (=> b!592719 (= lt!269120 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!592720 () Bool)

(declare-fun Unit!18591 () Unit!18588)

(assert (=> b!592720 (= e!338518 Unit!18591)))

(assert (=> b!592720 false))

(declare-fun b!592721 () Bool)

(declare-fun res!379516 () Bool)

(assert (=> b!592721 (=> (not res!379516) (not e!338521))))

(assert (=> b!592721 (= res!379516 (and (= (size!18078 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18078 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18078 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!592722 () Bool)

(assert (=> b!592722 (= e!338515 (= lt!269121 lt!269116))))

(declare-fun b!592723 () Bool)

(declare-fun res!379501 () Bool)

(assert (=> b!592723 (=> (not res!379501) (not e!338523))))

(assert (=> b!592723 (= res!379501 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17714 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!592724 () Bool)

(declare-fun e!338517 () Bool)

(assert (=> b!592724 (= e!338517 (arrayContainsKey!0 lt!269122 (select (arr!17714 a!2986) j!136) index!984))))

(declare-fun b!592725 () Bool)

(assert (=> b!592725 (= e!338516 e!338522)))

(declare-fun res!379503 () Bool)

(assert (=> b!592725 (=> res!379503 e!338522)))

(assert (=> b!592725 (= res!379503 (or (not (= (select (arr!17714 a!2986) j!136) lt!269119)) (not (= (select (arr!17714 a!2986) j!136) lt!269117)) (bvsge j!136 index!984)))))

(assert (=> b!592725 e!338524))

(declare-fun res!379504 () Bool)

(assert (=> b!592725 (=> (not res!379504) (not e!338524))))

(assert (=> b!592725 (= res!379504 (= lt!269117 (select (arr!17714 a!2986) j!136)))))

(assert (=> b!592725 (= lt!269117 (select (store (arr!17714 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!592726 () Bool)

(declare-fun res!379510 () Bool)

(assert (=> b!592726 (=> (not res!379510) (not e!338523))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36898 (_ BitVec 32)) Bool)

(assert (=> b!592726 (= res!379510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!592727 () Bool)

(assert (=> b!592727 (= e!338520 e!338517)))

(declare-fun res!379513 () Bool)

(assert (=> b!592727 (=> (not res!379513) (not e!338517))))

(assert (=> b!592727 (= res!379513 (arrayContainsKey!0 lt!269122 (select (arr!17714 a!2986) j!136) j!136))))

(assert (= (and start!54268 res!379509) b!592721))

(assert (= (and b!592721 res!379516) b!592709))

(assert (= (and b!592709 res!379514) b!592714))

(assert (= (and b!592714 res!379505) b!592717))

(assert (= (and b!592717 res!379512) b!592719))

(assert (= (and b!592719 res!379517) b!592726))

(assert (= (and b!592726 res!379510) b!592712))

(assert (= (and b!592712 res!379506) b!592723))

(assert (= (and b!592723 res!379501) b!592716))

(assert (= (and b!592716 res!379508) b!592711))

(assert (= (and b!592711 res!379511) b!592715))

(assert (= (and b!592715 res!379507) b!592722))

(assert (= (and b!592715 c!66971) b!592720))

(assert (= (and b!592715 (not c!66971)) b!592710))

(assert (= (and b!592715 (not res!379515)) b!592725))

(assert (= (and b!592725 res!379504) b!592718))

(assert (= (and b!592718 (not res!379502)) b!592727))

(assert (= (and b!592727 res!379513) b!592724))

(assert (= (and b!592725 (not res!379503)) b!592713))

(declare-fun m!570787 () Bool)

(assert (=> b!592715 m!570787))

(declare-fun m!570789 () Bool)

(assert (=> b!592715 m!570789))

(declare-fun m!570791 () Bool)

(assert (=> b!592715 m!570791))

(declare-fun m!570793 () Bool)

(assert (=> b!592715 m!570793))

(declare-fun m!570795 () Bool)

(assert (=> b!592715 m!570795))

(assert (=> b!592715 m!570791))

(declare-fun m!570797 () Bool)

(assert (=> b!592715 m!570797))

(declare-fun m!570799 () Bool)

(assert (=> b!592715 m!570799))

(declare-fun m!570801 () Bool)

(assert (=> b!592715 m!570801))

(declare-fun m!570803 () Bool)

(assert (=> b!592711 m!570803))

(assert (=> b!592711 m!570791))

(assert (=> b!592711 m!570791))

(declare-fun m!570805 () Bool)

(assert (=> b!592711 m!570805))

(declare-fun m!570807 () Bool)

(assert (=> b!592723 m!570807))

(declare-fun m!570809 () Bool)

(assert (=> start!54268 m!570809))

(declare-fun m!570811 () Bool)

(assert (=> start!54268 m!570811))

(declare-fun m!570813 () Bool)

(assert (=> b!592719 m!570813))

(declare-fun m!570815 () Bool)

(assert (=> b!592714 m!570815))

(assert (=> b!592725 m!570791))

(assert (=> b!592725 m!570793))

(declare-fun m!570817 () Bool)

(assert (=> b!592725 m!570817))

(assert (=> b!592724 m!570791))

(assert (=> b!592724 m!570791))

(declare-fun m!570819 () Bool)

(assert (=> b!592724 m!570819))

(declare-fun m!570821 () Bool)

(assert (=> b!592726 m!570821))

(declare-fun m!570823 () Bool)

(assert (=> b!592712 m!570823))

(assert (=> b!592716 m!570793))

(declare-fun m!570825 () Bool)

(assert (=> b!592716 m!570825))

(assert (=> b!592709 m!570791))

(assert (=> b!592709 m!570791))

(declare-fun m!570827 () Bool)

(assert (=> b!592709 m!570827))

(assert (=> b!592713 m!570791))

(assert (=> b!592713 m!570791))

(declare-fun m!570829 () Bool)

(assert (=> b!592713 m!570829))

(assert (=> b!592713 m!570791))

(declare-fun m!570831 () Bool)

(assert (=> b!592713 m!570831))

(declare-fun m!570833 () Bool)

(assert (=> b!592717 m!570833))

(assert (=> b!592727 m!570791))

(assert (=> b!592727 m!570791))

(declare-fun m!570835 () Bool)

(assert (=> b!592727 m!570835))

(assert (=> b!592718 m!570791))

(push 1)

