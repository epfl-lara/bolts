; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56140 () Bool)

(assert start!56140)

(declare-fun b!620031 () Bool)

(assert (=> b!620031 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((Unit!20580 0))(
  ( (Unit!20581) )
))
(declare-fun lt!286528 () Unit!20580)

(declare-datatypes ((array!37573 0))(
  ( (array!37574 (arr!18029 (Array (_ BitVec 32) (_ BitVec 64))) (size!18393 (_ BitVec 32))) )
))
(declare-fun lt!286524 () array!37573)

(declare-fun a!2986 () array!37573)

(declare-datatypes ((List!12123 0))(
  ( (Nil!12120) (Cons!12119 (h!13164 (_ BitVec 64)) (t!18359 List!12123)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37573 (_ BitVec 64) (_ BitVec 32) List!12123) Unit!20580)

(assert (=> b!620031 (= lt!286528 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286524 (select (arr!18029 a!2986) j!136) j!136 Nil!12120))))

(declare-fun arrayNoDuplicates!0 (array!37573 (_ BitVec 32) List!12123) Bool)

(assert (=> b!620031 (arrayNoDuplicates!0 lt!286524 j!136 Nil!12120)))

(declare-fun lt!286523 () Unit!20580)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37573 (_ BitVec 32) (_ BitVec 32)) Unit!20580)

