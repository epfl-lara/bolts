; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54654 () Bool)

(assert start!54654)

(declare-fun b!597172 () Bool)

(declare-fun e!341245 () Bool)

(declare-fun e!341248 () Bool)

(assert (=> b!597172 (= e!341245 (not e!341248))))

(declare-fun res!382872 () Bool)

(assert (=> b!597172 (=> res!382872 e!341248)))

(declare-datatypes ((SeekEntryResult!6210 0))(
  ( (MissingZero!6210 (index!27090 (_ BitVec 32))) (Found!6210 (index!27091 (_ BitVec 32))) (Intermediate!6210 (undefined!7022 Bool) (index!27092 (_ BitVec 32)) (x!55920 (_ BitVec 32))) (Undefined!6210) (MissingVacant!6210 (index!27093 (_ BitVec 32))) )
))
(declare-fun lt!271341 () SeekEntryResult!6210)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!597172 (= res!382872 (not (= lt!271341 (Found!6210 index!984))))))

(declare-datatypes ((Unit!18784 0))(
  ( (Unit!18785) )
))
(declare-fun lt!271342 () Unit!18784)

(declare-fun e!341253 () Unit!18784)

(assert (=> b!597172 (= lt!271342 e!341253)))

(declare-fun c!67517 () Bool)

(assert (=> b!597172 (= c!67517 (= lt!271341 Undefined!6210))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!271349 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37008 0))(
  ( (array!37009 (arr!17763 (Array (_ BitVec 32) (_ BitVec 64))) (size!18127 (_ BitVec 32))) )
))
(declare-fun lt!271340 () array!37008)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37008 (_ BitVec 32)) SeekEntryResult!6210)

(assert (=> b!597172 (= lt!271341 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271349 lt!271340 mask!3053))))

(declare-fun e!341243 () Bool)

(assert (=> b!597172 e!341243))

(declare-fun res!382889 () Bool)

(assert (=> b!597172 (=> (not res!382889) (not e!341243))))

(declare-fun lt!271344 () (_ BitVec 32))

(declare-fun lt!271343 () SeekEntryResult!6210)

