; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54854 () Bool)

(assert start!54854)

(declare-fun b!598973 () Bool)

(declare-datatypes ((Unit!18860 0))(
  ( (Unit!18861) )
))
(declare-fun e!342438 () Unit!18860)

(declare-fun Unit!18862 () Unit!18860)

(assert (=> b!598973 (= e!342438 Unit!18862)))

(assert (=> b!598973 false))

(declare-fun b!598974 () Bool)

(declare-fun e!342437 () Bool)

(declare-fun e!342434 () Bool)

(assert (=> b!598974 (= e!342437 e!342434)))

(declare-fun res!384151 () Bool)

(assert (=> b!598974 (=> res!384151 e!342434)))

(declare-fun lt!272290 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!272293 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37052 0))(
  ( (array!37053 (arr!17782 (Array (_ BitVec 32) (_ BitVec 64))) (size!18146 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37052)

(assert (=> b!598974 (= res!384151 (or (not (= (select (arr!17782 a!2986) j!136) lt!272290)) (not (= (select (arr!17782 a!2986) j!136) lt!272293)) (bvsge j!136 index!984)))))

(declare-fun b!598975 () Bool)

(declare-fun e!342432 () Bool)

(declare-datatypes ((SeekEntryResult!6229 0))(
  ( (MissingZero!6229 (index!27172 (_ BitVec 32))) (Found!6229 (index!27173 (_ BitVec 32))) (Intermediate!6229 (undefined!7041 Bool) (index!27174 (_ BitVec 32)) (x!56005 (_ BitVec 32))) (Undefined!6229) (MissingVacant!6229 (index!27175 (_ BitVec 32))) )
))
(declare-fun lt!272287 () SeekEntryResult!6229)

(declare-fun lt!272292 () SeekEntryResult!6229)

(assert (=> b!598975 (= e!342432 (= lt!272287 lt!272292))))

(declare-fun b!598976 () Bool)

(declare-fun res!384166 () Bool)

(declare-fun e!342431 () Bool)

(assert (=> b!598976 (=> (not res!384166) (not e!342431))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!598976 (= res!384166 (and (= (size!18146 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18146 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18146 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!598977 () Bool)

(declare-fun res!384156 () Bool)

(declare-fun e!342441 () Bool)

(assert (=> b!598977 (=> (not res!384156) (not e!342441))))

(declare-datatypes ((List!11876 0))(
  ( (Nil!11873) (Cons!11872 (h!12917 (_ BitVec 64)) (t!18112 List!11876)) )
))
(declare-fun arrayNoDuplicates!0 (array!37052 (_ BitVec 32) List!11876) Bool)

(assert (=> b!598977 (= res!384156 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11873))))

(declare-fun b!598978 () Bool)

(declare-fun res!384157 () Bool)

(assert (=> b!598978 (=> (not res!384157) (not e!342441))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!598978 (= res!384157 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17782 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!384160 () Bool)

(assert (=> start!54854 (=> (not res!384160) (not e!342431))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54854 (= res!384160 (validMask!0 mask!3053))))

(assert (=> start!54854 e!342431))

(assert (=> start!54854 true))

(declare-fun array_inv!13556 (array!37052) Bool)

(assert (=> start!54854 (array_inv!13556 a!2986)))

(declare-fun b!598979 () Bool)

(declare-fun res!384165 () Bool)

(assert (=> b!598979 (=> (not res!384165) (not e!342441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37052 (_ BitVec 32)) Bool)

(assert (=> b!598979 (= res!384165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!598980 () Bool)

(assert (=> b!598980 (= e!342431 e!342441)))

(declare-fun res!384158 () Bool)

(assert (=> b!598980 (=> (not res!384158) (not e!342441))))

(declare-fun lt!272295 () SeekEntryResult!6229)

(assert (=> b!598980 (= res!384158 (or (= lt!272295 (MissingZero!6229 i!1108)) (= lt!272295 (MissingVacant!6229 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37052 (_ BitVec 32)) SeekEntryResult!6229)

(assert (=> b!598980 (= lt!272295 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!598981 () Bool)

(declare-fun Unit!18863 () Unit!18860)

(assert (=> b!598981 (= e!342438 Unit!18863)))

(declare-fun b!598982 () Bool)

(declare-fun res!384153 () Bool)

(assert (=> b!598982 (=> (not res!384153) (not e!342431))))

(declare-fun arrayContainsKey!0 (array!37052 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!598982 (= res!384153 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!598983 () Bool)

(declare-fun res!384162 () Bool)

(assert (=> b!598983 (=> (not res!384162) (not e!342431))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!598983 (= res!384162 (validKeyInArray!0 k0!1786))))

(declare-fun b!598984 () Bool)

(declare-fun e!342439 () Bool)

(assert (=> b!598984 (= e!342439 true)))

(declare-fun lt!272298 () array!37052)

(assert (=> b!598984 (arrayNoDuplicates!0 lt!272298 #b00000000000000000000000000000000 Nil!11873)))

(declare-fun lt!272289 () Unit!18860)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37052 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11876) Unit!18860)

(assert (=> b!598984 (= lt!272289 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11873))))

(assert (=> b!598984 (arrayContainsKey!0 lt!272298 (select (arr!17782 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272288 () Unit!18860)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37052 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18860)

(assert (=> b!598984 (= lt!272288 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272298 (select (arr!17782 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!598985 () Bool)

(declare-fun e!342436 () Bool)

(assert (=> b!598985 (= e!342436 e!342439)))

(declare-fun res!384161 () Bool)

(assert (=> b!598985 (=> res!384161 e!342439)))

(assert (=> b!598985 (= res!384161 (or (not (= (select (arr!17782 a!2986) j!136) lt!272290)) (not (= (select (arr!17782 a!2986) j!136) lt!272293)) (bvsge j!136 index!984)))))

(assert (=> b!598985 e!342437))

(declare-fun res!384167 () Bool)

(assert (=> b!598985 (=> (not res!384167) (not e!342437))))

(assert (=> b!598985 (= res!384167 (= lt!272293 (select (arr!17782 a!2986) j!136)))))

(assert (=> b!598985 (= lt!272293 (select (store (arr!17782 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!598986 () Bool)

(declare-fun e!342440 () Bool)

(assert (=> b!598986 (= e!342434 e!342440)))

(declare-fun res!384155 () Bool)

(assert (=> b!598986 (=> (not res!384155) (not e!342440))))

(assert (=> b!598986 (= res!384155 (arrayContainsKey!0 lt!272298 (select (arr!17782 a!2986) j!136) j!136))))

(declare-fun b!598987 () Bool)

(assert (=> b!598987 (= e!342440 (arrayContainsKey!0 lt!272298 (select (arr!17782 a!2986) j!136) index!984))))

(declare-fun b!598988 () Bool)

(declare-fun res!384159 () Bool)

(assert (=> b!598988 (=> (not res!384159) (not e!342431))))

(assert (=> b!598988 (= res!384159 (validKeyInArray!0 (select (arr!17782 a!2986) j!136)))))

(declare-fun b!598989 () Bool)

(declare-fun e!342435 () Bool)

(assert (=> b!598989 (= e!342441 e!342435)))

(declare-fun res!384152 () Bool)

(assert (=> b!598989 (=> (not res!384152) (not e!342435))))

(assert (=> b!598989 (= res!384152 (= (select (store (arr!17782 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!598989 (= lt!272298 (array!37053 (store (arr!17782 a!2986) i!1108 k0!1786) (size!18146 a!2986)))))

(declare-fun b!598990 () Bool)

(declare-fun e!342433 () Bool)

(assert (=> b!598990 (= e!342433 (not e!342436))))

(declare-fun res!384163 () Bool)

(assert (=> b!598990 (=> res!384163 e!342436)))

(declare-fun lt!272297 () SeekEntryResult!6229)

(assert (=> b!598990 (= res!384163 (not (= lt!272297 (Found!6229 index!984))))))

(declare-fun lt!272294 () Unit!18860)

(assert (=> b!598990 (= lt!272294 e!342438)))

(declare-fun c!67778 () Bool)

(assert (=> b!598990 (= c!67778 (= lt!272297 Undefined!6229))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37052 (_ BitVec 32)) SeekEntryResult!6229)

(assert (=> b!598990 (= lt!272297 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272290 lt!272298 mask!3053))))

(assert (=> b!598990 e!342432))

(declare-fun res!384154 () Bool)

(assert (=> b!598990 (=> (not res!384154) (not e!342432))))

(declare-fun lt!272296 () (_ BitVec 32))

(assert (=> b!598990 (= res!384154 (= lt!272292 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272296 vacantSpotIndex!68 lt!272290 lt!272298 mask!3053)))))

(assert (=> b!598990 (= lt!272292 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272296 vacantSpotIndex!68 (select (arr!17782 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!598990 (= lt!272290 (select (store (arr!17782 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!272291 () Unit!18860)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37052 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18860)

(assert (=> b!598990 (= lt!272291 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272296 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!598990 (= lt!272296 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!598991 () Bool)

(assert (=> b!598991 (= e!342435 e!342433)))

(declare-fun res!384164 () Bool)

(assert (=> b!598991 (=> (not res!384164) (not e!342433))))

(assert (=> b!598991 (= res!384164 (and (= lt!272287 (Found!6229 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17782 a!2986) index!984) (select (arr!17782 a!2986) j!136))) (not (= (select (arr!17782 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!598991 (= lt!272287 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17782 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!54854 res!384160) b!598976))

(assert (= (and b!598976 res!384166) b!598988))

(assert (= (and b!598988 res!384159) b!598983))

(assert (= (and b!598983 res!384162) b!598982))

(assert (= (and b!598982 res!384153) b!598980))

(assert (= (and b!598980 res!384158) b!598979))

(assert (= (and b!598979 res!384165) b!598977))

(assert (= (and b!598977 res!384156) b!598978))

(assert (= (and b!598978 res!384157) b!598989))

(assert (= (and b!598989 res!384152) b!598991))

(assert (= (and b!598991 res!384164) b!598990))

(assert (= (and b!598990 res!384154) b!598975))

(assert (= (and b!598990 c!67778) b!598973))

(assert (= (and b!598990 (not c!67778)) b!598981))

(assert (= (and b!598990 (not res!384163)) b!598985))

(assert (= (and b!598985 res!384167) b!598974))

(assert (= (and b!598974 (not res!384151)) b!598986))

(assert (= (and b!598986 res!384155) b!598987))

(assert (= (and b!598985 (not res!384161)) b!598984))

(declare-fun m!576291 () Bool)

(assert (=> b!598985 m!576291))

(declare-fun m!576293 () Bool)

(assert (=> b!598985 m!576293))

(declare-fun m!576295 () Bool)

(assert (=> b!598985 m!576295))

(assert (=> b!598989 m!576293))

(declare-fun m!576297 () Bool)

(assert (=> b!598989 m!576297))

(declare-fun m!576299 () Bool)

(assert (=> b!598983 m!576299))

(declare-fun m!576301 () Bool)

(assert (=> b!598977 m!576301))

(declare-fun m!576303 () Bool)

(assert (=> b!598979 m!576303))

(declare-fun m!576305 () Bool)

(assert (=> b!598984 m!576305))

(assert (=> b!598984 m!576291))

(assert (=> b!598984 m!576291))

(declare-fun m!576307 () Bool)

(assert (=> b!598984 m!576307))

(assert (=> b!598984 m!576291))

(declare-fun m!576309 () Bool)

(assert (=> b!598984 m!576309))

(declare-fun m!576311 () Bool)

(assert (=> b!598984 m!576311))

(declare-fun m!576313 () Bool)

(assert (=> b!598991 m!576313))

(assert (=> b!598991 m!576291))

(assert (=> b!598991 m!576291))

(declare-fun m!576315 () Bool)

(assert (=> b!598991 m!576315))

(declare-fun m!576317 () Bool)

(assert (=> start!54854 m!576317))

(declare-fun m!576319 () Bool)

(assert (=> start!54854 m!576319))

(assert (=> b!598988 m!576291))

(assert (=> b!598988 m!576291))

(declare-fun m!576321 () Bool)

(assert (=> b!598988 m!576321))

(declare-fun m!576323 () Bool)

(assert (=> b!598978 m!576323))

(declare-fun m!576325 () Bool)

(assert (=> b!598982 m!576325))

(assert (=> b!598986 m!576291))

(assert (=> b!598986 m!576291))

(declare-fun m!576327 () Bool)

(assert (=> b!598986 m!576327))

(assert (=> b!598974 m!576291))

(declare-fun m!576329 () Bool)

(assert (=> b!598980 m!576329))

(declare-fun m!576331 () Bool)

(assert (=> b!598990 m!576331))

(declare-fun m!576333 () Bool)

(assert (=> b!598990 m!576333))

(assert (=> b!598990 m!576291))

(declare-fun m!576335 () Bool)

(assert (=> b!598990 m!576335))

(assert (=> b!598990 m!576291))

(declare-fun m!576337 () Bool)

(assert (=> b!598990 m!576337))

(declare-fun m!576339 () Bool)

(assert (=> b!598990 m!576339))

(declare-fun m!576341 () Bool)

(assert (=> b!598990 m!576341))

(assert (=> b!598990 m!576293))

(assert (=> b!598987 m!576291))

(assert (=> b!598987 m!576291))

(declare-fun m!576343 () Bool)

(assert (=> b!598987 m!576343))

(check-sat (not b!598983) (not b!598991) (not b!598990) (not b!598977) (not b!598980) (not b!598979) (not b!598984) (not b!598982) (not b!598988) (not b!598987) (not start!54854) (not b!598986))
(check-sat)
