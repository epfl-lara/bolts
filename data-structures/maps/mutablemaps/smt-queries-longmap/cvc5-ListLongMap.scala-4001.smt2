; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54270 () Bool)

(assert start!54270)

(declare-fun b!592766 () Bool)

(declare-fun res!379556 () Bool)

(declare-fun e!338557 () Bool)

(assert (=> b!592766 (=> (not res!379556) (not e!338557))))

(declare-datatypes ((array!36900 0))(
  ( (array!36901 (arr!17715 (Array (_ BitVec 32) (_ BitVec 64))) (size!18079 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36900)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!592766 (= res!379556 (validKeyInArray!0 (select (arr!17715 a!2986) j!136)))))

(declare-fun b!592767 () Bool)

(declare-fun res!379554 () Bool)

(assert (=> b!592767 (=> (not res!379554) (not e!338557))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36900 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!592767 (= res!379554 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!592768 () Bool)

(declare-fun res!379563 () Bool)

(assert (=> b!592768 (=> (not res!379563) (not e!338557))))

(assert (=> b!592768 (= res!379563 (validKeyInArray!0 k!1786))))

(declare-fun b!592769 () Bool)

(declare-fun e!338550 () Bool)

(declare-fun e!338552 () Bool)

(assert (=> b!592769 (= e!338550 (not e!338552))))

(declare-fun res!379565 () Bool)

(assert (=> b!592769 (=> res!379565 e!338552)))

(declare-datatypes ((SeekEntryResult!6162 0))(
  ( (MissingZero!6162 (index!26886 (_ BitVec 32))) (Found!6162 (index!26887 (_ BitVec 32))) (Intermediate!6162 (undefined!6974 Bool) (index!26888 (_ BitVec 32)) (x!55708 (_ BitVec 32))) (Undefined!6162) (MissingVacant!6162 (index!26889 (_ BitVec 32))) )
))
(declare-fun lt!269157 () SeekEntryResult!6162)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!592769 (= res!379565 (not (= lt!269157 (Found!6162 index!984))))))

(declare-datatypes ((Unit!18592 0))(
  ( (Unit!18593) )
))
(declare-fun lt!269147 () Unit!18592)

(declare-fun e!338560 () Unit!18592)

(assert (=> b!592769 (= lt!269147 e!338560)))

(declare-fun c!66974 () Bool)

(assert (=> b!592769 (= c!66974 (= lt!269157 Undefined!6162))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!269155 () (_ BitVec 64))

(declare-fun lt!269151 () array!36900)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36900 (_ BitVec 32)) SeekEntryResult!6162)

(assert (=> b!592769 (= lt!269157 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269155 lt!269151 mask!3053))))

(declare-fun e!338559 () Bool)

(assert (=> b!592769 e!338559))

(declare-fun res!379560 () Bool)

(assert (=> b!592769 (=> (not res!379560) (not e!338559))))

(declare-fun lt!269152 () SeekEntryResult!6162)

(declare-fun lt!269148 () (_ BitVec 32))

(assert (=> b!592769 (= res!379560 (= lt!269152 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269148 vacantSpotIndex!68 lt!269155 lt!269151 mask!3053)))))

