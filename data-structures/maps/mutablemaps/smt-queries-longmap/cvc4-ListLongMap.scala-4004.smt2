; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54508 () Bool)

(assert start!54508)

(declare-fun res!380524 () Bool)

(declare-fun e!339609 () Bool)

(assert (=> start!54508 (=> (not res!380524) (not e!339609))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54508 (= res!380524 (validMask!0 mask!3053))))

(assert (=> start!54508 e!339609))

(assert (=> start!54508 true))

(declare-datatypes ((array!36931 0))(
  ( (array!36932 (arr!17726 (Array (_ BitVec 32) (_ BitVec 64))) (size!18090 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36931)

(declare-fun array_inv!13500 (array!36931) Bool)

(assert (=> start!54508 (array_inv!13500 a!2986)))

(declare-fun b!594385 () Bool)

(declare-datatypes ((Unit!18636 0))(
  ( (Unit!18637) )
))
(declare-fun e!339613 () Unit!18636)

(declare-fun Unit!18638 () Unit!18636)

(assert (=> b!594385 (= e!339613 Unit!18638)))

(declare-fun b!594386 () Bool)

(declare-fun e!339608 () Bool)

(declare-fun e!339619 () Bool)

(assert (=> b!594386 (= e!339608 e!339619)))

(declare-fun res!380514 () Bool)

(assert (=> b!594386 (=> (not res!380514) (not e!339619))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!269883 () array!36931)

(declare-fun arrayContainsKey!0 (array!36931 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!594386 (= res!380514 (arrayContainsKey!0 lt!269883 (select (arr!17726 a!2986) j!136) j!136))))

(declare-fun b!594387 () Bool)

(declare-fun res!380523 () Bool)

(assert (=> b!594387 (=> (not res!380523) (not e!339609))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!594387 (= res!380523 (and (= (size!18090 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18090 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18090 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!594388 () Bool)

(declare-fun e!339616 () Bool)

(declare-fun e!339615 () Bool)

(assert (=> b!594388 (= e!339616 e!339615)))

(declare-fun res!380519 () Bool)

(assert (=> b!594388 (=> res!380519 e!339615)))

(assert (=> b!594388 (= res!380519 (or (bvsge (size!18090 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18090 a!2986))))))

(assert (=> b!594388 (arrayContainsKey!0 lt!269883 (select (arr!17726 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269884 () Unit!18636)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36931 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18636)

(assert (=> b!594388 (= lt!269884 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269883 (select (arr!17726 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!594389 () Bool)

(declare-fun res!380528 () Bool)

(assert (=> b!594389 (=> res!380528 e!339615)))

(declare-datatypes ((List!11820 0))(
  ( (Nil!11817) (Cons!11816 (h!12861 (_ BitVec 64)) (t!18056 List!11820)) )
))
(declare-fun contains!2924 (List!11820 (_ BitVec 64)) Bool)

(assert (=> b!594389 (= res!380528 (contains!2924 Nil!11817 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594390 () Bool)

(declare-fun res!380515 () Bool)

(assert (=> b!594390 (=> (not res!380515) (not e!339609))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!594390 (= res!380515 (validKeyInArray!0 (select (arr!17726 a!2986) j!136)))))

(declare-fun b!594391 () Bool)

(declare-fun e!339607 () Bool)

(assert (=> b!594391 (= e!339609 e!339607)))

(declare-fun res!380522 () Bool)

(assert (=> b!594391 (=> (not res!380522) (not e!339607))))

(declare-datatypes ((SeekEntryResult!6173 0))(
  ( (MissingZero!6173 (index!26939 (_ BitVec 32))) (Found!6173 (index!26940 (_ BitVec 32))) (Intermediate!6173 (undefined!6985 Bool) (index!26941 (_ BitVec 32)) (x!55770 (_ BitVec 32))) (Undefined!6173) (MissingVacant!6173 (index!26942 (_ BitVec 32))) )
))
(declare-fun lt!269886 () SeekEntryResult!6173)

(assert (=> b!594391 (= res!380522 (or (= lt!269886 (MissingZero!6173 i!1108)) (= lt!269886 (MissingVacant!6173 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36931 (_ BitVec 32)) SeekEntryResult!6173)

(assert (=> b!594391 (= lt!269886 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!594392 () Bool)

(assert (=> b!594392 (= e!339619 (arrayContainsKey!0 lt!269883 (select (arr!17726 a!2986) j!136) index!984))))

(declare-fun b!594393 () Bool)

(declare-fun res!380517 () Bool)

(assert (=> b!594393 (=> (not res!380517) (not e!339607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36931 (_ BitVec 32)) Bool)

(assert (=> b!594393 (= res!380517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!594394 () Bool)

(declare-fun e!339617 () Bool)

(declare-fun lt!269882 () SeekEntryResult!6173)

(declare-fun lt!269881 () SeekEntryResult!6173)

(assert (=> b!594394 (= e!339617 (= lt!269882 lt!269881))))

(declare-fun b!594395 () Bool)

(declare-fun res!380526 () Bool)

(assert (=> b!594395 (=> (not res!380526) (not e!339607))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!594395 (= res!380526 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17726 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!594396 () Bool)

(declare-fun res!380527 () Bool)

(assert (=> b!594396 (=> (not res!380527) (not e!339607))))

(declare-fun arrayNoDuplicates!0 (array!36931 (_ BitVec 32) List!11820) Bool)

(assert (=> b!594396 (= res!380527 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11817))))

(declare-fun b!594397 () Bool)

(assert (=> b!594397 (= e!339615 true)))

(declare-fun lt!269889 () Bool)

(assert (=> b!594397 (= lt!269889 (contains!2924 Nil!11817 k!1786))))

(declare-fun b!594398 () Bool)

(declare-fun res!380531 () Bool)

(assert (=> b!594398 (=> (not res!380531) (not e!339609))))

(assert (=> b!594398 (= res!380531 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!594399 () Bool)

(declare-fun res!380525 () Bool)

(assert (=> b!594399 (=> (not res!380525) (not e!339609))))

(assert (=> b!594399 (= res!380525 (validKeyInArray!0 k!1786))))

(declare-fun b!594400 () Bool)

(declare-fun res!380530 () Bool)

(assert (=> b!594400 (=> res!380530 e!339615)))

(assert (=> b!594400 (= res!380530 (contains!2924 Nil!11817 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594401 () Bool)

(declare-fun e!339612 () Bool)

(declare-fun e!339610 () Bool)

(assert (=> b!594401 (= e!339612 (not e!339610))))

(declare-fun res!380518 () Bool)

(assert (=> b!594401 (=> res!380518 e!339610)))

(declare-fun lt!269885 () SeekEntryResult!6173)

(assert (=> b!594401 (= res!380518 (not (= lt!269885 (Found!6173 index!984))))))

(declare-fun lt!269890 () Unit!18636)

(assert (=> b!594401 (= lt!269890 e!339613)))

(declare-fun c!67304 () Bool)

(assert (=> b!594401 (= c!67304 (= lt!269885 Undefined!6173))))

(declare-fun lt!269892 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36931 (_ BitVec 32)) SeekEntryResult!6173)

(assert (=> b!594401 (= lt!269885 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269892 lt!269883 mask!3053))))

(assert (=> b!594401 e!339617))

(declare-fun res!380513 () Bool)

(assert (=> b!594401 (=> (not res!380513) (not e!339617))))

(declare-fun lt!269887 () (_ BitVec 32))

(assert (=> b!594401 (= res!380513 (= lt!269881 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269887 vacantSpotIndex!68 lt!269892 lt!269883 mask!3053)))))

(assert (=> b!594401 (= lt!269881 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269887 vacantSpotIndex!68 (select (arr!17726 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!594401 (= lt!269892 (select (store (arr!17726 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!269888 () Unit!18636)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36931 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18636)

(assert (=> b!594401 (= lt!269888 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269887 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!594401 (= lt!269887 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!594402 () Bool)

(assert (=> b!594402 (= e!339610 e!339616)))

(declare-fun res!380520 () Bool)

(assert (=> b!594402 (=> res!380520 e!339616)))

(declare-fun lt!269891 () (_ BitVec 64))

(assert (=> b!594402 (= res!380520 (or (not (= (select (arr!17726 a!2986) j!136) lt!269892)) (not (= (select (arr!17726 a!2986) j!136) lt!269891)) (bvsge j!136 index!984)))))

(declare-fun e!339614 () Bool)

(assert (=> b!594402 e!339614))

(declare-fun res!380529 () Bool)

(assert (=> b!594402 (=> (not res!380529) (not e!339614))))

(assert (=> b!594402 (= res!380529 (= lt!269891 (select (arr!17726 a!2986) j!136)))))

(assert (=> b!594402 (= lt!269891 (select (store (arr!17726 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!594403 () Bool)

(declare-fun res!380521 () Bool)

(assert (=> b!594403 (=> res!380521 e!339615)))

(declare-fun noDuplicate!240 (List!11820) Bool)

(assert (=> b!594403 (= res!380521 (not (noDuplicate!240 Nil!11817)))))

(declare-fun b!594404 () Bool)

(assert (=> b!594404 (= e!339614 e!339608)))

(declare-fun res!380511 () Bool)

(assert (=> b!594404 (=> res!380511 e!339608)))

(assert (=> b!594404 (= res!380511 (or (not (= (select (arr!17726 a!2986) j!136) lt!269892)) (not (= (select (arr!17726 a!2986) j!136) lt!269891)) (bvsge j!136 index!984)))))

(declare-fun b!594405 () Bool)

(declare-fun e!339611 () Bool)

(assert (=> b!594405 (= e!339607 e!339611)))

(declare-fun res!380516 () Bool)

(assert (=> b!594405 (=> (not res!380516) (not e!339611))))

(assert (=> b!594405 (= res!380516 (= (select (store (arr!17726 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594405 (= lt!269883 (array!36932 (store (arr!17726 a!2986) i!1108 k!1786) (size!18090 a!2986)))))

(declare-fun b!594406 () Bool)

(assert (=> b!594406 (= e!339611 e!339612)))

(declare-fun res!380512 () Bool)

(assert (=> b!594406 (=> (not res!380512) (not e!339612))))

(assert (=> b!594406 (= res!380512 (and (= lt!269882 (Found!6173 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17726 a!2986) index!984) (select (arr!17726 a!2986) j!136))) (not (= (select (arr!17726 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!594406 (= lt!269882 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17726 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!594407 () Bool)

(declare-fun Unit!18639 () Unit!18636)

(assert (=> b!594407 (= e!339613 Unit!18639)))

(assert (=> b!594407 false))

(assert (= (and start!54508 res!380524) b!594387))

(assert (= (and b!594387 res!380523) b!594390))

(assert (= (and b!594390 res!380515) b!594399))

(assert (= (and b!594399 res!380525) b!594398))

(assert (= (and b!594398 res!380531) b!594391))

(assert (= (and b!594391 res!380522) b!594393))

(assert (= (and b!594393 res!380517) b!594396))

(assert (= (and b!594396 res!380527) b!594395))

(assert (= (and b!594395 res!380526) b!594405))

(assert (= (and b!594405 res!380516) b!594406))

(assert (= (and b!594406 res!380512) b!594401))

(assert (= (and b!594401 res!380513) b!594394))

(assert (= (and b!594401 c!67304) b!594407))

(assert (= (and b!594401 (not c!67304)) b!594385))

(assert (= (and b!594401 (not res!380518)) b!594402))

(assert (= (and b!594402 res!380529) b!594404))

(assert (= (and b!594404 (not res!380511)) b!594386))

(assert (= (and b!594386 res!380514) b!594392))

(assert (= (and b!594402 (not res!380520)) b!594388))

(assert (= (and b!594388 (not res!380519)) b!594403))

(assert (= (and b!594403 (not res!380521)) b!594400))

(assert (= (and b!594400 (not res!380530)) b!594389))

(assert (= (and b!594389 (not res!380528)) b!594397))

(declare-fun m!572219 () Bool)

(assert (=> b!594393 m!572219))

(declare-fun m!572221 () Bool)

(assert (=> b!594406 m!572221))

(declare-fun m!572223 () Bool)

(assert (=> b!594406 m!572223))

(assert (=> b!594406 m!572223))

(declare-fun m!572225 () Bool)

(assert (=> b!594406 m!572225))

(declare-fun m!572227 () Bool)

(assert (=> b!594399 m!572227))

(assert (=> b!594402 m!572223))

(declare-fun m!572229 () Bool)

(assert (=> b!594402 m!572229))

(declare-fun m!572231 () Bool)

(assert (=> b!594402 m!572231))

(declare-fun m!572233 () Bool)

(assert (=> b!594396 m!572233))

(declare-fun m!572235 () Bool)

(assert (=> b!594401 m!572235))

(declare-fun m!572237 () Bool)

(assert (=> b!594401 m!572237))

(assert (=> b!594401 m!572223))

(assert (=> b!594401 m!572229))

(declare-fun m!572239 () Bool)

(assert (=> b!594401 m!572239))

(declare-fun m!572241 () Bool)

(assert (=> b!594401 m!572241))

(assert (=> b!594401 m!572223))

(declare-fun m!572243 () Bool)

(assert (=> b!594401 m!572243))

(declare-fun m!572245 () Bool)

(assert (=> b!594401 m!572245))

(assert (=> b!594386 m!572223))

(assert (=> b!594386 m!572223))

(declare-fun m!572247 () Bool)

(assert (=> b!594386 m!572247))

(declare-fun m!572249 () Bool)

(assert (=> b!594397 m!572249))

(declare-fun m!572251 () Bool)

(assert (=> b!594400 m!572251))

(declare-fun m!572253 () Bool)

(assert (=> start!54508 m!572253))

(declare-fun m!572255 () Bool)

(assert (=> start!54508 m!572255))

(assert (=> b!594405 m!572229))

(declare-fun m!572257 () Bool)

(assert (=> b!594405 m!572257))

(declare-fun m!572259 () Bool)

(assert (=> b!594398 m!572259))

(declare-fun m!572261 () Bool)

(assert (=> b!594403 m!572261))

(declare-fun m!572263 () Bool)

(assert (=> b!594395 m!572263))

(assert (=> b!594404 m!572223))

(assert (=> b!594388 m!572223))

(assert (=> b!594388 m!572223))

(declare-fun m!572265 () Bool)

(assert (=> b!594388 m!572265))

(assert (=> b!594388 m!572223))

(declare-fun m!572267 () Bool)

(assert (=> b!594388 m!572267))

(declare-fun m!572269 () Bool)

(assert (=> b!594391 m!572269))

(assert (=> b!594392 m!572223))

(assert (=> b!594392 m!572223))

(declare-fun m!572271 () Bool)

(assert (=> b!594392 m!572271))

(declare-fun m!572273 () Bool)

(assert (=> b!594389 m!572273))

(assert (=> b!594390 m!572223))

(assert (=> b!594390 m!572223))

(declare-fun m!572275 () Bool)

(assert (=> b!594390 m!572275))

(push 1)

