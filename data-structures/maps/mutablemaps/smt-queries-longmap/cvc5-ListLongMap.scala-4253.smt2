; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59004 () Bool)

(assert start!59004)

(declare-fun b!650554 () Bool)

(declare-fun e!373257 () Bool)

(declare-fun e!373256 () Bool)

(assert (=> b!650554 (= e!373257 (not e!373256))))

(declare-fun res!421849 () Bool)

(assert (=> b!650554 (=> res!421849 e!373256)))

(declare-datatypes ((SeekEntryResult!6918 0))(
  ( (MissingZero!6918 (index!30021 (_ BitVec 32))) (Found!6918 (index!30022 (_ BitVec 32))) (Intermediate!6918 (undefined!7730 Bool) (index!30023 (_ BitVec 32)) (x!58837 (_ BitVec 32))) (Undefined!6918) (MissingVacant!6918 (index!30024 (_ BitVec 32))) )
))
(declare-fun lt!302394 () SeekEntryResult!6918)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!650554 (= res!421849 (not (= lt!302394 (Found!6918 index!984))))))

(declare-datatypes ((Unit!22180 0))(
  ( (Unit!22181) )
))
(declare-fun lt!302383 () Unit!22180)

(declare-fun e!373260 () Unit!22180)

(assert (=> b!650554 (= lt!302383 e!373260)))

(declare-fun c!74723 () Bool)

(assert (=> b!650554 (= c!74723 (= lt!302394 Undefined!6918))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!38541 0))(
  ( (array!38542 (arr!18471 (Array (_ BitVec 32) (_ BitVec 64))) (size!18835 (_ BitVec 32))) )
))
(declare-fun lt!302396 () array!38541)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!302393 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38541 (_ BitVec 32)) SeekEntryResult!6918)

(assert (=> b!650554 (= lt!302394 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!302393 lt!302396 mask!3053))))

(declare-fun e!373266 () Bool)

(assert (=> b!650554 e!373266))

(declare-fun res!421861 () Bool)

(assert (=> b!650554 (=> (not res!421861) (not e!373266))))

(declare-fun lt!302381 () SeekEntryResult!6918)

(declare-fun lt!302388 () (_ BitVec 32))

