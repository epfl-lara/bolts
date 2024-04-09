; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54572 () Bool)

(assert start!54572)

(declare-fun b!596573 () Bool)

(declare-fun e!340858 () Bool)

(declare-fun e!340857 () Bool)

(assert (=> b!596573 (= e!340858 e!340857)))

(declare-fun res!382518 () Bool)

(assert (=> b!596573 (=> (not res!382518) (not e!340857))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6205 0))(
  ( (MissingZero!6205 (index!27067 (_ BitVec 32))) (Found!6205 (index!27068 (_ BitVec 32))) (Intermediate!6205 (undefined!7017 Bool) (index!27069 (_ BitVec 32)) (x!55890 (_ BitVec 32))) (Undefined!6205) (MissingVacant!6205 (index!27070 (_ BitVec 32))) )
))
(declare-fun lt!271042 () SeekEntryResult!6205)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36995 0))(
  ( (array!36996 (arr!17758 (Array (_ BitVec 32) (_ BitVec 64))) (size!18122 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36995)

(assert (=> b!596573 (= res!382518 (and (= lt!271042 (Found!6205 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17758 a!2986) index!984) (select (arr!17758 a!2986) j!136))) (not (= (select (arr!17758 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36995 (_ BitVec 32)) SeekEntryResult!6205)

(assert (=> b!596573 (= lt!271042 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17758 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!596574 () Bool)

(declare-fun e!340860 () Bool)

(declare-fun e!340859 () Bool)

(assert (=> b!596574 (= e!340860 e!340859)))

(declare-fun res!382520 () Bool)

(assert (=> b!596574 (=> res!382520 e!340859)))

(declare-fun lt!271041 () (_ BitVec 64))

(declare-fun lt!271038 () (_ BitVec 64))

(assert (=> b!596574 (= res!382520 (or (not (= (select (arr!17758 a!2986) j!136) lt!271038)) (not (= (select (arr!17758 a!2986) j!136) lt!271041)) (bvsge j!136 index!984)))))

(declare-fun e!340855 () Bool)

(assert (=> b!596574 e!340855))

(declare-fun res!382521 () Bool)

(assert (=> b!596574 (=> (not res!382521) (not e!340855))))

(assert (=> b!596574 (= res!382521 (= lt!271041 (select (arr!17758 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!596574 (= lt!271041 (select (store (arr!17758 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!596575 () Bool)

(declare-fun res!382508 () Bool)

(declare-fun e!340852 () Bool)

(assert (=> b!596575 (=> (not res!382508) (not e!340852))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!596575 (= res!382508 (validKeyInArray!0 (select (arr!17758 a!2986) j!136)))))

(declare-fun b!596576 () Bool)

(declare-datatypes ((Unit!18764 0))(
  ( (Unit!18765) )
))
(declare-fun e!340856 () Unit!18764)

(declare-fun Unit!18766 () Unit!18764)

(assert (=> b!596576 (= e!340856 Unit!18766)))

(declare-fun b!596577 () Bool)

(declare-fun res!382511 () Bool)

(declare-fun e!340853 () Bool)

(assert (=> b!596577 (=> (not res!382511) (not e!340853))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36995 (_ BitVec 32)) Bool)

(assert (=> b!596577 (= res!382511 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!596578 () Bool)

(assert (=> b!596578 (= e!340857 (not e!340860))))

(declare-fun res!382507 () Bool)

(assert (=> b!596578 (=> res!382507 e!340860)))

(declare-fun lt!271039 () SeekEntryResult!6205)

(assert (=> b!596578 (= res!382507 (not (= lt!271039 (Found!6205 index!984))))))

(declare-fun lt!271036 () Unit!18764)

(assert (=> b!596578 (= lt!271036 e!340856)))

(declare-fun c!67400 () Bool)

(assert (=> b!596578 (= c!67400 (= lt!271039 Undefined!6205))))

(declare-fun lt!271035 () array!36995)

(assert (=> b!596578 (= lt!271039 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271038 lt!271035 mask!3053))))

(declare-fun e!340850 () Bool)

(assert (=> b!596578 e!340850))

(declare-fun res!382522 () Bool)

(assert (=> b!596578 (=> (not res!382522) (not e!340850))))

(declare-fun lt!271043 () (_ BitVec 32))

(declare-fun lt!271040 () SeekEntryResult!6205)

(assert (=> b!596578 (= res!382522 (= lt!271040 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271043 vacantSpotIndex!68 lt!271038 lt!271035 mask!3053)))))

(assert (=> b!596578 (= lt!271040 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271043 vacantSpotIndex!68 (select (arr!17758 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!596578 (= lt!271038 (select (store (arr!17758 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!271044 () Unit!18764)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36995 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18764)

(assert (=> b!596578 (= lt!271044 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271043 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!596578 (= lt!271043 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!596580 () Bool)

(declare-fun res!382523 () Bool)

(assert (=> b!596580 (=> (not res!382523) (not e!340852))))

(assert (=> b!596580 (= res!382523 (and (= (size!18122 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18122 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18122 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!596581 () Bool)

(declare-fun e!340854 () Bool)

(declare-fun arrayContainsKey!0 (array!36995 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!596581 (= e!340854 (arrayContainsKey!0 lt!271035 (select (arr!17758 a!2986) j!136) index!984))))

(declare-fun b!596582 () Bool)

(declare-fun Unit!18767 () Unit!18764)

(assert (=> b!596582 (= e!340856 Unit!18767)))

(assert (=> b!596582 false))

(declare-fun b!596583 () Bool)

(declare-fun e!340851 () Bool)

(assert (=> b!596583 (= e!340851 e!340854)))

(declare-fun res!382512 () Bool)

(assert (=> b!596583 (=> (not res!382512) (not e!340854))))

(assert (=> b!596583 (= res!382512 (arrayContainsKey!0 lt!271035 (select (arr!17758 a!2986) j!136) j!136))))

(declare-fun b!596584 () Bool)

(assert (=> b!596584 (= e!340850 (= lt!271042 lt!271040))))

(declare-fun b!596585 () Bool)

(declare-fun res!382513 () Bool)

(assert (=> b!596585 (=> (not res!382513) (not e!340853))))

(assert (=> b!596585 (= res!382513 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17758 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!596586 () Bool)

(declare-fun res!382516 () Bool)

(assert (=> b!596586 (=> (not res!382516) (not e!340852))))

(assert (=> b!596586 (= res!382516 (validKeyInArray!0 k0!1786))))

(declare-fun res!382509 () Bool)

(assert (=> start!54572 (=> (not res!382509) (not e!340852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54572 (= res!382509 (validMask!0 mask!3053))))

(assert (=> start!54572 e!340852))

(assert (=> start!54572 true))

(declare-fun array_inv!13532 (array!36995) Bool)

(assert (=> start!54572 (array_inv!13532 a!2986)))

(declare-fun b!596579 () Bool)

(assert (=> b!596579 (= e!340852 e!340853)))

(declare-fun res!382515 () Bool)

(assert (=> b!596579 (=> (not res!382515) (not e!340853))))

(declare-fun lt!271033 () SeekEntryResult!6205)

(assert (=> b!596579 (= res!382515 (or (= lt!271033 (MissingZero!6205 i!1108)) (= lt!271033 (MissingVacant!6205 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36995 (_ BitVec 32)) SeekEntryResult!6205)

(assert (=> b!596579 (= lt!271033 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!596587 () Bool)

(assert (=> b!596587 (= e!340853 e!340858)))

(declare-fun res!382519 () Bool)

(assert (=> b!596587 (=> (not res!382519) (not e!340858))))

(assert (=> b!596587 (= res!382519 (= (select (store (arr!17758 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!596587 (= lt!271035 (array!36996 (store (arr!17758 a!2986) i!1108 k0!1786) (size!18122 a!2986)))))

(declare-fun b!596588 () Bool)

(declare-fun res!382510 () Bool)

(assert (=> b!596588 (=> (not res!382510) (not e!340852))))

(assert (=> b!596588 (= res!382510 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!596589 () Bool)

(declare-fun res!382514 () Bool)

(assert (=> b!596589 (=> (not res!382514) (not e!340853))))

(declare-datatypes ((List!11852 0))(
  ( (Nil!11849) (Cons!11848 (h!12893 (_ BitVec 64)) (t!18088 List!11852)) )
))
(declare-fun arrayNoDuplicates!0 (array!36995 (_ BitVec 32) List!11852) Bool)

(assert (=> b!596589 (= res!382514 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11849))))

(declare-fun b!596590 () Bool)

(assert (=> b!596590 (= e!340859 (bvsle #b00000000000000000000000000000000 (size!18122 a!2986)))))

(assert (=> b!596590 (arrayNoDuplicates!0 lt!271035 #b00000000000000000000000000000000 Nil!11849)))

(declare-fun lt!271034 () Unit!18764)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!36995 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11852) Unit!18764)

(assert (=> b!596590 (= lt!271034 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11849))))

(assert (=> b!596590 (arrayContainsKey!0 lt!271035 (select (arr!17758 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271037 () Unit!18764)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36995 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18764)

(assert (=> b!596590 (= lt!271037 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271035 (select (arr!17758 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!596591 () Bool)

(assert (=> b!596591 (= e!340855 e!340851)))

(declare-fun res!382517 () Bool)

(assert (=> b!596591 (=> res!382517 e!340851)))

(assert (=> b!596591 (= res!382517 (or (not (= (select (arr!17758 a!2986) j!136) lt!271038)) (not (= (select (arr!17758 a!2986) j!136) lt!271041)) (bvsge j!136 index!984)))))

(assert (= (and start!54572 res!382509) b!596580))

(assert (= (and b!596580 res!382523) b!596575))

(assert (= (and b!596575 res!382508) b!596586))

(assert (= (and b!596586 res!382516) b!596588))

(assert (= (and b!596588 res!382510) b!596579))

(assert (= (and b!596579 res!382515) b!596577))

(assert (= (and b!596577 res!382511) b!596589))

(assert (= (and b!596589 res!382514) b!596585))

(assert (= (and b!596585 res!382513) b!596587))

(assert (= (and b!596587 res!382519) b!596573))

(assert (= (and b!596573 res!382518) b!596578))

(assert (= (and b!596578 res!382522) b!596584))

(assert (= (and b!596578 c!67400) b!596582))

(assert (= (and b!596578 (not c!67400)) b!596576))

(assert (= (and b!596578 (not res!382507)) b!596574))

(assert (= (and b!596574 res!382521) b!596591))

(assert (= (and b!596591 (not res!382517)) b!596583))

(assert (= (and b!596583 res!382512) b!596581))

(assert (= (and b!596574 (not res!382520)) b!596590))

(declare-fun m!574071 () Bool)

(assert (=> b!596578 m!574071))

(declare-fun m!574073 () Bool)

(assert (=> b!596578 m!574073))

(declare-fun m!574075 () Bool)

(assert (=> b!596578 m!574075))

(declare-fun m!574077 () Bool)

(assert (=> b!596578 m!574077))

(declare-fun m!574079 () Bool)

(assert (=> b!596578 m!574079))

(declare-fun m!574081 () Bool)

(assert (=> b!596578 m!574081))

(declare-fun m!574083 () Bool)

(assert (=> b!596578 m!574083))

(assert (=> b!596578 m!574081))

(declare-fun m!574085 () Bool)

(assert (=> b!596578 m!574085))

(declare-fun m!574087 () Bool)

(assert (=> b!596579 m!574087))

(assert (=> b!596583 m!574081))

(assert (=> b!596583 m!574081))

(declare-fun m!574089 () Bool)

(assert (=> b!596583 m!574089))

(declare-fun m!574091 () Bool)

(assert (=> b!596586 m!574091))

(declare-fun m!574093 () Bool)

(assert (=> b!596585 m!574093))

(declare-fun m!574095 () Bool)

(assert (=> b!596577 m!574095))

(declare-fun m!574097 () Bool)

(assert (=> start!54572 m!574097))

(declare-fun m!574099 () Bool)

(assert (=> start!54572 m!574099))

(assert (=> b!596587 m!574077))

(declare-fun m!574101 () Bool)

(assert (=> b!596587 m!574101))

(assert (=> b!596591 m!574081))

(assert (=> b!596574 m!574081))

(assert (=> b!596574 m!574077))

(declare-fun m!574103 () Bool)

(assert (=> b!596574 m!574103))

(assert (=> b!596590 m!574081))

(declare-fun m!574105 () Bool)

(assert (=> b!596590 m!574105))

(declare-fun m!574107 () Bool)

(assert (=> b!596590 m!574107))

(assert (=> b!596590 m!574081))

(declare-fun m!574109 () Bool)

(assert (=> b!596590 m!574109))

(assert (=> b!596590 m!574081))

(declare-fun m!574111 () Bool)

(assert (=> b!596590 m!574111))

(declare-fun m!574113 () Bool)

(assert (=> b!596589 m!574113))

(declare-fun m!574115 () Bool)

(assert (=> b!596588 m!574115))

(declare-fun m!574117 () Bool)

(assert (=> b!596573 m!574117))

(assert (=> b!596573 m!574081))

(assert (=> b!596573 m!574081))

(declare-fun m!574119 () Bool)

(assert (=> b!596573 m!574119))

(assert (=> b!596575 m!574081))

(assert (=> b!596575 m!574081))

(declare-fun m!574121 () Bool)

(assert (=> b!596575 m!574121))

(assert (=> b!596581 m!574081))

(assert (=> b!596581 m!574081))

(declare-fun m!574123 () Bool)

(assert (=> b!596581 m!574123))

(check-sat (not b!596575) (not b!596578) (not b!596583) (not b!596588) (not b!596573) (not b!596589) (not b!596577) (not b!596579) (not b!596586) (not b!596590) (not b!596581) (not start!54572))
(check-sat)
