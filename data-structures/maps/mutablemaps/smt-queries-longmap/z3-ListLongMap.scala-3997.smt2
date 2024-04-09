; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54182 () Bool)

(assert start!54182)

(declare-fun res!378905 () Bool)

(declare-fun e!337967 () Bool)

(assert (=> start!54182 (=> (not res!378905) (not e!337967))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54182 (= res!378905 (validMask!0 mask!3053))))

(assert (=> start!54182 e!337967))

(assert (=> start!54182 true))

(declare-datatypes ((array!36875 0))(
  ( (array!36876 (arr!17704 (Array (_ BitVec 32) (_ BitVec 64))) (size!18068 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36875)

(declare-fun array_inv!13478 (array!36875) Bool)

(assert (=> start!54182 (array_inv!13478 a!2986)))

(declare-fun b!591851 () Bool)

(declare-fun res!378913 () Bool)

(assert (=> b!591851 (=> (not res!378913) (not e!337967))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36875 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591851 (= res!378913 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591852 () Bool)

(declare-fun res!378901 () Bool)

(declare-fun e!337974 () Bool)

(assert (=> b!591852 (=> (not res!378901) (not e!337974))))

(declare-datatypes ((List!11798 0))(
  ( (Nil!11795) (Cons!11794 (h!12839 (_ BitVec 64)) (t!18034 List!11798)) )
))
(declare-fun arrayNoDuplicates!0 (array!36875 (_ BitVec 32) List!11798) Bool)

(assert (=> b!591852 (= res!378901 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11795))))

(declare-fun b!591853 () Bool)

(declare-fun res!378909 () Bool)

(assert (=> b!591853 (=> (not res!378909) (not e!337967))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591853 (= res!378909 (validKeyInArray!0 k0!1786))))

(declare-fun b!591854 () Bool)

(declare-fun e!337973 () Bool)

(declare-datatypes ((SeekEntryResult!6151 0))(
  ( (MissingZero!6151 (index!26839 (_ BitVec 32))) (Found!6151 (index!26840 (_ BitVec 32))) (Intermediate!6151 (undefined!6963 Bool) (index!26841 (_ BitVec 32)) (x!55656 (_ BitVec 32))) (Undefined!6151) (MissingVacant!6151 (index!26842 (_ BitVec 32))) )
))
(declare-fun lt!268673 () SeekEntryResult!6151)

(declare-fun lt!268667 () SeekEntryResult!6151)

(assert (=> b!591854 (= e!337973 (= lt!268673 lt!268667))))

(declare-fun b!591855 () Bool)

(declare-fun e!337964 () Bool)

(declare-fun e!337970 () Bool)

(assert (=> b!591855 (= e!337964 e!337970)))

(declare-fun res!378911 () Bool)

(assert (=> b!591855 (=> res!378911 e!337970)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!268675 () (_ BitVec 64))

(declare-fun lt!268668 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!591855 (= res!378911 (or (not (= (select (arr!17704 a!2986) j!136) lt!268668)) (not (= (select (arr!17704 a!2986) j!136) lt!268675)) (bvsge j!136 index!984)))))

(declare-fun e!337968 () Bool)

(assert (=> b!591855 e!337968))

(declare-fun res!378914 () Bool)

(assert (=> b!591855 (=> (not res!378914) (not e!337968))))

(assert (=> b!591855 (= res!378914 (= lt!268675 (select (arr!17704 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!591855 (= lt!268675 (select (store (arr!17704 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!591856 () Bool)

(declare-fun res!378916 () Bool)

(assert (=> b!591856 (=> (not res!378916) (not e!337967))))

(assert (=> b!591856 (= res!378916 (and (= (size!18068 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18068 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18068 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!591857 () Bool)

(declare-fun e!337966 () Bool)

(assert (=> b!591857 (= e!337966 (not e!337964))))

(declare-fun res!378908 () Bool)

(assert (=> b!591857 (=> res!378908 e!337964)))

(declare-fun lt!268672 () SeekEntryResult!6151)

(assert (=> b!591857 (= res!378908 (not (= lt!268672 (Found!6151 index!984))))))

(declare-datatypes ((Unit!18548 0))(
  ( (Unit!18549) )
))
(declare-fun lt!268671 () Unit!18548)

(declare-fun e!337969 () Unit!18548)

(assert (=> b!591857 (= lt!268671 e!337969)))

(declare-fun c!66842 () Bool)

(assert (=> b!591857 (= c!66842 (= lt!268672 Undefined!6151))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!268674 () array!36875)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36875 (_ BitVec 32)) SeekEntryResult!6151)

(assert (=> b!591857 (= lt!268672 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268668 lt!268674 mask!3053))))

(assert (=> b!591857 e!337973))

(declare-fun res!378902 () Bool)

(assert (=> b!591857 (=> (not res!378902) (not e!337973))))

(declare-fun lt!268676 () (_ BitVec 32))

(assert (=> b!591857 (= res!378902 (= lt!268667 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268676 vacantSpotIndex!68 lt!268668 lt!268674 mask!3053)))))

(assert (=> b!591857 (= lt!268667 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268676 vacantSpotIndex!68 (select (arr!17704 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!591857 (= lt!268668 (select (store (arr!17704 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!268670 () Unit!18548)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36875 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18548)

(assert (=> b!591857 (= lt!268670 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268676 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591857 (= lt!268676 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!591858 () Bool)

(declare-fun res!378904 () Bool)

(assert (=> b!591858 (=> (not res!378904) (not e!337974))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36875 (_ BitVec 32)) Bool)

(assert (=> b!591858 (= res!378904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!591859 () Bool)

(declare-fun Unit!18550 () Unit!18548)

(assert (=> b!591859 (= e!337969 Unit!18550)))

(declare-fun e!337975 () Bool)

(declare-fun b!591860 () Bool)

(assert (=> b!591860 (= e!337975 (arrayContainsKey!0 lt!268674 (select (arr!17704 a!2986) j!136) index!984))))

(declare-fun b!591861 () Bool)

(declare-fun res!378910 () Bool)

(assert (=> b!591861 (=> (not res!378910) (not e!337967))))

(assert (=> b!591861 (= res!378910 (validKeyInArray!0 (select (arr!17704 a!2986) j!136)))))

(declare-fun b!591862 () Bool)

(assert (=> b!591862 (= e!337967 e!337974)))

(declare-fun res!378907 () Bool)

(assert (=> b!591862 (=> (not res!378907) (not e!337974))))

(declare-fun lt!268677 () SeekEntryResult!6151)

(assert (=> b!591862 (= res!378907 (or (= lt!268677 (MissingZero!6151 i!1108)) (= lt!268677 (MissingVacant!6151 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36875 (_ BitVec 32)) SeekEntryResult!6151)

(assert (=> b!591862 (= lt!268677 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!591863 () Bool)

(declare-fun e!337965 () Bool)

(assert (=> b!591863 (= e!337974 e!337965)))

(declare-fun res!378915 () Bool)

(assert (=> b!591863 (=> (not res!378915) (not e!337965))))

(assert (=> b!591863 (= res!378915 (= (select (store (arr!17704 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!591863 (= lt!268674 (array!36876 (store (arr!17704 a!2986) i!1108 k0!1786) (size!18068 a!2986)))))

(declare-fun b!591864 () Bool)

(declare-fun Unit!18551 () Unit!18548)

(assert (=> b!591864 (= e!337969 Unit!18551)))

(assert (=> b!591864 false))

(declare-fun b!591865 () Bool)

(declare-fun e!337971 () Bool)

(assert (=> b!591865 (= e!337968 e!337971)))

(declare-fun res!378917 () Bool)

(assert (=> b!591865 (=> res!378917 e!337971)))

(assert (=> b!591865 (= res!378917 (or (not (= (select (arr!17704 a!2986) j!136) lt!268668)) (not (= (select (arr!17704 a!2986) j!136) lt!268675)) (bvsge j!136 index!984)))))

(declare-fun b!591866 () Bool)

(assert (=> b!591866 (= e!337971 e!337975)))

(declare-fun res!378903 () Bool)

(assert (=> b!591866 (=> (not res!378903) (not e!337975))))

(assert (=> b!591866 (= res!378903 (arrayContainsKey!0 lt!268674 (select (arr!17704 a!2986) j!136) j!136))))

(declare-fun b!591867 () Bool)

(assert (=> b!591867 (= e!337965 e!337966)))

(declare-fun res!378912 () Bool)

(assert (=> b!591867 (=> (not res!378912) (not e!337966))))

(assert (=> b!591867 (= res!378912 (and (= lt!268673 (Found!6151 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17704 a!2986) index!984) (select (arr!17704 a!2986) j!136))) (not (= (select (arr!17704 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!591867 (= lt!268673 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17704 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!591868 () Bool)

(assert (=> b!591868 (= e!337970 (bvsge (bvadd #b00000000000000000000000000000001 j!136) #b00000000000000000000000000000000))))

(assert (=> b!591868 (arrayContainsKey!0 lt!268674 (select (arr!17704 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!268669 () Unit!18548)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36875 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18548)

(assert (=> b!591868 (= lt!268669 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!268674 (select (arr!17704 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!591869 () Bool)

(declare-fun res!378906 () Bool)

(assert (=> b!591869 (=> (not res!378906) (not e!337974))))

(assert (=> b!591869 (= res!378906 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17704 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!54182 res!378905) b!591856))

(assert (= (and b!591856 res!378916) b!591861))

(assert (= (and b!591861 res!378910) b!591853))

(assert (= (and b!591853 res!378909) b!591851))

(assert (= (and b!591851 res!378913) b!591862))

(assert (= (and b!591862 res!378907) b!591858))

(assert (= (and b!591858 res!378904) b!591852))

(assert (= (and b!591852 res!378901) b!591869))

(assert (= (and b!591869 res!378906) b!591863))

(assert (= (and b!591863 res!378915) b!591867))

(assert (= (and b!591867 res!378912) b!591857))

(assert (= (and b!591857 res!378902) b!591854))

(assert (= (and b!591857 c!66842) b!591864))

(assert (= (and b!591857 (not c!66842)) b!591859))

(assert (= (and b!591857 (not res!378908)) b!591855))

(assert (= (and b!591855 res!378914) b!591865))

(assert (= (and b!591865 (not res!378917)) b!591866))

(assert (= (and b!591866 res!378903) b!591860))

(assert (= (and b!591855 (not res!378911)) b!591868))

(declare-fun m!570041 () Bool)

(assert (=> b!591863 m!570041))

(declare-fun m!570043 () Bool)

(assert (=> b!591863 m!570043))

(declare-fun m!570045 () Bool)

(assert (=> b!591860 m!570045))

(assert (=> b!591860 m!570045))

(declare-fun m!570047 () Bool)

(assert (=> b!591860 m!570047))

(assert (=> b!591866 m!570045))

(assert (=> b!591866 m!570045))

(declare-fun m!570049 () Bool)

(assert (=> b!591866 m!570049))

(declare-fun m!570051 () Bool)

(assert (=> b!591867 m!570051))

(assert (=> b!591867 m!570045))

(assert (=> b!591867 m!570045))

(declare-fun m!570053 () Bool)

(assert (=> b!591867 m!570053))

(declare-fun m!570055 () Bool)

(assert (=> b!591862 m!570055))

(declare-fun m!570057 () Bool)

(assert (=> b!591853 m!570057))

(assert (=> b!591868 m!570045))

(assert (=> b!591868 m!570045))

(declare-fun m!570059 () Bool)

(assert (=> b!591868 m!570059))

(assert (=> b!591868 m!570045))

(declare-fun m!570061 () Bool)

(assert (=> b!591868 m!570061))

(declare-fun m!570063 () Bool)

(assert (=> b!591852 m!570063))

(declare-fun m!570065 () Bool)

(assert (=> b!591851 m!570065))

(assert (=> b!591861 m!570045))

(assert (=> b!591861 m!570045))

(declare-fun m!570067 () Bool)

(assert (=> b!591861 m!570067))

(declare-fun m!570069 () Bool)

(assert (=> b!591857 m!570069))

(declare-fun m!570071 () Bool)

(assert (=> b!591857 m!570071))

(assert (=> b!591857 m!570045))

(assert (=> b!591857 m!570041))

(declare-fun m!570073 () Bool)

(assert (=> b!591857 m!570073))

(declare-fun m!570075 () Bool)

(assert (=> b!591857 m!570075))

(declare-fun m!570077 () Bool)

(assert (=> b!591857 m!570077))

(assert (=> b!591857 m!570045))

(declare-fun m!570079 () Bool)

(assert (=> b!591857 m!570079))

(assert (=> b!591865 m!570045))

(declare-fun m!570081 () Bool)

(assert (=> b!591869 m!570081))

(declare-fun m!570083 () Bool)

(assert (=> b!591858 m!570083))

(declare-fun m!570085 () Bool)

(assert (=> start!54182 m!570085))

(declare-fun m!570087 () Bool)

(assert (=> start!54182 m!570087))

(assert (=> b!591855 m!570045))

(assert (=> b!591855 m!570041))

(declare-fun m!570089 () Bool)

(assert (=> b!591855 m!570089))

(check-sat (not b!591868) (not b!591861) (not b!591853) (not b!591866) (not b!591851) (not b!591862) (not b!591857) (not b!591860) (not b!591852) (not start!54182) (not b!591858) (not b!591867))
(check-sat)
