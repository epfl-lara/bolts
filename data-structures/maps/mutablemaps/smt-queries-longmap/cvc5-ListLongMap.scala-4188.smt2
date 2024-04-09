; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57114 () Bool)

(assert start!57114)

(declare-fun b!631938 () Bool)

(declare-fun res!408764 () Bool)

(declare-fun e!361303 () Bool)

(assert (=> b!631938 (=> (not res!408764) (not e!361303))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38094 0))(
  ( (array!38095 (arr!18276 (Array (_ BitVec 32) (_ BitVec 64))) (size!18640 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38094)

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!631938 (= res!408764 (and (= (size!18640 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18640 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18640 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!631939 () Bool)

(declare-fun e!361300 () Bool)

(declare-datatypes ((SeekEntryResult!6723 0))(
  ( (MissingZero!6723 (index!29184 (_ BitVec 32))) (Found!6723 (index!29185 (_ BitVec 32))) (Intermediate!6723 (undefined!7535 Bool) (index!29186 (_ BitVec 32)) (x!57951 (_ BitVec 32))) (Undefined!6723) (MissingVacant!6723 (index!29187 (_ BitVec 32))) )
))
(declare-fun lt!292076 () SeekEntryResult!6723)

(declare-fun lt!292072 () SeekEntryResult!6723)

(assert (=> b!631939 (= e!361300 (= lt!292076 lt!292072))))

(declare-fun b!631940 () Bool)

(declare-fun res!408755 () Bool)

(assert (=> b!631940 (=> (not res!408755) (not e!361303))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!631940 (= res!408755 (validKeyInArray!0 k!1786))))

(declare-fun b!631941 () Bool)

(declare-fun res!408761 () Bool)

(assert (=> b!631941 (=> (not res!408761) (not e!361303))))

(assert (=> b!631941 (= res!408761 (validKeyInArray!0 (select (arr!18276 a!2986) j!136)))))

(declare-fun b!631942 () Bool)

(declare-fun e!361302 () Bool)

(assert (=> b!631942 (= e!361303 e!361302)))

(declare-fun res!408753 () Bool)

(assert (=> b!631942 (=> (not res!408753) (not e!361302))))

(declare-fun lt!292071 () SeekEntryResult!6723)

(assert (=> b!631942 (= res!408753 (or (= lt!292071 (MissingZero!6723 i!1108)) (= lt!292071 (MissingVacant!6723 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38094 (_ BitVec 32)) SeekEntryResult!6723)

(assert (=> b!631942 (= lt!292071 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!631943 () Bool)

(declare-datatypes ((Unit!21250 0))(
  ( (Unit!21251) )
))
(declare-fun e!361301 () Unit!21250)

(declare-fun Unit!21252 () Unit!21250)

(assert (=> b!631943 (= e!361301 Unit!21252)))

(declare-fun res!408752 () Bool)

(assert (=> start!57114 (=> (not res!408752) (not e!361303))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57114 (= res!408752 (validMask!0 mask!3053))))

(assert (=> start!57114 e!361303))

(assert (=> start!57114 true))

(declare-fun array_inv!14050 (array!38094) Bool)

(assert (=> start!57114 (array_inv!14050 a!2986)))

(declare-fun b!631944 () Bool)

(declare-fun res!408756 () Bool)

(assert (=> b!631944 (=> (not res!408756) (not e!361303))))

(declare-fun arrayContainsKey!0 (array!38094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!631944 (= res!408756 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!631945 () Bool)

(declare-fun e!361296 () Bool)

(assert (=> b!631945 (= e!361302 e!361296)))

(declare-fun res!408763 () Bool)

(assert (=> b!631945 (=> (not res!408763) (not e!361296))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!631945 (= res!408763 (= (select (store (arr!18276 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!292074 () array!38094)

(assert (=> b!631945 (= lt!292074 (array!38095 (store (arr!18276 a!2986) i!1108 k!1786) (size!18640 a!2986)))))

(declare-fun b!631946 () Bool)

(declare-fun res!408758 () Bool)

(assert (=> b!631946 (=> (not res!408758) (not e!361302))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38094 (_ BitVec 32)) Bool)

(assert (=> b!631946 (= res!408758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!631947 () Bool)

(declare-fun res!408757 () Bool)

(assert (=> b!631947 (=> (not res!408757) (not e!361302))))

(declare-datatypes ((List!12370 0))(
  ( (Nil!12367) (Cons!12366 (h!13411 (_ BitVec 64)) (t!18606 List!12370)) )
))
(declare-fun arrayNoDuplicates!0 (array!38094 (_ BitVec 32) List!12370) Bool)

(assert (=> b!631947 (= res!408757 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12367))))

(declare-fun b!631948 () Bool)

(declare-fun e!361299 () Bool)

(declare-fun e!361298 () Bool)

(assert (=> b!631948 (= e!361299 (not e!361298))))

(declare-fun res!408754 () Bool)

(assert (=> b!631948 (=> res!408754 e!361298)))

(declare-fun lt!292077 () SeekEntryResult!6723)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!631948 (= res!408754 (not (= lt!292077 (Found!6723 index!984))))))

(declare-fun lt!292075 () Unit!21250)

(assert (=> b!631948 (= lt!292075 e!361301)))

(declare-fun c!71960 () Bool)

(assert (=> b!631948 (= c!71960 (= lt!292077 Undefined!6723))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!292069 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38094 (_ BitVec 32)) SeekEntryResult!6723)

(assert (=> b!631948 (= lt!292077 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292069 lt!292074 mask!3053))))

(assert (=> b!631948 e!361300))

(declare-fun res!408759 () Bool)

(assert (=> b!631948 (=> (not res!408759) (not e!361300))))

(declare-fun lt!292070 () (_ BitVec 32))

(assert (=> b!631948 (= res!408759 (= lt!292072 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292070 vacantSpotIndex!68 lt!292069 lt!292074 mask!3053)))))

(assert (=> b!631948 (= lt!292072 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292070 vacantSpotIndex!68 (select (arr!18276 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!631948 (= lt!292069 (select (store (arr!18276 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292073 () Unit!21250)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38094 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21250)

(assert (=> b!631948 (= lt!292073 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292070 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!631948 (= lt!292070 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!631949 () Bool)

(assert (=> b!631949 (= e!361298 true)))

(assert (=> b!631949 (= (select (store (arr!18276 a!2986) i!1108 k!1786) index!984) (select (arr!18276 a!2986) j!136))))

(declare-fun b!631950 () Bool)

(assert (=> b!631950 (= e!361296 e!361299)))

(declare-fun res!408762 () Bool)

(assert (=> b!631950 (=> (not res!408762) (not e!361299))))

(assert (=> b!631950 (= res!408762 (and (= lt!292076 (Found!6723 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18276 a!2986) index!984) (select (arr!18276 a!2986) j!136))) (not (= (select (arr!18276 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!631950 (= lt!292076 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18276 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631951 () Bool)

(declare-fun Unit!21253 () Unit!21250)

(assert (=> b!631951 (= e!361301 Unit!21253)))

(assert (=> b!631951 false))

(declare-fun b!631952 () Bool)

(declare-fun res!408760 () Bool)

(assert (=> b!631952 (=> (not res!408760) (not e!361302))))

(assert (=> b!631952 (= res!408760 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18276 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!57114 res!408752) b!631938))

(assert (= (and b!631938 res!408764) b!631941))

(assert (= (and b!631941 res!408761) b!631940))

(assert (= (and b!631940 res!408755) b!631944))

(assert (= (and b!631944 res!408756) b!631942))

(assert (= (and b!631942 res!408753) b!631946))

(assert (= (and b!631946 res!408758) b!631947))

(assert (= (and b!631947 res!408757) b!631952))

(assert (= (and b!631952 res!408760) b!631945))

(assert (= (and b!631945 res!408763) b!631950))

(assert (= (and b!631950 res!408762) b!631948))

(assert (= (and b!631948 res!408759) b!631939))

(assert (= (and b!631948 c!71960) b!631951))

(assert (= (and b!631948 (not c!71960)) b!631943))

(assert (= (and b!631948 (not res!408754)) b!631949))

(declare-fun m!606843 () Bool)

(assert (=> b!631941 m!606843))

(assert (=> b!631941 m!606843))

(declare-fun m!606845 () Bool)

(assert (=> b!631941 m!606845))

(declare-fun m!606847 () Bool)

(assert (=> b!631947 m!606847))

(declare-fun m!606849 () Bool)

(assert (=> start!57114 m!606849))

(declare-fun m!606851 () Bool)

(assert (=> start!57114 m!606851))

(declare-fun m!606853 () Bool)

(assert (=> b!631944 m!606853))

(declare-fun m!606855 () Bool)

(assert (=> b!631952 m!606855))

(declare-fun m!606857 () Bool)

(assert (=> b!631942 m!606857))

(declare-fun m!606859 () Bool)

(assert (=> b!631948 m!606859))

(declare-fun m!606861 () Bool)

(assert (=> b!631948 m!606861))

(declare-fun m!606863 () Bool)

(assert (=> b!631948 m!606863))

(assert (=> b!631948 m!606843))

(declare-fun m!606865 () Bool)

(assert (=> b!631948 m!606865))

(declare-fun m!606867 () Bool)

(assert (=> b!631948 m!606867))

(declare-fun m!606869 () Bool)

(assert (=> b!631948 m!606869))

(assert (=> b!631948 m!606843))

(declare-fun m!606871 () Bool)

(assert (=> b!631948 m!606871))

(declare-fun m!606873 () Bool)

(assert (=> b!631940 m!606873))

(declare-fun m!606875 () Bool)

(assert (=> b!631950 m!606875))

(assert (=> b!631950 m!606843))

(assert (=> b!631950 m!606843))

(declare-fun m!606877 () Bool)

(assert (=> b!631950 m!606877))

(assert (=> b!631945 m!606867))

(declare-fun m!606879 () Bool)

(assert (=> b!631945 m!606879))

(assert (=> b!631949 m!606867))

(declare-fun m!606881 () Bool)

(assert (=> b!631949 m!606881))

(assert (=> b!631949 m!606843))

(declare-fun m!606883 () Bool)

(assert (=> b!631946 m!606883))

(push 1)

