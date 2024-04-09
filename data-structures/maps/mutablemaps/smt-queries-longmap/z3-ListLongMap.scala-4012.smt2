; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54554 () Bool)

(assert start!54554)

(declare-fun b!595972 () Bool)

(declare-fun res!381966 () Bool)

(declare-fun e!340509 () Bool)

(assert (=> b!595972 (=> (not res!381966) (not e!340509))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36977 0))(
  ( (array!36978 (arr!17749 (Array (_ BitVec 32) (_ BitVec 64))) (size!18113 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36977)

(assert (=> b!595972 (= res!381966 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17749 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!595973 () Bool)

(declare-fun e!340511 () Bool)

(declare-fun e!340516 () Bool)

(assert (=> b!595973 (= e!340511 e!340516)))

(declare-fun res!381964 () Bool)

(assert (=> b!595973 (=> (not res!381964) (not e!340516))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!270714 () array!36977)

(declare-fun arrayContainsKey!0 (array!36977 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!595973 (= res!381964 (arrayContainsKey!0 lt!270714 (select (arr!17749 a!2986) j!136) j!136))))

(declare-fun b!595974 () Bool)

(declare-fun e!340513 () Bool)

(declare-datatypes ((SeekEntryResult!6196 0))(
  ( (MissingZero!6196 (index!27031 (_ BitVec 32))) (Found!6196 (index!27032 (_ BitVec 32))) (Intermediate!6196 (undefined!7008 Bool) (index!27033 (_ BitVec 32)) (x!55857 (_ BitVec 32))) (Undefined!6196) (MissingVacant!6196 (index!27034 (_ BitVec 32))) )
))
(declare-fun lt!270715 () SeekEntryResult!6196)

(declare-fun lt!270718 () SeekEntryResult!6196)

(assert (=> b!595974 (= e!340513 (= lt!270715 lt!270718))))

(declare-fun b!595975 () Bool)

(declare-fun e!340514 () Bool)

(declare-fun e!340508 () Bool)

(assert (=> b!595975 (= e!340514 e!340508)))

(declare-fun res!381973 () Bool)

(assert (=> b!595975 (=> res!381973 e!340508)))

(declare-fun lt!270713 () (_ BitVec 64))

(declare-fun lt!270719 () (_ BitVec 64))

(assert (=> b!595975 (= res!381973 (or (not (= (select (arr!17749 a!2986) j!136) lt!270713)) (not (= (select (arr!17749 a!2986) j!136) lt!270719)) (bvsge j!136 index!984)))))

(declare-fun e!340504 () Bool)

(assert (=> b!595975 e!340504))

(declare-fun res!381967 () Bool)

(assert (=> b!595975 (=> (not res!381967) (not e!340504))))

(assert (=> b!595975 (= res!381967 (= lt!270719 (select (arr!17749 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!595975 (= lt!270719 (select (store (arr!17749 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!595976 () Bool)

(assert (=> b!595976 (= e!340504 e!340511)))

(declare-fun res!381961 () Bool)

(assert (=> b!595976 (=> res!381961 e!340511)))

(assert (=> b!595976 (= res!381961 (or (not (= (select (arr!17749 a!2986) j!136) lt!270713)) (not (= (select (arr!17749 a!2986) j!136) lt!270719)) (bvsge j!136 index!984)))))

(declare-fun b!595978 () Bool)

(declare-fun res!381963 () Bool)

(declare-fun e!340512 () Bool)

(assert (=> b!595978 (=> res!381963 e!340512)))

(declare-datatypes ((List!11843 0))(
  ( (Nil!11840) (Cons!11839 (h!12884 (_ BitVec 64)) (t!18079 List!11843)) )
))
(declare-fun contains!2947 (List!11843 (_ BitVec 64)) Bool)

(assert (=> b!595978 (= res!381963 (contains!2947 Nil!11840 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595979 () Bool)

(declare-fun e!340510 () Bool)

(assert (=> b!595979 (= e!340510 (not e!340514))))

(declare-fun res!381962 () Bool)

(assert (=> b!595979 (=> res!381962 e!340514)))

(declare-fun lt!270712 () SeekEntryResult!6196)

(assert (=> b!595979 (= res!381962 (not (= lt!270712 (Found!6196 index!984))))))

(declare-datatypes ((Unit!18728 0))(
  ( (Unit!18729) )
))
(declare-fun lt!270710 () Unit!18728)

(declare-fun e!340515 () Unit!18728)

(assert (=> b!595979 (= lt!270710 e!340515)))

(declare-fun c!67373 () Bool)

(assert (=> b!595979 (= c!67373 (= lt!270712 Undefined!6196))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36977 (_ BitVec 32)) SeekEntryResult!6196)

(assert (=> b!595979 (= lt!270712 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270713 lt!270714 mask!3053))))

(assert (=> b!595979 e!340513))

(declare-fun res!381968 () Bool)

(assert (=> b!595979 (=> (not res!381968) (not e!340513))))

(declare-fun lt!270709 () (_ BitVec 32))

(assert (=> b!595979 (= res!381968 (= lt!270718 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270709 vacantSpotIndex!68 lt!270713 lt!270714 mask!3053)))))

(assert (=> b!595979 (= lt!270718 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270709 vacantSpotIndex!68 (select (arr!17749 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!595979 (= lt!270713 (select (store (arr!17749 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!270720 () Unit!18728)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36977 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18728)

(assert (=> b!595979 (= lt!270720 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270709 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!595979 (= lt!270709 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!595980 () Bool)

(assert (=> b!595980 (= e!340508 e!340512)))

(declare-fun res!381979 () Bool)

(assert (=> b!595980 (=> res!381979 e!340512)))

(assert (=> b!595980 (= res!381979 (or (bvsge (size!18113 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18113 a!2986))))))

(assert (=> b!595980 (arrayContainsKey!0 lt!270714 (select (arr!17749 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270716 () Unit!18728)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36977 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18728)

(assert (=> b!595980 (= lt!270716 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270714 (select (arr!17749 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!595981 () Bool)

(declare-fun e!340505 () Bool)

(assert (=> b!595981 (= e!340505 e!340510)))

(declare-fun res!381974 () Bool)

(assert (=> b!595981 (=> (not res!381974) (not e!340510))))

(assert (=> b!595981 (= res!381974 (and (= lt!270715 (Found!6196 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17749 a!2986) index!984) (select (arr!17749 a!2986) j!136))) (not (= (select (arr!17749 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!595981 (= lt!270715 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17749 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!595982 () Bool)

(declare-fun res!381977 () Bool)

(declare-fun e!340507 () Bool)

(assert (=> b!595982 (=> (not res!381977) (not e!340507))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!595982 (= res!381977 (validKeyInArray!0 k0!1786))))

(declare-fun b!595983 () Bool)

(assert (=> b!595983 (= e!340507 e!340509)))

(declare-fun res!381976 () Bool)

(assert (=> b!595983 (=> (not res!381976) (not e!340509))))

(declare-fun lt!270711 () SeekEntryResult!6196)

(assert (=> b!595983 (= res!381976 (or (= lt!270711 (MissingZero!6196 i!1108)) (= lt!270711 (MissingVacant!6196 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36977 (_ BitVec 32)) SeekEntryResult!6196)

(assert (=> b!595983 (= lt!270711 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!595984 () Bool)

(declare-fun Unit!18730 () Unit!18728)

(assert (=> b!595984 (= e!340515 Unit!18730)))

(assert (=> b!595984 false))

(declare-fun b!595985 () Bool)

(declare-fun Unit!18731 () Unit!18728)

(assert (=> b!595985 (= e!340515 Unit!18731)))

(declare-fun b!595986 () Bool)

(declare-fun res!381970 () Bool)

(assert (=> b!595986 (=> res!381970 e!340512)))

(declare-fun noDuplicate!263 (List!11843) Bool)

(assert (=> b!595986 (= res!381970 (not (noDuplicate!263 Nil!11840)))))

(declare-fun b!595987 () Bool)

(declare-fun res!381969 () Bool)

(assert (=> b!595987 (=> (not res!381969) (not e!340507))))

(assert (=> b!595987 (= res!381969 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!595977 () Bool)

(assert (=> b!595977 (= e!340509 e!340505)))

(declare-fun res!381978 () Bool)

(assert (=> b!595977 (=> (not res!381978) (not e!340505))))

(assert (=> b!595977 (= res!381978 (= (select (store (arr!17749 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!595977 (= lt!270714 (array!36978 (store (arr!17749 a!2986) i!1108 k0!1786) (size!18113 a!2986)))))

(declare-fun res!381965 () Bool)

(assert (=> start!54554 (=> (not res!381965) (not e!340507))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54554 (= res!381965 (validMask!0 mask!3053))))

(assert (=> start!54554 e!340507))

(assert (=> start!54554 true))

(declare-fun array_inv!13523 (array!36977) Bool)

(assert (=> start!54554 (array_inv!13523 a!2986)))

(declare-fun b!595988 () Bool)

(declare-fun res!381960 () Bool)

(assert (=> b!595988 (=> res!381960 e!340512)))

(assert (=> b!595988 (= res!381960 (contains!2947 Nil!11840 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595989 () Bool)

(declare-fun res!381971 () Bool)

(assert (=> b!595989 (=> (not res!381971) (not e!340507))))

(assert (=> b!595989 (= res!381971 (validKeyInArray!0 (select (arr!17749 a!2986) j!136)))))

(declare-fun b!595990 () Bool)

(declare-fun res!381980 () Bool)

(assert (=> b!595990 (=> (not res!381980) (not e!340507))))

(assert (=> b!595990 (= res!381980 (and (= (size!18113 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18113 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18113 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!595991 () Bool)

(assert (=> b!595991 (= e!340516 (arrayContainsKey!0 lt!270714 (select (arr!17749 a!2986) j!136) index!984))))

(declare-fun b!595992 () Bool)

(assert (=> b!595992 (= e!340512 true)))

(declare-fun lt!270717 () Bool)

(assert (=> b!595992 (= lt!270717 (contains!2947 Nil!11840 k0!1786))))

(declare-fun b!595993 () Bool)

(declare-fun res!381972 () Bool)

(assert (=> b!595993 (=> (not res!381972) (not e!340509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36977 (_ BitVec 32)) Bool)

(assert (=> b!595993 (= res!381972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!595994 () Bool)

(declare-fun res!381975 () Bool)

(assert (=> b!595994 (=> (not res!381975) (not e!340509))))

(declare-fun arrayNoDuplicates!0 (array!36977 (_ BitVec 32) List!11843) Bool)

(assert (=> b!595994 (= res!381975 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11840))))

(assert (= (and start!54554 res!381965) b!595990))

(assert (= (and b!595990 res!381980) b!595989))

(assert (= (and b!595989 res!381971) b!595982))

(assert (= (and b!595982 res!381977) b!595987))

(assert (= (and b!595987 res!381969) b!595983))

(assert (= (and b!595983 res!381976) b!595993))

(assert (= (and b!595993 res!381972) b!595994))

(assert (= (and b!595994 res!381975) b!595972))

(assert (= (and b!595972 res!381966) b!595977))

(assert (= (and b!595977 res!381978) b!595981))

(assert (= (and b!595981 res!381974) b!595979))

(assert (= (and b!595979 res!381968) b!595974))

(assert (= (and b!595979 c!67373) b!595984))

(assert (= (and b!595979 (not c!67373)) b!595985))

(assert (= (and b!595979 (not res!381962)) b!595975))

(assert (= (and b!595975 res!381967) b!595976))

(assert (= (and b!595976 (not res!381961)) b!595973))

(assert (= (and b!595973 res!381964) b!595991))

(assert (= (and b!595975 (not res!381973)) b!595980))

(assert (= (and b!595980 (not res!381979)) b!595986))

(assert (= (and b!595986 (not res!381970)) b!595978))

(assert (= (and b!595978 (not res!381963)) b!595988))

(assert (= (and b!595988 (not res!381960)) b!595992))

(declare-fun m!573553 () Bool)

(assert (=> b!595993 m!573553))

(declare-fun m!573555 () Bool)

(assert (=> b!595976 m!573555))

(declare-fun m!573557 () Bool)

(assert (=> b!595977 m!573557))

(declare-fun m!573559 () Bool)

(assert (=> b!595977 m!573559))

(declare-fun m!573561 () Bool)

(assert (=> b!595986 m!573561))

(assert (=> b!595991 m!573555))

(assert (=> b!595991 m!573555))

(declare-fun m!573563 () Bool)

(assert (=> b!595991 m!573563))

(declare-fun m!573565 () Bool)

(assert (=> b!595981 m!573565))

(assert (=> b!595981 m!573555))

(assert (=> b!595981 m!573555))

(declare-fun m!573567 () Bool)

(assert (=> b!595981 m!573567))

(declare-fun m!573569 () Bool)

(assert (=> start!54554 m!573569))

(declare-fun m!573571 () Bool)

(assert (=> start!54554 m!573571))

(assert (=> b!595975 m!573555))

(assert (=> b!595975 m!573557))

(declare-fun m!573573 () Bool)

(assert (=> b!595975 m!573573))

(declare-fun m!573575 () Bool)

(assert (=> b!595982 m!573575))

(declare-fun m!573577 () Bool)

(assert (=> b!595988 m!573577))

(declare-fun m!573579 () Bool)

(assert (=> b!595983 m!573579))

(declare-fun m!573581 () Bool)

(assert (=> b!595972 m!573581))

(declare-fun m!573583 () Bool)

(assert (=> b!595994 m!573583))

(declare-fun m!573585 () Bool)

(assert (=> b!595979 m!573585))

(declare-fun m!573587 () Bool)

(assert (=> b!595979 m!573587))

(declare-fun m!573589 () Bool)

(assert (=> b!595979 m!573589))

(assert (=> b!595979 m!573555))

(assert (=> b!595979 m!573557))

(declare-fun m!573591 () Bool)

(assert (=> b!595979 m!573591))

(declare-fun m!573593 () Bool)

(assert (=> b!595979 m!573593))

(assert (=> b!595979 m!573555))

(declare-fun m!573595 () Bool)

(assert (=> b!595979 m!573595))

(declare-fun m!573597 () Bool)

(assert (=> b!595978 m!573597))

(declare-fun m!573599 () Bool)

(assert (=> b!595992 m!573599))

(assert (=> b!595980 m!573555))

(assert (=> b!595980 m!573555))

(declare-fun m!573601 () Bool)

(assert (=> b!595980 m!573601))

(assert (=> b!595980 m!573555))

(declare-fun m!573603 () Bool)

(assert (=> b!595980 m!573603))

(declare-fun m!573605 () Bool)

(assert (=> b!595987 m!573605))

(assert (=> b!595989 m!573555))

(assert (=> b!595989 m!573555))

(declare-fun m!573607 () Bool)

(assert (=> b!595989 m!573607))

(assert (=> b!595973 m!573555))

(assert (=> b!595973 m!573555))

(declare-fun m!573609 () Bool)

(assert (=> b!595973 m!573609))

(check-sat (not b!595989) (not b!595993) (not b!595983) (not b!595992) (not start!54554) (not b!595988) (not b!595986) (not b!595973) (not b!595987) (not b!595991) (not b!595979) (not b!595982) (not b!595978) (not b!595980) (not b!595994) (not b!595981))
(check-sat)
