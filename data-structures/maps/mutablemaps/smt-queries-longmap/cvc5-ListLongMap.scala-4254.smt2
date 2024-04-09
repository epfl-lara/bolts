; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59010 () Bool)

(assert start!59010)

(declare-fun b!650761 () Bool)

(declare-fun res!422031 () Bool)

(declare-fun e!373395 () Bool)

(assert (=> b!650761 (=> (not res!422031) (not e!373395))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38547 0))(
  ( (array!38548 (arr!18474 (Array (_ BitVec 32) (_ BitVec 64))) (size!18838 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38547)

(assert (=> b!650761 (= res!422031 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18474 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!650762 () Bool)

(declare-fun e!373390 () Bool)

(declare-fun e!373397 () Bool)

(assert (=> b!650762 (= e!373390 e!373397)))

(declare-fun res!422028 () Bool)

(assert (=> b!650762 (=> res!422028 e!373397)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!302543 () (_ BitVec 64))

(declare-fun lt!302534 () (_ BitVec 64))

(assert (=> b!650762 (= res!422028 (or (not (= (select (arr!18474 a!2986) j!136) lt!302543)) (not (= (select (arr!18474 a!2986) j!136) lt!302534)) (bvsge j!136 index!984)))))

(declare-fun b!650763 () Bool)

(declare-datatypes ((Unit!22198 0))(
  ( (Unit!22199) )
))
(declare-fun e!373396 () Unit!22198)

(declare-fun Unit!22200 () Unit!22198)

(assert (=> b!650763 (= e!373396 Unit!22200)))

(declare-fun b!650764 () Bool)

(declare-fun res!422025 () Bool)

(assert (=> b!650764 (=> (not res!422025) (not e!373395))))

(declare-datatypes ((List!12568 0))(
  ( (Nil!12565) (Cons!12564 (h!13609 (_ BitVec 64)) (t!18804 List!12568)) )
))
(declare-fun arrayNoDuplicates!0 (array!38547 (_ BitVec 32) List!12568) Bool)

(assert (=> b!650764 (= res!422025 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12565))))

(declare-fun b!650766 () Bool)

(declare-fun e!373402 () Bool)

(assert (=> b!650766 (= e!373402 e!373395)))

(declare-fun res!422032 () Bool)

(assert (=> b!650766 (=> (not res!422032) (not e!373395))))

(declare-datatypes ((SeekEntryResult!6921 0))(
  ( (MissingZero!6921 (index!30033 (_ BitVec 32))) (Found!6921 (index!30034 (_ BitVec 32))) (Intermediate!6921 (undefined!7733 Bool) (index!30035 (_ BitVec 32)) (x!58848 (_ BitVec 32))) (Undefined!6921) (MissingVacant!6921 (index!30036 (_ BitVec 32))) )
))
(declare-fun lt!302548 () SeekEntryResult!6921)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!650766 (= res!422032 (or (= lt!302548 (MissingZero!6921 i!1108)) (= lt!302548 (MissingVacant!6921 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38547 (_ BitVec 32)) SeekEntryResult!6921)

(assert (=> b!650766 (= lt!302548 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!650767 () Bool)

(declare-fun e!373393 () Bool)

(declare-fun e!373392 () Bool)

(assert (=> b!650767 (= e!373393 (not e!373392))))

(declare-fun res!422017 () Bool)

(assert (=> b!650767 (=> res!422017 e!373392)))

(declare-fun lt!302537 () SeekEntryResult!6921)

(assert (=> b!650767 (= res!422017 (not (= lt!302537 (Found!6921 index!984))))))

(declare-fun lt!302545 () Unit!22198)

(declare-fun e!373394 () Unit!22198)

(assert (=> b!650767 (= lt!302545 e!373394)))

(declare-fun c!74741 () Bool)

(assert (=> b!650767 (= c!74741 (= lt!302537 Undefined!6921))))

(declare-fun lt!302539 () array!38547)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38547 (_ BitVec 32)) SeekEntryResult!6921)

(assert (=> b!650767 (= lt!302537 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!302543 lt!302539 mask!3053))))

(declare-fun e!373398 () Bool)

(assert (=> b!650767 e!373398))

(declare-fun res!422023 () Bool)

(assert (=> b!650767 (=> (not res!422023) (not e!373398))))

(declare-fun lt!302538 () (_ BitVec 32))

(declare-fun lt!302549 () SeekEntryResult!6921)

(assert (=> b!650767 (= res!422023 (= lt!302549 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302538 vacantSpotIndex!68 lt!302543 lt!302539 mask!3053)))))

(assert (=> b!650767 (= lt!302549 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302538 vacantSpotIndex!68 (select (arr!18474 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!650767 (= lt!302543 (select (store (arr!18474 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!302535 () Unit!22198)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38547 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22198)

(assert (=> b!650767 (= lt!302535 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302538 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!650767 (= lt!302538 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!650768 () Bool)

(declare-fun res!422024 () Bool)

(assert (=> b!650768 (=> (not res!422024) (not e!373402))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!650768 (= res!422024 (validKeyInArray!0 (select (arr!18474 a!2986) j!136)))))

(declare-fun e!373391 () Bool)

(declare-fun b!650769 () Bool)

(declare-fun arrayContainsKey!0 (array!38547 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!650769 (= e!373391 (arrayContainsKey!0 lt!302539 (select (arr!18474 a!2986) j!136) index!984))))

(declare-fun b!650770 () Bool)

(declare-fun Unit!22201 () Unit!22198)

(assert (=> b!650770 (= e!373394 Unit!22201)))

(declare-fun b!650771 () Bool)

(declare-fun Unit!22202 () Unit!22198)

(assert (=> b!650771 (= e!373394 Unit!22202)))

(assert (=> b!650771 false))

(declare-fun b!650772 () Bool)

(declare-fun res!422026 () Bool)

(assert (=> b!650772 (=> (not res!422026) (not e!373402))))

(assert (=> b!650772 (= res!422026 (validKeyInArray!0 k!1786))))

(declare-fun b!650773 () Bool)

(declare-fun e!373400 () Bool)

(assert (=> b!650773 (= e!373400 (arrayContainsKey!0 lt!302539 (select (arr!18474 a!2986) j!136) index!984))))

(declare-fun b!650774 () Bool)

(declare-fun e!373401 () Bool)

(assert (=> b!650774 (= e!373401 e!373393)))

(declare-fun res!422029 () Bool)

(assert (=> b!650774 (=> (not res!422029) (not e!373393))))

(declare-fun lt!302544 () SeekEntryResult!6921)

(assert (=> b!650774 (= res!422029 (and (= lt!302544 (Found!6921 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18474 a!2986) index!984) (select (arr!18474 a!2986) j!136))) (not (= (select (arr!18474 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!650774 (= lt!302544 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18474 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!650775 () Bool)

(assert (=> b!650775 (= e!373397 e!373400)))

(declare-fun res!422022 () Bool)

(assert (=> b!650775 (=> (not res!422022) (not e!373400))))

(assert (=> b!650775 (= res!422022 (arrayContainsKey!0 lt!302539 (select (arr!18474 a!2986) j!136) j!136))))

(declare-fun b!650776 () Bool)

(declare-fun res!422021 () Bool)

(assert (=> b!650776 (=> (not res!422021) (not e!373402))))

(assert (=> b!650776 (= res!422021 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!650765 () Bool)

(assert (=> b!650765 (= e!373398 (= lt!302544 lt!302549))))

(declare-fun res!422020 () Bool)

(assert (=> start!59010 (=> (not res!422020) (not e!373402))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59010 (= res!422020 (validMask!0 mask!3053))))

(assert (=> start!59010 e!373402))

(assert (=> start!59010 true))

(declare-fun array_inv!14248 (array!38547) Bool)

(assert (=> start!59010 (array_inv!14248 a!2986)))

(declare-fun b!650777 () Bool)

(declare-fun e!373399 () Bool)

(assert (=> b!650777 (= e!373392 e!373399)))

(declare-fun res!422016 () Bool)

(assert (=> b!650777 (=> res!422016 e!373399)))

(assert (=> b!650777 (= res!422016 (or (not (= (select (arr!18474 a!2986) j!136) lt!302543)) (not (= (select (arr!18474 a!2986) j!136) lt!302534))))))

(assert (=> b!650777 e!373390))

(declare-fun res!422019 () Bool)

(assert (=> b!650777 (=> (not res!422019) (not e!373390))))

(assert (=> b!650777 (= res!422019 (= lt!302534 (select (arr!18474 a!2986) j!136)))))

(assert (=> b!650777 (= lt!302534 (select (store (arr!18474 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!650778 () Bool)

(declare-fun res!422033 () Bool)

(assert (=> b!650778 (=> (not res!422033) (not e!373402))))

(assert (=> b!650778 (= res!422033 (and (= (size!18838 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18838 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18838 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!650779 () Bool)

(declare-fun e!373388 () Bool)

(assert (=> b!650779 (= e!373388 true)))

(assert (=> b!650779 (arrayNoDuplicates!0 lt!302539 #b00000000000000000000000000000000 Nil!12565)))

(declare-fun lt!302546 () Unit!22198)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38547 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12568) Unit!22198)

(assert (=> b!650779 (= lt!302546 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12565))))

(assert (=> b!650779 (arrayContainsKey!0 lt!302539 (select (arr!18474 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!302536 () Unit!22198)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38547 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22198)

(assert (=> b!650779 (= lt!302536 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302539 (select (arr!18474 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!650779 e!373391))

(declare-fun res!422015 () Bool)

(assert (=> b!650779 (=> (not res!422015) (not e!373391))))

(assert (=> b!650779 (= res!422015 (arrayContainsKey!0 lt!302539 (select (arr!18474 a!2986) j!136) j!136))))

(declare-fun b!650780 () Bool)

(assert (=> b!650780 (= e!373395 e!373401)))

(declare-fun res!422018 () Bool)

(assert (=> b!650780 (=> (not res!422018) (not e!373401))))

(assert (=> b!650780 (= res!422018 (= (select (store (arr!18474 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!650780 (= lt!302539 (array!38548 (store (arr!18474 a!2986) i!1108 k!1786) (size!18838 a!2986)))))

(declare-fun b!650781 () Bool)

(assert (=> b!650781 (= e!373399 e!373388)))

(declare-fun res!422027 () Bool)

(assert (=> b!650781 (=> res!422027 e!373388)))

(assert (=> b!650781 (= res!422027 (bvsge index!984 j!136))))

(declare-fun lt!302542 () Unit!22198)

(assert (=> b!650781 (= lt!302542 e!373396)))

(declare-fun c!74740 () Bool)

(assert (=> b!650781 (= c!74740 (bvslt j!136 index!984))))

(declare-fun b!650782 () Bool)

(declare-fun res!422030 () Bool)

(assert (=> b!650782 (=> (not res!422030) (not e!373395))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38547 (_ BitVec 32)) Bool)

(assert (=> b!650782 (= res!422030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!650783 () Bool)

(declare-fun Unit!22203 () Unit!22198)

(assert (=> b!650783 (= e!373396 Unit!22203)))

(declare-fun lt!302547 () Unit!22198)

(assert (=> b!650783 (= lt!302547 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302539 (select (arr!18474 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!650783 (arrayContainsKey!0 lt!302539 (select (arr!18474 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!302540 () Unit!22198)

(assert (=> b!650783 (= lt!302540 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12565))))

(assert (=> b!650783 (arrayNoDuplicates!0 lt!302539 #b00000000000000000000000000000000 Nil!12565)))

(declare-fun lt!302550 () Unit!22198)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38547 (_ BitVec 32) (_ BitVec 32)) Unit!22198)

(assert (=> b!650783 (= lt!302550 (lemmaNoDuplicateFromThenFromBigger!0 lt!302539 #b00000000000000000000000000000000 j!136))))

(assert (=> b!650783 (arrayNoDuplicates!0 lt!302539 j!136 Nil!12565)))

(declare-fun lt!302541 () Unit!22198)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38547 (_ BitVec 64) (_ BitVec 32) List!12568) Unit!22198)

(assert (=> b!650783 (= lt!302541 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!302539 (select (arr!18474 a!2986) j!136) j!136 Nil!12565))))

(assert (=> b!650783 false))

(assert (= (and start!59010 res!422020) b!650778))

(assert (= (and b!650778 res!422033) b!650768))

(assert (= (and b!650768 res!422024) b!650772))

(assert (= (and b!650772 res!422026) b!650776))

(assert (= (and b!650776 res!422021) b!650766))

(assert (= (and b!650766 res!422032) b!650782))

(assert (= (and b!650782 res!422030) b!650764))

(assert (= (and b!650764 res!422025) b!650761))

(assert (= (and b!650761 res!422031) b!650780))

(assert (= (and b!650780 res!422018) b!650774))

(assert (= (and b!650774 res!422029) b!650767))

(assert (= (and b!650767 res!422023) b!650765))

(assert (= (and b!650767 c!74741) b!650771))

(assert (= (and b!650767 (not c!74741)) b!650770))

(assert (= (and b!650767 (not res!422017)) b!650777))

(assert (= (and b!650777 res!422019) b!650762))

(assert (= (and b!650762 (not res!422028)) b!650775))

(assert (= (and b!650775 res!422022) b!650773))

(assert (= (and b!650777 (not res!422016)) b!650781))

(assert (= (and b!650781 c!74740) b!650783))

(assert (= (and b!650781 (not c!74740)) b!650763))

(assert (= (and b!650781 (not res!422027)) b!650779))

(assert (= (and b!650779 res!422015) b!650769))

(declare-fun m!623997 () Bool)

(assert (=> start!59010 m!623997))

(declare-fun m!623999 () Bool)

(assert (=> start!59010 m!623999))

(declare-fun m!624001 () Bool)

(assert (=> b!650782 m!624001))

(declare-fun m!624003 () Bool)

(assert (=> b!650779 m!624003))

(declare-fun m!624005 () Bool)

(assert (=> b!650779 m!624005))

(assert (=> b!650779 m!624003))

(declare-fun m!624007 () Bool)

(assert (=> b!650779 m!624007))

(assert (=> b!650779 m!624003))

(assert (=> b!650779 m!624003))

(declare-fun m!624009 () Bool)

(assert (=> b!650779 m!624009))

(declare-fun m!624011 () Bool)

(assert (=> b!650779 m!624011))

(declare-fun m!624013 () Bool)

(assert (=> b!650779 m!624013))

(assert (=> b!650768 m!624003))

(assert (=> b!650768 m!624003))

(declare-fun m!624015 () Bool)

(assert (=> b!650768 m!624015))

(assert (=> b!650777 m!624003))

(declare-fun m!624017 () Bool)

(assert (=> b!650777 m!624017))

(declare-fun m!624019 () Bool)

(assert (=> b!650777 m!624019))

(declare-fun m!624021 () Bool)

(assert (=> b!650761 m!624021))

(assert (=> b!650773 m!624003))

(assert (=> b!650773 m!624003))

(declare-fun m!624023 () Bool)

(assert (=> b!650773 m!624023))

(assert (=> b!650775 m!624003))

(assert (=> b!650775 m!624003))

(assert (=> b!650775 m!624005))

(declare-fun m!624025 () Bool)

(assert (=> b!650766 m!624025))

(declare-fun m!624027 () Bool)

(assert (=> b!650772 m!624027))

(declare-fun m!624029 () Bool)

(assert (=> b!650776 m!624029))

(assert (=> b!650783 m!624003))

(assert (=> b!650783 m!624003))

(declare-fun m!624031 () Bool)

(assert (=> b!650783 m!624031))

(declare-fun m!624033 () Bool)

(assert (=> b!650783 m!624033))

(assert (=> b!650783 m!624011))

(assert (=> b!650783 m!624003))

(declare-fun m!624035 () Bool)

(assert (=> b!650783 m!624035))

(declare-fun m!624037 () Bool)

(assert (=> b!650783 m!624037))

(assert (=> b!650783 m!624003))

(declare-fun m!624039 () Bool)

(assert (=> b!650783 m!624039))

(assert (=> b!650783 m!624013))

(declare-fun m!624041 () Bool)

(assert (=> b!650764 m!624041))

(declare-fun m!624043 () Bool)

(assert (=> b!650774 m!624043))

(assert (=> b!650774 m!624003))

(assert (=> b!650774 m!624003))

(declare-fun m!624045 () Bool)

(assert (=> b!650774 m!624045))

(assert (=> b!650762 m!624003))

(assert (=> b!650767 m!624003))

(declare-fun m!624047 () Bool)

(assert (=> b!650767 m!624047))

(declare-fun m!624049 () Bool)

(assert (=> b!650767 m!624049))

(declare-fun m!624051 () Bool)

(assert (=> b!650767 m!624051))

(assert (=> b!650767 m!624003))

(assert (=> b!650767 m!624017))

(declare-fun m!624053 () Bool)

(assert (=> b!650767 m!624053))

(declare-fun m!624055 () Bool)

(assert (=> b!650767 m!624055))

(declare-fun m!624057 () Bool)

(assert (=> b!650767 m!624057))

(assert (=> b!650769 m!624003))

(assert (=> b!650769 m!624003))

(assert (=> b!650769 m!624023))

(assert (=> b!650780 m!624017))

(declare-fun m!624059 () Bool)

(assert (=> b!650780 m!624059))

(push 1)