(assert (=> b!620031 (= lt!286523 (lemmaNoDuplicateFromThenFromBigger!0 lt!286524 #b00000000000000000000000000000000 j!136))))

(assert (=> b!620031 (arrayNoDuplicates!0 lt!286524 #b00000000000000000000000000000000 Nil!12120)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!286530 () Unit!20580)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37573 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12123) Unit!20580)

(assert (=> b!620031 (= lt!286530 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12120))))

(declare-fun arrayContainsKey!0 (array!37573 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!620031 (arrayContainsKey!0 lt!286524 (select (arr!18029 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!286529 () Unit!20580)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37573 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20580)

(assert (=> b!620031 (= lt!286529 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286524 (select (arr!18029 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!355626 () Unit!20580)

(declare-fun Unit!20582 () Unit!20580)

(assert (=> b!620031 (= e!355626 Unit!20582)))

(declare-fun b!620032 () Bool)

(declare-fun res!399631 () Bool)

(declare-fun e!355622 () Bool)

(assert (=> b!620032 (=> (not res!399631) (not e!355622))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37573 (_ BitVec 32)) Bool)

(assert (=> b!620032 (= res!399631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!620033 () Bool)

(declare-fun e!355621 () Unit!20580)

(declare-fun Unit!20583 () Unit!20580)

(assert (=> b!620033 (= e!355621 Unit!20583)))

(assert (=> b!620033 false))

(declare-fun b!620034 () Bool)

(assert (=> b!620034 false))

(declare-fun lt!286525 () Unit!20580)

(assert (=> b!620034 (= lt!286525 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286524 (select (arr!18029 a!2986) j!136) index!984 Nil!12120))))

(assert (=> b!620034 (arrayNoDuplicates!0 lt!286524 index!984 Nil!12120)))

(declare-fun lt!286517 () Unit!20580)

(assert (=> b!620034 (= lt!286517 (lemmaNoDuplicateFromThenFromBigger!0 lt!286524 #b00000000000000000000000000000000 index!984))))

(assert (=> b!620034 (arrayNoDuplicates!0 lt!286524 #b00000000000000000000000000000000 Nil!12120)))

(declare-fun lt!286536 () Unit!20580)

(assert (=> b!620034 (= lt!286536 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12120))))

(assert (=> b!620034 (arrayContainsKey!0 lt!286524 (select (arr!18029 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!286535 () Unit!20580)

(assert (=> b!620034 (= lt!286535 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286524 (select (arr!18029 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!355624 () Bool)

(assert (=> b!620034 e!355624))

(declare-fun res!399644 () Bool)

(assert (=> b!620034 (=> (not res!399644) (not e!355624))))

(assert (=> b!620034 (= res!399644 (arrayContainsKey!0 lt!286524 (select (arr!18029 a!2986) j!136) j!136))))

(declare-fun e!355617 () Unit!20580)

(declare-fun Unit!20584 () Unit!20580)

(assert (=> b!620034 (= e!355617 Unit!20584)))

(declare-fun b!620035 () Bool)

(declare-fun e!355623 () Bool)

(declare-datatypes ((SeekEntryResult!6476 0))(
  ( (MissingZero!6476 (index!28187 (_ BitVec 32))) (Found!6476 (index!28188 (_ BitVec 32))) (Intermediate!6476 (undefined!7288 Bool) (index!28189 (_ BitVec 32)) (x!56989 (_ BitVec 32))) (Undefined!6476) (MissingVacant!6476 (index!28190 (_ BitVec 32))) )
))
(declare-fun lt!286518 () SeekEntryResult!6476)

(declare-fun lt!286531 () SeekEntryResult!6476)

(assert (=> b!620035 (= e!355623 (= lt!286518 lt!286531))))

(declare-fun b!620036 () Bool)

(declare-fun e!355620 () Bool)

(declare-fun e!355616 () Bool)

(assert (=> b!620036 (= e!355620 e!355616)))

(declare-fun res!399638 () Bool)

(assert (=> b!620036 (=> (not res!399638) (not e!355616))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!620036 (= res!399638 (and (= lt!286518 (Found!6476 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18029 a!2986) index!984) (select (arr!18029 a!2986) j!136))) (not (= (select (arr!18029 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37573 (_ BitVec 32)) SeekEntryResult!6476)

(assert (=> b!620036 (= lt!286518 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18029 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!620037 () Bool)

(declare-fun res!399642 () Bool)

(assert (=> b!620037 (=> (not res!399642) (not e!355622))))

(assert (=> b!620037 (= res!399642 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18029 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!620038 () Bool)

(declare-fun e!355627 () Bool)

(assert (=> b!620038 (= e!355627 e!355622)))

(declare-fun res!399637 () Bool)

(assert (=> b!620038 (=> (not res!399637) (not e!355622))))

(declare-fun lt!286519 () SeekEntryResult!6476)

(assert (=> b!620038 (= res!399637 (or (= lt!286519 (MissingZero!6476 i!1108)) (= lt!286519 (MissingVacant!6476 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37573 (_ BitVec 32)) SeekEntryResult!6476)

(assert (=> b!620038 (= lt!286519 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!620039 () Bool)

(declare-fun e!355615 () Unit!20580)

(declare-fun Unit!20585 () Unit!20580)

(assert (=> b!620039 (= e!355615 Unit!20585)))

(declare-fun res!399629 () Bool)

(assert (=> b!620039 (= res!399629 (= (select (store (arr!18029 a!2986) i!1108 k!1786) index!984) (select (arr!18029 a!2986) j!136)))))

(declare-fun e!355625 () Bool)

(assert (=> b!620039 (=> (not res!399629) (not e!355625))))

(assert (=> b!620039 e!355625))

(declare-fun c!70570 () Bool)

(assert (=> b!620039 (= c!70570 (bvslt j!136 index!984))))

(declare-fun lt!286522 () Unit!20580)

(assert (=> b!620039 (= lt!286522 e!355626)))

(declare-fun c!70568 () Bool)

(assert (=> b!620039 (= c!70568 (bvslt index!984 j!136))))

(declare-fun lt!286526 () Unit!20580)

(assert (=> b!620039 (= lt!286526 e!355617)))

(assert (=> b!620039 false))

(declare-fun b!620040 () Bool)

(declare-fun res!399630 () Bool)

(assert (=> b!620040 (=> (not res!399630) (not e!355627))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!620040 (= res!399630 (validKeyInArray!0 (select (arr!18029 a!2986) j!136)))))

(declare-fun b!620041 () Bool)

(declare-fun Unit!20586 () Unit!20580)

(assert (=> b!620041 (= e!355621 Unit!20586)))

(declare-fun b!620042 () Bool)

(declare-fun res!399634 () Bool)

(assert (=> b!620042 (= res!399634 (arrayContainsKey!0 lt!286524 (select (arr!18029 a!2986) j!136) j!136))))

(declare-fun e!355619 () Bool)

(assert (=> b!620042 (=> (not res!399634) (not e!355619))))

(declare-fun e!355614 () Bool)

(assert (=> b!620042 (= e!355614 e!355619)))

(declare-fun b!620043 () Bool)

(declare-fun res!399636 () Bool)

(assert (=> b!620043 (=> (not res!399636) (not e!355627))))

(assert (=> b!620043 (= res!399636 (and (= (size!18393 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18393 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18393 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!399632 () Bool)

(assert (=> start!56140 (=> (not res!399632) (not e!355627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56140 (= res!399632 (validMask!0 mask!3053))))

(assert (=> start!56140 e!355627))

(assert (=> start!56140 true))

(declare-fun array_inv!13803 (array!37573) Bool)

(assert (=> start!56140 (array_inv!13803 a!2986)))

(declare-fun b!620044 () Bool)

(declare-fun Unit!20587 () Unit!20580)

(assert (=> b!620044 (= e!355615 Unit!20587)))

(declare-fun b!620045 () Bool)

(assert (=> b!620045 (= e!355622 e!355620)))

(declare-fun res!399635 () Bool)

(assert (=> b!620045 (=> (not res!399635) (not e!355620))))

(assert (=> b!620045 (= res!399635 (= (select (store (arr!18029 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!620045 (= lt!286524 (array!37574 (store (arr!18029 a!2986) i!1108 k!1786) (size!18393 a!2986)))))

(declare-fun b!620046 () Bool)

(declare-fun res!399643 () Bool)

(assert (=> b!620046 (=> (not res!399643) (not e!355627))))

(assert (=> b!620046 (= res!399643 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!620047 () Bool)

(assert (=> b!620047 (= e!355624 (arrayContainsKey!0 lt!286524 (select (arr!18029 a!2986) j!136) index!984))))

(declare-fun b!620048 () Bool)

(declare-fun Unit!20588 () Unit!20580)

(assert (=> b!620048 (= e!355626 Unit!20588)))

(declare-fun b!620049 () Bool)

(assert (=> b!620049 (= e!355616 (not true))))

(declare-fun lt!286532 () Unit!20580)

(assert (=> b!620049 (= lt!286532 e!355615)))

(declare-fun c!70569 () Bool)

(declare-fun lt!286527 () SeekEntryResult!6476)

(assert (=> b!620049 (= c!70569 (= lt!286527 (Found!6476 index!984)))))

(declare-fun lt!286520 () Unit!20580)

(assert (=> b!620049 (= lt!286520 e!355621)))

(declare-fun c!70571 () Bool)

(assert (=> b!620049 (= c!70571 (= lt!286527 Undefined!6476))))

(declare-fun lt!286533 () (_ BitVec 64))

(assert (=> b!620049 (= lt!286527 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!286533 lt!286524 mask!3053))))

(assert (=> b!620049 e!355623))

(declare-fun res!399633 () Bool)

(assert (=> b!620049 (=> (not res!399633) (not e!355623))))

(declare-fun lt!286521 () (_ BitVec 32))

(assert (=> b!620049 (= res!399633 (= lt!286531 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286521 vacantSpotIndex!68 lt!286533 lt!286524 mask!3053)))))

(assert (=> b!620049 (= lt!286531 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286521 vacantSpotIndex!68 (select (arr!18029 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!620049 (= lt!286533 (select (store (arr!18029 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!286534 () Unit!20580)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37573 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20580)

(assert (=> b!620049 (= lt!286534 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!286521 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!620049 (= lt!286521 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!620050 () Bool)

(declare-fun res!399639 () Bool)

(assert (=> b!620050 (=> (not res!399639) (not e!355627))))

(assert (=> b!620050 (= res!399639 (validKeyInArray!0 k!1786))))

(declare-fun b!620051 () Bool)

(assert (=> b!620051 (= e!355619 (arrayContainsKey!0 lt!286524 (select (arr!18029 a!2986) j!136) index!984))))

(declare-fun b!620052 () Bool)

(declare-fun res!399640 () Bool)

(assert (=> b!620052 (=> (not res!399640) (not e!355622))))

(assert (=> b!620052 (= res!399640 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12120))))

(declare-fun b!620053 () Bool)

(declare-fun res!399641 () Bool)

(assert (=> b!620053 (= res!399641 (bvsge j!136 index!984))))

(assert (=> b!620053 (=> res!399641 e!355614)))

(assert (=> b!620053 (= e!355625 e!355614)))

(declare-fun b!620054 () Bool)

(declare-fun Unit!20589 () Unit!20580)

(assert (=> b!620054 (= e!355617 Unit!20589)))

(assert (= (and start!56140 res!399632) b!620043))

(assert (= (and b!620043 res!399636) b!620040))

(assert (= (and b!620040 res!399630) b!620050))

(assert (= (and b!620050 res!399639) b!620046))

(assert (= (and b!620046 res!399643) b!620038))

(assert (= (and b!620038 res!399637) b!620032))

(assert (= (and b!620032 res!399631) b!620052))

(assert (= (and b!620052 res!399640) b!620037))

(assert (= (and b!620037 res!399642) b!620045))

(assert (= (and b!620045 res!399635) b!620036))

(assert (= (and b!620036 res!399638) b!620049))

(assert (= (and b!620049 res!399633) b!620035))

(assert (= (and b!620049 c!70571) b!620033))

(assert (= (and b!620049 (not c!70571)) b!620041))

(assert (= (and b!620049 c!70569) b!620039))

(assert (= (and b!620049 (not c!70569)) b!620044))

(assert (= (and b!620039 res!399629) b!620053))

(assert (= (and b!620053 (not res!399641)) b!620042))

(assert (= (and b!620042 res!399634) b!620051))

(assert (= (and b!620039 c!70570) b!620031))

(assert (= (and b!620039 (not c!70570)) b!620048))

(assert (= (and b!620039 c!70568) b!620034))

(assert (= (and b!620039 (not c!70568)) b!620054))

(assert (= (and b!620034 res!399644) b!620047))

(declare-fun m!596009 () Bool)

(assert (=> b!620050 m!596009))

(declare-fun m!596011 () Bool)

(assert (=> b!620031 m!596011))

(declare-fun m!596013 () Bool)

(assert (=> b!620031 m!596013))

(assert (=> b!620031 m!596011))

(assert (=> b!620031 m!596011))

(declare-fun m!596015 () Bool)

(assert (=> b!620031 m!596015))

(declare-fun m!596017 () Bool)

(assert (=> b!620031 m!596017))

(assert (=> b!620031 m!596011))

(declare-fun m!596019 () Bool)

(assert (=> b!620031 m!596019))

(declare-fun m!596021 () Bool)

(assert (=> b!620031 m!596021))

(declare-fun m!596023 () Bool)

(assert (=> b!620031 m!596023))

(declare-fun m!596025 () Bool)

(assert (=> b!620031 m!596025))

(declare-fun m!596027 () Bool)

(assert (=> start!56140 m!596027))

(declare-fun m!596029 () Bool)

(assert (=> start!56140 m!596029))

(declare-fun m!596031 () Bool)

(assert (=> b!620037 m!596031))

(declare-fun m!596033 () Bool)

(assert (=> b!620038 m!596033))

(declare-fun m!596035 () Bool)

(assert (=> b!620032 m!596035))

(declare-fun m!596037 () Bool)

(assert (=> b!620036 m!596037))

(assert (=> b!620036 m!596011))

(assert (=> b!620036 m!596011))

(declare-fun m!596039 () Bool)

(assert (=> b!620036 m!596039))

(declare-fun m!596041 () Bool)

(assert (=> b!620045 m!596041))

(declare-fun m!596043 () Bool)

(assert (=> b!620045 m!596043))

(declare-fun m!596045 () Bool)

(assert (=> b!620049 m!596045))

(declare-fun m!596047 () Bool)

(assert (=> b!620049 m!596047))

(declare-fun m!596049 () Bool)

(assert (=> b!620049 m!596049))

(assert (=> b!620049 m!596011))

(declare-fun m!596051 () Bool)

(assert (=> b!620049 m!596051))

(declare-fun m!596053 () Bool)

(assert (=> b!620049 m!596053))

(assert (=> b!620049 m!596041))

(assert (=> b!620049 m!596011))

(declare-fun m!596055 () Bool)

(assert (=> b!620049 m!596055))

(assert (=> b!620051 m!596011))

(assert (=> b!620051 m!596011))

(declare-fun m!596057 () Bool)

(assert (=> b!620051 m!596057))

(assert (=> b!620040 m!596011))

(assert (=> b!620040 m!596011))

(declare-fun m!596059 () Bool)

(assert (=> b!620040 m!596059))

(declare-fun m!596061 () Bool)

(assert (=> b!620046 m!596061))

(assert (=> b!620047 m!596011))

(assert (=> b!620047 m!596011))

(assert (=> b!620047 m!596057))

(declare-fun m!596063 () Bool)

(assert (=> b!620052 m!596063))

(assert (=> b!620042 m!596011))

(assert (=> b!620042 m!596011))

(declare-fun m!596065 () Bool)

(assert (=> b!620042 m!596065))

(assert (=> b!620039 m!596041))

(declare-fun m!596067 () Bool)

(assert (=> b!620039 m!596067))

(assert (=> b!620039 m!596011))

(assert (=> b!620034 m!596011))

(declare-fun m!596069 () Bool)

(assert (=> b!620034 m!596069))

(declare-fun m!596071 () Bool)

(assert (=> b!620034 m!596071))

(assert (=> b!620034 m!596011))

(assert (=> b!620034 m!596065))

(assert (=> b!620034 m!596011))

(declare-fun m!596073 () Bool)

(assert (=> b!620034 m!596073))

(assert (=> b!620034 m!596021))

(assert (=> b!620034 m!596011))

(assert (=> b!620034 m!596011))

(declare-fun m!596075 () Bool)

(assert (=> b!620034 m!596075))

(declare-fun m!596077 () Bool)

(assert (=> b!620034 m!596077))

(assert (=> b!620034 m!596025))

(push 1)

