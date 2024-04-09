; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54848 () Bool)

(assert start!54848)

(declare-fun b!598802 () Bool)

(declare-fun e!342326 () Bool)

(declare-fun e!342329 () Bool)

(assert (=> b!598802 (= e!342326 e!342329)))

(declare-fun res!384007 () Bool)

(assert (=> b!598802 (=> res!384007 e!342329)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!272184 () (_ BitVec 64))

(declare-fun lt!272181 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37046 0))(
  ( (array!37047 (arr!17779 (Array (_ BitVec 32) (_ BitVec 64))) (size!18143 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37046)

(assert (=> b!598802 (= res!384007 (or (not (= (select (arr!17779 a!2986) j!136) lt!272184)) (not (= (select (arr!17779 a!2986) j!136) lt!272181)) (bvsge j!136 index!984)))))

(declare-fun b!598803 () Bool)

(declare-fun e!342331 () Bool)

(assert (=> b!598803 (= e!342331 true)))

(declare-fun lt!272189 () array!37046)

(declare-datatypes ((List!11873 0))(
  ( (Nil!11870) (Cons!11869 (h!12914 (_ BitVec 64)) (t!18109 List!11873)) )
))
(declare-fun arrayNoDuplicates!0 (array!37046 (_ BitVec 32) List!11873) Bool)

(assert (=> b!598803 (arrayNoDuplicates!0 lt!272189 #b00000000000000000000000000000000 Nil!11870)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((Unit!18848 0))(
  ( (Unit!18849) )
))
(declare-fun lt!272188 () Unit!18848)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37046 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11873) Unit!18848)

(assert (=> b!598803 (= lt!272188 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11870))))

(declare-fun arrayContainsKey!0 (array!37046 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!598803 (arrayContainsKey!0 lt!272189 (select (arr!17779 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272179 () Unit!18848)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37046 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18848)

(assert (=> b!598803 (= lt!272179 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272189 (select (arr!17779 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!598804 () Bool)

(declare-fun e!342330 () Unit!18848)

(declare-fun Unit!18850 () Unit!18848)

(assert (=> b!598804 (= e!342330 Unit!18850)))

(assert (=> b!598804 false))

(declare-fun b!598806 () Bool)

(declare-fun res!384012 () Bool)

(declare-fun e!342323 () Bool)

(assert (=> b!598806 (=> (not res!384012) (not e!342323))))

(assert (=> b!598806 (= res!384012 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11870))))

(declare-fun b!598807 () Bool)

(declare-fun e!342324 () Bool)

(assert (=> b!598807 (= e!342323 e!342324)))

(declare-fun res!383999 () Bool)

(assert (=> b!598807 (=> (not res!383999) (not e!342324))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!598807 (= res!383999 (= (select (store (arr!17779 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!598807 (= lt!272189 (array!37047 (store (arr!17779 a!2986) i!1108 k0!1786) (size!18143 a!2986)))))

(declare-fun b!598808 () Bool)

(declare-fun res!384006 () Bool)

(declare-fun e!342327 () Bool)

(assert (=> b!598808 (=> (not res!384006) (not e!342327))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!598808 (= res!384006 (validKeyInArray!0 (select (arr!17779 a!2986) j!136)))))

(declare-fun b!598809 () Bool)

(declare-fun e!342333 () Bool)

(assert (=> b!598809 (= e!342329 e!342333)))

(declare-fun res!384005 () Bool)

(assert (=> b!598809 (=> (not res!384005) (not e!342333))))

(assert (=> b!598809 (= res!384005 (arrayContainsKey!0 lt!272189 (select (arr!17779 a!2986) j!136) j!136))))

(declare-fun b!598810 () Bool)

(declare-fun e!342325 () Bool)

(assert (=> b!598810 (= e!342325 e!342331)))

(declare-fun res!384001 () Bool)

(assert (=> b!598810 (=> res!384001 e!342331)))

(assert (=> b!598810 (= res!384001 (or (not (= (select (arr!17779 a!2986) j!136) lt!272184)) (not (= (select (arr!17779 a!2986) j!136) lt!272181)) (bvsge j!136 index!984)))))

(assert (=> b!598810 e!342326))

(declare-fun res!384014 () Bool)

(assert (=> b!598810 (=> (not res!384014) (not e!342326))))

(assert (=> b!598810 (= res!384014 (= lt!272181 (select (arr!17779 a!2986) j!136)))))

(assert (=> b!598810 (= lt!272181 (select (store (arr!17779 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!598811 () Bool)

(declare-fun res!384002 () Bool)

(assert (=> b!598811 (=> (not res!384002) (not e!342327))))

(assert (=> b!598811 (= res!384002 (validKeyInArray!0 k0!1786))))

(declare-fun b!598812 () Bool)

(declare-fun res!384011 () Bool)

(assert (=> b!598812 (=> (not res!384011) (not e!342323))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!598812 (= res!384011 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17779 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!598813 () Bool)

(declare-fun res!384004 () Bool)

(assert (=> b!598813 (=> (not res!384004) (not e!342327))))

(assert (=> b!598813 (= res!384004 (and (= (size!18143 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18143 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18143 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!598814 () Bool)

(declare-fun Unit!18851 () Unit!18848)

(assert (=> b!598814 (= e!342330 Unit!18851)))

(declare-fun b!598815 () Bool)

(declare-fun e!342328 () Bool)

(declare-datatypes ((SeekEntryResult!6226 0))(
  ( (MissingZero!6226 (index!27160 (_ BitVec 32))) (Found!6226 (index!27161 (_ BitVec 32))) (Intermediate!6226 (undefined!7038 Bool) (index!27162 (_ BitVec 32)) (x!55994 (_ BitVec 32))) (Undefined!6226) (MissingVacant!6226 (index!27163 (_ BitVec 32))) )
))
(declare-fun lt!272187 () SeekEntryResult!6226)

(declare-fun lt!272180 () SeekEntryResult!6226)

(assert (=> b!598815 (= e!342328 (= lt!272187 lt!272180))))

(declare-fun b!598816 () Bool)

(declare-fun e!342332 () Bool)

(assert (=> b!598816 (= e!342332 (not e!342325))))

(declare-fun res!384008 () Bool)

(assert (=> b!598816 (=> res!384008 e!342325)))

(declare-fun lt!272185 () SeekEntryResult!6226)

(assert (=> b!598816 (= res!384008 (not (= lt!272185 (Found!6226 index!984))))))

(declare-fun lt!272183 () Unit!18848)

(assert (=> b!598816 (= lt!272183 e!342330)))

(declare-fun c!67769 () Bool)

(assert (=> b!598816 (= c!67769 (= lt!272185 Undefined!6226))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37046 (_ BitVec 32)) SeekEntryResult!6226)

(assert (=> b!598816 (= lt!272185 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272184 lt!272189 mask!3053))))

(assert (=> b!598816 e!342328))

(declare-fun res!384000 () Bool)

(assert (=> b!598816 (=> (not res!384000) (not e!342328))))

(declare-fun lt!272186 () (_ BitVec 32))

(assert (=> b!598816 (= res!384000 (= lt!272180 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272186 vacantSpotIndex!68 lt!272184 lt!272189 mask!3053)))))

(assert (=> b!598816 (= lt!272180 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272186 vacantSpotIndex!68 (select (arr!17779 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!598816 (= lt!272184 (select (store (arr!17779 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!272182 () Unit!18848)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37046 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18848)

(assert (=> b!598816 (= lt!272182 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272186 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!598816 (= lt!272186 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!384013 () Bool)

(assert (=> start!54848 (=> (not res!384013) (not e!342327))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54848 (= res!384013 (validMask!0 mask!3053))))

(assert (=> start!54848 e!342327))

(assert (=> start!54848 true))

(declare-fun array_inv!13553 (array!37046) Bool)

(assert (=> start!54848 (array_inv!13553 a!2986)))

(declare-fun b!598805 () Bool)

(assert (=> b!598805 (= e!342324 e!342332)))

(declare-fun res!384003 () Bool)

(assert (=> b!598805 (=> (not res!384003) (not e!342332))))

(assert (=> b!598805 (= res!384003 (and (= lt!272187 (Found!6226 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17779 a!2986) index!984) (select (arr!17779 a!2986) j!136))) (not (= (select (arr!17779 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!598805 (= lt!272187 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17779 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!598817 () Bool)

(assert (=> b!598817 (= e!342333 (arrayContainsKey!0 lt!272189 (select (arr!17779 a!2986) j!136) index!984))))

(declare-fun b!598818 () Bool)

(assert (=> b!598818 (= e!342327 e!342323)))

(declare-fun res!384010 () Bool)

(assert (=> b!598818 (=> (not res!384010) (not e!342323))))

(declare-fun lt!272190 () SeekEntryResult!6226)

(assert (=> b!598818 (= res!384010 (or (= lt!272190 (MissingZero!6226 i!1108)) (= lt!272190 (MissingVacant!6226 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37046 (_ BitVec 32)) SeekEntryResult!6226)

(assert (=> b!598818 (= lt!272190 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!598819 () Bool)

(declare-fun res!384009 () Bool)

(assert (=> b!598819 (=> (not res!384009) (not e!342327))))

(assert (=> b!598819 (= res!384009 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!598820 () Bool)

(declare-fun res!383998 () Bool)

(assert (=> b!598820 (=> (not res!383998) (not e!342323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37046 (_ BitVec 32)) Bool)

(assert (=> b!598820 (= res!383998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!54848 res!384013) b!598813))

(assert (= (and b!598813 res!384004) b!598808))

(assert (= (and b!598808 res!384006) b!598811))

(assert (= (and b!598811 res!384002) b!598819))

(assert (= (and b!598819 res!384009) b!598818))

(assert (= (and b!598818 res!384010) b!598820))

(assert (= (and b!598820 res!383998) b!598806))

(assert (= (and b!598806 res!384012) b!598812))

(assert (= (and b!598812 res!384011) b!598807))

(assert (= (and b!598807 res!383999) b!598805))

(assert (= (and b!598805 res!384003) b!598816))

(assert (= (and b!598816 res!384000) b!598815))

(assert (= (and b!598816 c!67769) b!598804))

(assert (= (and b!598816 (not c!67769)) b!598814))

(assert (= (and b!598816 (not res!384008)) b!598810))

(assert (= (and b!598810 res!384014) b!598802))

(assert (= (and b!598802 (not res!384007)) b!598809))

(assert (= (and b!598809 res!384005) b!598817))

(assert (= (and b!598810 (not res!384001)) b!598803))

(declare-fun m!576129 () Bool)

(assert (=> b!598816 m!576129))

(declare-fun m!576131 () Bool)

(assert (=> b!598816 m!576131))

(declare-fun m!576133 () Bool)

(assert (=> b!598816 m!576133))

(declare-fun m!576135 () Bool)

(assert (=> b!598816 m!576135))

(declare-fun m!576137 () Bool)

(assert (=> b!598816 m!576137))

(declare-fun m!576139 () Bool)

(assert (=> b!598816 m!576139))

(assert (=> b!598816 m!576133))

(declare-fun m!576141 () Bool)

(assert (=> b!598816 m!576141))

(declare-fun m!576143 () Bool)

(assert (=> b!598816 m!576143))

(declare-fun m!576145 () Bool)

(assert (=> b!598812 m!576145))

(assert (=> b!598809 m!576133))

(assert (=> b!598809 m!576133))

(declare-fun m!576147 () Bool)

(assert (=> b!598809 m!576147))

(assert (=> b!598810 m!576133))

(assert (=> b!598810 m!576137))

(declare-fun m!576149 () Bool)

(assert (=> b!598810 m!576149))

(declare-fun m!576151 () Bool)

(assert (=> b!598819 m!576151))

(assert (=> b!598817 m!576133))

(assert (=> b!598817 m!576133))

(declare-fun m!576153 () Bool)

(assert (=> b!598817 m!576153))

(declare-fun m!576155 () Bool)

(assert (=> b!598803 m!576155))

(assert (=> b!598803 m!576133))

(declare-fun m!576157 () Bool)

(assert (=> b!598803 m!576157))

(assert (=> b!598803 m!576133))

(assert (=> b!598803 m!576133))

(declare-fun m!576159 () Bool)

(assert (=> b!598803 m!576159))

(declare-fun m!576161 () Bool)

(assert (=> b!598803 m!576161))

(declare-fun m!576163 () Bool)

(assert (=> start!54848 m!576163))

(declare-fun m!576165 () Bool)

(assert (=> start!54848 m!576165))

(declare-fun m!576167 () Bool)

(assert (=> b!598811 m!576167))

(declare-fun m!576169 () Bool)

(assert (=> b!598818 m!576169))

(assert (=> b!598802 m!576133))

(assert (=> b!598807 m!576137))

(declare-fun m!576171 () Bool)

(assert (=> b!598807 m!576171))

(declare-fun m!576173 () Bool)

(assert (=> b!598806 m!576173))

(declare-fun m!576175 () Bool)

(assert (=> b!598805 m!576175))

(assert (=> b!598805 m!576133))

(assert (=> b!598805 m!576133))

(declare-fun m!576177 () Bool)

(assert (=> b!598805 m!576177))

(assert (=> b!598808 m!576133))

(assert (=> b!598808 m!576133))

(declare-fun m!576179 () Bool)

(assert (=> b!598808 m!576179))

(declare-fun m!576181 () Bool)

(assert (=> b!598820 m!576181))

(check-sat (not b!598818) (not b!598819) (not b!598811) (not b!598808) (not b!598803) (not b!598809) (not b!598816) (not b!598806) (not start!54848) (not b!598817) (not b!598805) (not b!598820))
(check-sat)