(assert (=> b!592769 (= lt!269152 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269148 vacantSpotIndex!68 (select (arr!17715 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!592769 (= lt!269155 (select (store (arr!17715 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!269149 () Unit!18592)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36900 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18592)

(assert (=> b!592769 (= lt!269149 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269148 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!592769 (= lt!269148 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!592770 () Bool)

(declare-fun lt!269156 () SeekEntryResult!6162)

(assert (=> b!592770 (= e!338559 (= lt!269156 lt!269152))))

(declare-fun b!592771 () Bool)

(declare-fun res!379555 () Bool)

(assert (=> b!592771 (=> (not res!379555) (not e!338557))))

(assert (=> b!592771 (= res!379555 (and (= (size!18079 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18079 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18079 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!592772 () Bool)

(declare-fun e!338556 () Bool)

(declare-fun e!338558 () Bool)

(assert (=> b!592772 (= e!338556 e!338558)))

(declare-fun res!379568 () Bool)

(assert (=> b!592772 (=> (not res!379568) (not e!338558))))

(assert (=> b!592772 (= res!379568 (= (select (store (arr!17715 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!592772 (= lt!269151 (array!36901 (store (arr!17715 a!2986) i!1108 k!1786) (size!18079 a!2986)))))

(declare-fun e!338549 () Bool)

(declare-fun b!592773 () Bool)

(assert (=> b!592773 (= e!338549 (arrayContainsKey!0 lt!269151 (select (arr!17715 a!2986) j!136) index!984))))

(declare-fun b!592774 () Bool)

(declare-fun res!379559 () Bool)

(assert (=> b!592774 (=> (not res!379559) (not e!338556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36900 (_ BitVec 32)) Bool)

(assert (=> b!592774 (= res!379559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!592775 () Bool)

(assert (=> b!592775 (= e!338557 e!338556)))

(declare-fun res!379561 () Bool)

(assert (=> b!592775 (=> (not res!379561) (not e!338556))))

(declare-fun lt!269154 () SeekEntryResult!6162)

(assert (=> b!592775 (= res!379561 (or (= lt!269154 (MissingZero!6162 i!1108)) (= lt!269154 (MissingVacant!6162 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36900 (_ BitVec 32)) SeekEntryResult!6162)

(assert (=> b!592775 (= lt!269154 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!592776 () Bool)

(declare-fun Unit!18594 () Unit!18592)

(assert (=> b!592776 (= e!338560 Unit!18594)))

(assert (=> b!592776 false))

(declare-fun b!592777 () Bool)

(declare-fun Unit!18595 () Unit!18592)

(assert (=> b!592777 (= e!338560 Unit!18595)))

(declare-fun b!592778 () Bool)

(assert (=> b!592778 (= e!338558 e!338550)))

(declare-fun res!379566 () Bool)

(assert (=> b!592778 (=> (not res!379566) (not e!338550))))

(assert (=> b!592778 (= res!379566 (and (= lt!269156 (Found!6162 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17715 a!2986) index!984) (select (arr!17715 a!2986) j!136))) (not (= (select (arr!17715 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!592778 (= lt!269156 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17715 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!592779 () Bool)

(declare-fun e!338553 () Bool)

(assert (=> b!592779 (= e!338552 e!338553)))

(declare-fun res!379553 () Bool)

(assert (=> b!592779 (=> res!379553 e!338553)))

(declare-fun lt!269153 () (_ BitVec 64))

(assert (=> b!592779 (= res!379553 (or (not (= (select (arr!17715 a!2986) j!136) lt!269155)) (not (= (select (arr!17715 a!2986) j!136) lt!269153)) (bvsge j!136 index!984)))))

(declare-fun e!338555 () Bool)

(assert (=> b!592779 e!338555))

(declare-fun res!379558 () Bool)

(assert (=> b!592779 (=> (not res!379558) (not e!338555))))

(assert (=> b!592779 (= res!379558 (= lt!269153 (select (arr!17715 a!2986) j!136)))))

(assert (=> b!592779 (= lt!269153 (select (store (arr!17715 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!379567 () Bool)

(assert (=> start!54270 (=> (not res!379567) (not e!338557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54270 (= res!379567 (validMask!0 mask!3053))))

(assert (=> start!54270 e!338557))

(assert (=> start!54270 true))

(declare-fun array_inv!13489 (array!36900) Bool)

(assert (=> start!54270 (array_inv!13489 a!2986)))

(declare-fun b!592780 () Bool)

(declare-fun res!379564 () Bool)

(assert (=> b!592780 (=> (not res!379564) (not e!338556))))

(declare-datatypes ((List!11809 0))(
  ( (Nil!11806) (Cons!11805 (h!12850 (_ BitVec 64)) (t!18045 List!11809)) )
))
(declare-fun arrayNoDuplicates!0 (array!36900 (_ BitVec 32) List!11809) Bool)

(assert (=> b!592780 (= res!379564 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11806))))

(declare-fun b!592781 () Bool)

(declare-fun e!338551 () Bool)

(assert (=> b!592781 (= e!338551 e!338549)))

(declare-fun res!379557 () Bool)

(assert (=> b!592781 (=> (not res!379557) (not e!338549))))

(assert (=> b!592781 (= res!379557 (arrayContainsKey!0 lt!269151 (select (arr!17715 a!2986) j!136) j!136))))

(declare-fun b!592782 () Bool)

(assert (=> b!592782 (= e!338555 e!338551)))

(declare-fun res!379552 () Bool)

(assert (=> b!592782 (=> res!379552 e!338551)))

(assert (=> b!592782 (= res!379552 (or (not (= (select (arr!17715 a!2986) j!136) lt!269155)) (not (= (select (arr!17715 a!2986) j!136) lt!269153)) (bvsge j!136 index!984)))))

(declare-fun b!592783 () Bool)

(assert (=> b!592783 (= e!338553 (or (bvsgt #b00000000000000000000000000000000 (size!18079 a!2986)) (bvslt (size!18079 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!592783 (arrayContainsKey!0 lt!269151 (select (arr!17715 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269150 () Unit!18592)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36900 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18592)

(assert (=> b!592783 (= lt!269150 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269151 (select (arr!17715 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!592784 () Bool)

(declare-fun res!379562 () Bool)

(assert (=> b!592784 (=> (not res!379562) (not e!338556))))

(assert (=> b!592784 (= res!379562 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17715 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!54270 res!379567) b!592771))

(assert (= (and b!592771 res!379555) b!592766))

(assert (= (and b!592766 res!379556) b!592768))

(assert (= (and b!592768 res!379563) b!592767))

(assert (= (and b!592767 res!379554) b!592775))

(assert (= (and b!592775 res!379561) b!592774))

(assert (= (and b!592774 res!379559) b!592780))

(assert (= (and b!592780 res!379564) b!592784))

(assert (= (and b!592784 res!379562) b!592772))

(assert (= (and b!592772 res!379568) b!592778))

(assert (= (and b!592778 res!379566) b!592769))

(assert (= (and b!592769 res!379560) b!592770))

(assert (= (and b!592769 c!66974) b!592776))

(assert (= (and b!592769 (not c!66974)) b!592777))

(assert (= (and b!592769 (not res!379565)) b!592779))

(assert (= (and b!592779 res!379558) b!592782))

(assert (= (and b!592782 (not res!379552)) b!592781))

(assert (= (and b!592781 res!379557) b!592773))

(assert (= (and b!592779 (not res!379553)) b!592783))

(declare-fun m!570837 () Bool)

(assert (=> b!592767 m!570837))

(declare-fun m!570839 () Bool)

(assert (=> b!592768 m!570839))

(declare-fun m!570841 () Bool)

(assert (=> b!592778 m!570841))

(declare-fun m!570843 () Bool)

(assert (=> b!592778 m!570843))

(assert (=> b!592778 m!570843))

(declare-fun m!570845 () Bool)

(assert (=> b!592778 m!570845))

(declare-fun m!570847 () Bool)

(assert (=> b!592780 m!570847))

(declare-fun m!570849 () Bool)

(assert (=> b!592774 m!570849))

(assert (=> b!592773 m!570843))

(assert (=> b!592773 m!570843))

(declare-fun m!570851 () Bool)

(assert (=> b!592773 m!570851))

(assert (=> b!592782 m!570843))

(declare-fun m!570853 () Bool)

(assert (=> b!592784 m!570853))

(declare-fun m!570855 () Bool)

(assert (=> b!592769 m!570855))

(assert (=> b!592769 m!570843))

(declare-fun m!570857 () Bool)

(assert (=> b!592769 m!570857))

(assert (=> b!592769 m!570843))

(declare-fun m!570859 () Bool)

(assert (=> b!592769 m!570859))

(declare-fun m!570861 () Bool)

(assert (=> b!592769 m!570861))

(declare-fun m!570863 () Bool)

(assert (=> b!592769 m!570863))

(declare-fun m!570865 () Bool)

(assert (=> b!592769 m!570865))

(declare-fun m!570867 () Bool)

(assert (=> b!592769 m!570867))

(declare-fun m!570869 () Bool)

(assert (=> start!54270 m!570869))

(declare-fun m!570871 () Bool)

(assert (=> start!54270 m!570871))

(assert (=> b!592781 m!570843))

(assert (=> b!592781 m!570843))

(declare-fun m!570873 () Bool)

(assert (=> b!592781 m!570873))

(assert (=> b!592772 m!570859))

(declare-fun m!570875 () Bool)

(assert (=> b!592772 m!570875))

(declare-fun m!570877 () Bool)

(assert (=> b!592775 m!570877))

(assert (=> b!592783 m!570843))

(assert (=> b!592783 m!570843))

(declare-fun m!570879 () Bool)

(assert (=> b!592783 m!570879))

(assert (=> b!592783 m!570843))

(declare-fun m!570881 () Bool)

(assert (=> b!592783 m!570881))

(assert (=> b!592766 m!570843))

(assert (=> b!592766 m!570843))

(declare-fun m!570883 () Bool)

(assert (=> b!592766 m!570883))

(assert (=> b!592779 m!570843))

(assert (=> b!592779 m!570859))

(declare-fun m!570885 () Bool)

(assert (=> b!592779 m!570885))

(push 1)

(assert (not b!592774))

(assert (not b!592773))

(assert (not b!592769))

(assert (not b!592781))

(assert (not start!54270))

(assert (not b!592775))

(assert (not b!592766))

(assert (not b!592767))

(assert (not b!592778))

(assert (not b!592783))

(assert (not b!592768))

(assert (not b!592780))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!338682 () SeekEntryResult!6162)

(declare-fun lt!269260 () SeekEntryResult!6162)

(declare-fun b!592983 () Bool)

(assert (=> b!592983 (= e!338682 (seekKeyOrZeroReturnVacant!0 (x!55708 lt!269260) (index!26888 lt!269260) (index!26888 lt!269260) k!1786 a!2986 mask!3053))))

(declare-fun d!86213 () Bool)

(declare-fun lt!269262 () SeekEntryResult!6162)

(assert (=> d!86213 (and (or (is-Undefined!6162 lt!269262) (not (is-Found!6162 lt!269262)) (and (bvsge (index!26887 lt!269262) #b00000000000000000000000000000000) (bvslt (index!26887 lt!269262) (size!18079 a!2986)))) (or (is-Undefined!6162 lt!269262) (is-Found!6162 lt!269262) (not (is-MissingZero!6162 lt!269262)) (and (bvsge (index!26886 lt!269262) #b00000000000000000000000000000000) (bvslt (index!26886 lt!269262) (size!18079 a!2986)))) (or (is-Undefined!6162 lt!269262) (is-Found!6162 lt!269262) (is-MissingZero!6162 lt!269262) (not (is-MissingVacant!6162 lt!269262)) (and (bvsge (index!26889 lt!269262) #b00000000000000000000000000000000) (bvslt (index!26889 lt!269262) (size!18079 a!2986)))) (or (is-Undefined!6162 lt!269262) (ite (is-Found!6162 lt!269262) (= (select (arr!17715 a!2986) (index!26887 lt!269262)) k!1786) (ite (is-MissingZero!6162 lt!269262) (= (select (arr!17715 a!2986) (index!26886 lt!269262)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6162 lt!269262) (= (select (arr!17715 a!2986) (index!26889 lt!269262)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!338683 () SeekEntryResult!6162)

(assert (=> d!86213 (= lt!269262 e!338683)))

(declare-fun c!67018 () Bool)

(assert (=> d!86213 (= c!67018 (and (is-Intermediate!6162 lt!269260) (undefined!6974 lt!269260)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36900 (_ BitVec 32)) SeekEntryResult!6162)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86213 (= lt!269260 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!86213 (validMask!0 mask!3053)))

(assert (=> d!86213 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!269262)))

(declare-fun b!592984 () Bool)

(declare-fun e!338681 () SeekEntryResult!6162)

(assert (=> b!592984 (= e!338683 e!338681)))

(declare-fun lt!269261 () (_ BitVec 64))

(assert (=> b!592984 (= lt!269261 (select (arr!17715 a!2986) (index!26888 lt!269260)))))

(declare-fun c!67017 () Bool)

(assert (=> b!592984 (= c!67017 (= lt!269261 k!1786))))

(declare-fun b!592985 () Bool)

(assert (=> b!592985 (= e!338681 (Found!6162 (index!26888 lt!269260)))))

(declare-fun b!592986 () Bool)

(declare-fun c!67019 () Bool)

(assert (=> b!592986 (= c!67019 (= lt!269261 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!592986 (= e!338681 e!338682)))

(declare-fun b!592987 () Bool)

(assert (=> b!592987 (= e!338682 (MissingZero!6162 (index!26888 lt!269260)))))

(declare-fun b!592988 () Bool)

(assert (=> b!592988 (= e!338683 Undefined!6162)))

(assert (= (and d!86213 c!67018) b!592988))

(assert (= (and d!86213 (not c!67018)) b!592984))

(assert (= (and b!592984 c!67017) b!592985))

(assert (= (and b!592984 (not c!67017)) b!592986))

(assert (= (and b!592986 c!67019) b!592987))

(assert (= (and b!592986 (not c!67019)) b!592983))

(declare-fun m!571033 () Bool)

(assert (=> b!592983 m!571033))

(declare-fun m!571035 () Bool)

(assert (=> d!86213 m!571035))

(declare-fun m!571037 () Bool)

(assert (=> d!86213 m!571037))

(declare-fun m!571039 () Bool)

(assert (=> d!86213 m!571039))

(declare-fun m!571041 () Bool)

(assert (=> d!86213 m!571041))

(assert (=> d!86213 m!571039))

(assert (=> d!86213 m!570869))

(declare-fun m!571043 () Bool)

(assert (=> d!86213 m!571043))

(declare-fun m!571045 () Bool)

(assert (=> b!592984 m!571045))

(assert (=> b!592775 d!86213))

(declare-fun d!86229 () Bool)

(assert (=> d!86229 (= (validKeyInArray!0 (select (arr!17715 a!2986) j!136)) (and (not (= (select (arr!17715 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17715 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!592766 d!86229))

(declare-fun d!86231 () Bool)

(assert (=> d!86231 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!592768 d!86231))

(declare-fun b!593043 () Bool)

(declare-fun e!338718 () SeekEntryResult!6162)

(assert (=> b!593043 (= e!338718 (Found!6162 index!984))))

(declare-fun b!593045 () Bool)

(declare-fun e!338717 () SeekEntryResult!6162)

(assert (=> b!593045 (= e!338717 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17715 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!593046 () Bool)

(declare-fun e!338719 () SeekEntryResult!6162)

(assert (=> b!593046 (= e!338719 Undefined!6162)))

(declare-fun b!593047 () Bool)

(declare-fun c!67043 () Bool)

(declare-fun lt!269292 () (_ BitVec 64))

(assert (=> b!593047 (= c!67043 (= lt!269292 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593047 (= e!338718 e!338717)))

(declare-fun b!593048 () Bool)

(assert (=> b!593048 (= e!338717 (MissingVacant!6162 vacantSpotIndex!68))))

(declare-fun d!86233 () Bool)

(declare-fun lt!269293 () SeekEntryResult!6162)

(assert (=> d!86233 (and (or (is-Undefined!6162 lt!269293) (not (is-Found!6162 lt!269293)) (and (bvsge (index!26887 lt!269293) #b00000000000000000000000000000000) (bvslt (index!26887 lt!269293) (size!18079 a!2986)))) (or (is-Undefined!6162 lt!269293) (is-Found!6162 lt!269293) (not (is-MissingVacant!6162 lt!269293)) (not (= (index!26889 lt!269293) vacantSpotIndex!68)) (and (bvsge (index!26889 lt!269293) #b00000000000000000000000000000000) (bvslt (index!26889 lt!269293) (size!18079 a!2986)))) (or (is-Undefined!6162 lt!269293) (ite (is-Found!6162 lt!269293) (= (select (arr!17715 a!2986) (index!26887 lt!269293)) (select (arr!17715 a!2986) j!136)) (and (is-MissingVacant!6162 lt!269293) (= (index!26889 lt!269293) vacantSpotIndex!68) (= (select (arr!17715 a!2986) (index!26889 lt!269293)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86233 (= lt!269293 e!338719)))

(declare-fun c!67041 () Bool)

(assert (=> d!86233 (= c!67041 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86233 (= lt!269292 (select (arr!17715 a!2986) index!984))))

(assert (=> d!86233 (validMask!0 mask!3053)))

(assert (=> d!86233 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17715 a!2986) j!136) a!2986 mask!3053) lt!269293)))

(declare-fun b!593044 () Bool)

(assert (=> b!593044 (= e!338719 e!338718)))

(declare-fun c!67042 () Bool)

(assert (=> b!593044 (= c!67042 (= lt!269292 (select (arr!17715 a!2986) j!136)))))

(assert (= (and d!86233 c!67041) b!593046))

(assert (= (and d!86233 (not c!67041)) b!593044))

(assert (= (and b!593044 c!67042) b!593043))

(assert (= (and b!593044 (not c!67042)) b!593047))

(assert (= (and b!593047 c!67043) b!593048))

(assert (= (and b!593047 (not c!67043)) b!593045))

(assert (=> b!593045 m!570855))

(assert (=> b!593045 m!570855))

(assert (=> b!593045 m!570843))

(declare-fun m!571111 () Bool)

(assert (=> b!593045 m!571111))

(declare-fun m!571113 () Bool)

(assert (=> d!86233 m!571113))

(declare-fun m!571115 () Bool)

(assert (=> d!86233 m!571115))

(assert (=> d!86233 m!570841))

(assert (=> d!86233 m!570869))

(assert (=> b!592778 d!86233))

(declare-fun d!86263 () Bool)

(declare-fun res!379705 () Bool)

(declare-fun e!338732 () Bool)

(assert (=> d!86263 (=> res!379705 e!338732)))

(assert (=> d!86263 (= res!379705 (= (select (arr!17715 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!86263 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!338732)))

(declare-fun b!593063 () Bool)

(declare-fun e!338733 () Bool)

(assert (=> b!593063 (= e!338732 e!338733)))

(declare-fun res!379706 () Bool)

(assert (=> b!593063 (=> (not res!379706) (not e!338733))))

(assert (=> b!593063 (= res!379706 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18079 a!2986)))))

(declare-fun b!593064 () Bool)

(assert (=> b!593064 (= e!338733 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!86263 (not res!379705)) b!593063))

(assert (= (and b!593063 res!379706) b!593064))

(declare-fun m!571117 () Bool)

(assert (=> d!86263 m!571117))

(declare-fun m!571119 () Bool)

(assert (=> b!593064 m!571119))

(assert (=> b!592767 d!86263))

(declare-fun b!593092 () Bool)

(declare-fun e!338755 () Bool)

(declare-fun call!32855 () Bool)

(assert (=> b!593092 (= e!338755 call!32855)))

(declare-fun d!86265 () Bool)

(declare-fun res!379722 () Bool)

(declare-fun e!338757 () Bool)

(assert (=> d!86265 (=> res!379722 e!338757)))

(assert (=> d!86265 (= res!379722 (bvsge #b00000000000000000000000000000000 (size!18079 a!2986)))))

(assert (=> d!86265 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11806) e!338757)))

(declare-fun b!593093 () Bool)

(declare-fun e!338756 () Bool)

(assert (=> b!593093 (= e!338757 e!338756)))

(declare-fun res!379723 () Bool)

(assert (=> b!593093 (=> (not res!379723) (not e!338756))))

(declare-fun e!338758 () Bool)

(assert (=> b!593093 (= res!379723 (not e!338758))))

(declare-fun res!379724 () Bool)

(assert (=> b!593093 (=> (not res!379724) (not e!338758))))

(assert (=> b!593093 (= res!379724 (validKeyInArray!0 (select (arr!17715 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!32852 () Bool)

(declare-fun c!67052 () Bool)

(assert (=> bm!32852 (= call!32855 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67052 (Cons!11805 (select (arr!17715 a!2986) #b00000000000000000000000000000000) Nil!11806) Nil!11806)))))

(declare-fun b!593094 () Bool)

(assert (=> b!593094 (= e!338755 call!32855)))

(declare-fun b!593095 () Bool)

(declare-fun contains!2915 (List!11809 (_ BitVec 64)) Bool)

(assert (=> b!593095 (= e!338758 (contains!2915 Nil!11806 (select (arr!17715 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!593096 () Bool)

(assert (=> b!593096 (= e!338756 e!338755)))

(assert (=> b!593096 (= c!67052 (validKeyInArray!0 (select (arr!17715 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!86265 (not res!379722)) b!593093))

(assert (= (and b!593093 res!379724) b!593095))

(assert (= (and b!593093 res!379723) b!593096))

(assert (= (and b!593096 c!67052) b!593094))

(assert (= (and b!593096 (not c!67052)) b!593092))

(assert (= (or b!593094 b!593092) bm!32852))

(assert (=> b!593093 m!571117))

(assert (=> b!593093 m!571117))

(declare-fun m!571137 () Bool)

(assert (=> b!593093 m!571137))

(assert (=> bm!32852 m!571117))

(declare-fun m!571139 () Bool)

(assert (=> bm!32852 m!571139))

(assert (=> b!593095 m!571117))

(assert (=> b!593095 m!571117))

(declare-fun m!571141 () Bool)

(assert (=> b!593095 m!571141))

(assert (=> b!593096 m!571117))

(assert (=> b!593096 m!571117))

(assert (=> b!593096 m!571137))

(assert (=> b!592780 d!86265))

(declare-fun d!86269 () Bool)

(declare-fun e!338770 () Bool)

(assert (=> d!86269 e!338770))

(declare-fun res!379733 () Bool)

(assert (=> d!86269 (=> (not res!379733) (not e!338770))))

(assert (=> d!86269 (= res!379733 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18079 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18079 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18079 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18079 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18079 a!2986))))))

(declare-fun lt!269307 () Unit!18592)

(declare-fun choose!9 (array!36900 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18592)

(assert (=> d!86269 (= lt!269307 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269148 vacantSpotIndex!68 mask!3053))))

(assert (=> d!86269 (validMask!0 mask!3053)))

(assert (=> d!86269 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269148 vacantSpotIndex!68 mask!3053) lt!269307)))

(declare-fun b!593111 () Bool)

(assert (=> b!593111 (= e!338770 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269148 vacantSpotIndex!68 (select (arr!17715 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269148 vacantSpotIndex!68 (select (store (arr!17715 a!2986) i!1108 k!1786) j!136) (array!36901 (store (arr!17715 a!2986) i!1108 k!1786) (size!18079 a!2986)) mask!3053)))))

(assert (= (and d!86269 res!379733) b!593111))

(declare-fun m!571151 () Bool)

(assert (=> d!86269 m!571151))

(assert (=> d!86269 m!570869))

(assert (=> b!593111 m!570861))

(declare-fun m!571153 () Bool)

(assert (=> b!593111 m!571153))

(assert (=> b!593111 m!570859))

(assert (=> b!593111 m!570861))

(assert (=> b!593111 m!570843))

(assert (=> b!593111 m!570857))

(assert (=> b!593111 m!570843))

(assert (=> b!592769 d!86269))

(declare-fun b!593112 () Bool)

(declare-fun e!338772 () SeekEntryResult!6162)

(assert (=> b!593112 (= e!338772 (Found!6162 lt!269148))))

(declare-fun e!338771 () SeekEntryResult!6162)

(declare-fun b!593114 () Bool)

(assert (=> b!593114 (= e!338771 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!269148 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!269155 lt!269151 mask!3053))))

(declare-fun b!593115 () Bool)

(declare-fun e!338773 () SeekEntryResult!6162)

(assert (=> b!593115 (= e!338773 Undefined!6162)))

(declare-fun b!593116 () Bool)

(declare-fun c!67058 () Bool)

(declare-fun lt!269308 () (_ BitVec 64))

(assert (=> b!593116 (= c!67058 (= lt!269308 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593116 (= e!338772 e!338771)))

(declare-fun b!593117 () Bool)

(assert (=> b!593117 (= e!338771 (MissingVacant!6162 vacantSpotIndex!68))))

(declare-fun lt!269309 () SeekEntryResult!6162)

(declare-fun d!86279 () Bool)

(assert (=> d!86279 (and (or (is-Undefined!6162 lt!269309) (not (is-Found!6162 lt!269309)) (and (bvsge (index!26887 lt!269309) #b00000000000000000000000000000000) (bvslt (index!26887 lt!269309) (size!18079 lt!269151)))) (or (is-Undefined!6162 lt!269309) (is-Found!6162 lt!269309) (not (is-MissingVacant!6162 lt!269309)) (not (= (index!26889 lt!269309) vacantSpotIndex!68)) (and (bvsge (index!26889 lt!269309) #b00000000000000000000000000000000) (bvslt (index!26889 lt!269309) (size!18079 lt!269151)))) (or (is-Undefined!6162 lt!269309) (ite (is-Found!6162 lt!269309) (= (select (arr!17715 lt!269151) (index!26887 lt!269309)) lt!269155) (and (is-MissingVacant!6162 lt!269309) (= (index!26889 lt!269309) vacantSpotIndex!68) (= (select (arr!17715 lt!269151) (index!26889 lt!269309)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86279 (= lt!269309 e!338773)))

(declare-fun c!67056 () Bool)

(assert (=> d!86279 (= c!67056 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86279 (= lt!269308 (select (arr!17715 lt!269151) lt!269148))))

(assert (=> d!86279 (validMask!0 mask!3053)))

(assert (=> d!86279 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269148 vacantSpotIndex!68 lt!269155 lt!269151 mask!3053) lt!269309)))

(declare-fun b!593113 () Bool)

(assert (=> b!593113 (= e!338773 e!338772)))

(declare-fun c!67057 () Bool)

(assert (=> b!593113 (= c!67057 (= lt!269308 lt!269155))))

(assert (= (and d!86279 c!67056) b!593115))

(assert (= (and d!86279 (not c!67056)) b!593113))

(assert (= (and b!593113 c!67057) b!593112))

(assert (= (and b!593113 (not c!67057)) b!593116))

(assert (= (and b!593116 c!67058) b!593117))

(assert (= (and b!593116 (not c!67058)) b!593114))

(declare-fun m!571155 () Bool)

(assert (=> b!593114 m!571155))

(assert (=> b!593114 m!571155))

(declare-fun m!571157 () Bool)

(assert (=> b!593114 m!571157))

(declare-fun m!571159 () Bool)

(assert (=> d!86279 m!571159))

(declare-fun m!571161 () Bool)

(assert (=> d!86279 m!571161))

(declare-fun m!571163 () Bool)

(assert (=> d!86279 m!571163))

(assert (=> d!86279 m!570869))

(assert (=> b!592769 d!86279))

(declare-fun d!86281 () Bool)

(declare-fun lt!269312 () (_ BitVec 32))

(assert (=> d!86281 (and (bvsge lt!269312 #b00000000000000000000000000000000) (bvslt lt!269312 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86281 (= lt!269312 (choose!52 index!984 x!910 mask!3053))))

