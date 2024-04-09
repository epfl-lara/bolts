; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54172 () Bool)

(assert start!54172)

(declare-fun b!591576 () Bool)

(declare-fun e!337798 () Bool)

(declare-fun e!337803 () Bool)

(assert (=> b!591576 (= e!337798 e!337803)))

(declare-fun res!378659 () Bool)

(assert (=> b!591576 (=> res!378659 e!337803)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!268517 () (_ BitVec 64))

(declare-fun lt!268520 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36865 0))(
  ( (array!36866 (arr!17699 (Array (_ BitVec 32) (_ BitVec 64))) (size!18063 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36865)

(assert (=> b!591576 (= res!378659 (or (not (= (select (arr!17699 a!2986) j!136) lt!268520)) (not (= (select (arr!17699 a!2986) j!136) lt!268517)) (bvsge j!136 index!984)))))

(declare-fun b!591577 () Bool)

(declare-fun e!337794 () Bool)

(assert (=> b!591577 (= e!337794 true)))

(assert (=> b!591577 e!337798))

(declare-fun res!378670 () Bool)

(assert (=> b!591577 (=> (not res!378670) (not e!337798))))

(assert (=> b!591577 (= res!378670 (= lt!268517 (select (arr!17699 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!591577 (= lt!268517 (select (store (arr!17699 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!591578 () Bool)

(declare-fun res!378663 () Bool)

(declare-fun e!337795 () Bool)

(assert (=> b!591578 (=> (not res!378663) (not e!337795))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591578 (= res!378663 (validKeyInArray!0 k!1786))))

(declare-fun b!591579 () Bool)

(declare-fun res!378658 () Bool)

(assert (=> b!591579 (=> (not res!378658) (not e!337795))))

(declare-fun arrayContainsKey!0 (array!36865 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591579 (= res!378658 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591580 () Bool)

(declare-fun e!337800 () Bool)

(declare-fun e!337802 () Bool)

(assert (=> b!591580 (= e!337800 e!337802)))

(declare-fun res!378668 () Bool)

(assert (=> b!591580 (=> (not res!378668) (not e!337802))))

(declare-datatypes ((SeekEntryResult!6146 0))(
  ( (MissingZero!6146 (index!26819 (_ BitVec 32))) (Found!6146 (index!26820 (_ BitVec 32))) (Intermediate!6146 (undefined!6958 Bool) (index!26821 (_ BitVec 32)) (x!55635 (_ BitVec 32))) (Undefined!6146) (MissingVacant!6146 (index!26822 (_ BitVec 32))) )
))
(declare-fun lt!268512 () SeekEntryResult!6146)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!591580 (= res!378668 (and (= lt!268512 (Found!6146 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17699 a!2986) index!984) (select (arr!17699 a!2986) j!136))) (not (= (select (arr!17699 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36865 (_ BitVec 32)) SeekEntryResult!6146)

(assert (=> b!591580 (= lt!268512 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17699 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!591582 () Bool)

(declare-fun res!378664 () Bool)

(assert (=> b!591582 (=> (not res!378664) (not e!337795))))

(assert (=> b!591582 (= res!378664 (validKeyInArray!0 (select (arr!17699 a!2986) j!136)))))

(declare-fun b!591583 () Bool)

(assert (=> b!591583 (= e!337802 (not e!337794))))

(declare-fun res!378669 () Bool)

(assert (=> b!591583 (=> res!378669 e!337794)))

(declare-fun lt!268519 () SeekEntryResult!6146)

(assert (=> b!591583 (= res!378669 (not (= lt!268519 (Found!6146 index!984))))))

(declare-datatypes ((Unit!18528 0))(
  ( (Unit!18529) )
))
(declare-fun lt!268514 () Unit!18528)

(declare-fun e!337796 () Unit!18528)

(assert (=> b!591583 (= lt!268514 e!337796)))

(declare-fun c!66827 () Bool)

(assert (=> b!591583 (= c!66827 (= lt!268519 Undefined!6146))))

(declare-fun lt!268516 () array!36865)

(assert (=> b!591583 (= lt!268519 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268520 lt!268516 mask!3053))))

(declare-fun e!337797 () Bool)

(assert (=> b!591583 e!337797))

(declare-fun res!378662 () Bool)

(assert (=> b!591583 (=> (not res!378662) (not e!337797))))

(declare-fun lt!268521 () (_ BitVec 32))

(declare-fun lt!268515 () SeekEntryResult!6146)

(assert (=> b!591583 (= res!378662 (= lt!268515 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268521 vacantSpotIndex!68 lt!268520 lt!268516 mask!3053)))))

(assert (=> b!591583 (= lt!268515 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268521 vacantSpotIndex!68 (select (arr!17699 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!591583 (= lt!268520 (select (store (arr!17699 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!268518 () Unit!18528)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36865 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18528)

(assert (=> b!591583 (= lt!268518 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268521 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591583 (= lt!268521 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!591584 () Bool)

(declare-fun Unit!18530 () Unit!18528)

(assert (=> b!591584 (= e!337796 Unit!18530)))

(declare-fun b!591585 () Bool)

(declare-fun res!378657 () Bool)

(assert (=> b!591585 (=> (not res!378657) (not e!337795))))

(assert (=> b!591585 (= res!378657 (and (= (size!18063 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18063 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18063 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!591586 () Bool)

(assert (=> b!591586 (= e!337797 (= lt!268512 lt!268515))))

(declare-fun b!591587 () Bool)

(declare-fun e!337799 () Bool)

(assert (=> b!591587 (= e!337803 e!337799)))

(declare-fun res!378660 () Bool)

(assert (=> b!591587 (=> (not res!378660) (not e!337799))))

(assert (=> b!591587 (= res!378660 (arrayContainsKey!0 lt!268516 (select (arr!17699 a!2986) j!136) j!136))))

(declare-fun b!591588 () Bool)

(declare-fun res!378667 () Bool)

(declare-fun e!337804 () Bool)

(assert (=> b!591588 (=> (not res!378667) (not e!337804))))

(assert (=> b!591588 (= res!378667 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17699 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!591589 () Bool)

(assert (=> b!591589 (= e!337795 e!337804)))

(declare-fun res!378671 () Bool)

(assert (=> b!591589 (=> (not res!378671) (not e!337804))))

(declare-fun lt!268513 () SeekEntryResult!6146)

(assert (=> b!591589 (= res!378671 (or (= lt!268513 (MissingZero!6146 i!1108)) (= lt!268513 (MissingVacant!6146 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36865 (_ BitVec 32)) SeekEntryResult!6146)

(assert (=> b!591589 (= lt!268513 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!591590 () Bool)

(declare-fun res!378665 () Bool)

(assert (=> b!591590 (=> (not res!378665) (not e!337804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36865 (_ BitVec 32)) Bool)

(assert (=> b!591590 (= res!378665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!591591 () Bool)

(assert (=> b!591591 (= e!337804 e!337800)))

(declare-fun res!378661 () Bool)

(assert (=> b!591591 (=> (not res!378661) (not e!337800))))

(assert (=> b!591591 (= res!378661 (= (select (store (arr!17699 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!591591 (= lt!268516 (array!36866 (store (arr!17699 a!2986) i!1108 k!1786) (size!18063 a!2986)))))

(declare-fun b!591581 () Bool)

(declare-fun Unit!18531 () Unit!18528)

(assert (=> b!591581 (= e!337796 Unit!18531)))

(assert (=> b!591581 false))

(declare-fun res!378666 () Bool)

(assert (=> start!54172 (=> (not res!378666) (not e!337795))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54172 (= res!378666 (validMask!0 mask!3053))))

(assert (=> start!54172 e!337795))

(assert (=> start!54172 true))

(declare-fun array_inv!13473 (array!36865) Bool)

(assert (=> start!54172 (array_inv!13473 a!2986)))

(declare-fun b!591592 () Bool)

(assert (=> b!591592 (= e!337799 (arrayContainsKey!0 lt!268516 (select (arr!17699 a!2986) j!136) index!984))))

(declare-fun b!591593 () Bool)

(declare-fun res!378656 () Bool)

(assert (=> b!591593 (=> (not res!378656) (not e!337804))))

(declare-datatypes ((List!11793 0))(
  ( (Nil!11790) (Cons!11789 (h!12834 (_ BitVec 64)) (t!18029 List!11793)) )
))
(declare-fun arrayNoDuplicates!0 (array!36865 (_ BitVec 32) List!11793) Bool)

(assert (=> b!591593 (= res!378656 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11790))))

(assert (= (and start!54172 res!378666) b!591585))

(assert (= (and b!591585 res!378657) b!591582))

(assert (= (and b!591582 res!378664) b!591578))

(assert (= (and b!591578 res!378663) b!591579))

(assert (= (and b!591579 res!378658) b!591589))

(assert (= (and b!591589 res!378671) b!591590))

(assert (= (and b!591590 res!378665) b!591593))

(assert (= (and b!591593 res!378656) b!591588))

(assert (= (and b!591588 res!378667) b!591591))

(assert (= (and b!591591 res!378661) b!591580))

(assert (= (and b!591580 res!378668) b!591583))

(assert (= (and b!591583 res!378662) b!591586))

(assert (= (and b!591583 c!66827) b!591581))

(assert (= (and b!591583 (not c!66827)) b!591584))

(assert (= (and b!591583 (not res!378669)) b!591577))

(assert (= (and b!591577 res!378670) b!591576))

(assert (= (and b!591576 (not res!378659)) b!591587))

(assert (= (and b!591587 res!378660) b!591592))

(declare-fun m!569807 () Bool)

(assert (=> b!591589 m!569807))

(declare-fun m!569809 () Bool)

(assert (=> b!591580 m!569809))

(declare-fun m!569811 () Bool)

(assert (=> b!591580 m!569811))

(assert (=> b!591580 m!569811))

(declare-fun m!569813 () Bool)

(assert (=> b!591580 m!569813))

(assert (=> b!591576 m!569811))

(declare-fun m!569815 () Bool)

(assert (=> b!591590 m!569815))

(declare-fun m!569817 () Bool)

(assert (=> b!591579 m!569817))

(declare-fun m!569819 () Bool)

(assert (=> start!54172 m!569819))

(declare-fun m!569821 () Bool)

(assert (=> start!54172 m!569821))

(assert (=> b!591577 m!569811))

(declare-fun m!569823 () Bool)

(assert (=> b!591577 m!569823))

(declare-fun m!569825 () Bool)

(assert (=> b!591577 m!569825))

(assert (=> b!591591 m!569823))

(declare-fun m!569827 () Bool)

(assert (=> b!591591 m!569827))

(declare-fun m!569829 () Bool)

(assert (=> b!591593 m!569829))

(declare-fun m!569831 () Bool)

(assert (=> b!591583 m!569831))

(declare-fun m!569833 () Bool)

(assert (=> b!591583 m!569833))

(assert (=> b!591583 m!569811))

(declare-fun m!569835 () Bool)

(assert (=> b!591583 m!569835))

(assert (=> b!591583 m!569811))

(declare-fun m!569837 () Bool)

(assert (=> b!591583 m!569837))

(declare-fun m!569839 () Bool)

(assert (=> b!591583 m!569839))

(assert (=> b!591583 m!569823))

(declare-fun m!569841 () Bool)

(assert (=> b!591583 m!569841))

(declare-fun m!569843 () Bool)

(assert (=> b!591578 m!569843))

(assert (=> b!591582 m!569811))

(assert (=> b!591582 m!569811))

(declare-fun m!569845 () Bool)

(assert (=> b!591582 m!569845))

(assert (=> b!591587 m!569811))

(assert (=> b!591587 m!569811))

(declare-fun m!569847 () Bool)

(assert (=> b!591587 m!569847))

(declare-fun m!569849 () Bool)

(assert (=> b!591588 m!569849))

(assert (=> b!591592 m!569811))

(assert (=> b!591592 m!569811))

(declare-fun m!569851 () Bool)

(assert (=> b!591592 m!569851))

(push 1)

