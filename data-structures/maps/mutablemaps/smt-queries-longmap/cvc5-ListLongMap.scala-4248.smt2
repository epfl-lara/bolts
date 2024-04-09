; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58890 () Bool)

(assert start!58890)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38508 0))(
  ( (array!38509 (arr!18456 (Array (_ BitVec 32) (_ BitVec 64))) (size!18820 (_ BitVec 32))) )
))
(declare-fun lt!301477 () array!38508)

(declare-fun b!649158 () Bool)

(declare-fun e!372345 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38508)

(declare-fun arrayContainsKey!0 (array!38508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!649158 (= e!372345 (arrayContainsKey!0 lt!301477 (select (arr!18456 a!2986) j!136) index!984))))

(declare-fun b!649159 () Bool)

(declare-datatypes ((Unit!22090 0))(
  ( (Unit!22091) )
))
(declare-fun e!372351 () Unit!22090)

(declare-fun Unit!22092 () Unit!22090)

(assert (=> b!649159 (= e!372351 Unit!22092)))

(declare-fun b!649160 () Bool)

(declare-fun e!372349 () Unit!22090)

(declare-fun Unit!22093 () Unit!22090)

(assert (=> b!649160 (= e!372349 Unit!22093)))

(declare-fun b!649161 () Bool)

(declare-fun res!420847 () Bool)

(declare-fun e!372343 () Bool)

(assert (=> b!649161 (=> (not res!420847) (not e!372343))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!649161 (= res!420847 (validKeyInArray!0 k!1786))))

(declare-fun b!649162 () Bool)

(declare-fun e!372356 () Bool)

(declare-fun e!372355 () Bool)

(assert (=> b!649162 (= e!372356 e!372355)))

(declare-fun res!420858 () Bool)

(assert (=> b!649162 (=> res!420858 e!372355)))

(assert (=> b!649162 (= res!420858 (bvsge index!984 j!136))))

(declare-fun lt!301481 () Unit!22090)

(assert (=> b!649162 (= lt!301481 e!372349)))

(declare-fun c!74527 () Bool)

(assert (=> b!649162 (= c!74527 (bvslt j!136 index!984))))

(declare-fun b!649163 () Bool)

(declare-fun res!420849 () Bool)

(assert (=> b!649163 (=> (not res!420849) (not e!372343))))

