; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54568 () Bool)

(assert start!54568)

(declare-fun b!596455 () Bool)

(declare-fun res!382412 () Bool)

(declare-fun e!340778 () Bool)

(assert (=> b!596455 (=> (not res!382412) (not e!340778))))

(declare-datatypes ((array!36991 0))(
  ( (array!36992 (arr!17756 (Array (_ BitVec 32) (_ BitVec 64))) (size!18120 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36991)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!596455 (= res!382412 (validKeyInArray!0 (select (arr!17756 a!2986) j!136)))))

(declare-fun b!596456 () Bool)

(declare-fun res!382420 () Bool)

(declare-fun e!340788 () Bool)

(assert (=> b!596456 (=> (not res!382420) (not e!340788))))

(declare-datatypes ((List!11850 0))(
  ( (Nil!11847) (Cons!11846 (h!12891 (_ BitVec 64)) (t!18086 List!11850)) )
))
(declare-fun arrayNoDuplicates!0 (array!36991 (_ BitVec 32) List!11850) Bool)

(assert (=> b!596456 (= res!382420 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11847))))

(declare-fun b!596457 () Bool)

(declare-datatypes ((Unit!18756 0))(
  ( (Unit!18757) )
))
(declare-fun e!340789 () Unit!18756)

(declare-fun Unit!18758 () Unit!18756)

(assert (=> b!596457 (= e!340789 Unit!18758)))

(declare-fun b!596458 () Bool)

(declare-fun res!382413 () Bool)

(declare-fun e!340784 () Bool)

(assert (=> b!596458 (=> res!382413 e!340784)))

(declare-fun noDuplicate!270 (List!11850) Bool)

(assert (=> b!596458 (= res!382413 (not (noDuplicate!270 Nil!11847)))))

(declare-fun b!596459 () Bool)

(assert (=> b!596459 (= e!340778 e!340788)))

(declare-fun res!382403 () Bool)

(assert (=> b!596459 (=> (not res!382403) (not e!340788))))

(declare-datatypes ((SeekEntryResult!6203 0))(
  ( (MissingZero!6203 (index!27059 (_ BitVec 32))) (Found!6203 (index!27060 (_ BitVec 32))) (Intermediate!6203 (undefined!7015 Bool) (index!27061 (_ BitVec 32)) (x!55880 (_ BitVec 32))) (Undefined!6203) (MissingVacant!6203 (index!27062 (_ BitVec 32))) )
))
(declare-fun lt!270963 () SeekEntryResult!6203)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!596459 (= res!382403 (or (= lt!270963 (MissingZero!6203 i!1108)) (= lt!270963 (MissingVacant!6203 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36991 (_ BitVec 32)) SeekEntryResult!6203)

(assert (=> b!596459 (= lt!270963 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!596460 () Bool)

(assert (=> b!596460 (= e!340784 true)))

(declare-fun lt!270969 () Bool)

(declare-fun contains!2954 (List!11850 (_ BitVec 64)) Bool)

(assert (=> b!596460 (= lt!270969 (contains!2954 Nil!11847 k!1786))))

(declare-fun b!596461 () Bool)

(declare-fun res!382409 () Bool)

(assert (=> b!596461 (=> (not res!382409) (not e!340778))))

(assert (=> b!596461 (= res!382409 (and (= (size!18120 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18120 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18120 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!596462 () Bool)

(declare-fun e!340785 () Bool)

(assert (=> b!596462 (= e!340785 e!340784)))

(declare-fun res!382414 () Bool)

(assert (=> b!596462 (=> res!382414 e!340784)))

(assert (=> b!596462 (= res!382414 (or (bvsge (size!18120 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18120 a!2986))))))

(declare-fun lt!270966 () array!36991)

(declare-fun arrayContainsKey!0 (array!36991 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!596462 (arrayContainsKey!0 lt!270966 (select (arr!17756 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270971 () Unit!18756)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36991 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18756)

(assert (=> b!596462 (= lt!270971 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270966 (select (arr!17756 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!596463 () Bool)

(declare-fun res!382416 () Bool)

(assert (=> b!596463 (=> (not res!382416) (not e!340788))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!596463 (= res!382416 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17756 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!382415 () Bool)

(assert (=> start!54568 (=> (not res!382415) (not e!340778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54568 (= res!382415 (validMask!0 mask!3053))))

(assert (=> start!54568 e!340778))

(assert (=> start!54568 true))

(declare-fun array_inv!13530 (array!36991) Bool)

(assert (=> start!54568 (array_inv!13530 a!2986)))

(declare-fun b!596464 () Bool)

(declare-fun Unit!18759 () Unit!18756)

(assert (=> b!596464 (= e!340789 Unit!18759)))

(assert (=> b!596464 false))

(declare-fun b!596465 () Bool)

(declare-fun e!340786 () Bool)

(assert (=> b!596465 (= e!340788 e!340786)))

(declare-fun res!382407 () Bool)

(assert (=> b!596465 (=> (not res!382407) (not e!340786))))

(assert (=> b!596465 (= res!382407 (= (select (store (arr!17756 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!596465 (= lt!270966 (array!36992 (store (arr!17756 a!2986) i!1108 k!1786) (size!18120 a!2986)))))

(declare-fun b!596466 () Bool)

(declare-fun e!340782 () Bool)

(declare-fun e!340787 () Bool)

(assert (=> b!596466 (= e!340782 (not e!340787))))

(declare-fun res!382405 () Bool)

(assert (=> b!596466 (=> res!382405 e!340787)))

(declare-fun lt!270970 () SeekEntryResult!6203)

(assert (=> b!596466 (= res!382405 (not (= lt!270970 (Found!6203 index!984))))))

(declare-fun lt!270962 () Unit!18756)

(assert (=> b!596466 (= lt!270962 e!340789)))

(declare-fun c!67394 () Bool)

(assert (=> b!596466 (= c!67394 (= lt!270970 Undefined!6203))))

(declare-fun lt!270967 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36991 (_ BitVec 32)) SeekEntryResult!6203)

(assert (=> b!596466 (= lt!270970 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270967 lt!270966 mask!3053))))

(declare-fun e!340783 () Bool)

(assert (=> b!596466 e!340783))

(declare-fun res!382402 () Bool)

(assert (=> b!596466 (=> (not res!382402) (not e!340783))))

(declare-fun lt!270968 () SeekEntryResult!6203)

(declare-fun lt!270964 () (_ BitVec 32))

(assert (=> b!596466 (= res!382402 (= lt!270968 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270964 vacantSpotIndex!68 lt!270967 lt!270966 mask!3053)))))

(assert (=> b!596466 (= lt!270968 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270964 vacantSpotIndex!68 (select (arr!17756 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!596466 (= lt!270967 (select (store (arr!17756 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270972 () Unit!18756)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36991 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18756)

(assert (=> b!596466 (= lt!270972 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270964 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!596466 (= lt!270964 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!596467 () Bool)

(declare-fun lt!270965 () SeekEntryResult!6203)

(assert (=> b!596467 (= e!340783 (= lt!270965 lt!270968))))

(declare-fun b!596468 () Bool)

(declare-fun res!382411 () Bool)

(assert (=> b!596468 (=> (not res!382411) (not e!340788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36991 (_ BitVec 32)) Bool)

(assert (=> b!596468 (= res!382411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun e!340780 () Bool)

(declare-fun b!596469 () Bool)

(assert (=> b!596469 (= e!340780 (arrayContainsKey!0 lt!270966 (select (arr!17756 a!2986) j!136) index!984))))

(declare-fun b!596470 () Bool)

(declare-fun res!382421 () Bool)

(assert (=> b!596470 (=> res!382421 e!340784)))

(assert (=> b!596470 (= res!382421 (contains!2954 Nil!11847 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!596471 () Bool)

(declare-fun e!340779 () Bool)

(assert (=> b!596471 (= e!340779 e!340780)))

(declare-fun res!382404 () Bool)

(assert (=> b!596471 (=> (not res!382404) (not e!340780))))

(assert (=> b!596471 (= res!382404 (arrayContainsKey!0 lt!270966 (select (arr!17756 a!2986) j!136) j!136))))

(declare-fun b!596472 () Bool)

(assert (=> b!596472 (= e!340786 e!340782)))

(declare-fun res!382406 () Bool)

(assert (=> b!596472 (=> (not res!382406) (not e!340782))))

(assert (=> b!596472 (= res!382406 (and (= lt!270965 (Found!6203 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17756 a!2986) index!984) (select (arr!17756 a!2986) j!136))) (not (= (select (arr!17756 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!596472 (= lt!270965 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17756 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!596473 () Bool)

(declare-fun res!382418 () Bool)

(assert (=> b!596473 (=> (not res!382418) (not e!340778))))

(assert (=> b!596473 (= res!382418 (validKeyInArray!0 k!1786))))

(declare-fun b!596474 () Bool)

(assert (=> b!596474 (= e!340787 e!340785)))

(declare-fun res!382401 () Bool)

(assert (=> b!596474 (=> res!382401 e!340785)))

(declare-fun lt!270961 () (_ BitVec 64))

(assert (=> b!596474 (= res!382401 (or (not (= (select (arr!17756 a!2986) j!136) lt!270967)) (not (= (select (arr!17756 a!2986) j!136) lt!270961)) (bvsge j!136 index!984)))))

(declare-fun e!340781 () Bool)

(assert (=> b!596474 e!340781))

(declare-fun res!382408 () Bool)

(assert (=> b!596474 (=> (not res!382408) (not e!340781))))

(assert (=> b!596474 (= res!382408 (= lt!270961 (select (arr!17756 a!2986) j!136)))))

(assert (=> b!596474 (= lt!270961 (select (store (arr!17756 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!596475 () Bool)

(declare-fun res!382410 () Bool)

(assert (=> b!596475 (=> (not res!382410) (not e!340778))))

(assert (=> b!596475 (= res!382410 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!596476 () Bool)

(assert (=> b!596476 (= e!340781 e!340779)))

(declare-fun res!382417 () Bool)

(assert (=> b!596476 (=> res!382417 e!340779)))

(assert (=> b!596476 (= res!382417 (or (not (= (select (arr!17756 a!2986) j!136) lt!270967)) (not (= (select (arr!17756 a!2986) j!136) lt!270961)) (bvsge j!136 index!984)))))

(declare-fun b!596477 () Bool)

(declare-fun res!382419 () Bool)

(assert (=> b!596477 (=> res!382419 e!340784)))

(assert (=> b!596477 (= res!382419 (contains!2954 Nil!11847 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!54568 res!382415) b!596461))

(assert (= (and b!596461 res!382409) b!596455))

(assert (= (and b!596455 res!382412) b!596473))

(assert (= (and b!596473 res!382418) b!596475))

(assert (= (and b!596475 res!382410) b!596459))

(assert (= (and b!596459 res!382403) b!596468))

(assert (= (and b!596468 res!382411) b!596456))

(assert (= (and b!596456 res!382420) b!596463))

(assert (= (and b!596463 res!382416) b!596465))

(assert (= (and b!596465 res!382407) b!596472))

(assert (= (and b!596472 res!382406) b!596466))

(assert (= (and b!596466 res!382402) b!596467))

(assert (= (and b!596466 c!67394) b!596464))

(assert (= (and b!596466 (not c!67394)) b!596457))

(assert (= (and b!596466 (not res!382405)) b!596474))

(assert (= (and b!596474 res!382408) b!596476))

(assert (= (and b!596476 (not res!382417)) b!596471))

(assert (= (and b!596471 res!382404) b!596469))

(assert (= (and b!596474 (not res!382401)) b!596462))

(assert (= (and b!596462 (not res!382414)) b!596458))

(assert (= (and b!596458 (not res!382413)) b!596470))

(assert (= (and b!596470 (not res!382421)) b!596477))

(assert (= (and b!596477 (not res!382419)) b!596460))

(declare-fun m!573959 () Bool)

(assert (=> b!596463 m!573959))

(declare-fun m!573961 () Bool)

(assert (=> b!596466 m!573961))

(declare-fun m!573963 () Bool)

(assert (=> b!596466 m!573963))

(declare-fun m!573965 () Bool)

(assert (=> b!596466 m!573965))

(declare-fun m!573967 () Bool)

(assert (=> b!596466 m!573967))

(declare-fun m!573969 () Bool)

(assert (=> b!596466 m!573969))

(declare-fun m!573971 () Bool)

(assert (=> b!596466 m!573971))

(assert (=> b!596466 m!573967))

(declare-fun m!573973 () Bool)

(assert (=> b!596466 m!573973))

(declare-fun m!573975 () Bool)

(assert (=> b!596466 m!573975))

(declare-fun m!573977 () Bool)

(assert (=> b!596459 m!573977))

(assert (=> b!596469 m!573967))

(assert (=> b!596469 m!573967))

(declare-fun m!573979 () Bool)

(assert (=> b!596469 m!573979))

(declare-fun m!573981 () Bool)

(assert (=> b!596460 m!573981))

(declare-fun m!573983 () Bool)

(assert (=> b!596477 m!573983))

(declare-fun m!573985 () Bool)

(assert (=> b!596456 m!573985))

(assert (=> b!596462 m!573967))

(assert (=> b!596462 m!573967))

(declare-fun m!573987 () Bool)

(assert (=> b!596462 m!573987))

(assert (=> b!596462 m!573967))

(declare-fun m!573989 () Bool)

(assert (=> b!596462 m!573989))

(assert (=> b!596474 m!573967))

(assert (=> b!596474 m!573971))

(declare-fun m!573991 () Bool)

(assert (=> b!596474 m!573991))

(assert (=> b!596465 m!573971))

(declare-fun m!573993 () Bool)

(assert (=> b!596465 m!573993))

(declare-fun m!573995 () Bool)

(assert (=> b!596470 m!573995))

(assert (=> b!596455 m!573967))

(assert (=> b!596455 m!573967))

(declare-fun m!573997 () Bool)

(assert (=> b!596455 m!573997))

(declare-fun m!573999 () Bool)

(assert (=> b!596475 m!573999))

(declare-fun m!574001 () Bool)

(assert (=> b!596472 m!574001))

(assert (=> b!596472 m!573967))

(assert (=> b!596472 m!573967))

(declare-fun m!574003 () Bool)

(assert (=> b!596472 m!574003))

(declare-fun m!574005 () Bool)

(assert (=> b!596468 m!574005))

(declare-fun m!574007 () Bool)

(assert (=> start!54568 m!574007))

(declare-fun m!574009 () Bool)

(assert (=> start!54568 m!574009))

(declare-fun m!574011 () Bool)

(assert (=> b!596473 m!574011))

(assert (=> b!596471 m!573967))

(assert (=> b!596471 m!573967))

(declare-fun m!574013 () Bool)

(assert (=> b!596471 m!574013))

(assert (=> b!596476 m!573967))

(declare-fun m!574015 () Bool)

(assert (=> b!596458 m!574015))

(push 1)

