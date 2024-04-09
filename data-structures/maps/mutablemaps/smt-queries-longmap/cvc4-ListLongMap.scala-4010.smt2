; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54544 () Bool)

(assert start!54544)

(declare-fun b!595627 () Bool)

(declare-datatypes ((Unit!18708 0))(
  ( (Unit!18709) )
))
(declare-fun e!340320 () Unit!18708)

(declare-fun Unit!18710 () Unit!18708)

(assert (=> b!595627 (= e!340320 Unit!18710)))

(declare-fun b!595628 () Bool)

(declare-fun res!381652 () Bool)

(declare-fun e!340313 () Bool)

(assert (=> b!595628 (=> res!381652 e!340313)))

(declare-datatypes ((List!11838 0))(
  ( (Nil!11835) (Cons!11834 (h!12879 (_ BitVec 64)) (t!18074 List!11838)) )
))
(declare-fun contains!2942 (List!11838 (_ BitVec 64)) Bool)

(assert (=> b!595628 (= res!381652 (contains!2942 Nil!11835 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595629 () Bool)

(declare-fun e!340311 () Bool)

(declare-datatypes ((SeekEntryResult!6191 0))(
  ( (MissingZero!6191 (index!27011 (_ BitVec 32))) (Found!6191 (index!27012 (_ BitVec 32))) (Intermediate!6191 (undefined!7003 Bool) (index!27013 (_ BitVec 32)) (x!55836 (_ BitVec 32))) (Undefined!6191) (MissingVacant!6191 (index!27014 (_ BitVec 32))) )
))
(declare-fun lt!270530 () SeekEntryResult!6191)

(declare-fun lt!270534 () SeekEntryResult!6191)

(assert (=> b!595629 (= e!340311 (= lt!270530 lt!270534))))

(declare-fun b!595630 () Bool)

(declare-fun e!340321 () Bool)

(declare-fun e!340312 () Bool)

(assert (=> b!595630 (= e!340321 e!340312)))

(declare-fun res!381645 () Bool)

(assert (=> b!595630 (=> (not res!381645) (not e!340312))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36967 0))(
  ( (array!36968 (arr!17744 (Array (_ BitVec 32) (_ BitVec 64))) (size!18108 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36967)

(assert (=> b!595630 (= res!381645 (and (= lt!270530 (Found!6191 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17744 a!2986) index!984) (select (arr!17744 a!2986) j!136))) (not (= (select (arr!17744 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36967 (_ BitVec 32)) SeekEntryResult!6191)

(assert (=> b!595630 (= lt!270530 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17744 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!595631 () Bool)

(declare-fun res!381657 () Bool)

(declare-fun e!340319 () Bool)

(assert (=> b!595631 (=> (not res!381657) (not e!340319))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36967 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!595631 (= res!381657 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!595632 () Bool)

(declare-fun e!340309 () Bool)

(declare-fun e!340315 () Bool)

(assert (=> b!595632 (= e!340309 e!340315)))

(declare-fun res!381661 () Bool)

(assert (=> b!595632 (=> res!381661 e!340315)))

(declare-fun lt!270536 () (_ BitVec 64))

(declare-fun lt!270537 () (_ BitVec 64))

(assert (=> b!595632 (= res!381661 (or (not (= (select (arr!17744 a!2986) j!136) lt!270537)) (not (= (select (arr!17744 a!2986) j!136) lt!270536)) (bvsge j!136 index!984)))))

(declare-fun b!595633 () Bool)

(declare-fun res!381653 () Bool)

(assert (=> b!595633 (=> (not res!381653) (not e!340319))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!595633 (= res!381653 (and (= (size!18108 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18108 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18108 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!595634 () Bool)

(declare-fun e!340317 () Bool)

(declare-fun e!340314 () Bool)

(assert (=> b!595634 (= e!340317 e!340314)))

(declare-fun res!381650 () Bool)

(assert (=> b!595634 (=> res!381650 e!340314)))

(assert (=> b!595634 (= res!381650 (or (not (= (select (arr!17744 a!2986) j!136) lt!270537)) (not (= (select (arr!17744 a!2986) j!136) lt!270536)) (bvsge j!136 index!984)))))

(assert (=> b!595634 e!340309))

(declare-fun res!381663 () Bool)

(assert (=> b!595634 (=> (not res!381663) (not e!340309))))

(assert (=> b!595634 (= res!381663 (= lt!270536 (select (arr!17744 a!2986) j!136)))))

(assert (=> b!595634 (= lt!270536 (select (store (arr!17744 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!595635 () Bool)

(declare-fun e!340310 () Bool)

(declare-fun lt!270538 () array!36967)

(assert (=> b!595635 (= e!340310 (arrayContainsKey!0 lt!270538 (select (arr!17744 a!2986) j!136) index!984))))

(declare-fun b!595636 () Bool)

(assert (=> b!595636 (= e!340313 true)))

(declare-fun lt!270535 () Bool)

(assert (=> b!595636 (= lt!270535 (contains!2942 Nil!11835 k!1786))))

(declare-fun b!595637 () Bool)

(declare-fun res!381659 () Bool)

(assert (=> b!595637 (=> (not res!381659) (not e!340319))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!595637 (= res!381659 (validKeyInArray!0 (select (arr!17744 a!2986) j!136)))))

(declare-fun res!381648 () Bool)

(assert (=> start!54544 (=> (not res!381648) (not e!340319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54544 (= res!381648 (validMask!0 mask!3053))))

(assert (=> start!54544 e!340319))

(assert (=> start!54544 true))

(declare-fun array_inv!13518 (array!36967) Bool)

(assert (=> start!54544 (array_inv!13518 a!2986)))

(declare-fun b!595638 () Bool)

(declare-fun e!340316 () Bool)

(assert (=> b!595638 (= e!340316 e!340321)))

(declare-fun res!381649 () Bool)

(assert (=> b!595638 (=> (not res!381649) (not e!340321))))

(assert (=> b!595638 (= res!381649 (= (select (store (arr!17744 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!595638 (= lt!270538 (array!36968 (store (arr!17744 a!2986) i!1108 k!1786) (size!18108 a!2986)))))

(declare-fun b!595639 () Bool)

(declare-fun res!381660 () Bool)

(assert (=> b!595639 (=> res!381660 e!340313)))

(assert (=> b!595639 (= res!381660 (contains!2942 Nil!11835 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595640 () Bool)

(assert (=> b!595640 (= e!340319 e!340316)))

(declare-fun res!381656 () Bool)

(assert (=> b!595640 (=> (not res!381656) (not e!340316))))

(declare-fun lt!270532 () SeekEntryResult!6191)

(assert (=> b!595640 (= res!381656 (or (= lt!270532 (MissingZero!6191 i!1108)) (= lt!270532 (MissingVacant!6191 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36967 (_ BitVec 32)) SeekEntryResult!6191)

(assert (=> b!595640 (= lt!270532 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!595641 () Bool)

(declare-fun res!381662 () Bool)

(assert (=> b!595641 (=> (not res!381662) (not e!340316))))

(assert (=> b!595641 (= res!381662 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17744 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!595642 () Bool)

(declare-fun res!381646 () Bool)

(assert (=> b!595642 (=> (not res!381646) (not e!340316))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36967 (_ BitVec 32)) Bool)

(assert (=> b!595642 (= res!381646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!595643 () Bool)

(declare-fun Unit!18711 () Unit!18708)

(assert (=> b!595643 (= e!340320 Unit!18711)))

(assert (=> b!595643 false))

(declare-fun b!595644 () Bool)

(declare-fun res!381664 () Bool)

(assert (=> b!595644 (=> res!381664 e!340313)))

(declare-fun noDuplicate!258 (List!11838) Bool)

(assert (=> b!595644 (= res!381664 (not (noDuplicate!258 Nil!11835)))))

(declare-fun b!595645 () Bool)

(assert (=> b!595645 (= e!340314 e!340313)))

(declare-fun res!381655 () Bool)

(assert (=> b!595645 (=> res!381655 e!340313)))

(assert (=> b!595645 (= res!381655 (or (bvsge (size!18108 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18108 a!2986))))))

(assert (=> b!595645 (arrayContainsKey!0 lt!270538 (select (arr!17744 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270529 () Unit!18708)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36967 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18708)

(assert (=> b!595645 (= lt!270529 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270538 (select (arr!17744 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!595646 () Bool)

(assert (=> b!595646 (= e!340312 (not e!340317))))

(declare-fun res!381654 () Bool)

(assert (=> b!595646 (=> res!381654 e!340317)))

(declare-fun lt!270540 () SeekEntryResult!6191)

(assert (=> b!595646 (= res!381654 (not (= lt!270540 (Found!6191 index!984))))))

(declare-fun lt!270533 () Unit!18708)

(assert (=> b!595646 (= lt!270533 e!340320)))

(declare-fun c!67358 () Bool)

(assert (=> b!595646 (= c!67358 (= lt!270540 Undefined!6191))))

(assert (=> b!595646 (= lt!270540 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270537 lt!270538 mask!3053))))

(assert (=> b!595646 e!340311))

(declare-fun res!381651 () Bool)

(assert (=> b!595646 (=> (not res!381651) (not e!340311))))

(declare-fun lt!270539 () (_ BitVec 32))

(assert (=> b!595646 (= res!381651 (= lt!270534 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270539 vacantSpotIndex!68 lt!270537 lt!270538 mask!3053)))))

(assert (=> b!595646 (= lt!270534 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270539 vacantSpotIndex!68 (select (arr!17744 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!595646 (= lt!270537 (select (store (arr!17744 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270531 () Unit!18708)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36967 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18708)

(assert (=> b!595646 (= lt!270531 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270539 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!595646 (= lt!270539 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!595647 () Bool)

(declare-fun res!381647 () Bool)

(assert (=> b!595647 (=> (not res!381647) (not e!340316))))

(declare-fun arrayNoDuplicates!0 (array!36967 (_ BitVec 32) List!11838) Bool)

(assert (=> b!595647 (= res!381647 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11835))))

(declare-fun b!595648 () Bool)

(declare-fun res!381665 () Bool)

(assert (=> b!595648 (=> (not res!381665) (not e!340319))))

(assert (=> b!595648 (= res!381665 (validKeyInArray!0 k!1786))))

(declare-fun b!595649 () Bool)

(assert (=> b!595649 (= e!340315 e!340310)))

(declare-fun res!381658 () Bool)

(assert (=> b!595649 (=> (not res!381658) (not e!340310))))

(assert (=> b!595649 (= res!381658 (arrayContainsKey!0 lt!270538 (select (arr!17744 a!2986) j!136) j!136))))

(assert (= (and start!54544 res!381648) b!595633))

(assert (= (and b!595633 res!381653) b!595637))

(assert (= (and b!595637 res!381659) b!595648))

(assert (= (and b!595648 res!381665) b!595631))

(assert (= (and b!595631 res!381657) b!595640))

(assert (= (and b!595640 res!381656) b!595642))

(assert (= (and b!595642 res!381646) b!595647))

(assert (= (and b!595647 res!381647) b!595641))

(assert (= (and b!595641 res!381662) b!595638))

(assert (= (and b!595638 res!381649) b!595630))

(assert (= (and b!595630 res!381645) b!595646))

(assert (= (and b!595646 res!381651) b!595629))

(assert (= (and b!595646 c!67358) b!595643))

(assert (= (and b!595646 (not c!67358)) b!595627))

(assert (= (and b!595646 (not res!381654)) b!595634))

(assert (= (and b!595634 res!381663) b!595632))

(assert (= (and b!595632 (not res!381661)) b!595649))

(assert (= (and b!595649 res!381658) b!595635))

(assert (= (and b!595634 (not res!381650)) b!595645))

(assert (= (and b!595645 (not res!381655)) b!595644))

(assert (= (and b!595644 (not res!381664)) b!595628))

(assert (= (and b!595628 (not res!381652)) b!595639))

(assert (= (and b!595639 (not res!381660)) b!595636))

(declare-fun m!573263 () Bool)

(assert (=> b!595647 m!573263))

(declare-fun m!573265 () Bool)

(assert (=> b!595635 m!573265))

(assert (=> b!595635 m!573265))

(declare-fun m!573267 () Bool)

(assert (=> b!595635 m!573267))

(declare-fun m!573269 () Bool)

(assert (=> b!595639 m!573269))

(declare-fun m!573271 () Bool)

(assert (=> b!595638 m!573271))

(declare-fun m!573273 () Bool)

(assert (=> b!595638 m!573273))

(declare-fun m!573275 () Bool)

(assert (=> b!595628 m!573275))

(assert (=> b!595646 m!573265))

(declare-fun m!573277 () Bool)

(assert (=> b!595646 m!573277))

(declare-fun m!573279 () Bool)

(assert (=> b!595646 m!573279))

(declare-fun m!573281 () Bool)

(assert (=> b!595646 m!573281))

(declare-fun m!573283 () Bool)

(assert (=> b!595646 m!573283))

(assert (=> b!595646 m!573265))

(declare-fun m!573285 () Bool)

(assert (=> b!595646 m!573285))

(assert (=> b!595646 m!573271))

(declare-fun m!573287 () Bool)

(assert (=> b!595646 m!573287))

(declare-fun m!573289 () Bool)

(assert (=> b!595642 m!573289))

(declare-fun m!573291 () Bool)

(assert (=> b!595630 m!573291))

(assert (=> b!595630 m!573265))

(assert (=> b!595630 m!573265))

(declare-fun m!573293 () Bool)

(assert (=> b!595630 m!573293))

(declare-fun m!573295 () Bool)

(assert (=> b!595640 m!573295))

(assert (=> b!595634 m!573265))

(assert (=> b!595634 m!573271))

(declare-fun m!573297 () Bool)

(assert (=> b!595634 m!573297))

(assert (=> b!595645 m!573265))

(assert (=> b!595645 m!573265))

(declare-fun m!573299 () Bool)

(assert (=> b!595645 m!573299))

(assert (=> b!595645 m!573265))

(declare-fun m!573301 () Bool)

(assert (=> b!595645 m!573301))

(assert (=> b!595637 m!573265))

(assert (=> b!595637 m!573265))

(declare-fun m!573303 () Bool)

(assert (=> b!595637 m!573303))

(declare-fun m!573305 () Bool)

(assert (=> b!595636 m!573305))

(declare-fun m!573307 () Bool)

(assert (=> b!595641 m!573307))

(declare-fun m!573309 () Bool)

(assert (=> b!595631 m!573309))

(assert (=> b!595649 m!573265))

(assert (=> b!595649 m!573265))

(declare-fun m!573311 () Bool)

(assert (=> b!595649 m!573311))

(assert (=> b!595632 m!573265))

(declare-fun m!573313 () Bool)

(assert (=> start!54544 m!573313))

(declare-fun m!573315 () Bool)

(assert (=> start!54544 m!573315))

(declare-fun m!573317 () Bool)

(assert (=> b!595644 m!573317))

(declare-fun m!573319 () Bool)

(assert (=> b!595648 m!573319))

(push 1)