(assert (=> b!650554 (= res!421861 (= lt!302381 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302388 vacantSpotIndex!68 lt!302393 lt!302396 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38541)

(assert (=> b!650554 (= lt!302381 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302388 vacantSpotIndex!68 (select (arr!18471 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!650554 (= lt!302393 (select (store (arr!18471 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!302391 () Unit!22180)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38541 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22180)

(assert (=> b!650554 (= lt!302391 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302388 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!650554 (= lt!302388 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!650555 () Bool)

(declare-fun e!373259 () Bool)

(assert (=> b!650555 (= e!373259 e!373257)))

(declare-fun res!421860 () Bool)

(assert (=> b!650555 (=> (not res!421860) (not e!373257))))

(declare-fun lt!302390 () SeekEntryResult!6918)

(assert (=> b!650555 (= res!421860 (and (= lt!302390 (Found!6918 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18471 a!2986) index!984) (select (arr!18471 a!2986) j!136))) (not (= (select (arr!18471 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!650555 (= lt!302390 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18471 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!650556 () Bool)

(declare-fun e!373254 () Bool)

(assert (=> b!650556 (= e!373256 e!373254)))

(declare-fun res!421847 () Bool)

(assert (=> b!650556 (=> res!421847 e!373254)))

(declare-fun lt!302384 () (_ BitVec 64))

(assert (=> b!650556 (= res!421847 (or (not (= (select (arr!18471 a!2986) j!136) lt!302393)) (not (= (select (arr!18471 a!2986) j!136) lt!302384))))))

(declare-fun e!373265 () Bool)

(assert (=> b!650556 e!373265))

(declare-fun res!421856 () Bool)

(assert (=> b!650556 (=> (not res!421856) (not e!373265))))

(assert (=> b!650556 (= res!421856 (= lt!302384 (select (arr!18471 a!2986) j!136)))))

(assert (=> b!650556 (= lt!302384 (select (store (arr!18471 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!650557 () Bool)

(declare-fun e!373267 () Bool)

(assert (=> b!650557 (= e!373265 e!373267)))

(declare-fun res!421859 () Bool)

(assert (=> b!650557 (=> res!421859 e!373267)))

(assert (=> b!650557 (= res!421859 (or (not (= (select (arr!18471 a!2986) j!136) lt!302393)) (not (= (select (arr!18471 a!2986) j!136) lt!302384)) (bvsge j!136 index!984)))))

(declare-fun res!421844 () Bool)

(declare-fun e!373261 () Bool)

(assert (=> start!59004 (=> (not res!421844) (not e!373261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59004 (= res!421844 (validMask!0 mask!3053))))

(assert (=> start!59004 e!373261))

(assert (=> start!59004 true))

(declare-fun array_inv!14245 (array!38541) Bool)

(assert (=> start!59004 (array_inv!14245 a!2986)))

(declare-fun b!650558 () Bool)

(declare-fun e!373253 () Bool)

(assert (=> b!650558 (= e!373267 e!373253)))

(declare-fun res!421851 () Bool)

(assert (=> b!650558 (=> (not res!421851) (not e!373253))))

(declare-fun arrayContainsKey!0 (array!38541 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!650558 (= res!421851 (arrayContainsKey!0 lt!302396 (select (arr!18471 a!2986) j!136) j!136))))

(declare-fun b!650559 () Bool)

(declare-fun res!421855 () Bool)

(declare-fun e!373262 () Bool)

(assert (=> b!650559 (=> (not res!421855) (not e!373262))))

(assert (=> b!650559 (= res!421855 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18471 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!650560 () Bool)

(declare-fun e!373258 () Bool)

(assert (=> b!650560 (= e!373254 e!373258)))

(declare-fun res!421858 () Bool)

(assert (=> b!650560 (=> res!421858 e!373258)))

(assert (=> b!650560 (= res!421858 (bvsge index!984 j!136))))

(declare-fun lt!302385 () Unit!22180)

(declare-fun e!373263 () Unit!22180)

(assert (=> b!650560 (= lt!302385 e!373263)))

(declare-fun c!74722 () Bool)

(assert (=> b!650560 (= c!74722 (bvslt j!136 index!984))))

(declare-fun b!650561 () Bool)

(assert (=> b!650561 (= e!373253 (arrayContainsKey!0 lt!302396 (select (arr!18471 a!2986) j!136) index!984))))

(declare-fun e!373264 () Bool)

(declare-fun b!650562 () Bool)

(assert (=> b!650562 (= e!373264 (arrayContainsKey!0 lt!302396 (select (arr!18471 a!2986) j!136) index!984))))

(declare-fun b!650563 () Bool)

(declare-fun Unit!22182 () Unit!22180)

(assert (=> b!650563 (= e!373260 Unit!22182)))

(declare-fun b!650564 () Bool)

(assert (=> b!650564 (= e!373261 e!373262)))

(declare-fun res!421850 () Bool)

(assert (=> b!650564 (=> (not res!421850) (not e!373262))))

(declare-fun lt!302382 () SeekEntryResult!6918)

(assert (=> b!650564 (= res!421850 (or (= lt!302382 (MissingZero!6918 i!1108)) (= lt!302382 (MissingVacant!6918 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38541 (_ BitVec 32)) SeekEntryResult!6918)

(assert (=> b!650564 (= lt!302382 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!650565 () Bool)

(declare-fun res!421845 () Bool)

(assert (=> b!650565 (=> (not res!421845) (not e!373261))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!650565 (= res!421845 (validKeyInArray!0 (select (arr!18471 a!2986) j!136)))))

(declare-fun b!650566 () Bool)

(assert (=> b!650566 (= e!373262 e!373259)))

(declare-fun res!421852 () Bool)

(assert (=> b!650566 (=> (not res!421852) (not e!373259))))

(assert (=> b!650566 (= res!421852 (= (select (store (arr!18471 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!650566 (= lt!302396 (array!38542 (store (arr!18471 a!2986) i!1108 k!1786) (size!18835 a!2986)))))

(declare-fun b!650567 () Bool)

(declare-fun Unit!22183 () Unit!22180)

(assert (=> b!650567 (= e!373263 Unit!22183)))

(declare-fun lt!302387 () Unit!22180)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38541 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22180)

(assert (=> b!650567 (= lt!302387 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302396 (select (arr!18471 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!650567 (arrayContainsKey!0 lt!302396 (select (arr!18471 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!302389 () Unit!22180)

(declare-datatypes ((List!12565 0))(
  ( (Nil!12562) (Cons!12561 (h!13606 (_ BitVec 64)) (t!18801 List!12565)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38541 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12565) Unit!22180)

(assert (=> b!650567 (= lt!302389 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12562))))

(declare-fun arrayNoDuplicates!0 (array!38541 (_ BitVec 32) List!12565) Bool)

(assert (=> b!650567 (arrayNoDuplicates!0 lt!302396 #b00000000000000000000000000000000 Nil!12562)))

(declare-fun lt!302395 () Unit!22180)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38541 (_ BitVec 32) (_ BitVec 32)) Unit!22180)

(assert (=> b!650567 (= lt!302395 (lemmaNoDuplicateFromThenFromBigger!0 lt!302396 #b00000000000000000000000000000000 j!136))))

(assert (=> b!650567 (arrayNoDuplicates!0 lt!302396 j!136 Nil!12562)))

(declare-fun lt!302392 () Unit!22180)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38541 (_ BitVec 64) (_ BitVec 32) List!12565) Unit!22180)

(assert (=> b!650567 (= lt!302392 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!302396 (select (arr!18471 a!2986) j!136) j!136 Nil!12562))))

(assert (=> b!650567 false))

(declare-fun b!650568 () Bool)

(declare-fun res!421862 () Bool)

(assert (=> b!650568 (=> (not res!421862) (not e!373262))))

(assert (=> b!650568 (= res!421862 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12562))))

(declare-fun b!650569 () Bool)

(assert (=> b!650569 (= e!373258 (or (bvsge (size!18835 a!2986) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!18835 a!2986)) (bvsle index!984 (size!18835 a!2986))))))

(assert (=> b!650569 (arrayNoDuplicates!0 lt!302396 #b00000000000000000000000000000000 Nil!12562)))

(declare-fun lt!302397 () Unit!22180)

(assert (=> b!650569 (= lt!302397 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12562))))

(assert (=> b!650569 (arrayContainsKey!0 lt!302396 (select (arr!18471 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!302386 () Unit!22180)

(assert (=> b!650569 (= lt!302386 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302396 (select (arr!18471 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!650569 e!373264))

(declare-fun res!421853 () Bool)

(assert (=> b!650569 (=> (not res!421853) (not e!373264))))

(assert (=> b!650569 (= res!421853 (arrayContainsKey!0 lt!302396 (select (arr!18471 a!2986) j!136) j!136))))

(declare-fun b!650570 () Bool)

(declare-fun Unit!22184 () Unit!22180)

(assert (=> b!650570 (= e!373263 Unit!22184)))

(declare-fun b!650571 () Bool)

(declare-fun res!421846 () Bool)

(assert (=> b!650571 (=> (not res!421846) (not e!373261))))

(assert (=> b!650571 (= res!421846 (and (= (size!18835 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18835 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18835 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!650572 () Bool)

(declare-fun res!421857 () Bool)

(assert (=> b!650572 (=> (not res!421857) (not e!373261))))

(assert (=> b!650572 (= res!421857 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!650573 () Bool)

(declare-fun res!421848 () Bool)

(assert (=> b!650573 (=> (not res!421848) (not e!373261))))

(assert (=> b!650573 (= res!421848 (validKeyInArray!0 k!1786))))

(declare-fun b!650574 () Bool)

(assert (=> b!650574 (= e!373266 (= lt!302390 lt!302381))))

(declare-fun b!650575 () Bool)

(declare-fun res!421854 () Bool)

(assert (=> b!650575 (=> (not res!421854) (not e!373262))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38541 (_ BitVec 32)) Bool)

(assert (=> b!650575 (= res!421854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!650576 () Bool)

(declare-fun Unit!22185 () Unit!22180)

(assert (=> b!650576 (= e!373260 Unit!22185)))

(assert (=> b!650576 false))

(assert (= (and start!59004 res!421844) b!650571))

(assert (= (and b!650571 res!421846) b!650565))

(assert (= (and b!650565 res!421845) b!650573))

(assert (= (and b!650573 res!421848) b!650572))

(assert (= (and b!650572 res!421857) b!650564))

(assert (= (and b!650564 res!421850) b!650575))

(assert (= (and b!650575 res!421854) b!650568))

(assert (= (and b!650568 res!421862) b!650559))

(assert (= (and b!650559 res!421855) b!650566))

(assert (= (and b!650566 res!421852) b!650555))

(assert (= (and b!650555 res!421860) b!650554))

(assert (= (and b!650554 res!421861) b!650574))

(assert (= (and b!650554 c!74723) b!650576))

(assert (= (and b!650554 (not c!74723)) b!650563))

(assert (= (and b!650554 (not res!421849)) b!650556))

(assert (= (and b!650556 res!421856) b!650557))

(assert (= (and b!650557 (not res!421859)) b!650558))

(assert (= (and b!650558 res!421851) b!650561))

(assert (= (and b!650556 (not res!421847)) b!650560))

(assert (= (and b!650560 c!74722) b!650567))

(assert (= (and b!650560 (not c!74722)) b!650570))

(assert (= (and b!650560 (not res!421858)) b!650569))

(assert (= (and b!650569 res!421853) b!650562))

(declare-fun m!623805 () Bool)

(assert (=> b!650555 m!623805))

(declare-fun m!623807 () Bool)

(assert (=> b!650555 m!623807))

(assert (=> b!650555 m!623807))

(declare-fun m!623809 () Bool)

(assert (=> b!650555 m!623809))

(declare-fun m!623811 () Bool)

(assert (=> b!650554 m!623811))

(declare-fun m!623813 () Bool)

(assert (=> b!650554 m!623813))

(assert (=> b!650554 m!623807))

(declare-fun m!623815 () Bool)

(assert (=> b!650554 m!623815))

(declare-fun m!623817 () Bool)

(assert (=> b!650554 m!623817))

(assert (=> b!650554 m!623807))

(declare-fun m!623819 () Bool)

(assert (=> b!650554 m!623819))

(declare-fun m!623821 () Bool)

(assert (=> b!650554 m!623821))

(declare-fun m!623823 () Bool)

(assert (=> b!650554 m!623823))

(declare-fun m!623825 () Bool)

(assert (=> b!650568 m!623825))

(declare-fun m!623827 () Bool)

(assert (=> b!650559 m!623827))

(assert (=> b!650566 m!623815))

(declare-fun m!623829 () Bool)

(assert (=> b!650566 m!623829))

(assert (=> b!650561 m!623807))

(assert (=> b!650561 m!623807))

(declare-fun m!623831 () Bool)

(assert (=> b!650561 m!623831))

(assert (=> b!650557 m!623807))

(assert (=> b!650565 m!623807))

(assert (=> b!650565 m!623807))

(declare-fun m!623833 () Bool)

(assert (=> b!650565 m!623833))

(assert (=> b!650558 m!623807))

(assert (=> b!650558 m!623807))

(declare-fun m!623835 () Bool)

(assert (=> b!650558 m!623835))

(assert (=> b!650556 m!623807))

(assert (=> b!650556 m!623815))

(declare-fun m!623837 () Bool)

(assert (=> b!650556 m!623837))

(declare-fun m!623839 () Bool)

(assert (=> start!59004 m!623839))

(declare-fun m!623841 () Bool)

(assert (=> start!59004 m!623841))

(declare-fun m!623843 () Bool)

(assert (=> b!650564 m!623843))

(declare-fun m!623845 () Bool)

(assert (=> b!650573 m!623845))

(assert (=> b!650567 m!623807))

(declare-fun m!623847 () Bool)

(assert (=> b!650567 m!623847))

(declare-fun m!623849 () Bool)

(assert (=> b!650567 m!623849))

(assert (=> b!650567 m!623807))

(declare-fun m!623851 () Bool)

(assert (=> b!650567 m!623851))

(assert (=> b!650567 m!623807))

(declare-fun m!623853 () Bool)

(assert (=> b!650567 m!623853))

(declare-fun m!623855 () Bool)

(assert (=> b!650567 m!623855))

(declare-fun m!623857 () Bool)

(assert (=> b!650567 m!623857))

(assert (=> b!650567 m!623807))

(declare-fun m!623859 () Bool)

(assert (=> b!650567 m!623859))

(declare-fun m!623861 () Bool)

(assert (=> b!650572 m!623861))

(assert (=> b!650562 m!623807))

(assert (=> b!650562 m!623807))

(assert (=> b!650562 m!623831))

(declare-fun m!623863 () Bool)

(assert (=> b!650575 m!623863))

(assert (=> b!650569 m!623807))

(declare-fun m!623865 () Bool)

(assert (=> b!650569 m!623865))

(assert (=> b!650569 m!623807))

(assert (=> b!650569 m!623807))

(declare-fun m!623867 () Bool)

(assert (=> b!650569 m!623867))

(assert (=> b!650569 m!623855))

(assert (=> b!650569 m!623857))

(assert (=> b!650569 m!623807))

(assert (=> b!650569 m!623835))

(push 1)

(assert (not b!650565))

(assert (not b!650554))

(assert (not b!650572))

(assert (not b!650575))

(assert (not b!650568))

(assert (not start!59004))

(assert (not b!650561))

(assert (not b!650562))

(assert (not b!650567))

(assert (not b!650564))

(assert (not b!650555))

(assert (not b!650569))

(assert (not b!650573))

(assert (not b!650558))

(check-sat)

(pop 1)

(push 1)

(check-sat)

