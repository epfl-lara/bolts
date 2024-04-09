; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54178 () Bool)

(assert start!54178)

(declare-fun b!591738 () Bool)

(declare-fun e!337893 () Bool)

(declare-fun e!337901 () Bool)

(assert (=> b!591738 (= e!337893 e!337901)))

(declare-fun res!378804 () Bool)

(assert (=> b!591738 (=> (not res!378804) (not e!337901))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6149 0))(
  ( (MissingZero!6149 (index!26831 (_ BitVec 32))) (Found!6149 (index!26832 (_ BitVec 32))) (Intermediate!6149 (undefined!6961 Bool) (index!26833 (_ BitVec 32)) (x!55646 (_ BitVec 32))) (Undefined!6149) (MissingVacant!6149 (index!26834 (_ BitVec 32))) )
))
(declare-fun lt!268603 () SeekEntryResult!6149)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36871 0))(
  ( (array!36872 (arr!17702 (Array (_ BitVec 32) (_ BitVec 64))) (size!18066 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36871)

(assert (=> b!591738 (= res!378804 (and (= lt!268603 (Found!6149 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17702 a!2986) index!984) (select (arr!17702 a!2986) j!136))) (not (= (select (arr!17702 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36871 (_ BitVec 32)) SeekEntryResult!6149)

(assert (=> b!591738 (= lt!268603 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17702 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!591739 () Bool)

(declare-fun e!337898 () Bool)

(declare-fun lt!268609 () SeekEntryResult!6149)

(assert (=> b!591739 (= e!337898 (= lt!268603 lt!268609))))

(declare-fun b!591740 () Bool)

(declare-fun e!337900 () Bool)

(assert (=> b!591740 (= e!337900 e!337893)))

(declare-fun res!378810 () Bool)

(assert (=> b!591740 (=> (not res!378810) (not e!337893))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!591740 (= res!378810 (= (select (store (arr!17702 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!268605 () array!36871)

(assert (=> b!591740 (= lt!268605 (array!36872 (store (arr!17702 a!2986) i!1108 k!1786) (size!18066 a!2986)))))

(declare-fun b!591741 () Bool)

(declare-fun res!378800 () Bool)

(assert (=> b!591741 (=> (not res!378800) (not e!337900))))

(assert (=> b!591741 (= res!378800 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17702 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!591742 () Bool)

(declare-fun e!337894 () Bool)

(declare-fun e!337897 () Bool)

(assert (=> b!591742 (= e!337894 e!337897)))

(declare-fun res!378811 () Bool)

(assert (=> b!591742 (=> (not res!378811) (not e!337897))))

(declare-fun arrayContainsKey!0 (array!36871 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591742 (= res!378811 (arrayContainsKey!0 lt!268605 (select (arr!17702 a!2986) j!136) j!136))))

(declare-fun b!591743 () Bool)

(declare-fun e!337902 () Bool)

(assert (=> b!591743 (= e!337902 e!337894)))

(declare-fun res!378807 () Bool)

(assert (=> b!591743 (=> res!378807 e!337894)))

(declare-fun lt!268602 () (_ BitVec 64))

(declare-fun lt!268608 () (_ BitVec 64))

(assert (=> b!591743 (= res!378807 (or (not (= (select (arr!17702 a!2986) j!136) lt!268608)) (not (= (select (arr!17702 a!2986) j!136) lt!268602)) (bvsge j!136 index!984)))))

(declare-fun b!591744 () Bool)

(declare-fun e!337895 () Bool)

(assert (=> b!591744 (= e!337895 e!337900)))

(declare-fun res!378814 () Bool)

(assert (=> b!591744 (=> (not res!378814) (not e!337900))))

(declare-fun lt!268606 () SeekEntryResult!6149)

(assert (=> b!591744 (= res!378814 (or (= lt!268606 (MissingZero!6149 i!1108)) (= lt!268606 (MissingVacant!6149 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36871 (_ BitVec 32)) SeekEntryResult!6149)

(assert (=> b!591744 (= lt!268606 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!378809 () Bool)

(assert (=> start!54178 (=> (not res!378809) (not e!337895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54178 (= res!378809 (validMask!0 mask!3053))))

(assert (=> start!54178 e!337895))

(assert (=> start!54178 true))

(declare-fun array_inv!13476 (array!36871) Bool)

(assert (=> start!54178 (array_inv!13476 a!2986)))

(declare-fun b!591745 () Bool)

(declare-fun res!378803 () Bool)

(assert (=> b!591745 (=> (not res!378803) (not e!337900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36871 (_ BitVec 32)) Bool)

(assert (=> b!591745 (= res!378803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!591746 () Bool)

(declare-fun e!337903 () Bool)

(assert (=> b!591746 (= e!337901 (not e!337903))))

(declare-fun res!378805 () Bool)

(assert (=> b!591746 (=> res!378805 e!337903)))

(declare-fun lt!268604 () SeekEntryResult!6149)

(assert (=> b!591746 (= res!378805 (not (= lt!268604 (Found!6149 index!984))))))

(declare-datatypes ((Unit!18540 0))(
  ( (Unit!18541) )
))
(declare-fun lt!268607 () Unit!18540)

(declare-fun e!337896 () Unit!18540)

(assert (=> b!591746 (= lt!268607 e!337896)))

(declare-fun c!66836 () Bool)

(assert (=> b!591746 (= c!66836 (= lt!268604 Undefined!6149))))

(assert (=> b!591746 (= lt!268604 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268608 lt!268605 mask!3053))))

(assert (=> b!591746 e!337898))

(declare-fun res!378808 () Bool)

(assert (=> b!591746 (=> (not res!378808) (not e!337898))))

(declare-fun lt!268611 () (_ BitVec 32))

(assert (=> b!591746 (= res!378808 (= lt!268609 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268611 vacantSpotIndex!68 lt!268608 lt!268605 mask!3053)))))

(assert (=> b!591746 (= lt!268609 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268611 vacantSpotIndex!68 (select (arr!17702 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!591746 (= lt!268608 (select (store (arr!17702 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!268610 () Unit!18540)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36871 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18540)

(assert (=> b!591746 (= lt!268610 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268611 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591746 (= lt!268611 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!591747 () Bool)

(declare-fun res!378813 () Bool)

(assert (=> b!591747 (=> (not res!378813) (not e!337900))))

(declare-datatypes ((List!11796 0))(
  ( (Nil!11793) (Cons!11792 (h!12837 (_ BitVec 64)) (t!18032 List!11796)) )
))
(declare-fun arrayNoDuplicates!0 (array!36871 (_ BitVec 32) List!11796) Bool)

(assert (=> b!591747 (= res!378813 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11793))))

(declare-fun b!591748 () Bool)

(declare-fun res!378812 () Bool)

(assert (=> b!591748 (=> (not res!378812) (not e!337895))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591748 (= res!378812 (validKeyInArray!0 k!1786))))

(declare-fun b!591749 () Bool)

(declare-fun res!378802 () Bool)

(assert (=> b!591749 (=> (not res!378802) (not e!337895))))

(assert (=> b!591749 (= res!378802 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591750 () Bool)

(declare-fun res!378801 () Bool)

(assert (=> b!591750 (=> (not res!378801) (not e!337895))))

(assert (=> b!591750 (= res!378801 (and (= (size!18066 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18066 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18066 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!591751 () Bool)

(assert (=> b!591751 (= e!337897 (arrayContainsKey!0 lt!268605 (select (arr!17702 a!2986) j!136) index!984))))

(declare-fun b!591752 () Bool)

(declare-fun Unit!18542 () Unit!18540)

(assert (=> b!591752 (= e!337896 Unit!18542)))

(declare-fun b!591753 () Bool)

(declare-fun res!378815 () Bool)

(assert (=> b!591753 (=> (not res!378815) (not e!337895))))

(assert (=> b!591753 (= res!378815 (validKeyInArray!0 (select (arr!17702 a!2986) j!136)))))

(declare-fun b!591754 () Bool)

(assert (=> b!591754 (= e!337903 true)))

(assert (=> b!591754 e!337902))

(declare-fun res!378806 () Bool)

(assert (=> b!591754 (=> (not res!378806) (not e!337902))))

(assert (=> b!591754 (= res!378806 (= lt!268602 (select (arr!17702 a!2986) j!136)))))

(assert (=> b!591754 (= lt!268602 (select (store (arr!17702 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!591755 () Bool)

(declare-fun Unit!18543 () Unit!18540)

(assert (=> b!591755 (= e!337896 Unit!18543)))

(assert (=> b!591755 false))

(assert (= (and start!54178 res!378809) b!591750))

(assert (= (and b!591750 res!378801) b!591753))

(assert (= (and b!591753 res!378815) b!591748))

(assert (= (and b!591748 res!378812) b!591749))

(assert (= (and b!591749 res!378802) b!591744))

(assert (= (and b!591744 res!378814) b!591745))

(assert (= (and b!591745 res!378803) b!591747))

(assert (= (and b!591747 res!378813) b!591741))

(assert (= (and b!591741 res!378800) b!591740))

(assert (= (and b!591740 res!378810) b!591738))

(assert (= (and b!591738 res!378804) b!591746))

(assert (= (and b!591746 res!378808) b!591739))

(assert (= (and b!591746 c!66836) b!591755))

(assert (= (and b!591746 (not c!66836)) b!591752))

(assert (= (and b!591746 (not res!378805)) b!591754))

(assert (= (and b!591754 res!378806) b!591743))

(assert (= (and b!591743 (not res!378807)) b!591742))

(assert (= (and b!591742 res!378811) b!591751))

(declare-fun m!569945 () Bool)

(assert (=> b!591754 m!569945))

(declare-fun m!569947 () Bool)

(assert (=> b!591754 m!569947))

(declare-fun m!569949 () Bool)

(assert (=> b!591754 m!569949))

(declare-fun m!569951 () Bool)

(assert (=> b!591746 m!569951))

(assert (=> b!591746 m!569945))

(assert (=> b!591746 m!569947))

(declare-fun m!569953 () Bool)

(assert (=> b!591746 m!569953))

(declare-fun m!569955 () Bool)

(assert (=> b!591746 m!569955))

(assert (=> b!591746 m!569945))

(declare-fun m!569957 () Bool)

(assert (=> b!591746 m!569957))

(declare-fun m!569959 () Bool)

(assert (=> b!591746 m!569959))

(declare-fun m!569961 () Bool)

(assert (=> b!591746 m!569961))

(assert (=> b!591753 m!569945))

(assert (=> b!591753 m!569945))

(declare-fun m!569963 () Bool)

(assert (=> b!591753 m!569963))

(declare-fun m!569965 () Bool)

(assert (=> b!591744 m!569965))

(declare-fun m!569967 () Bool)

(assert (=> start!54178 m!569967))

(declare-fun m!569969 () Bool)

(assert (=> start!54178 m!569969))

(assert (=> b!591751 m!569945))

(assert (=> b!591751 m!569945))

(declare-fun m!569971 () Bool)

(assert (=> b!591751 m!569971))

(declare-fun m!569973 () Bool)

(assert (=> b!591749 m!569973))

(declare-fun m!569975 () Bool)

(assert (=> b!591741 m!569975))

(declare-fun m!569977 () Bool)

(assert (=> b!591748 m!569977))

(assert (=> b!591743 m!569945))

(declare-fun m!569979 () Bool)

(assert (=> b!591745 m!569979))

(assert (=> b!591740 m!569947))

(declare-fun m!569981 () Bool)

(assert (=> b!591740 m!569981))

(declare-fun m!569983 () Bool)

(assert (=> b!591747 m!569983))

(assert (=> b!591742 m!569945))

(assert (=> b!591742 m!569945))

(declare-fun m!569985 () Bool)

(assert (=> b!591742 m!569985))

(declare-fun m!569987 () Bool)

(assert (=> b!591738 m!569987))

(assert (=> b!591738 m!569945))

(assert (=> b!591738 m!569945))

(declare-fun m!569989 () Bool)

(assert (=> b!591738 m!569989))

(push 1)

