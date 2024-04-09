; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54516 () Bool)

(assert start!54516)

(declare-fun b!594661 () Bool)

(declare-fun e!339773 () Bool)

(declare-fun e!339767 () Bool)

(assert (=> b!594661 (= e!339773 e!339767)))

(declare-fun res!380773 () Bool)

(assert (=> b!594661 (=> (not res!380773) (not e!339767))))

(declare-datatypes ((SeekEntryResult!6177 0))(
  ( (MissingZero!6177 (index!26955 (_ BitVec 32))) (Found!6177 (index!26956 (_ BitVec 32))) (Intermediate!6177 (undefined!6989 Bool) (index!26957 (_ BitVec 32)) (x!55790 (_ BitVec 32))) (Undefined!6177) (MissingVacant!6177 (index!26958 (_ BitVec 32))) )
))
(declare-fun lt!270036 () SeekEntryResult!6177)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!594661 (= res!380773 (or (= lt!270036 (MissingZero!6177 i!1108)) (= lt!270036 (MissingVacant!6177 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36939 0))(
  ( (array!36940 (arr!17730 (Array (_ BitVec 32) (_ BitVec 64))) (size!18094 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36939)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36939 (_ BitVec 32)) SeekEntryResult!6177)

(assert (=> b!594661 (= lt!270036 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!594662 () Bool)

(declare-fun e!339763 () Bool)

(declare-fun e!339765 () Bool)

(assert (=> b!594662 (= e!339763 e!339765)))

(declare-fun res!380765 () Bool)

(assert (=> b!594662 (=> (not res!380765) (not e!339765))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!270025 () array!36939)

(declare-fun arrayContainsKey!0 (array!36939 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!594662 (= res!380765 (arrayContainsKey!0 lt!270025 (select (arr!17730 a!2986) j!136) j!136))))

(declare-fun b!594663 () Bool)

(declare-fun e!339772 () Bool)

(declare-fun e!339770 () Bool)

(assert (=> b!594663 (= e!339772 e!339770)))

(declare-fun res!380768 () Bool)

(assert (=> b!594663 (=> (not res!380768) (not e!339770))))

(declare-fun lt!270027 () SeekEntryResult!6177)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!594663 (= res!380768 (and (= lt!270027 (Found!6177 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17730 a!2986) index!984) (select (arr!17730 a!2986) j!136))) (not (= (select (arr!17730 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36939 (_ BitVec 32)) SeekEntryResult!6177)

(assert (=> b!594663 (= lt!270027 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17730 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!594664 () Bool)

(declare-fun res!380778 () Bool)

(assert (=> b!594664 (=> (not res!380778) (not e!339767))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36939 (_ BitVec 32)) Bool)

(assert (=> b!594664 (= res!380778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!594665 () Bool)

(declare-fun res!380780 () Bool)

(declare-fun e!339764 () Bool)

(assert (=> b!594665 (=> res!380780 e!339764)))

(declare-datatypes ((List!11824 0))(
  ( (Nil!11821) (Cons!11820 (h!12865 (_ BitVec 64)) (t!18060 List!11824)) )
))
(declare-fun contains!2928 (List!11824 (_ BitVec 64)) Bool)

(assert (=> b!594665 (= res!380780 (contains!2928 Nil!11821 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594667 () Bool)

(declare-datatypes ((Unit!18652 0))(
  ( (Unit!18653) )
))
(declare-fun e!339774 () Unit!18652)

(declare-fun Unit!18654 () Unit!18652)

(assert (=> b!594667 (= e!339774 Unit!18654)))

(declare-fun b!594668 () Bool)

(declare-fun e!339768 () Bool)

(declare-fun lt!270031 () SeekEntryResult!6177)

(assert (=> b!594668 (= e!339768 (= lt!270027 lt!270031))))

(declare-fun b!594669 () Bool)

(declare-fun res!380771 () Bool)

(assert (=> b!594669 (=> (not res!380771) (not e!339767))))

(assert (=> b!594669 (= res!380771 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17730 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!594670 () Bool)

(declare-fun res!380781 () Bool)

(assert (=> b!594670 (=> (not res!380781) (not e!339773))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!594670 (= res!380781 (validKeyInArray!0 k!1786))))

(declare-fun b!594671 () Bool)

(declare-fun res!380777 () Bool)

(assert (=> b!594671 (=> (not res!380777) (not e!339773))))

(assert (=> b!594671 (= res!380777 (and (= (size!18094 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18094 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18094 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!594672 () Bool)

(declare-fun e!339771 () Bool)

(assert (=> b!594672 (= e!339771 e!339764)))

(declare-fun res!380766 () Bool)

(assert (=> b!594672 (=> res!380766 e!339764)))

(assert (=> b!594672 (= res!380766 (or (bvsge (size!18094 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18094 a!2986))))))

(assert (=> b!594672 (arrayContainsKey!0 lt!270025 (select (arr!17730 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270030 () Unit!18652)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36939 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18652)

(assert (=> b!594672 (= lt!270030 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270025 (select (arr!17730 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!594673 () Bool)

(declare-fun e!339769 () Bool)

(assert (=> b!594673 (= e!339770 (not e!339769))))

(declare-fun res!380776 () Bool)

(assert (=> b!594673 (=> res!380776 e!339769)))

(declare-fun lt!270032 () SeekEntryResult!6177)

(assert (=> b!594673 (= res!380776 (not (= lt!270032 (Found!6177 index!984))))))

(declare-fun lt!270033 () Unit!18652)

(assert (=> b!594673 (= lt!270033 e!339774)))

(declare-fun c!67316 () Bool)

(assert (=> b!594673 (= c!67316 (= lt!270032 Undefined!6177))))

(declare-fun lt!270029 () (_ BitVec 64))

(assert (=> b!594673 (= lt!270032 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270029 lt!270025 mask!3053))))

(assert (=> b!594673 e!339768))

(declare-fun res!380774 () Bool)

(assert (=> b!594673 (=> (not res!380774) (not e!339768))))

(declare-fun lt!270026 () (_ BitVec 32))

(assert (=> b!594673 (= res!380774 (= lt!270031 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270026 vacantSpotIndex!68 lt!270029 lt!270025 mask!3053)))))

(assert (=> b!594673 (= lt!270031 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270026 vacantSpotIndex!68 (select (arr!17730 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!594673 (= lt!270029 (select (store (arr!17730 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270035 () Unit!18652)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36939 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18652)

(assert (=> b!594673 (= lt!270035 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270026 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!594673 (= lt!270026 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!594674 () Bool)

(declare-fun e!339766 () Bool)

(assert (=> b!594674 (= e!339766 e!339763)))

(declare-fun res!380775 () Bool)

(assert (=> b!594674 (=> res!380775 e!339763)))

(declare-fun lt!270034 () (_ BitVec 64))

(assert (=> b!594674 (= res!380775 (or (not (= (select (arr!17730 a!2986) j!136) lt!270029)) (not (= (select (arr!17730 a!2986) j!136) lt!270034)) (bvsge j!136 index!984)))))

(declare-fun b!594675 () Bool)

(assert (=> b!594675 (= e!339765 (arrayContainsKey!0 lt!270025 (select (arr!17730 a!2986) j!136) index!984))))

(declare-fun b!594676 () Bool)

(declare-fun res!380782 () Bool)

(assert (=> b!594676 (=> res!380782 e!339764)))

(assert (=> b!594676 (= res!380782 (contains!2928 Nil!11821 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594677 () Bool)

(declare-fun res!380763 () Bool)

(assert (=> b!594677 (=> (not res!380763) (not e!339773))))

(assert (=> b!594677 (= res!380763 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!380767 () Bool)

(assert (=> start!54516 (=> (not res!380767) (not e!339773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54516 (= res!380767 (validMask!0 mask!3053))))

(assert (=> start!54516 e!339773))

(assert (=> start!54516 true))

(declare-fun array_inv!13504 (array!36939) Bool)

(assert (=> start!54516 (array_inv!13504 a!2986)))

(declare-fun b!594666 () Bool)

(declare-fun res!380772 () Bool)

(assert (=> b!594666 (=> res!380772 e!339764)))

(declare-fun noDuplicate!244 (List!11824) Bool)

(assert (=> b!594666 (= res!380772 (not (noDuplicate!244 Nil!11821)))))

(declare-fun b!594678 () Bool)

(declare-fun res!380770 () Bool)

(assert (=> b!594678 (=> (not res!380770) (not e!339767))))

(declare-fun arrayNoDuplicates!0 (array!36939 (_ BitVec 32) List!11824) Bool)

(assert (=> b!594678 (= res!380770 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11821))))

(declare-fun b!594679 () Bool)

(assert (=> b!594679 (= e!339769 e!339771)))

(declare-fun res!380769 () Bool)

(assert (=> b!594679 (=> res!380769 e!339771)))

(assert (=> b!594679 (= res!380769 (or (not (= (select (arr!17730 a!2986) j!136) lt!270029)) (not (= (select (arr!17730 a!2986) j!136) lt!270034)) (bvsge j!136 index!984)))))

(assert (=> b!594679 e!339766))

(declare-fun res!380779 () Bool)

(assert (=> b!594679 (=> (not res!380779) (not e!339766))))

(assert (=> b!594679 (= res!380779 (= lt!270034 (select (arr!17730 a!2986) j!136)))))

(assert (=> b!594679 (= lt!270034 (select (store (arr!17730 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!594680 () Bool)

(assert (=> b!594680 (= e!339764 true)))

(declare-fun lt!270028 () Bool)

(assert (=> b!594680 (= lt!270028 (contains!2928 Nil!11821 k!1786))))

(declare-fun b!594681 () Bool)

(assert (=> b!594681 (= e!339767 e!339772)))

(declare-fun res!380783 () Bool)

(assert (=> b!594681 (=> (not res!380783) (not e!339772))))

(assert (=> b!594681 (= res!380783 (= (select (store (arr!17730 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594681 (= lt!270025 (array!36940 (store (arr!17730 a!2986) i!1108 k!1786) (size!18094 a!2986)))))

(declare-fun b!594682 () Bool)

(declare-fun res!380764 () Bool)

(assert (=> b!594682 (=> (not res!380764) (not e!339773))))

(assert (=> b!594682 (= res!380764 (validKeyInArray!0 (select (arr!17730 a!2986) j!136)))))

(declare-fun b!594683 () Bool)

(declare-fun Unit!18655 () Unit!18652)

(assert (=> b!594683 (= e!339774 Unit!18655)))

(assert (=> b!594683 false))

(assert (= (and start!54516 res!380767) b!594671))

(assert (= (and b!594671 res!380777) b!594682))

(assert (= (and b!594682 res!380764) b!594670))

(assert (= (and b!594670 res!380781) b!594677))

(assert (= (and b!594677 res!380763) b!594661))

(assert (= (and b!594661 res!380773) b!594664))

(assert (= (and b!594664 res!380778) b!594678))

(assert (= (and b!594678 res!380770) b!594669))

(assert (= (and b!594669 res!380771) b!594681))

(assert (= (and b!594681 res!380783) b!594663))

(assert (= (and b!594663 res!380768) b!594673))

(assert (= (and b!594673 res!380774) b!594668))

(assert (= (and b!594673 c!67316) b!594683))

(assert (= (and b!594673 (not c!67316)) b!594667))

(assert (= (and b!594673 (not res!380776)) b!594679))

(assert (= (and b!594679 res!380779) b!594674))

(assert (= (and b!594674 (not res!380775)) b!594662))

(assert (= (and b!594662 res!380765) b!594675))

(assert (= (and b!594679 (not res!380769)) b!594672))

(assert (= (and b!594672 (not res!380766)) b!594666))

(assert (= (and b!594666 (not res!380772)) b!594665))

(assert (= (and b!594665 (not res!380780)) b!594676))

(assert (= (and b!594676 (not res!380782)) b!594680))

(declare-fun m!572451 () Bool)

(assert (=> b!594679 m!572451))

(declare-fun m!572453 () Bool)

(assert (=> b!594679 m!572453))

(declare-fun m!572455 () Bool)

(assert (=> b!594679 m!572455))

(declare-fun m!572457 () Bool)

(assert (=> b!594669 m!572457))

(declare-fun m!572459 () Bool)

(assert (=> b!594677 m!572459))

(declare-fun m!572461 () Bool)

(assert (=> b!594663 m!572461))

(assert (=> b!594663 m!572451))

(assert (=> b!594663 m!572451))

(declare-fun m!572463 () Bool)

(assert (=> b!594663 m!572463))

(assert (=> b!594675 m!572451))

(assert (=> b!594675 m!572451))

(declare-fun m!572465 () Bool)

(assert (=> b!594675 m!572465))

(declare-fun m!572467 () Bool)

(assert (=> start!54516 m!572467))

(declare-fun m!572469 () Bool)

(assert (=> start!54516 m!572469))

(assert (=> b!594662 m!572451))

(assert (=> b!594662 m!572451))

(declare-fun m!572471 () Bool)

(assert (=> b!594662 m!572471))

(assert (=> b!594682 m!572451))

(assert (=> b!594682 m!572451))

(declare-fun m!572473 () Bool)

(assert (=> b!594682 m!572473))

(declare-fun m!572475 () Bool)

(assert (=> b!594678 m!572475))

(declare-fun m!572477 () Bool)

(assert (=> b!594661 m!572477))

(declare-fun m!572479 () Bool)

(assert (=> b!594666 m!572479))

(assert (=> b!594681 m!572453))

(declare-fun m!572481 () Bool)

(assert (=> b!594681 m!572481))

(assert (=> b!594672 m!572451))

(assert (=> b!594672 m!572451))

(declare-fun m!572483 () Bool)

(assert (=> b!594672 m!572483))

(assert (=> b!594672 m!572451))

(declare-fun m!572485 () Bool)

(assert (=> b!594672 m!572485))

(declare-fun m!572487 () Bool)

(assert (=> b!594670 m!572487))

(assert (=> b!594674 m!572451))

(declare-fun m!572489 () Bool)

(assert (=> b!594676 m!572489))

(declare-fun m!572491 () Bool)

(assert (=> b!594680 m!572491))

(declare-fun m!572493 () Bool)

(assert (=> b!594665 m!572493))

(declare-fun m!572495 () Bool)

(assert (=> b!594673 m!572495))

(declare-fun m!572497 () Bool)

(assert (=> b!594673 m!572497))

(assert (=> b!594673 m!572451))

(assert (=> b!594673 m!572453))

(declare-fun m!572499 () Bool)

(assert (=> b!594673 m!572499))

(declare-fun m!572501 () Bool)

(assert (=> b!594673 m!572501))

(declare-fun m!572503 () Bool)

(assert (=> b!594673 m!572503))

(assert (=> b!594673 m!572451))

(declare-fun m!572505 () Bool)

(assert (=> b!594673 m!572505))

(declare-fun m!572507 () Bool)

(assert (=> b!594664 m!572507))

(push 1)

