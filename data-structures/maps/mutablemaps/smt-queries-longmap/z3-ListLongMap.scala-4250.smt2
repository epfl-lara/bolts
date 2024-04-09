; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58904 () Bool)

(assert start!58904)

(declare-fun b!649670 () Bool)

(declare-fun e!372667 () Bool)

(declare-fun e!372668 () Bool)

(assert (=> b!649670 (= e!372667 e!372668)))

(declare-fun res!421269 () Bool)

(assert (=> b!649670 (=> res!421269 e!372668)))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!649670 (= res!421269 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!22132 0))(
  ( (Unit!22133) )
))
(declare-fun lt!301834 () Unit!22132)

(declare-fun e!372665 () Unit!22132)

(assert (=> b!649670 (= lt!301834 e!372665)))

(declare-fun c!74570 () Bool)

(assert (=> b!649670 (= c!74570 (bvslt j!136 index!984))))

(declare-fun b!649671 () Bool)

(declare-fun e!372675 () Bool)

(declare-fun e!372670 () Bool)

(assert (=> b!649671 (= e!372675 (not e!372670))))

(declare-fun res!421278 () Bool)

(assert (=> b!649671 (=> res!421278 e!372670)))

(declare-datatypes ((SeekEntryResult!6910 0))(
  ( (MissingZero!6910 (index!29986 (_ BitVec 32))) (Found!6910 (index!29987 (_ BitVec 32))) (Intermediate!6910 (undefined!7722 Bool) (index!29988 (_ BitVec 32)) (x!58796 (_ BitVec 32))) (Undefined!6910) (MissingVacant!6910 (index!29989 (_ BitVec 32))) )
))
(declare-fun lt!301839 () SeekEntryResult!6910)

(assert (=> b!649671 (= res!421278 (not (= lt!301839 (Found!6910 index!984))))))

(declare-fun lt!301827 () Unit!22132)

(declare-fun e!372669 () Unit!22132)

(assert (=> b!649671 (= lt!301827 e!372669)))

(declare-fun c!74569 () Bool)

(assert (=> b!649671 (= c!74569 (= lt!301839 Undefined!6910))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38522 0))(
  ( (array!38523 (arr!18463 (Array (_ BitVec 32) (_ BitVec 64))) (size!18827 (_ BitVec 32))) )
))
(declare-fun lt!301832 () array!38522)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!301836 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38522 (_ BitVec 32)) SeekEntryResult!6910)

(assert (=> b!649671 (= lt!301839 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301836 lt!301832 mask!3053))))

(declare-fun e!372666 () Bool)

(assert (=> b!649671 e!372666))

(declare-fun res!421283 () Bool)

(assert (=> b!649671 (=> (not res!421283) (not e!372666))))

(declare-fun lt!301828 () SeekEntryResult!6910)

(declare-fun lt!301829 () (_ BitVec 32))

(assert (=> b!649671 (= res!421283 (= lt!301828 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301829 vacantSpotIndex!68 lt!301836 lt!301832 mask!3053)))))

(declare-fun a!2986 () array!38522)

