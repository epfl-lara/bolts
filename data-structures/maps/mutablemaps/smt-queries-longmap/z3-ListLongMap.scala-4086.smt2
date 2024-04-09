; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56024 () Bool)

(assert start!56024)

(declare-fun b!615702 () Bool)

(declare-fun res!396704 () Bool)

(declare-fun e!353027 () Bool)

(assert (=> b!615702 (=> (not res!396704) (not e!353027))))

(declare-datatypes ((array!37457 0))(
  ( (array!37458 (arr!17971 (Array (_ BitVec 32) (_ BitVec 64))) (size!18335 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37457)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37457 (_ BitVec 32)) Bool)

(assert (=> b!615702 (= res!396704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!396698 () Bool)

(declare-fun e!353031 () Bool)

(assert (=> start!56024 (=> (not res!396698) (not e!353031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56024 (= res!396698 (validMask!0 mask!3053))))

(assert (=> start!56024 e!353031))

(assert (=> start!56024 true))

(declare-fun array_inv!13745 (array!37457) Bool)

(assert (=> start!56024 (array_inv!13745 a!2986)))

(declare-fun b!615703 () Bool)

(declare-datatypes ((Unit!20000 0))(
  ( (Unit!20001) )
))
(declare-fun e!353038 () Unit!20000)

(declare-fun Unit!20002 () Unit!20000)

(assert (=> b!615703 (= e!353038 Unit!20002)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun res!396705 () Bool)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!615703 (= res!396705 (= (select (store (arr!17971 a!2986) i!1108 k0!1786) index!984) (select (arr!17971 a!2986) j!136)))))

(declare-fun e!353035 () Bool)

(assert (=> b!615703 (=> (not res!396705) (not e!353035))))

(assert (=> b!615703 e!353035))

(declare-fun c!69874 () Bool)

(assert (=> b!615703 (= c!69874 (bvslt j!136 index!984))))

(declare-fun lt!283040 () Unit!20000)

(declare-fun e!353025 () Unit!20000)

(assert (=> b!615703 (= lt!283040 e!353025)))

(declare-fun c!69875 () Bool)

(assert (=> b!615703 (= c!69875 (bvslt index!984 j!136))))

(declare-fun lt!283050 () Unit!20000)

(declare-fun e!353028 () Unit!20000)

(assert (=> b!615703 (= lt!283050 e!353028)))

(assert (=> b!615703 false))

(declare-fun b!615704 () Bool)

(declare-fun res!396701 () Bool)

(assert (=> b!615704 (=> (not res!396701) (not e!353027))))

(declare-datatypes ((List!12065 0))(
  ( (Nil!12062) (Cons!12061 (h!13106 (_ BitVec 64)) (t!18301 List!12065)) )
))
(declare-fun arrayNoDuplicates!0 (array!37457 (_ BitVec 32) List!12065) Bool)

(assert (=> b!615704 (= res!396701 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12062))))

(declare-fun b!615705 () Bool)

(assert (=> b!615705 false))

(declare-fun lt!283038 () Unit!20000)

(declare-fun lt!283055 () array!37457)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37457 (_ BitVec 64) (_ BitVec 32) List!12065) Unit!20000)

(assert (=> b!615705 (= lt!283038 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283055 (select (arr!17971 a!2986) j!136) j!136 Nil!12062))))

(assert (=> b!615705 (arrayNoDuplicates!0 lt!283055 j!136 Nil!12062)))

(declare-fun lt!283056 () Unit!20000)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37457 (_ BitVec 32) (_ BitVec 32)) Unit!20000)

