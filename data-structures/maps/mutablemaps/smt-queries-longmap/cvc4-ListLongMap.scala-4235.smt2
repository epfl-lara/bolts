; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58450 () Bool)

(assert start!58450)

(declare-fun b!644941 () Bool)

(declare-fun e!369589 () Bool)

(declare-fun e!369596 () Bool)

(assert (=> b!644941 (= e!369589 e!369596)))

(declare-fun res!417912 () Bool)

(assert (=> b!644941 (=> res!417912 e!369596)))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!644941 (= res!417912 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!21868 0))(
  ( (Unit!21869) )
))
(declare-fun lt!299047 () Unit!21868)

(declare-fun e!369584 () Unit!21868)

(assert (=> b!644941 (= lt!299047 e!369584)))

(declare-fun c!73885 () Bool)

(assert (=> b!644941 (= c!73885 (bvslt j!136 index!984))))

(declare-fun b!644942 () Bool)

(declare-fun e!369588 () Unit!21868)

(declare-fun Unit!21870 () Unit!21868)

(assert (=> b!644942 (= e!369588 Unit!21870)))

(declare-fun b!644943 () Bool)

(declare-fun e!369597 () Bool)

(assert (=> b!644943 (= e!369597 e!369589)))

(declare-fun res!417906 () Bool)

(assert (=> b!644943 (=> res!417906 e!369589)))

(declare-fun lt!299045 () (_ BitVec 64))

