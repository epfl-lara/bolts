; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54422 () Bool)

(assert start!54422)

(declare-fun b!593783 () Bool)

(declare-fun e!339226 () Bool)

(declare-fun e!339216 () Bool)

(assert (=> b!593783 (= e!339226 e!339216)))

(declare-fun res!380145 () Bool)

(assert (=> b!593783 (=> (not res!380145) (not e!339216))))

(declare-datatypes ((List!11816 0))(
  ( (Nil!11813) (Cons!11812 (h!12857 (_ BitVec 64)) (t!18052 List!11816)) )
))
(declare-fun contains!2920 (List!11816 (_ BitVec 64)) Bool)

(assert (=> b!593783 (= res!380145 (not (contains!2920 Nil!11813 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!593784 () Bool)

(declare-fun res!380150 () Bool)

(declare-fun e!339219 () Bool)

(assert (=> b!593784 (=> (not res!380150) (not e!339219))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36920 0))(
  ( (array!36921 (arr!17722 (Array (_ BitVec 32) (_ BitVec 64))) (size!18086 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36920)

(assert (=> b!593784 (= res!380150 (and (= (size!18086 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18086 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18086 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!593785 () Bool)

(declare-datatypes ((Unit!18620 0))(
  ( (Unit!18621) )
))
(declare-fun e!339222 () Unit!18620)

(declare-fun Unit!18622 () Unit!18620)

(assert (=> b!593785 (= e!339222 Unit!18622)))

(assert (=> b!593785 false))

(declare-fun b!593786 () Bool)

(declare-fun res!380147 () Bool)

(assert (=> b!593786 (=> (not res!380147) (not e!339219))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!593786 (= res!380147 (validKeyInArray!0 k0!1786))))

(declare-fun b!593787 () Bool)

(declare-fun e!339220 () Bool)

(declare-fun e!339218 () Bool)

(assert (=> b!593787 (= e!339220 e!339218)))

(declare-fun res!380135 () Bool)

(assert (=> b!593787 (=> (not res!380135) (not e!339218))))

(declare-datatypes ((SeekEntryResult!6169 0))(
  ( (MissingZero!6169 (index!26920 (_ BitVec 32))) (Found!6169 (index!26921 (_ BitVec 32))) (Intermediate!6169 (undefined!6981 Bool) (index!26922 (_ BitVec 32)) (x!55749 (_ BitVec 32))) (Undefined!6169) (MissingVacant!6169 (index!26923 (_ BitVec 32))) )
))
(declare-fun lt!269619 () SeekEntryResult!6169)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!593787 (= res!380135 (and (= lt!269619 (Found!6169 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17722 a!2986) index!984) (select (arr!17722 a!2986) j!136))) (not (= (select (arr!17722 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36920 (_ BitVec 32)) SeekEntryResult!6169)

(assert (=> b!593787 (= lt!269619 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17722 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!593788 () Bool)

(assert (=> b!593788 (= e!339216 (not (contains!2920 Nil!11813 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!593789 () Bool)

(declare-fun e!339228 () Bool)

(assert (=> b!593789 (= e!339219 e!339228)))

(declare-fun res!380140 () Bool)

(assert (=> b!593789 (=> (not res!380140) (not e!339228))))

(declare-fun lt!269617 () SeekEntryResult!6169)

(assert (=> b!593789 (= res!380140 (or (= lt!269617 (MissingZero!6169 i!1108)) (= lt!269617 (MissingVacant!6169 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36920 (_ BitVec 32)) SeekEntryResult!6169)

(assert (=> b!593789 (= lt!269617 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!593790 () Bool)

(declare-fun res!380148 () Bool)

(assert (=> b!593790 (=> (not res!380148) (not e!339228))))

(declare-fun arrayNoDuplicates!0 (array!36920 (_ BitVec 32) List!11816) Bool)

(assert (=> b!593790 (= res!380148 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11813))))

(declare-fun b!593791 () Bool)

(declare-fun e!339229 () Bool)

(declare-fun e!339224 () Bool)

(assert (=> b!593791 (= e!339229 e!339224)))

(declare-fun res!380144 () Bool)

(assert (=> b!593791 (=> res!380144 e!339224)))

(declare-fun lt!269614 () (_ BitVec 64))

(declare-fun lt!269618 () (_ BitVec 64))

(assert (=> b!593791 (= res!380144 (or (not (= (select (arr!17722 a!2986) j!136) lt!269618)) (not (= (select (arr!17722 a!2986) j!136) lt!269614)) (bvsge j!136 index!984)))))

(declare-fun res!380139 () Bool)

(assert (=> start!54422 (=> (not res!380139) (not e!339219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54422 (= res!380139 (validMask!0 mask!3053))))

(assert (=> start!54422 e!339219))

(assert (=> start!54422 true))

(declare-fun array_inv!13496 (array!36920) Bool)

(assert (=> start!54422 (array_inv!13496 a!2986)))

(declare-fun b!593792 () Bool)

(declare-fun res!380146 () Bool)

(assert (=> b!593792 (=> (not res!380146) (not e!339219))))

(assert (=> b!593792 (= res!380146 (validKeyInArray!0 (select (arr!17722 a!2986) j!136)))))

(declare-fun b!593793 () Bool)

(declare-fun e!339225 () Bool)

(declare-fun lt!269620 () SeekEntryResult!6169)

(assert (=> b!593793 (= e!339225 (= lt!269619 lt!269620))))

(declare-fun b!593794 () Bool)

(declare-fun e!339221 () Bool)

(assert (=> b!593794 (= e!339221 e!339226)))

(declare-fun res!380134 () Bool)

(assert (=> b!593794 (=> res!380134 e!339226)))

(assert (=> b!593794 (= res!380134 (or (bvsgt #b00000000000000000000000000000000 (size!18086 a!2986)) (bvsge (size!18086 a!2986) #b01111111111111111111111111111111)))))

(declare-fun lt!269612 () array!36920)

(declare-fun arrayContainsKey!0 (array!36920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!593794 (arrayContainsKey!0 lt!269612 (select (arr!17722 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269615 () Unit!18620)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36920 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18620)

(assert (=> b!593794 (= lt!269615 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269612 (select (arr!17722 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!593795 () Bool)

(declare-fun res!380143 () Bool)

(assert (=> b!593795 (=> res!380143 e!339226)))

(declare-fun noDuplicate!236 (List!11816) Bool)

(assert (=> b!593795 (= res!380143 (not (noDuplicate!236 Nil!11813)))))

(declare-fun b!593796 () Bool)

(declare-fun Unit!18623 () Unit!18620)

(assert (=> b!593796 (= e!339222 Unit!18623)))

(declare-fun b!593797 () Bool)

(declare-fun e!339227 () Bool)

(assert (=> b!593797 (= e!339218 (not e!339227))))

(declare-fun res!380132 () Bool)

(assert (=> b!593797 (=> res!380132 e!339227)))

(declare-fun lt!269613 () SeekEntryResult!6169)

(assert (=> b!593797 (= res!380132 (not (= lt!269613 (Found!6169 index!984))))))

(declare-fun lt!269622 () Unit!18620)

(assert (=> b!593797 (= lt!269622 e!339222)))

(declare-fun c!67193 () Bool)

(assert (=> b!593797 (= c!67193 (= lt!269613 Undefined!6169))))

(assert (=> b!593797 (= lt!269613 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269618 lt!269612 mask!3053))))

(assert (=> b!593797 e!339225))

(declare-fun res!380131 () Bool)

(assert (=> b!593797 (=> (not res!380131) (not e!339225))))

(declare-fun lt!269616 () (_ BitVec 32))

(assert (=> b!593797 (= res!380131 (= lt!269620 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269616 vacantSpotIndex!68 lt!269618 lt!269612 mask!3053)))))

(assert (=> b!593797 (= lt!269620 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269616 vacantSpotIndex!68 (select (arr!17722 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!593797 (= lt!269618 (select (store (arr!17722 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!269621 () Unit!18620)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36920 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18620)

(assert (=> b!593797 (= lt!269621 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269616 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!593797 (= lt!269616 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!593798 () Bool)

(assert (=> b!593798 (= e!339228 e!339220)))

(declare-fun res!380149 () Bool)

(assert (=> b!593798 (=> (not res!380149) (not e!339220))))

(assert (=> b!593798 (= res!380149 (= (select (store (arr!17722 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593798 (= lt!269612 (array!36921 (store (arr!17722 a!2986) i!1108 k0!1786) (size!18086 a!2986)))))

(declare-fun b!593799 () Bool)

(declare-fun res!380138 () Bool)

(assert (=> b!593799 (=> (not res!380138) (not e!339219))))

(assert (=> b!593799 (= res!380138 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!593800 () Bool)

(assert (=> b!593800 (= e!339227 e!339221)))

(declare-fun res!380133 () Bool)

(assert (=> b!593800 (=> res!380133 e!339221)))

(assert (=> b!593800 (= res!380133 (or (not (= (select (arr!17722 a!2986) j!136) lt!269618)) (not (= (select (arr!17722 a!2986) j!136) lt!269614)) (bvsge j!136 index!984)))))

(assert (=> b!593800 e!339229))

(declare-fun res!380141 () Bool)

(assert (=> b!593800 (=> (not res!380141) (not e!339229))))

(assert (=> b!593800 (= res!380141 (= lt!269614 (select (arr!17722 a!2986) j!136)))))

(assert (=> b!593800 (= lt!269614 (select (store (arr!17722 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!593801 () Bool)

(declare-fun e!339217 () Bool)

(assert (=> b!593801 (= e!339224 e!339217)))

(declare-fun res!380142 () Bool)

(assert (=> b!593801 (=> (not res!380142) (not e!339217))))

(assert (=> b!593801 (= res!380142 (arrayContainsKey!0 lt!269612 (select (arr!17722 a!2986) j!136) j!136))))

(declare-fun b!593802 () Bool)

(declare-fun res!380137 () Bool)

(assert (=> b!593802 (=> (not res!380137) (not e!339228))))

(assert (=> b!593802 (= res!380137 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17722 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!593803 () Bool)

(assert (=> b!593803 (= e!339217 (arrayContainsKey!0 lt!269612 (select (arr!17722 a!2986) j!136) index!984))))

(declare-fun b!593804 () Bool)

(declare-fun res!380136 () Bool)

(assert (=> b!593804 (=> (not res!380136) (not e!339228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36920 (_ BitVec 32)) Bool)

(assert (=> b!593804 (= res!380136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!54422 res!380139) b!593784))

(assert (= (and b!593784 res!380150) b!593792))

(assert (= (and b!593792 res!380146) b!593786))

(assert (= (and b!593786 res!380147) b!593799))

(assert (= (and b!593799 res!380138) b!593789))

(assert (= (and b!593789 res!380140) b!593804))

(assert (= (and b!593804 res!380136) b!593790))

(assert (= (and b!593790 res!380148) b!593802))

(assert (= (and b!593802 res!380137) b!593798))

(assert (= (and b!593798 res!380149) b!593787))

(assert (= (and b!593787 res!380135) b!593797))

(assert (= (and b!593797 res!380131) b!593793))

(assert (= (and b!593797 c!67193) b!593785))

(assert (= (and b!593797 (not c!67193)) b!593796))

(assert (= (and b!593797 (not res!380132)) b!593800))

(assert (= (and b!593800 res!380141) b!593791))

(assert (= (and b!593791 (not res!380144)) b!593801))

(assert (= (and b!593801 res!380142) b!593803))

(assert (= (and b!593800 (not res!380133)) b!593794))

(assert (= (and b!593794 (not res!380134)) b!593795))

(assert (= (and b!593795 (not res!380143)) b!593783))

(assert (= (and b!593783 res!380145) b!593788))

(declare-fun m!571703 () Bool)

(assert (=> b!593783 m!571703))

(declare-fun m!571705 () Bool)

(assert (=> b!593791 m!571705))

(declare-fun m!571707 () Bool)

(assert (=> start!54422 m!571707))

(declare-fun m!571709 () Bool)

(assert (=> start!54422 m!571709))

(declare-fun m!571711 () Bool)

(assert (=> b!593804 m!571711))

(declare-fun m!571713 () Bool)

(assert (=> b!593798 m!571713))

(declare-fun m!571715 () Bool)

(assert (=> b!593798 m!571715))

(assert (=> b!593801 m!571705))

(assert (=> b!593801 m!571705))

(declare-fun m!571717 () Bool)

(assert (=> b!593801 m!571717))

(declare-fun m!571719 () Bool)

(assert (=> b!593790 m!571719))

(declare-fun m!571721 () Bool)

(assert (=> b!593786 m!571721))

(assert (=> b!593803 m!571705))

(assert (=> b!593803 m!571705))

(declare-fun m!571723 () Bool)

(assert (=> b!593803 m!571723))

(assert (=> b!593794 m!571705))

(assert (=> b!593794 m!571705))

(declare-fun m!571725 () Bool)

(assert (=> b!593794 m!571725))

(assert (=> b!593794 m!571705))

(declare-fun m!571727 () Bool)

(assert (=> b!593794 m!571727))

(declare-fun m!571729 () Bool)

(assert (=> b!593802 m!571729))

(declare-fun m!571731 () Bool)

(assert (=> b!593787 m!571731))

(assert (=> b!593787 m!571705))

(assert (=> b!593787 m!571705))

(declare-fun m!571733 () Bool)

(assert (=> b!593787 m!571733))

(declare-fun m!571735 () Bool)

(assert (=> b!593797 m!571735))

(declare-fun m!571737 () Bool)

(assert (=> b!593797 m!571737))

(assert (=> b!593797 m!571705))

(assert (=> b!593797 m!571713))

(declare-fun m!571739 () Bool)

(assert (=> b!593797 m!571739))

(declare-fun m!571741 () Bool)

(assert (=> b!593797 m!571741))

(declare-fun m!571743 () Bool)

(assert (=> b!593797 m!571743))

(assert (=> b!593797 m!571705))

(declare-fun m!571745 () Bool)

(assert (=> b!593797 m!571745))

(assert (=> b!593800 m!571705))

(assert (=> b!593800 m!571713))

(declare-fun m!571747 () Bool)

(assert (=> b!593800 m!571747))

(declare-fun m!571749 () Bool)

(assert (=> b!593795 m!571749))

(declare-fun m!571751 () Bool)

(assert (=> b!593788 m!571751))

(assert (=> b!593792 m!571705))

(assert (=> b!593792 m!571705))

(declare-fun m!571753 () Bool)

(assert (=> b!593792 m!571753))

(declare-fun m!571755 () Bool)

(assert (=> b!593789 m!571755))

(declare-fun m!571757 () Bool)

(assert (=> b!593799 m!571757))

(check-sat (not b!593790) (not b!593794) (not b!593788) (not b!593783) (not b!593787) (not b!593799) (not start!54422) (not b!593801) (not b!593803) (not b!593804) (not b!593795) (not b!593797) (not b!593792) (not b!593789) (not b!593786))
(check-sat)
(get-model)

(declare-fun d!86429 () Bool)

(declare-fun res!380215 () Bool)

(declare-fun e!339276 () Bool)

(assert (=> d!86429 (=> res!380215 e!339276)))

(assert (=> d!86429 (= res!380215 (= (select (arr!17722 lt!269612) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17722 a!2986) j!136)))))

(assert (=> d!86429 (= (arrayContainsKey!0 lt!269612 (select (arr!17722 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!339276)))

(declare-fun b!593875 () Bool)

(declare-fun e!339277 () Bool)

(assert (=> b!593875 (= e!339276 e!339277)))

(declare-fun res!380216 () Bool)

(assert (=> b!593875 (=> (not res!380216) (not e!339277))))

(assert (=> b!593875 (= res!380216 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18086 lt!269612)))))

(declare-fun b!593876 () Bool)

(assert (=> b!593876 (= e!339277 (arrayContainsKey!0 lt!269612 (select (arr!17722 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86429 (not res!380215)) b!593875))

(assert (= (and b!593875 res!380216) b!593876))

(declare-fun m!571815 () Bool)

(assert (=> d!86429 m!571815))

(assert (=> b!593876 m!571705))

(declare-fun m!571817 () Bool)

(assert (=> b!593876 m!571817))

(assert (=> b!593794 d!86429))

(declare-fun d!86431 () Bool)

(assert (=> d!86431 (arrayContainsKey!0 lt!269612 (select (arr!17722 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269658 () Unit!18620)

(declare-fun choose!114 (array!36920 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18620)

(assert (=> d!86431 (= lt!269658 (choose!114 lt!269612 (select (arr!17722 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!86431 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!86431 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269612 (select (arr!17722 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!269658)))

(declare-fun bs!18314 () Bool)

(assert (= bs!18314 d!86431))

(assert (=> bs!18314 m!571705))

(assert (=> bs!18314 m!571725))

(assert (=> bs!18314 m!571705))

(declare-fun m!571819 () Bool)

(assert (=> bs!18314 m!571819))

(assert (=> b!593794 d!86431))

(declare-fun d!86433 () Bool)

(declare-fun lt!269661 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!235 (List!11816) (InoxSet (_ BitVec 64)))

(assert (=> d!86433 (= lt!269661 (select (content!235 Nil!11813) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!339283 () Bool)

(assert (=> d!86433 (= lt!269661 e!339283)))

(declare-fun res!380222 () Bool)

(assert (=> d!86433 (=> (not res!380222) (not e!339283))))

(get-info :version)

(assert (=> d!86433 (= res!380222 ((_ is Cons!11812) Nil!11813))))

(assert (=> d!86433 (= (contains!2920 Nil!11813 #b0000000000000000000000000000000000000000000000000000000000000000) lt!269661)))

(declare-fun b!593881 () Bool)

(declare-fun e!339282 () Bool)

(assert (=> b!593881 (= e!339283 e!339282)))

(declare-fun res!380221 () Bool)

(assert (=> b!593881 (=> res!380221 e!339282)))

(assert (=> b!593881 (= res!380221 (= (h!12857 Nil!11813) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!593882 () Bool)

(assert (=> b!593882 (= e!339282 (contains!2920 (t!18052 Nil!11813) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!86433 res!380222) b!593881))

(assert (= (and b!593881 (not res!380221)) b!593882))

(declare-fun m!571821 () Bool)

(assert (=> d!86433 m!571821))

(declare-fun m!571823 () Bool)

(assert (=> d!86433 m!571823))

(declare-fun m!571825 () Bool)

(assert (=> b!593882 m!571825))

(assert (=> b!593783 d!86433))

(declare-fun b!593891 () Bool)

(declare-fun e!339291 () Bool)

(declare-fun call!32882 () Bool)

(assert (=> b!593891 (= e!339291 call!32882)))

(declare-fun bm!32879 () Bool)

(assert (=> bm!32879 (= call!32882 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!593892 () Bool)

(declare-fun e!339290 () Bool)

(assert (=> b!593892 (= e!339290 call!32882)))

(declare-fun b!593893 () Bool)

(declare-fun e!339292 () Bool)

(assert (=> b!593893 (= e!339292 e!339291)))

(declare-fun c!67199 () Bool)

(assert (=> b!593893 (= c!67199 (validKeyInArray!0 (select (arr!17722 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!86435 () Bool)

(declare-fun res!380228 () Bool)

(assert (=> d!86435 (=> res!380228 e!339292)))

(assert (=> d!86435 (= res!380228 (bvsge #b00000000000000000000000000000000 (size!18086 a!2986)))))

(assert (=> d!86435 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!339292)))

(declare-fun b!593894 () Bool)

(assert (=> b!593894 (= e!339291 e!339290)))

(declare-fun lt!269670 () (_ BitVec 64))

(assert (=> b!593894 (= lt!269670 (select (arr!17722 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!269672 () Unit!18620)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36920 (_ BitVec 64) (_ BitVec 32)) Unit!18620)

(assert (=> b!593894 (= lt!269672 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!269670 #b00000000000000000000000000000000))))

(assert (=> b!593894 (arrayContainsKey!0 a!2986 lt!269670 #b00000000000000000000000000000000)))

(declare-fun lt!269671 () Unit!18620)

(assert (=> b!593894 (= lt!269671 lt!269672)))

(declare-fun res!380227 () Bool)

(assert (=> b!593894 (= res!380227 (= (seekEntryOrOpen!0 (select (arr!17722 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6169 #b00000000000000000000000000000000)))))

(assert (=> b!593894 (=> (not res!380227) (not e!339290))))

(assert (= (and d!86435 (not res!380228)) b!593893))

(assert (= (and b!593893 c!67199) b!593894))

(assert (= (and b!593893 (not c!67199)) b!593891))

(assert (= (and b!593894 res!380227) b!593892))

(assert (= (or b!593892 b!593891) bm!32879))

(declare-fun m!571827 () Bool)

(assert (=> bm!32879 m!571827))

(declare-fun m!571829 () Bool)

(assert (=> b!593893 m!571829))

(assert (=> b!593893 m!571829))

(declare-fun m!571831 () Bool)

(assert (=> b!593893 m!571831))

(assert (=> b!593894 m!571829))

(declare-fun m!571833 () Bool)

(assert (=> b!593894 m!571833))

(declare-fun m!571835 () Bool)

(assert (=> b!593894 m!571835))

(assert (=> b!593894 m!571829))

(declare-fun m!571837 () Bool)

(assert (=> b!593894 m!571837))

(assert (=> b!593804 d!86435))

(declare-fun d!86441 () Bool)

(declare-fun res!380235 () Bool)

(declare-fun e!339299 () Bool)

(assert (=> d!86441 (=> res!380235 e!339299)))

(assert (=> d!86441 (= res!380235 (= (select (arr!17722 lt!269612) index!984) (select (arr!17722 a!2986) j!136)))))

(assert (=> d!86441 (= (arrayContainsKey!0 lt!269612 (select (arr!17722 a!2986) j!136) index!984) e!339299)))

(declare-fun b!593901 () Bool)

(declare-fun e!339300 () Bool)

(assert (=> b!593901 (= e!339299 e!339300)))

(declare-fun res!380236 () Bool)

(assert (=> b!593901 (=> (not res!380236) (not e!339300))))

(assert (=> b!593901 (= res!380236 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18086 lt!269612)))))

(declare-fun b!593902 () Bool)

(assert (=> b!593902 (= e!339300 (arrayContainsKey!0 lt!269612 (select (arr!17722 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!86441 (not res!380235)) b!593901))

(assert (= (and b!593901 res!380236) b!593902))

(declare-fun m!571845 () Bool)

(assert (=> d!86441 m!571845))

(assert (=> b!593902 m!571705))

(declare-fun m!571847 () Bool)

(assert (=> b!593902 m!571847))

(assert (=> b!593803 d!86441))

(declare-fun d!86445 () Bool)

(assert (=> d!86445 (= (validKeyInArray!0 (select (arr!17722 a!2986) j!136)) (and (not (= (select (arr!17722 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17722 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!593792 d!86445))

(declare-fun d!86447 () Bool)

(assert (=> d!86447 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!54422 d!86447))

(declare-fun d!86471 () Bool)

(assert (=> d!86471 (= (array_inv!13496 a!2986) (bvsge (size!18086 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!54422 d!86471))

(declare-fun d!86473 () Bool)

(declare-fun res!380267 () Bool)

(declare-fun e!339334 () Bool)

(assert (=> d!86473 (=> res!380267 e!339334)))

(assert (=> d!86473 (= res!380267 (= (select (arr!17722 lt!269612) j!136) (select (arr!17722 a!2986) j!136)))))

(assert (=> d!86473 (= (arrayContainsKey!0 lt!269612 (select (arr!17722 a!2986) j!136) j!136) e!339334)))

(declare-fun b!593939 () Bool)

(declare-fun e!339335 () Bool)

(assert (=> b!593939 (= e!339334 e!339335)))

(declare-fun res!380268 () Bool)

(assert (=> b!593939 (=> (not res!380268) (not e!339335))))

(assert (=> b!593939 (= res!380268 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18086 lt!269612)))))

(declare-fun b!593940 () Bool)

(assert (=> b!593940 (= e!339335 (arrayContainsKey!0 lt!269612 (select (arr!17722 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86473 (not res!380267)) b!593939))

(assert (= (and b!593939 res!380268) b!593940))

(declare-fun m!571879 () Bool)

(assert (=> d!86473 m!571879))

(assert (=> b!593940 m!571705))

(declare-fun m!571881 () Bool)

(assert (=> b!593940 m!571881))

(assert (=> b!593801 d!86473))

(declare-fun b!593975 () Bool)

(declare-fun e!339357 () Bool)

(declare-fun e!339358 () Bool)

(assert (=> b!593975 (= e!339357 e!339358)))

(declare-fun c!67217 () Bool)

(assert (=> b!593975 (= c!67217 (validKeyInArray!0 (select (arr!17722 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!593976 () Bool)

(declare-fun call!32888 () Bool)

(assert (=> b!593976 (= e!339358 call!32888)))

(declare-fun d!86475 () Bool)

(declare-fun res!380277 () Bool)

(declare-fun e!339359 () Bool)

(assert (=> d!86475 (=> res!380277 e!339359)))

(assert (=> d!86475 (= res!380277 (bvsge #b00000000000000000000000000000000 (size!18086 a!2986)))))

(assert (=> d!86475 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11813) e!339359)))

(declare-fun b!593977 () Bool)

(assert (=> b!593977 (= e!339358 call!32888)))

(declare-fun b!593978 () Bool)

(assert (=> b!593978 (= e!339359 e!339357)))

(declare-fun res!380276 () Bool)

(assert (=> b!593978 (=> (not res!380276) (not e!339357))))

(declare-fun e!339356 () Bool)

(assert (=> b!593978 (= res!380276 (not e!339356))))

(declare-fun res!380275 () Bool)

(assert (=> b!593978 (=> (not res!380275) (not e!339356))))

(assert (=> b!593978 (= res!380275 (validKeyInArray!0 (select (arr!17722 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!593979 () Bool)

(assert (=> b!593979 (= e!339356 (contains!2920 Nil!11813 (select (arr!17722 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!32885 () Bool)

(assert (=> bm!32885 (= call!32888 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67217 (Cons!11812 (select (arr!17722 a!2986) #b00000000000000000000000000000000) Nil!11813) Nil!11813)))))

(assert (= (and d!86475 (not res!380277)) b!593978))

(assert (= (and b!593978 res!380275) b!593979))

(assert (= (and b!593978 res!380276) b!593975))

(assert (= (and b!593975 c!67217) b!593977))

(assert (= (and b!593975 (not c!67217)) b!593976))

(assert (= (or b!593977 b!593976) bm!32885))

(assert (=> b!593975 m!571829))

(assert (=> b!593975 m!571829))

(assert (=> b!593975 m!571831))

(assert (=> b!593978 m!571829))

(assert (=> b!593978 m!571829))

(assert (=> b!593978 m!571831))

(assert (=> b!593979 m!571829))

(assert (=> b!593979 m!571829))

(declare-fun m!571883 () Bool)

(assert (=> b!593979 m!571883))

(assert (=> bm!32885 m!571829))

(declare-fun m!571885 () Bool)

(assert (=> bm!32885 m!571885))

(assert (=> b!593790 d!86475))

(declare-fun b!594076 () Bool)

(declare-fun e!339423 () SeekEntryResult!6169)

(declare-fun e!339421 () SeekEntryResult!6169)

(assert (=> b!594076 (= e!339423 e!339421)))

(declare-fun lt!269739 () (_ BitVec 64))

(declare-fun lt!269738 () SeekEntryResult!6169)

(assert (=> b!594076 (= lt!269739 (select (arr!17722 a!2986) (index!26922 lt!269738)))))

(declare-fun c!67253 () Bool)

(assert (=> b!594076 (= c!67253 (= lt!269739 k0!1786))))

(declare-fun b!594077 () Bool)

(declare-fun c!67254 () Bool)

(assert (=> b!594077 (= c!67254 (= lt!269739 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!339422 () SeekEntryResult!6169)

(assert (=> b!594077 (= e!339421 e!339422)))

(declare-fun d!86477 () Bool)

(declare-fun lt!269740 () SeekEntryResult!6169)

(assert (=> d!86477 (and (or ((_ is Undefined!6169) lt!269740) (not ((_ is Found!6169) lt!269740)) (and (bvsge (index!26921 lt!269740) #b00000000000000000000000000000000) (bvslt (index!26921 lt!269740) (size!18086 a!2986)))) (or ((_ is Undefined!6169) lt!269740) ((_ is Found!6169) lt!269740) (not ((_ is MissingZero!6169) lt!269740)) (and (bvsge (index!26920 lt!269740) #b00000000000000000000000000000000) (bvslt (index!26920 lt!269740) (size!18086 a!2986)))) (or ((_ is Undefined!6169) lt!269740) ((_ is Found!6169) lt!269740) ((_ is MissingZero!6169) lt!269740) (not ((_ is MissingVacant!6169) lt!269740)) (and (bvsge (index!26923 lt!269740) #b00000000000000000000000000000000) (bvslt (index!26923 lt!269740) (size!18086 a!2986)))) (or ((_ is Undefined!6169) lt!269740) (ite ((_ is Found!6169) lt!269740) (= (select (arr!17722 a!2986) (index!26921 lt!269740)) k0!1786) (ite ((_ is MissingZero!6169) lt!269740) (= (select (arr!17722 a!2986) (index!26920 lt!269740)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6169) lt!269740) (= (select (arr!17722 a!2986) (index!26923 lt!269740)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!86477 (= lt!269740 e!339423)))

(declare-fun c!67255 () Bool)

(assert (=> d!86477 (= c!67255 (and ((_ is Intermediate!6169) lt!269738) (undefined!6981 lt!269738)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36920 (_ BitVec 32)) SeekEntryResult!6169)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86477 (= lt!269738 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!86477 (validMask!0 mask!3053)))

(assert (=> d!86477 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!269740)))

(declare-fun b!594078 () Bool)

(assert (=> b!594078 (= e!339422 (MissingZero!6169 (index!26922 lt!269738)))))

(declare-fun b!594079 () Bool)

(assert (=> b!594079 (= e!339422 (seekKeyOrZeroReturnVacant!0 (x!55749 lt!269738) (index!26922 lt!269738) (index!26922 lt!269738) k0!1786 a!2986 mask!3053))))

(declare-fun b!594080 () Bool)

(assert (=> b!594080 (= e!339423 Undefined!6169)))

(declare-fun b!594081 () Bool)

(assert (=> b!594081 (= e!339421 (Found!6169 (index!26922 lt!269738)))))

(assert (= (and d!86477 c!67255) b!594080))

(assert (= (and d!86477 (not c!67255)) b!594076))

(assert (= (and b!594076 c!67253) b!594081))

(assert (= (and b!594076 (not c!67253)) b!594077))

(assert (= (and b!594077 c!67254) b!594078))

(assert (= (and b!594077 (not c!67254)) b!594079))

(declare-fun m!571985 () Bool)

(assert (=> b!594076 m!571985))

(declare-fun m!571987 () Bool)

(assert (=> d!86477 m!571987))

(declare-fun m!571989 () Bool)

(assert (=> d!86477 m!571989))

(assert (=> d!86477 m!571987))

(declare-fun m!571991 () Bool)

(assert (=> d!86477 m!571991))

(declare-fun m!571993 () Bool)

(assert (=> d!86477 m!571993))

(declare-fun m!571995 () Bool)

(assert (=> d!86477 m!571995))

(assert (=> d!86477 m!571707))

(declare-fun m!571997 () Bool)

(assert (=> b!594079 m!571997))

(assert (=> b!593789 d!86477))

(declare-fun d!86519 () Bool)

(declare-fun res!380307 () Bool)

(declare-fun e!339428 () Bool)

(assert (=> d!86519 (=> res!380307 e!339428)))

(assert (=> d!86519 (= res!380307 (= (select (arr!17722 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!86519 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!339428)))

(declare-fun b!594087 () Bool)

(declare-fun e!339429 () Bool)

(assert (=> b!594087 (= e!339428 e!339429)))

(declare-fun res!380308 () Bool)

(assert (=> b!594087 (=> (not res!380308) (not e!339429))))

(assert (=> b!594087 (= res!380308 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18086 a!2986)))))

(declare-fun b!594088 () Bool)

(assert (=> b!594088 (= e!339429 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!86519 (not res!380307)) b!594087))

(assert (= (and b!594087 res!380308) b!594088))

(assert (=> d!86519 m!571829))

(declare-fun m!572003 () Bool)

(assert (=> b!594088 m!572003))

(assert (=> b!593799 d!86519))

(declare-fun d!86523 () Bool)

(declare-fun lt!269741 () Bool)

(assert (=> d!86523 (= lt!269741 (select (content!235 Nil!11813) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!339431 () Bool)

(assert (=> d!86523 (= lt!269741 e!339431)))

(declare-fun res!380310 () Bool)

(assert (=> d!86523 (=> (not res!380310) (not e!339431))))

(assert (=> d!86523 (= res!380310 ((_ is Cons!11812) Nil!11813))))

(assert (=> d!86523 (= (contains!2920 Nil!11813 #b1000000000000000000000000000000000000000000000000000000000000000) lt!269741)))

(declare-fun b!594089 () Bool)

(declare-fun e!339430 () Bool)

(assert (=> b!594089 (= e!339431 e!339430)))

(declare-fun res!380309 () Bool)

(assert (=> b!594089 (=> res!380309 e!339430)))

(assert (=> b!594089 (= res!380309 (= (h!12857 Nil!11813) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594090 () Bool)

(assert (=> b!594090 (= e!339430 (contains!2920 (t!18052 Nil!11813) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!86523 res!380310) b!594089))

(assert (= (and b!594089 (not res!380309)) b!594090))

(assert (=> d!86523 m!571821))

(declare-fun m!572005 () Bool)

(assert (=> d!86523 m!572005))

(declare-fun m!572007 () Bool)

(assert (=> b!594090 m!572007))

(assert (=> b!593788 d!86523))

(declare-fun b!594168 () Bool)

(declare-fun c!67285 () Bool)

(declare-fun lt!269771 () (_ BitVec 64))

(assert (=> b!594168 (= c!67285 (= lt!269771 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!339482 () SeekEntryResult!6169)

(declare-fun e!339483 () SeekEntryResult!6169)

(assert (=> b!594168 (= e!339482 e!339483)))

(declare-fun b!594169 () Bool)

(declare-fun e!339484 () SeekEntryResult!6169)

(assert (=> b!594169 (= e!339484 Undefined!6169)))

(declare-fun b!594170 () Bool)

(assert (=> b!594170 (= e!339484 e!339482)))

(declare-fun c!67284 () Bool)

(assert (=> b!594170 (= c!67284 (= lt!269771 (select (arr!17722 a!2986) j!136)))))

(declare-fun b!594171 () Bool)

(assert (=> b!594171 (= e!339483 (MissingVacant!6169 vacantSpotIndex!68))))

(declare-fun b!594172 () Bool)

(assert (=> b!594172 (= e!339482 (Found!6169 index!984))))

(declare-fun lt!269772 () SeekEntryResult!6169)

(declare-fun d!86525 () Bool)

(assert (=> d!86525 (and (or ((_ is Undefined!6169) lt!269772) (not ((_ is Found!6169) lt!269772)) (and (bvsge (index!26921 lt!269772) #b00000000000000000000000000000000) (bvslt (index!26921 lt!269772) (size!18086 a!2986)))) (or ((_ is Undefined!6169) lt!269772) ((_ is Found!6169) lt!269772) (not ((_ is MissingVacant!6169) lt!269772)) (not (= (index!26923 lt!269772) vacantSpotIndex!68)) (and (bvsge (index!26923 lt!269772) #b00000000000000000000000000000000) (bvslt (index!26923 lt!269772) (size!18086 a!2986)))) (or ((_ is Undefined!6169) lt!269772) (ite ((_ is Found!6169) lt!269772) (= (select (arr!17722 a!2986) (index!26921 lt!269772)) (select (arr!17722 a!2986) j!136)) (and ((_ is MissingVacant!6169) lt!269772) (= (index!26923 lt!269772) vacantSpotIndex!68) (= (select (arr!17722 a!2986) (index!26923 lt!269772)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86525 (= lt!269772 e!339484)))

(declare-fun c!67286 () Bool)

(assert (=> d!86525 (= c!67286 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86525 (= lt!269771 (select (arr!17722 a!2986) index!984))))

(assert (=> d!86525 (validMask!0 mask!3053)))

(assert (=> d!86525 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17722 a!2986) j!136) a!2986 mask!3053) lt!269772)))

(declare-fun b!594173 () Bool)

(assert (=> b!594173 (= e!339483 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17722 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!86525 c!67286) b!594169))

(assert (= (and d!86525 (not c!67286)) b!594170))

(assert (= (and b!594170 c!67284) b!594172))

(assert (= (and b!594170 (not c!67284)) b!594168))

(assert (= (and b!594168 c!67285) b!594171))

(assert (= (and b!594168 (not c!67285)) b!594173))

(declare-fun m!572063 () Bool)

(assert (=> d!86525 m!572063))

(declare-fun m!572065 () Bool)

(assert (=> d!86525 m!572065))

(assert (=> d!86525 m!571731))

(assert (=> d!86525 m!571707))

(assert (=> b!594173 m!571735))

(assert (=> b!594173 m!571735))

(assert (=> b!594173 m!571705))

(declare-fun m!572067 () Bool)

(assert (=> b!594173 m!572067))

(assert (=> b!593787 d!86525))

(declare-fun d!86541 () Bool)

(declare-fun lt!269775 () (_ BitVec 32))

(assert (=> d!86541 (and (bvsge lt!269775 #b00000000000000000000000000000000) (bvslt lt!269775 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86541 (= lt!269775 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!86541 (validMask!0 mask!3053)))

(assert (=> d!86541 (= (nextIndex!0 index!984 x!910 mask!3053) lt!269775)))

(declare-fun bs!18319 () Bool)

(assert (= bs!18319 d!86541))

(declare-fun m!572069 () Bool)

(assert (=> bs!18319 m!572069))

(assert (=> bs!18319 m!571707))

(assert (=> b!593797 d!86541))

(declare-fun d!86543 () Bool)

(declare-fun e!339487 () Bool)

(assert (=> d!86543 e!339487))

(declare-fun res!380336 () Bool)

(assert (=> d!86543 (=> (not res!380336) (not e!339487))))

(assert (=> d!86543 (= res!380336 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18086 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18086 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18086 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18086 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18086 a!2986))))))

(declare-fun lt!269778 () Unit!18620)

(declare-fun choose!9 (array!36920 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18620)

(assert (=> d!86543 (= lt!269778 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269616 vacantSpotIndex!68 mask!3053))))

(assert (=> d!86543 (validMask!0 mask!3053)))

(assert (=> d!86543 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269616 vacantSpotIndex!68 mask!3053) lt!269778)))

(declare-fun b!594176 () Bool)

(assert (=> b!594176 (= e!339487 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269616 vacantSpotIndex!68 (select (arr!17722 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269616 vacantSpotIndex!68 (select (store (arr!17722 a!2986) i!1108 k0!1786) j!136) (array!36921 (store (arr!17722 a!2986) i!1108 k0!1786) (size!18086 a!2986)) mask!3053)))))

(assert (= (and d!86543 res!380336) b!594176))

(declare-fun m!572071 () Bool)

(assert (=> d!86543 m!572071))

(assert (=> d!86543 m!571707))

(assert (=> b!594176 m!571737))

(declare-fun m!572073 () Bool)

(assert (=> b!594176 m!572073))

(assert (=> b!594176 m!571737))

(assert (=> b!594176 m!571705))

(assert (=> b!594176 m!571745))

(assert (=> b!594176 m!571713))

(assert (=> b!594176 m!571705))

(assert (=> b!593797 d!86543))

(declare-fun b!594177 () Bool)

(declare-fun c!67288 () Bool)

(declare-fun lt!269779 () (_ BitVec 64))

(assert (=> b!594177 (= c!67288 (= lt!269779 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!339488 () SeekEntryResult!6169)

(declare-fun e!339489 () SeekEntryResult!6169)

(assert (=> b!594177 (= e!339488 e!339489)))

(declare-fun b!594178 () Bool)

(declare-fun e!339490 () SeekEntryResult!6169)

(assert (=> b!594178 (= e!339490 Undefined!6169)))

(declare-fun b!594179 () Bool)

(assert (=> b!594179 (= e!339490 e!339488)))

(declare-fun c!67287 () Bool)

(assert (=> b!594179 (= c!67287 (= lt!269779 lt!269618))))

(declare-fun b!594180 () Bool)

(assert (=> b!594180 (= e!339489 (MissingVacant!6169 vacantSpotIndex!68))))

(declare-fun b!594181 () Bool)

(assert (=> b!594181 (= e!339488 (Found!6169 lt!269616))))

(declare-fun lt!269780 () SeekEntryResult!6169)

(declare-fun d!86545 () Bool)

(assert (=> d!86545 (and (or ((_ is Undefined!6169) lt!269780) (not ((_ is Found!6169) lt!269780)) (and (bvsge (index!26921 lt!269780) #b00000000000000000000000000000000) (bvslt (index!26921 lt!269780) (size!18086 lt!269612)))) (or ((_ is Undefined!6169) lt!269780) ((_ is Found!6169) lt!269780) (not ((_ is MissingVacant!6169) lt!269780)) (not (= (index!26923 lt!269780) vacantSpotIndex!68)) (and (bvsge (index!26923 lt!269780) #b00000000000000000000000000000000) (bvslt (index!26923 lt!269780) (size!18086 lt!269612)))) (or ((_ is Undefined!6169) lt!269780) (ite ((_ is Found!6169) lt!269780) (= (select (arr!17722 lt!269612) (index!26921 lt!269780)) lt!269618) (and ((_ is MissingVacant!6169) lt!269780) (= (index!26923 lt!269780) vacantSpotIndex!68) (= (select (arr!17722 lt!269612) (index!26923 lt!269780)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86545 (= lt!269780 e!339490)))

(declare-fun c!67289 () Bool)

(assert (=> d!86545 (= c!67289 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86545 (= lt!269779 (select (arr!17722 lt!269612) lt!269616))))

(assert (=> d!86545 (validMask!0 mask!3053)))

(assert (=> d!86545 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269616 vacantSpotIndex!68 lt!269618 lt!269612 mask!3053) lt!269780)))

(declare-fun b!594182 () Bool)

(assert (=> b!594182 (= e!339489 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!269616 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!269618 lt!269612 mask!3053))))

(assert (= (and d!86545 c!67289) b!594178))

(assert (= (and d!86545 (not c!67289)) b!594179))

(assert (= (and b!594179 c!67287) b!594181))

(assert (= (and b!594179 (not c!67287)) b!594177))

(assert (= (and b!594177 c!67288) b!594180))

(assert (= (and b!594177 (not c!67288)) b!594182))

(declare-fun m!572075 () Bool)

(assert (=> d!86545 m!572075))

(declare-fun m!572077 () Bool)

(assert (=> d!86545 m!572077))

(declare-fun m!572079 () Bool)

(assert (=> d!86545 m!572079))

(assert (=> d!86545 m!571707))

(declare-fun m!572081 () Bool)

(assert (=> b!594182 m!572081))

(assert (=> b!594182 m!572081))

(declare-fun m!572083 () Bool)

(assert (=> b!594182 m!572083))

(assert (=> b!593797 d!86545))

(declare-fun b!594183 () Bool)

(declare-fun c!67291 () Bool)

(declare-fun lt!269781 () (_ BitVec 64))

(assert (=> b!594183 (= c!67291 (= lt!269781 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!339491 () SeekEntryResult!6169)

(declare-fun e!339492 () SeekEntryResult!6169)

(assert (=> b!594183 (= e!339491 e!339492)))

(declare-fun b!594184 () Bool)

(declare-fun e!339493 () SeekEntryResult!6169)

(assert (=> b!594184 (= e!339493 Undefined!6169)))

(declare-fun b!594185 () Bool)

(assert (=> b!594185 (= e!339493 e!339491)))

(declare-fun c!67290 () Bool)

(assert (=> b!594185 (= c!67290 (= lt!269781 (select (arr!17722 a!2986) j!136)))))

(declare-fun b!594186 () Bool)

(assert (=> b!594186 (= e!339492 (MissingVacant!6169 vacantSpotIndex!68))))

(declare-fun b!594187 () Bool)

(assert (=> b!594187 (= e!339491 (Found!6169 lt!269616))))

(declare-fun lt!269782 () SeekEntryResult!6169)

(declare-fun d!86547 () Bool)

(assert (=> d!86547 (and (or ((_ is Undefined!6169) lt!269782) (not ((_ is Found!6169) lt!269782)) (and (bvsge (index!26921 lt!269782) #b00000000000000000000000000000000) (bvslt (index!26921 lt!269782) (size!18086 a!2986)))) (or ((_ is Undefined!6169) lt!269782) ((_ is Found!6169) lt!269782) (not ((_ is MissingVacant!6169) lt!269782)) (not (= (index!26923 lt!269782) vacantSpotIndex!68)) (and (bvsge (index!26923 lt!269782) #b00000000000000000000000000000000) (bvslt (index!26923 lt!269782) (size!18086 a!2986)))) (or ((_ is Undefined!6169) lt!269782) (ite ((_ is Found!6169) lt!269782) (= (select (arr!17722 a!2986) (index!26921 lt!269782)) (select (arr!17722 a!2986) j!136)) (and ((_ is MissingVacant!6169) lt!269782) (= (index!26923 lt!269782) vacantSpotIndex!68) (= (select (arr!17722 a!2986) (index!26923 lt!269782)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86547 (= lt!269782 e!339493)))

(declare-fun c!67292 () Bool)

(assert (=> d!86547 (= c!67292 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86547 (= lt!269781 (select (arr!17722 a!2986) lt!269616))))

(assert (=> d!86547 (validMask!0 mask!3053)))

(assert (=> d!86547 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269616 vacantSpotIndex!68 (select (arr!17722 a!2986) j!136) a!2986 mask!3053) lt!269782)))

(declare-fun b!594188 () Bool)

(assert (=> b!594188 (= e!339492 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!269616 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17722 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!86547 c!67292) b!594184))

(assert (= (and d!86547 (not c!67292)) b!594185))

(assert (= (and b!594185 c!67290) b!594187))

(assert (= (and b!594185 (not c!67290)) b!594183))

(assert (= (and b!594183 c!67291) b!594186))

(assert (= (and b!594183 (not c!67291)) b!594188))

(declare-fun m!572085 () Bool)

(assert (=> d!86547 m!572085))

(declare-fun m!572087 () Bool)

(assert (=> d!86547 m!572087))

(declare-fun m!572089 () Bool)

(assert (=> d!86547 m!572089))

(assert (=> d!86547 m!571707))

(assert (=> b!594188 m!572081))

(assert (=> b!594188 m!572081))

(assert (=> b!594188 m!571705))

(declare-fun m!572091 () Bool)

(assert (=> b!594188 m!572091))

(assert (=> b!593797 d!86547))

(declare-fun b!594189 () Bool)

(declare-fun c!67294 () Bool)

(declare-fun lt!269783 () (_ BitVec 64))

(assert (=> b!594189 (= c!67294 (= lt!269783 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!339494 () SeekEntryResult!6169)

(declare-fun e!339495 () SeekEntryResult!6169)

(assert (=> b!594189 (= e!339494 e!339495)))

(declare-fun b!594190 () Bool)

(declare-fun e!339496 () SeekEntryResult!6169)

(assert (=> b!594190 (= e!339496 Undefined!6169)))

(declare-fun b!594191 () Bool)

(assert (=> b!594191 (= e!339496 e!339494)))

(declare-fun c!67293 () Bool)

(assert (=> b!594191 (= c!67293 (= lt!269783 lt!269618))))

(declare-fun b!594192 () Bool)

(assert (=> b!594192 (= e!339495 (MissingVacant!6169 vacantSpotIndex!68))))

(declare-fun b!594193 () Bool)

(assert (=> b!594193 (= e!339494 (Found!6169 index!984))))

(declare-fun lt!269784 () SeekEntryResult!6169)

(declare-fun d!86549 () Bool)

(assert (=> d!86549 (and (or ((_ is Undefined!6169) lt!269784) (not ((_ is Found!6169) lt!269784)) (and (bvsge (index!26921 lt!269784) #b00000000000000000000000000000000) (bvslt (index!26921 lt!269784) (size!18086 lt!269612)))) (or ((_ is Undefined!6169) lt!269784) ((_ is Found!6169) lt!269784) (not ((_ is MissingVacant!6169) lt!269784)) (not (= (index!26923 lt!269784) vacantSpotIndex!68)) (and (bvsge (index!26923 lt!269784) #b00000000000000000000000000000000) (bvslt (index!26923 lt!269784) (size!18086 lt!269612)))) (or ((_ is Undefined!6169) lt!269784) (ite ((_ is Found!6169) lt!269784) (= (select (arr!17722 lt!269612) (index!26921 lt!269784)) lt!269618) (and ((_ is MissingVacant!6169) lt!269784) (= (index!26923 lt!269784) vacantSpotIndex!68) (= (select (arr!17722 lt!269612) (index!26923 lt!269784)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86549 (= lt!269784 e!339496)))

(declare-fun c!67295 () Bool)

(assert (=> d!86549 (= c!67295 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86549 (= lt!269783 (select (arr!17722 lt!269612) index!984))))

(assert (=> d!86549 (validMask!0 mask!3053)))

(assert (=> d!86549 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269618 lt!269612 mask!3053) lt!269784)))

(declare-fun b!594194 () Bool)

(assert (=> b!594194 (= e!339495 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!269618 lt!269612 mask!3053))))

(assert (= (and d!86549 c!67295) b!594190))

(assert (= (and d!86549 (not c!67295)) b!594191))

(assert (= (and b!594191 c!67293) b!594193))

(assert (= (and b!594191 (not c!67293)) b!594189))

(assert (= (and b!594189 c!67294) b!594192))

(assert (= (and b!594189 (not c!67294)) b!594194))

(declare-fun m!572093 () Bool)

(assert (=> d!86549 m!572093))

(declare-fun m!572095 () Bool)

(assert (=> d!86549 m!572095))

(assert (=> d!86549 m!571845))

(assert (=> d!86549 m!571707))

(assert (=> b!594194 m!571735))

(assert (=> b!594194 m!571735))

(declare-fun m!572097 () Bool)

(assert (=> b!594194 m!572097))

(assert (=> b!593797 d!86549))

(declare-fun d!86551 () Bool)

(assert (=> d!86551 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!593786 d!86551))

(declare-fun d!86553 () Bool)

(declare-fun res!380341 () Bool)

(declare-fun e!339501 () Bool)

(assert (=> d!86553 (=> res!380341 e!339501)))

(assert (=> d!86553 (= res!380341 ((_ is Nil!11813) Nil!11813))))

(assert (=> d!86553 (= (noDuplicate!236 Nil!11813) e!339501)))

(declare-fun b!594199 () Bool)

(declare-fun e!339502 () Bool)

(assert (=> b!594199 (= e!339501 e!339502)))

(declare-fun res!380342 () Bool)

(assert (=> b!594199 (=> (not res!380342) (not e!339502))))

(assert (=> b!594199 (= res!380342 (not (contains!2920 (t!18052 Nil!11813) (h!12857 Nil!11813))))))

(declare-fun b!594200 () Bool)

(assert (=> b!594200 (= e!339502 (noDuplicate!236 (t!18052 Nil!11813)))))

(assert (= (and d!86553 (not res!380341)) b!594199))

(assert (= (and b!594199 res!380342) b!594200))

(declare-fun m!572099 () Bool)

(assert (=> b!594199 m!572099))

(declare-fun m!572101 () Bool)

(assert (=> b!594200 m!572101))

(assert (=> b!593795 d!86553))

(check-sat (not b!594088) (not b!593979) (not d!86433) (not d!86541) (not b!594079) (not b!594176) (not b!593902) (not d!86543) (not bm!32879) (not b!593975) (not d!86431) (not d!86477) (not bm!32885) (not d!86525) (not b!594182) (not b!593978) (not b!593876) (not b!594199) (not b!594188) (not b!594173) (not d!86549) (not b!594090) (not b!594200) (not b!594194) (not b!593940) (not d!86523) (not b!593882) (not d!86545) (not d!86547) (not b!593893) (not b!593894))
(check-sat)
