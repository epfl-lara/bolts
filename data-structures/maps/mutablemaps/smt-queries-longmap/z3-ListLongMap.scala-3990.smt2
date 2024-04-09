; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54080 () Bool)

(assert start!54080)

(declare-fun b!590441 () Bool)

(declare-fun e!337097 () Bool)

(declare-fun e!337099 () Bool)

(assert (=> b!590441 (= e!337097 e!337099)))

(declare-fun res!377821 () Bool)

(assert (=> b!590441 (=> (not res!377821) (not e!337099))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6130 0))(
  ( (MissingZero!6130 (index!26752 (_ BitVec 32))) (Found!6130 (index!26753 (_ BitVec 32))) (Intermediate!6130 (undefined!6942 Bool) (index!26754 (_ BitVec 32)) (x!55570 (_ BitVec 32))) (Undefined!6130) (MissingVacant!6130 (index!26755 (_ BitVec 32))) )
))
(declare-fun lt!267935 () SeekEntryResult!6130)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36830 0))(
  ( (array!36831 (arr!17683 (Array (_ BitVec 32) (_ BitVec 64))) (size!18047 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36830)

(assert (=> b!590441 (= res!377821 (and (= lt!267935 (Found!6130 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17683 a!2986) index!984) (select (arr!17683 a!2986) j!136))) (not (= (select (arr!17683 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36830 (_ BitVec 32)) SeekEntryResult!6130)

(assert (=> b!590441 (= lt!267935 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17683 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!590442 () Bool)

(declare-fun res!377826 () Bool)

(declare-fun e!337098 () Bool)

(assert (=> b!590442 (=> (not res!377826) (not e!337098))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!590442 (= res!377826 (and (= (size!18047 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18047 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18047 a!2986)) (not (= i!1108 j!136))))))

(declare-fun e!337096 () Bool)

(declare-fun lt!267928 () array!36830)

(declare-fun b!590443 () Bool)

(declare-fun arrayContainsKey!0 (array!36830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!590443 (= e!337096 (arrayContainsKey!0 lt!267928 (select (arr!17683 a!2986) j!136) j!136))))

(declare-fun b!590444 () Bool)

(declare-fun res!377819 () Bool)

(assert (=> b!590444 (=> (not res!377819) (not e!337098))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!590444 (= res!377819 (validKeyInArray!0 k0!1786))))

(declare-fun b!590445 () Bool)

(declare-fun res!377822 () Bool)

(declare-fun e!337102 () Bool)

(assert (=> b!590445 (=> (not res!377822) (not e!337102))))

(declare-datatypes ((List!11777 0))(
  ( (Nil!11774) (Cons!11773 (h!12818 (_ BitVec 64)) (t!18013 List!11777)) )
))
(declare-fun arrayNoDuplicates!0 (array!36830 (_ BitVec 32) List!11777) Bool)

(assert (=> b!590445 (= res!377822 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11774))))

(declare-fun b!590446 () Bool)

(declare-fun lt!267931 () (_ BitVec 64))

(declare-fun e!337101 () Bool)

(assert (=> b!590446 (= e!337101 (or (not (= (select (arr!17683 a!2986) j!136) lt!267931)) (not (= (select (arr!17683 a!2986) j!136) (select (store (arr!17683 a!2986) i!1108 k0!1786) index!984))) (bvsge j!136 index!984) (bvsge index!984 (size!18047 a!2986)) (bvslt (size!18047 a!2986) #b01111111111111111111111111111111)))))

(declare-fun e!337100 () Bool)

(assert (=> b!590446 e!337100))

(declare-fun res!377825 () Bool)

(assert (=> b!590446 (=> (not res!377825) (not e!337100))))

(assert (=> b!590446 (= res!377825 (= (select (store (arr!17683 a!2986) i!1108 k0!1786) index!984) (select (arr!17683 a!2986) j!136)))))

(declare-fun b!590447 () Bool)

(declare-datatypes ((Unit!18464 0))(
  ( (Unit!18465) )
))
(declare-fun e!337095 () Unit!18464)

(declare-fun Unit!18466 () Unit!18464)

(assert (=> b!590447 (= e!337095 Unit!18466)))

(declare-fun b!590448 () Bool)

(assert (=> b!590448 (= e!337100 e!337096)))

(declare-fun res!377823 () Bool)

(assert (=> b!590448 (=> res!377823 e!337096)))

(assert (=> b!590448 (= res!377823 (or (not (= (select (arr!17683 a!2986) j!136) lt!267931)) (not (= (select (arr!17683 a!2986) j!136) (select (store (arr!17683 a!2986) i!1108 k0!1786) index!984))) (bvsge j!136 index!984)))))

(declare-fun b!590449 () Bool)

(assert (=> b!590449 (= e!337098 e!337102)))

(declare-fun res!377827 () Bool)

(assert (=> b!590449 (=> (not res!377827) (not e!337102))))

(declare-fun lt!267933 () SeekEntryResult!6130)

(assert (=> b!590449 (= res!377827 (or (= lt!267933 (MissingZero!6130 i!1108)) (= lt!267933 (MissingVacant!6130 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36830 (_ BitVec 32)) SeekEntryResult!6130)

(assert (=> b!590449 (= lt!267933 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!590450 () Bool)

(declare-fun res!377820 () Bool)

(assert (=> b!590450 (=> (not res!377820) (not e!337098))))

(assert (=> b!590450 (= res!377820 (validKeyInArray!0 (select (arr!17683 a!2986) j!136)))))

(declare-fun b!590451 () Bool)

(declare-fun e!337094 () Bool)

(declare-fun lt!267930 () SeekEntryResult!6130)

(assert (=> b!590451 (= e!337094 (= lt!267935 lt!267930))))

(declare-fun b!590440 () Bool)

(assert (=> b!590440 (= e!337099 (not e!337101))))

(declare-fun res!377818 () Bool)

(assert (=> b!590440 (=> res!377818 e!337101)))

(declare-fun lt!267932 () SeekEntryResult!6130)

(assert (=> b!590440 (= res!377818 (not (= lt!267932 (Found!6130 index!984))))))

(declare-fun lt!267934 () Unit!18464)

(assert (=> b!590440 (= lt!267934 e!337095)))

(declare-fun c!66680 () Bool)

(assert (=> b!590440 (= c!66680 (= lt!267932 Undefined!6130))))

(assert (=> b!590440 (= lt!267932 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267931 lt!267928 mask!3053))))

(assert (=> b!590440 e!337094))

(declare-fun res!377824 () Bool)

(assert (=> b!590440 (=> (not res!377824) (not e!337094))))

(declare-fun lt!267936 () (_ BitVec 32))

(assert (=> b!590440 (= res!377824 (= lt!267930 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267936 vacantSpotIndex!68 lt!267931 lt!267928 mask!3053)))))

(assert (=> b!590440 (= lt!267930 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267936 vacantSpotIndex!68 (select (arr!17683 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!590440 (= lt!267931 (select (store (arr!17683 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!267929 () Unit!18464)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36830 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18464)

(assert (=> b!590440 (= lt!267929 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267936 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!590440 (= lt!267936 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!377816 () Bool)

(assert (=> start!54080 (=> (not res!377816) (not e!337098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54080 (= res!377816 (validMask!0 mask!3053))))

(assert (=> start!54080 e!337098))

(assert (=> start!54080 true))

(declare-fun array_inv!13457 (array!36830) Bool)

(assert (=> start!54080 (array_inv!13457 a!2986)))

(declare-fun b!590452 () Bool)

(assert (=> b!590452 (= e!337102 e!337097)))

(declare-fun res!377817 () Bool)

(assert (=> b!590452 (=> (not res!377817) (not e!337097))))

(assert (=> b!590452 (= res!377817 (= (select (store (arr!17683 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!590452 (= lt!267928 (array!36831 (store (arr!17683 a!2986) i!1108 k0!1786) (size!18047 a!2986)))))

(declare-fun b!590453 () Bool)

(declare-fun res!377828 () Bool)

(assert (=> b!590453 (=> (not res!377828) (not e!337102))))

(assert (=> b!590453 (= res!377828 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17683 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!590454 () Bool)

(declare-fun res!377815 () Bool)

(assert (=> b!590454 (=> (not res!377815) (not e!337102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36830 (_ BitVec 32)) Bool)

(assert (=> b!590454 (= res!377815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!590455 () Bool)

(declare-fun res!377814 () Bool)

(assert (=> b!590455 (=> (not res!377814) (not e!337098))))

(assert (=> b!590455 (= res!377814 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!590456 () Bool)

(declare-fun Unit!18467 () Unit!18464)

(assert (=> b!590456 (= e!337095 Unit!18467)))

(assert (=> b!590456 false))

(assert (= (and start!54080 res!377816) b!590442))

(assert (= (and b!590442 res!377826) b!590450))

(assert (= (and b!590450 res!377820) b!590444))

(assert (= (and b!590444 res!377819) b!590455))

(assert (= (and b!590455 res!377814) b!590449))

(assert (= (and b!590449 res!377827) b!590454))

(assert (= (and b!590454 res!377815) b!590445))

(assert (= (and b!590445 res!377822) b!590453))

(assert (= (and b!590453 res!377828) b!590452))

(assert (= (and b!590452 res!377817) b!590441))

(assert (= (and b!590441 res!377821) b!590440))

(assert (= (and b!590440 res!377824) b!590451))

(assert (= (and b!590440 c!66680) b!590456))

(assert (= (and b!590440 (not c!66680)) b!590447))

(assert (= (and b!590440 (not res!377818)) b!590446))

(assert (= (and b!590446 res!377825) b!590448))

(assert (= (and b!590448 (not res!377823)) b!590443))

(declare-fun m!568853 () Bool)

(assert (=> b!590452 m!568853))

(declare-fun m!568855 () Bool)

(assert (=> b!590452 m!568855))

(declare-fun m!568857 () Bool)

(assert (=> b!590440 m!568857))

(declare-fun m!568859 () Bool)

(assert (=> b!590440 m!568859))

(declare-fun m!568861 () Bool)

(assert (=> b!590440 m!568861))

(declare-fun m!568863 () Bool)

(assert (=> b!590440 m!568863))

(declare-fun m!568865 () Bool)

(assert (=> b!590440 m!568865))

(assert (=> b!590440 m!568861))

(declare-fun m!568867 () Bool)

(assert (=> b!590440 m!568867))

(declare-fun m!568869 () Bool)

(assert (=> b!590440 m!568869))

(assert (=> b!590440 m!568853))

(assert (=> b!590448 m!568861))

(assert (=> b!590448 m!568853))

(declare-fun m!568871 () Bool)

(assert (=> b!590448 m!568871))

(assert (=> b!590446 m!568861))

(assert (=> b!590446 m!568853))

(assert (=> b!590446 m!568871))

(declare-fun m!568873 () Bool)

(assert (=> b!590444 m!568873))

(declare-fun m!568875 () Bool)

(assert (=> b!590455 m!568875))

(declare-fun m!568877 () Bool)

(assert (=> b!590445 m!568877))

(declare-fun m!568879 () Bool)

(assert (=> b!590453 m!568879))

(assert (=> b!590443 m!568861))

(assert (=> b!590443 m!568861))

(declare-fun m!568881 () Bool)

(assert (=> b!590443 m!568881))

(assert (=> b!590450 m!568861))

(assert (=> b!590450 m!568861))

(declare-fun m!568883 () Bool)

(assert (=> b!590450 m!568883))

(declare-fun m!568885 () Bool)

(assert (=> b!590449 m!568885))

(declare-fun m!568887 () Bool)

(assert (=> b!590454 m!568887))

(declare-fun m!568889 () Bool)

(assert (=> start!54080 m!568889))

(declare-fun m!568891 () Bool)

(assert (=> start!54080 m!568891))

(declare-fun m!568893 () Bool)

(assert (=> b!590441 m!568893))

(assert (=> b!590441 m!568861))

(assert (=> b!590441 m!568861))

(declare-fun m!568895 () Bool)

(assert (=> b!590441 m!568895))

(check-sat (not b!590450) (not b!590443) (not b!590444) (not b!590455) (not b!590449) (not b!590445) (not b!590441) (not b!590440) (not b!590454) (not start!54080))
(check-sat)
(get-model)

(declare-fun b!590520 () Bool)

(declare-fun e!337139 () SeekEntryResult!6130)

(assert (=> b!590520 (= e!337139 (Found!6130 index!984))))

(declare-fun b!590522 () Bool)

(declare-fun e!337141 () SeekEntryResult!6130)

(assert (=> b!590522 (= e!337141 e!337139)))

(declare-fun lt!267968 () (_ BitVec 64))

(declare-fun c!66691 () Bool)

(assert (=> b!590522 (= c!66691 (= lt!267968 (select (arr!17683 a!2986) j!136)))))

(declare-fun b!590523 () Bool)

(declare-fun c!66692 () Bool)

(assert (=> b!590523 (= c!66692 (= lt!267968 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!337140 () SeekEntryResult!6130)

(assert (=> b!590523 (= e!337139 e!337140)))

(declare-fun b!590524 () Bool)

(assert (=> b!590524 (= e!337141 Undefined!6130)))

(declare-fun b!590525 () Bool)

(assert (=> b!590525 (= e!337140 (MissingVacant!6130 vacantSpotIndex!68))))

(declare-fun b!590521 () Bool)

(assert (=> b!590521 (= e!337140 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17683 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!85983 () Bool)

(declare-fun lt!267969 () SeekEntryResult!6130)

(get-info :version)

(assert (=> d!85983 (and (or ((_ is Undefined!6130) lt!267969) (not ((_ is Found!6130) lt!267969)) (and (bvsge (index!26753 lt!267969) #b00000000000000000000000000000000) (bvslt (index!26753 lt!267969) (size!18047 a!2986)))) (or ((_ is Undefined!6130) lt!267969) ((_ is Found!6130) lt!267969) (not ((_ is MissingVacant!6130) lt!267969)) (not (= (index!26755 lt!267969) vacantSpotIndex!68)) (and (bvsge (index!26755 lt!267969) #b00000000000000000000000000000000) (bvslt (index!26755 lt!267969) (size!18047 a!2986)))) (or ((_ is Undefined!6130) lt!267969) (ite ((_ is Found!6130) lt!267969) (= (select (arr!17683 a!2986) (index!26753 lt!267969)) (select (arr!17683 a!2986) j!136)) (and ((_ is MissingVacant!6130) lt!267969) (= (index!26755 lt!267969) vacantSpotIndex!68) (= (select (arr!17683 a!2986) (index!26755 lt!267969)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!85983 (= lt!267969 e!337141)))

(declare-fun c!66690 () Bool)

(assert (=> d!85983 (= c!66690 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!85983 (= lt!267968 (select (arr!17683 a!2986) index!984))))

(assert (=> d!85983 (validMask!0 mask!3053)))

(assert (=> d!85983 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17683 a!2986) j!136) a!2986 mask!3053) lt!267969)))

(assert (= (and d!85983 c!66690) b!590524))

(assert (= (and d!85983 (not c!66690)) b!590522))

(assert (= (and b!590522 c!66691) b!590520))

(assert (= (and b!590522 (not c!66691)) b!590523))

(assert (= (and b!590523 c!66692) b!590525))

(assert (= (and b!590523 (not c!66692)) b!590521))

(assert (=> b!590521 m!568857))

(assert (=> b!590521 m!568857))

(assert (=> b!590521 m!568861))

(declare-fun m!568941 () Bool)

(assert (=> b!590521 m!568941))

(declare-fun m!568943 () Bool)

(assert (=> d!85983 m!568943))

(declare-fun m!568945 () Bool)

(assert (=> d!85983 m!568945))

(assert (=> d!85983 m!568893))

(assert (=> d!85983 m!568889))

(assert (=> b!590441 d!85983))

(declare-fun d!85985 () Bool)

(declare-fun lt!267972 () (_ BitVec 32))

(assert (=> d!85985 (and (bvsge lt!267972 #b00000000000000000000000000000000) (bvslt lt!267972 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!85985 (= lt!267972 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!85985 (validMask!0 mask!3053)))

(assert (=> d!85985 (= (nextIndex!0 index!984 x!910 mask!3053) lt!267972)))

(declare-fun bs!18254 () Bool)

(assert (= bs!18254 d!85985))

(declare-fun m!568947 () Bool)

(assert (=> bs!18254 m!568947))

(assert (=> bs!18254 m!568889))

(assert (=> b!590440 d!85985))

(declare-fun d!85987 () Bool)

(declare-fun e!337144 () Bool)

(assert (=> d!85987 e!337144))

(declare-fun res!377876 () Bool)

(assert (=> d!85987 (=> (not res!377876) (not e!337144))))

(assert (=> d!85987 (= res!377876 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18047 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18047 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18047 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18047 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18047 a!2986))))))

(declare-fun lt!267975 () Unit!18464)

(declare-fun choose!9 (array!36830 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18464)

(assert (=> d!85987 (= lt!267975 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267936 vacantSpotIndex!68 mask!3053))))

(assert (=> d!85987 (validMask!0 mask!3053)))

(assert (=> d!85987 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267936 vacantSpotIndex!68 mask!3053) lt!267975)))

(declare-fun b!590528 () Bool)

(assert (=> b!590528 (= e!337144 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267936 vacantSpotIndex!68 (select (arr!17683 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267936 vacantSpotIndex!68 (select (store (arr!17683 a!2986) i!1108 k0!1786) j!136) (array!36831 (store (arr!17683 a!2986) i!1108 k0!1786) (size!18047 a!2986)) mask!3053)))))

(assert (= (and d!85987 res!377876) b!590528))

(declare-fun m!568949 () Bool)

(assert (=> d!85987 m!568949))

(assert (=> d!85987 m!568889))

(assert (=> b!590528 m!568853))

(assert (=> b!590528 m!568861))

(assert (=> b!590528 m!568859))

(declare-fun m!568951 () Bool)

(assert (=> b!590528 m!568951))

(assert (=> b!590528 m!568861))

(assert (=> b!590528 m!568867))

(assert (=> b!590528 m!568859))

(assert (=> b!590440 d!85987))

(declare-fun b!590529 () Bool)

(declare-fun e!337145 () SeekEntryResult!6130)

(assert (=> b!590529 (= e!337145 (Found!6130 lt!267936))))

(declare-fun b!590531 () Bool)

(declare-fun e!337147 () SeekEntryResult!6130)

(assert (=> b!590531 (= e!337147 e!337145)))

(declare-fun c!66694 () Bool)

(declare-fun lt!267976 () (_ BitVec 64))

(assert (=> b!590531 (= c!66694 (= lt!267976 lt!267931))))

(declare-fun b!590532 () Bool)

(declare-fun c!66695 () Bool)

(assert (=> b!590532 (= c!66695 (= lt!267976 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!337146 () SeekEntryResult!6130)

(assert (=> b!590532 (= e!337145 e!337146)))

(declare-fun b!590533 () Bool)

(assert (=> b!590533 (= e!337147 Undefined!6130)))

(declare-fun b!590534 () Bool)

(assert (=> b!590534 (= e!337146 (MissingVacant!6130 vacantSpotIndex!68))))

(declare-fun b!590530 () Bool)

(assert (=> b!590530 (= e!337146 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!267936 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!267931 lt!267928 mask!3053))))

(declare-fun d!85989 () Bool)

(declare-fun lt!267977 () SeekEntryResult!6130)

(assert (=> d!85989 (and (or ((_ is Undefined!6130) lt!267977) (not ((_ is Found!6130) lt!267977)) (and (bvsge (index!26753 lt!267977) #b00000000000000000000000000000000) (bvslt (index!26753 lt!267977) (size!18047 lt!267928)))) (or ((_ is Undefined!6130) lt!267977) ((_ is Found!6130) lt!267977) (not ((_ is MissingVacant!6130) lt!267977)) (not (= (index!26755 lt!267977) vacantSpotIndex!68)) (and (bvsge (index!26755 lt!267977) #b00000000000000000000000000000000) (bvslt (index!26755 lt!267977) (size!18047 lt!267928)))) (or ((_ is Undefined!6130) lt!267977) (ite ((_ is Found!6130) lt!267977) (= (select (arr!17683 lt!267928) (index!26753 lt!267977)) lt!267931) (and ((_ is MissingVacant!6130) lt!267977) (= (index!26755 lt!267977) vacantSpotIndex!68) (= (select (arr!17683 lt!267928) (index!26755 lt!267977)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!85989 (= lt!267977 e!337147)))

(declare-fun c!66693 () Bool)

(assert (=> d!85989 (= c!66693 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!85989 (= lt!267976 (select (arr!17683 lt!267928) lt!267936))))

(assert (=> d!85989 (validMask!0 mask!3053)))

(assert (=> d!85989 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267936 vacantSpotIndex!68 lt!267931 lt!267928 mask!3053) lt!267977)))

(assert (= (and d!85989 c!66693) b!590533))

(assert (= (and d!85989 (not c!66693)) b!590531))

(assert (= (and b!590531 c!66694) b!590529))

(assert (= (and b!590531 (not c!66694)) b!590532))

(assert (= (and b!590532 c!66695) b!590534))

(assert (= (and b!590532 (not c!66695)) b!590530))

(declare-fun m!568953 () Bool)

(assert (=> b!590530 m!568953))

(assert (=> b!590530 m!568953))

(declare-fun m!568955 () Bool)

(assert (=> b!590530 m!568955))

(declare-fun m!568957 () Bool)

(assert (=> d!85989 m!568957))

(declare-fun m!568959 () Bool)

(assert (=> d!85989 m!568959))

(declare-fun m!568961 () Bool)

(assert (=> d!85989 m!568961))

(assert (=> d!85989 m!568889))

(assert (=> b!590440 d!85989))

(declare-fun b!590535 () Bool)

(declare-fun e!337148 () SeekEntryResult!6130)

(assert (=> b!590535 (= e!337148 (Found!6130 index!984))))

(declare-fun b!590537 () Bool)

(declare-fun e!337150 () SeekEntryResult!6130)

(assert (=> b!590537 (= e!337150 e!337148)))

(declare-fun c!66697 () Bool)

(declare-fun lt!267978 () (_ BitVec 64))

(assert (=> b!590537 (= c!66697 (= lt!267978 lt!267931))))

(declare-fun b!590538 () Bool)

(declare-fun c!66698 () Bool)

(assert (=> b!590538 (= c!66698 (= lt!267978 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!337149 () SeekEntryResult!6130)

(assert (=> b!590538 (= e!337148 e!337149)))

(declare-fun b!590539 () Bool)

(assert (=> b!590539 (= e!337150 Undefined!6130)))

(declare-fun b!590540 () Bool)

(assert (=> b!590540 (= e!337149 (MissingVacant!6130 vacantSpotIndex!68))))

(declare-fun b!590536 () Bool)

(assert (=> b!590536 (= e!337149 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!267931 lt!267928 mask!3053))))

(declare-fun lt!267979 () SeekEntryResult!6130)

(declare-fun d!85991 () Bool)

(assert (=> d!85991 (and (or ((_ is Undefined!6130) lt!267979) (not ((_ is Found!6130) lt!267979)) (and (bvsge (index!26753 lt!267979) #b00000000000000000000000000000000) (bvslt (index!26753 lt!267979) (size!18047 lt!267928)))) (or ((_ is Undefined!6130) lt!267979) ((_ is Found!6130) lt!267979) (not ((_ is MissingVacant!6130) lt!267979)) (not (= (index!26755 lt!267979) vacantSpotIndex!68)) (and (bvsge (index!26755 lt!267979) #b00000000000000000000000000000000) (bvslt (index!26755 lt!267979) (size!18047 lt!267928)))) (or ((_ is Undefined!6130) lt!267979) (ite ((_ is Found!6130) lt!267979) (= (select (arr!17683 lt!267928) (index!26753 lt!267979)) lt!267931) (and ((_ is MissingVacant!6130) lt!267979) (= (index!26755 lt!267979) vacantSpotIndex!68) (= (select (arr!17683 lt!267928) (index!26755 lt!267979)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!85991 (= lt!267979 e!337150)))

(declare-fun c!66696 () Bool)

(assert (=> d!85991 (= c!66696 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!85991 (= lt!267978 (select (arr!17683 lt!267928) index!984))))

(assert (=> d!85991 (validMask!0 mask!3053)))

(assert (=> d!85991 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267931 lt!267928 mask!3053) lt!267979)))

(assert (= (and d!85991 c!66696) b!590539))

(assert (= (and d!85991 (not c!66696)) b!590537))

(assert (= (and b!590537 c!66697) b!590535))

(assert (= (and b!590537 (not c!66697)) b!590538))

(assert (= (and b!590538 c!66698) b!590540))

(assert (= (and b!590538 (not c!66698)) b!590536))

(assert (=> b!590536 m!568857))

(assert (=> b!590536 m!568857))

(declare-fun m!568963 () Bool)

(assert (=> b!590536 m!568963))

(declare-fun m!568965 () Bool)

(assert (=> d!85991 m!568965))

(declare-fun m!568967 () Bool)

(assert (=> d!85991 m!568967))

(declare-fun m!568969 () Bool)

(assert (=> d!85991 m!568969))

(assert (=> d!85991 m!568889))

(assert (=> b!590440 d!85991))

(declare-fun b!590541 () Bool)

(declare-fun e!337151 () SeekEntryResult!6130)

(assert (=> b!590541 (= e!337151 (Found!6130 lt!267936))))

(declare-fun b!590543 () Bool)

(declare-fun e!337153 () SeekEntryResult!6130)

(assert (=> b!590543 (= e!337153 e!337151)))

(declare-fun c!66700 () Bool)

(declare-fun lt!267980 () (_ BitVec 64))

(assert (=> b!590543 (= c!66700 (= lt!267980 (select (arr!17683 a!2986) j!136)))))

(declare-fun b!590544 () Bool)

(declare-fun c!66701 () Bool)

(assert (=> b!590544 (= c!66701 (= lt!267980 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!337152 () SeekEntryResult!6130)

(assert (=> b!590544 (= e!337151 e!337152)))

(declare-fun b!590545 () Bool)

(assert (=> b!590545 (= e!337153 Undefined!6130)))

(declare-fun b!590546 () Bool)

(assert (=> b!590546 (= e!337152 (MissingVacant!6130 vacantSpotIndex!68))))

(declare-fun b!590542 () Bool)

(assert (=> b!590542 (= e!337152 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!267936 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17683 a!2986) j!136) a!2986 mask!3053))))

(declare-fun lt!267981 () SeekEntryResult!6130)

(declare-fun d!85993 () Bool)

(assert (=> d!85993 (and (or ((_ is Undefined!6130) lt!267981) (not ((_ is Found!6130) lt!267981)) (and (bvsge (index!26753 lt!267981) #b00000000000000000000000000000000) (bvslt (index!26753 lt!267981) (size!18047 a!2986)))) (or ((_ is Undefined!6130) lt!267981) ((_ is Found!6130) lt!267981) (not ((_ is MissingVacant!6130) lt!267981)) (not (= (index!26755 lt!267981) vacantSpotIndex!68)) (and (bvsge (index!26755 lt!267981) #b00000000000000000000000000000000) (bvslt (index!26755 lt!267981) (size!18047 a!2986)))) (or ((_ is Undefined!6130) lt!267981) (ite ((_ is Found!6130) lt!267981) (= (select (arr!17683 a!2986) (index!26753 lt!267981)) (select (arr!17683 a!2986) j!136)) (and ((_ is MissingVacant!6130) lt!267981) (= (index!26755 lt!267981) vacantSpotIndex!68) (= (select (arr!17683 a!2986) (index!26755 lt!267981)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!85993 (= lt!267981 e!337153)))

(declare-fun c!66699 () Bool)

(assert (=> d!85993 (= c!66699 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!85993 (= lt!267980 (select (arr!17683 a!2986) lt!267936))))

(assert (=> d!85993 (validMask!0 mask!3053)))

(assert (=> d!85993 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267936 vacantSpotIndex!68 (select (arr!17683 a!2986) j!136) a!2986 mask!3053) lt!267981)))

(assert (= (and d!85993 c!66699) b!590545))

(assert (= (and d!85993 (not c!66699)) b!590543))

(assert (= (and b!590543 c!66700) b!590541))

(assert (= (and b!590543 (not c!66700)) b!590544))

(assert (= (and b!590544 c!66701) b!590546))

(assert (= (and b!590544 (not c!66701)) b!590542))

(assert (=> b!590542 m!568953))

(assert (=> b!590542 m!568953))

(assert (=> b!590542 m!568861))

(declare-fun m!568971 () Bool)

(assert (=> b!590542 m!568971))

(declare-fun m!568973 () Bool)

(assert (=> d!85993 m!568973))

(declare-fun m!568975 () Bool)

(assert (=> d!85993 m!568975))

(declare-fun m!568977 () Bool)

(assert (=> d!85993 m!568977))

(assert (=> d!85993 m!568889))

(assert (=> b!590440 d!85993))

(declare-fun bm!32807 () Bool)

(declare-fun call!32810 () Bool)

(declare-fun c!66704 () Bool)

(assert (=> bm!32807 (= call!32810 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!66704 (Cons!11773 (select (arr!17683 a!2986) #b00000000000000000000000000000000) Nil!11774) Nil!11774)))))

(declare-fun b!590557 () Bool)

(declare-fun e!337165 () Bool)

(declare-fun contains!2912 (List!11777 (_ BitVec 64)) Bool)

(assert (=> b!590557 (= e!337165 (contains!2912 Nil!11774 (select (arr!17683 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!590558 () Bool)

(declare-fun e!337162 () Bool)

(declare-fun e!337164 () Bool)

(assert (=> b!590558 (= e!337162 e!337164)))

(declare-fun res!377884 () Bool)

(assert (=> b!590558 (=> (not res!377884) (not e!337164))))

(assert (=> b!590558 (= res!377884 (not e!337165))))

(declare-fun res!377883 () Bool)

(assert (=> b!590558 (=> (not res!377883) (not e!337165))))

(assert (=> b!590558 (= res!377883 (validKeyInArray!0 (select (arr!17683 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!590559 () Bool)

(declare-fun e!337163 () Bool)

(assert (=> b!590559 (= e!337163 call!32810)))

(declare-fun b!590560 () Bool)

(assert (=> b!590560 (= e!337164 e!337163)))

(assert (=> b!590560 (= c!66704 (validKeyInArray!0 (select (arr!17683 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!590561 () Bool)

(assert (=> b!590561 (= e!337163 call!32810)))

(declare-fun d!85995 () Bool)

(declare-fun res!377885 () Bool)

(assert (=> d!85995 (=> res!377885 e!337162)))

(assert (=> d!85995 (= res!377885 (bvsge #b00000000000000000000000000000000 (size!18047 a!2986)))))

(assert (=> d!85995 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11774) e!337162)))

(assert (= (and d!85995 (not res!377885)) b!590558))

(assert (= (and b!590558 res!377883) b!590557))

(assert (= (and b!590558 res!377884) b!590560))

(assert (= (and b!590560 c!66704) b!590561))

(assert (= (and b!590560 (not c!66704)) b!590559))

(assert (= (or b!590561 b!590559) bm!32807))

(declare-fun m!568979 () Bool)

(assert (=> bm!32807 m!568979))

(declare-fun m!568981 () Bool)

(assert (=> bm!32807 m!568981))

(assert (=> b!590557 m!568979))

(assert (=> b!590557 m!568979))

(declare-fun m!568983 () Bool)

(assert (=> b!590557 m!568983))

(assert (=> b!590558 m!568979))

(assert (=> b!590558 m!568979))

(declare-fun m!568985 () Bool)

(assert (=> b!590558 m!568985))

(assert (=> b!590560 m!568979))

(assert (=> b!590560 m!568979))

(assert (=> b!590560 m!568985))

(assert (=> b!590445 d!85995))

(declare-fun d!85997 () Bool)

(assert (=> d!85997 (= (validKeyInArray!0 (select (arr!17683 a!2986) j!136)) (and (not (= (select (arr!17683 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17683 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!590450 d!85997))

(declare-fun d!85999 () Bool)

(declare-fun res!377890 () Bool)

(declare-fun e!337170 () Bool)

(assert (=> d!85999 (=> res!377890 e!337170)))

(assert (=> d!85999 (= res!377890 (= (select (arr!17683 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!85999 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!337170)))

(declare-fun b!590566 () Bool)

(declare-fun e!337171 () Bool)

(assert (=> b!590566 (= e!337170 e!337171)))

(declare-fun res!377891 () Bool)

(assert (=> b!590566 (=> (not res!377891) (not e!337171))))

(assert (=> b!590566 (= res!377891 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18047 a!2986)))))

(declare-fun b!590567 () Bool)

(assert (=> b!590567 (= e!337171 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85999 (not res!377890)) b!590566))

(assert (= (and b!590566 res!377891) b!590567))

(assert (=> d!85999 m!568979))

(declare-fun m!568987 () Bool)

(assert (=> b!590567 m!568987))

(assert (=> b!590455 d!85999))

(declare-fun d!86001 () Bool)

(assert (=> d!86001 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!590444 d!86001))

(declare-fun d!86003 () Bool)

(assert (=> d!86003 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!54080 d!86003))

(declare-fun d!86011 () Bool)

(assert (=> d!86011 (= (array_inv!13457 a!2986) (bvsge (size!18047 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!54080 d!86011))

(declare-fun b!590609 () Bool)

(declare-fun c!66720 () Bool)

(declare-fun lt!268004 () (_ BitVec 64))

(assert (=> b!590609 (= c!66720 (= lt!268004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!337199 () SeekEntryResult!6130)

(declare-fun e!337200 () SeekEntryResult!6130)

(assert (=> b!590609 (= e!337199 e!337200)))

(declare-fun b!590610 () Bool)

(declare-fun e!337198 () SeekEntryResult!6130)

(assert (=> b!590610 (= e!337198 Undefined!6130)))

(declare-fun lt!268003 () SeekEntryResult!6130)

(declare-fun b!590611 () Bool)

(assert (=> b!590611 (= e!337200 (seekKeyOrZeroReturnVacant!0 (x!55570 lt!268003) (index!26754 lt!268003) (index!26754 lt!268003) k0!1786 a!2986 mask!3053))))

(declare-fun b!590612 () Bool)

(assert (=> b!590612 (= e!337200 (MissingZero!6130 (index!26754 lt!268003)))))

(declare-fun b!590613 () Bool)

(assert (=> b!590613 (= e!337199 (Found!6130 (index!26754 lt!268003)))))

(declare-fun b!590614 () Bool)

(assert (=> b!590614 (= e!337198 e!337199)))

(assert (=> b!590614 (= lt!268004 (select (arr!17683 a!2986) (index!26754 lt!268003)))))

(declare-fun c!66722 () Bool)

(assert (=> b!590614 (= c!66722 (= lt!268004 k0!1786))))

(declare-fun d!86013 () Bool)

(declare-fun lt!268005 () SeekEntryResult!6130)

(assert (=> d!86013 (and (or ((_ is Undefined!6130) lt!268005) (not ((_ is Found!6130) lt!268005)) (and (bvsge (index!26753 lt!268005) #b00000000000000000000000000000000) (bvslt (index!26753 lt!268005) (size!18047 a!2986)))) (or ((_ is Undefined!6130) lt!268005) ((_ is Found!6130) lt!268005) (not ((_ is MissingZero!6130) lt!268005)) (and (bvsge (index!26752 lt!268005) #b00000000000000000000000000000000) (bvslt (index!26752 lt!268005) (size!18047 a!2986)))) (or ((_ is Undefined!6130) lt!268005) ((_ is Found!6130) lt!268005) ((_ is MissingZero!6130) lt!268005) (not ((_ is MissingVacant!6130) lt!268005)) (and (bvsge (index!26755 lt!268005) #b00000000000000000000000000000000) (bvslt (index!26755 lt!268005) (size!18047 a!2986)))) (or ((_ is Undefined!6130) lt!268005) (ite ((_ is Found!6130) lt!268005) (= (select (arr!17683 a!2986) (index!26753 lt!268005)) k0!1786) (ite ((_ is MissingZero!6130) lt!268005) (= (select (arr!17683 a!2986) (index!26752 lt!268005)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6130) lt!268005) (= (select (arr!17683 a!2986) (index!26755 lt!268005)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!86013 (= lt!268005 e!337198)))

(declare-fun c!66721 () Bool)

(assert (=> d!86013 (= c!66721 (and ((_ is Intermediate!6130) lt!268003) (undefined!6942 lt!268003)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36830 (_ BitVec 32)) SeekEntryResult!6130)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86013 (= lt!268003 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!86013 (validMask!0 mask!3053)))

(assert (=> d!86013 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!268005)))

(assert (= (and d!86013 c!66721) b!590610))

(assert (= (and d!86013 (not c!66721)) b!590614))

(assert (= (and b!590614 c!66722) b!590613))

(assert (= (and b!590614 (not c!66722)) b!590609))

(assert (= (and b!590609 c!66720) b!590612))

(assert (= (and b!590609 (not c!66720)) b!590611))

(declare-fun m!569017 () Bool)

(assert (=> b!590611 m!569017))

(declare-fun m!569019 () Bool)

(assert (=> b!590614 m!569019))

(declare-fun m!569021 () Bool)

(assert (=> d!86013 m!569021))

(declare-fun m!569023 () Bool)

(assert (=> d!86013 m!569023))

(declare-fun m!569025 () Bool)

(assert (=> d!86013 m!569025))

(declare-fun m!569027 () Bool)

(assert (=> d!86013 m!569027))

(assert (=> d!86013 m!569025))

(assert (=> d!86013 m!568889))

(declare-fun m!569029 () Bool)

(assert (=> d!86013 m!569029))

(assert (=> b!590449 d!86013))

(declare-fun b!590665 () Bool)

(declare-fun e!337228 () Bool)

(declare-fun call!32813 () Bool)

(assert (=> b!590665 (= e!337228 call!32813)))

(declare-fun b!590666 () Bool)

(declare-fun e!337229 () Bool)

(assert (=> b!590666 (= e!337229 call!32813)))

(declare-fun b!590667 () Bool)

(declare-fun e!337230 () Bool)

(assert (=> b!590667 (= e!337230 e!337229)))

(declare-fun c!66746 () Bool)

(assert (=> b!590667 (= c!66746 (validKeyInArray!0 (select (arr!17683 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!86023 () Bool)

(declare-fun res!377908 () Bool)

(assert (=> d!86023 (=> res!377908 e!337230)))

(assert (=> d!86023 (= res!377908 (bvsge #b00000000000000000000000000000000 (size!18047 a!2986)))))

(assert (=> d!86023 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!337230)))

(declare-fun bm!32810 () Bool)

(assert (=> bm!32810 (= call!32813 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!590668 () Bool)

(assert (=> b!590668 (= e!337229 e!337228)))

(declare-fun lt!268026 () (_ BitVec 64))

(assert (=> b!590668 (= lt!268026 (select (arr!17683 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!268027 () Unit!18464)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36830 (_ BitVec 64) (_ BitVec 32)) Unit!18464)

(assert (=> b!590668 (= lt!268027 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!268026 #b00000000000000000000000000000000))))

(assert (=> b!590668 (arrayContainsKey!0 a!2986 lt!268026 #b00000000000000000000000000000000)))

(declare-fun lt!268028 () Unit!18464)

(assert (=> b!590668 (= lt!268028 lt!268027)))

(declare-fun res!377907 () Bool)

(assert (=> b!590668 (= res!377907 (= (seekEntryOrOpen!0 (select (arr!17683 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6130 #b00000000000000000000000000000000)))))

(assert (=> b!590668 (=> (not res!377907) (not e!337228))))

(assert (= (and d!86023 (not res!377908)) b!590667))

(assert (= (and b!590667 c!66746) b!590668))

(assert (= (and b!590667 (not c!66746)) b!590666))

(assert (= (and b!590668 res!377907) b!590665))

(assert (= (or b!590665 b!590666) bm!32810))

(assert (=> b!590667 m!568979))

(assert (=> b!590667 m!568979))

(assert (=> b!590667 m!568985))

(declare-fun m!569057 () Bool)

(assert (=> bm!32810 m!569057))

(assert (=> b!590668 m!568979))

(declare-fun m!569059 () Bool)

(assert (=> b!590668 m!569059))

(declare-fun m!569061 () Bool)

(assert (=> b!590668 m!569061))

(assert (=> b!590668 m!568979))

(declare-fun m!569063 () Bool)

(assert (=> b!590668 m!569063))

(assert (=> b!590454 d!86023))

(declare-fun d!86031 () Bool)

(declare-fun res!377909 () Bool)

(declare-fun e!337231 () Bool)

(assert (=> d!86031 (=> res!377909 e!337231)))

(assert (=> d!86031 (= res!377909 (= (select (arr!17683 lt!267928) j!136) (select (arr!17683 a!2986) j!136)))))

(assert (=> d!86031 (= (arrayContainsKey!0 lt!267928 (select (arr!17683 a!2986) j!136) j!136) e!337231)))

(declare-fun b!590669 () Bool)

(declare-fun e!337232 () Bool)

(assert (=> b!590669 (= e!337231 e!337232)))

(declare-fun res!377910 () Bool)

(assert (=> b!590669 (=> (not res!377910) (not e!337232))))

(assert (=> b!590669 (= res!377910 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18047 lt!267928)))))

(declare-fun b!590670 () Bool)

(assert (=> b!590670 (= e!337232 (arrayContainsKey!0 lt!267928 (select (arr!17683 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86031 (not res!377909)) b!590669))

(assert (= (and b!590669 res!377910) b!590670))

(declare-fun m!569065 () Bool)

(assert (=> d!86031 m!569065))

(assert (=> b!590670 m!568861))

(declare-fun m!569067 () Bool)

(assert (=> b!590670 m!569067))

(assert (=> b!590443 d!86031))

(check-sat (not b!590528) (not b!590611) (not b!590530) (not b!590542) (not d!85987) (not b!590536) (not d!85985) (not d!85983) (not b!590560) (not d!86013) (not d!85991) (not bm!32807) (not d!85989) (not b!590670) (not b!590668) (not b!590521) (not d!85993) (not b!590557) (not b!590667) (not b!590567) (not b!590558) (not bm!32810))
(check-sat)