(declare-datatypes ((array!38422 0))(
  ( (array!38423 (arr!18419 (Array (_ BitVec 32) (_ BitVec 64))) (size!18783 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38422)

(declare-fun lt!299044 () (_ BitVec 64))

(assert (=> b!644943 (= res!417906 (or (not (= (select (arr!18419 a!2986) j!136) lt!299045)) (not (= (select (arr!18419 a!2986) j!136) lt!299044))))))

(declare-fun e!369593 () Bool)

(assert (=> b!644943 e!369593))

(declare-fun res!417910 () Bool)

(assert (=> b!644943 (=> (not res!417910) (not e!369593))))

(assert (=> b!644943 (= res!417910 (= lt!299044 (select (arr!18419 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!644943 (= lt!299044 (select (store (arr!18419 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!644944 () Bool)

(declare-fun e!369598 () Bool)

(assert (=> b!644944 (= e!369598 (not e!369597))))

(declare-fun res!417909 () Bool)

(assert (=> b!644944 (=> res!417909 e!369597)))

(declare-datatypes ((SeekEntryResult!6866 0))(
  ( (MissingZero!6866 (index!29798 (_ BitVec 32))) (Found!6866 (index!29799 (_ BitVec 32))) (Intermediate!6866 (undefined!7678 Bool) (index!29800 (_ BitVec 32)) (x!58596 (_ BitVec 32))) (Undefined!6866) (MissingVacant!6866 (index!29801 (_ BitVec 32))) )
))
(declare-fun lt!299053 () SeekEntryResult!6866)

(assert (=> b!644944 (= res!417909 (not (= lt!299053 (Found!6866 index!984))))))

(declare-fun lt!299048 () Unit!21868)

(assert (=> b!644944 (= lt!299048 e!369588)))

(declare-fun c!73886 () Bool)

(assert (=> b!644944 (= c!73886 (= lt!299053 Undefined!6866))))

(declare-fun lt!299055 () array!38422)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38422 (_ BitVec 32)) SeekEntryResult!6866)

(assert (=> b!644944 (= lt!299053 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299045 lt!299055 mask!3053))))

(declare-fun e!369585 () Bool)

(assert (=> b!644944 e!369585))

(declare-fun res!417914 () Bool)

(assert (=> b!644944 (=> (not res!417914) (not e!369585))))

(declare-fun lt!299043 () (_ BitVec 32))

(declare-fun lt!299049 () SeekEntryResult!6866)

(assert (=> b!644944 (= res!417914 (= lt!299049 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299043 vacantSpotIndex!68 lt!299045 lt!299055 mask!3053)))))

(assert (=> b!644944 (= lt!299049 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299043 vacantSpotIndex!68 (select (arr!18419 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!644944 (= lt!299045 (select (store (arr!18419 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!299050 () Unit!21868)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38422 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21868)

(assert (=> b!644944 (= lt!299050 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299043 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!644944 (= lt!299043 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!644945 () Bool)

(declare-fun e!369594 () Bool)

(assert (=> b!644945 (= e!369594 e!369598)))

(declare-fun res!417908 () Bool)

(assert (=> b!644945 (=> (not res!417908) (not e!369598))))

(declare-fun lt!299051 () SeekEntryResult!6866)

(assert (=> b!644945 (= res!417908 (and (= lt!299051 (Found!6866 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18419 a!2986) index!984) (select (arr!18419 a!2986) j!136))) (not (= (select (arr!18419 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!644945 (= lt!299051 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18419 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!644946 () Bool)

(declare-fun res!417918 () Bool)

(declare-fun e!369590 () Bool)

(assert (=> b!644946 (=> (not res!417918) (not e!369590))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!644946 (= res!417918 (validKeyInArray!0 k!1786))))

(declare-fun b!644947 () Bool)

(declare-fun e!369591 () Bool)

(assert (=> b!644947 (= e!369590 e!369591)))

(declare-fun res!417917 () Bool)

(assert (=> b!644947 (=> (not res!417917) (not e!369591))))

(declare-fun lt!299054 () SeekEntryResult!6866)

(assert (=> b!644947 (= res!417917 (or (= lt!299054 (MissingZero!6866 i!1108)) (= lt!299054 (MissingVacant!6866 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38422 (_ BitVec 32)) SeekEntryResult!6866)

(assert (=> b!644947 (= lt!299054 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!644948 () Bool)

(assert (=> b!644948 (= e!369596 true)))

(declare-fun e!369595 () Bool)

(assert (=> b!644948 e!369595))

(declare-fun res!417913 () Bool)

(assert (=> b!644948 (=> (not res!417913) (not e!369595))))

(declare-fun arrayContainsKey!0 (array!38422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!644948 (= res!417913 (arrayContainsKey!0 lt!299055 (select (arr!18419 a!2986) j!136) j!136))))

(declare-fun b!644949 () Bool)

(declare-fun e!369587 () Bool)

(assert (=> b!644949 (= e!369593 e!369587)))

(declare-fun res!417905 () Bool)

(assert (=> b!644949 (=> res!417905 e!369587)))

(assert (=> b!644949 (= res!417905 (or (not (= (select (arr!18419 a!2986) j!136) lt!299045)) (not (= (select (arr!18419 a!2986) j!136) lt!299044)) (bvsge j!136 index!984)))))

(declare-fun b!644950 () Bool)

(assert (=> b!644950 (= e!369585 (= lt!299051 lt!299049))))

(declare-fun res!417922 () Bool)

(assert (=> start!58450 (=> (not res!417922) (not e!369590))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58450 (= res!417922 (validMask!0 mask!3053))))

(assert (=> start!58450 e!369590))

(assert (=> start!58450 true))

(declare-fun array_inv!14193 (array!38422) Bool)

(assert (=> start!58450 (array_inv!14193 a!2986)))

(declare-fun b!644951 () Bool)

(declare-fun res!417915 () Bool)

(assert (=> b!644951 (=> (not res!417915) (not e!369591))))

(declare-datatypes ((List!12513 0))(
  ( (Nil!12510) (Cons!12509 (h!13554 (_ BitVec 64)) (t!18749 List!12513)) )
))
(declare-fun arrayNoDuplicates!0 (array!38422 (_ BitVec 32) List!12513) Bool)

(assert (=> b!644951 (= res!417915 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12510))))

(declare-fun b!644952 () Bool)

(declare-fun Unit!21871 () Unit!21868)

(assert (=> b!644952 (= e!369588 Unit!21871)))

(assert (=> b!644952 false))

(declare-fun b!644953 () Bool)

(declare-fun e!369586 () Bool)

(assert (=> b!644953 (= e!369587 e!369586)))

(declare-fun res!417920 () Bool)

(assert (=> b!644953 (=> (not res!417920) (not e!369586))))

(assert (=> b!644953 (= res!417920 (arrayContainsKey!0 lt!299055 (select (arr!18419 a!2986) j!136) j!136))))

(declare-fun b!644954 () Bool)

(declare-fun res!417919 () Bool)

(assert (=> b!644954 (=> (not res!417919) (not e!369590))))

(assert (=> b!644954 (= res!417919 (and (= (size!18783 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18783 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18783 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!644955 () Bool)

(declare-fun res!417907 () Bool)

(assert (=> b!644955 (=> (not res!417907) (not e!369590))))

(assert (=> b!644955 (= res!417907 (validKeyInArray!0 (select (arr!18419 a!2986) j!136)))))

(declare-fun b!644956 () Bool)

(assert (=> b!644956 (= e!369595 (arrayContainsKey!0 lt!299055 (select (arr!18419 a!2986) j!136) index!984))))

(declare-fun b!644957 () Bool)

(assert (=> b!644957 (= e!369591 e!369594)))

(declare-fun res!417923 () Bool)

(assert (=> b!644957 (=> (not res!417923) (not e!369594))))

(assert (=> b!644957 (= res!417923 (= (select (store (arr!18419 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!644957 (= lt!299055 (array!38423 (store (arr!18419 a!2986) i!1108 k!1786) (size!18783 a!2986)))))

(declare-fun b!644958 () Bool)

(declare-fun Unit!21872 () Unit!21868)

(assert (=> b!644958 (= e!369584 Unit!21872)))

(declare-fun lt!299046 () Unit!21868)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38422 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21868)

(assert (=> b!644958 (= lt!299046 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299055 (select (arr!18419 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!644958 (arrayContainsKey!0 lt!299055 (select (arr!18419 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!299052 () Unit!21868)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38422 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12513) Unit!21868)

(assert (=> b!644958 (= lt!299052 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12510))))

(assert (=> b!644958 (arrayNoDuplicates!0 lt!299055 #b00000000000000000000000000000000 Nil!12510)))

(declare-fun lt!299042 () Unit!21868)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38422 (_ BitVec 32) (_ BitVec 32)) Unit!21868)

(assert (=> b!644958 (= lt!299042 (lemmaNoDuplicateFromThenFromBigger!0 lt!299055 #b00000000000000000000000000000000 j!136))))

(assert (=> b!644958 (arrayNoDuplicates!0 lt!299055 j!136 Nil!12510)))

(declare-fun lt!299041 () Unit!21868)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38422 (_ BitVec 64) (_ BitVec 32) List!12513) Unit!21868)

(assert (=> b!644958 (= lt!299041 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299055 (select (arr!18419 a!2986) j!136) j!136 Nil!12510))))

(assert (=> b!644958 false))

(declare-fun b!644959 () Bool)

(declare-fun res!417921 () Bool)

(assert (=> b!644959 (=> (not res!417921) (not e!369591))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38422 (_ BitVec 32)) Bool)

(assert (=> b!644959 (= res!417921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!644960 () Bool)

(declare-fun res!417916 () Bool)

(assert (=> b!644960 (=> (not res!417916) (not e!369591))))

(assert (=> b!644960 (= res!417916 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18419 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!644961 () Bool)

(declare-fun Unit!21873 () Unit!21868)

(assert (=> b!644961 (= e!369584 Unit!21873)))

(declare-fun b!644962 () Bool)

(assert (=> b!644962 (= e!369586 (arrayContainsKey!0 lt!299055 (select (arr!18419 a!2986) j!136) index!984))))

(declare-fun b!644963 () Bool)

(declare-fun res!417911 () Bool)

(assert (=> b!644963 (=> (not res!417911) (not e!369590))))

(assert (=> b!644963 (= res!417911 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!58450 res!417922) b!644954))

(assert (= (and b!644954 res!417919) b!644955))

(assert (= (and b!644955 res!417907) b!644946))

(assert (= (and b!644946 res!417918) b!644963))

(assert (= (and b!644963 res!417911) b!644947))

(assert (= (and b!644947 res!417917) b!644959))

(assert (= (and b!644959 res!417921) b!644951))

(assert (= (and b!644951 res!417915) b!644960))

(assert (= (and b!644960 res!417916) b!644957))

(assert (= (and b!644957 res!417923) b!644945))

(assert (= (and b!644945 res!417908) b!644944))

(assert (= (and b!644944 res!417914) b!644950))

(assert (= (and b!644944 c!73886) b!644952))

(assert (= (and b!644944 (not c!73886)) b!644942))

(assert (= (and b!644944 (not res!417909)) b!644943))

(assert (= (and b!644943 res!417910) b!644949))

(assert (= (and b!644949 (not res!417905)) b!644953))

(assert (= (and b!644953 res!417920) b!644962))

(assert (= (and b!644943 (not res!417906)) b!644941))

(assert (= (and b!644941 c!73885) b!644958))

(assert (= (and b!644941 (not c!73885)) b!644961))

(assert (= (and b!644941 (not res!417912)) b!644948))

(assert (= (and b!644948 res!417913) b!644956))

(declare-fun m!618555 () Bool)

(assert (=> b!644948 m!618555))

(assert (=> b!644948 m!618555))

(declare-fun m!618557 () Bool)

(assert (=> b!644948 m!618557))

(declare-fun m!618559 () Bool)

(assert (=> b!644959 m!618559))

(declare-fun m!618561 () Bool)

(assert (=> start!58450 m!618561))

(declare-fun m!618563 () Bool)

(assert (=> start!58450 m!618563))

(assert (=> b!644943 m!618555))

(declare-fun m!618565 () Bool)

(assert (=> b!644943 m!618565))

(declare-fun m!618567 () Bool)

(assert (=> b!644943 m!618567))

(assert (=> b!644956 m!618555))

(assert (=> b!644956 m!618555))

(declare-fun m!618569 () Bool)

(assert (=> b!644956 m!618569))

(assert (=> b!644955 m!618555))

(assert (=> b!644955 m!618555))

(declare-fun m!618571 () Bool)

(assert (=> b!644955 m!618571))

(declare-fun m!618573 () Bool)

(assert (=> b!644960 m!618573))

(declare-fun m!618575 () Bool)

(assert (=> b!644946 m!618575))

(declare-fun m!618577 () Bool)

(assert (=> b!644945 m!618577))

(assert (=> b!644945 m!618555))

(assert (=> b!644945 m!618555))

(declare-fun m!618579 () Bool)

(assert (=> b!644945 m!618579))

(declare-fun m!618581 () Bool)

(assert (=> b!644951 m!618581))

(assert (=> b!644949 m!618555))

(declare-fun m!618583 () Bool)

(assert (=> b!644963 m!618583))

(assert (=> b!644957 m!618565))

(declare-fun m!618585 () Bool)

(assert (=> b!644957 m!618585))

(declare-fun m!618587 () Bool)

(assert (=> b!644944 m!618587))

(declare-fun m!618589 () Bool)

(assert (=> b!644944 m!618589))

(declare-fun m!618591 () Bool)

(assert (=> b!644944 m!618591))

(assert (=> b!644944 m!618555))

(assert (=> b!644944 m!618565))

(declare-fun m!618593 () Bool)

(assert (=> b!644944 m!618593))

(declare-fun m!618595 () Bool)

(assert (=> b!644944 m!618595))

(assert (=> b!644944 m!618555))

(declare-fun m!618597 () Bool)

(assert (=> b!644944 m!618597))

(assert (=> b!644962 m!618555))

(assert (=> b!644962 m!618555))

(assert (=> b!644962 m!618569))

(assert (=> b!644953 m!618555))

(assert (=> b!644953 m!618555))

(assert (=> b!644953 m!618557))

(declare-fun m!618599 () Bool)

(assert (=> b!644947 m!618599))

(assert (=> b!644958 m!618555))

(declare-fun m!618601 () Bool)

(assert (=> b!644958 m!618601))

(assert (=> b!644958 m!618555))

(declare-fun m!618603 () Bool)

(assert (=> b!644958 m!618603))

(declare-fun m!618605 () Bool)

(assert (=> b!644958 m!618605))

(assert (=> b!644958 m!618555))

(declare-fun m!618607 () Bool)

(assert (=> b!644958 m!618607))

(declare-fun m!618609 () Bool)

(assert (=> b!644958 m!618609))

(declare-fun m!618611 () Bool)

(assert (=> b!644958 m!618611))

(assert (=> b!644958 m!618555))

(declare-fun m!618613 () Bool)

(assert (=> b!644958 m!618613))

(push 1)