(assert (=> b!649671 (= lt!301828 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301829 vacantSpotIndex!68 (select (arr!18463 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!649671 (= lt!301836 (select (store (arr!18463 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!301833 () Unit!22132)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38522 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22132)

(assert (=> b!649671 (= lt!301833 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301829 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!649671 (= lt!301829 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun e!372677 () Bool)

(declare-fun b!649672 () Bool)

(declare-fun arrayContainsKey!0 (array!38522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!649672 (= e!372677 (arrayContainsKey!0 lt!301832 (select (arr!18463 a!2986) j!136) index!984))))

(declare-fun b!649673 () Bool)

(declare-fun e!372679 () Bool)

(declare-fun e!372678 () Bool)

(assert (=> b!649673 (= e!372679 e!372678)))

(declare-fun res!421282 () Bool)

(assert (=> b!649673 (=> (not res!421282) (not e!372678))))

(declare-fun lt!301826 () SeekEntryResult!6910)

(assert (=> b!649673 (= res!421282 (or (= lt!301826 (MissingZero!6910 i!1108)) (= lt!301826 (MissingVacant!6910 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38522 (_ BitVec 32)) SeekEntryResult!6910)

(assert (=> b!649673 (= lt!301826 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!649674 () Bool)

(declare-fun res!421267 () Bool)

(assert (=> b!649674 (=> (not res!421267) (not e!372679))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!649674 (= res!421267 (validKeyInArray!0 k0!1786))))

(declare-fun b!649675 () Bool)

(declare-fun res!421275 () Bool)

(assert (=> b!649675 (=> (not res!421275) (not e!372679))))

(assert (=> b!649675 (= res!421275 (and (= (size!18827 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18827 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18827 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!649676 () Bool)

(declare-fun e!372673 () Bool)

(assert (=> b!649676 (= e!372673 e!372675)))

(declare-fun res!421276 () Bool)

(assert (=> b!649676 (=> (not res!421276) (not e!372675))))

(declare-fun lt!301840 () SeekEntryResult!6910)

(assert (=> b!649676 (= res!421276 (and (= lt!301840 (Found!6910 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18463 a!2986) index!984) (select (arr!18463 a!2986) j!136))) (not (= (select (arr!18463 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!649676 (= lt!301840 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18463 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!649677 () Bool)

(assert (=> b!649677 (= e!372668 (bvslt (size!18827 a!2986) #b01111111111111111111111111111111))))

(declare-datatypes ((List!12557 0))(
  ( (Nil!12554) (Cons!12553 (h!13598 (_ BitVec 64)) (t!18793 List!12557)) )
))
(declare-fun arrayNoDuplicates!0 (array!38522 (_ BitVec 32) List!12557) Bool)

(assert (=> b!649677 (arrayNoDuplicates!0 lt!301832 #b00000000000000000000000000000000 Nil!12554)))

(declare-fun lt!301842 () Unit!22132)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38522 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12557) Unit!22132)

(assert (=> b!649677 (= lt!301842 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12554))))

(assert (=> b!649677 (arrayContainsKey!0 lt!301832 (select (arr!18463 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301831 () Unit!22132)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38522 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22132)

(assert (=> b!649677 (= lt!301831 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301832 (select (arr!18463 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!649677 e!372677))

(declare-fun res!421281 () Bool)

(assert (=> b!649677 (=> (not res!421281) (not e!372677))))

(assert (=> b!649677 (= res!421281 (arrayContainsKey!0 lt!301832 (select (arr!18463 a!2986) j!136) j!136))))

(declare-fun b!649678 () Bool)

(declare-fun e!372674 () Bool)

(declare-fun e!372671 () Bool)

(assert (=> b!649678 (= e!372674 e!372671)))

(declare-fun res!421274 () Bool)

(assert (=> b!649678 (=> (not res!421274) (not e!372671))))

(assert (=> b!649678 (= res!421274 (arrayContainsKey!0 lt!301832 (select (arr!18463 a!2986) j!136) j!136))))

(declare-fun res!421268 () Bool)

(assert (=> start!58904 (=> (not res!421268) (not e!372679))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58904 (= res!421268 (validMask!0 mask!3053))))

(assert (=> start!58904 e!372679))

(assert (=> start!58904 true))

(declare-fun array_inv!14237 (array!38522) Bool)

(assert (=> start!58904 (array_inv!14237 a!2986)))

(declare-fun b!649669 () Bool)

(assert (=> b!649669 (= e!372670 e!372667)))

(declare-fun res!421280 () Bool)

(assert (=> b!649669 (=> res!421280 e!372667)))

(declare-fun lt!301838 () (_ BitVec 64))

(assert (=> b!649669 (= res!421280 (or (not (= (select (arr!18463 a!2986) j!136) lt!301836)) (not (= (select (arr!18463 a!2986) j!136) lt!301838))))))

(declare-fun e!372676 () Bool)

(assert (=> b!649669 e!372676))

(declare-fun res!421279 () Bool)

(assert (=> b!649669 (=> (not res!421279) (not e!372676))))

(assert (=> b!649669 (= res!421279 (= lt!301838 (select (arr!18463 a!2986) j!136)))))

(assert (=> b!649669 (= lt!301838 (select (store (arr!18463 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!649679 () Bool)

(assert (=> b!649679 (= e!372678 e!372673)))

(declare-fun res!421270 () Bool)

(assert (=> b!649679 (=> (not res!421270) (not e!372673))))

(assert (=> b!649679 (= res!421270 (= (select (store (arr!18463 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!649679 (= lt!301832 (array!38523 (store (arr!18463 a!2986) i!1108 k0!1786) (size!18827 a!2986)))))

(declare-fun b!649680 () Bool)

(declare-fun Unit!22134 () Unit!22132)

(assert (=> b!649680 (= e!372665 Unit!22134)))

(declare-fun lt!301841 () Unit!22132)

(assert (=> b!649680 (= lt!301841 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301832 (select (arr!18463 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!649680 (arrayContainsKey!0 lt!301832 (select (arr!18463 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301835 () Unit!22132)

(assert (=> b!649680 (= lt!301835 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12554))))

(assert (=> b!649680 (arrayNoDuplicates!0 lt!301832 #b00000000000000000000000000000000 Nil!12554)))

(declare-fun lt!301837 () Unit!22132)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38522 (_ BitVec 32) (_ BitVec 32)) Unit!22132)

(assert (=> b!649680 (= lt!301837 (lemmaNoDuplicateFromThenFromBigger!0 lt!301832 #b00000000000000000000000000000000 j!136))))

(assert (=> b!649680 (arrayNoDuplicates!0 lt!301832 j!136 Nil!12554)))

(declare-fun lt!301830 () Unit!22132)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38522 (_ BitVec 64) (_ BitVec 32) List!12557) Unit!22132)

(assert (=> b!649680 (= lt!301830 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301832 (select (arr!18463 a!2986) j!136) j!136 Nil!12554))))

(assert (=> b!649680 false))

(declare-fun b!649681 () Bool)

(declare-fun Unit!22135 () Unit!22132)

(assert (=> b!649681 (= e!372669 Unit!22135)))

(assert (=> b!649681 false))

(declare-fun b!649682 () Bool)

(declare-fun res!421277 () Bool)

(assert (=> b!649682 (=> (not res!421277) (not e!372678))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38522 (_ BitVec 32)) Bool)

(assert (=> b!649682 (= res!421277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!649683 () Bool)

(declare-fun Unit!22136 () Unit!22132)

(assert (=> b!649683 (= e!372665 Unit!22136)))

(declare-fun b!649684 () Bool)

(declare-fun res!421273 () Bool)

(assert (=> b!649684 (=> (not res!421273) (not e!372679))))

(assert (=> b!649684 (= res!421273 (validKeyInArray!0 (select (arr!18463 a!2986) j!136)))))

(declare-fun b!649685 () Bool)

(declare-fun Unit!22137 () Unit!22132)

(assert (=> b!649685 (= e!372669 Unit!22137)))

(declare-fun b!649686 () Bool)

(declare-fun res!421266 () Bool)

(assert (=> b!649686 (=> (not res!421266) (not e!372679))))

(assert (=> b!649686 (= res!421266 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!649687 () Bool)

(assert (=> b!649687 (= e!372666 (= lt!301840 lt!301828))))

(declare-fun b!649688 () Bool)

(assert (=> b!649688 (= e!372676 e!372674)))

(declare-fun res!421265 () Bool)

(assert (=> b!649688 (=> res!421265 e!372674)))

(assert (=> b!649688 (= res!421265 (or (not (= (select (arr!18463 a!2986) j!136) lt!301836)) (not (= (select (arr!18463 a!2986) j!136) lt!301838)) (bvsge j!136 index!984)))))

(declare-fun b!649689 () Bool)

(assert (=> b!649689 (= e!372671 (arrayContainsKey!0 lt!301832 (select (arr!18463 a!2986) j!136) index!984))))

(declare-fun b!649690 () Bool)

(declare-fun res!421271 () Bool)

(assert (=> b!649690 (=> (not res!421271) (not e!372678))))

(assert (=> b!649690 (= res!421271 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18463 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!649691 () Bool)

(declare-fun res!421272 () Bool)

(assert (=> b!649691 (=> (not res!421272) (not e!372678))))

(assert (=> b!649691 (= res!421272 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12554))))

(assert (= (and start!58904 res!421268) b!649675))

(assert (= (and b!649675 res!421275) b!649684))

(assert (= (and b!649684 res!421273) b!649674))

(assert (= (and b!649674 res!421267) b!649686))

(assert (= (and b!649686 res!421266) b!649673))

(assert (= (and b!649673 res!421282) b!649682))

(assert (= (and b!649682 res!421277) b!649691))

(assert (= (and b!649691 res!421272) b!649690))

(assert (= (and b!649690 res!421271) b!649679))

(assert (= (and b!649679 res!421270) b!649676))

(assert (= (and b!649676 res!421276) b!649671))

(assert (= (and b!649671 res!421283) b!649687))

(assert (= (and b!649671 c!74569) b!649681))

(assert (= (and b!649671 (not c!74569)) b!649685))

(assert (= (and b!649671 (not res!421278)) b!649669))

(assert (= (and b!649669 res!421279) b!649688))

(assert (= (and b!649688 (not res!421265)) b!649678))

(assert (= (and b!649678 res!421274) b!649689))

(assert (= (and b!649669 (not res!421280)) b!649670))

(assert (= (and b!649670 c!74570) b!649680))

(assert (= (and b!649670 (not c!74570)) b!649683))

(assert (= (and b!649670 (not res!421269)) b!649677))

(assert (= (and b!649677 res!421281) b!649672))

(declare-fun m!622963 () Bool)

(assert (=> b!649684 m!622963))

(assert (=> b!649684 m!622963))

(declare-fun m!622965 () Bool)

(assert (=> b!649684 m!622965))

(declare-fun m!622967 () Bool)

(assert (=> b!649673 m!622967))

(declare-fun m!622969 () Bool)

(assert (=> b!649682 m!622969))

(declare-fun m!622971 () Bool)

(assert (=> start!58904 m!622971))

(declare-fun m!622973 () Bool)

(assert (=> start!58904 m!622973))

(declare-fun m!622975 () Bool)

(assert (=> b!649674 m!622975))

(declare-fun m!622977 () Bool)

(assert (=> b!649679 m!622977))

(declare-fun m!622979 () Bool)

(assert (=> b!649679 m!622979))

(assert (=> b!649669 m!622963))

(assert (=> b!649669 m!622977))

(declare-fun m!622981 () Bool)

(assert (=> b!649669 m!622981))

(declare-fun m!622983 () Bool)

(assert (=> b!649690 m!622983))

(assert (=> b!649688 m!622963))

(declare-fun m!622985 () Bool)

(assert (=> b!649686 m!622985))

(declare-fun m!622987 () Bool)

(assert (=> b!649676 m!622987))

(assert (=> b!649676 m!622963))

(assert (=> b!649676 m!622963))

(declare-fun m!622989 () Bool)

(assert (=> b!649676 m!622989))

(assert (=> b!649677 m!622963))

(declare-fun m!622991 () Bool)

(assert (=> b!649677 m!622991))

(assert (=> b!649677 m!622963))

(declare-fun m!622993 () Bool)

(assert (=> b!649677 m!622993))

(assert (=> b!649677 m!622963))

(declare-fun m!622995 () Bool)

(assert (=> b!649677 m!622995))

(assert (=> b!649677 m!622963))

(declare-fun m!622997 () Bool)

(assert (=> b!649677 m!622997))

(declare-fun m!622999 () Bool)

(assert (=> b!649677 m!622999))

(assert (=> b!649678 m!622963))

(assert (=> b!649678 m!622963))

(assert (=> b!649678 m!622995))

(assert (=> b!649672 m!622963))

(assert (=> b!649672 m!622963))

(declare-fun m!623001 () Bool)

(assert (=> b!649672 m!623001))

(assert (=> b!649689 m!622963))

(assert (=> b!649689 m!622963))

(assert (=> b!649689 m!623001))

(declare-fun m!623003 () Bool)

(assert (=> b!649691 m!623003))

(assert (=> b!649680 m!622963))

(assert (=> b!649680 m!622963))

(declare-fun m!623005 () Bool)

(assert (=> b!649680 m!623005))

(assert (=> b!649680 m!622963))

(declare-fun m!623007 () Bool)

(assert (=> b!649680 m!623007))

(assert (=> b!649680 m!622999))

(assert (=> b!649680 m!622963))

(declare-fun m!623009 () Bool)

(assert (=> b!649680 m!623009))

(declare-fun m!623011 () Bool)

(assert (=> b!649680 m!623011))

(assert (=> b!649680 m!622993))

(declare-fun m!623013 () Bool)

(assert (=> b!649680 m!623013))

(declare-fun m!623015 () Bool)

(assert (=> b!649671 m!623015))

(declare-fun m!623017 () Bool)

(assert (=> b!649671 m!623017))

(assert (=> b!649671 m!622963))

(declare-fun m!623019 () Bool)

(assert (=> b!649671 m!623019))

(assert (=> b!649671 m!622977))

(declare-fun m!623021 () Bool)

(assert (=> b!649671 m!623021))

(declare-fun m!623023 () Bool)

(assert (=> b!649671 m!623023))

(assert (=> b!649671 m!622963))

(declare-fun m!623025 () Bool)

(assert (=> b!649671 m!623025))

(check-sat (not b!649680) (not b!649689) (not start!58904) (not b!649671) (not b!649684) (not b!649682) (not b!649674) (not b!649686) (not b!649676) (not b!649678) (not b!649672) (not b!649673) (not b!649691) (not b!649677))
(check-sat)
(get-model)

(declare-fun b!649773 () Bool)

(declare-fun e!372731 () SeekEntryResult!6910)

(declare-fun e!372733 () SeekEntryResult!6910)

(assert (=> b!649773 (= e!372731 e!372733)))

(declare-fun c!74583 () Bool)

(declare-fun lt!301898 () (_ BitVec 64))

(assert (=> b!649773 (= c!74583 (= lt!301898 (select (arr!18463 a!2986) j!136)))))

(declare-fun b!649774 () Bool)

(assert (=> b!649774 (= e!372733 (Found!6910 index!984))))

(declare-fun d!91765 () Bool)

(declare-fun lt!301899 () SeekEntryResult!6910)

(get-info :version)

(assert (=> d!91765 (and (or ((_ is Undefined!6910) lt!301899) (not ((_ is Found!6910) lt!301899)) (and (bvsge (index!29987 lt!301899) #b00000000000000000000000000000000) (bvslt (index!29987 lt!301899) (size!18827 a!2986)))) (or ((_ is Undefined!6910) lt!301899) ((_ is Found!6910) lt!301899) (not ((_ is MissingVacant!6910) lt!301899)) (not (= (index!29989 lt!301899) vacantSpotIndex!68)) (and (bvsge (index!29989 lt!301899) #b00000000000000000000000000000000) (bvslt (index!29989 lt!301899) (size!18827 a!2986)))) (or ((_ is Undefined!6910) lt!301899) (ite ((_ is Found!6910) lt!301899) (= (select (arr!18463 a!2986) (index!29987 lt!301899)) (select (arr!18463 a!2986) j!136)) (and ((_ is MissingVacant!6910) lt!301899) (= (index!29989 lt!301899) vacantSpotIndex!68) (= (select (arr!18463 a!2986) (index!29989 lt!301899)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91765 (= lt!301899 e!372731)))

(declare-fun c!74585 () Bool)

(assert (=> d!91765 (= c!74585 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!91765 (= lt!301898 (select (arr!18463 a!2986) index!984))))

(assert (=> d!91765 (validMask!0 mask!3053)))

(assert (=> d!91765 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18463 a!2986) j!136) a!2986 mask!3053) lt!301899)))

(declare-fun e!372732 () SeekEntryResult!6910)

(declare-fun b!649775 () Bool)

(assert (=> b!649775 (= e!372732 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18463 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!649776 () Bool)

(assert (=> b!649776 (= e!372732 (MissingVacant!6910 vacantSpotIndex!68))))

(declare-fun b!649777 () Bool)

(declare-fun c!74584 () Bool)

(assert (=> b!649777 (= c!74584 (= lt!301898 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!649777 (= e!372733 e!372732)))

(declare-fun b!649778 () Bool)

(assert (=> b!649778 (= e!372731 Undefined!6910)))

(assert (= (and d!91765 c!74585) b!649778))

(assert (= (and d!91765 (not c!74585)) b!649773))

(assert (= (and b!649773 c!74583) b!649774))

(assert (= (and b!649773 (not c!74583)) b!649777))

(assert (= (and b!649777 c!74584) b!649776))

(assert (= (and b!649777 (not c!74584)) b!649775))

(declare-fun m!623091 () Bool)

(assert (=> d!91765 m!623091))

(declare-fun m!623093 () Bool)

(assert (=> d!91765 m!623093))

(assert (=> d!91765 m!622987))

(assert (=> d!91765 m!622971))

(assert (=> b!649775 m!623015))

(assert (=> b!649775 m!623015))

(assert (=> b!649775 m!622963))

(declare-fun m!623095 () Bool)

(assert (=> b!649775 m!623095))

(assert (=> b!649676 d!91765))

(declare-fun d!91767 () Bool)

(declare-fun res!421345 () Bool)

(declare-fun e!372738 () Bool)

(assert (=> d!91767 (=> res!421345 e!372738)))

(assert (=> d!91767 (= res!421345 (= (select (arr!18463 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!91767 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!372738)))

(declare-fun b!649783 () Bool)

(declare-fun e!372739 () Bool)

(assert (=> b!649783 (= e!372738 e!372739)))

(declare-fun res!421346 () Bool)

(assert (=> b!649783 (=> (not res!421346) (not e!372739))))

(assert (=> b!649783 (= res!421346 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18827 a!2986)))))

(declare-fun b!649784 () Bool)

(assert (=> b!649784 (= e!372739 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!91767 (not res!421345)) b!649783))

(assert (= (and b!649783 res!421346) b!649784))

(declare-fun m!623097 () Bool)

(assert (=> d!91767 m!623097))

(declare-fun m!623099 () Bool)

(assert (=> b!649784 m!623099))

(assert (=> b!649686 d!91767))

(declare-fun d!91769 () Bool)

(assert (=> d!91769 (arrayContainsKey!0 lt!301832 (select (arr!18463 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301902 () Unit!22132)

(declare-fun choose!114 (array!38522 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22132)

(assert (=> d!91769 (= lt!301902 (choose!114 lt!301832 (select (arr!18463 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!91769 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!91769 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301832 (select (arr!18463 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!301902)))

(declare-fun bs!19385 () Bool)

(assert (= bs!19385 d!91769))

(assert (=> bs!19385 m!622963))

(assert (=> bs!19385 m!622991))

(assert (=> bs!19385 m!622963))

(declare-fun m!623101 () Bool)

(assert (=> bs!19385 m!623101))

(assert (=> b!649677 d!91769))

(declare-fun d!91771 () Bool)

(declare-fun res!421347 () Bool)

(declare-fun e!372740 () Bool)

(assert (=> d!91771 (=> res!421347 e!372740)))

(assert (=> d!91771 (= res!421347 (= (select (arr!18463 lt!301832) j!136) (select (arr!18463 a!2986) j!136)))))

(assert (=> d!91771 (= (arrayContainsKey!0 lt!301832 (select (arr!18463 a!2986) j!136) j!136) e!372740)))

(declare-fun b!649785 () Bool)

(declare-fun e!372741 () Bool)

(assert (=> b!649785 (= e!372740 e!372741)))

(declare-fun res!421348 () Bool)

(assert (=> b!649785 (=> (not res!421348) (not e!372741))))

(assert (=> b!649785 (= res!421348 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18827 lt!301832)))))

(declare-fun b!649786 () Bool)

(assert (=> b!649786 (= e!372741 (arrayContainsKey!0 lt!301832 (select (arr!18463 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91771 (not res!421347)) b!649785))

(assert (= (and b!649785 res!421348) b!649786))

(declare-fun m!623103 () Bool)

(assert (=> d!91771 m!623103))

(assert (=> b!649786 m!622963))

(declare-fun m!623105 () Bool)

(assert (=> b!649786 m!623105))

(assert (=> b!649677 d!91771))

(declare-fun b!649797 () Bool)

(declare-fun e!372753 () Bool)

(declare-fun call!33728 () Bool)

(assert (=> b!649797 (= e!372753 call!33728)))

(declare-fun b!649798 () Bool)

(declare-fun e!372751 () Bool)

(assert (=> b!649798 (= e!372751 e!372753)))

(declare-fun c!74588 () Bool)

(assert (=> b!649798 (= c!74588 (validKeyInArray!0 (select (arr!18463 lt!301832) #b00000000000000000000000000000000)))))

(declare-fun b!649800 () Bool)

(assert (=> b!649800 (= e!372753 call!33728)))

(declare-fun bm!33725 () Bool)

(assert (=> bm!33725 (= call!33728 (arrayNoDuplicates!0 lt!301832 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74588 (Cons!12553 (select (arr!18463 lt!301832) #b00000000000000000000000000000000) Nil!12554) Nil!12554)))))

(declare-fun b!649801 () Bool)

(declare-fun e!372750 () Bool)

(declare-fun contains!3177 (List!12557 (_ BitVec 64)) Bool)

(assert (=> b!649801 (= e!372750 (contains!3177 Nil!12554 (select (arr!18463 lt!301832) #b00000000000000000000000000000000)))))

(declare-fun d!91773 () Bool)

(declare-fun res!421355 () Bool)

(declare-fun e!372752 () Bool)

(assert (=> d!91773 (=> res!421355 e!372752)))

(assert (=> d!91773 (= res!421355 (bvsge #b00000000000000000000000000000000 (size!18827 lt!301832)))))

(assert (=> d!91773 (= (arrayNoDuplicates!0 lt!301832 #b00000000000000000000000000000000 Nil!12554) e!372752)))

(declare-fun b!649799 () Bool)

(assert (=> b!649799 (= e!372752 e!372751)))

(declare-fun res!421356 () Bool)

(assert (=> b!649799 (=> (not res!421356) (not e!372751))))

(assert (=> b!649799 (= res!421356 (not e!372750))))

(declare-fun res!421357 () Bool)

(assert (=> b!649799 (=> (not res!421357) (not e!372750))))

(assert (=> b!649799 (= res!421357 (validKeyInArray!0 (select (arr!18463 lt!301832) #b00000000000000000000000000000000)))))

(assert (= (and d!91773 (not res!421355)) b!649799))

(assert (= (and b!649799 res!421357) b!649801))

(assert (= (and b!649799 res!421356) b!649798))

(assert (= (and b!649798 c!74588) b!649797))

(assert (= (and b!649798 (not c!74588)) b!649800))

(assert (= (or b!649797 b!649800) bm!33725))

(declare-fun m!623107 () Bool)

(assert (=> b!649798 m!623107))

(assert (=> b!649798 m!623107))

(declare-fun m!623109 () Bool)

(assert (=> b!649798 m!623109))

(assert (=> bm!33725 m!623107))

(declare-fun m!623111 () Bool)

(assert (=> bm!33725 m!623111))

(assert (=> b!649801 m!623107))

(assert (=> b!649801 m!623107))

(declare-fun m!623113 () Bool)

(assert (=> b!649801 m!623113))

(assert (=> b!649799 m!623107))

(assert (=> b!649799 m!623107))

(assert (=> b!649799 m!623109))

(assert (=> b!649677 d!91773))

(declare-fun d!91777 () Bool)

(declare-fun res!421358 () Bool)

(declare-fun e!372754 () Bool)

(assert (=> d!91777 (=> res!421358 e!372754)))

(assert (=> d!91777 (= res!421358 (= (select (arr!18463 lt!301832) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18463 a!2986) j!136)))))

(assert (=> d!91777 (= (arrayContainsKey!0 lt!301832 (select (arr!18463 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!372754)))

(declare-fun b!649802 () Bool)

(declare-fun e!372755 () Bool)

(assert (=> b!649802 (= e!372754 e!372755)))

(declare-fun res!421359 () Bool)

(assert (=> b!649802 (=> (not res!421359) (not e!372755))))

(assert (=> b!649802 (= res!421359 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18827 lt!301832)))))

(declare-fun b!649803 () Bool)

(assert (=> b!649803 (= e!372755 (arrayContainsKey!0 lt!301832 (select (arr!18463 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91777 (not res!421358)) b!649802))

(assert (= (and b!649802 res!421359) b!649803))

(declare-fun m!623115 () Bool)

(assert (=> d!91777 m!623115))

(assert (=> b!649803 m!622963))

(declare-fun m!623117 () Bool)

(assert (=> b!649803 m!623117))

(assert (=> b!649677 d!91777))

(declare-fun d!91779 () Bool)

(declare-fun e!372758 () Bool)

(assert (=> d!91779 e!372758))

(declare-fun res!421362 () Bool)

(assert (=> d!91779 (=> (not res!421362) (not e!372758))))

(assert (=> d!91779 (= res!421362 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18827 a!2986))))))

(declare-fun lt!301905 () Unit!22132)

(declare-fun choose!41 (array!38522 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12557) Unit!22132)

(assert (=> d!91779 (= lt!301905 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12554))))

(assert (=> d!91779 (bvslt (size!18827 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!91779 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12554) lt!301905)))

(declare-fun b!649806 () Bool)

(assert (=> b!649806 (= e!372758 (arrayNoDuplicates!0 (array!38523 (store (arr!18463 a!2986) i!1108 k0!1786) (size!18827 a!2986)) #b00000000000000000000000000000000 Nil!12554))))

(assert (= (and d!91779 res!421362) b!649806))

(declare-fun m!623119 () Bool)

(assert (=> d!91779 m!623119))

(assert (=> b!649806 m!622977))

(declare-fun m!623121 () Bool)

(assert (=> b!649806 m!623121))

(assert (=> b!649677 d!91779))

(declare-fun d!91783 () Bool)

(assert (=> d!91783 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!58904 d!91783))

(declare-fun d!91793 () Bool)

(assert (=> d!91793 (= (array_inv!14237 a!2986) (bvsge (size!18827 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!58904 d!91793))

(declare-fun d!91795 () Bool)

(assert (=> d!91795 (= (validKeyInArray!0 (select (arr!18463 a!2986) j!136)) (and (not (= (select (arr!18463 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18463 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!649684 d!91795))

(declare-fun b!649914 () Bool)

(declare-fun e!372834 () SeekEntryResult!6910)

(assert (=> b!649914 (= e!372834 Undefined!6910)))

(declare-fun b!649915 () Bool)

(declare-fun e!372835 () SeekEntryResult!6910)

(assert (=> b!649915 (= e!372834 e!372835)))

(declare-fun lt!301941 () (_ BitVec 64))

(declare-fun lt!301939 () SeekEntryResult!6910)

(assert (=> b!649915 (= lt!301941 (select (arr!18463 a!2986) (index!29988 lt!301939)))))

(declare-fun c!74621 () Bool)

(assert (=> b!649915 (= c!74621 (= lt!301941 k0!1786))))

(declare-fun e!372836 () SeekEntryResult!6910)

(declare-fun b!649916 () Bool)

(assert (=> b!649916 (= e!372836 (seekKeyOrZeroReturnVacant!0 (x!58796 lt!301939) (index!29988 lt!301939) (index!29988 lt!301939) k0!1786 a!2986 mask!3053))))

(declare-fun b!649917 () Bool)

(assert (=> b!649917 (= e!372835 (Found!6910 (index!29988 lt!301939)))))

(declare-fun b!649918 () Bool)

(assert (=> b!649918 (= e!372836 (MissingZero!6910 (index!29988 lt!301939)))))

(declare-fun b!649919 () Bool)

(declare-fun c!74622 () Bool)

(assert (=> b!649919 (= c!74622 (= lt!301941 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!649919 (= e!372835 e!372836)))

(declare-fun d!91797 () Bool)

(declare-fun lt!301940 () SeekEntryResult!6910)

(assert (=> d!91797 (and (or ((_ is Undefined!6910) lt!301940) (not ((_ is Found!6910) lt!301940)) (and (bvsge (index!29987 lt!301940) #b00000000000000000000000000000000) (bvslt (index!29987 lt!301940) (size!18827 a!2986)))) (or ((_ is Undefined!6910) lt!301940) ((_ is Found!6910) lt!301940) (not ((_ is MissingZero!6910) lt!301940)) (and (bvsge (index!29986 lt!301940) #b00000000000000000000000000000000) (bvslt (index!29986 lt!301940) (size!18827 a!2986)))) (or ((_ is Undefined!6910) lt!301940) ((_ is Found!6910) lt!301940) ((_ is MissingZero!6910) lt!301940) (not ((_ is MissingVacant!6910) lt!301940)) (and (bvsge (index!29989 lt!301940) #b00000000000000000000000000000000) (bvslt (index!29989 lt!301940) (size!18827 a!2986)))) (or ((_ is Undefined!6910) lt!301940) (ite ((_ is Found!6910) lt!301940) (= (select (arr!18463 a!2986) (index!29987 lt!301940)) k0!1786) (ite ((_ is MissingZero!6910) lt!301940) (= (select (arr!18463 a!2986) (index!29986 lt!301940)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6910) lt!301940) (= (select (arr!18463 a!2986) (index!29989 lt!301940)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!91797 (= lt!301940 e!372834)))

(declare-fun c!74623 () Bool)

(assert (=> d!91797 (= c!74623 (and ((_ is Intermediate!6910) lt!301939) (undefined!7722 lt!301939)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38522 (_ BitVec 32)) SeekEntryResult!6910)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91797 (= lt!301939 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!91797 (validMask!0 mask!3053)))

(assert (=> d!91797 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!301940)))

(assert (= (and d!91797 c!74623) b!649914))

(assert (= (and d!91797 (not c!74623)) b!649915))

(assert (= (and b!649915 c!74621) b!649917))

(assert (= (and b!649915 (not c!74621)) b!649919))

(assert (= (and b!649919 c!74622) b!649918))

(assert (= (and b!649919 (not c!74622)) b!649916))

(declare-fun m!623199 () Bool)

(assert (=> b!649915 m!623199))

(declare-fun m!623201 () Bool)

(assert (=> b!649916 m!623201))

(declare-fun m!623203 () Bool)

(assert (=> d!91797 m!623203))

(declare-fun m!623205 () Bool)

(assert (=> d!91797 m!623205))

(declare-fun m!623207 () Bool)

(assert (=> d!91797 m!623207))

(declare-fun m!623209 () Bool)

(assert (=> d!91797 m!623209))

(assert (=> d!91797 m!622971))

(assert (=> d!91797 m!623209))

(declare-fun m!623211 () Bool)

(assert (=> d!91797 m!623211))

(assert (=> b!649673 d!91797))

(declare-fun d!91825 () Bool)

(assert (=> d!91825 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!649674 d!91825))

(declare-fun b!649928 () Bool)

(declare-fun e!372843 () SeekEntryResult!6910)

(declare-fun e!372845 () SeekEntryResult!6910)

(assert (=> b!649928 (= e!372843 e!372845)))

(declare-fun c!74626 () Bool)

(declare-fun lt!301948 () (_ BitVec 64))

(assert (=> b!649928 (= c!74626 (= lt!301948 lt!301836))))

(declare-fun b!649929 () Bool)

(assert (=> b!649929 (= e!372845 (Found!6910 lt!301829))))

(declare-fun d!91827 () Bool)

(declare-fun lt!301949 () SeekEntryResult!6910)

(assert (=> d!91827 (and (or ((_ is Undefined!6910) lt!301949) (not ((_ is Found!6910) lt!301949)) (and (bvsge (index!29987 lt!301949) #b00000000000000000000000000000000) (bvslt (index!29987 lt!301949) (size!18827 lt!301832)))) (or ((_ is Undefined!6910) lt!301949) ((_ is Found!6910) lt!301949) (not ((_ is MissingVacant!6910) lt!301949)) (not (= (index!29989 lt!301949) vacantSpotIndex!68)) (and (bvsge (index!29989 lt!301949) #b00000000000000000000000000000000) (bvslt (index!29989 lt!301949) (size!18827 lt!301832)))) (or ((_ is Undefined!6910) lt!301949) (ite ((_ is Found!6910) lt!301949) (= (select (arr!18463 lt!301832) (index!29987 lt!301949)) lt!301836) (and ((_ is MissingVacant!6910) lt!301949) (= (index!29989 lt!301949) vacantSpotIndex!68) (= (select (arr!18463 lt!301832) (index!29989 lt!301949)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91827 (= lt!301949 e!372843)))

(declare-fun c!74628 () Bool)

(assert (=> d!91827 (= c!74628 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!91827 (= lt!301948 (select (arr!18463 lt!301832) lt!301829))))

(assert (=> d!91827 (validMask!0 mask!3053)))

(assert (=> d!91827 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301829 vacantSpotIndex!68 lt!301836 lt!301832 mask!3053) lt!301949)))

(declare-fun b!649930 () Bool)

(declare-fun e!372844 () SeekEntryResult!6910)

(assert (=> b!649930 (= e!372844 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!301829 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!301836 lt!301832 mask!3053))))

(declare-fun b!649931 () Bool)

(assert (=> b!649931 (= e!372844 (MissingVacant!6910 vacantSpotIndex!68))))

(declare-fun b!649932 () Bool)

(declare-fun c!74627 () Bool)

(assert (=> b!649932 (= c!74627 (= lt!301948 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!649932 (= e!372845 e!372844)))

(declare-fun b!649933 () Bool)

(assert (=> b!649933 (= e!372843 Undefined!6910)))

(assert (= (and d!91827 c!74628) b!649933))

(assert (= (and d!91827 (not c!74628)) b!649928))

(assert (= (and b!649928 c!74626) b!649929))

(assert (= (and b!649928 (not c!74626)) b!649932))

(assert (= (and b!649932 c!74627) b!649931))

(assert (= (and b!649932 (not c!74627)) b!649930))

(declare-fun m!623213 () Bool)

(assert (=> d!91827 m!623213))

(declare-fun m!623215 () Bool)

(assert (=> d!91827 m!623215))

(declare-fun m!623217 () Bool)

(assert (=> d!91827 m!623217))

(assert (=> d!91827 m!622971))

(declare-fun m!623219 () Bool)

(assert (=> b!649930 m!623219))

(assert (=> b!649930 m!623219))

(declare-fun m!623221 () Bool)

(assert (=> b!649930 m!623221))

(assert (=> b!649671 d!91827))

(declare-fun d!91829 () Bool)

(declare-fun lt!301961 () (_ BitVec 32))

(assert (=> d!91829 (and (bvsge lt!301961 #b00000000000000000000000000000000) (bvslt lt!301961 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91829 (= lt!301961 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!91829 (validMask!0 mask!3053)))

(assert (=> d!91829 (= (nextIndex!0 index!984 x!910 mask!3053) lt!301961)))

(declare-fun bs!19389 () Bool)

(assert (= bs!19389 d!91829))

(declare-fun m!623231 () Bool)

(assert (=> bs!19389 m!623231))

(assert (=> bs!19389 m!622971))

(assert (=> b!649671 d!91829))

(declare-fun d!91837 () Bool)

(declare-fun e!372880 () Bool)

(assert (=> d!91837 e!372880))

(declare-fun res!421430 () Bool)

(assert (=> d!91837 (=> (not res!421430) (not e!372880))))

(assert (=> d!91837 (= res!421430 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18827 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18827 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18827 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18827 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18827 a!2986))))))

(declare-fun lt!301979 () Unit!22132)

(declare-fun choose!9 (array!38522 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22132)

(assert (=> d!91837 (= lt!301979 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301829 vacantSpotIndex!68 mask!3053))))

(assert (=> d!91837 (validMask!0 mask!3053)))

(assert (=> d!91837 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301829 vacantSpotIndex!68 mask!3053) lt!301979)))

(declare-fun b!649982 () Bool)

(assert (=> b!649982 (= e!372880 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301829 vacantSpotIndex!68 (select (arr!18463 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301829 vacantSpotIndex!68 (select (store (arr!18463 a!2986) i!1108 k0!1786) j!136) (array!38523 (store (arr!18463 a!2986) i!1108 k0!1786) (size!18827 a!2986)) mask!3053)))))

(assert (= (and d!91837 res!421430) b!649982))

(declare-fun m!623269 () Bool)

(assert (=> d!91837 m!623269))

(assert (=> d!91837 m!622971))

(assert (=> b!649982 m!622977))

(assert (=> b!649982 m!623017))

(assert (=> b!649982 m!622963))

(assert (=> b!649982 m!622963))

(assert (=> b!649982 m!623025))

(assert (=> b!649982 m!623017))

(declare-fun m!623271 () Bool)

(assert (=> b!649982 m!623271))

(assert (=> b!649671 d!91837))

(declare-fun b!649983 () Bool)

(declare-fun e!372881 () SeekEntryResult!6910)

(declare-fun e!372883 () SeekEntryResult!6910)

(assert (=> b!649983 (= e!372881 e!372883)))

(declare-fun c!74643 () Bool)

(declare-fun lt!301980 () (_ BitVec 64))

(assert (=> b!649983 (= c!74643 (= lt!301980 lt!301836))))

(declare-fun b!649984 () Bool)

(assert (=> b!649984 (= e!372883 (Found!6910 index!984))))

(declare-fun d!91855 () Bool)

(declare-fun lt!301981 () SeekEntryResult!6910)

(assert (=> d!91855 (and (or ((_ is Undefined!6910) lt!301981) (not ((_ is Found!6910) lt!301981)) (and (bvsge (index!29987 lt!301981) #b00000000000000000000000000000000) (bvslt (index!29987 lt!301981) (size!18827 lt!301832)))) (or ((_ is Undefined!6910) lt!301981) ((_ is Found!6910) lt!301981) (not ((_ is MissingVacant!6910) lt!301981)) (not (= (index!29989 lt!301981) vacantSpotIndex!68)) (and (bvsge (index!29989 lt!301981) #b00000000000000000000000000000000) (bvslt (index!29989 lt!301981) (size!18827 lt!301832)))) (or ((_ is Undefined!6910) lt!301981) (ite ((_ is Found!6910) lt!301981) (= (select (arr!18463 lt!301832) (index!29987 lt!301981)) lt!301836) (and ((_ is MissingVacant!6910) lt!301981) (= (index!29989 lt!301981) vacantSpotIndex!68) (= (select (arr!18463 lt!301832) (index!29989 lt!301981)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91855 (= lt!301981 e!372881)))

(declare-fun c!74645 () Bool)

(assert (=> d!91855 (= c!74645 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!91855 (= lt!301980 (select (arr!18463 lt!301832) index!984))))

(assert (=> d!91855 (validMask!0 mask!3053)))

(assert (=> d!91855 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301836 lt!301832 mask!3053) lt!301981)))

(declare-fun b!649985 () Bool)

(declare-fun e!372882 () SeekEntryResult!6910)

(assert (=> b!649985 (= e!372882 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!301836 lt!301832 mask!3053))))

(declare-fun b!649986 () Bool)

(assert (=> b!649986 (= e!372882 (MissingVacant!6910 vacantSpotIndex!68))))

(declare-fun b!649987 () Bool)

(declare-fun c!74644 () Bool)

(assert (=> b!649987 (= c!74644 (= lt!301980 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!649987 (= e!372883 e!372882)))

(declare-fun b!649988 () Bool)

(assert (=> b!649988 (= e!372881 Undefined!6910)))

(assert (= (and d!91855 c!74645) b!649988))

(assert (= (and d!91855 (not c!74645)) b!649983))

(assert (= (and b!649983 c!74643) b!649984))

(assert (= (and b!649983 (not c!74643)) b!649987))

(assert (= (and b!649987 c!74644) b!649986))

(assert (= (and b!649987 (not c!74644)) b!649985))

(declare-fun m!623273 () Bool)

(assert (=> d!91855 m!623273))

(declare-fun m!623275 () Bool)

(assert (=> d!91855 m!623275))

(declare-fun m!623277 () Bool)

(assert (=> d!91855 m!623277))

(assert (=> d!91855 m!622971))

(assert (=> b!649985 m!623015))

(assert (=> b!649985 m!623015))

(declare-fun m!623279 () Bool)

(assert (=> b!649985 m!623279))

(assert (=> b!649671 d!91855))

(declare-fun b!649989 () Bool)

(declare-fun e!372884 () SeekEntryResult!6910)

(declare-fun e!372886 () SeekEntryResult!6910)

(assert (=> b!649989 (= e!372884 e!372886)))

(declare-fun c!74646 () Bool)

(declare-fun lt!301982 () (_ BitVec 64))

(assert (=> b!649989 (= c!74646 (= lt!301982 (select (arr!18463 a!2986) j!136)))))

(declare-fun b!649990 () Bool)

(assert (=> b!649990 (= e!372886 (Found!6910 lt!301829))))

(declare-fun d!91857 () Bool)

(declare-fun lt!301983 () SeekEntryResult!6910)

(assert (=> d!91857 (and (or ((_ is Undefined!6910) lt!301983) (not ((_ is Found!6910) lt!301983)) (and (bvsge (index!29987 lt!301983) #b00000000000000000000000000000000) (bvslt (index!29987 lt!301983) (size!18827 a!2986)))) (or ((_ is Undefined!6910) lt!301983) ((_ is Found!6910) lt!301983) (not ((_ is MissingVacant!6910) lt!301983)) (not (= (index!29989 lt!301983) vacantSpotIndex!68)) (and (bvsge (index!29989 lt!301983) #b00000000000000000000000000000000) (bvslt (index!29989 lt!301983) (size!18827 a!2986)))) (or ((_ is Undefined!6910) lt!301983) (ite ((_ is Found!6910) lt!301983) (= (select (arr!18463 a!2986) (index!29987 lt!301983)) (select (arr!18463 a!2986) j!136)) (and ((_ is MissingVacant!6910) lt!301983) (= (index!29989 lt!301983) vacantSpotIndex!68) (= (select (arr!18463 a!2986) (index!29989 lt!301983)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91857 (= lt!301983 e!372884)))

(declare-fun c!74648 () Bool)

(assert (=> d!91857 (= c!74648 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!91857 (= lt!301982 (select (arr!18463 a!2986) lt!301829))))

(assert (=> d!91857 (validMask!0 mask!3053)))

(assert (=> d!91857 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301829 vacantSpotIndex!68 (select (arr!18463 a!2986) j!136) a!2986 mask!3053) lt!301983)))

(declare-fun e!372885 () SeekEntryResult!6910)

(declare-fun b!649991 () Bool)

(assert (=> b!649991 (= e!372885 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!301829 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18463 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!649992 () Bool)

(assert (=> b!649992 (= e!372885 (MissingVacant!6910 vacantSpotIndex!68))))

(declare-fun b!649993 () Bool)

(declare-fun c!74647 () Bool)

(assert (=> b!649993 (= c!74647 (= lt!301982 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!649993 (= e!372886 e!372885)))

(declare-fun b!649994 () Bool)

(assert (=> b!649994 (= e!372884 Undefined!6910)))

(assert (= (and d!91857 c!74648) b!649994))

(assert (= (and d!91857 (not c!74648)) b!649989))

(assert (= (and b!649989 c!74646) b!649990))

(assert (= (and b!649989 (not c!74646)) b!649993))

(assert (= (and b!649993 c!74647) b!649992))

(assert (= (and b!649993 (not c!74647)) b!649991))

(declare-fun m!623281 () Bool)

(assert (=> d!91857 m!623281))

(declare-fun m!623283 () Bool)

(assert (=> d!91857 m!623283))

(declare-fun m!623285 () Bool)

(assert (=> d!91857 m!623285))

(assert (=> d!91857 m!622971))

(assert (=> b!649991 m!623219))

(assert (=> b!649991 m!623219))

(assert (=> b!649991 m!622963))

(declare-fun m!623287 () Bool)

(assert (=> b!649991 m!623287))

(assert (=> b!649671 d!91857))

(declare-fun d!91859 () Bool)

(declare-fun res!421431 () Bool)

(declare-fun e!372887 () Bool)

(assert (=> d!91859 (=> res!421431 e!372887)))

(assert (=> d!91859 (= res!421431 (= (select (arr!18463 lt!301832) index!984) (select (arr!18463 a!2986) j!136)))))

(assert (=> d!91859 (= (arrayContainsKey!0 lt!301832 (select (arr!18463 a!2986) j!136) index!984) e!372887)))

(declare-fun b!649995 () Bool)

(declare-fun e!372888 () Bool)

(assert (=> b!649995 (= e!372887 e!372888)))

(declare-fun res!421432 () Bool)

(assert (=> b!649995 (=> (not res!421432) (not e!372888))))

(assert (=> b!649995 (= res!421432 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18827 lt!301832)))))

(declare-fun b!649996 () Bool)

(assert (=> b!649996 (= e!372888 (arrayContainsKey!0 lt!301832 (select (arr!18463 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91859 (not res!421431)) b!649995))

(assert (= (and b!649995 res!421432) b!649996))

(assert (=> d!91859 m!623277))

(assert (=> b!649996 m!622963))

(declare-fun m!623289 () Bool)

(assert (=> b!649996 m!623289))

(assert (=> b!649672 d!91859))

(declare-fun b!650033 () Bool)

(declare-fun e!372912 () Bool)

(declare-fun call!33746 () Bool)

(assert (=> b!650033 (= e!372912 call!33746)))

(declare-fun bm!33743 () Bool)

(assert (=> bm!33743 (= call!33746 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!650034 () Bool)

(declare-fun e!372913 () Bool)

(assert (=> b!650034 (= e!372912 e!372913)))

(declare-fun lt!302004 () (_ BitVec 64))

(assert (=> b!650034 (= lt!302004 (select (arr!18463 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!302006 () Unit!22132)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38522 (_ BitVec 64) (_ BitVec 32)) Unit!22132)

(assert (=> b!650034 (= lt!302006 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!302004 #b00000000000000000000000000000000))))

(assert (=> b!650034 (arrayContainsKey!0 a!2986 lt!302004 #b00000000000000000000000000000000)))

(declare-fun lt!302005 () Unit!22132)

(assert (=> b!650034 (= lt!302005 lt!302006)))

(declare-fun res!421441 () Bool)

(assert (=> b!650034 (= res!421441 (= (seekEntryOrOpen!0 (select (arr!18463 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6910 #b00000000000000000000000000000000)))))

(assert (=> b!650034 (=> (not res!421441) (not e!372913))))

(declare-fun b!650036 () Bool)

(declare-fun e!372911 () Bool)

(assert (=> b!650036 (= e!372911 e!372912)))

(declare-fun c!74663 () Bool)

(assert (=> b!650036 (= c!74663 (validKeyInArray!0 (select (arr!18463 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!91861 () Bool)

(declare-fun res!421442 () Bool)

(assert (=> d!91861 (=> res!421442 e!372911)))

(assert (=> d!91861 (= res!421442 (bvsge #b00000000000000000000000000000000 (size!18827 a!2986)))))

(assert (=> d!91861 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!372911)))

(declare-fun b!650035 () Bool)

(assert (=> b!650035 (= e!372913 call!33746)))

(assert (= (and d!91861 (not res!421442)) b!650036))

(assert (= (and b!650036 c!74663) b!650034))

(assert (= (and b!650036 (not c!74663)) b!650033))

(assert (= (and b!650034 res!421441) b!650035))

(assert (= (or b!650035 b!650033) bm!33743))

(declare-fun m!623317 () Bool)

(assert (=> bm!33743 m!623317))

(assert (=> b!650034 m!623097))

(declare-fun m!623319 () Bool)

(assert (=> b!650034 m!623319))

(declare-fun m!623321 () Bool)

(assert (=> b!650034 m!623321))

(assert (=> b!650034 m!623097))

(declare-fun m!623323 () Bool)

(assert (=> b!650034 m!623323))

(assert (=> b!650036 m!623097))

(assert (=> b!650036 m!623097))

(declare-fun m!623325 () Bool)

(assert (=> b!650036 m!623325))

(assert (=> b!649682 d!91861))

(assert (=> b!649689 d!91859))

(assert (=> b!649678 d!91771))

(declare-fun b!650049 () Bool)

(declare-fun e!372923 () Bool)

(declare-fun call!33747 () Bool)

(assert (=> b!650049 (= e!372923 call!33747)))

(declare-fun b!650050 () Bool)

(declare-fun e!372921 () Bool)

(assert (=> b!650050 (= e!372921 e!372923)))

(declare-fun c!74670 () Bool)

(assert (=> b!650050 (= c!74670 (validKeyInArray!0 (select (arr!18463 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!650052 () Bool)

(assert (=> b!650052 (= e!372923 call!33747)))

(declare-fun bm!33744 () Bool)

(assert (=> bm!33744 (= call!33747 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74670 (Cons!12553 (select (arr!18463 a!2986) #b00000000000000000000000000000000) Nil!12554) Nil!12554)))))

(declare-fun b!650053 () Bool)

(declare-fun e!372920 () Bool)

(assert (=> b!650053 (= e!372920 (contains!3177 Nil!12554 (select (arr!18463 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!91879 () Bool)

(declare-fun res!421443 () Bool)

(declare-fun e!372922 () Bool)

(assert (=> d!91879 (=> res!421443 e!372922)))

(assert (=> d!91879 (= res!421443 (bvsge #b00000000000000000000000000000000 (size!18827 a!2986)))))

(assert (=> d!91879 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12554) e!372922)))

(declare-fun b!650051 () Bool)

(assert (=> b!650051 (= e!372922 e!372921)))

(declare-fun res!421444 () Bool)

(assert (=> b!650051 (=> (not res!421444) (not e!372921))))

(assert (=> b!650051 (= res!421444 (not e!372920))))

(declare-fun res!421445 () Bool)

(assert (=> b!650051 (=> (not res!421445) (not e!372920))))

(assert (=> b!650051 (= res!421445 (validKeyInArray!0 (select (arr!18463 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!91879 (not res!421443)) b!650051))

(assert (= (and b!650051 res!421445) b!650053))

(assert (= (and b!650051 res!421444) b!650050))

(assert (= (and b!650050 c!74670) b!650049))

(assert (= (and b!650050 (not c!74670)) b!650052))

(assert (= (or b!650049 b!650052) bm!33744))

(assert (=> b!650050 m!623097))

(assert (=> b!650050 m!623097))

(assert (=> b!650050 m!623325))

(assert (=> bm!33744 m!623097))

(declare-fun m!623349 () Bool)

(assert (=> bm!33744 m!623349))

(assert (=> b!650053 m!623097))

(assert (=> b!650053 m!623097))

(declare-fun m!623351 () Bool)

(assert (=> b!650053 m!623351))

(assert (=> b!650051 m!623097))

(assert (=> b!650051 m!623097))

(assert (=> b!650051 m!623325))

(assert (=> b!649691 d!91879))

(declare-fun d!91887 () Bool)

(assert (=> d!91887 (arrayNoDuplicates!0 lt!301832 j!136 Nil!12554)))

(declare-fun lt!302015 () Unit!22132)

(declare-fun choose!39 (array!38522 (_ BitVec 32) (_ BitVec 32)) Unit!22132)

(assert (=> d!91887 (= lt!302015 (choose!39 lt!301832 #b00000000000000000000000000000000 j!136))))

(assert (=> d!91887 (bvslt (size!18827 lt!301832) #b01111111111111111111111111111111)))

(assert (=> d!91887 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!301832 #b00000000000000000000000000000000 j!136) lt!302015)))

(declare-fun bs!19394 () Bool)

(assert (= bs!19394 d!91887))

(assert (=> bs!19394 m!623011))

(declare-fun m!623361 () Bool)

(assert (=> bs!19394 m!623361))

(assert (=> b!649680 d!91887))

(declare-fun d!91893 () Bool)

(assert (=> d!91893 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18827 lt!301832)) (not (= (select (arr!18463 lt!301832) j!136) (select (arr!18463 a!2986) j!136))))))

(declare-fun lt!302023 () Unit!22132)

(declare-fun choose!21 (array!38522 (_ BitVec 64) (_ BitVec 32) List!12557) Unit!22132)

(assert (=> d!91893 (= lt!302023 (choose!21 lt!301832 (select (arr!18463 a!2986) j!136) j!136 Nil!12554))))

(assert (=> d!91893 (bvslt (size!18827 lt!301832) #b01111111111111111111111111111111)))

(assert (=> d!91893 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301832 (select (arr!18463 a!2986) j!136) j!136 Nil!12554) lt!302023)))

(declare-fun bs!19396 () Bool)

(assert (= bs!19396 d!91893))

(assert (=> bs!19396 m!623103))

(assert (=> bs!19396 m!622963))

(declare-fun m!623371 () Bool)

(assert (=> bs!19396 m!623371))

(assert (=> b!649680 d!91893))

(declare-fun b!650063 () Bool)

(declare-fun e!372935 () Bool)

(declare-fun call!33749 () Bool)

(assert (=> b!650063 (= e!372935 call!33749)))

(declare-fun b!650064 () Bool)

(declare-fun e!372933 () Bool)

(assert (=> b!650064 (= e!372933 e!372935)))

(declare-fun c!74672 () Bool)

(assert (=> b!650064 (= c!74672 (validKeyInArray!0 (select (arr!18463 lt!301832) j!136)))))

(declare-fun b!650066 () Bool)

(assert (=> b!650066 (= e!372935 call!33749)))

(declare-fun bm!33746 () Bool)

(assert (=> bm!33746 (= call!33749 (arrayNoDuplicates!0 lt!301832 (bvadd j!136 #b00000000000000000000000000000001) (ite c!74672 (Cons!12553 (select (arr!18463 lt!301832) j!136) Nil!12554) Nil!12554)))))

(declare-fun b!650067 () Bool)

(declare-fun e!372932 () Bool)

(assert (=> b!650067 (= e!372932 (contains!3177 Nil!12554 (select (arr!18463 lt!301832) j!136)))))

(declare-fun d!91899 () Bool)

(declare-fun res!421453 () Bool)

(declare-fun e!372934 () Bool)

(assert (=> d!91899 (=> res!421453 e!372934)))

(assert (=> d!91899 (= res!421453 (bvsge j!136 (size!18827 lt!301832)))))

(assert (=> d!91899 (= (arrayNoDuplicates!0 lt!301832 j!136 Nil!12554) e!372934)))

(declare-fun b!650065 () Bool)

(assert (=> b!650065 (= e!372934 e!372933)))

(declare-fun res!421454 () Bool)

(assert (=> b!650065 (=> (not res!421454) (not e!372933))))

(assert (=> b!650065 (= res!421454 (not e!372932))))

(declare-fun res!421455 () Bool)

(assert (=> b!650065 (=> (not res!421455) (not e!372932))))

(assert (=> b!650065 (= res!421455 (validKeyInArray!0 (select (arr!18463 lt!301832) j!136)))))

(assert (= (and d!91899 (not res!421453)) b!650065))

(assert (= (and b!650065 res!421455) b!650067))

(assert (= (and b!650065 res!421454) b!650064))

(assert (= (and b!650064 c!74672) b!650063))

(assert (= (and b!650064 (not c!74672)) b!650066))

(assert (= (or b!650063 b!650066) bm!33746))

(assert (=> b!650064 m!623103))

(assert (=> b!650064 m!623103))

(declare-fun m!623375 () Bool)

(assert (=> b!650064 m!623375))

(assert (=> bm!33746 m!623103))

(declare-fun m!623377 () Bool)

(assert (=> bm!33746 m!623377))

(assert (=> b!650067 m!623103))

(assert (=> b!650067 m!623103))

(declare-fun m!623381 () Bool)

(assert (=> b!650067 m!623381))

(assert (=> b!650065 m!623103))

(assert (=> b!650065 m!623103))

(assert (=> b!650065 m!623375))

(assert (=> b!649680 d!91899))

(assert (=> b!649680 d!91773))

(declare-fun d!91903 () Bool)

(declare-fun res!421456 () Bool)

(declare-fun e!372939 () Bool)

(assert (=> d!91903 (=> res!421456 e!372939)))

(assert (=> d!91903 (= res!421456 (= (select (arr!18463 lt!301832) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18463 a!2986) j!136)))))

(assert (=> d!91903 (= (arrayContainsKey!0 lt!301832 (select (arr!18463 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!372939)))

(declare-fun b!650074 () Bool)

(declare-fun e!372940 () Bool)

(assert (=> b!650074 (= e!372939 e!372940)))

(declare-fun res!421457 () Bool)

(assert (=> b!650074 (=> (not res!421457) (not e!372940))))

(assert (=> b!650074 (= res!421457 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18827 lt!301832)))))

(declare-fun b!650075 () Bool)

(assert (=> b!650075 (= e!372940 (arrayContainsKey!0 lt!301832 (select (arr!18463 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91903 (not res!421456)) b!650074))

(assert (= (and b!650074 res!421457) b!650075))

(declare-fun m!623391 () Bool)

(assert (=> d!91903 m!623391))

(assert (=> b!650075 m!622963))

(declare-fun m!623393 () Bool)

(assert (=> b!650075 m!623393))

(assert (=> b!649680 d!91903))

(assert (=> b!649680 d!91779))

(declare-fun d!91907 () Bool)

(assert (=> d!91907 (arrayContainsKey!0 lt!301832 (select (arr!18463 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!302027 () Unit!22132)

(assert (=> d!91907 (= lt!302027 (choose!114 lt!301832 (select (arr!18463 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!91907 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!91907 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301832 (select (arr!18463 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!302027)))

(declare-fun bs!19398 () Bool)

(assert (= bs!19398 d!91907))

(assert (=> bs!19398 m!622963))

(assert (=> bs!19398 m!623007))

(assert (=> bs!19398 m!622963))

(declare-fun m!623395 () Bool)

(assert (=> bs!19398 m!623395))

(assert (=> b!649680 d!91907))

(check-sat (not b!649991) (not bm!33725) (not b!649916) (not d!91855) (not b!649996) (not d!91797) (not b!650053) (not b!649985) (not b!650067) (not d!91857) (not b!650050) (not bm!33744) (not b!650051) (not b!649803) (not d!91907) (not d!91893) (not d!91779) (not d!91765) (not b!650065) (not d!91827) (not b!650034) (not d!91837) (not b!649930) (not b!649786) (not b!649982) (not b!650075) (not b!650036) (not d!91769) (not b!649798) (not b!650064) (not b!649775) (not b!649784) (not bm!33746) (not bm!33743) (not b!649799) (not d!91887) (not d!91829) (not b!649806) (not b!649801))
(check-sat)
