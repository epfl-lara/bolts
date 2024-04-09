; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56056 () Bool)

(assert start!56056)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!353746 () Bool)

(declare-datatypes ((array!37489 0))(
  ( (array!37490 (arr!17987 (Array (_ BitVec 32) (_ BitVec 64))) (size!18351 (_ BitVec 32))) )
))
(declare-fun lt!284003 () array!37489)

(declare-fun b!616889 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37489)

(declare-fun arrayContainsKey!0 (array!37489 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!616889 (= e!353746 (arrayContainsKey!0 lt!284003 (select (arr!17987 a!2986) j!136) index!984))))

(declare-fun b!616890 () Bool)

(declare-datatypes ((Unit!20160 0))(
  ( (Unit!20161) )
))
(declare-fun e!353740 () Unit!20160)

(declare-fun Unit!20162 () Unit!20160)

(assert (=> b!616890 (= e!353740 Unit!20162)))

(declare-fun b!616891 () Bool)

(declare-fun res!397497 () Bool)

(declare-fun e!353742 () Bool)

(assert (=> b!616891 (=> (not res!397497) (not e!353742))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37489 (_ BitVec 32)) Bool)

(assert (=> b!616891 (= res!397497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!616892 () Bool)

(assert (=> b!616892 false))

(declare-fun lt!283997 () Unit!20160)

(declare-datatypes ((List!12081 0))(
  ( (Nil!12078) (Cons!12077 (h!13122 (_ BitVec 64)) (t!18317 List!12081)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37489 (_ BitVec 64) (_ BitVec 32) List!12081) Unit!20160)

(assert (=> b!616892 (= lt!283997 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284003 (select (arr!17987 a!2986) j!136) j!136 Nil!12078))))

(declare-fun arrayNoDuplicates!0 (array!37489 (_ BitVec 32) List!12081) Bool)

(assert (=> b!616892 (arrayNoDuplicates!0 lt!284003 j!136 Nil!12078)))

(declare-fun lt!284012 () Unit!20160)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37489 (_ BitVec 32) (_ BitVec 32)) Unit!20160)

(assert (=> b!616892 (= lt!284012 (lemmaNoDuplicateFromThenFromBigger!0 lt!284003 #b00000000000000000000000000000000 j!136))))

(assert (=> b!616892 (arrayNoDuplicates!0 lt!284003 #b00000000000000000000000000000000 Nil!12078)))

(declare-fun lt!284009 () Unit!20160)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37489 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12081) Unit!20160)

(assert (=> b!616892 (= lt!284009 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12078))))

(assert (=> b!616892 (arrayContainsKey!0 lt!284003 (select (arr!17987 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!284000 () Unit!20160)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37489 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20160)

(assert (=> b!616892 (= lt!284000 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284003 (select (arr!17987 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20163 () Unit!20160)

(assert (=> b!616892 (= e!353740 Unit!20163)))

(declare-fun b!616893 () Bool)

(declare-fun e!353732 () Unit!20160)

(declare-fun Unit!20164 () Unit!20160)

(assert (=> b!616893 (= e!353732 Unit!20164)))

(declare-fun b!616894 () Bool)

(declare-fun Unit!20165 () Unit!20160)

(assert (=> b!616894 (= e!353732 Unit!20165)))

(assert (=> b!616894 false))

(declare-fun b!616895 () Bool)

(assert (=> b!616895 false))

(declare-fun lt!284013 () Unit!20160)

(assert (=> b!616895 (= lt!284013 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284003 (select (arr!17987 a!2986) j!136) index!984 Nil!12078))))

(assert (=> b!616895 (arrayNoDuplicates!0 lt!284003 index!984 Nil!12078)))

(declare-fun lt!284014 () Unit!20160)

(assert (=> b!616895 (= lt!284014 (lemmaNoDuplicateFromThenFromBigger!0 lt!284003 #b00000000000000000000000000000000 index!984))))

(assert (=> b!616895 (arrayNoDuplicates!0 lt!284003 #b00000000000000000000000000000000 Nil!12078)))

(declare-fun lt!284002 () Unit!20160)

(assert (=> b!616895 (= lt!284002 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12078))))

(assert (=> b!616895 (arrayContainsKey!0 lt!284003 (select (arr!17987 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!284004 () Unit!20160)

(assert (=> b!616895 (= lt!284004 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284003 (select (arr!17987 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!616895 e!353746))

(declare-fun res!397498 () Bool)

(assert (=> b!616895 (=> (not res!397498) (not e!353746))))

(assert (=> b!616895 (= res!397498 (arrayContainsKey!0 lt!284003 (select (arr!17987 a!2986) j!136) j!136))))

(declare-fun e!353744 () Unit!20160)

(declare-fun Unit!20166 () Unit!20160)

(assert (=> b!616895 (= e!353744 Unit!20166)))

(declare-fun b!616896 () Bool)

(declare-fun res!397508 () Bool)

(assert (=> b!616896 (= res!397508 (arrayContainsKey!0 lt!284003 (select (arr!17987 a!2986) j!136) j!136))))

(declare-fun e!353738 () Bool)

(assert (=> b!616896 (=> (not res!397508) (not e!353738))))

(declare-fun e!353733 () Bool)

(assert (=> b!616896 (= e!353733 e!353738)))

(declare-fun b!616897 () Bool)

(declare-fun e!353734 () Unit!20160)

(declare-fun Unit!20167 () Unit!20160)

(assert (=> b!616897 (= e!353734 Unit!20167)))

(declare-fun res!397503 () Bool)

(assert (=> b!616897 (= res!397503 (= (select (store (arr!17987 a!2986) i!1108 k!1786) index!984) (select (arr!17987 a!2986) j!136)))))

(declare-fun e!353739 () Bool)

(assert (=> b!616897 (=> (not res!397503) (not e!353739))))

(assert (=> b!616897 e!353739))

(declare-fun c!70067 () Bool)

(assert (=> b!616897 (= c!70067 (bvslt j!136 index!984))))

(declare-fun lt!284006 () Unit!20160)

(assert (=> b!616897 (= lt!284006 e!353740)))

(declare-fun c!70066 () Bool)

(assert (=> b!616897 (= c!70066 (bvslt index!984 j!136))))

(declare-fun lt!284005 () Unit!20160)

(assert (=> b!616897 (= lt!284005 e!353744)))

(assert (=> b!616897 false))

(declare-fun b!616898 () Bool)

(declare-fun e!353741 () Bool)

(assert (=> b!616898 (= e!353741 true)))

(assert (=> b!616898 (= (select (store (arr!17987 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!616899 () Bool)

(declare-fun res!397506 () Bool)

(declare-fun e!353737 () Bool)

(assert (=> b!616899 (=> (not res!397506) (not e!353737))))

(assert (=> b!616899 (= res!397506 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!616900 () Bool)

(declare-fun res!397496 () Bool)

(assert (=> b!616900 (= res!397496 (bvsge j!136 index!984))))

(assert (=> b!616900 (=> res!397496 e!353733)))

(assert (=> b!616900 (= e!353739 e!353733)))

(declare-fun b!616901 () Bool)

(declare-fun Unit!20168 () Unit!20160)

(assert (=> b!616901 (= e!353744 Unit!20168)))

(declare-fun b!616902 () Bool)

(declare-fun e!353736 () Bool)

(assert (=> b!616902 (= e!353742 e!353736)))

(declare-fun res!397500 () Bool)

(assert (=> b!616902 (=> (not res!397500) (not e!353736))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!616902 (= res!397500 (= (select (store (arr!17987 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!616902 (= lt!284003 (array!37490 (store (arr!17987 a!2986) i!1108 k!1786) (size!18351 a!2986)))))

(declare-fun b!616903 () Bool)

(declare-fun res!397510 () Bool)

(assert (=> b!616903 (=> (not res!397510) (not e!353737))))

(assert (=> b!616903 (= res!397510 (and (= (size!18351 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18351 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18351 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!616904 () Bool)

(declare-fun res!397505 () Bool)

(assert (=> b!616904 (=> (not res!397505) (not e!353737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!616904 (= res!397505 (validKeyInArray!0 (select (arr!17987 a!2986) j!136)))))

(declare-fun b!616905 () Bool)

(declare-fun res!397504 () Bool)

(assert (=> b!616905 (=> (not res!397504) (not e!353742))))

(assert (=> b!616905 (= res!397504 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12078))))

(declare-fun b!616906 () Bool)

(assert (=> b!616906 (= e!353738 (arrayContainsKey!0 lt!284003 (select (arr!17987 a!2986) j!136) index!984))))

(declare-fun b!616907 () Bool)

(declare-fun res!397509 () Bool)

(assert (=> b!616907 (=> (not res!397509) (not e!353742))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!616907 (= res!397509 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17987 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!616908 () Bool)

(declare-fun e!353745 () Bool)

(assert (=> b!616908 (= e!353745 (not e!353741))))

(declare-fun res!397495 () Bool)

(assert (=> b!616908 (=> res!397495 e!353741)))

(declare-datatypes ((SeekEntryResult!6434 0))(
  ( (MissingZero!6434 (index!28019 (_ BitVec 32))) (Found!6434 (index!28020 (_ BitVec 32))) (Intermediate!6434 (undefined!7246 Bool) (index!28021 (_ BitVec 32)) (x!56835 (_ BitVec 32))) (Undefined!6434) (MissingVacant!6434 (index!28022 (_ BitVec 32))) )
))
(declare-fun lt!284015 () SeekEntryResult!6434)

(assert (=> b!616908 (= res!397495 (not (= lt!284015 (MissingVacant!6434 vacantSpotIndex!68))))))

(declare-fun lt!284007 () Unit!20160)

(assert (=> b!616908 (= lt!284007 e!353734)))

(declare-fun c!70065 () Bool)

(assert (=> b!616908 (= c!70065 (= lt!284015 (Found!6434 index!984)))))

(declare-fun lt!284011 () Unit!20160)

(assert (=> b!616908 (= lt!284011 e!353732)))

(declare-fun c!70064 () Bool)

(assert (=> b!616908 (= c!70064 (= lt!284015 Undefined!6434))))

(declare-fun lt!284001 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37489 (_ BitVec 32)) SeekEntryResult!6434)

(assert (=> b!616908 (= lt!284015 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!284001 lt!284003 mask!3053))))

(declare-fun e!353743 () Bool)

(assert (=> b!616908 e!353743))

(declare-fun res!397499 () Bool)

(assert (=> b!616908 (=> (not res!397499) (not e!353743))))

(declare-fun lt!284008 () (_ BitVec 32))

(declare-fun lt!284010 () SeekEntryResult!6434)

(assert (=> b!616908 (= res!397499 (= lt!284010 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284008 vacantSpotIndex!68 lt!284001 lt!284003 mask!3053)))))

(assert (=> b!616908 (= lt!284010 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284008 vacantSpotIndex!68 (select (arr!17987 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!616908 (= lt!284001 (select (store (arr!17987 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!283999 () Unit!20160)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37489 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20160)

(assert (=> b!616908 (= lt!283999 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!284008 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!616908 (= lt!284008 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!616909 () Bool)

(assert (=> b!616909 (= e!353736 e!353745)))

(declare-fun res!397501 () Bool)

(assert (=> b!616909 (=> (not res!397501) (not e!353745))))

(declare-fun lt!283998 () SeekEntryResult!6434)

(assert (=> b!616909 (= res!397501 (and (= lt!283998 (Found!6434 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17987 a!2986) index!984) (select (arr!17987 a!2986) j!136))) (not (= (select (arr!17987 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!616909 (= lt!283998 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17987 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!397502 () Bool)

(assert (=> start!56056 (=> (not res!397502) (not e!353737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56056 (= res!397502 (validMask!0 mask!3053))))

(assert (=> start!56056 e!353737))

(assert (=> start!56056 true))

(declare-fun array_inv!13761 (array!37489) Bool)

(assert (=> start!56056 (array_inv!13761 a!2986)))

(declare-fun b!616910 () Bool)

(declare-fun res!397507 () Bool)

(assert (=> b!616910 (=> (not res!397507) (not e!353737))))

(assert (=> b!616910 (= res!397507 (validKeyInArray!0 k!1786))))

(declare-fun b!616911 () Bool)

(assert (=> b!616911 (= e!353743 (= lt!283998 lt!284010))))

(declare-fun b!616912 () Bool)

(declare-fun Unit!20169 () Unit!20160)

(assert (=> b!616912 (= e!353734 Unit!20169)))

(declare-fun b!616913 () Bool)

(assert (=> b!616913 (= e!353737 e!353742)))

(declare-fun res!397511 () Bool)

(assert (=> b!616913 (=> (not res!397511) (not e!353742))))

(declare-fun lt!284016 () SeekEntryResult!6434)

(assert (=> b!616913 (= res!397511 (or (= lt!284016 (MissingZero!6434 i!1108)) (= lt!284016 (MissingVacant!6434 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37489 (_ BitVec 32)) SeekEntryResult!6434)

(assert (=> b!616913 (= lt!284016 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!56056 res!397502) b!616903))

(assert (= (and b!616903 res!397510) b!616904))

(assert (= (and b!616904 res!397505) b!616910))

(assert (= (and b!616910 res!397507) b!616899))

(assert (= (and b!616899 res!397506) b!616913))

(assert (= (and b!616913 res!397511) b!616891))

(assert (= (and b!616891 res!397497) b!616905))

(assert (= (and b!616905 res!397504) b!616907))

(assert (= (and b!616907 res!397509) b!616902))

(assert (= (and b!616902 res!397500) b!616909))

(assert (= (and b!616909 res!397501) b!616908))

(assert (= (and b!616908 res!397499) b!616911))

(assert (= (and b!616908 c!70064) b!616894))

(assert (= (and b!616908 (not c!70064)) b!616893))

(assert (= (and b!616908 c!70065) b!616897))

(assert (= (and b!616908 (not c!70065)) b!616912))

(assert (= (and b!616897 res!397503) b!616900))

(assert (= (and b!616900 (not res!397496)) b!616896))

(assert (= (and b!616896 res!397508) b!616906))

(assert (= (and b!616897 c!70067) b!616892))

(assert (= (and b!616897 (not c!70067)) b!616890))

(assert (= (and b!616897 c!70066) b!616895))

(assert (= (and b!616897 (not c!70066)) b!616901))

(assert (= (and b!616895 res!397498) b!616889))

(assert (= (and b!616908 (not res!397495)) b!616898))

(declare-fun m!593069 () Bool)

(assert (=> b!616895 m!593069))

(declare-fun m!593071 () Bool)

(assert (=> b!616895 m!593071))

(declare-fun m!593073 () Bool)

(assert (=> b!616895 m!593073))

(assert (=> b!616895 m!593071))

(declare-fun m!593075 () Bool)

(assert (=> b!616895 m!593075))

(declare-fun m!593077 () Bool)

(assert (=> b!616895 m!593077))

(assert (=> b!616895 m!593071))

(declare-fun m!593079 () Bool)

(assert (=> b!616895 m!593079))

(declare-fun m!593081 () Bool)

(assert (=> b!616895 m!593081))

(assert (=> b!616895 m!593071))

(declare-fun m!593083 () Bool)

(assert (=> b!616895 m!593083))

(assert (=> b!616895 m!593071))

(declare-fun m!593085 () Bool)

(assert (=> b!616895 m!593085))

(declare-fun m!593087 () Bool)

(assert (=> b!616907 m!593087))

(declare-fun m!593089 () Bool)

(assert (=> b!616908 m!593089))

(assert (=> b!616908 m!593071))

(declare-fun m!593091 () Bool)

(assert (=> b!616908 m!593091))

(assert (=> b!616908 m!593071))

(declare-fun m!593093 () Bool)

(assert (=> b!616908 m!593093))

(declare-fun m!593095 () Bool)

(assert (=> b!616908 m!593095))

(declare-fun m!593097 () Bool)

(assert (=> b!616908 m!593097))

(declare-fun m!593099 () Bool)

(assert (=> b!616908 m!593099))

(declare-fun m!593101 () Bool)

(assert (=> b!616908 m!593101))

(assert (=> b!616898 m!593091))

(declare-fun m!593103 () Bool)

(assert (=> b!616898 m!593103))

(assert (=> b!616904 m!593071))

(assert (=> b!616904 m!593071))

(declare-fun m!593105 () Bool)

(assert (=> b!616904 m!593105))

(declare-fun m!593107 () Bool)

(assert (=> b!616899 m!593107))

(declare-fun m!593109 () Bool)

(assert (=> b!616913 m!593109))

(declare-fun m!593111 () Bool)

(assert (=> b!616909 m!593111))

(assert (=> b!616909 m!593071))

(assert (=> b!616909 m!593071))

(declare-fun m!593113 () Bool)

(assert (=> b!616909 m!593113))

(declare-fun m!593115 () Bool)

(assert (=> b!616891 m!593115))

(declare-fun m!593117 () Bool)

(assert (=> b!616905 m!593117))

(declare-fun m!593119 () Bool)

(assert (=> b!616910 m!593119))

(assert (=> b!616906 m!593071))

(assert (=> b!616906 m!593071))

(declare-fun m!593121 () Bool)

(assert (=> b!616906 m!593121))

(assert (=> b!616889 m!593071))

(assert (=> b!616889 m!593071))

(assert (=> b!616889 m!593121))

(assert (=> b!616897 m!593091))

(assert (=> b!616897 m!593103))

(assert (=> b!616897 m!593071))

(assert (=> b!616896 m!593071))

(assert (=> b!616896 m!593071))

(assert (=> b!616896 m!593075))

(assert (=> b!616902 m!593091))

(declare-fun m!593123 () Bool)

(assert (=> b!616902 m!593123))

(assert (=> b!616892 m!593069))

(declare-fun m!593125 () Bool)

(assert (=> b!616892 m!593125))

(assert (=> b!616892 m!593071))

(assert (=> b!616892 m!593071))

(declare-fun m!593127 () Bool)

(assert (=> b!616892 m!593127))

(assert (=> b!616892 m!593071))

(declare-fun m!593129 () Bool)

(assert (=> b!616892 m!593129))

(assert (=> b!616892 m!593081))

(assert (=> b!616892 m!593071))

(declare-fun m!593131 () Bool)

(assert (=> b!616892 m!593131))

(declare-fun m!593133 () Bool)

(assert (=> b!616892 m!593133))

(declare-fun m!593135 () Bool)

(assert (=> start!56056 m!593135))

(declare-fun m!593137 () Bool)

(assert (=> start!56056 m!593137))

(push 1)