(assert (=> b!597172 (= res!382889 (= lt!271343 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271344 vacantSpotIndex!68 lt!271349 lt!271340 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37008)

(assert (=> b!597172 (= lt!271343 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271344 vacantSpotIndex!68 (select (arr!17763 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!597172 (= lt!271349 (select (store (arr!17763 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!271350 () Unit!18784)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37008 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18784)

(assert (=> b!597172 (= lt!271350 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271344 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!597172 (= lt!271344 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!597173 () Bool)

(declare-fun res!382873 () Bool)

(declare-fun e!341249 () Bool)

(assert (=> b!597173 (=> (not res!382873) (not e!341249))))

(declare-datatypes ((List!11857 0))(
  ( (Nil!11854) (Cons!11853 (h!12898 (_ BitVec 64)) (t!18093 List!11857)) )
))
(declare-fun arrayNoDuplicates!0 (array!37008 (_ BitVec 32) List!11857) Bool)

(assert (=> b!597173 (= res!382873 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11854))))

(declare-fun b!597174 () Bool)

(declare-fun e!341247 () Bool)

(assert (=> b!597174 (= e!341249 e!341247)))

(declare-fun res!382881 () Bool)

(assert (=> b!597174 (=> (not res!382881) (not e!341247))))

(assert (=> b!597174 (= res!382881 (= (select (store (arr!17763 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!597174 (= lt!271340 (array!37009 (store (arr!17763 a!2986) i!1108 k!1786) (size!18127 a!2986)))))

(declare-fun b!597175 () Bool)

(declare-fun res!382877 () Bool)

(declare-fun e!341242 () Bool)

(assert (=> b!597175 (=> (not res!382877) (not e!341242))))

(declare-fun arrayContainsKey!0 (array!37008 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!597175 (= res!382877 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!597176 () Bool)

(declare-fun e!341252 () Bool)

(declare-fun e!341250 () Bool)

(assert (=> b!597176 (= e!341252 e!341250)))

(declare-fun res!382874 () Bool)

(assert (=> b!597176 (=> res!382874 e!341250)))

(declare-fun lt!271348 () (_ BitVec 64))

(assert (=> b!597176 (= res!382874 (or (not (= (select (arr!17763 a!2986) j!136) lt!271349)) (not (= (select (arr!17763 a!2986) j!136) lt!271348)) (bvsge j!136 index!984)))))

(declare-fun b!597178 () Bool)

(declare-fun e!341246 () Bool)

(declare-fun e!341251 () Bool)

(assert (=> b!597178 (= e!341246 e!341251)))

(declare-fun res!382883 () Bool)

(assert (=> b!597178 (=> res!382883 e!341251)))

(assert (=> b!597178 (= res!382883 (or (bvsgt #b00000000000000000000000000000000 (size!18127 a!2986)) (bvsge (size!18127 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!597178 (arrayNoDuplicates!0 lt!271340 #b00000000000000000000000000000000 Nil!11854)))

(declare-fun lt!271347 () Unit!18784)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37008 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11857) Unit!18784)

(assert (=> b!597178 (= lt!271347 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11854))))

(assert (=> b!597178 (arrayContainsKey!0 lt!271340 (select (arr!17763 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271339 () Unit!18784)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37008 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18784)

(assert (=> b!597178 (= lt!271339 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271340 (select (arr!17763 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!597179 () Bool)

(declare-fun Unit!18786 () Unit!18784)

(assert (=> b!597179 (= e!341253 Unit!18786)))

(declare-fun b!597180 () Bool)

(declare-fun res!382882 () Bool)

(assert (=> b!597180 (=> (not res!382882) (not e!341242))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!597180 (= res!382882 (validKeyInArray!0 k!1786))))

(declare-fun b!597181 () Bool)

(assert (=> b!597181 (= e!341248 e!341246)))

(declare-fun res!382884 () Bool)

(assert (=> b!597181 (=> res!382884 e!341246)))

(assert (=> b!597181 (= res!382884 (or (not (= (select (arr!17763 a!2986) j!136) lt!271349)) (not (= (select (arr!17763 a!2986) j!136) lt!271348)) (bvsge j!136 index!984)))))

(assert (=> b!597181 e!341252))

(declare-fun res!382880 () Bool)

(assert (=> b!597181 (=> (not res!382880) (not e!341252))))

(assert (=> b!597181 (= res!382880 (= lt!271348 (select (arr!17763 a!2986) j!136)))))

(assert (=> b!597181 (= lt!271348 (select (store (arr!17763 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!597182 () Bool)

(assert (=> b!597182 (= e!341247 e!341245)))

(declare-fun res!382878 () Bool)

(assert (=> b!597182 (=> (not res!382878) (not e!341245))))

(declare-fun lt!271346 () SeekEntryResult!6210)

(assert (=> b!597182 (= res!382878 (and (= lt!271346 (Found!6210 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17763 a!2986) index!984) (select (arr!17763 a!2986) j!136))) (not (= (select (arr!17763 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!597182 (= lt!271346 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17763 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!597183 () Bool)

(declare-fun res!382888 () Bool)

(assert (=> b!597183 (=> (not res!382888) (not e!341249))))

(assert (=> b!597183 (= res!382888 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17763 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!597184 () Bool)

(declare-fun Unit!18787 () Unit!18784)

(assert (=> b!597184 (= e!341253 Unit!18787)))

(assert (=> b!597184 false))

(declare-fun b!597185 () Bool)

(assert (=> b!597185 (= e!341242 e!341249)))

(declare-fun res!382887 () Bool)

(assert (=> b!597185 (=> (not res!382887) (not e!341249))))

(declare-fun lt!271345 () SeekEntryResult!6210)

(assert (=> b!597185 (= res!382887 (or (= lt!271345 (MissingZero!6210 i!1108)) (= lt!271345 (MissingVacant!6210 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37008 (_ BitVec 32)) SeekEntryResult!6210)

(assert (=> b!597185 (= lt!271345 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!597177 () Bool)

(declare-fun res!382885 () Bool)

(assert (=> b!597177 (=> (not res!382885) (not e!341249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37008 (_ BitVec 32)) Bool)

(assert (=> b!597177 (= res!382885 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!382875 () Bool)

(assert (=> start!54654 (=> (not res!382875) (not e!341242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54654 (= res!382875 (validMask!0 mask!3053))))

(assert (=> start!54654 e!341242))

(assert (=> start!54654 true))

(declare-fun array_inv!13537 (array!37008) Bool)

(assert (=> start!54654 (array_inv!13537 a!2986)))

(declare-fun b!597186 () Bool)

(assert (=> b!597186 (= e!341243 (= lt!271346 lt!271343))))

(declare-fun b!597187 () Bool)

(declare-fun res!382876 () Bool)

(assert (=> b!597187 (=> (not res!382876) (not e!341242))))

(assert (=> b!597187 (= res!382876 (and (= (size!18127 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18127 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18127 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!597188 () Bool)

(declare-fun e!341244 () Bool)

(assert (=> b!597188 (= e!341250 e!341244)))

(declare-fun res!382886 () Bool)

(assert (=> b!597188 (=> (not res!382886) (not e!341244))))

(assert (=> b!597188 (= res!382886 (arrayContainsKey!0 lt!271340 (select (arr!17763 a!2986) j!136) j!136))))

(declare-fun b!597189 () Bool)

(declare-fun res!382879 () Bool)

(assert (=> b!597189 (=> (not res!382879) (not e!341242))))

(assert (=> b!597189 (= res!382879 (validKeyInArray!0 (select (arr!17763 a!2986) j!136)))))

(declare-fun b!597190 () Bool)

(assert (=> b!597190 (= e!341244 (arrayContainsKey!0 lt!271340 (select (arr!17763 a!2986) j!136) index!984))))

(declare-fun b!597191 () Bool)

(declare-fun noDuplicate!271 (List!11857) Bool)

(assert (=> b!597191 (= e!341251 (noDuplicate!271 Nil!11854))))

(assert (= (and start!54654 res!382875) b!597187))

(assert (= (and b!597187 res!382876) b!597189))

(assert (= (and b!597189 res!382879) b!597180))

(assert (= (and b!597180 res!382882) b!597175))

(assert (= (and b!597175 res!382877) b!597185))

(assert (= (and b!597185 res!382887) b!597177))

(assert (= (and b!597177 res!382885) b!597173))

(assert (= (and b!597173 res!382873) b!597183))

(assert (= (and b!597183 res!382888) b!597174))

(assert (= (and b!597174 res!382881) b!597182))

(assert (= (and b!597182 res!382878) b!597172))

(assert (= (and b!597172 res!382889) b!597186))

(assert (= (and b!597172 c!67517) b!597184))

(assert (= (and b!597172 (not c!67517)) b!597179))

(assert (= (and b!597172 (not res!382872)) b!597181))

(assert (= (and b!597181 res!382880) b!597176))

(assert (= (and b!597176 (not res!382874)) b!597188))

(assert (= (and b!597188 res!382886) b!597190))

(assert (= (and b!597181 (not res!382884)) b!597178))

(assert (= (and b!597178 (not res!382883)) b!597191))

(declare-fun m!574623 () Bool)

(assert (=> b!597185 m!574623))

(declare-fun m!574625 () Bool)

(assert (=> b!597173 m!574625))

(declare-fun m!574627 () Bool)

(assert (=> b!597181 m!574627))

(declare-fun m!574629 () Bool)

(assert (=> b!597181 m!574629))

(declare-fun m!574631 () Bool)

(assert (=> b!597181 m!574631))

(assert (=> b!597176 m!574627))

(declare-fun m!574633 () Bool)

(assert (=> b!597180 m!574633))

(declare-fun m!574635 () Bool)

(assert (=> b!597183 m!574635))

(assert (=> b!597188 m!574627))

(assert (=> b!597188 m!574627))

(declare-fun m!574637 () Bool)

(assert (=> b!597188 m!574637))

(assert (=> b!597178 m!574627))

(assert (=> b!597178 m!574627))

(declare-fun m!574639 () Bool)

(assert (=> b!597178 m!574639))

(declare-fun m!574641 () Bool)

(assert (=> b!597178 m!574641))

(assert (=> b!597178 m!574627))

(declare-fun m!574643 () Bool)

(assert (=> b!597178 m!574643))

(declare-fun m!574645 () Bool)

(assert (=> b!597178 m!574645))

(declare-fun m!574647 () Bool)

(assert (=> b!597191 m!574647))

(assert (=> b!597174 m!574629))

(declare-fun m!574649 () Bool)

(assert (=> b!597174 m!574649))

(declare-fun m!574651 () Bool)

(assert (=> b!597172 m!574651))

(declare-fun m!574653 () Bool)

(assert (=> b!597172 m!574653))

(assert (=> b!597172 m!574627))

(assert (=> b!597172 m!574629))

(assert (=> b!597172 m!574627))

(declare-fun m!574655 () Bool)

(assert (=> b!597172 m!574655))

(declare-fun m!574657 () Bool)

(assert (=> b!597172 m!574657))

(declare-fun m!574659 () Bool)

(assert (=> b!597172 m!574659))

(declare-fun m!574661 () Bool)

(assert (=> b!597172 m!574661))

(declare-fun m!574663 () Bool)

(assert (=> b!597177 m!574663))

(declare-fun m!574665 () Bool)

(assert (=> start!54654 m!574665))

(declare-fun m!574667 () Bool)

(assert (=> start!54654 m!574667))

(assert (=> b!597190 m!574627))

(assert (=> b!597190 m!574627))

(declare-fun m!574669 () Bool)

(assert (=> b!597190 m!574669))

(declare-fun m!574671 () Bool)

(assert (=> b!597175 m!574671))

(declare-fun m!574673 () Bool)

(assert (=> b!597182 m!574673))

(assert (=> b!597182 m!574627))

(assert (=> b!597182 m!574627))

(declare-fun m!574675 () Bool)

(assert (=> b!597182 m!574675))

(assert (=> b!597189 m!574627))

(assert (=> b!597189 m!574627))

(declare-fun m!574677 () Bool)

(assert (=> b!597189 m!574677))

(push 1)

(assert (not b!597182))

(assert (not b!597178))

(assert (not b!597188))

(assert (not b!597177))

(assert (not b!597173))

(assert (not b!597180))

(assert (not b!597172))

(assert (not b!597175))

(assert (not b!597189))

(assert (not start!54654))

(assert (not b!597190))

(assert (not b!597185))

(assert (not b!597191))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!86711 () Bool)

(declare-fun e!341382 () Bool)

(assert (=> d!86711 e!341382))

(declare-fun res!383024 () Bool)

(assert (=> d!86711 (=> (not res!383024) (not e!341382))))

(assert (=> d!86711 (= res!383024 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18127 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18127 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18127 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18127 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18127 a!2986))))))

(declare-fun lt!271449 () Unit!18784)

(declare-fun choose!9 (array!37008 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18784)

(assert (=> d!86711 (= lt!271449 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271344 vacantSpotIndex!68 mask!3053))))

(assert (=> d!86711 (validMask!0 mask!3053)))

(assert (=> d!86711 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271344 vacantSpotIndex!68 mask!3053) lt!271449)))

(declare-fun b!597384 () Bool)

(assert (=> b!597384 (= e!341382 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271344 vacantSpotIndex!68 (select (arr!17763 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271344 vacantSpotIndex!68 (select (store (arr!17763 a!2986) i!1108 k!1786) j!136) (array!37009 (store (arr!17763 a!2986) i!1108 k!1786) (size!18127 a!2986)) mask!3053)))))

(assert (= (and d!86711 res!383024) b!597384))

(declare-fun m!574831 () Bool)

(assert (=> d!86711 m!574831))

(assert (=> d!86711 m!574665))

(assert (=> b!597384 m!574627))

(assert (=> b!597384 m!574627))

(assert (=> b!597384 m!574655))

(assert (=> b!597384 m!574653))

(assert (=> b!597384 m!574629))

(assert (=> b!597384 m!574653))

(declare-fun m!574833 () Bool)

(assert (=> b!597384 m!574833))

(assert (=> b!597172 d!86711))

(declare-fun b!597445 () Bool)

(declare-fun e!341430 () SeekEntryResult!6210)

(declare-fun e!341429 () SeekEntryResult!6210)

(assert (=> b!597445 (= e!341430 e!341429)))

(declare-fun c!67562 () Bool)

(declare-fun lt!271466 () (_ BitVec 64))

(assert (=> b!597445 (= c!67562 (= lt!271466 (select (arr!17763 a!2986) j!136)))))

(declare-fun d!86723 () Bool)

(declare-fun lt!271467 () SeekEntryResult!6210)

(assert (=> d!86723 (and (or (is-Undefined!6210 lt!271467) (not (is-Found!6210 lt!271467)) (and (bvsge (index!27091 lt!271467) #b00000000000000000000000000000000) (bvslt (index!27091 lt!271467) (size!18127 a!2986)))) (or (is-Undefined!6210 lt!271467) (is-Found!6210 lt!271467) (not (is-MissingVacant!6210 lt!271467)) (not (= (index!27093 lt!271467) vacantSpotIndex!68)) (and (bvsge (index!27093 lt!271467) #b00000000000000000000000000000000) (bvslt (index!27093 lt!271467) (size!18127 a!2986)))) (or (is-Undefined!6210 lt!271467) (ite (is-Found!6210 lt!271467) (= (select (arr!17763 a!2986) (index!27091 lt!271467)) (select (arr!17763 a!2986) j!136)) (and (is-MissingVacant!6210 lt!271467) (= (index!27093 lt!271467) vacantSpotIndex!68) (= (select (arr!17763 a!2986) (index!27093 lt!271467)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86723 (= lt!271467 e!341430)))

(declare-fun c!67561 () Bool)

(assert (=> d!86723 (= c!67561 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86723 (= lt!271466 (select (arr!17763 a!2986) lt!271344))))

(assert (=> d!86723 (validMask!0 mask!3053)))

(assert (=> d!86723 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271344 vacantSpotIndex!68 (select (arr!17763 a!2986) j!136) a!2986 mask!3053) lt!271467)))

(declare-fun b!597446 () Bool)

(assert (=> b!597446 (= e!341430 Undefined!6210)))

(declare-fun b!597447 () Bool)

(assert (=> b!597447 (= e!341429 (Found!6210 lt!271344))))

(declare-fun b!597448 () Bool)

(declare-fun e!341431 () SeekEntryResult!6210)

(assert (=> b!597448 (= e!341431 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!271344 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17763 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!597449 () Bool)

(declare-fun c!67563 () Bool)

(assert (=> b!597449 (= c!67563 (= lt!271466 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!597449 (= e!341429 e!341431)))

(declare-fun b!597450 () Bool)

(assert (=> b!597450 (= e!341431 (MissingVacant!6210 vacantSpotIndex!68))))

(assert (= (and d!86723 c!67561) b!597446))

(assert (= (and d!86723 (not c!67561)) b!597445))

(assert (= (and b!597445 c!67562) b!597447))

(assert (= (and b!597445 (not c!67562)) b!597449))

(assert (= (and b!597449 c!67563) b!597450))

(assert (= (and b!597449 (not c!67563)) b!597448))

(declare-fun m!574875 () Bool)

(assert (=> d!86723 m!574875))

(declare-fun m!574877 () Bool)

(assert (=> d!86723 m!574877))

(declare-fun m!574879 () Bool)

(assert (=> d!86723 m!574879))

(assert (=> d!86723 m!574665))

(declare-fun m!574881 () Bool)

(assert (=> b!597448 m!574881))

(assert (=> b!597448 m!574881))

(assert (=> b!597448 m!574627))

(declare-fun m!574883 () Bool)

(assert (=> b!597448 m!574883))

(assert (=> b!597172 d!86723))

(declare-fun b!597451 () Bool)

(declare-fun e!341433 () SeekEntryResult!6210)

(declare-fun e!341432 () SeekEntryResult!6210)

(assert (=> b!597451 (= e!341433 e!341432)))

(declare-fun c!67565 () Bool)

(declare-fun lt!271468 () (_ BitVec 64))

(assert (=> b!597451 (= c!67565 (= lt!271468 lt!271349))))

(declare-fun lt!271469 () SeekEntryResult!6210)

(declare-fun d!86741 () Bool)

(assert (=> d!86741 (and (or (is-Undefined!6210 lt!271469) (not (is-Found!6210 lt!271469)) (and (bvsge (index!27091 lt!271469) #b00000000000000000000000000000000) (bvslt (index!27091 lt!271469) (size!18127 lt!271340)))) (or (is-Undefined!6210 lt!271469) (is-Found!6210 lt!271469) (not (is-MissingVacant!6210 lt!271469)) (not (= (index!27093 lt!271469) vacantSpotIndex!68)) (and (bvsge (index!27093 lt!271469) #b00000000000000000000000000000000) (bvslt (index!27093 lt!271469) (size!18127 lt!271340)))) (or (is-Undefined!6210 lt!271469) (ite (is-Found!6210 lt!271469) (= (select (arr!17763 lt!271340) (index!27091 lt!271469)) lt!271349) (and (is-MissingVacant!6210 lt!271469) (= (index!27093 lt!271469) vacantSpotIndex!68) (= (select (arr!17763 lt!271340) (index!27093 lt!271469)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86741 (= lt!271469 e!341433)))

(declare-fun c!67564 () Bool)

(assert (=> d!86741 (= c!67564 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86741 (= lt!271468 (select (arr!17763 lt!271340) index!984))))

(assert (=> d!86741 (validMask!0 mask!3053)))

(assert (=> d!86741 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271349 lt!271340 mask!3053) lt!271469)))

(declare-fun b!597452 () Bool)

(assert (=> b!597452 (= e!341433 Undefined!6210)))

(declare-fun b!597453 () Bool)

(assert (=> b!597453 (= e!341432 (Found!6210 index!984))))

(declare-fun b!597454 () Bool)

(declare-fun e!341434 () SeekEntryResult!6210)

(assert (=> b!597454 (= e!341434 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!271349 lt!271340 mask!3053))))

(declare-fun b!597455 () Bool)

(declare-fun c!67566 () Bool)

(assert (=> b!597455 (= c!67566 (= lt!271468 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!597455 (= e!341432 e!341434)))

(declare-fun b!597456 () Bool)

(assert (=> b!597456 (= e!341434 (MissingVacant!6210 vacantSpotIndex!68))))

(assert (= (and d!86741 c!67564) b!597452))

(assert (= (and d!86741 (not c!67564)) b!597451))

(assert (= (and b!597451 c!67565) b!597453))

(assert (= (and b!597451 (not c!67565)) b!597455))

(assert (= (and b!597455 c!67566) b!597456))

(assert (= (and b!597455 (not c!67566)) b!597454))

(declare-fun m!574885 () Bool)

(assert (=> d!86741 m!574885))

(declare-fun m!574887 () Bool)

(assert (=> d!86741 m!574887))

(declare-fun m!574889 () Bool)

(assert (=> d!86741 m!574889))

(assert (=> d!86741 m!574665))

(assert (=> b!597454 m!574651))

(assert (=> b!597454 m!574651))

(declare-fun m!574891 () Bool)

(assert (=> b!597454 m!574891))

(assert (=> b!597172 d!86741))

(declare-fun d!86743 () Bool)

(declare-fun lt!271479 () (_ BitVec 32))

(assert (=> d!86743 (and (bvsge lt!271479 #b00000000000000000000000000000000) (bvslt lt!271479 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86743 (= lt!271479 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!86743 (validMask!0 mask!3053)))

(assert (=> d!86743 (= (nextIndex!0 index!984 x!910 mask!3053) lt!271479)))

(declare-fun bs!18369 () Bool)

(assert (= bs!18369 d!86743))

(declare-fun m!574911 () Bool)

(assert (=> bs!18369 m!574911))

(assert (=> bs!18369 m!574665))

(assert (=> b!597172 d!86743))

(declare-fun b!597475 () Bool)

(declare-fun e!341445 () SeekEntryResult!6210)

(declare-fun e!341444 () SeekEntryResult!6210)

(assert (=> b!597475 (= e!341445 e!341444)))

(declare-fun c!67577 () Bool)

(declare-fun lt!271482 () (_ BitVec 64))

(assert (=> b!597475 (= c!67577 (= lt!271482 lt!271349))))

(declare-fun lt!271483 () SeekEntryResult!6210)

(declare-fun d!86751 () Bool)

(assert (=> d!86751 (and (or (is-Undefined!6210 lt!271483) (not (is-Found!6210 lt!271483)) (and (bvsge (index!27091 lt!271483) #b00000000000000000000000000000000) (bvslt (index!27091 lt!271483) (size!18127 lt!271340)))) (or (is-Undefined!6210 lt!271483) (is-Found!6210 lt!271483) (not (is-MissingVacant!6210 lt!271483)) (not (= (index!27093 lt!271483) vacantSpotIndex!68)) (and (bvsge (index!27093 lt!271483) #b00000000000000000000000000000000) (bvslt (index!27093 lt!271483) (size!18127 lt!271340)))) (or (is-Undefined!6210 lt!271483) (ite (is-Found!6210 lt!271483) (= (select (arr!17763 lt!271340) (index!27091 lt!271483)) lt!271349) (and (is-MissingVacant!6210 lt!271483) (= (index!27093 lt!271483) vacantSpotIndex!68) (= (select (arr!17763 lt!271340) (index!27093 lt!271483)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86751 (= lt!271483 e!341445)))

(declare-fun c!67576 () Bool)

(assert (=> d!86751 (= c!67576 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86751 (= lt!271482 (select (arr!17763 lt!271340) lt!271344))))

(assert (=> d!86751 (validMask!0 mask!3053)))

(assert (=> d!86751 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271344 vacantSpotIndex!68 lt!271349 lt!271340 mask!3053) lt!271483)))

(declare-fun b!597476 () Bool)

(assert (=> b!597476 (= e!341445 Undefined!6210)))

(declare-fun b!597477 () Bool)

(assert (=> b!597477 (= e!341444 (Found!6210 lt!271344))))

(declare-fun b!597478 () Bool)

(declare-fun e!341446 () SeekEntryResult!6210)

(assert (=> b!597478 (= e!341446 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!271344 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!271349 lt!271340 mask!3053))))

(declare-fun b!597479 () Bool)

(declare-fun c!67578 () Bool)

(assert (=> b!597479 (= c!67578 (= lt!271482 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!597479 (= e!341444 e!341446)))

(declare-fun b!597480 () Bool)

(assert (=> b!597480 (= e!341446 (MissingVacant!6210 vacantSpotIndex!68))))

(assert (= (and d!86751 c!67576) b!597476))

(assert (= (and d!86751 (not c!67576)) b!597475))

(assert (= (and b!597475 c!67577) b!597477))

(assert (= (and b!597475 (not c!67577)) b!597479))

(assert (= (and b!597479 c!67578) b!597480))

(assert (= (and b!597479 (not c!67578)) b!597478))

(declare-fun m!574913 () Bool)

(assert (=> d!86751 m!574913))

(declare-fun m!574915 () Bool)

(assert (=> d!86751 m!574915))

(declare-fun m!574919 () Bool)

(assert (=> d!86751 m!574919))

(assert (=> d!86751 m!574665))

(assert (=> b!597478 m!574881))

(assert (=> b!597478 m!574881))

(declare-fun m!574927 () Bool)

(assert (=> b!597478 m!574927))

(assert (=> b!597172 d!86751))

(declare-fun b!597481 () Bool)

(declare-fun e!341448 () SeekEntryResult!6210)

(declare-fun e!341447 () SeekEntryResult!6210)

(assert (=> b!597481 (= e!341448 e!341447)))

(declare-fun c!67580 () Bool)

(declare-fun lt!271484 () (_ BitVec 64))

(assert (=> b!597481 (= c!67580 (= lt!271484 (select (arr!17763 a!2986) j!136)))))

(declare-fun lt!271485 () SeekEntryResult!6210)

(declare-fun d!86755 () Bool)

(assert (=> d!86755 (and (or (is-Undefined!6210 lt!271485) (not (is-Found!6210 lt!271485)) (and (bvsge (index!27091 lt!271485) #b00000000000000000000000000000000) (bvslt (index!27091 lt!271485) (size!18127 a!2986)))) (or (is-Undefined!6210 lt!271485) (is-Found!6210 lt!271485) (not (is-MissingVacant!6210 lt!271485)) (not (= (index!27093 lt!271485) vacantSpotIndex!68)) (and (bvsge (index!27093 lt!271485) #b00000000000000000000000000000000) (bvslt (index!27093 lt!271485) (size!18127 a!2986)))) (or (is-Undefined!6210 lt!271485) (ite (is-Found!6210 lt!271485) (= (select (arr!17763 a!2986) (index!27091 lt!271485)) (select (arr!17763 a!2986) j!136)) (and (is-MissingVacant!6210 lt!271485) (= (index!27093 lt!271485) vacantSpotIndex!68) (= (select (arr!17763 a!2986) (index!27093 lt!271485)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86755 (= lt!271485 e!341448)))

(declare-fun c!67579 () Bool)

(assert (=> d!86755 (= c!67579 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86755 (= lt!271484 (select (arr!17763 a!2986) index!984))))

(assert (=> d!86755 (validMask!0 mask!3053)))

(assert (=> d!86755 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17763 a!2986) j!136) a!2986 mask!3053) lt!271485)))

(declare-fun b!597482 () Bool)

(assert (=> b!597482 (= e!341448 Undefined!6210)))

(declare-fun b!597483 () Bool)

(assert (=> b!597483 (= e!341447 (Found!6210 index!984))))

(declare-fun e!341449 () SeekEntryResult!6210)

(declare-fun b!597484 () Bool)

(assert (=> b!597484 (= e!341449 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17763 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!597485 () Bool)

(declare-fun c!67581 () Bool)

(assert (=> b!597485 (= c!67581 (= lt!271484 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!597485 (= e!341447 e!341449)))

(declare-fun b!597486 () Bool)

(assert (=> b!597486 (= e!341449 (MissingVacant!6210 vacantSpotIndex!68))))

(assert (= (and d!86755 c!67579) b!597482))

(assert (= (and d!86755 (not c!67579)) b!597481))