(assert (=> b!649163 (= res!420849 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!649164 () Bool)

(declare-fun e!372350 () Bool)

(assert (=> b!649164 (= e!372350 e!372345)))

(declare-fun res!420842 () Bool)

(assert (=> b!649164 (=> (not res!420842) (not e!372345))))

(assert (=> b!649164 (= res!420842 (arrayContainsKey!0 lt!301477 (select (arr!18456 a!2986) j!136) j!136))))

(declare-fun b!649165 () Bool)

(declare-fun e!372346 () Bool)

(assert (=> b!649165 (= e!372346 e!372356)))

(declare-fun res!420857 () Bool)

(assert (=> b!649165 (=> res!420857 e!372356)))

(declare-fun lt!301478 () (_ BitVec 64))

(declare-fun lt!301474 () (_ BitVec 64))

(assert (=> b!649165 (= res!420857 (or (not (= (select (arr!18456 a!2986) j!136) lt!301474)) (not (= (select (arr!18456 a!2986) j!136) lt!301478))))))

(declare-fun e!372358 () Bool)

(assert (=> b!649165 e!372358))

(declare-fun res!420848 () Bool)

(assert (=> b!649165 (=> (not res!420848) (not e!372358))))

(assert (=> b!649165 (= res!420848 (= lt!301478 (select (arr!18456 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!649165 (= lt!301478 (select (store (arr!18456 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!649166 () Bool)

(declare-fun e!372344 () Bool)

(declare-fun e!372357 () Bool)

(assert (=> b!649166 (= e!372344 e!372357)))

(declare-fun res!420860 () Bool)

(assert (=> b!649166 (=> (not res!420860) (not e!372357))))

(declare-datatypes ((SeekEntryResult!6903 0))(
  ( (MissingZero!6903 (index!29958 (_ BitVec 32))) (Found!6903 (index!29959 (_ BitVec 32))) (Intermediate!6903 (undefined!7715 Bool) (index!29960 (_ BitVec 32)) (x!58773 (_ BitVec 32))) (Undefined!6903) (MissingVacant!6903 (index!29961 (_ BitVec 32))) )
))
(declare-fun lt!301475 () SeekEntryResult!6903)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!649166 (= res!420860 (and (= lt!301475 (Found!6903 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18456 a!2986) index!984) (select (arr!18456 a!2986) j!136))) (not (= (select (arr!18456 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38508 (_ BitVec 32)) SeekEntryResult!6903)

(assert (=> b!649166 (= lt!301475 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18456 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!649167 () Bool)

(declare-fun Unit!22094 () Unit!22090)

(assert (=> b!649167 (= e!372351 Unit!22094)))

(assert (=> b!649167 false))

(declare-fun b!649168 () Bool)

(declare-fun Unit!22095 () Unit!22090)

(assert (=> b!649168 (= e!372349 Unit!22095)))

(declare-fun lt!301479 () Unit!22090)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38508 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22090)

(assert (=> b!649168 (= lt!301479 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301477 (select (arr!18456 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!649168 (arrayContainsKey!0 lt!301477 (select (arr!18456 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301469 () Unit!22090)

(declare-datatypes ((List!12550 0))(
  ( (Nil!12547) (Cons!12546 (h!13591 (_ BitVec 64)) (t!18786 List!12550)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38508 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12550) Unit!22090)

(assert (=> b!649168 (= lt!301469 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12547))))

(declare-fun arrayNoDuplicates!0 (array!38508 (_ BitVec 32) List!12550) Bool)

(assert (=> b!649168 (arrayNoDuplicates!0 lt!301477 #b00000000000000000000000000000000 Nil!12547)))

(declare-fun lt!301472 () Unit!22090)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38508 (_ BitVec 32) (_ BitVec 32)) Unit!22090)

(assert (=> b!649168 (= lt!301472 (lemmaNoDuplicateFromThenFromBigger!0 lt!301477 #b00000000000000000000000000000000 j!136))))

(assert (=> b!649168 (arrayNoDuplicates!0 lt!301477 j!136 Nil!12547)))

(declare-fun lt!301476 () Unit!22090)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38508 (_ BitVec 64) (_ BitVec 32) List!12550) Unit!22090)

(assert (=> b!649168 (= lt!301476 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301477 (select (arr!18456 a!2986) j!136) j!136 Nil!12547))))

(assert (=> b!649168 false))

(declare-fun b!649169 () Bool)

(declare-fun res!420840 () Bool)

(declare-fun e!372353 () Bool)

(assert (=> b!649169 (=> res!420840 e!372353)))

(declare-fun noDuplicate!433 (List!12550) Bool)

(assert (=> b!649169 (= res!420840 (not (noDuplicate!433 Nil!12547)))))

(declare-fun b!649170 () Bool)

(assert (=> b!649170 (= e!372353 true)))

(declare-fun lt!301482 () Bool)

(declare-fun contains!3173 (List!12550 (_ BitVec 64)) Bool)

(assert (=> b!649170 (= lt!301482 (contains!3173 Nil!12547 k!1786))))

(declare-fun b!649171 () Bool)

(declare-fun res!420854 () Bool)

(assert (=> b!649171 (=> (not res!420854) (not e!372343))))

(assert (=> b!649171 (= res!420854 (and (= (size!18820 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18820 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18820 a!2986)) (not (= i!1108 j!136))))))

(declare-fun e!372347 () Bool)

(declare-fun b!649172 () Bool)

(assert (=> b!649172 (= e!372347 (arrayContainsKey!0 lt!301477 (select (arr!18456 a!2986) j!136) index!984))))

(declare-fun res!420856 () Bool)

(assert (=> start!58890 (=> (not res!420856) (not e!372343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58890 (= res!420856 (validMask!0 mask!3053))))

(assert (=> start!58890 e!372343))

(assert (=> start!58890 true))

(declare-fun array_inv!14230 (array!38508) Bool)

(assert (=> start!58890 (array_inv!14230 a!2986)))

(declare-fun b!649173 () Bool)

(declare-fun res!420838 () Bool)

(declare-fun e!372352 () Bool)

(assert (=> b!649173 (=> (not res!420838) (not e!372352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38508 (_ BitVec 32)) Bool)

(assert (=> b!649173 (= res!420838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!649174 () Bool)

(declare-fun res!420859 () Bool)

(assert (=> b!649174 (=> res!420859 e!372353)))

(assert (=> b!649174 (= res!420859 (contains!3173 Nil!12547 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!649175 () Bool)

(declare-fun e!372354 () Bool)

(declare-fun lt!301483 () SeekEntryResult!6903)

(assert (=> b!649175 (= e!372354 (= lt!301475 lt!301483))))

(declare-fun b!649176 () Bool)

(assert (=> b!649176 (= e!372343 e!372352)))

(declare-fun res!420853 () Bool)

(assert (=> b!649176 (=> (not res!420853) (not e!372352))))

(declare-fun lt!301470 () SeekEntryResult!6903)

(assert (=> b!649176 (= res!420853 (or (= lt!301470 (MissingZero!6903 i!1108)) (= lt!301470 (MissingVacant!6903 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38508 (_ BitVec 32)) SeekEntryResult!6903)

(assert (=> b!649176 (= lt!301470 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!649177 () Bool)

(declare-fun res!420855 () Bool)

(assert (=> b!649177 (=> (not res!420855) (not e!372352))))

(assert (=> b!649177 (= res!420855 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12547))))

(declare-fun b!649178 () Bool)

(assert (=> b!649178 (= e!372355 e!372353)))

(declare-fun res!420843 () Bool)

(assert (=> b!649178 (=> res!420843 e!372353)))

(assert (=> b!649178 (= res!420843 (or (bvsge (size!18820 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18820 a!2986))))))

(assert (=> b!649178 (arrayContainsKey!0 lt!301477 (select (arr!18456 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301473 () Unit!22090)

(assert (=> b!649178 (= lt!301473 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301477 (select (arr!18456 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!649178 e!372347))

(declare-fun res!420844 () Bool)

(assert (=> b!649178 (=> (not res!420844) (not e!372347))))

(assert (=> b!649178 (= res!420844 (arrayContainsKey!0 lt!301477 (select (arr!18456 a!2986) j!136) j!136))))

(declare-fun b!649179 () Bool)

(assert (=> b!649179 (= e!372358 e!372350)))

(declare-fun res!420850 () Bool)

(assert (=> b!649179 (=> res!420850 e!372350)))

(assert (=> b!649179 (= res!420850 (or (not (= (select (arr!18456 a!2986) j!136) lt!301474)) (not (= (select (arr!18456 a!2986) j!136) lt!301478)) (bvsge j!136 index!984)))))

(declare-fun b!649180 () Bool)

(assert (=> b!649180 (= e!372352 e!372344)))

(declare-fun res!420846 () Bool)

(assert (=> b!649180 (=> (not res!420846) (not e!372344))))

(assert (=> b!649180 (= res!420846 (= (select (store (arr!18456 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!649180 (= lt!301477 (array!38509 (store (arr!18456 a!2986) i!1108 k!1786) (size!18820 a!2986)))))

(declare-fun b!649181 () Bool)

(assert (=> b!649181 (= e!372357 (not e!372346))))

(declare-fun res!420841 () Bool)

(assert (=> b!649181 (=> res!420841 e!372346)))

(declare-fun lt!301484 () SeekEntryResult!6903)

(assert (=> b!649181 (= res!420841 (not (= lt!301484 (Found!6903 index!984))))))

(declare-fun lt!301471 () Unit!22090)

(assert (=> b!649181 (= lt!301471 e!372351)))

(declare-fun c!74528 () Bool)

(assert (=> b!649181 (= c!74528 (= lt!301484 Undefined!6903))))

(assert (=> b!649181 (= lt!301484 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301474 lt!301477 mask!3053))))

(assert (=> b!649181 e!372354))

(declare-fun res!420845 () Bool)

(assert (=> b!649181 (=> (not res!420845) (not e!372354))))

(declare-fun lt!301485 () (_ BitVec 32))

(assert (=> b!649181 (= res!420845 (= lt!301483 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301485 vacantSpotIndex!68 lt!301474 lt!301477 mask!3053)))))

(assert (=> b!649181 (= lt!301483 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301485 vacantSpotIndex!68 (select (arr!18456 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!649181 (= lt!301474 (select (store (arr!18456 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!301480 () Unit!22090)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38508 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22090)

(assert (=> b!649181 (= lt!301480 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301485 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!649181 (= lt!301485 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!649182 () Bool)

(declare-fun res!420839 () Bool)

(assert (=> b!649182 (=> (not res!420839) (not e!372352))))

(assert (=> b!649182 (= res!420839 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18456 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!649183 () Bool)

(declare-fun res!420852 () Bool)

(assert (=> b!649183 (=> (not res!420852) (not e!372343))))

(assert (=> b!649183 (= res!420852 (validKeyInArray!0 (select (arr!18456 a!2986) j!136)))))

(declare-fun b!649184 () Bool)

(declare-fun res!420851 () Bool)

(assert (=> b!649184 (=> res!420851 e!372353)))

(assert (=> b!649184 (= res!420851 (contains!3173 Nil!12547 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!58890 res!420856) b!649171))

(assert (= (and b!649171 res!420854) b!649183))

(assert (= (and b!649183 res!420852) b!649161))

(assert (= (and b!649161 res!420847) b!649163))

(assert (= (and b!649163 res!420849) b!649176))

(assert (= (and b!649176 res!420853) b!649173))

(assert (= (and b!649173 res!420838) b!649177))

(assert (= (and b!649177 res!420855) b!649182))

(assert (= (and b!649182 res!420839) b!649180))

(assert (= (and b!649180 res!420846) b!649166))

(assert (= (and b!649166 res!420860) b!649181))

(assert (= (and b!649181 res!420845) b!649175))

(assert (= (and b!649181 c!74528) b!649167))

(assert (= (and b!649181 (not c!74528)) b!649159))

(assert (= (and b!649181 (not res!420841)) b!649165))

(assert (= (and b!649165 res!420848) b!649179))

(assert (= (and b!649179 (not res!420850)) b!649164))

(assert (= (and b!649164 res!420842) b!649158))

(assert (= (and b!649165 (not res!420857)) b!649162))

(assert (= (and b!649162 c!74527) b!649168))

(assert (= (and b!649162 (not c!74527)) b!649160))

(assert (= (and b!649162 (not res!420858)) b!649178))

(assert (= (and b!649178 res!420844) b!649172))

(assert (= (and b!649178 (not res!420843)) b!649169))

(assert (= (and b!649169 (not res!420840)) b!649174))

(assert (= (and b!649174 (not res!420859)) b!649184))

(assert (= (and b!649184 (not res!420851)) b!649170))

(declare-fun m!622491 () Bool)

(assert (=> b!649183 m!622491))

(assert (=> b!649183 m!622491))

(declare-fun m!622493 () Bool)

(assert (=> b!649183 m!622493))

(declare-fun m!622495 () Bool)

(assert (=> b!649169 m!622495))

(declare-fun m!622497 () Bool)

(assert (=> b!649173 m!622497))

(declare-fun m!622499 () Bool)

(assert (=> b!649177 m!622499))

(declare-fun m!622501 () Bool)

(assert (=> b!649180 m!622501))

(declare-fun m!622503 () Bool)

(assert (=> b!649180 m!622503))

(declare-fun m!622505 () Bool)

(assert (=> b!649181 m!622505))

(declare-fun m!622507 () Bool)

(assert (=> b!649181 m!622507))

(declare-fun m!622509 () Bool)

(assert (=> b!649181 m!622509))

(assert (=> b!649181 m!622491))

(assert (=> b!649181 m!622501))

(declare-fun m!622511 () Bool)

(assert (=> b!649181 m!622511))

(declare-fun m!622513 () Bool)

(assert (=> b!649181 m!622513))

(assert (=> b!649181 m!622491))

(declare-fun m!622515 () Bool)

(assert (=> b!649181 m!622515))

(assert (=> b!649168 m!622491))

(declare-fun m!622517 () Bool)

(assert (=> b!649168 m!622517))

(declare-fun m!622519 () Bool)

(assert (=> b!649168 m!622519))

(assert (=> b!649168 m!622491))

(declare-fun m!622521 () Bool)

(assert (=> b!649168 m!622521))

(declare-fun m!622523 () Bool)

(assert (=> b!649168 m!622523))

(assert (=> b!649168 m!622491))

(declare-fun m!622525 () Bool)

(assert (=> b!649168 m!622525))

(assert (=> b!649168 m!622491))

(declare-fun m!622527 () Bool)

(assert (=> b!649168 m!622527))

(declare-fun m!622529 () Bool)

(assert (=> b!649168 m!622529))

(declare-fun m!622531 () Bool)

(assert (=> b!649163 m!622531))

(assert (=> b!649165 m!622491))

(assert (=> b!649165 m!622501))

(declare-fun m!622533 () Bool)

(assert (=> b!649165 m!622533))

(assert (=> b!649179 m!622491))

(assert (=> b!649164 m!622491))

(assert (=> b!649164 m!622491))

(declare-fun m!622535 () Bool)

(assert (=> b!649164 m!622535))

(declare-fun m!622537 () Bool)

(assert (=> b!649174 m!622537))

(assert (=> b!649172 m!622491))

(assert (=> b!649172 m!622491))

(declare-fun m!622539 () Bool)

(assert (=> b!649172 m!622539))

(declare-fun m!622541 () Bool)

(assert (=> b!649182 m!622541))

(declare-fun m!622543 () Bool)

(assert (=> b!649176 m!622543))

(assert (=> b!649178 m!622491))

(assert (=> b!649178 m!622491))

(declare-fun m!622545 () Bool)

(assert (=> b!649178 m!622545))

(assert (=> b!649178 m!622491))

(declare-fun m!622547 () Bool)

(assert (=> b!649178 m!622547))

(assert (=> b!649178 m!622491))

(assert (=> b!649178 m!622535))

(assert (=> b!649158 m!622491))

(assert (=> b!649158 m!622491))

(assert (=> b!649158 m!622539))

(declare-fun m!622549 () Bool)

(assert (=> b!649166 m!622549))

(assert (=> b!649166 m!622491))

(assert (=> b!649166 m!622491))

(declare-fun m!622551 () Bool)

(assert (=> b!649166 m!622551))

(declare-fun m!622553 () Bool)

(assert (=> b!649170 m!622553))

(declare-fun m!622555 () Bool)

(assert (=> b!649161 m!622555))

(declare-fun m!622557 () Bool)

(assert (=> start!58890 m!622557))

(declare-fun m!622559 () Bool)

(assert (=> start!58890 m!622559))

(declare-fun m!622561 () Bool)

(assert (=> b!649184 m!622561))

(push 1)

