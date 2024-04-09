; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58242 () Bool)

(assert start!58242)

(declare-fun b!642914 () Bool)

(declare-fun e!368258 () Bool)

(declare-fun e!368253 () Bool)

(assert (=> b!642914 (= e!368258 (not e!368253))))

(declare-fun res!416540 () Bool)

(assert (=> b!642914 (=> res!416540 e!368253)))

(declare-datatypes ((SeekEntryResult!6846 0))(
  ( (MissingZero!6846 (index!29712 (_ BitVec 32))) (Found!6846 (index!29713 (_ BitVec 32))) (Intermediate!6846 (undefined!7658 Bool) (index!29714 (_ BitVec 32)) (x!58510 (_ BitVec 32))) (Undefined!6846) (MissingVacant!6846 (index!29715 (_ BitVec 32))) )
))
(declare-fun lt!297865 () SeekEntryResult!6846)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!642914 (= res!416540 (not (= lt!297865 (Found!6846 index!984))))))

(declare-datatypes ((Unit!21748 0))(
  ( (Unit!21749) )
))
(declare-fun lt!297864 () Unit!21748)

(declare-fun e!368254 () Unit!21748)

(assert (=> b!642914 (= lt!297864 e!368254)))

(declare-fun c!73555 () Bool)

(assert (=> b!642914 (= c!73555 (= lt!297865 Undefined!6846))))

(declare-datatypes ((array!38376 0))(
  ( (array!38377 (arr!18399 (Array (_ BitVec 32) (_ BitVec 64))) (size!18763 (_ BitVec 32))) )
))
(declare-fun lt!297855 () array!38376)

(declare-fun lt!297862 () (_ BitVec 64))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38376 (_ BitVec 32)) SeekEntryResult!6846)

(assert (=> b!642914 (= lt!297865 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297862 lt!297855 mask!3053))))

(declare-fun e!368250 () Bool)

(assert (=> b!642914 e!368250))

(declare-fun res!416549 () Bool)

(assert (=> b!642914 (=> (not res!416549) (not e!368250))))

(declare-fun lt!297858 () SeekEntryResult!6846)

(declare-fun lt!297857 () (_ BitVec 32))