(assert (=> b!615705 (= lt!283056 (lemmaNoDuplicateFromThenFromBigger!0 lt!283055 #b00000000000000000000000000000000 j!136))))

(assert (=> b!615705 (arrayNoDuplicates!0 lt!283055 #b00000000000000000000000000000000 Nil!12062)))

(declare-fun lt!283052 () Unit!20000)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37457 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12065) Unit!20000)

(assert (=> b!615705 (= lt!283052 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12062))))

(declare-fun arrayContainsKey!0 (array!37457 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!615705 (arrayContainsKey!0 lt!283055 (select (arr!17971 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!283045 () Unit!20000)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37457 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20000)

(assert (=> b!615705 (= lt!283045 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283055 (select (arr!17971 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20003 () Unit!20000)

(assert (=> b!615705 (= e!353025 Unit!20003)))

(declare-fun b!615706 () Bool)

(declare-fun e!353026 () Bool)

(assert (=> b!615706 (= e!353027 e!353026)))

(declare-fun res!396707 () Bool)

(assert (=> b!615706 (=> (not res!396707) (not e!353026))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!615706 (= res!396707 (= (select (store (arr!17971 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!615706 (= lt!283055 (array!37458 (store (arr!17971 a!2986) i!1108 k0!1786) (size!18335 a!2986)))))

(declare-fun b!615707 () Bool)

(declare-fun e!353036 () Bool)

(assert (=> b!615707 (= e!353026 e!353036)))

(declare-fun res!396702 () Bool)

(assert (=> b!615707 (=> (not res!396702) (not e!353036))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6418 0))(
  ( (MissingZero!6418 (index!27955 (_ BitVec 32))) (Found!6418 (index!27956 (_ BitVec 32))) (Intermediate!6418 (undefined!7230 Bool) (index!27957 (_ BitVec 32)) (x!56779 (_ BitVec 32))) (Undefined!6418) (MissingVacant!6418 (index!27958 (_ BitVec 32))) )
))
(declare-fun lt!283053 () SeekEntryResult!6418)

(assert (=> b!615707 (= res!396702 (and (= lt!283053 (Found!6418 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17971 a!2986) index!984) (select (arr!17971 a!2986) j!136))) (not (= (select (arr!17971 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37457 (_ BitVec 32)) SeekEntryResult!6418)

(assert (=> b!615707 (= lt!283053 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17971 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!615708 () Bool)

(declare-fun Unit!20004 () Unit!20000)

(assert (=> b!615708 (= e!353028 Unit!20004)))

(declare-fun b!615709 () Bool)

(declare-fun res!396692 () Bool)

(assert (=> b!615709 (=> (not res!396692) (not e!353031))))

(assert (=> b!615709 (= res!396692 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!615710 () Bool)

(declare-fun e!353032 () Bool)

(declare-fun lt!283043 () SeekEntryResult!6418)

(assert (=> b!615710 (= e!353032 (= lt!283053 lt!283043))))

(declare-fun b!615711 () Bool)

(declare-fun res!396706 () Bool)

(assert (=> b!615711 (=> (not res!396706) (not e!353031))))

(assert (=> b!615711 (= res!396706 (and (= (size!18335 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18335 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18335 a!2986)) (not (= i!1108 j!136))))))

(declare-fun e!353037 () Bool)

(declare-fun b!615712 () Bool)

(assert (=> b!615712 (= e!353037 (arrayContainsKey!0 lt!283055 (select (arr!17971 a!2986) j!136) index!984))))

(declare-fun b!615713 () Bool)

(declare-fun res!396694 () Bool)

(assert (=> b!615713 (=> (not res!396694) (not e!353031))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!615713 (= res!396694 (validKeyInArray!0 (select (arr!17971 a!2986) j!136)))))

(declare-fun b!615714 () Bool)

(declare-fun e!353029 () Bool)

(assert (=> b!615714 (= e!353029 (arrayContainsKey!0 lt!283055 (select (arr!17971 a!2986) j!136) index!984))))

(declare-fun b!615715 () Bool)

(assert (=> b!615715 (= e!353031 e!353027)))

(declare-fun res!396699 () Bool)

(assert (=> b!615715 (=> (not res!396699) (not e!353027))))

(declare-fun lt!283048 () SeekEntryResult!6418)

(assert (=> b!615715 (= res!396699 (or (= lt!283048 (MissingZero!6418 i!1108)) (= lt!283048 (MissingVacant!6418 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37457 (_ BitVec 32)) SeekEntryResult!6418)

(assert (=> b!615715 (= lt!283048 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!615716 () Bool)

(assert (=> b!615716 false))

(declare-fun lt!283054 () Unit!20000)

(assert (=> b!615716 (= lt!283054 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283055 (select (arr!17971 a!2986) j!136) index!984 Nil!12062))))

(assert (=> b!615716 (arrayNoDuplicates!0 lt!283055 index!984 Nil!12062)))

(declare-fun lt!283044 () Unit!20000)

(assert (=> b!615716 (= lt!283044 (lemmaNoDuplicateFromThenFromBigger!0 lt!283055 #b00000000000000000000000000000000 index!984))))

(assert (=> b!615716 (arrayNoDuplicates!0 lt!283055 #b00000000000000000000000000000000 Nil!12062)))

(declare-fun lt!283051 () Unit!20000)

(assert (=> b!615716 (= lt!283051 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12062))))

(assert (=> b!615716 (arrayContainsKey!0 lt!283055 (select (arr!17971 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!283037 () Unit!20000)

(assert (=> b!615716 (= lt!283037 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283055 (select (arr!17971 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!615716 e!353037))

(declare-fun res!396697 () Bool)

(assert (=> b!615716 (=> (not res!396697) (not e!353037))))

(assert (=> b!615716 (= res!396697 (arrayContainsKey!0 lt!283055 (select (arr!17971 a!2986) j!136) j!136))))

(declare-fun Unit!20005 () Unit!20000)

(assert (=> b!615716 (= e!353028 Unit!20005)))

(declare-fun b!615717 () Bool)

(assert (=> b!615717 (= e!353036 (not true))))

(declare-fun lt!283049 () Unit!20000)

(assert (=> b!615717 (= lt!283049 e!353038)))

(declare-fun c!69872 () Bool)

(declare-fun lt!283039 () SeekEntryResult!6418)

(assert (=> b!615717 (= c!69872 (= lt!283039 (Found!6418 index!984)))))

(declare-fun lt!283041 () Unit!20000)

(declare-fun e!353030 () Unit!20000)

(assert (=> b!615717 (= lt!283041 e!353030)))

(declare-fun c!69873 () Bool)

(assert (=> b!615717 (= c!69873 (= lt!283039 Undefined!6418))))

(declare-fun lt!283046 () (_ BitVec 64))

(assert (=> b!615717 (= lt!283039 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!283046 lt!283055 mask!3053))))

(assert (=> b!615717 e!353032))

(declare-fun res!396695 () Bool)

(assert (=> b!615717 (=> (not res!396695) (not e!353032))))

(declare-fun lt!283047 () (_ BitVec 32))

(assert (=> b!615717 (= res!396695 (= lt!283043 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283047 vacantSpotIndex!68 lt!283046 lt!283055 mask!3053)))))

(assert (=> b!615717 (= lt!283043 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283047 vacantSpotIndex!68 (select (arr!17971 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!615717 (= lt!283046 (select (store (arr!17971 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!283042 () Unit!20000)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37457 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20000)

(assert (=> b!615717 (= lt!283042 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!283047 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!615717 (= lt!283047 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!615718 () Bool)

(declare-fun Unit!20006 () Unit!20000)

(assert (=> b!615718 (= e!353030 Unit!20006)))

(assert (=> b!615718 false))

(declare-fun b!615719 () Bool)

(declare-fun Unit!20007 () Unit!20000)

(assert (=> b!615719 (= e!353030 Unit!20007)))

(declare-fun b!615720 () Bool)

(declare-fun res!396696 () Bool)

(assert (=> b!615720 (=> (not res!396696) (not e!353027))))

(assert (=> b!615720 (= res!396696 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17971 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!615721 () Bool)

(declare-fun res!396693 () Bool)

(assert (=> b!615721 (=> (not res!396693) (not e!353031))))

(assert (=> b!615721 (= res!396693 (validKeyInArray!0 k0!1786))))

(declare-fun b!615722 () Bool)

(declare-fun res!396703 () Bool)

(assert (=> b!615722 (= res!396703 (arrayContainsKey!0 lt!283055 (select (arr!17971 a!2986) j!136) j!136))))

(assert (=> b!615722 (=> (not res!396703) (not e!353029))))

(declare-fun e!353034 () Bool)

(assert (=> b!615722 (= e!353034 e!353029)))

(declare-fun b!615723 () Bool)

(declare-fun res!396700 () Bool)

(assert (=> b!615723 (= res!396700 (bvsge j!136 index!984))))

(assert (=> b!615723 (=> res!396700 e!353034)))

(assert (=> b!615723 (= e!353035 e!353034)))

(declare-fun b!615724 () Bool)

(declare-fun Unit!20008 () Unit!20000)

(assert (=> b!615724 (= e!353025 Unit!20008)))

(declare-fun b!615725 () Bool)

(declare-fun Unit!20009 () Unit!20000)

(assert (=> b!615725 (= e!353038 Unit!20009)))

(assert (= (and start!56024 res!396698) b!615711))

(assert (= (and b!615711 res!396706) b!615713))

(assert (= (and b!615713 res!396694) b!615721))

(assert (= (and b!615721 res!396693) b!615709))

(assert (= (and b!615709 res!396692) b!615715))

(assert (= (and b!615715 res!396699) b!615702))

(assert (= (and b!615702 res!396704) b!615704))

(assert (= (and b!615704 res!396701) b!615720))

(assert (= (and b!615720 res!396696) b!615706))

(assert (= (and b!615706 res!396707) b!615707))

(assert (= (and b!615707 res!396702) b!615717))

(assert (= (and b!615717 res!396695) b!615710))

(assert (= (and b!615717 c!69873) b!615718))

(assert (= (and b!615717 (not c!69873)) b!615719))

(assert (= (and b!615717 c!69872) b!615703))

(assert (= (and b!615717 (not c!69872)) b!615725))

(assert (= (and b!615703 res!396705) b!615723))

(assert (= (and b!615723 (not res!396700)) b!615722))

(assert (= (and b!615722 res!396703) b!615714))

(assert (= (and b!615703 c!69874) b!615705))

(assert (= (and b!615703 (not c!69874)) b!615724))

(assert (= (and b!615703 c!69875) b!615716))

(assert (= (and b!615703 (not c!69875)) b!615708))

(assert (= (and b!615716 res!396697) b!615712))

(declare-fun m!591943 () Bool)

(assert (=> b!615714 m!591943))

(assert (=> b!615714 m!591943))

(declare-fun m!591945 () Bool)

(assert (=> b!615714 m!591945))

(declare-fun m!591947 () Bool)

(assert (=> b!615706 m!591947))

(declare-fun m!591949 () Bool)

(assert (=> b!615706 m!591949))

(assert (=> b!615703 m!591947))

(declare-fun m!591951 () Bool)

(assert (=> b!615703 m!591951))

(assert (=> b!615703 m!591943))

(declare-fun m!591953 () Bool)

(assert (=> b!615720 m!591953))

(assert (=> b!615713 m!591943))

(assert (=> b!615713 m!591943))

(declare-fun m!591955 () Bool)

(assert (=> b!615713 m!591955))

(declare-fun m!591957 () Bool)

(assert (=> b!615721 m!591957))

(declare-fun m!591959 () Bool)

(assert (=> b!615717 m!591959))

(declare-fun m!591961 () Bool)

(assert (=> b!615717 m!591961))

(declare-fun m!591963 () Bool)

(assert (=> b!615717 m!591963))

(assert (=> b!615717 m!591943))

(declare-fun m!591965 () Bool)

(assert (=> b!615717 m!591965))

(assert (=> b!615717 m!591947))

(declare-fun m!591967 () Bool)

(assert (=> b!615717 m!591967))

(assert (=> b!615717 m!591943))

(declare-fun m!591969 () Bool)

(assert (=> b!615717 m!591969))

(assert (=> b!615722 m!591943))

(assert (=> b!615722 m!591943))

(declare-fun m!591971 () Bool)

(assert (=> b!615722 m!591971))

(assert (=> b!615705 m!591943))

(declare-fun m!591973 () Bool)

(assert (=> b!615705 m!591973))

(assert (=> b!615705 m!591943))

(declare-fun m!591975 () Bool)

(assert (=> b!615705 m!591975))

(declare-fun m!591977 () Bool)

(assert (=> b!615705 m!591977))

(declare-fun m!591979 () Bool)

(assert (=> b!615705 m!591979))

(declare-fun m!591981 () Bool)

(assert (=> b!615705 m!591981))

(assert (=> b!615705 m!591943))

(declare-fun m!591983 () Bool)

(assert (=> b!615705 m!591983))

(declare-fun m!591985 () Bool)

(assert (=> b!615705 m!591985))

(assert (=> b!615705 m!591943))

(assert (=> b!615712 m!591943))

(assert (=> b!615712 m!591943))

(assert (=> b!615712 m!591945))

(declare-fun m!591987 () Bool)

(assert (=> b!615709 m!591987))

(declare-fun m!591989 () Bool)

(assert (=> b!615704 m!591989))

(assert (=> b!615716 m!591943))

(declare-fun m!591991 () Bool)

(assert (=> b!615716 m!591991))

(assert (=> b!615716 m!591943))

(declare-fun m!591993 () Bool)

(assert (=> b!615716 m!591993))

(declare-fun m!591995 () Bool)

(assert (=> b!615716 m!591995))

(assert (=> b!615716 m!591981))

(assert (=> b!615716 m!591985))

(assert (=> b!615716 m!591943))

(assert (=> b!615716 m!591943))

(assert (=> b!615716 m!591971))

(assert (=> b!615716 m!591943))

(declare-fun m!591997 () Bool)

(assert (=> b!615716 m!591997))

(declare-fun m!591999 () Bool)

(assert (=> b!615716 m!591999))

(declare-fun m!592001 () Bool)

(assert (=> b!615715 m!592001))

(declare-fun m!592003 () Bool)

(assert (=> start!56024 m!592003))

(declare-fun m!592005 () Bool)

(assert (=> start!56024 m!592005))

(declare-fun m!592007 () Bool)

(assert (=> b!615707 m!592007))

(assert (=> b!615707 m!591943))

(assert (=> b!615707 m!591943))

(declare-fun m!592009 () Bool)

(assert (=> b!615707 m!592009))

(declare-fun m!592011 () Bool)

(assert (=> b!615702 m!592011))

(check-sat (not b!615722) (not b!615707) (not b!615709) (not b!615721) (not b!615716) (not b!615702) (not b!615715) (not b!615704) (not b!615714) (not b!615717) (not b!615705) (not b!615713) (not b!615712) (not start!56024))
(check-sat)
