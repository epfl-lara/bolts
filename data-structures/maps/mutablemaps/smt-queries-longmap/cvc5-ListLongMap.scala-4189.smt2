; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57120 () Bool)

(assert start!57120)

(declare-fun b!632073 () Bool)

(declare-fun res!408874 () Bool)

(declare-fun e!361373 () Bool)

(assert (=> b!632073 (=> (not res!408874) (not e!361373))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38100 0))(
  ( (array!38101 (arr!18279 (Array (_ BitVec 32) (_ BitVec 64))) (size!18643 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38100)

(assert (=> b!632073 (= res!408874 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18279 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!632074 () Bool)

(declare-fun e!361370 () Bool)

(declare-fun e!361369 () Bool)

(assert (=> b!632074 (= e!361370 (not e!361369))))

(declare-fun res!408877 () Bool)

(assert (=> b!632074 (=> res!408877 e!361369)))

(declare-datatypes ((SeekEntryResult!6726 0))(
  ( (MissingZero!6726 (index!29196 (_ BitVec 32))) (Found!6726 (index!29197 (_ BitVec 32))) (Intermediate!6726 (undefined!7538 Bool) (index!29198 (_ BitVec 32)) (x!57962 (_ BitVec 32))) (Undefined!6726) (MissingVacant!6726 (index!29199 (_ BitVec 32))) )
))
(declare-fun lt!292158 () SeekEntryResult!6726)

(assert (=> b!632074 (= res!408877 (not (= lt!292158 (Found!6726 index!984))))))

(declare-datatypes ((Unit!21262 0))(
  ( (Unit!21263) )
))
(declare-fun lt!292150 () Unit!21262)

(declare-fun e!361374 () Unit!21262)

(assert (=> b!632074 (= lt!292150 e!361374)))

(declare-fun c!71969 () Bool)

(assert (=> b!632074 (= c!71969 (= lt!292158 Undefined!6726))))

(declare-fun lt!292157 () (_ BitVec 64))

(declare-fun lt!292156 () array!38100)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38100 (_ BitVec 32)) SeekEntryResult!6726)

(assert (=> b!632074 (= lt!292158 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292157 lt!292156 mask!3053))))

(declare-fun e!361372 () Bool)

(assert (=> b!632074 e!361372))

(declare-fun res!408878 () Bool)

(assert (=> b!632074 (=> (not res!408878) (not e!361372))))

(declare-fun lt!292153 () (_ BitVec 32))

(declare-fun lt!292155 () SeekEntryResult!6726)

(assert (=> b!632074 (= res!408878 (= lt!292155 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292153 vacantSpotIndex!68 lt!292157 lt!292156 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!632074 (= lt!292155 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292153 vacantSpotIndex!68 (select (arr!18279 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!632074 (= lt!292157 (select (store (arr!18279 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292152 () Unit!21262)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38100 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21262)

(assert (=> b!632074 (= lt!292152 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292153 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!632074 (= lt!292153 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!632075 () Bool)

(assert (=> b!632075 (= e!361369 true)))

(assert (=> b!632075 (= (select (store (arr!18279 a!2986) i!1108 k!1786) index!984) (select (arr!18279 a!2986) j!136))))

(declare-fun b!632076 () Bool)

(declare-fun res!408880 () Bool)

(declare-fun e!361368 () Bool)

(assert (=> b!632076 (=> (not res!408880) (not e!361368))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!632076 (= res!408880 (validKeyInArray!0 k!1786))))

(declare-fun b!632077 () Bool)

(declare-fun res!408875 () Bool)

(assert (=> b!632077 (=> (not res!408875) (not e!361368))))

(assert (=> b!632077 (= res!408875 (and (= (size!18643 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18643 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18643 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!632078 () Bool)

(declare-fun e!361375 () Bool)

(assert (=> b!632078 (= e!361373 e!361375)))

(declare-fun res!408871 () Bool)

(assert (=> b!632078 (=> (not res!408871) (not e!361375))))

(assert (=> b!632078 (= res!408871 (= (select (store (arr!18279 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!632078 (= lt!292156 (array!38101 (store (arr!18279 a!2986) i!1108 k!1786) (size!18643 a!2986)))))

(declare-fun res!408881 () Bool)

(assert (=> start!57120 (=> (not res!408881) (not e!361368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57120 (= res!408881 (validMask!0 mask!3053))))

(assert (=> start!57120 e!361368))

(assert (=> start!57120 true))

(declare-fun array_inv!14053 (array!38100) Bool)

(assert (=> start!57120 (array_inv!14053 a!2986)))

(declare-fun b!632079 () Bool)

(declare-fun res!408873 () Bool)

(assert (=> b!632079 (=> (not res!408873) (not e!361373))))

(declare-datatypes ((List!12373 0))(
  ( (Nil!12370) (Cons!12369 (h!13414 (_ BitVec 64)) (t!18609 List!12373)) )
))
(declare-fun arrayNoDuplicates!0 (array!38100 (_ BitVec 32) List!12373) Bool)

(assert (=> b!632079 (= res!408873 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12370))))

(declare-fun b!632080 () Bool)

(declare-fun Unit!21264 () Unit!21262)

(assert (=> b!632080 (= e!361374 Unit!21264)))

(declare-fun b!632081 () Bool)

(declare-fun res!408869 () Bool)

(assert (=> b!632081 (=> (not res!408869) (not e!361373))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38100 (_ BitVec 32)) Bool)

(assert (=> b!632081 (= res!408869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!632082 () Bool)

(declare-fun Unit!21265 () Unit!21262)

(assert (=> b!632082 (= e!361374 Unit!21265)))

(assert (=> b!632082 false))

(declare-fun b!632083 () Bool)

(assert (=> b!632083 (= e!361375 e!361370)))

(declare-fun res!408872 () Bool)

(assert (=> b!632083 (=> (not res!408872) (not e!361370))))

(declare-fun lt!292154 () SeekEntryResult!6726)

(assert (=> b!632083 (= res!408872 (and (= lt!292154 (Found!6726 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18279 a!2986) index!984) (select (arr!18279 a!2986) j!136))) (not (= (select (arr!18279 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!632083 (= lt!292154 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18279 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!632084 () Bool)

(declare-fun res!408870 () Bool)

(assert (=> b!632084 (=> (not res!408870) (not e!361368))))

(assert (=> b!632084 (= res!408870 (validKeyInArray!0 (select (arr!18279 a!2986) j!136)))))

(declare-fun b!632085 () Bool)

(assert (=> b!632085 (= e!361368 e!361373)))

(declare-fun res!408876 () Bool)

(assert (=> b!632085 (=> (not res!408876) (not e!361373))))

(declare-fun lt!292151 () SeekEntryResult!6726)

(assert (=> b!632085 (= res!408876 (or (= lt!292151 (MissingZero!6726 i!1108)) (= lt!292151 (MissingVacant!6726 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38100 (_ BitVec 32)) SeekEntryResult!6726)

(assert (=> b!632085 (= lt!292151 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!632086 () Bool)

(declare-fun res!408879 () Bool)

(assert (=> b!632086 (=> (not res!408879) (not e!361368))))

(declare-fun arrayContainsKey!0 (array!38100 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!632086 (= res!408879 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!632087 () Bool)

(assert (=> b!632087 (= e!361372 (= lt!292154 lt!292155))))

(assert (= (and start!57120 res!408881) b!632077))

(assert (= (and b!632077 res!408875) b!632084))

(assert (= (and b!632084 res!408870) b!632076))

(assert (= (and b!632076 res!408880) b!632086))

(assert (= (and b!632086 res!408879) b!632085))

(assert (= (and b!632085 res!408876) b!632081))

(assert (= (and b!632081 res!408869) b!632079))

(assert (= (and b!632079 res!408873) b!632073))

(assert (= (and b!632073 res!408874) b!632078))

(assert (= (and b!632078 res!408871) b!632083))

(assert (= (and b!632083 res!408872) b!632074))

(assert (= (and b!632074 res!408878) b!632087))

(assert (= (and b!632074 c!71969) b!632082))

(assert (= (and b!632074 (not c!71969)) b!632080))

(assert (= (and b!632074 (not res!408877)) b!632075))

(declare-fun m!606969 () Bool)

(assert (=> b!632085 m!606969))

(declare-fun m!606971 () Bool)

(assert (=> b!632075 m!606971))

(declare-fun m!606973 () Bool)

(assert (=> b!632075 m!606973))

(declare-fun m!606975 () Bool)

(assert (=> b!632075 m!606975))

(assert (=> b!632078 m!606971))

(declare-fun m!606977 () Bool)

(assert (=> b!632078 m!606977))

(declare-fun m!606979 () Bool)

(assert (=> b!632086 m!606979))

(assert (=> b!632084 m!606975))

(assert (=> b!632084 m!606975))

(declare-fun m!606981 () Bool)

(assert (=> b!632084 m!606981))

(declare-fun m!606983 () Bool)

(assert (=> b!632083 m!606983))

(assert (=> b!632083 m!606975))

(assert (=> b!632083 m!606975))

(declare-fun m!606985 () Bool)

(assert (=> b!632083 m!606985))

(declare-fun m!606987 () Bool)

(assert (=> b!632079 m!606987))

(declare-fun m!606989 () Bool)

(assert (=> b!632073 m!606989))

(declare-fun m!606991 () Bool)

(assert (=> b!632076 m!606991))

(declare-fun m!606993 () Bool)

(assert (=> start!57120 m!606993))

(declare-fun m!606995 () Bool)

(assert (=> start!57120 m!606995))

(declare-fun m!606997 () Bool)

(assert (=> b!632074 m!606997))

(declare-fun m!606999 () Bool)

(assert (=> b!632074 m!606999))

(assert (=> b!632074 m!606975))

(declare-fun m!607001 () Bool)

(assert (=> b!632074 m!607001))

(declare-fun m!607003 () Bool)

(assert (=> b!632074 m!607003))

(assert (=> b!632074 m!606975))

(assert (=> b!632074 m!606971))

(declare-fun m!607005 () Bool)

(assert (=> b!632074 m!607005))

(declare-fun m!607007 () Bool)

(assert (=> b!632074 m!607007))

(declare-fun m!607009 () Bool)

(assert (=> b!632081 m!607009))

(push 1)