(assert (=> b!642914 (= res!416549 (= lt!297858 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297857 vacantSpotIndex!68 lt!297862 lt!297855 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38376)

(assert (=> b!642914 (= lt!297858 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297857 vacantSpotIndex!68 (select (arr!18399 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!642914 (= lt!297862 (select (store (arr!18399 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!297860 () Unit!21748)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38376 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21748)

(assert (=> b!642914 (= lt!297860 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297857 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!642914 (= lt!297857 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!642915 () Bool)

(declare-fun res!416550 () Bool)

(declare-fun e!368252 () Bool)

(assert (=> b!642915 (=> (not res!416550) (not e!368252))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38376 (_ BitVec 32)) Bool)

(assert (=> b!642915 (= res!416550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!642916 () Bool)

(declare-fun e!368260 () Bool)

(assert (=> b!642916 (= e!368260 e!368258)))

(declare-fun res!416547 () Bool)

(assert (=> b!642916 (=> (not res!416547) (not e!368258))))

(declare-fun lt!297861 () SeekEntryResult!6846)

(assert (=> b!642916 (= res!416547 (and (= lt!297861 (Found!6846 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18399 a!2986) index!984) (select (arr!18399 a!2986) j!136))) (not (= (select (arr!18399 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!642916 (= lt!297861 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18399 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!642917 () Bool)

(declare-fun res!416554 () Bool)

(declare-fun e!368248 () Bool)

(assert (=> b!642917 (=> (not res!416554) (not e!368248))))

(assert (=> b!642917 (= res!416554 (and (= (size!18763 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18763 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18763 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!642918 () Bool)

(declare-fun e!368255 () Bool)

(declare-fun e!368256 () Bool)

(assert (=> b!642918 (= e!368255 e!368256)))

(declare-fun res!416545 () Bool)

(assert (=> b!642918 (=> res!416545 e!368256)))

(assert (=> b!642918 (= res!416545 (bvsge index!984 j!136))))

(declare-fun lt!297866 () Unit!21748)

(declare-fun e!368247 () Unit!21748)

(assert (=> b!642918 (= lt!297866 e!368247)))

(declare-fun c!73556 () Bool)

(assert (=> b!642918 (= c!73556 (bvslt j!136 index!984))))

(declare-fun b!642919 () Bool)

(declare-fun Unit!21750 () Unit!21748)

(assert (=> b!642919 (= e!368254 Unit!21750)))

(assert (=> b!642919 false))

(declare-fun b!642920 () Bool)

(declare-fun res!416552 () Bool)

(assert (=> b!642920 (=> (not res!416552) (not e!368252))))

(assert (=> b!642920 (= res!416552 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18399 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!642921 () Bool)

(declare-fun Unit!21751 () Unit!21748)

(assert (=> b!642921 (= e!368254 Unit!21751)))

(declare-fun b!642922 () Bool)

(declare-fun res!416544 () Bool)

(assert (=> b!642922 (=> (not res!416544) (not e!368248))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!642922 (= res!416544 (validKeyInArray!0 (select (arr!18399 a!2986) j!136)))))

(declare-fun b!642923 () Bool)

(declare-fun res!416546 () Bool)

(assert (=> b!642923 (=> (not res!416546) (not e!368248))))

(assert (=> b!642923 (= res!416546 (validKeyInArray!0 k!1786))))

(declare-fun b!642925 () Bool)

(assert (=> b!642925 (= e!368253 e!368255)))

(declare-fun res!416548 () Bool)

(assert (=> b!642925 (=> res!416548 e!368255)))

(declare-fun lt!297854 () (_ BitVec 64))

(assert (=> b!642925 (= res!416548 (or (not (= (select (arr!18399 a!2986) j!136) lt!297862)) (not (= (select (arr!18399 a!2986) j!136) lt!297854))))))

(declare-fun e!368251 () Bool)

(assert (=> b!642925 e!368251))

(declare-fun res!416543 () Bool)

(assert (=> b!642925 (=> (not res!416543) (not e!368251))))

(assert (=> b!642925 (= res!416543 (= lt!297854 (select (arr!18399 a!2986) j!136)))))

(assert (=> b!642925 (= lt!297854 (select (store (arr!18399 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!642926 () Bool)

(assert (=> b!642926 (= e!368250 (= lt!297861 lt!297858))))

(declare-fun b!642927 () Bool)

(declare-fun e!368259 () Bool)

(assert (=> b!642927 (= e!368251 e!368259)))

(declare-fun res!416553 () Bool)

(assert (=> b!642927 (=> res!416553 e!368259)))

(assert (=> b!642927 (= res!416553 (or (not (= (select (arr!18399 a!2986) j!136) lt!297862)) (not (= (select (arr!18399 a!2986) j!136) lt!297854)) (bvsge j!136 index!984)))))

(declare-fun b!642928 () Bool)

(declare-fun Unit!21752 () Unit!21748)

(assert (=> b!642928 (= e!368247 Unit!21752)))

(declare-fun lt!297856 () Unit!21748)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38376 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21748)

(assert (=> b!642928 (= lt!297856 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297855 (select (arr!18399 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38376 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!642928 (arrayContainsKey!0 lt!297855 (select (arr!18399 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!297863 () Unit!21748)

(declare-datatypes ((List!12493 0))(
  ( (Nil!12490) (Cons!12489 (h!13534 (_ BitVec 64)) (t!18729 List!12493)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38376 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12493) Unit!21748)

(assert (=> b!642928 (= lt!297863 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12490))))

(declare-fun arrayNoDuplicates!0 (array!38376 (_ BitVec 32) List!12493) Bool)

(assert (=> b!642928 (arrayNoDuplicates!0 lt!297855 #b00000000000000000000000000000000 Nil!12490)))

(declare-fun lt!297859 () Unit!21748)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38376 (_ BitVec 32) (_ BitVec 32)) Unit!21748)

(assert (=> b!642928 (= lt!297859 (lemmaNoDuplicateFromThenFromBigger!0 lt!297855 #b00000000000000000000000000000000 j!136))))

(assert (=> b!642928 (arrayNoDuplicates!0 lt!297855 j!136 Nil!12490)))

(declare-fun lt!297853 () Unit!21748)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38376 (_ BitVec 64) (_ BitVec 32) List!12493) Unit!21748)

(assert (=> b!642928 (= lt!297853 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!297855 (select (arr!18399 a!2986) j!136) j!136 Nil!12490))))

(assert (=> b!642928 false))

(declare-fun b!642929 () Bool)

(declare-fun res!416538 () Bool)

(assert (=> b!642929 (=> (not res!416538) (not e!368252))))

(assert (=> b!642929 (= res!416538 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12490))))

(declare-fun b!642930 () Bool)

(declare-fun e!368249 () Bool)

(assert (=> b!642930 (= e!368249 (arrayContainsKey!0 lt!297855 (select (arr!18399 a!2986) j!136) index!984))))

(declare-fun b!642931 () Bool)

(assert (=> b!642931 (= e!368259 e!368249)))

(declare-fun res!416551 () Bool)

(assert (=> b!642931 (=> (not res!416551) (not e!368249))))

(assert (=> b!642931 (= res!416551 (arrayContainsKey!0 lt!297855 (select (arr!18399 a!2986) j!136) j!136))))

(declare-fun b!642932 () Bool)

(declare-fun res!416542 () Bool)

(assert (=> b!642932 (=> (not res!416542) (not e!368248))))

(assert (=> b!642932 (= res!416542 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!642933 () Bool)

(declare-fun Unit!21753 () Unit!21748)

(assert (=> b!642933 (= e!368247 Unit!21753)))

(declare-fun b!642934 () Bool)

(assert (=> b!642934 (= e!368248 e!368252)))

(declare-fun res!416555 () Bool)

(assert (=> b!642934 (=> (not res!416555) (not e!368252))))

(declare-fun lt!297867 () SeekEntryResult!6846)

(assert (=> b!642934 (= res!416555 (or (= lt!297867 (MissingZero!6846 i!1108)) (= lt!297867 (MissingVacant!6846 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38376 (_ BitVec 32)) SeekEntryResult!6846)

(assert (=> b!642934 (= lt!297867 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!642935 () Bool)

(assert (=> b!642935 (= e!368256 (arrayContainsKey!0 lt!297855 (select (arr!18399 a!2986) j!136) index!984))))

(assert (=> b!642935 (arrayContainsKey!0 lt!297855 (select (arr!18399 a!2986) j!136) j!136)))

(declare-fun b!642924 () Bool)

(assert (=> b!642924 (= e!368252 e!368260)))

(declare-fun res!416539 () Bool)

(assert (=> b!642924 (=> (not res!416539) (not e!368260))))

(assert (=> b!642924 (= res!416539 (= (select (store (arr!18399 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!642924 (= lt!297855 (array!38377 (store (arr!18399 a!2986) i!1108 k!1786) (size!18763 a!2986)))))

(declare-fun res!416541 () Bool)

(assert (=> start!58242 (=> (not res!416541) (not e!368248))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58242 (= res!416541 (validMask!0 mask!3053))))

(assert (=> start!58242 e!368248))

(assert (=> start!58242 true))

(declare-fun array_inv!14173 (array!38376) Bool)

(assert (=> start!58242 (array_inv!14173 a!2986)))

(assert (= (and start!58242 res!416541) b!642917))

(assert (= (and b!642917 res!416554) b!642922))

(assert (= (and b!642922 res!416544) b!642923))

(assert (= (and b!642923 res!416546) b!642932))

(assert (= (and b!642932 res!416542) b!642934))

(assert (= (and b!642934 res!416555) b!642915))

(assert (= (and b!642915 res!416550) b!642929))

(assert (= (and b!642929 res!416538) b!642920))

(assert (= (and b!642920 res!416552) b!642924))

(assert (= (and b!642924 res!416539) b!642916))

(assert (= (and b!642916 res!416547) b!642914))

(assert (= (and b!642914 res!416549) b!642926))

(assert (= (and b!642914 c!73555) b!642919))

(assert (= (and b!642914 (not c!73555)) b!642921))

(assert (= (and b!642914 (not res!416540)) b!642925))

(assert (= (and b!642925 res!416543) b!642927))

(assert (= (and b!642927 (not res!416553)) b!642931))

(assert (= (and b!642931 res!416551) b!642930))

(assert (= (and b!642925 (not res!416548)) b!642918))

(assert (= (and b!642918 c!73556) b!642928))

(assert (= (and b!642918 (not c!73556)) b!642933))

(assert (= (and b!642918 (not res!416545)) b!642935))

(declare-fun m!616731 () Bool)

(assert (=> b!642916 m!616731))

(declare-fun m!616733 () Bool)

(assert (=> b!642916 m!616733))

(assert (=> b!642916 m!616733))

(declare-fun m!616735 () Bool)

(assert (=> b!642916 m!616735))

(declare-fun m!616737 () Bool)

(assert (=> b!642929 m!616737))

(declare-fun m!616739 () Bool)

(assert (=> b!642914 m!616739))

(declare-fun m!616741 () Bool)

(assert (=> b!642914 m!616741))

(assert (=> b!642914 m!616733))

(declare-fun m!616743 () Bool)

(assert (=> b!642914 m!616743))

(assert (=> b!642914 m!616733))

(declare-fun m!616745 () Bool)

(assert (=> b!642914 m!616745))

(declare-fun m!616747 () Bool)

(assert (=> b!642914 m!616747))

(declare-fun m!616749 () Bool)

(assert (=> b!642914 m!616749))

(declare-fun m!616751 () Bool)

(assert (=> b!642914 m!616751))

(declare-fun m!616753 () Bool)

(assert (=> b!642915 m!616753))

(declare-fun m!616755 () Bool)

(assert (=> b!642920 m!616755))

(assert (=> b!642925 m!616733))

(assert (=> b!642925 m!616747))

(declare-fun m!616757 () Bool)

(assert (=> b!642925 m!616757))

(assert (=> b!642924 m!616747))

(declare-fun m!616759 () Bool)

(assert (=> b!642924 m!616759))

(declare-fun m!616761 () Bool)

(assert (=> b!642934 m!616761))

(declare-fun m!616763 () Bool)

(assert (=> b!642932 m!616763))

(assert (=> b!642931 m!616733))

(assert (=> b!642931 m!616733))

(declare-fun m!616765 () Bool)

(assert (=> b!642931 m!616765))

(assert (=> b!642935 m!616733))

(assert (=> b!642935 m!616733))

(declare-fun m!616767 () Bool)

(assert (=> b!642935 m!616767))

(assert (=> b!642935 m!616733))

(assert (=> b!642935 m!616765))

(assert (=> b!642927 m!616733))

(assert (=> b!642930 m!616733))

(assert (=> b!642930 m!616733))

(assert (=> b!642930 m!616767))

(declare-fun m!616769 () Bool)

(assert (=> start!58242 m!616769))

(declare-fun m!616771 () Bool)

(assert (=> start!58242 m!616771))

(assert (=> b!642922 m!616733))

(assert (=> b!642922 m!616733))

(declare-fun m!616773 () Bool)

(assert (=> b!642922 m!616773))

(declare-fun m!616775 () Bool)

(assert (=> b!642923 m!616775))

(declare-fun m!616777 () Bool)

(assert (=> b!642928 m!616777))

(assert (=> b!642928 m!616733))

(declare-fun m!616779 () Bool)

(assert (=> b!642928 m!616779))

(assert (=> b!642928 m!616733))

(assert (=> b!642928 m!616733))

(declare-fun m!616781 () Bool)

(assert (=> b!642928 m!616781))

(declare-fun m!616783 () Bool)

(assert (=> b!642928 m!616783))

(declare-fun m!616785 () Bool)

(assert (=> b!642928 m!616785))

(assert (=> b!642928 m!616733))

(declare-fun m!616787 () Bool)

(assert (=> b!642928 m!616787))

(declare-fun m!616789 () Bool)

(assert (=> b!642928 m!616789))

(push 1)

(assert (not b!642923))

(assert (not start!58242))

(assert (not b!642922))

(assert (not b!642934))

(assert (not b!642935))

(assert (not b!642929))

(assert (not b!642931))

(assert (not b!642928))

(assert (not b!642930))

(assert (not b!642914))

(assert (not b!642915))

(assert (not b!642916))

(assert (not b!642932))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!90811 () Bool)

(declare-fun res!416676 () Bool)

(declare-fun e!368372 () Bool)

(assert (=> d!90811 (=> res!416676 e!368372)))

(assert (=> d!90811 (= res!416676 (= (select (arr!18399 lt!297855) index!984) (select (arr!18399 a!2986) j!136)))))

(assert (=> d!90811 (= (arrayContainsKey!0 lt!297855 (select (arr!18399 a!2986) j!136) index!984) e!368372)))

(declare-fun b!643110 () Bool)

(declare-fun e!368373 () Bool)

(assert (=> b!643110 (= e!368372 e!368373)))

(declare-fun res!416677 () Bool)

(assert (=> b!643110 (=> (not res!416677) (not e!368373))))

(assert (=> b!643110 (= res!416677 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18763 lt!297855)))))

(declare-fun b!643111 () Bool)

(assert (=> b!643111 (= e!368373 (arrayContainsKey!0 lt!297855 (select (arr!18399 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!90811 (not res!416676)) b!643110))

(assert (= (and b!643110 res!416677) b!643111))

(declare-fun m!616925 () Bool)

(assert (=> d!90811 m!616925))

(assert (=> b!643111 m!616733))

(declare-fun m!616927 () Bool)

(assert (=> b!643111 m!616927))

(assert (=> b!642930 d!90811))

(declare-fun d!90813 () Bool)

(declare-fun res!416687 () Bool)

(declare-fun e!368394 () Bool)

(assert (=> d!90813 (=> res!416687 e!368394)))

(assert (=> d!90813 (= res!416687 (bvsge #b00000000000000000000000000000000 (size!18763 lt!297855)))))

(assert (=> d!90813 (= (arrayNoDuplicates!0 lt!297855 #b00000000000000000000000000000000 Nil!12490) e!368394)))

(declare-fun b!643140 () Bool)

(declare-fun e!368393 () Bool)

(declare-fun call!33584 () Bool)

(assert (=> b!643140 (= e!368393 call!33584)))

(declare-fun b!643141 () Bool)

(assert (=> b!643141 (= e!368393 call!33584)))

(declare-fun bm!33581 () Bool)

(declare-fun c!73594 () Bool)

(assert (=> bm!33581 (= call!33584 (arrayNoDuplicates!0 lt!297855 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73594 (Cons!12489 (select (arr!18399 lt!297855) #b00000000000000000000000000000000) Nil!12490) Nil!12490)))))

(declare-fun b!643142 () Bool)

(declare-fun e!368392 () Bool)

(declare-fun contains!3144 (List!12493 (_ BitVec 64)) Bool)

(assert (=> b!643142 (= e!368392 (contains!3144 Nil!12490 (select (arr!18399 lt!297855) #b00000000000000000000000000000000)))))

(declare-fun b!643143 () Bool)

(declare-fun e!368395 () Bool)

(assert (=> b!643143 (= e!368395 e!368393)))

(assert (=> b!643143 (= c!73594 (validKeyInArray!0 (select (arr!18399 lt!297855) #b00000000000000000000000000000000)))))

(declare-fun b!643144 () Bool)

(assert (=> b!643144 (= e!368394 e!368395)))

(declare-fun res!416686 () Bool)

(assert (=> b!643144 (=> (not res!416686) (not e!368395))))

(assert (=> b!643144 (= res!416686 (not e!368392))))

(declare-fun res!416688 () Bool)

(assert (=> b!643144 (=> (not res!416688) (not e!368392))))

(assert (=> b!643144 (= res!416688 (validKeyInArray!0 (select (arr!18399 lt!297855) #b00000000000000000000000000000000)))))

(assert (= (and d!90813 (not res!416687)) b!643144))

(assert (= (and b!643144 res!416688) b!643142))

(assert (= (and b!643144 res!416686) b!643143))

(assert (= (and b!643143 c!73594) b!643140))

(assert (= (and b!643143 (not c!73594)) b!643141))

(assert (= (or b!643140 b!643141) bm!33581))

(declare-fun m!616953 () Bool)

(assert (=> bm!33581 m!616953))

(declare-fun m!616955 () Bool)

(assert (=> bm!33581 m!616955))

(assert (=> b!643142 m!616953))

(assert (=> b!643142 m!616953))

(declare-fun m!616957 () Bool)

(assert (=> b!643142 m!616957))

(assert (=> b!643143 m!616953))

(assert (=> b!643143 m!616953))

(declare-fun m!616959 () Bool)

(assert (=> b!643143 m!616959))

(assert (=> b!643144 m!616953))

(assert (=> b!643144 m!616953))

(assert (=> b!643144 m!616959))

(assert (=> b!642928 d!90813))

(declare-fun d!90823 () Bool)

(assert (=> d!90823 (arrayNoDuplicates!0 lt!297855 j!136 Nil!12490)))

(declare-fun lt!297986 () Unit!21748)

(declare-fun choose!39 (array!38376 (_ BitVec 32) (_ BitVec 32)) Unit!21748)

(assert (=> d!90823 (= lt!297986 (choose!39 lt!297855 #b00000000000000000000000000000000 j!136))))

(assert (=> d!90823 (bvslt (size!18763 lt!297855) #b01111111111111111111111111111111)))

(assert (=> d!90823 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!297855 #b00000000000000000000000000000000 j!136) lt!297986)))

(declare-fun bs!19238 () Bool)

(assert (= bs!19238 d!90823))

(assert (=> bs!19238 m!616783))

(declare-fun m!616969 () Bool)

(assert (=> bs!19238 m!616969))

(assert (=> b!642928 d!90823))

(declare-fun d!90825 () Bool)

(declare-fun res!416694 () Bool)

(declare-fun e!368403 () Bool)

(assert (=> d!90825 (=> res!416694 e!368403)))

(assert (=> d!90825 (= res!416694 (bvsge j!136 (size!18763 lt!297855)))))

(assert (=> d!90825 (= (arrayNoDuplicates!0 lt!297855 j!136 Nil!12490) e!368403)))

(declare-fun b!643151 () Bool)

(declare-fun e!368402 () Bool)

(declare-fun call!33588 () Bool)

(assert (=> b!643151 (= e!368402 call!33588)))

(declare-fun b!643152 () Bool)

(assert (=> b!643152 (= e!368402 call!33588)))

(declare-fun bm!33585 () Bool)

(declare-fun c!73596 () Bool)

(assert (=> bm!33585 (= call!33588 (arrayNoDuplicates!0 lt!297855 (bvadd j!136 #b00000000000000000000000000000001) (ite c!73596 (Cons!12489 (select (arr!18399 lt!297855) j!136) Nil!12490) Nil!12490)))))

(declare-fun b!643153 () Bool)

(declare-fun e!368401 () Bool)

(assert (=> b!643153 (= e!368401 (contains!3144 Nil!12490 (select (arr!18399 lt!297855) j!136)))))

(declare-fun b!643154 () Bool)

(declare-fun e!368404 () Bool)

(assert (=> b!643154 (= e!368404 e!368402)))

(assert (=> b!643154 (= c!73596 (validKeyInArray!0 (select (arr!18399 lt!297855) j!136)))))

(declare-fun b!643155 () Bool)

(assert (=> b!643155 (= e!368403 e!368404)))

(declare-fun res!416693 () Bool)

(assert (=> b!643155 (=> (not res!416693) (not e!368404))))

(assert (=> b!643155 (= res!416693 (not e!368401))))

(declare-fun res!416695 () Bool)

(assert (=> b!643155 (=> (not res!416695) (not e!368401))))

(assert (=> b!643155 (= res!416695 (validKeyInArray!0 (select (arr!18399 lt!297855) j!136)))))

(assert (= (and d!90825 (not res!416694)) b!643155))

(assert (= (and b!643155 res!416695) b!643153))

(assert (= (and b!643155 res!416693) b!643154))

(assert (= (and b!643154 c!73596) b!643151))

(assert (= (and b!643154 (not c!73596)) b!643152))

(assert (= (or b!643151 b!643152) bm!33585))

(declare-fun m!616975 () Bool)

(assert (=> bm!33585 m!616975))

(declare-fun m!616977 () Bool)

(assert (=> bm!33585 m!616977))

(assert (=> b!643153 m!616975))

(assert (=> b!643153 m!616975))

(declare-fun m!616979 () Bool)

(assert (=> b!643153 m!616979))

(assert (=> b!643154 m!616975))

(assert (=> b!643154 m!616975))

(declare-fun m!616981 () Bool)

(assert (=> b!643154 m!616981))

(assert (=> b!643155 m!616975))

(assert (=> b!643155 m!616975))

(assert (=> b!643155 m!616981))

(assert (=> b!642928 d!90825))

(declare-fun d!90829 () Bool)

(assert (=> d!90829 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18763 lt!297855)) (not (= (select (arr!18399 lt!297855) j!136) (select (arr!18399 a!2986) j!136))))))

(declare-fun lt!297989 () Unit!21748)

(declare-fun choose!21 (array!38376 (_ BitVec 64) (_ BitVec 32) List!12493) Unit!21748)

(assert (=> d!90829 (= lt!297989 (choose!21 lt!297855 (select (arr!18399 a!2986) j!136) j!136 Nil!12490))))

(assert (=> d!90829 (bvslt (size!18763 lt!297855) #b01111111111111111111111111111111)))

(assert (=> d!90829 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!297855 (select (arr!18399 a!2986) j!136) j!136 Nil!12490) lt!297989)))

(declare-fun bs!19239 () Bool)

(assert (= bs!19239 d!90829))

(assert (=> bs!19239 m!616975))

(assert (=> bs!19239 m!616733))

(declare-fun m!616993 () Bool)

(assert (=> bs!19239 m!616993))

(assert (=> b!642928 d!90829))

(declare-fun d!90837 () Bool)

(declare-fun e!368420 () Bool)

(assert (=> d!90837 e!368420))

(declare-fun res!416711 () Bool)

(assert (=> d!90837 (=> (not res!416711) (not e!368420))))

(assert (=> d!90837 (= res!416711 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18763 a!2986))))))

(declare-fun lt!297995 () Unit!21748)

(declare-fun choose!41 (array!38376 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12493) Unit!21748)

(assert (=> d!90837 (= lt!297995 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12490))))

(assert (=> d!90837 (bvslt (size!18763 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!90837 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12490) lt!297995)))

(declare-fun b!643171 () Bool)

(assert (=> b!643171 (= e!368420 (arrayNoDuplicates!0 (array!38377 (store (arr!18399 a!2986) i!1108 k!1786) (size!18763 a!2986)) #b00000000000000000000000000000000 Nil!12490))))

(assert (= (and d!90837 res!416711) b!643171))

(declare-fun m!616999 () Bool)

(assert (=> d!90837 m!616999))

(assert (=> b!643171 m!616747))

(declare-fun m!617001 () Bool)

(assert (=> b!643171 m!617001))

(assert (=> b!642928 d!90837))

(declare-fun d!90843 () Bool)

(declare-fun res!416712 () Bool)

(declare-fun e!368421 () Bool)

(assert (=> d!90843 (=> res!416712 e!368421)))

(assert (=> d!90843 (= res!416712 (= (select (arr!18399 lt!297855) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18399 a!2986) j!136)))))

(assert (=> d!90843 (= (arrayContainsKey!0 lt!297855 (select (arr!18399 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!368421)))

(declare-fun b!643172 () Bool)

(declare-fun e!368422 () Bool)

(assert (=> b!643172 (= e!368421 e!368422)))

(declare-fun res!416713 () Bool)

(assert (=> b!643172 (=> (not res!416713) (not e!368422))))

(assert (=> b!643172 (= res!416713 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18763 lt!297855)))))

(declare-fun b!643173 () Bool)

(assert (=> b!643173 (= e!368422 (arrayContainsKey!0 lt!297855 (select (arr!18399 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90843 (not res!416712)) b!643172))

(assert (= (and b!643172 res!416713) b!643173))

(declare-fun m!617003 () Bool)

(assert (=> d!90843 m!617003))

(assert (=> b!643173 m!616733))

(declare-fun m!617005 () Bool)

(assert (=> b!643173 m!617005))

(assert (=> b!642928 d!90843))

(declare-fun d!90845 () Bool)

(assert (=> d!90845 (arrayContainsKey!0 lt!297855 (select (arr!18399 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298005 () Unit!21748)

(declare-fun choose!114 (array!38376 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21748)

(assert (=> d!90845 (= lt!298005 (choose!114 lt!297855 (select (arr!18399 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!90845 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!90845 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297855 (select (arr!18399 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!298005)))

(declare-fun bs!19241 () Bool)

(assert (= bs!19241 d!90845))

(assert (=> bs!19241 m!616733))

(assert (=> bs!19241 m!616779))

(assert (=> bs!19241 m!616733))

(declare-fun m!617025 () Bool)

(assert (=> bs!19241 m!617025))

(assert (=> b!642928 d!90845))

(declare-fun d!90853 () Bool)

(declare-fun res!416717 () Bool)

(declare-fun e!368433 () Bool)

(assert (=> d!90853 (=> res!416717 e!368433)))

(assert (=> d!90853 (= res!416717 (bvsge #b00000000000000000000000000000000 (size!18763 a!2986)))))

(assert (=> d!90853 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12490) e!368433)))

(declare-fun b!643188 () Bool)

(declare-fun e!368432 () Bool)

(declare-fun call!33589 () Bool)

(assert (=> b!643188 (= e!368432 call!33589)))

(declare-fun b!643189 () Bool)

(assert (=> b!643189 (= e!368432 call!33589)))

(declare-fun bm!33586 () Bool)

(declare-fun c!73603 () Bool)

(assert (=> bm!33586 (= call!33589 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73603 (Cons!12489 (select (arr!18399 a!2986) #b00000000000000000000000000000000) Nil!12490) Nil!12490)))))

(declare-fun b!643190 () Bool)

(declare-fun e!368431 () Bool)

(assert (=> b!643190 (= e!368431 (contains!3144 Nil!12490 (select (arr!18399 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!643191 () Bool)

(declare-fun e!368434 () Bool)

(assert (=> b!643191 (= e!368434 e!368432)))

(assert (=> b!643191 (= c!73603 (validKeyInArray!0 (select (arr!18399 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!643192 () Bool)

(assert (=> b!643192 (= e!368433 e!368434)))

(declare-fun res!416716 () Bool)

(assert (=> b!643192 (=> (not res!416716) (not e!368434))))

(assert (=> b!643192 (= res!416716 (not e!368431))))

(declare-fun res!416718 () Bool)

(assert (=> b!643192 (=> (not res!416718) (not e!368431))))

(assert (=> b!643192 (= res!416718 (validKeyInArray!0 (select (arr!18399 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!90853 (not res!416717)) b!643192))

(assert (= (and b!643192 res!416718) b!643190))

(assert (= (and b!643192 res!416716) b!643191))

(assert (= (and b!643191 c!73603) b!643188))

(assert (= (and b!643191 (not c!73603)) b!643189))

(assert (= (or b!643188 b!643189) bm!33586))

(declare-fun m!617031 () Bool)

(assert (=> bm!33586 m!617031))

(declare-fun m!617035 () Bool)

(assert (=> bm!33586 m!617035))

(assert (=> b!643190 m!617031))

(assert (=> b!643190 m!617031))

(declare-fun m!617037 () Bool)

(assert (=> b!643190 m!617037))

(assert (=> b!643191 m!617031))

(assert (=> b!643191 m!617031))

(declare-fun m!617039 () Bool)

(assert (=> b!643191 m!617039))

(assert (=> b!643192 m!617031))

(assert (=> b!643192 m!617031))

(assert (=> b!643192 m!617039))

(assert (=> b!642929 d!90853))

(declare-fun b!643245 () Bool)

(declare-fun e!368469 () SeekEntryResult!6846)

(assert (=> b!643245 (= e!368469 Undefined!6846)))

(declare-fun b!643246 () Bool)

(declare-fun c!73623 () Bool)

(declare-fun lt!298028 () (_ BitVec 64))

(assert (=> b!643246 (= c!73623 (= lt!298028 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!368470 () SeekEntryResult!6846)

(declare-fun e!368468 () SeekEntryResult!6846)

(assert (=> b!643246 (= e!368470 e!368468)))

(declare-fun b!643248 () Bool)

(assert (=> b!643248 (= e!368468 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18399 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!643249 () Bool)

(assert (=> b!643249 (= e!368469 e!368470)))

(declare-fun c!73624 () Bool)

(assert (=> b!643249 (= c!73624 (= lt!298028 (select (arr!18399 a!2986) j!136)))))

(declare-fun b!643250 () Bool)

(assert (=> b!643250 (= e!368470 (Found!6846 index!984))))

(declare-fun d!90859 () Bool)

(declare-fun lt!298027 () SeekEntryResult!6846)

(assert (=> d!90859 (and (or (is-Undefined!6846 lt!298027) (not (is-Found!6846 lt!298027)) (and (bvsge (index!29713 lt!298027) #b00000000000000000000000000000000) (bvslt (index!29713 lt!298027) (size!18763 a!2986)))) (or (is-Undefined!6846 lt!298027) (is-Found!6846 lt!298027) (not (is-MissingVacant!6846 lt!298027)) (not (= (index!29715 lt!298027) vacantSpotIndex!68)) (and (bvsge (index!29715 lt!298027) #b00000000000000000000000000000000) (bvslt (index!29715 lt!298027) (size!18763 a!2986)))) (or (is-Undefined!6846 lt!298027) (ite (is-Found!6846 lt!298027) (= (select (arr!18399 a!2986) (index!29713 lt!298027)) (select (arr!18399 a!2986) j!136)) (and (is-MissingVacant!6846 lt!298027) (= (index!29715 lt!298027) vacantSpotIndex!68) (= (select (arr!18399 a!2986) (index!29715 lt!298027)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90859 (= lt!298027 e!368469)))

(declare-fun c!73625 () Bool)

(assert (=> d!90859 (= c!73625 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90859 (= lt!298028 (select (arr!18399 a!2986) index!984))))

(assert (=> d!90859 (validMask!0 mask!3053)))

(assert (=> d!90859 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18399 a!2986) j!136) a!2986 mask!3053) lt!298027)))

(declare-fun b!643247 () Bool)

(assert (=> b!643247 (= e!368468 (MissingVacant!6846 vacantSpotIndex!68))))

(assert (= (and d!90859 c!73625) b!643245))

(assert (= (and d!90859 (not c!73625)) b!643249))

(assert (= (and b!643249 c!73624) b!643250))

(assert (= (and b!643249 (not c!73624)) b!643246))

(assert (= (and b!643246 c!73623) b!643247))

(assert (= (and b!643246 (not c!73623)) b!643248))

(assert (=> b!643248 m!616739))

(assert (=> b!643248 m!616739))

(assert (=> b!643248 m!616733))

(declare-fun m!617073 () Bool)

(assert (=> b!643248 m!617073))

(declare-fun m!617075 () Bool)

(assert (=> d!90859 m!617075))

(declare-fun m!617079 () Bool)

(assert (=> d!90859 m!617079))

(assert (=> d!90859 m!616731))

(assert (=> d!90859 m!616769))

(assert (=> b!642916 d!90859))

(declare-fun bm!33593 () Bool)

(declare-fun call!33596 () Bool)

(assert (=> bm!33593 (= call!33596 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!643262 () Bool)

(declare-fun e!368480 () Bool)

(assert (=> b!643262 (= e!368480 call!33596)))

(declare-fun d!90873 () Bool)

(declare-fun res!416741 () Bool)

(declare-fun e!368481 () Bool)

(assert (=> d!90873 (=> res!416741 e!368481)))

(assert (=> d!90873 (= res!416741 (bvsge #b00000000000000000000000000000000 (size!18763 a!2986)))))

(assert (=> d!90873 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!368481)))

(declare-fun b!643263 () Bool)

(declare-fun e!368482 () Bool)

(assert (=> b!643263 (= e!368480 e!368482)))

(declare-fun lt!298039 () (_ BitVec 64))

(assert (=> b!643263 (= lt!298039 (select (arr!18399 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!298040 () Unit!21748)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38376 (_ BitVec 64) (_ BitVec 32)) Unit!21748)

(assert (=> b!643263 (= lt!298040 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!298039 #b00000000000000000000000000000000))))

(assert (=> b!643263 (arrayContainsKey!0 a!2986 lt!298039 #b00000000000000000000000000000000)))

(declare-fun lt!298041 () Unit!21748)

(assert (=> b!643263 (= lt!298041 lt!298040)))

(declare-fun res!416740 () Bool)

(assert (=> b!643263 (= res!416740 (= (seekEntryOrOpen!0 (select (arr!18399 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6846 #b00000000000000000000000000000000)))))

(assert (=> b!643263 (=> (not res!416740) (not e!368482))))

(declare-fun b!643264 () Bool)

(assert (=> b!643264 (= e!368482 call!33596)))

(declare-fun b!643265 () Bool)

(assert (=> b!643265 (= e!368481 e!368480)))

(declare-fun c!73628 () Bool)

(assert (=> b!643265 (= c!73628 (validKeyInArray!0 (select (arr!18399 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!90873 (not res!416741)) b!643265))

(assert (= (and b!643265 c!73628) b!643263))

(assert (= (and b!643265 (not c!73628)) b!643262))

(assert (= (and b!643263 res!416740) b!643264))

(assert (= (or b!643264 b!643262) bm!33593))

(declare-fun m!617085 () Bool)

(assert (=> bm!33593 m!617085))

(assert (=> b!643263 m!617031))

(declare-fun m!617087 () Bool)

(assert (=> b!643263 m!617087))

(declare-fun m!617089 () Bool)

(assert (=> b!643263 m!617089))

(assert (=> b!643263 m!617031))

(declare-fun m!617091 () Bool)

(assert (=> b!643263 m!617091))

(assert (=> b!643265 m!617031))

(assert (=> b!643265 m!617031))

(assert (=> b!643265 m!617039))

(assert (=> b!642915 d!90873))

(assert (=> b!642935 d!90811))

(declare-fun d!90881 () Bool)

(declare-fun res!416742 () Bool)

(declare-fun e!368483 () Bool)

(assert (=> d!90881 (=> res!416742 e!368483)))

(assert (=> d!90881 (= res!416742 (= (select (arr!18399 lt!297855) j!136) (select (arr!18399 a!2986) j!136)))))

(assert (=> d!90881 (= (arrayContainsKey!0 lt!297855 (select (arr!18399 a!2986) j!136) j!136) e!368483)))

(declare-fun b!643266 () Bool)

(declare-fun e!368484 () Bool)

(assert (=> b!643266 (= e!368483 e!368484)))

(declare-fun res!416743 () Bool)

(assert (=> b!643266 (=> (not res!416743) (not e!368484))))

(assert (=> b!643266 (= res!416743 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18763 lt!297855)))))

(declare-fun b!643267 () Bool)

(assert (=> b!643267 (= e!368484 (arrayContainsKey!0 lt!297855 (select (arr!18399 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90881 (not res!416742)) b!643266))

(assert (= (and b!643266 res!416743) b!643267))

(assert (=> d!90881 m!616975))

(assert (=> b!643267 m!616733))

(declare-fun m!617093 () Bool)

(assert (=> b!643267 m!617093))

(assert (=> b!642935 d!90881))

(declare-fun b!643268 () Bool)

(declare-fun e!368486 () SeekEntryResult!6846)

(assert (=> b!643268 (= e!368486 Undefined!6846)))

(declare-fun b!643269 () Bool)

(declare-fun c!73629 () Bool)

(declare-fun lt!298043 () (_ BitVec 64))

(assert (=> b!643269 (= c!73629 (= lt!298043 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!368487 () SeekEntryResult!6846)

(declare-fun e!368485 () SeekEntryResult!6846)

(assert (=> b!643269 (= e!368487 e!368485)))

(declare-fun b!643271 () Bool)

(assert (=> b!643271 (= e!368485 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!297857 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!297862 lt!297855 mask!3053))))

(declare-fun b!643272 () Bool)

(assert (=> b!643272 (= e!368486 e!368487)))

(declare-fun c!73630 () Bool)

(assert (=> b!643272 (= c!73630 (= lt!298043 lt!297862))))

(declare-fun b!643273 () Bool)

(assert (=> b!643273 (= e!368487 (Found!6846 lt!297857))))

(declare-fun lt!298042 () SeekEntryResult!6846)

(declare-fun d!90883 () Bool)

(assert (=> d!90883 (and (or (is-Undefined!6846 lt!298042) (not (is-Found!6846 lt!298042)) (and (bvsge (index!29713 lt!298042) #b00000000000000000000000000000000) (bvslt (index!29713 lt!298042) (size!18763 lt!297855)))) (or (is-Undefined!6846 lt!298042) (is-Found!6846 lt!298042) (not (is-MissingVacant!6846 lt!298042)) (not (= (index!29715 lt!298042) vacantSpotIndex!68)) (and (bvsge (index!29715 lt!298042) #b00000000000000000000000000000000) (bvslt (index!29715 lt!298042) (size!18763 lt!297855)))) (or (is-Undefined!6846 lt!298042) (ite (is-Found!6846 lt!298042) (= (select (arr!18399 lt!297855) (index!29713 lt!298042)) lt!297862) (and (is-MissingVacant!6846 lt!298042) (= (index!29715 lt!298042) vacantSpotIndex!68) (= (select (arr!18399 lt!297855) (index!29715 lt!298042)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90883 (= lt!298042 e!368486)))

(declare-fun c!73631 () Bool)

(assert (=> d!90883 (= c!73631 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90883 (= lt!298043 (select (arr!18399 lt!297855) lt!297857))))

(assert (=> d!90883 (validMask!0 mask!3053)))

(assert (=> d!90883 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297857 vacantSpotIndex!68 lt!297862 lt!297855 mask!3053) lt!298042)))

(declare-fun b!643270 () Bool)

(assert (=> b!643270 (= e!368485 (MissingVacant!6846 vacantSpotIndex!68))))

(assert (= (and d!90883 c!73631) b!643268))

(assert (= (and d!90883 (not c!73631)) b!643272))

(assert (= (and b!643272 c!73630) b!643273))

(assert (= (and b!643272 (not c!73630)) b!643269))

(assert (= (and b!643269 c!73629) b!643270))

(assert (= (and b!643269 (not c!73629)) b!643271))

(declare-fun m!617095 () Bool)

(assert (=> b!643271 m!617095))

(assert (=> b!643271 m!617095))

(declare-fun m!617097 () Bool)

(assert (=> b!643271 m!617097))

(declare-fun m!617099 () Bool)

(assert (=> d!90883 m!617099))

(declare-fun m!617101 () Bool)

(assert (=> d!90883 m!617101))

(declare-fun m!617103 () Bool)

(assert (=> d!90883 m!617103))

(assert (=> d!90883 m!616769))

(assert (=> b!642914 d!90883))

(declare-fun b!643292 () Bool)

(declare-fun e!368503 () SeekEntryResult!6846)

(assert (=> b!643292 (= e!368503 Undefined!6846)))

(declare-fun b!643293 () Bool)

(declare-fun c!73635 () Bool)

(declare-fun lt!298051 () (_ BitVec 64))

(assert (=> b!643293 (= c!73635 (= lt!298051 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!368504 () SeekEntryResult!6846)

(declare-fun e!368501 () SeekEntryResult!6846)

(assert (=> b!643293 (= e!368504 e!368501)))

(declare-fun b!643295 () Bool)

(assert (=> b!643295 (= e!368501 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!297857 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18399 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!643296 () Bool)

(assert (=> b!643296 (= e!368503 e!368504)))

(declare-fun c!73636 () Bool)

(assert (=> b!643296 (= c!73636 (= lt!298051 (select (arr!18399 a!2986) j!136)))))

(declare-fun b!643297 () Bool)

(assert (=> b!643297 (= e!368504 (Found!6846 lt!297857))))

(declare-fun lt!298050 () SeekEntryResult!6846)

(declare-fun d!90885 () Bool)

(assert (=> d!90885 (and (or (is-Undefined!6846 lt!298050) (not (is-Found!6846 lt!298050)) (and (bvsge (index!29713 lt!298050) #b00000000000000000000000000000000) (bvslt (index!29713 lt!298050) (size!18763 a!2986)))) (or (is-Undefined!6846 lt!298050) (is-Found!6846 lt!298050) (not (is-MissingVacant!6846 lt!298050)) (not (= (index!29715 lt!298050) vacantSpotIndex!68)) (and (bvsge (index!29715 lt!298050) #b00000000000000000000000000000000) (bvslt (index!29715 lt!298050) (size!18763 a!2986)))) (or (is-Undefined!6846 lt!298050) (ite (is-Found!6846 lt!298050) (= (select (arr!18399 a!2986) (index!29713 lt!298050)) (select (arr!18399 a!2986) j!136)) (and (is-MissingVacant!6846 lt!298050) (= (index!29715 lt!298050) vacantSpotIndex!68) (= (select (arr!18399 a!2986) (index!29715 lt!298050)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90885 (= lt!298050 e!368503)))

(declare-fun c!73638 () Bool)

(assert (=> d!90885 (= c!73638 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90885 (= lt!298051 (select (arr!18399 a!2986) lt!297857))))

(assert (=> d!90885 (validMask!0 mask!3053)))

(assert (=> d!90885 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297857 vacantSpotIndex!68 (select (arr!18399 a!2986) j!136) a!2986 mask!3053) lt!298050)))

(declare-fun b!643294 () Bool)

(assert (=> b!643294 (= e!368501 (MissingVacant!6846 vacantSpotIndex!68))))

(assert (= (and d!90885 c!73638) b!643292))

(assert (= (and d!90885 (not c!73638)) b!643296))

(assert (= (and b!643296 c!73636) b!643297))

(assert (= (and b!643296 (not c!73636)) b!643293))

(assert (= (and b!643293 c!73635) b!643294))

(assert (= (and b!643293 (not c!73635)) b!643295))

(assert (=> b!643295 m!617095))

(assert (=> b!643295 m!617095))

(assert (=> b!643295 m!616733))

(declare-fun m!617105 () Bool)

(assert (=> b!643295 m!617105))

(declare-fun m!617107 () Bool)

(assert (=> d!90885 m!617107))

(declare-fun m!617109 () Bool)

(assert (=> d!90885 m!617109))

(declare-fun m!617111 () Bool)

(assert (=> d!90885 m!617111))

(assert (=> d!90885 m!616769))

(assert (=> b!642914 d!90885))

(declare-fun d!90887 () Bool)

(declare-fun lt!298057 () (_ BitVec 32))

(assert (=> d!90887 (and (bvsge lt!298057 #b00000000000000000000000000000000) (bvslt lt!298057 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90887 (= lt!298057 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!90887 (validMask!0 mask!3053)))

(assert (=> d!90887 (= (nextIndex!0 index!984 x!910 mask!3053) lt!298057)))

(declare-fun bs!19245 () Bool)

(assert (= bs!19245 d!90887))

(declare-fun m!617123 () Bool)

(assert (=> bs!19245 m!617123))

(assert (=> bs!19245 m!616769))

(assert (=> b!642914 d!90887))

(declare-fun d!90891 () Bool)

(declare-fun e!368524 () Bool)

(assert (=> d!90891 e!368524))

(declare-fun res!416764 () Bool)

(assert (=> d!90891 (=> (not res!416764) (not e!368524))))

