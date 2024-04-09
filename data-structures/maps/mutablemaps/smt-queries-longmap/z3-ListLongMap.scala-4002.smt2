; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54344 () Bool)

(assert start!54344)

(declare-fun b!593287 () Bool)

(declare-fun res!379858 () Bool)

(declare-fun e!338894 () Bool)

(assert (=> b!593287 (=> (not res!379858) (not e!338894))))

(declare-datatypes ((array!36911 0))(
  ( (array!36912 (arr!17719 (Array (_ BitVec 32) (_ BitVec 64))) (size!18083 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36911)

(declare-datatypes ((List!11813 0))(
  ( (Nil!11810) (Cons!11809 (h!12854 (_ BitVec 64)) (t!18049 List!11813)) )
))
(declare-fun arrayNoDuplicates!0 (array!36911 (_ BitVec 32) List!11813) Bool)

(assert (=> b!593287 (= res!379858 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11810))))

(declare-fun b!593288 () Bool)

(declare-fun e!338897 () Bool)

(declare-fun e!338892 () Bool)

(assert (=> b!593288 (= e!338897 e!338892)))

(declare-fun res!379851 () Bool)

(assert (=> b!593288 (=> (not res!379851) (not e!338892))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!269406 () array!36911)

(declare-fun arrayContainsKey!0 (array!36911 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!593288 (= res!379851 (arrayContainsKey!0 lt!269406 (select (arr!17719 a!2986) j!136) j!136))))

(declare-fun b!593289 () Bool)

(declare-fun e!338895 () Bool)

(assert (=> b!593289 (= e!338895 e!338897)))

(declare-fun res!379865 () Bool)

(assert (=> b!593289 (=> res!379865 e!338897)))

(declare-fun lt!269404 () (_ BitVec 64))

(declare-fun lt!269403 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!593289 (= res!379865 (or (not (= (select (arr!17719 a!2986) j!136) lt!269403)) (not (= (select (arr!17719 a!2986) j!136) lt!269404)) (bvsge j!136 index!984)))))

(declare-fun b!593290 () Bool)

(declare-fun res!379868 () Bool)

(assert (=> b!593290 (=> (not res!379868) (not e!338894))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36911 (_ BitVec 32)) Bool)

(assert (=> b!593290 (= res!379868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!593291 () Bool)

(declare-fun e!338893 () Bool)

(declare-fun e!338896 () Bool)

(assert (=> b!593291 (= e!338893 e!338896)))

(declare-fun res!379863 () Bool)

(assert (=> b!593291 (=> (not res!379863) (not e!338896))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6166 0))(
  ( (MissingZero!6166 (index!26905 (_ BitVec 32))) (Found!6166 (index!26906 (_ BitVec 32))) (Intermediate!6166 (undefined!6978 Bool) (index!26907 (_ BitVec 32)) (x!55729 (_ BitVec 32))) (Undefined!6166) (MissingVacant!6166 (index!26908 (_ BitVec 32))) )
))
(declare-fun lt!269401 () SeekEntryResult!6166)

(assert (=> b!593291 (= res!379863 (and (= lt!269401 (Found!6166 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17719 a!2986) index!984) (select (arr!17719 a!2986) j!136))) (not (= (select (arr!17719 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36911 (_ BitVec 32)) SeekEntryResult!6166)

(assert (=> b!593291 (= lt!269401 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17719 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!593292 () Bool)

(declare-fun res!379861 () Bool)

(declare-fun e!338890 () Bool)

(assert (=> b!593292 (=> (not res!379861) (not e!338890))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!593292 (= res!379861 (and (= (size!18083 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18083 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18083 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!593293 () Bool)

(declare-fun res!379866 () Bool)

(assert (=> b!593293 (=> (not res!379866) (not e!338890))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!593293 (= res!379866 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!593294 () Bool)

(declare-fun e!338889 () Bool)

(declare-fun noDuplicate!233 (List!11813) Bool)

(assert (=> b!593294 (= e!338889 (noDuplicate!233 Nil!11810))))

(declare-fun b!593295 () Bool)

(declare-datatypes ((Unit!18608 0))(
  ( (Unit!18609) )
))
(declare-fun e!338888 () Unit!18608)

(declare-fun Unit!18610 () Unit!18608)

(assert (=> b!593295 (= e!338888 Unit!18610)))

(declare-fun b!593296 () Bool)

(declare-fun e!338891 () Bool)

(declare-fun lt!269402 () SeekEntryResult!6166)

(assert (=> b!593296 (= e!338891 (= lt!269401 lt!269402))))

(declare-fun b!593297 () Bool)

(assert (=> b!593297 (= e!338890 e!338894)))

(declare-fun res!379859 () Bool)

(assert (=> b!593297 (=> (not res!379859) (not e!338894))))

(declare-fun lt!269399 () SeekEntryResult!6166)

(assert (=> b!593297 (= res!379859 (or (= lt!269399 (MissingZero!6166 i!1108)) (= lt!269399 (MissingVacant!6166 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36911 (_ BitVec 32)) SeekEntryResult!6166)

(assert (=> b!593297 (= lt!269399 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!593298 () Bool)

(declare-fun res!379852 () Bool)

(assert (=> b!593298 (=> (not res!379852) (not e!338894))))

(assert (=> b!593298 (= res!379852 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17719 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!593299 () Bool)

(declare-fun res!379864 () Bool)

(assert (=> b!593299 (=> (not res!379864) (not e!338890))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!593299 (= res!379864 (validKeyInArray!0 k0!1786))))

(declare-fun b!593301 () Bool)

(declare-fun e!338898 () Bool)

(assert (=> b!593301 (= e!338898 e!338889)))

(declare-fun res!379867 () Bool)

(assert (=> b!593301 (=> res!379867 e!338889)))

(assert (=> b!593301 (= res!379867 (or (bvsgt #b00000000000000000000000000000000 (size!18083 a!2986)) (bvsge (size!18083 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!593301 (arrayContainsKey!0 lt!269406 (select (arr!17719 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269397 () Unit!18608)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36911 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18608)

(assert (=> b!593301 (= lt!269397 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269406 (select (arr!17719 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!593302 () Bool)

(assert (=> b!593302 (= e!338892 (arrayContainsKey!0 lt!269406 (select (arr!17719 a!2986) j!136) index!984))))

(declare-fun b!593300 () Bool)

(declare-fun e!338899 () Bool)

(assert (=> b!593300 (= e!338896 (not e!338899))))

(declare-fun res!379854 () Bool)

(assert (=> b!593300 (=> res!379854 e!338899)))

(declare-fun lt!269405 () SeekEntryResult!6166)

(assert (=> b!593300 (= res!379854 (not (= lt!269405 (Found!6166 index!984))))))

(declare-fun lt!269400 () Unit!18608)

(assert (=> b!593300 (= lt!269400 e!338888)))

(declare-fun c!67085 () Bool)

(assert (=> b!593300 (= c!67085 (= lt!269405 Undefined!6166))))

(assert (=> b!593300 (= lt!269405 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269403 lt!269406 mask!3053))))

(assert (=> b!593300 e!338891))

(declare-fun res!379855 () Bool)

(assert (=> b!593300 (=> (not res!379855) (not e!338891))))

(declare-fun lt!269398 () (_ BitVec 32))

(assert (=> b!593300 (= res!379855 (= lt!269402 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269398 vacantSpotIndex!68 lt!269403 lt!269406 mask!3053)))))

(assert (=> b!593300 (= lt!269402 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269398 vacantSpotIndex!68 (select (arr!17719 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!593300 (= lt!269403 (select (store (arr!17719 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!269396 () Unit!18608)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36911 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18608)

(assert (=> b!593300 (= lt!269396 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269398 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!593300 (= lt!269398 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!379856 () Bool)

(assert (=> start!54344 (=> (not res!379856) (not e!338890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54344 (= res!379856 (validMask!0 mask!3053))))

(assert (=> start!54344 e!338890))

(assert (=> start!54344 true))

(declare-fun array_inv!13493 (array!36911) Bool)

(assert (=> start!54344 (array_inv!13493 a!2986)))

(declare-fun b!593303 () Bool)

(assert (=> b!593303 (= e!338894 e!338893)))

(declare-fun res!379857 () Bool)

(assert (=> b!593303 (=> (not res!379857) (not e!338893))))

(assert (=> b!593303 (= res!379857 (= (select (store (arr!17719 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593303 (= lt!269406 (array!36912 (store (arr!17719 a!2986) i!1108 k0!1786) (size!18083 a!2986)))))

(declare-fun b!593304 () Bool)

(declare-fun Unit!18611 () Unit!18608)

(assert (=> b!593304 (= e!338888 Unit!18611)))

(assert (=> b!593304 false))

(declare-fun b!593305 () Bool)

(assert (=> b!593305 (= e!338899 e!338898)))

(declare-fun res!379853 () Bool)

(assert (=> b!593305 (=> res!379853 e!338898)))

(assert (=> b!593305 (= res!379853 (or (not (= (select (arr!17719 a!2986) j!136) lt!269403)) (not (= (select (arr!17719 a!2986) j!136) lt!269404)) (bvsge j!136 index!984)))))

(assert (=> b!593305 e!338895))

(declare-fun res!379862 () Bool)

(assert (=> b!593305 (=> (not res!379862) (not e!338895))))

(assert (=> b!593305 (= res!379862 (= lt!269404 (select (arr!17719 a!2986) j!136)))))

(assert (=> b!593305 (= lt!269404 (select (store (arr!17719 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!593306 () Bool)

(declare-fun res!379860 () Bool)

(assert (=> b!593306 (=> (not res!379860) (not e!338890))))

(assert (=> b!593306 (= res!379860 (validKeyInArray!0 (select (arr!17719 a!2986) j!136)))))

(assert (= (and start!54344 res!379856) b!593292))

(assert (= (and b!593292 res!379861) b!593306))

(assert (= (and b!593306 res!379860) b!593299))

(assert (= (and b!593299 res!379864) b!593293))

(assert (= (and b!593293 res!379866) b!593297))

(assert (= (and b!593297 res!379859) b!593290))

(assert (= (and b!593290 res!379868) b!593287))

(assert (= (and b!593287 res!379858) b!593298))

(assert (= (and b!593298 res!379852) b!593303))

(assert (= (and b!593303 res!379857) b!593291))

(assert (= (and b!593291 res!379863) b!593300))

(assert (= (and b!593300 res!379855) b!593296))

(assert (= (and b!593300 c!67085) b!593304))

(assert (= (and b!593300 (not c!67085)) b!593295))

(assert (= (and b!593300 (not res!379854)) b!593305))

(assert (= (and b!593305 res!379862) b!593289))

(assert (= (and b!593289 (not res!379865)) b!593288))

(assert (= (and b!593288 res!379851) b!593302))

(assert (= (and b!593305 (not res!379853)) b!593301))

(assert (= (and b!593301 (not res!379867)) b!593294))

(declare-fun m!571285 () Bool)

(assert (=> b!593301 m!571285))

(assert (=> b!593301 m!571285))

(declare-fun m!571287 () Bool)

(assert (=> b!593301 m!571287))

(assert (=> b!593301 m!571285))

(declare-fun m!571289 () Bool)

(assert (=> b!593301 m!571289))

(declare-fun m!571291 () Bool)

(assert (=> b!593299 m!571291))

(declare-fun m!571293 () Bool)

(assert (=> b!593303 m!571293))

(declare-fun m!571295 () Bool)

(assert (=> b!593303 m!571295))

(assert (=> b!593300 m!571285))

(assert (=> b!593300 m!571285))

(declare-fun m!571297 () Bool)

(assert (=> b!593300 m!571297))

(assert (=> b!593300 m!571293))

(declare-fun m!571299 () Bool)

(assert (=> b!593300 m!571299))

(declare-fun m!571301 () Bool)

(assert (=> b!593300 m!571301))

(declare-fun m!571303 () Bool)

(assert (=> b!593300 m!571303))

(declare-fun m!571305 () Bool)

(assert (=> b!593300 m!571305))

(declare-fun m!571307 () Bool)

(assert (=> b!593300 m!571307))

(declare-fun m!571309 () Bool)

(assert (=> b!593293 m!571309))

(assert (=> b!593306 m!571285))

(assert (=> b!593306 m!571285))

(declare-fun m!571311 () Bool)

(assert (=> b!593306 m!571311))

(assert (=> b!593305 m!571285))

(assert (=> b!593305 m!571293))

(declare-fun m!571313 () Bool)

(assert (=> b!593305 m!571313))

(assert (=> b!593302 m!571285))

(assert (=> b!593302 m!571285))

(declare-fun m!571315 () Bool)

(assert (=> b!593302 m!571315))

(declare-fun m!571317 () Bool)

(assert (=> b!593287 m!571317))

(declare-fun m!571319 () Bool)

(assert (=> b!593298 m!571319))

(declare-fun m!571321 () Bool)

(assert (=> b!593291 m!571321))

(assert (=> b!593291 m!571285))

(assert (=> b!593291 m!571285))

(declare-fun m!571323 () Bool)

(assert (=> b!593291 m!571323))

(declare-fun m!571325 () Bool)

(assert (=> start!54344 m!571325))

(declare-fun m!571327 () Bool)

(assert (=> start!54344 m!571327))

(assert (=> b!593288 m!571285))

(assert (=> b!593288 m!571285))

(declare-fun m!571329 () Bool)

(assert (=> b!593288 m!571329))

(declare-fun m!571331 () Bool)

(assert (=> b!593297 m!571331))

(declare-fun m!571333 () Bool)

(assert (=> b!593290 m!571333))

(declare-fun m!571335 () Bool)

(assert (=> b!593294 m!571335))

(assert (=> b!593289 m!571285))

(check-sat (not b!593287) (not b!593300) (not b!593301) (not b!593291) (not b!593306) (not b!593294) (not b!593299) (not b!593302) (not b!593293) (not b!593290) (not start!54344) (not b!593297) (not b!593288))
(check-sat)
(get-model)

(declare-fun b!593377 () Bool)

(declare-fun e!338949 () Bool)

(declare-fun contains!2917 (List!11813 (_ BitVec 64)) Bool)

(assert (=> b!593377 (= e!338949 (contains!2917 Nil!11810 (select (arr!17719 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!593378 () Bool)

(declare-fun e!338948 () Bool)

(declare-fun e!338950 () Bool)

(assert (=> b!593378 (= e!338948 e!338950)))

(declare-fun res!379931 () Bool)

(assert (=> b!593378 (=> (not res!379931) (not e!338950))))

(assert (=> b!593378 (= res!379931 (not e!338949))))

(declare-fun res!379929 () Bool)

(assert (=> b!593378 (=> (not res!379929) (not e!338949))))

(assert (=> b!593378 (= res!379929 (validKeyInArray!0 (select (arr!17719 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!593379 () Bool)

(declare-fun e!338947 () Bool)

(declare-fun call!32864 () Bool)

(assert (=> b!593379 (= e!338947 call!32864)))

(declare-fun d!86313 () Bool)

(declare-fun res!379930 () Bool)

(assert (=> d!86313 (=> res!379930 e!338948)))

(assert (=> d!86313 (= res!379930 (bvsge #b00000000000000000000000000000000 (size!18083 a!2986)))))

(assert (=> d!86313 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11810) e!338948)))

(declare-fun bm!32861 () Bool)

(declare-fun c!67091 () Bool)

(assert (=> bm!32861 (= call!32864 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67091 (Cons!11809 (select (arr!17719 a!2986) #b00000000000000000000000000000000) Nil!11810) Nil!11810)))))

(declare-fun b!593380 () Bool)

(assert (=> b!593380 (= e!338950 e!338947)))

(assert (=> b!593380 (= c!67091 (validKeyInArray!0 (select (arr!17719 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!593381 () Bool)

(assert (=> b!593381 (= e!338947 call!32864)))

(assert (= (and d!86313 (not res!379930)) b!593378))

(assert (= (and b!593378 res!379929) b!593377))

(assert (= (and b!593378 res!379931) b!593380))

(assert (= (and b!593380 c!67091) b!593379))

(assert (= (and b!593380 (not c!67091)) b!593381))

(assert (= (or b!593379 b!593381) bm!32861))

(declare-fun m!571389 () Bool)

(assert (=> b!593377 m!571389))

(assert (=> b!593377 m!571389))

(declare-fun m!571391 () Bool)

(assert (=> b!593377 m!571391))

(assert (=> b!593378 m!571389))

(assert (=> b!593378 m!571389))

(declare-fun m!571393 () Bool)

(assert (=> b!593378 m!571393))

(assert (=> bm!32861 m!571389))

(declare-fun m!571395 () Bool)

(assert (=> bm!32861 m!571395))

(assert (=> b!593380 m!571389))

(assert (=> b!593380 m!571389))

(assert (=> b!593380 m!571393))

(assert (=> b!593287 d!86313))

(declare-fun d!86315 () Bool)

(assert (=> d!86315 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!54344 d!86315))

(declare-fun d!86317 () Bool)

(assert (=> d!86317 (= (array_inv!13493 a!2986) (bvsge (size!18083 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!54344 d!86317))

(declare-fun d!86319 () Bool)

(assert (=> d!86319 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!593299 d!86319))

(declare-fun d!86321 () Bool)

(declare-fun res!379936 () Bool)

(declare-fun e!338955 () Bool)

(assert (=> d!86321 (=> res!379936 e!338955)))

(assert (=> d!86321 (= res!379936 (= (select (arr!17719 lt!269406) j!136) (select (arr!17719 a!2986) j!136)))))

(assert (=> d!86321 (= (arrayContainsKey!0 lt!269406 (select (arr!17719 a!2986) j!136) j!136) e!338955)))

(declare-fun b!593386 () Bool)

(declare-fun e!338956 () Bool)

(assert (=> b!593386 (= e!338955 e!338956)))

(declare-fun res!379937 () Bool)

(assert (=> b!593386 (=> (not res!379937) (not e!338956))))

(assert (=> b!593386 (= res!379937 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18083 lt!269406)))))

(declare-fun b!593387 () Bool)

(assert (=> b!593387 (= e!338956 (arrayContainsKey!0 lt!269406 (select (arr!17719 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86321 (not res!379936)) b!593386))

(assert (= (and b!593386 res!379937) b!593387))

(declare-fun m!571397 () Bool)

(assert (=> d!86321 m!571397))

(assert (=> b!593387 m!571285))

(declare-fun m!571399 () Bool)

(assert (=> b!593387 m!571399))

(assert (=> b!593288 d!86321))

(declare-fun d!86323 () Bool)

(declare-fun e!338959 () Bool)

(assert (=> d!86323 e!338959))

(declare-fun res!379940 () Bool)

(assert (=> d!86323 (=> (not res!379940) (not e!338959))))

(assert (=> d!86323 (= res!379940 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18083 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18083 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18083 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18083 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18083 a!2986))))))

(declare-fun lt!269442 () Unit!18608)

(declare-fun choose!9 (array!36911 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18608)

(assert (=> d!86323 (= lt!269442 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269398 vacantSpotIndex!68 mask!3053))))

(assert (=> d!86323 (validMask!0 mask!3053)))

(assert (=> d!86323 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269398 vacantSpotIndex!68 mask!3053) lt!269442)))

(declare-fun b!593390 () Bool)

(assert (=> b!593390 (= e!338959 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269398 vacantSpotIndex!68 (select (arr!17719 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269398 vacantSpotIndex!68 (select (store (arr!17719 a!2986) i!1108 k0!1786) j!136) (array!36912 (store (arr!17719 a!2986) i!1108 k0!1786) (size!18083 a!2986)) mask!3053)))))

(assert (= (and d!86323 res!379940) b!593390))

(declare-fun m!571401 () Bool)

(assert (=> d!86323 m!571401))

(assert (=> d!86323 m!571325))

(assert (=> b!593390 m!571305))

(declare-fun m!571403 () Bool)

(assert (=> b!593390 m!571403))

(assert (=> b!593390 m!571285))

(assert (=> b!593390 m!571297))

(assert (=> b!593390 m!571285))

(assert (=> b!593390 m!571305))

(assert (=> b!593390 m!571293))

(assert (=> b!593300 d!86323))

(declare-fun d!86325 () Bool)

(declare-fun lt!269445 () (_ BitVec 32))

(assert (=> d!86325 (and (bvsge lt!269445 #b00000000000000000000000000000000) (bvslt lt!269445 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86325 (= lt!269445 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!86325 (validMask!0 mask!3053)))

(assert (=> d!86325 (= (nextIndex!0 index!984 x!910 mask!3053) lt!269445)))

(declare-fun bs!18305 () Bool)

(assert (= bs!18305 d!86325))

(declare-fun m!571405 () Bool)

(assert (=> bs!18305 m!571405))

(assert (=> bs!18305 m!571325))

(assert (=> b!593300 d!86325))

(declare-fun e!338968 () SeekEntryResult!6166)

(declare-fun b!593403 () Bool)

(assert (=> b!593403 (= e!338968 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!269398 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17719 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!593404 () Bool)

(declare-fun e!338967 () SeekEntryResult!6166)

(assert (=> b!593404 (= e!338967 (Found!6166 lt!269398))))

(declare-fun b!593405 () Bool)

(declare-fun e!338966 () SeekEntryResult!6166)

(assert (=> b!593405 (= e!338966 e!338967)))

(declare-fun c!67098 () Bool)

(declare-fun lt!269451 () (_ BitVec 64))

(assert (=> b!593405 (= c!67098 (= lt!269451 (select (arr!17719 a!2986) j!136)))))

(declare-fun d!86327 () Bool)

(declare-fun lt!269450 () SeekEntryResult!6166)

(get-info :version)

(assert (=> d!86327 (and (or ((_ is Undefined!6166) lt!269450) (not ((_ is Found!6166) lt!269450)) (and (bvsge (index!26906 lt!269450) #b00000000000000000000000000000000) (bvslt (index!26906 lt!269450) (size!18083 a!2986)))) (or ((_ is Undefined!6166) lt!269450) ((_ is Found!6166) lt!269450) (not ((_ is MissingVacant!6166) lt!269450)) (not (= (index!26908 lt!269450) vacantSpotIndex!68)) (and (bvsge (index!26908 lt!269450) #b00000000000000000000000000000000) (bvslt (index!26908 lt!269450) (size!18083 a!2986)))) (or ((_ is Undefined!6166) lt!269450) (ite ((_ is Found!6166) lt!269450) (= (select (arr!17719 a!2986) (index!26906 lt!269450)) (select (arr!17719 a!2986) j!136)) (and ((_ is MissingVacant!6166) lt!269450) (= (index!26908 lt!269450) vacantSpotIndex!68) (= (select (arr!17719 a!2986) (index!26908 lt!269450)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86327 (= lt!269450 e!338966)))

(declare-fun c!67100 () Bool)

(assert (=> d!86327 (= c!67100 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86327 (= lt!269451 (select (arr!17719 a!2986) lt!269398))))

(assert (=> d!86327 (validMask!0 mask!3053)))

(assert (=> d!86327 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269398 vacantSpotIndex!68 (select (arr!17719 a!2986) j!136) a!2986 mask!3053) lt!269450)))

(declare-fun b!593406 () Bool)

(assert (=> b!593406 (= e!338966 Undefined!6166)))

(declare-fun b!593407 () Bool)

(declare-fun c!67099 () Bool)

(assert (=> b!593407 (= c!67099 (= lt!269451 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593407 (= e!338967 e!338968)))

(declare-fun b!593408 () Bool)

(assert (=> b!593408 (= e!338968 (MissingVacant!6166 vacantSpotIndex!68))))

(assert (= (and d!86327 c!67100) b!593406))

(assert (= (and d!86327 (not c!67100)) b!593405))

(assert (= (and b!593405 c!67098) b!593404))

(assert (= (and b!593405 (not c!67098)) b!593407))

(assert (= (and b!593407 c!67099) b!593408))

(assert (= (and b!593407 (not c!67099)) b!593403))

(declare-fun m!571407 () Bool)

(assert (=> b!593403 m!571407))

(assert (=> b!593403 m!571407))

(assert (=> b!593403 m!571285))

(declare-fun m!571409 () Bool)

(assert (=> b!593403 m!571409))

(declare-fun m!571411 () Bool)

(assert (=> d!86327 m!571411))

(declare-fun m!571413 () Bool)

(assert (=> d!86327 m!571413))

(declare-fun m!571415 () Bool)

(assert (=> d!86327 m!571415))

(assert (=> d!86327 m!571325))

(assert (=> b!593300 d!86327))

(declare-fun b!593409 () Bool)

(declare-fun e!338971 () SeekEntryResult!6166)

(assert (=> b!593409 (= e!338971 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!269403 lt!269406 mask!3053))))

(declare-fun b!593410 () Bool)

(declare-fun e!338970 () SeekEntryResult!6166)

(assert (=> b!593410 (= e!338970 (Found!6166 index!984))))

(declare-fun b!593411 () Bool)

(declare-fun e!338969 () SeekEntryResult!6166)

(assert (=> b!593411 (= e!338969 e!338970)))

(declare-fun c!67101 () Bool)

(declare-fun lt!269453 () (_ BitVec 64))

(assert (=> b!593411 (= c!67101 (= lt!269453 lt!269403))))

(declare-fun d!86331 () Bool)

(declare-fun lt!269452 () SeekEntryResult!6166)

(assert (=> d!86331 (and (or ((_ is Undefined!6166) lt!269452) (not ((_ is Found!6166) lt!269452)) (and (bvsge (index!26906 lt!269452) #b00000000000000000000000000000000) (bvslt (index!26906 lt!269452) (size!18083 lt!269406)))) (or ((_ is Undefined!6166) lt!269452) ((_ is Found!6166) lt!269452) (not ((_ is MissingVacant!6166) lt!269452)) (not (= (index!26908 lt!269452) vacantSpotIndex!68)) (and (bvsge (index!26908 lt!269452) #b00000000000000000000000000000000) (bvslt (index!26908 lt!269452) (size!18083 lt!269406)))) (or ((_ is Undefined!6166) lt!269452) (ite ((_ is Found!6166) lt!269452) (= (select (arr!17719 lt!269406) (index!26906 lt!269452)) lt!269403) (and ((_ is MissingVacant!6166) lt!269452) (= (index!26908 lt!269452) vacantSpotIndex!68) (= (select (arr!17719 lt!269406) (index!26908 lt!269452)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86331 (= lt!269452 e!338969)))

(declare-fun c!67103 () Bool)

(assert (=> d!86331 (= c!67103 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86331 (= lt!269453 (select (arr!17719 lt!269406) index!984))))

(assert (=> d!86331 (validMask!0 mask!3053)))

(assert (=> d!86331 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269403 lt!269406 mask!3053) lt!269452)))

(declare-fun b!593412 () Bool)

(assert (=> b!593412 (= e!338969 Undefined!6166)))

(declare-fun b!593413 () Bool)

(declare-fun c!67102 () Bool)

(assert (=> b!593413 (= c!67102 (= lt!269453 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593413 (= e!338970 e!338971)))

(declare-fun b!593414 () Bool)

(assert (=> b!593414 (= e!338971 (MissingVacant!6166 vacantSpotIndex!68))))

(assert (= (and d!86331 c!67103) b!593412))

(assert (= (and d!86331 (not c!67103)) b!593411))

(assert (= (and b!593411 c!67101) b!593410))

(assert (= (and b!593411 (not c!67101)) b!593413))

(assert (= (and b!593413 c!67102) b!593414))

(assert (= (and b!593413 (not c!67102)) b!593409))

(assert (=> b!593409 m!571303))

(assert (=> b!593409 m!571303))

(declare-fun m!571417 () Bool)

(assert (=> b!593409 m!571417))

(declare-fun m!571419 () Bool)

(assert (=> d!86331 m!571419))

(declare-fun m!571421 () Bool)

(assert (=> d!86331 m!571421))

(declare-fun m!571423 () Bool)

(assert (=> d!86331 m!571423))

(assert (=> d!86331 m!571325))

(assert (=> b!593300 d!86331))

(declare-fun e!338974 () SeekEntryResult!6166)

(declare-fun b!593415 () Bool)

(assert (=> b!593415 (= e!338974 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!269398 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!269403 lt!269406 mask!3053))))

(declare-fun b!593416 () Bool)

(declare-fun e!338973 () SeekEntryResult!6166)

(assert (=> b!593416 (= e!338973 (Found!6166 lt!269398))))

(declare-fun b!593417 () Bool)

(declare-fun e!338972 () SeekEntryResult!6166)

(assert (=> b!593417 (= e!338972 e!338973)))

(declare-fun c!67104 () Bool)

(declare-fun lt!269455 () (_ BitVec 64))

(assert (=> b!593417 (= c!67104 (= lt!269455 lt!269403))))

(declare-fun lt!269454 () SeekEntryResult!6166)

(declare-fun d!86335 () Bool)

(assert (=> d!86335 (and (or ((_ is Undefined!6166) lt!269454) (not ((_ is Found!6166) lt!269454)) (and (bvsge (index!26906 lt!269454) #b00000000000000000000000000000000) (bvslt (index!26906 lt!269454) (size!18083 lt!269406)))) (or ((_ is Undefined!6166) lt!269454) ((_ is Found!6166) lt!269454) (not ((_ is MissingVacant!6166) lt!269454)) (not (= (index!26908 lt!269454) vacantSpotIndex!68)) (and (bvsge (index!26908 lt!269454) #b00000000000000000000000000000000) (bvslt (index!26908 lt!269454) (size!18083 lt!269406)))) (or ((_ is Undefined!6166) lt!269454) (ite ((_ is Found!6166) lt!269454) (= (select (arr!17719 lt!269406) (index!26906 lt!269454)) lt!269403) (and ((_ is MissingVacant!6166) lt!269454) (= (index!26908 lt!269454) vacantSpotIndex!68) (= (select (arr!17719 lt!269406) (index!26908 lt!269454)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86335 (= lt!269454 e!338972)))

(declare-fun c!67106 () Bool)

(assert (=> d!86335 (= c!67106 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86335 (= lt!269455 (select (arr!17719 lt!269406) lt!269398))))

(assert (=> d!86335 (validMask!0 mask!3053)))

(assert (=> d!86335 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269398 vacantSpotIndex!68 lt!269403 lt!269406 mask!3053) lt!269454)))

(declare-fun b!593418 () Bool)

(assert (=> b!593418 (= e!338972 Undefined!6166)))

(declare-fun b!593419 () Bool)

(declare-fun c!67105 () Bool)

(assert (=> b!593419 (= c!67105 (= lt!269455 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593419 (= e!338973 e!338974)))

(declare-fun b!593420 () Bool)

(assert (=> b!593420 (= e!338974 (MissingVacant!6166 vacantSpotIndex!68))))

(assert (= (and d!86335 c!67106) b!593418))

(assert (= (and d!86335 (not c!67106)) b!593417))

(assert (= (and b!593417 c!67104) b!593416))

(assert (= (and b!593417 (not c!67104)) b!593419))

(assert (= (and b!593419 c!67105) b!593420))

(assert (= (and b!593419 (not c!67105)) b!593415))

(assert (=> b!593415 m!571407))

(assert (=> b!593415 m!571407))

(declare-fun m!571425 () Bool)

(assert (=> b!593415 m!571425))

(declare-fun m!571427 () Bool)

(assert (=> d!86335 m!571427))

(declare-fun m!571429 () Bool)

(assert (=> d!86335 m!571429))

(declare-fun m!571431 () Bool)

(assert (=> d!86335 m!571431))

(assert (=> d!86335 m!571325))

(assert (=> b!593300 d!86335))

(declare-fun d!86337 () Bool)

(declare-fun res!379941 () Bool)

(declare-fun e!338975 () Bool)

(assert (=> d!86337 (=> res!379941 e!338975)))

(assert (=> d!86337 (= res!379941 (= (select (arr!17719 lt!269406) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17719 a!2986) j!136)))))

(assert (=> d!86337 (= (arrayContainsKey!0 lt!269406 (select (arr!17719 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!338975)))

(declare-fun b!593421 () Bool)

(declare-fun e!338976 () Bool)

(assert (=> b!593421 (= e!338975 e!338976)))

(declare-fun res!379942 () Bool)

(assert (=> b!593421 (=> (not res!379942) (not e!338976))))

(assert (=> b!593421 (= res!379942 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18083 lt!269406)))))

(declare-fun b!593422 () Bool)

(assert (=> b!593422 (= e!338976 (arrayContainsKey!0 lt!269406 (select (arr!17719 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86337 (not res!379941)) b!593421))

(assert (= (and b!593421 res!379942) b!593422))

(declare-fun m!571433 () Bool)

(assert (=> d!86337 m!571433))

(assert (=> b!593422 m!571285))

(declare-fun m!571435 () Bool)

(assert (=> b!593422 m!571435))

(assert (=> b!593301 d!86337))

(declare-fun d!86339 () Bool)

(assert (=> d!86339 (arrayContainsKey!0 lt!269406 (select (arr!17719 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269464 () Unit!18608)

(declare-fun choose!114 (array!36911 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18608)

(assert (=> d!86339 (= lt!269464 (choose!114 lt!269406 (select (arr!17719 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!86339 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!86339 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269406 (select (arr!17719 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!269464)))

(declare-fun bs!18306 () Bool)

(assert (= bs!18306 d!86339))

(assert (=> bs!18306 m!571285))

(assert (=> bs!18306 m!571287))

(assert (=> bs!18306 m!571285))

(declare-fun m!571437 () Bool)

(assert (=> bs!18306 m!571437))

(assert (=> b!593301 d!86339))

(declare-fun d!86341 () Bool)

(declare-fun res!379962 () Bool)

(declare-fun e!339011 () Bool)

(assert (=> d!86341 (=> res!379962 e!339011)))

(assert (=> d!86341 (= res!379962 (bvsge #b00000000000000000000000000000000 (size!18083 a!2986)))))

(assert (=> d!86341 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!339011)))

(declare-fun b!593470 () Bool)

(declare-fun e!339012 () Bool)

(declare-fun call!32873 () Bool)

(assert (=> b!593470 (= e!339012 call!32873)))

(declare-fun bm!32870 () Bool)

(assert (=> bm!32870 (= call!32873 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!593471 () Bool)

(declare-fun e!339010 () Bool)

(assert (=> b!593471 (= e!339010 call!32873)))

(declare-fun b!593472 () Bool)

(assert (=> b!593472 (= e!339012 e!339010)))

(declare-fun lt!269478 () (_ BitVec 64))

(assert (=> b!593472 (= lt!269478 (select (arr!17719 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!269479 () Unit!18608)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36911 (_ BitVec 64) (_ BitVec 32)) Unit!18608)

(assert (=> b!593472 (= lt!269479 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!269478 #b00000000000000000000000000000000))))

(assert (=> b!593472 (arrayContainsKey!0 a!2986 lt!269478 #b00000000000000000000000000000000)))

(declare-fun lt!269480 () Unit!18608)

(assert (=> b!593472 (= lt!269480 lt!269479)))

(declare-fun res!379963 () Bool)

(assert (=> b!593472 (= res!379963 (= (seekEntryOrOpen!0 (select (arr!17719 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6166 #b00000000000000000000000000000000)))))

(assert (=> b!593472 (=> (not res!379963) (not e!339010))))

(declare-fun b!593473 () Bool)

(assert (=> b!593473 (= e!339011 e!339012)))

(declare-fun c!67121 () Bool)

(assert (=> b!593473 (= c!67121 (validKeyInArray!0 (select (arr!17719 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!86341 (not res!379962)) b!593473))

(assert (= (and b!593473 c!67121) b!593472))

(assert (= (and b!593473 (not c!67121)) b!593470))

(assert (= (and b!593472 res!379963) b!593471))

(assert (= (or b!593471 b!593470) bm!32870))

(declare-fun m!571455 () Bool)

(assert (=> bm!32870 m!571455))

(assert (=> b!593472 m!571389))

(declare-fun m!571457 () Bool)

(assert (=> b!593472 m!571457))

(declare-fun m!571459 () Bool)

(assert (=> b!593472 m!571459))

(assert (=> b!593472 m!571389))

(declare-fun m!571461 () Bool)

(assert (=> b!593472 m!571461))

(assert (=> b!593473 m!571389))

(assert (=> b!593473 m!571389))

(assert (=> b!593473 m!571393))

(assert (=> b!593290 d!86341))

(declare-fun b!593474 () Bool)

(declare-fun e!339015 () SeekEntryResult!6166)

(assert (=> b!593474 (= e!339015 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17719 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!593475 () Bool)

(declare-fun e!339014 () SeekEntryResult!6166)

(assert (=> b!593475 (= e!339014 (Found!6166 index!984))))

(declare-fun b!593476 () Bool)

(declare-fun e!339013 () SeekEntryResult!6166)

(assert (=> b!593476 (= e!339013 e!339014)))

(declare-fun c!67122 () Bool)

(declare-fun lt!269482 () (_ BitVec 64))

(assert (=> b!593476 (= c!67122 (= lt!269482 (select (arr!17719 a!2986) j!136)))))

(declare-fun lt!269481 () SeekEntryResult!6166)

(declare-fun d!86347 () Bool)

(assert (=> d!86347 (and (or ((_ is Undefined!6166) lt!269481) (not ((_ is Found!6166) lt!269481)) (and (bvsge (index!26906 lt!269481) #b00000000000000000000000000000000) (bvslt (index!26906 lt!269481) (size!18083 a!2986)))) (or ((_ is Undefined!6166) lt!269481) ((_ is Found!6166) lt!269481) (not ((_ is MissingVacant!6166) lt!269481)) (not (= (index!26908 lt!269481) vacantSpotIndex!68)) (and (bvsge (index!26908 lt!269481) #b00000000000000000000000000000000) (bvslt (index!26908 lt!269481) (size!18083 a!2986)))) (or ((_ is Undefined!6166) lt!269481) (ite ((_ is Found!6166) lt!269481) (= (select (arr!17719 a!2986) (index!26906 lt!269481)) (select (arr!17719 a!2986) j!136)) (and ((_ is MissingVacant!6166) lt!269481) (= (index!26908 lt!269481) vacantSpotIndex!68) (= (select (arr!17719 a!2986) (index!26908 lt!269481)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86347 (= lt!269481 e!339013)))

(declare-fun c!67124 () Bool)

(assert (=> d!86347 (= c!67124 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86347 (= lt!269482 (select (arr!17719 a!2986) index!984))))

(assert (=> d!86347 (validMask!0 mask!3053)))

(assert (=> d!86347 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17719 a!2986) j!136) a!2986 mask!3053) lt!269481)))

(declare-fun b!593477 () Bool)

(assert (=> b!593477 (= e!339013 Undefined!6166)))

(declare-fun b!593478 () Bool)

(declare-fun c!67123 () Bool)

(assert (=> b!593478 (= c!67123 (= lt!269482 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593478 (= e!339014 e!339015)))

(declare-fun b!593479 () Bool)

(assert (=> b!593479 (= e!339015 (MissingVacant!6166 vacantSpotIndex!68))))

(assert (= (and d!86347 c!67124) b!593477))

(assert (= (and d!86347 (not c!67124)) b!593476))

(assert (= (and b!593476 c!67122) b!593475))

(assert (= (and b!593476 (not c!67122)) b!593478))

(assert (= (and b!593478 c!67123) b!593479))

(assert (= (and b!593478 (not c!67123)) b!593474))

(assert (=> b!593474 m!571303))

(assert (=> b!593474 m!571303))

(assert (=> b!593474 m!571285))

(declare-fun m!571463 () Bool)

(assert (=> b!593474 m!571463))

(declare-fun m!571465 () Bool)

(assert (=> d!86347 m!571465))

(declare-fun m!571467 () Bool)

(assert (=> d!86347 m!571467))

(assert (=> d!86347 m!571321))

(assert (=> d!86347 m!571325))

(assert (=> b!593291 d!86347))

(declare-fun d!86349 () Bool)

(declare-fun res!379964 () Bool)

(declare-fun e!339016 () Bool)

(assert (=> d!86349 (=> res!379964 e!339016)))

(assert (=> d!86349 (= res!379964 (= (select (arr!17719 lt!269406) index!984) (select (arr!17719 a!2986) j!136)))))

(assert (=> d!86349 (= (arrayContainsKey!0 lt!269406 (select (arr!17719 a!2986) j!136) index!984) e!339016)))

(declare-fun b!593480 () Bool)

(declare-fun e!339017 () Bool)

(assert (=> b!593480 (= e!339016 e!339017)))

(declare-fun res!379965 () Bool)

(assert (=> b!593480 (=> (not res!379965) (not e!339017))))

(assert (=> b!593480 (= res!379965 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18083 lt!269406)))))

(declare-fun b!593481 () Bool)

(assert (=> b!593481 (= e!339017 (arrayContainsKey!0 lt!269406 (select (arr!17719 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!86349 (not res!379964)) b!593480))

(assert (= (and b!593480 res!379965) b!593481))

(assert (=> d!86349 m!571423))

(assert (=> b!593481 m!571285))

(declare-fun m!571469 () Bool)

(assert (=> b!593481 m!571469))

(assert (=> b!593302 d!86349))

(declare-fun d!86351 () Bool)

(declare-fun res!379966 () Bool)

(declare-fun e!339018 () Bool)

(assert (=> d!86351 (=> res!379966 e!339018)))

(assert (=> d!86351 (= res!379966 (= (select (arr!17719 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!86351 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!339018)))

(declare-fun b!593482 () Bool)

(declare-fun e!339019 () Bool)

(assert (=> b!593482 (= e!339018 e!339019)))

(declare-fun res!379967 () Bool)

(assert (=> b!593482 (=> (not res!379967) (not e!339019))))

(assert (=> b!593482 (= res!379967 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18083 a!2986)))))

(declare-fun b!593483 () Bool)

(assert (=> b!593483 (= e!339019 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!86351 (not res!379966)) b!593482))

(assert (= (and b!593482 res!379967) b!593483))

(assert (=> d!86351 m!571389))

(declare-fun m!571471 () Bool)

(assert (=> b!593483 m!571471))

(assert (=> b!593293 d!86351))

(declare-fun d!86353 () Bool)

(declare-fun res!379972 () Bool)

(declare-fun e!339030 () Bool)

(assert (=> d!86353 (=> res!379972 e!339030)))

(assert (=> d!86353 (= res!379972 ((_ is Nil!11810) Nil!11810))))

(assert (=> d!86353 (= (noDuplicate!233 Nil!11810) e!339030)))

(declare-fun b!593500 () Bool)

(declare-fun e!339031 () Bool)

(assert (=> b!593500 (= e!339030 e!339031)))

(declare-fun res!379973 () Bool)

(assert (=> b!593500 (=> (not res!379973) (not e!339031))))

(assert (=> b!593500 (= res!379973 (not (contains!2917 (t!18049 Nil!11810) (h!12854 Nil!11810))))))

(declare-fun b!593501 () Bool)

(assert (=> b!593501 (= e!339031 (noDuplicate!233 (t!18049 Nil!11810)))))

(assert (= (and d!86353 (not res!379972)) b!593500))

(assert (= (and b!593500 res!379973) b!593501))

(declare-fun m!571491 () Bool)

(assert (=> b!593500 m!571491))

(declare-fun m!571493 () Bool)

(assert (=> b!593501 m!571493))

(assert (=> b!593294 d!86353))

(declare-fun d!86359 () Bool)

(assert (=> d!86359 (= (validKeyInArray!0 (select (arr!17719 a!2986) j!136)) (and (not (= (select (arr!17719 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17719 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!593306 d!86359))

(declare-fun b!593573 () Bool)

(declare-fun e!339075 () SeekEntryResult!6166)

(declare-fun lt!269519 () SeekEntryResult!6166)

(assert (=> b!593573 (= e!339075 (seekKeyOrZeroReturnVacant!0 (x!55729 lt!269519) (index!26907 lt!269519) (index!26907 lt!269519) k0!1786 a!2986 mask!3053))))

(declare-fun b!593574 () Bool)

(declare-fun e!339073 () SeekEntryResult!6166)

(assert (=> b!593574 (= e!339073 (Found!6166 (index!26907 lt!269519)))))

(declare-fun b!593575 () Bool)

(declare-fun e!339074 () SeekEntryResult!6166)

(assert (=> b!593575 (= e!339074 Undefined!6166)))

(declare-fun d!86361 () Bool)

(declare-fun lt!269520 () SeekEntryResult!6166)

(assert (=> d!86361 (and (or ((_ is Undefined!6166) lt!269520) (not ((_ is Found!6166) lt!269520)) (and (bvsge (index!26906 lt!269520) #b00000000000000000000000000000000) (bvslt (index!26906 lt!269520) (size!18083 a!2986)))) (or ((_ is Undefined!6166) lt!269520) ((_ is Found!6166) lt!269520) (not ((_ is MissingZero!6166) lt!269520)) (and (bvsge (index!26905 lt!269520) #b00000000000000000000000000000000) (bvslt (index!26905 lt!269520) (size!18083 a!2986)))) (or ((_ is Undefined!6166) lt!269520) ((_ is Found!6166) lt!269520) ((_ is MissingZero!6166) lt!269520) (not ((_ is MissingVacant!6166) lt!269520)) (and (bvsge (index!26908 lt!269520) #b00000000000000000000000000000000) (bvslt (index!26908 lt!269520) (size!18083 a!2986)))) (or ((_ is Undefined!6166) lt!269520) (ite ((_ is Found!6166) lt!269520) (= (select (arr!17719 a!2986) (index!26906 lt!269520)) k0!1786) (ite ((_ is MissingZero!6166) lt!269520) (= (select (arr!17719 a!2986) (index!26905 lt!269520)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6166) lt!269520) (= (select (arr!17719 a!2986) (index!26908 lt!269520)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!86361 (= lt!269520 e!339074)))

(declare-fun c!67161 () Bool)

(assert (=> d!86361 (= c!67161 (and ((_ is Intermediate!6166) lt!269519) (undefined!6978 lt!269519)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36911 (_ BitVec 32)) SeekEntryResult!6166)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86361 (= lt!269519 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!86361 (validMask!0 mask!3053)))

(assert (=> d!86361 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!269520)))

(declare-fun b!593576 () Bool)

(assert (=> b!593576 (= e!339074 e!339073)))

(declare-fun lt!269518 () (_ BitVec 64))

(assert (=> b!593576 (= lt!269518 (select (arr!17719 a!2986) (index!26907 lt!269519)))))

(declare-fun c!67162 () Bool)

(assert (=> b!593576 (= c!67162 (= lt!269518 k0!1786))))

(declare-fun b!593577 () Bool)

(declare-fun c!67163 () Bool)

(assert (=> b!593577 (= c!67163 (= lt!269518 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593577 (= e!339073 e!339075)))

(declare-fun b!593578 () Bool)

(assert (=> b!593578 (= e!339075 (MissingZero!6166 (index!26907 lt!269519)))))

(assert (= (and d!86361 c!67161) b!593575))

(assert (= (and d!86361 (not c!67161)) b!593576))

(assert (= (and b!593576 c!67162) b!593574))

(assert (= (and b!593576 (not c!67162)) b!593577))

(assert (= (and b!593577 c!67163) b!593578))

(assert (= (and b!593577 (not c!67163)) b!593573))

(declare-fun m!571555 () Bool)

(assert (=> b!593573 m!571555))

(assert (=> d!86361 m!571325))

(declare-fun m!571557 () Bool)

(assert (=> d!86361 m!571557))

(declare-fun m!571559 () Bool)

(assert (=> d!86361 m!571559))

(declare-fun m!571561 () Bool)

(assert (=> d!86361 m!571561))

(declare-fun m!571563 () Bool)

(assert (=> d!86361 m!571563))

(assert (=> d!86361 m!571557))

(declare-fun m!571565 () Bool)

(assert (=> d!86361 m!571565))

(declare-fun m!571567 () Bool)

(assert (=> b!593576 m!571567))

(assert (=> b!593297 d!86361))

(check-sat (not d!86327) (not d!86323) (not b!593481) (not b!593378) (not b!593483) (not b!593422) (not d!86339) (not d!86331) (not b!593387) (not bm!32861) (not b!593500) (not b!593473) (not b!593474) (not d!86335) (not b!593472) (not bm!32870) (not b!593380) (not b!593377) (not b!593390) (not b!593409) (not b!593573) (not b!593403) (not d!86347) (not b!593501) (not b!593415) (not d!86361) (not d!86325))
(check-sat)
