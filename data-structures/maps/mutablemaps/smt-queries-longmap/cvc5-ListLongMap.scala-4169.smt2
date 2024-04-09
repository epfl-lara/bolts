; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56766 () Bool)

(assert start!56766)

(declare-fun b!628710 () Bool)

(declare-fun e!359619 () Bool)

(declare-fun e!359616 () Bool)

(assert (=> b!628710 (= e!359619 e!359616)))

(declare-fun res!406456 () Bool)

(assert (=> b!628710 (=> (not res!406456) (not e!359616))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!290536 () (_ BitVec 32))

(assert (=> b!628710 (= res!406456 (and (bvsge lt!290536 #b00000000000000000000000000000000) (bvslt lt!290536 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628710 (= lt!290536 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6666 0))(
  ( (MissingZero!6666 (index!28947 (_ BitVec 32))) (Found!6666 (index!28948 (_ BitVec 32))) (Intermediate!6666 (undefined!7478 Bool) (index!28949 (_ BitVec 32)) (x!57709 (_ BitVec 32))) (Undefined!6666) (MissingVacant!6666 (index!28950 (_ BitVec 32))) )
))
(declare-fun lt!290538 () SeekEntryResult!6666)

(declare-fun b!628711 () Bool)

(declare-datatypes ((array!37968 0))(
  ( (array!37969 (arr!18219 (Array (_ BitVec 32) (_ BitVec 64))) (size!18583 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37968)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37968 (_ BitVec 32)) SeekEntryResult!6666)

(assert (=> b!628711 (= e!359616 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290536 vacantSpotIndex!68 (select (arr!18219 a!2986) j!136) a!2986 mask!3053) lt!290538)))))

(declare-fun b!628712 () Bool)

(declare-fun res!406447 () Bool)

(declare-fun e!359620 () Bool)

(assert (=> b!628712 (=> (not res!406447) (not e!359620))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37968 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628712 (= res!406447 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!628713 () Bool)

(declare-fun e!359618 () Bool)

(assert (=> b!628713 (= e!359620 e!359618)))

(declare-fun res!406449 () Bool)

(assert (=> b!628713 (=> (not res!406449) (not e!359618))))

(declare-fun lt!290537 () SeekEntryResult!6666)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!628713 (= res!406449 (or (= lt!290537 (MissingZero!6666 i!1108)) (= lt!290537 (MissingVacant!6666 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37968 (_ BitVec 32)) SeekEntryResult!6666)

(assert (=> b!628713 (= lt!290537 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!628714 () Bool)

(declare-fun res!406454 () Bool)

(assert (=> b!628714 (=> (not res!406454) (not e!359618))))

(assert (=> b!628714 (= res!406454 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18219 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18219 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!406455 () Bool)

(assert (=> start!56766 (=> (not res!406455) (not e!359620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56766 (= res!406455 (validMask!0 mask!3053))))

(assert (=> start!56766 e!359620))

(assert (=> start!56766 true))

(declare-fun array_inv!13993 (array!37968) Bool)

(assert (=> start!56766 (array_inv!13993 a!2986)))

(declare-fun b!628715 () Bool)

(assert (=> b!628715 (= e!359618 e!359619)))

(declare-fun res!406450 () Bool)

(assert (=> b!628715 (=> (not res!406450) (not e!359619))))

(assert (=> b!628715 (= res!406450 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18219 a!2986) j!136) a!2986 mask!3053) lt!290538))))

(assert (=> b!628715 (= lt!290538 (Found!6666 j!136))))

(declare-fun b!628716 () Bool)

(declare-fun res!406451 () Bool)

(assert (=> b!628716 (=> (not res!406451) (not e!359620))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628716 (= res!406451 (validKeyInArray!0 (select (arr!18219 a!2986) j!136)))))

(declare-fun b!628717 () Bool)

(declare-fun res!406453 () Bool)

(assert (=> b!628717 (=> (not res!406453) (not e!359620))))

(assert (=> b!628717 (= res!406453 (and (= (size!18583 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18583 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18583 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!628718 () Bool)

(declare-fun res!406452 () Bool)

(assert (=> b!628718 (=> (not res!406452) (not e!359618))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37968 (_ BitVec 32)) Bool)

(assert (=> b!628718 (= res!406452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!628719 () Bool)

(declare-fun res!406457 () Bool)

(assert (=> b!628719 (=> (not res!406457) (not e!359619))))

(assert (=> b!628719 (= res!406457 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18219 a!2986) index!984) (select (arr!18219 a!2986) j!136))) (not (= (select (arr!18219 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!628720 () Bool)

(declare-fun res!406446 () Bool)

(assert (=> b!628720 (=> (not res!406446) (not e!359618))))

(declare-datatypes ((List!12313 0))(
  ( (Nil!12310) (Cons!12309 (h!13354 (_ BitVec 64)) (t!18549 List!12313)) )
))
(declare-fun arrayNoDuplicates!0 (array!37968 (_ BitVec 32) List!12313) Bool)

(assert (=> b!628720 (= res!406446 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12310))))

(declare-fun b!628721 () Bool)

(declare-fun res!406448 () Bool)

(assert (=> b!628721 (=> (not res!406448) (not e!359620))))

(assert (=> b!628721 (= res!406448 (validKeyInArray!0 k!1786))))

(assert (= (and start!56766 res!406455) b!628717))

(assert (= (and b!628717 res!406453) b!628716))

(assert (= (and b!628716 res!406451) b!628721))

(assert (= (and b!628721 res!406448) b!628712))

(assert (= (and b!628712 res!406447) b!628713))

(assert (= (and b!628713 res!406449) b!628718))

(assert (= (and b!628718 res!406452) b!628720))

(assert (= (and b!628720 res!406446) b!628714))

(assert (= (and b!628714 res!406454) b!628715))

(assert (= (and b!628715 res!406450) b!628719))

(assert (= (and b!628719 res!406457) b!628710))

(assert (= (and b!628710 res!406456) b!628711))

(declare-fun m!603873 () Bool)

(assert (=> b!628715 m!603873))

(assert (=> b!628715 m!603873))

(declare-fun m!603875 () Bool)

(assert (=> b!628715 m!603875))

(assert (=> b!628711 m!603873))

(assert (=> b!628711 m!603873))

(declare-fun m!603877 () Bool)

(assert (=> b!628711 m!603877))

(declare-fun m!603879 () Bool)

(assert (=> start!56766 m!603879))

(declare-fun m!603881 () Bool)

(assert (=> start!56766 m!603881))

(assert (=> b!628716 m!603873))

(assert (=> b!628716 m!603873))

(declare-fun m!603883 () Bool)

(assert (=> b!628716 m!603883))

(declare-fun m!603885 () Bool)

(assert (=> b!628714 m!603885))

(declare-fun m!603887 () Bool)

(assert (=> b!628714 m!603887))

(declare-fun m!603889 () Bool)

(assert (=> b!628714 m!603889))

(declare-fun m!603891 () Bool)

(assert (=> b!628720 m!603891))

(declare-fun m!603893 () Bool)

(assert (=> b!628721 m!603893))

(declare-fun m!603895 () Bool)

(assert (=> b!628719 m!603895))

(assert (=> b!628719 m!603873))

(declare-fun m!603897 () Bool)

(assert (=> b!628718 m!603897))

(declare-fun m!603899 () Bool)

(assert (=> b!628710 m!603899))

(declare-fun m!603901 () Bool)

(assert (=> b!628712 m!603901))

(declare-fun m!603903 () Bool)

(assert (=> b!628713 m!603903))

(push 1)

(assert (not b!628711))

(assert (not b!628710))

(assert (not start!56766))

(assert (not b!628715))

(assert (not b!628721))

(assert (not b!628720))

(assert (not b!628718))

(assert (not b!628713))

(assert (not b!628712))

(assert (not b!628716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!88933 () Bool)

(assert (=> d!88933 (= (validKeyInArray!0 (select (arr!18219 a!2986) j!136)) (and (not (= (select (arr!18219 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18219 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!628716 d!88933))

(declare-fun b!628833 () Bool)

(declare-fun e!359678 () SeekEntryResult!6666)

(assert (=> b!628833 (= e!359678 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!290536 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18219 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!628834 () Bool)

(declare-fun e!359680 () SeekEntryResult!6666)

(declare-fun e!359679 () SeekEntryResult!6666)

(assert (=> b!628834 (= e!359680 e!359679)))

(declare-fun c!71512 () Bool)

(declare-fun lt!290571 () (_ BitVec 64))

(assert (=> b!628834 (= c!71512 (= lt!290571 (select (arr!18219 a!2986) j!136)))))

(declare-fun b!628835 () Bool)

(assert (=> b!628835 (= e!359678 (MissingVacant!6666 vacantSpotIndex!68))))

(declare-fun b!628836 () Bool)

(assert (=> b!628836 (= e!359680 Undefined!6666)))

(declare-fun b!628837 () Bool)

(assert (=> b!628837 (= e!359679 (Found!6666 lt!290536))))

(declare-fun lt!290570 () SeekEntryResult!6666)

(declare-fun d!88935 () Bool)

(assert (=> d!88935 (and (or (is-Undefined!6666 lt!290570) (not (is-Found!6666 lt!290570)) (and (bvsge (index!28948 lt!290570) #b00000000000000000000000000000000) (bvslt (index!28948 lt!290570) (size!18583 a!2986)))) (or (is-Undefined!6666 lt!290570) (is-Found!6666 lt!290570) (not (is-MissingVacant!6666 lt!290570)) (not (= (index!28950 lt!290570) vacantSpotIndex!68)) (and (bvsge (index!28950 lt!290570) #b00000000000000000000000000000000) (bvslt (index!28950 lt!290570) (size!18583 a!2986)))) (or (is-Undefined!6666 lt!290570) (ite (is-Found!6666 lt!290570) (= (select (arr!18219 a!2986) (index!28948 lt!290570)) (select (arr!18219 a!2986) j!136)) (and (is-MissingVacant!6666 lt!290570) (= (index!28950 lt!290570) vacantSpotIndex!68) (= (select (arr!18219 a!2986) (index!28950 lt!290570)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88935 (= lt!290570 e!359680)))

(declare-fun c!71513 () Bool)

(assert (=> d!88935 (= c!71513 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!88935 (= lt!290571 (select (arr!18219 a!2986) lt!290536))))

(assert (=> d!88935 (validMask!0 mask!3053)))

(assert (=> d!88935 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290536 vacantSpotIndex!68 (select (arr!18219 a!2986) j!136) a!2986 mask!3053) lt!290570)))

(declare-fun b!628838 () Bool)

(declare-fun c!71511 () Bool)

(assert (=> b!628838 (= c!71511 (= lt!290571 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!628838 (= e!359679 e!359678)))

(assert (= (and d!88935 c!71513) b!628836))

(assert (= (and d!88935 (not c!71513)) b!628834))

(assert (= (and b!628834 c!71512) b!628837))

(assert (= (and b!628834 (not c!71512)) b!628838))

(assert (= (and b!628838 c!71511) b!628835))

(assert (= (and b!628838 (not c!71511)) b!628833))

(declare-fun m!603985 () Bool)

(assert (=> b!628833 m!603985))

(assert (=> b!628833 m!603985))

(assert (=> b!628833 m!603873))

(declare-fun m!603987 () Bool)

(assert (=> b!628833 m!603987))

(declare-fun m!603989 () Bool)

(assert (=> d!88935 m!603989))

(declare-fun m!603991 () Bool)

(assert (=> d!88935 m!603991))

(declare-fun m!603993 () Bool)

(assert (=> d!88935 m!603993))

(assert (=> d!88935 m!603879))

(assert (=> b!628711 d!88935))

(declare-fun d!88939 () Bool)

(declare-fun lt!290574 () (_ BitVec 32))

(assert (=> d!88939 (and (bvsge lt!290574 #b00000000000000000000000000000000) (bvslt lt!290574 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88939 (= lt!290574 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!88939 (validMask!0 mask!3053)))

(assert (=> d!88939 (= (nextIndex!0 index!984 x!910 mask!3053) lt!290574)))

(declare-fun bs!18968 () Bool)

(assert (= bs!18968 d!88939))

(declare-fun m!603995 () Bool)

(assert (=> bs!18968 m!603995))

(assert (=> bs!18968 m!603879))

(assert (=> b!628710 d!88939))

(declare-fun d!88941 () Bool)

(assert (=> d!88941 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!628721 d!88941))

(declare-fun d!88943 () Bool)

(assert (=> d!88943 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!56766 d!88943))

(declare-fun d!88945 () Bool)

(assert (=> d!88945 (= (array_inv!13993 a!2986) (bvsge (size!18583 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!56766 d!88945))

(declare-fun d!88947 () Bool)

(declare-fun res!406549 () Bool)

(declare-fun e!359685 () Bool)

(assert (=> d!88947 (=> res!406549 e!359685)))

(assert (=> d!88947 (= res!406549 (= (select (arr!18219 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!88947 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!359685)))

(declare-fun b!628843 () Bool)

(declare-fun e!359686 () Bool)

(assert (=> b!628843 (= e!359685 e!359686)))

(declare-fun res!406550 () Bool)

(assert (=> b!628843 (=> (not res!406550) (not e!359686))))

(assert (=> b!628843 (= res!406550 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18583 a!2986)))))

(declare-fun b!628844 () Bool)

(assert (=> b!628844 (= e!359686 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88947 (not res!406549)) b!628843))

(assert (= (and b!628843 res!406550) b!628844))

(declare-fun m!603997 () Bool)

(assert (=> d!88947 m!603997))

(declare-fun m!603999 () Bool)

(assert (=> b!628844 m!603999))

(assert (=> b!628712 d!88947))

(declare-fun b!628877 () Bool)

(declare-fun e!359710 () Bool)

(declare-fun call!33275 () Bool)

(assert (=> b!628877 (= e!359710 call!33275)))

(declare-fun bm!33272 () Bool)

(assert (=> bm!33272 (= call!33275 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!628878 () Bool)

(declare-fun e!359709 () Bool)

(assert (=> b!628878 (= e!359709 e!359710)))

(declare-fun c!71525 () Bool)

(assert (=> b!628878 (= c!71525 (validKeyInArray!0 (select (arr!18219 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!88949 () Bool)

(declare-fun res!406561 () Bool)

(assert (=> d!88949 (=> res!406561 e!359709)))

(assert (=> d!88949 (= res!406561 (bvsge #b00000000000000000000000000000000 (size!18583 a!2986)))))

(assert (=> d!88949 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!359709)))

(declare-fun b!628879 () Bool)

(declare-fun e!359708 () Bool)

(assert (=> b!628879 (= e!359710 e!359708)))

(declare-fun lt!290592 () (_ BitVec 64))

(assert (=> b!628879 (= lt!290592 (select (arr!18219 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!21086 0))(
  ( (Unit!21087) )
))
(declare-fun lt!290594 () Unit!21086)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37968 (_ BitVec 64) (_ BitVec 32)) Unit!21086)

(assert (=> b!628879 (= lt!290594 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!290592 #b00000000000000000000000000000000))))

(assert (=> b!628879 (arrayContainsKey!0 a!2986 lt!290592 #b00000000000000000000000000000000)))

(declare-fun lt!290593 () Unit!21086)

(assert (=> b!628879 (= lt!290593 lt!290594)))

(declare-fun res!406562 () Bool)

(assert (=> b!628879 (= res!406562 (= (seekEntryOrOpen!0 (select (arr!18219 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6666 #b00000000000000000000000000000000)))))

(assert (=> b!628879 (=> (not res!406562) (not e!359708))))

(declare-fun b!628880 () Bool)

(assert (=> b!628880 (= e!359708 call!33275)))

(assert (= (and d!88949 (not res!406561)) b!628878))

(assert (= (and b!628878 c!71525) b!628879))

(assert (= (and b!628878 (not c!71525)) b!628877))

(assert (= (and b!628879 res!406562) b!628880))

(assert (= (or b!628880 b!628877) bm!33272))

(declare-fun m!604021 () Bool)

(assert (=> bm!33272 m!604021))

(assert (=> b!628878 m!603997))

(assert (=> b!628878 m!603997))

(declare-fun m!604023 () Bool)

(assert (=> b!628878 m!604023))

(assert (=> b!628879 m!603997))

(declare-fun m!604025 () Bool)

(assert (=> b!628879 m!604025))

(declare-fun m!604027 () Bool)

(assert (=> b!628879 m!604027))

(assert (=> b!628879 m!603997))

(declare-fun m!604029 () Bool)

(assert (=> b!628879 m!604029))

(assert (=> b!628718 d!88949))

(declare-fun b!628935 () Bool)

(declare-fun e!359743 () SeekEntryResult!6666)

(assert (=> b!628935 (= e!359743 Undefined!6666)))

(declare-fun b!628936 () Bool)

(declare-fun e!359741 () SeekEntryResult!6666)

(declare-fun lt!290617 () SeekEntryResult!6666)

(assert (=> b!628936 (= e!359741 (MissingZero!6666 (index!28949 lt!290617)))))

(declare-fun d!88961 () Bool)

(declare-fun lt!290618 () SeekEntryResult!6666)

(assert (=> d!88961 (and (or (is-Undefined!6666 lt!290618) (not (is-Found!6666 lt!290618)) (and (bvsge (index!28948 lt!290618) #b00000000000000000000000000000000) (bvslt (index!28948 lt!290618) (size!18583 a!2986)))) (or (is-Undefined!6666 lt!290618) (is-Found!6666 lt!290618) (not (is-MissingZero!6666 lt!290618)) (and (bvsge (index!28947 lt!290618) #b00000000000000000000000000000000) (bvslt (index!28947 lt!290618) (size!18583 a!2986)))) (or (is-Undefined!6666 lt!290618) (is-Found!6666 lt!290618) (is-MissingZero!6666 lt!290618) (not (is-MissingVacant!6666 lt!290618)) (and (bvsge (index!28950 lt!290618) #b00000000000000000000000000000000) (bvslt (index!28950 lt!290618) (size!18583 a!2986)))) (or (is-Undefined!6666 lt!290618) (ite (is-Found!6666 lt!290618) (= (select (arr!18219 a!2986) (index!28948 lt!290618)) k!1786) (ite (is-MissingZero!6666 lt!290618) (= (select (arr!18219 a!2986) (index!28947 lt!290618)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6666 lt!290618) (= (select (arr!18219 a!2986) (index!28950 lt!290618)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!88961 (= lt!290618 e!359743)))

(declare-fun c!71552 () Bool)

(assert (=> d!88961 (= c!71552 (and (is-Intermediate!6666 lt!290617) (undefined!7478 lt!290617)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37968 (_ BitVec 32)) SeekEntryResult!6666)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88961 (= lt!290617 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!88961 (validMask!0 mask!3053)))

(assert (=> d!88961 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!290618)))

(declare-fun b!628937 () Bool)

(assert (=> b!628937 (= e!359741 (seekKeyOrZeroReturnVacant!0 (x!57709 lt!290617) (index!28949 lt!290617) (index!28949 lt!290617) k!1786 a!2986 mask!3053))))

(declare-fun b!628938 () Bool)

(declare-fun e!359742 () SeekEntryResult!6666)

(assert (=> b!628938 (= e!359743 e!359742)))

(declare-fun lt!290619 () (_ BitVec 64))

(assert (=> b!628938 (= lt!290619 (select (arr!18219 a!2986) (index!28949 lt!290617)))))

(declare-fun c!71550 () Bool)

(assert (=> b!628938 (= c!71550 (= lt!290619 k!1786))))

(declare-fun b!628939 () Bool)

(declare-fun c!71551 () Bool)

(assert (=> b!628939 (= c!71551 (= lt!290619 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!628939 (= e!359742 e!359741)))

(declare-fun b!628940 () Bool)

(assert (=> b!628940 (= e!359742 (Found!6666 (index!28949 lt!290617)))))

(assert (= (and d!88961 c!71552) b!628935))

(assert (= (and d!88961 (not c!71552)) b!628938))

(assert (= (and b!628938 c!71550) b!628940))

(assert (= (and b!628938 (not c!71550)) b!628939))

(assert (= (and b!628939 c!71551) b!628936))

(assert (= (and b!628939 (not c!71551)) b!628937))

(assert (=> d!88961 m!603879))

(declare-fun m!604057 () Bool)

(assert (=> d!88961 m!604057))

(declare-fun m!604059 () Bool)

(assert (=> d!88961 m!604059))

(declare-fun m!604061 () Bool)

(assert (=> d!88961 m!604061))

(declare-fun m!604063 () Bool)

(assert (=> d!88961 m!604063))

(declare-fun m!604065 () Bool)

(assert (=> d!88961 m!604065))

(assert (=> d!88961 m!604061))

(declare-fun m!604067 () Bool)

(assert (=> b!628937 m!604067))

(declare-fun m!604069 () Bool)

(assert (=> b!628938 m!604069))

(assert (=> b!628713 d!88961))

(declare-fun d!88969 () Bool)

(declare-fun res!406575 () Bool)

(declare-fun e!359754 () Bool)

(assert (=> d!88969 (=> res!406575 e!359754)))

(assert (=> d!88969 (= res!406575 (bvsge #b00000000000000000000000000000000 (size!18583 a!2986)))))

(assert (=> d!88969 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12310) e!359754)))

(declare-fun b!628951 () Bool)

(declare-fun e!359755 () Bool)

(assert (=> b!628951 (= e!359754 e!359755)))

(declare-fun res!406577 () Bool)

(assert (=> b!628951 (=> (not res!406577) (not e!359755))))

(declare-fun e!359752 () Bool)

(assert (=> b!628951 (= res!406577 (not e!359752))))

(declare-fun res!406576 () Bool)

(assert (=> b!628951 (=> (not res!406576) (not e!359752))))

(assert (=> b!628951 (= res!406576 (validKeyInArray!0 (select (arr!18219 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!628952 () Bool)

(declare-fun e!359753 () Bool)

(declare-fun call!33278 () Bool)

(assert (=> b!628952 (= e!359753 call!33278)))

(declare-fun bm!33275 () Bool)

(declare-fun c!71555 () Bool)

(assert (=> bm!33275 (= call!33278 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71555 (Cons!12309 (select (arr!18219 a!2986) #b00000000000000000000000000000000) Nil!12310) Nil!12310)))))

(declare-fun b!628953 () Bool)

(assert (=> b!628953 (= e!359755 e!359753)))

(assert (=> b!628953 (= c!71555 (validKeyInArray!0 (select (arr!18219 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!628954 () Bool)

(assert (=> b!628954 (= e!359753 call!33278)))

(declare-fun b!628955 () Bool)

(declare-fun contains!3087 (List!12313 (_ BitVec 64)) Bool)

(assert (=> b!628955 (= e!359752 (contains!3087 Nil!12310 (select (arr!18219 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!88969 (not res!406575)) b!628951))

(assert (= (and b!628951 res!406576) b!628955))

(assert (= (and b!628951 res!406577) b!628953))

(assert (= (and b!628953 c!71555) b!628952))

(assert (= (and b!628953 (not c!71555)) b!628954))

(assert (= (or b!628952 b!628954) bm!33275))

(assert (=> b!628951 m!603997))

(assert (=> b!628951 m!603997))

(assert (=> b!628951 m!604023))

(assert (=> bm!33275 m!603997))

(declare-fun m!604071 () Bool)

(assert (=> bm!33275 m!604071))

(assert (=> b!628953 m!603997))

(assert (=> b!628953 m!603997))

(assert (=> b!628953 m!604023))

(assert (=> b!628955 m!603997))

(assert (=> b!628955 m!603997))

(declare-fun m!604073 () Bool)

(assert (=> b!628955 m!604073))

(assert (=> b!628720 d!88969))

(declare-fun e!359756 () SeekEntryResult!6666)

(declare-fun b!628956 () Bool)

(assert (=> b!628956 (= e!359756 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18219 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!628957 () Bool)

(declare-fun e!359758 () SeekEntryResult!6666)

(declare-fun e!359757 () SeekEntryResult!6666)

(assert (=> b!628957 (= e!359758 e!359757)))

(declare-fun lt!290621 () (_ BitVec 64))

(declare-fun c!71557 () Bool)

(assert (=> b!628957 (= c!71557 (= lt!290621 (select (arr!18219 a!2986) j!136)))))

(declare-fun b!628958 () Bool)

(assert (=> b!628958 (= e!359756 (MissingVacant!6666 vacantSpotIndex!68))))

(declare-fun b!628959 () Bool)

(assert (=> b!628959 (= e!359758 Undefined!6666)))

(declare-fun b!628960 () Bool)

(assert (=> b!628960 (= e!359757 (Found!6666 index!984))))

(declare-fun d!88975 () Bool)

(declare-fun lt!290620 () SeekEntryResult!6666)

(assert (=> d!88975 (and (or (is-Undefined!6666 lt!290620) (not (is-Found!6666 lt!290620)) (and (bvsge (index!28948 lt!290620) #b00000000000000000000000000000000) (bvslt (index!28948 lt!290620) (size!18583 a!2986)))) (or (is-Undefined!6666 lt!290620) (is-Found!6666 lt!290620) (not (is-MissingVacant!6666 lt!290620)) (not (= (index!28950 lt!290620) vacantSpotIndex!68)) (and (bvsge (index!28950 lt!290620) #b00000000000000000000000000000000) (bvslt (index!28950 lt!290620) (size!18583 a!2986)))) (or (is-Undefined!6666 lt!290620) (ite (is-Found!6666 lt!290620) (= (select (arr!18219 a!2986) (index!28948 lt!290620)) (select (arr!18219 a!2986) j!136)) (and (is-MissingVacant!6666 lt!290620) (= (index!28950 lt!290620) vacantSpotIndex!68) (= (select (arr!18219 a!2986) (index!28950 lt!290620)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88975 (= lt!290620 e!359758)))

(declare-fun c!71558 () Bool)

(assert (=> d!88975 (= c!71558 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88975 (= lt!290621 (select (arr!18219 a!2986) index!984))))

(assert (=> d!88975 (validMask!0 mask!3053)))

(assert (=> d!88975 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18219 a!2986) j!136) a!2986 mask!3053) lt!290620)))

(declare-fun b!628961 () Bool)

(declare-fun c!71556 () Bool)

(assert (=> b!628961 (= c!71556 (= lt!290621 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!628961 (= e!359757 e!359756)))

(assert (= (and d!88975 c!71558) b!628959))

(assert (= (and d!88975 (not c!71558)) b!628957))

(assert (= (and b!628957 c!71557) b!628960))

(assert (= (and b!628957 (not c!71557)) b!628961))

(assert (= (and b!628961 c!71556) b!628958))

(assert (= (and b!628961 (not c!71556)) b!628956))

(assert (=> b!628956 m!603899))

(assert (=> b!628956 m!603899))

(assert (=> b!628956 m!603873))

(declare-fun m!604075 () Bool)

(assert (=> b!628956 m!604075))

(declare-fun m!604077 () Bool)

(assert (=> d!88975 m!604077))

(declare-fun m!604079 () Bool)

(assert (=> d!88975 m!604079))

(assert (=> d!88975 m!603895))

(assert (=> d!88975 m!603879))

(assert (=> b!628715 d!88975))

(push 1)

