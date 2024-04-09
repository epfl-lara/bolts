; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54912 () Bool)

(assert start!54912)

(declare-fun b!600873 () Bool)

(declare-fun e!343558 () Bool)

(declare-fun e!343569 () Bool)

(assert (=> b!600873 (= e!343558 e!343569)))

(declare-fun res!385881 () Bool)

(assert (=> b!600873 (=> (not res!385881) (not e!343569))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37110 0))(
  ( (array!37111 (arr!17811 (Array (_ BitVec 32) (_ BitVec 64))) (size!18175 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37110)

(assert (=> b!600873 (= res!385881 (= (select (store (arr!17811 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!273503 () array!37110)

(assert (=> b!600873 (= lt!273503 (array!37111 (store (arr!17811 a!2986) i!1108 k!1786) (size!18175 a!2986)))))

(declare-fun b!600874 () Bool)

(declare-fun res!385876 () Bool)

(assert (=> b!600874 (=> (not res!385876) (not e!343558))))

(declare-datatypes ((List!11905 0))(
  ( (Nil!11902) (Cons!11901 (h!12946 (_ BitVec 64)) (t!18141 List!11905)) )
))
(declare-fun arrayNoDuplicates!0 (array!37110 (_ BitVec 32) List!11905) Bool)

(assert (=> b!600874 (= res!385876 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11902))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!343565 () Bool)

(declare-fun b!600875 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37110 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!600875 (= e!343565 (arrayContainsKey!0 lt!273503 (select (arr!17811 a!2986) j!136) index!984))))

(declare-fun b!600876 () Bool)

(declare-fun e!343564 () Bool)

(declare-fun e!343561 () Bool)

(assert (=> b!600876 (= e!343564 e!343561)))

(declare-fun res!385874 () Bool)

(assert (=> b!600876 (=> res!385874 e!343561)))

(declare-fun lt!273500 () (_ BitVec 64))

(declare-fun lt!273507 () (_ BitVec 64))

(assert (=> b!600876 (= res!385874 (or (not (= (select (arr!17811 a!2986) j!136) lt!273507)) (not (= (select (arr!17811 a!2986) j!136) lt!273500)) (bvsge j!136 index!984)))))

(declare-fun b!600877 () Bool)

(declare-fun res!385877 () Bool)

(declare-fun e!343563 () Bool)

(assert (=> b!600877 (=> (not res!385877) (not e!343563))))

(assert (=> b!600877 (= res!385877 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!600878 () Bool)

(declare-datatypes ((Unit!18976 0))(
  ( (Unit!18977) )
))
(declare-fun e!343566 () Unit!18976)

(declare-fun Unit!18978 () Unit!18976)

(assert (=> b!600878 (= e!343566 Unit!18978)))

(assert (=> b!600878 false))

(declare-fun b!600879 () Bool)

(declare-fun e!343560 () Bool)

(assert (=> b!600879 (= e!343569 e!343560)))

(declare-fun res!385884 () Bool)

(assert (=> b!600879 (=> (not res!385884) (not e!343560))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6258 0))(
  ( (MissingZero!6258 (index!27288 (_ BitVec 32))) (Found!6258 (index!27289 (_ BitVec 32))) (Intermediate!6258 (undefined!7070 Bool) (index!27290 (_ BitVec 32)) (x!56114 (_ BitVec 32))) (Undefined!6258) (MissingVacant!6258 (index!27291 (_ BitVec 32))) )
))
(declare-fun lt!273511 () SeekEntryResult!6258)

(assert (=> b!600879 (= res!385884 (and (= lt!273511 (Found!6258 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17811 a!2986) index!984) (select (arr!17811 a!2986) j!136))) (not (= (select (arr!17811 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37110 (_ BitVec 32)) SeekEntryResult!6258)

(assert (=> b!600879 (= lt!273511 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17811 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!600881 () Bool)

(declare-fun e!343568 () Unit!18976)

(declare-fun Unit!18979 () Unit!18976)

(assert (=> b!600881 (= e!343568 Unit!18979)))

(declare-fun lt!273509 () Unit!18976)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37110 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18976)

(assert (=> b!600881 (= lt!273509 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273503 (select (arr!17811 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!600881 (arrayContainsKey!0 lt!273503 (select (arr!17811 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273501 () Unit!18976)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37110 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11905) Unit!18976)

(assert (=> b!600881 (= lt!273501 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11902))))

(assert (=> b!600881 (arrayNoDuplicates!0 lt!273503 #b00000000000000000000000000000000 Nil!11902)))

(declare-fun lt!273502 () Unit!18976)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37110 (_ BitVec 32) (_ BitVec 32)) Unit!18976)

(assert (=> b!600881 (= lt!273502 (lemmaNoDuplicateFromThenFromBigger!0 lt!273503 #b00000000000000000000000000000000 j!136))))

(assert (=> b!600881 (arrayNoDuplicates!0 lt!273503 j!136 Nil!11902)))

(declare-fun lt!273510 () Unit!18976)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37110 (_ BitVec 64) (_ BitVec 32) List!11905) Unit!18976)

(assert (=> b!600881 (= lt!273510 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!273503 (select (arr!17811 a!2986) j!136) j!136 Nil!11902))))

(assert (=> b!600881 false))

(declare-fun b!600882 () Bool)

(declare-fun e!343570 () Bool)

(declare-fun lt!273499 () SeekEntryResult!6258)

(assert (=> b!600882 (= e!343570 (= lt!273511 lt!273499))))

(declare-fun b!600883 () Bool)

(assert (=> b!600883 (= e!343563 e!343558)))

(declare-fun res!385880 () Bool)

(assert (=> b!600883 (=> (not res!385880) (not e!343558))))

(declare-fun lt!273512 () SeekEntryResult!6258)

(assert (=> b!600883 (= res!385880 (or (= lt!273512 (MissingZero!6258 i!1108)) (= lt!273512 (MissingVacant!6258 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37110 (_ BitVec 32)) SeekEntryResult!6258)

(assert (=> b!600883 (= lt!273512 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!600884 () Bool)

(declare-fun Unit!18980 () Unit!18976)

(assert (=> b!600884 (= e!343568 Unit!18980)))

(declare-fun b!600885 () Bool)

(assert (=> b!600885 (= e!343561 e!343565)))

(declare-fun res!385875 () Bool)

(assert (=> b!600885 (=> (not res!385875) (not e!343565))))

(assert (=> b!600885 (= res!385875 (arrayContainsKey!0 lt!273503 (select (arr!17811 a!2986) j!136) j!136))))

(declare-fun b!600886 () Bool)

(declare-fun res!385882 () Bool)

(assert (=> b!600886 (=> (not res!385882) (not e!343558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37110 (_ BitVec 32)) Bool)

(assert (=> b!600886 (= res!385882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!600880 () Bool)

(declare-fun res!385873 () Bool)

(assert (=> b!600880 (=> (not res!385873) (not e!343563))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!600880 (= res!385873 (validKeyInArray!0 k!1786))))

(declare-fun res!385888 () Bool)

(assert (=> start!54912 (=> (not res!385888) (not e!343563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54912 (= res!385888 (validMask!0 mask!3053))))

(assert (=> start!54912 e!343563))

(assert (=> start!54912 true))

(declare-fun array_inv!13585 (array!37110) Bool)

(assert (=> start!54912 (array_inv!13585 a!2986)))

(declare-fun b!600887 () Bool)

(declare-fun res!385879 () Bool)

(assert (=> b!600887 (=> (not res!385879) (not e!343558))))

(assert (=> b!600887 (= res!385879 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17811 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!600888 () Bool)

(declare-fun e!343562 () Bool)

(declare-fun e!343567 () Bool)

(assert (=> b!600888 (= e!343562 e!343567)))

(declare-fun res!385885 () Bool)

(assert (=> b!600888 (=> res!385885 e!343567)))

(assert (=> b!600888 (= res!385885 (or (not (= (select (arr!17811 a!2986) j!136) lt!273507)) (not (= (select (arr!17811 a!2986) j!136) lt!273500))))))

(assert (=> b!600888 e!343564))

(declare-fun res!385889 () Bool)

(assert (=> b!600888 (=> (not res!385889) (not e!343564))))

(assert (=> b!600888 (= res!385889 (= lt!273500 (select (arr!17811 a!2986) j!136)))))

(assert (=> b!600888 (= lt!273500 (select (store (arr!17811 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!600889 () Bool)

(assert (=> b!600889 (= e!343560 (not e!343562))))

(declare-fun res!385886 () Bool)

(assert (=> b!600889 (=> res!385886 e!343562)))

(declare-fun lt!273506 () SeekEntryResult!6258)

(assert (=> b!600889 (= res!385886 (not (= lt!273506 (Found!6258 index!984))))))

(declare-fun lt!273513 () Unit!18976)

(assert (=> b!600889 (= lt!273513 e!343566)))

(declare-fun c!67868 () Bool)

(assert (=> b!600889 (= c!67868 (= lt!273506 Undefined!6258))))

(assert (=> b!600889 (= lt!273506 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273507 lt!273503 mask!3053))))

(assert (=> b!600889 e!343570))

(declare-fun res!385883 () Bool)

(assert (=> b!600889 (=> (not res!385883) (not e!343570))))

(declare-fun lt!273508 () (_ BitVec 32))

(assert (=> b!600889 (= res!385883 (= lt!273499 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273508 vacantSpotIndex!68 lt!273507 lt!273503 mask!3053)))))

(assert (=> b!600889 (= lt!273499 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273508 vacantSpotIndex!68 (select (arr!17811 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!600889 (= lt!273507 (select (store (arr!17811 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!273505 () Unit!18976)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37110 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18976)

(assert (=> b!600889 (= lt!273505 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273508 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!600889 (= lt!273508 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!600890 () Bool)

(assert (=> b!600890 (= e!343567 true)))

(declare-fun lt!273504 () Unit!18976)

(assert (=> b!600890 (= lt!273504 e!343568)))

(declare-fun c!67867 () Bool)

(assert (=> b!600890 (= c!67867 (bvslt j!136 index!984))))

(declare-fun b!600891 () Bool)

(declare-fun Unit!18981 () Unit!18976)

(assert (=> b!600891 (= e!343566 Unit!18981)))

(declare-fun b!600892 () Bool)

(declare-fun res!385887 () Bool)

(assert (=> b!600892 (=> (not res!385887) (not e!343563))))

(assert (=> b!600892 (= res!385887 (validKeyInArray!0 (select (arr!17811 a!2986) j!136)))))

(declare-fun b!600893 () Bool)

(declare-fun res!385878 () Bool)

(assert (=> b!600893 (=> (not res!385878) (not e!343563))))

(assert (=> b!600893 (= res!385878 (and (= (size!18175 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18175 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18175 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!54912 res!385888) b!600893))

(assert (= (and b!600893 res!385878) b!600892))

(assert (= (and b!600892 res!385887) b!600880))

(assert (= (and b!600880 res!385873) b!600877))

(assert (= (and b!600877 res!385877) b!600883))

(assert (= (and b!600883 res!385880) b!600886))

(assert (= (and b!600886 res!385882) b!600874))

(assert (= (and b!600874 res!385876) b!600887))

(assert (= (and b!600887 res!385879) b!600873))

(assert (= (and b!600873 res!385881) b!600879))

(assert (= (and b!600879 res!385884) b!600889))

(assert (= (and b!600889 res!385883) b!600882))

(assert (= (and b!600889 c!67868) b!600878))

(assert (= (and b!600889 (not c!67868)) b!600891))

(assert (= (and b!600889 (not res!385886)) b!600888))

(assert (= (and b!600888 res!385889) b!600876))

(assert (= (and b!600876 (not res!385874)) b!600885))

(assert (= (and b!600885 res!385875) b!600875))

(assert (= (and b!600888 (not res!385885)) b!600890))

(assert (= (and b!600890 c!67867) b!600881))

(assert (= (and b!600890 (not c!67867)) b!600884))

(declare-fun m!578127 () Bool)

(assert (=> b!600892 m!578127))

(assert (=> b!600892 m!578127))

(declare-fun m!578129 () Bool)

(assert (=> b!600892 m!578129))

(declare-fun m!578131 () Bool)

(assert (=> b!600889 m!578131))

(declare-fun m!578133 () Bool)

(assert (=> b!600889 m!578133))

(assert (=> b!600889 m!578127))

(declare-fun m!578135 () Bool)

(assert (=> b!600889 m!578135))

(assert (=> b!600889 m!578127))

(declare-fun m!578137 () Bool)

(assert (=> b!600889 m!578137))

(declare-fun m!578139 () Bool)

(assert (=> b!600889 m!578139))

(declare-fun m!578141 () Bool)

(assert (=> b!600889 m!578141))

(declare-fun m!578143 () Bool)

(assert (=> b!600889 m!578143))

(declare-fun m!578145 () Bool)

(assert (=> b!600887 m!578145))

(declare-fun m!578147 () Bool)

(assert (=> b!600874 m!578147))

(declare-fun m!578149 () Bool)

(assert (=> start!54912 m!578149))

(declare-fun m!578151 () Bool)

(assert (=> start!54912 m!578151))

(assert (=> b!600885 m!578127))

(assert (=> b!600885 m!578127))

(declare-fun m!578153 () Bool)

(assert (=> b!600885 m!578153))

(declare-fun m!578155 () Bool)

(assert (=> b!600883 m!578155))

(assert (=> b!600875 m!578127))

(assert (=> b!600875 m!578127))

(declare-fun m!578157 () Bool)

(assert (=> b!600875 m!578157))

(declare-fun m!578159 () Bool)

(assert (=> b!600886 m!578159))

(assert (=> b!600888 m!578127))

(assert (=> b!600888 m!578135))

(declare-fun m!578161 () Bool)

(assert (=> b!600888 m!578161))

(assert (=> b!600876 m!578127))

(declare-fun m!578163 () Bool)

(assert (=> b!600879 m!578163))

(assert (=> b!600879 m!578127))

(assert (=> b!600879 m!578127))

(declare-fun m!578165 () Bool)

(assert (=> b!600879 m!578165))

(assert (=> b!600881 m!578127))

(declare-fun m!578167 () Bool)

(assert (=> b!600881 m!578167))

(assert (=> b!600881 m!578127))

(declare-fun m!578169 () Bool)

(assert (=> b!600881 m!578169))

(assert (=> b!600881 m!578127))

(declare-fun m!578171 () Bool)

(assert (=> b!600881 m!578171))

(assert (=> b!600881 m!578127))

(declare-fun m!578173 () Bool)

(assert (=> b!600881 m!578173))

(declare-fun m!578175 () Bool)

(assert (=> b!600881 m!578175))

(declare-fun m!578177 () Bool)

(assert (=> b!600881 m!578177))

(declare-fun m!578179 () Bool)

(assert (=> b!600881 m!578179))

(declare-fun m!578181 () Bool)

(assert (=> b!600877 m!578181))

(assert (=> b!600873 m!578135))

(declare-fun m!578183 () Bool)

(assert (=> b!600873 m!578183))

(declare-fun m!578185 () Bool)

(assert (=> b!600880 m!578185))

(push 1)

