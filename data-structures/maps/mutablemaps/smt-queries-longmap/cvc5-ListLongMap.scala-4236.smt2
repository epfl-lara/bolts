; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58452 () Bool)

(assert start!58452)

(declare-fun res!417980 () Bool)

(declare-fun e!369634 () Bool)

(assert (=> start!58452 (=> (not res!417980) (not e!369634))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58452 (= res!417980 (validMask!0 mask!3053))))

(assert (=> start!58452 e!369634))

(assert (=> start!58452 true))

(declare-datatypes ((array!38424 0))(
  ( (array!38425 (arr!18420 (Array (_ BitVec 32) (_ BitVec 64))) (size!18784 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38424)

(declare-fun array_inv!14194 (array!38424) Bool)

(assert (=> start!58452 (array_inv!14194 a!2986)))

(declare-fun b!645010 () Bool)

(declare-fun res!417971 () Bool)

(declare-fun e!369636 () Bool)

(assert (=> b!645010 (=> (not res!417971) (not e!369636))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38424 (_ BitVec 32)) Bool)

(assert (=> b!645010 (= res!417971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!645011 () Bool)

(declare-fun e!369643 () Bool)

(declare-fun e!369633 () Bool)

(assert (=> b!645011 (= e!369643 (not e!369633))))

(declare-fun res!417969 () Bool)

(assert (=> b!645011 (=> res!417969 e!369633)))

(declare-datatypes ((SeekEntryResult!6867 0))(
  ( (MissingZero!6867 (index!29802 (_ BitVec 32))) (Found!6867 (index!29803 (_ BitVec 32))) (Intermediate!6867 (undefined!7679 Bool) (index!29804 (_ BitVec 32)) (x!58605 (_ BitVec 32))) (Undefined!6867) (MissingVacant!6867 (index!29805 (_ BitVec 32))) )
))
(declare-fun lt!299092 () SeekEntryResult!6867)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!645011 (= res!417969 (not (= lt!299092 (Found!6867 index!984))))))

(declare-datatypes ((Unit!21874 0))(
  ( (Unit!21875) )
))
(declare-fun lt!299099 () Unit!21874)

(declare-fun e!369629 () Unit!21874)

(assert (=> b!645011 (= lt!299099 e!369629)))

(declare-fun c!73891 () Bool)

(assert (=> b!645011 (= c!73891 (= lt!299092 Undefined!6867))))

(declare-fun lt!299097 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!299095 () array!38424)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38424 (_ BitVec 32)) SeekEntryResult!6867)

(assert (=> b!645011 (= lt!299092 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299097 lt!299095 mask!3053))))

(declare-fun e!369631 () Bool)

(assert (=> b!645011 e!369631))

(declare-fun res!417965 () Bool)

(assert (=> b!645011 (=> (not res!417965) (not e!369631))))

(declare-fun lt!299094 () (_ BitVec 32))

(declare-fun lt!299102 () SeekEntryResult!6867)

(assert (=> b!645011 (= res!417965 (= lt!299102 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299094 vacantSpotIndex!68 lt!299097 lt!299095 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!645011 (= lt!299102 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299094 vacantSpotIndex!68 (select (arr!18420 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!645011 (= lt!299097 (select (store (arr!18420 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!299093 () Unit!21874)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38424 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21874)

(assert (=> b!645011 (= lt!299093 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299094 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!645011 (= lt!299094 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!645012 () Bool)

(declare-fun res!417970 () Bool)

(assert (=> b!645012 (=> (not res!417970) (not e!369634))))

(declare-fun arrayContainsKey!0 (array!38424 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!645012 (= res!417970 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!645013 () Bool)

(declare-fun e!369635 () Unit!21874)

(declare-fun Unit!21876 () Unit!21874)

(assert (=> b!645013 (= e!369635 Unit!21876)))

(declare-fun lt!299090 () Unit!21874)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38424 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21874)

(assert (=> b!645013 (= lt!299090 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299095 (select (arr!18420 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!645013 (arrayContainsKey!0 lt!299095 (select (arr!18420 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!299091 () Unit!21874)

(declare-datatypes ((List!12514 0))(
  ( (Nil!12511) (Cons!12510 (h!13555 (_ BitVec 64)) (t!18750 List!12514)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38424 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12514) Unit!21874)

(assert (=> b!645013 (= lt!299091 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12511))))

(declare-fun arrayNoDuplicates!0 (array!38424 (_ BitVec 32) List!12514) Bool)

(assert (=> b!645013 (arrayNoDuplicates!0 lt!299095 #b00000000000000000000000000000000 Nil!12511)))

(declare-fun lt!299098 () Unit!21874)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38424 (_ BitVec 32) (_ BitVec 32)) Unit!21874)

(assert (=> b!645013 (= lt!299098 (lemmaNoDuplicateFromThenFromBigger!0 lt!299095 #b00000000000000000000000000000000 j!136))))

(assert (=> b!645013 (arrayNoDuplicates!0 lt!299095 j!136 Nil!12511)))

(declare-fun lt!299096 () Unit!21874)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38424 (_ BitVec 64) (_ BitVec 32) List!12514) Unit!21874)

(assert (=> b!645013 (= lt!299096 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299095 (select (arr!18420 a!2986) j!136) j!136 Nil!12511))))

(assert (=> b!645013 false))

(declare-fun b!645014 () Bool)

(declare-fun res!417978 () Bool)

(assert (=> b!645014 (=> (not res!417978) (not e!369634))))

(assert (=> b!645014 (= res!417978 (and (= (size!18784 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18784 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18784 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!645015 () Bool)

(declare-fun e!369639 () Bool)

(declare-fun e!369632 () Bool)

(assert (=> b!645015 (= e!369639 e!369632)))

(declare-fun res!417966 () Bool)

(assert (=> b!645015 (=> (not res!417966) (not e!369632))))

(assert (=> b!645015 (= res!417966 (arrayContainsKey!0 lt!299095 (select (arr!18420 a!2986) j!136) j!136))))

(declare-fun b!645016 () Bool)

(declare-fun Unit!21877 () Unit!21874)

(assert (=> b!645016 (= e!369635 Unit!21877)))

(declare-fun b!645017 () Bool)

(declare-fun Unit!21878 () Unit!21874)

(assert (=> b!645017 (= e!369629 Unit!21878)))

(assert (=> b!645017 false))

(declare-fun b!645018 () Bool)

(declare-fun e!369638 () Bool)

(assert (=> b!645018 (= e!369638 (arrayContainsKey!0 lt!299095 (select (arr!18420 a!2986) j!136) index!984))))

(declare-fun b!645019 () Bool)

(declare-fun e!369642 () Bool)

(assert (=> b!645019 (= e!369642 true)))

(assert (=> b!645019 (arrayContainsKey!0 lt!299095 (select (arr!18420 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299103 () Unit!21874)

(assert (=> b!645019 (= lt!299103 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299095 (select (arr!18420 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!645019 e!369638))

(declare-fun res!417973 () Bool)

(assert (=> b!645019 (=> (not res!417973) (not e!369638))))

(assert (=> b!645019 (= res!417973 (arrayContainsKey!0 lt!299095 (select (arr!18420 a!2986) j!136) j!136))))

(declare-fun b!645020 () Bool)

(declare-fun Unit!21879 () Unit!21874)

(assert (=> b!645020 (= e!369629 Unit!21879)))

(declare-fun b!645021 () Bool)

(declare-fun res!417974 () Bool)

(assert (=> b!645021 (=> (not res!417974) (not e!369634))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!645021 (= res!417974 (validKeyInArray!0 (select (arr!18420 a!2986) j!136)))))

(declare-fun b!645022 () Bool)

(declare-fun lt!299088 () SeekEntryResult!6867)

(assert (=> b!645022 (= e!369631 (= lt!299088 lt!299102))))

(declare-fun b!645023 () Bool)

(declare-fun res!417972 () Bool)

(assert (=> b!645023 (=> (not res!417972) (not e!369636))))

(assert (=> b!645023 (= res!417972 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18420 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!645024 () Bool)

(declare-fun e!369640 () Bool)

(assert (=> b!645024 (= e!369633 e!369640)))

(declare-fun res!417977 () Bool)

(assert (=> b!645024 (=> res!417977 e!369640)))

(declare-fun lt!299089 () (_ BitVec 64))

(assert (=> b!645024 (= res!417977 (or (not (= (select (arr!18420 a!2986) j!136) lt!299097)) (not (= (select (arr!18420 a!2986) j!136) lt!299089))))))

(declare-fun e!369630 () Bool)

(assert (=> b!645024 e!369630))

(declare-fun res!417968 () Bool)

(assert (=> b!645024 (=> (not res!417968) (not e!369630))))

(assert (=> b!645024 (= res!417968 (= lt!299089 (select (arr!18420 a!2986) j!136)))))

(assert (=> b!645024 (= lt!299089 (select (store (arr!18420 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!645025 () Bool)

(declare-fun e!369641 () Bool)

(assert (=> b!645025 (= e!369636 e!369641)))

(declare-fun res!417964 () Bool)

(assert (=> b!645025 (=> (not res!417964) (not e!369641))))

(assert (=> b!645025 (= res!417964 (= (select (store (arr!18420 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!645025 (= lt!299095 (array!38425 (store (arr!18420 a!2986) i!1108 k!1786) (size!18784 a!2986)))))

(declare-fun b!645026 () Bool)

(declare-fun res!417962 () Bool)

(assert (=> b!645026 (=> (not res!417962) (not e!369634))))

(assert (=> b!645026 (= res!417962 (validKeyInArray!0 k!1786))))

(declare-fun b!645027 () Bool)

(assert (=> b!645027 (= e!369640 e!369642)))

(declare-fun res!417976 () Bool)

(assert (=> b!645027 (=> res!417976 e!369642)))

(assert (=> b!645027 (= res!417976 (bvsge index!984 j!136))))

(declare-fun lt!299101 () Unit!21874)

(assert (=> b!645027 (= lt!299101 e!369635)))

(declare-fun c!73892 () Bool)

(assert (=> b!645027 (= c!73892 (bvslt j!136 index!984))))

(declare-fun b!645028 () Bool)

(assert (=> b!645028 (= e!369634 e!369636)))

(declare-fun res!417979 () Bool)

(assert (=> b!645028 (=> (not res!417979) (not e!369636))))

(declare-fun lt!299100 () SeekEntryResult!6867)

(assert (=> b!645028 (= res!417979 (or (= lt!299100 (MissingZero!6867 i!1108)) (= lt!299100 (MissingVacant!6867 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38424 (_ BitVec 32)) SeekEntryResult!6867)

(assert (=> b!645028 (= lt!299100 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!645029 () Bool)

(assert (=> b!645029 (= e!369641 e!369643)))

(declare-fun res!417967 () Bool)

(assert (=> b!645029 (=> (not res!417967) (not e!369643))))

(assert (=> b!645029 (= res!417967 (and (= lt!299088 (Found!6867 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18420 a!2986) index!984) (select (arr!18420 a!2986) j!136))) (not (= (select (arr!18420 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!645029 (= lt!299088 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18420 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!645030 () Bool)

(declare-fun res!417975 () Bool)

(assert (=> b!645030 (=> (not res!417975) (not e!369636))))

(assert (=> b!645030 (= res!417975 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12511))))

(declare-fun b!645031 () Bool)

(assert (=> b!645031 (= e!369632 (arrayContainsKey!0 lt!299095 (select (arr!18420 a!2986) j!136) index!984))))

(declare-fun b!645032 () Bool)

(assert (=> b!645032 (= e!369630 e!369639)))

(declare-fun res!417963 () Bool)

(assert (=> b!645032 (=> res!417963 e!369639)))

(assert (=> b!645032 (= res!417963 (or (not (= (select (arr!18420 a!2986) j!136) lt!299097)) (not (= (select (arr!18420 a!2986) j!136) lt!299089)) (bvsge j!136 index!984)))))

(assert (= (and start!58452 res!417980) b!645014))

(assert (= (and b!645014 res!417978) b!645021))

(assert (= (and b!645021 res!417974) b!645026))

(assert (= (and b!645026 res!417962) b!645012))

(assert (= (and b!645012 res!417970) b!645028))

(assert (= (and b!645028 res!417979) b!645010))

(assert (= (and b!645010 res!417971) b!645030))

(assert (= (and b!645030 res!417975) b!645023))

(assert (= (and b!645023 res!417972) b!645025))

(assert (= (and b!645025 res!417964) b!645029))

(assert (= (and b!645029 res!417967) b!645011))

(assert (= (and b!645011 res!417965) b!645022))

(assert (= (and b!645011 c!73891) b!645017))

(assert (= (and b!645011 (not c!73891)) b!645020))

(assert (= (and b!645011 (not res!417969)) b!645024))

(assert (= (and b!645024 res!417968) b!645032))

(assert (= (and b!645032 (not res!417963)) b!645015))

(assert (= (and b!645015 res!417966) b!645031))

(assert (= (and b!645024 (not res!417977)) b!645027))

(assert (= (and b!645027 c!73892) b!645013))

(assert (= (and b!645027 (not c!73892)) b!645016))

(assert (= (and b!645027 (not res!417976)) b!645019))

(assert (= (and b!645019 res!417973) b!645018))

(declare-fun m!618615 () Bool)

(assert (=> b!645031 m!618615))

(assert (=> b!645031 m!618615))

(declare-fun m!618617 () Bool)

(assert (=> b!645031 m!618617))

(assert (=> b!645015 m!618615))

(assert (=> b!645015 m!618615))

(declare-fun m!618619 () Bool)

(assert (=> b!645015 m!618619))

(declare-fun m!618621 () Bool)

(assert (=> b!645012 m!618621))

(declare-fun m!618623 () Bool)

(assert (=> b!645013 m!618623))

(assert (=> b!645013 m!618615))

(declare-fun m!618625 () Bool)

(assert (=> b!645013 m!618625))

(assert (=> b!645013 m!618615))

(declare-fun m!618627 () Bool)

(assert (=> b!645013 m!618627))

(assert (=> b!645013 m!618615))

(declare-fun m!618629 () Bool)

(assert (=> b!645013 m!618629))

(declare-fun m!618631 () Bool)

(assert (=> b!645013 m!618631))

(declare-fun m!618633 () Bool)

(assert (=> b!645013 m!618633))

(declare-fun m!618635 () Bool)

(assert (=> b!645013 m!618635))

(assert (=> b!645013 m!618615))

(declare-fun m!618637 () Bool)

(assert (=> b!645030 m!618637))

(assert (=> b!645019 m!618615))

(assert (=> b!645019 m!618615))

(declare-fun m!618639 () Bool)

(assert (=> b!645019 m!618639))

(assert (=> b!645019 m!618615))

(declare-fun m!618641 () Bool)

(assert (=> b!645019 m!618641))

(assert (=> b!645019 m!618615))

(assert (=> b!645019 m!618619))

(declare-fun m!618643 () Bool)

(assert (=> b!645028 m!618643))

(declare-fun m!618645 () Bool)

(assert (=> b!645011 m!618645))

(declare-fun m!618647 () Bool)

(assert (=> b!645011 m!618647))

(declare-fun m!618649 () Bool)

(assert (=> b!645011 m!618649))

(declare-fun m!618651 () Bool)

(assert (=> b!645011 m!618651))

(assert (=> b!645011 m!618615))

(declare-fun m!618653 () Bool)

(assert (=> b!645011 m!618653))

(assert (=> b!645011 m!618615))

(declare-fun m!618655 () Bool)

(assert (=> b!645011 m!618655))

(declare-fun m!618657 () Bool)

(assert (=> b!645011 m!618657))

(assert (=> b!645032 m!618615))

(assert (=> b!645025 m!618657))

(declare-fun m!618659 () Bool)

(assert (=> b!645025 m!618659))

(declare-fun m!618661 () Bool)

(assert (=> b!645029 m!618661))

(assert (=> b!645029 m!618615))

(assert (=> b!645029 m!618615))

(declare-fun m!618663 () Bool)

(assert (=> b!645029 m!618663))

(declare-fun m!618665 () Bool)

(assert (=> b!645023 m!618665))

(assert (=> b!645021 m!618615))

(assert (=> b!645021 m!618615))

(declare-fun m!618667 () Bool)

(assert (=> b!645021 m!618667))

(declare-fun m!618669 () Bool)

(assert (=> b!645026 m!618669))

(assert (=> b!645024 m!618615))

(assert (=> b!645024 m!618657))

(declare-fun m!618671 () Bool)

(assert (=> b!645024 m!618671))

(declare-fun m!618673 () Bool)

(assert (=> b!645010 m!618673))

(assert (=> b!645018 m!618615))

(assert (=> b!645018 m!618615))

(assert (=> b!645018 m!618617))

(declare-fun m!618675 () Bool)

(assert (=> start!58452 m!618675))

(declare-fun m!618677 () Bool)

(assert (=> start!58452 m!618677))

(push 1)

