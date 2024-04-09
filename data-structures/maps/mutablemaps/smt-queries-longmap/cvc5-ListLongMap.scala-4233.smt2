; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58350 () Bool)

(assert start!58350)

(declare-fun b!644062 () Bool)

(declare-datatypes ((Unit!21820 0))(
  ( (Unit!21821) )
))
(declare-fun e!369011 () Unit!21820)

(declare-fun Unit!21822 () Unit!21820)

(assert (=> b!644062 (= e!369011 Unit!21822)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!369013 () Bool)

(declare-datatypes ((array!38403 0))(
  ( (array!38404 (arr!18411 (Array (_ BitVec 32) (_ BitVec 64))) (size!18775 (_ BitVec 32))) )
))
(declare-fun lt!298545 () array!38403)

(declare-fun b!644063 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38403)

(declare-fun arrayContainsKey!0 (array!38403 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!644063 (= e!369013 (arrayContainsKey!0 lt!298545 (select (arr!18411 a!2986) j!136) index!984))))

(declare-fun b!644064 () Bool)

(declare-fun e!369007 () Bool)

(declare-fun e!369004 () Bool)

(assert (=> b!644064 (= e!369007 (not e!369004))))

(declare-fun res!417339 () Bool)

(assert (=> b!644064 (=> res!417339 e!369004)))

(declare-datatypes ((SeekEntryResult!6858 0))(
  ( (MissingZero!6858 (index!29763 (_ BitVec 32))) (Found!6858 (index!29764 (_ BitVec 32))) (Intermediate!6858 (undefined!7670 Bool) (index!29765 (_ BitVec 32)) (x!58563 (_ BitVec 32))) (Undefined!6858) (MissingVacant!6858 (index!29766 (_ BitVec 32))) )
))
(declare-fun lt!298538 () SeekEntryResult!6858)

(assert (=> b!644064 (= res!417339 (not (= lt!298538 (Found!6858 index!984))))))

(declare-fun lt!298541 () Unit!21820)

(declare-fun e!369010 () Unit!21820)

(assert (=> b!644064 (= lt!298541 e!369010)))

(declare-fun c!73732 () Bool)

(assert (=> b!644064 (= c!73732 (= lt!298538 Undefined!6858))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!298551 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38403 (_ BitVec 32)) SeekEntryResult!6858)

(assert (=> b!644064 (= lt!298538 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298551 lt!298545 mask!3053))))

(declare-fun e!369014 () Bool)

(assert (=> b!644064 e!369014))

(declare-fun res!417332 () Bool)

(assert (=> b!644064 (=> (not res!417332) (not e!369014))))

(declare-fun lt!298546 () SeekEntryResult!6858)

(declare-fun lt!298547 () (_ BitVec 32))

(assert (=> b!644064 (= res!417332 (= lt!298546 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298547 vacantSpotIndex!68 lt!298551 lt!298545 mask!3053)))))

(assert (=> b!644064 (= lt!298546 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298547 vacantSpotIndex!68 (select (arr!18411 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!644064 (= lt!298551 (select (store (arr!18411 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!298537 () Unit!21820)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38403 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21820)

(assert (=> b!644064 (= lt!298537 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298547 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!644064 (= lt!298547 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!644065 () Bool)

(declare-fun res!417341 () Bool)

(declare-fun e!369015 () Bool)

(assert (=> b!644065 (=> (not res!417341) (not e!369015))))

(declare-datatypes ((List!12505 0))(
  ( (Nil!12502) (Cons!12501 (h!13546 (_ BitVec 64)) (t!18741 List!12505)) )
))
(declare-fun arrayNoDuplicates!0 (array!38403 (_ BitVec 32) List!12505) Bool)

(assert (=> b!644065 (= res!417341 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12502))))

(declare-fun b!644066 () Bool)

(declare-fun res!417333 () Bool)

(assert (=> b!644066 (=> (not res!417333) (not e!369015))))

(assert (=> b!644066 (= res!417333 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18411 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!644067 () Bool)

(declare-fun e!369002 () Bool)

(assert (=> b!644067 (= e!369015 e!369002)))

(declare-fun res!417335 () Bool)

(assert (=> b!644067 (=> (not res!417335) (not e!369002))))

(assert (=> b!644067 (= res!417335 (= (select (store (arr!18411 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!644067 (= lt!298545 (array!38404 (store (arr!18411 a!2986) i!1108 k!1786) (size!18775 a!2986)))))

(declare-fun b!644068 () Bool)

(declare-fun e!369005 () Bool)

(assert (=> b!644068 (= e!369005 (arrayContainsKey!0 lt!298545 (select (arr!18411 a!2986) j!136) index!984))))

(declare-fun b!644070 () Bool)

(declare-fun e!369009 () Bool)

(assert (=> b!644070 (= e!369009 true)))

(assert (=> b!644070 e!369013))

(declare-fun res!417349 () Bool)

(assert (=> b!644070 (=> (not res!417349) (not e!369013))))

(assert (=> b!644070 (= res!417349 (arrayContainsKey!0 lt!298545 (select (arr!18411 a!2986) j!136) j!136))))

(declare-fun b!644071 () Bool)

(declare-fun e!369003 () Bool)

(assert (=> b!644071 (= e!369004 e!369003)))

(declare-fun res!417338 () Bool)

(assert (=> b!644071 (=> res!417338 e!369003)))

(declare-fun lt!298542 () (_ BitVec 64))

(assert (=> b!644071 (= res!417338 (or (not (= (select (arr!18411 a!2986) j!136) lt!298551)) (not (= (select (arr!18411 a!2986) j!136) lt!298542))))))

(declare-fun e!369008 () Bool)

(assert (=> b!644071 e!369008))

(declare-fun res!417334 () Bool)

(assert (=> b!644071 (=> (not res!417334) (not e!369008))))

(assert (=> b!644071 (= res!417334 (= lt!298542 (select (arr!18411 a!2986) j!136)))))

(assert (=> b!644071 (= lt!298542 (select (store (arr!18411 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!644072 () Bool)

(declare-fun res!417336 () Bool)

(declare-fun e!369016 () Bool)

(assert (=> b!644072 (=> (not res!417336) (not e!369016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!644072 (= res!417336 (validKeyInArray!0 k!1786))))

(declare-fun b!644073 () Bool)

(assert (=> b!644073 (= e!369002 e!369007)))

(declare-fun res!417337 () Bool)

(assert (=> b!644073 (=> (not res!417337) (not e!369007))))

(declare-fun lt!298548 () SeekEntryResult!6858)

(assert (=> b!644073 (= res!417337 (and (= lt!298548 (Found!6858 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18411 a!2986) index!984) (select (arr!18411 a!2986) j!136))) (not (= (select (arr!18411 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!644073 (= lt!298548 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18411 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!644074 () Bool)

(declare-fun Unit!21823 () Unit!21820)

(assert (=> b!644074 (= e!369010 Unit!21823)))

(declare-fun b!644075 () Bool)

(assert (=> b!644075 (= e!369016 e!369015)))

(declare-fun res!417346 () Bool)

(assert (=> b!644075 (=> (not res!417346) (not e!369015))))

(declare-fun lt!298544 () SeekEntryResult!6858)

(assert (=> b!644075 (= res!417346 (or (= lt!298544 (MissingZero!6858 i!1108)) (= lt!298544 (MissingVacant!6858 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38403 (_ BitVec 32)) SeekEntryResult!6858)

(assert (=> b!644075 (= lt!298544 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!644076 () Bool)

(declare-fun res!417348 () Bool)

(assert (=> b!644076 (=> (not res!417348) (not e!369016))))

(assert (=> b!644076 (= res!417348 (validKeyInArray!0 (select (arr!18411 a!2986) j!136)))))

(declare-fun b!644077 () Bool)

(declare-fun Unit!21824 () Unit!21820)

(assert (=> b!644077 (= e!369011 Unit!21824)))

(declare-fun lt!298550 () Unit!21820)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38403 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21820)

(assert (=> b!644077 (= lt!298550 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298545 (select (arr!18411 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!644077 (arrayContainsKey!0 lt!298545 (select (arr!18411 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298540 () Unit!21820)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38403 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12505) Unit!21820)

(assert (=> b!644077 (= lt!298540 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12502))))

(assert (=> b!644077 (arrayNoDuplicates!0 lt!298545 #b00000000000000000000000000000000 Nil!12502)))

(declare-fun lt!298543 () Unit!21820)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38403 (_ BitVec 32) (_ BitVec 32)) Unit!21820)

(assert (=> b!644077 (= lt!298543 (lemmaNoDuplicateFromThenFromBigger!0 lt!298545 #b00000000000000000000000000000000 j!136))))

(assert (=> b!644077 (arrayNoDuplicates!0 lt!298545 j!136 Nil!12502)))

(declare-fun lt!298549 () Unit!21820)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38403 (_ BitVec 64) (_ BitVec 32) List!12505) Unit!21820)

(assert (=> b!644077 (= lt!298549 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298545 (select (arr!18411 a!2986) j!136) j!136 Nil!12502))))

(assert (=> b!644077 false))

(declare-fun b!644078 () Bool)

(declare-fun res!417343 () Bool)

(assert (=> b!644078 (=> (not res!417343) (not e!369016))))

(assert (=> b!644078 (= res!417343 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!644079 () Bool)

(assert (=> b!644079 (= e!369014 (= lt!298548 lt!298546))))

(declare-fun b!644080 () Bool)

(declare-fun Unit!21825 () Unit!21820)

(assert (=> b!644080 (= e!369010 Unit!21825)))

(assert (=> b!644080 false))

(declare-fun b!644069 () Bool)

(declare-fun e!369012 () Bool)

(assert (=> b!644069 (= e!369012 e!369005)))

(declare-fun res!417340 () Bool)

(assert (=> b!644069 (=> (not res!417340) (not e!369005))))

(assert (=> b!644069 (= res!417340 (arrayContainsKey!0 lt!298545 (select (arr!18411 a!2986) j!136) j!136))))

(declare-fun res!417345 () Bool)

(assert (=> start!58350 (=> (not res!417345) (not e!369016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58350 (= res!417345 (validMask!0 mask!3053))))

(assert (=> start!58350 e!369016))

(assert (=> start!58350 true))

(declare-fun array_inv!14185 (array!38403) Bool)

(assert (=> start!58350 (array_inv!14185 a!2986)))

(declare-fun b!644081 () Bool)

(assert (=> b!644081 (= e!369008 e!369012)))

(declare-fun res!417344 () Bool)

(assert (=> b!644081 (=> res!417344 e!369012)))

(assert (=> b!644081 (= res!417344 (or (not (= (select (arr!18411 a!2986) j!136) lt!298551)) (not (= (select (arr!18411 a!2986) j!136) lt!298542)) (bvsge j!136 index!984)))))

(declare-fun b!644082 () Bool)

(declare-fun res!417342 () Bool)

(assert (=> b!644082 (=> (not res!417342) (not e!369016))))

(assert (=> b!644082 (= res!417342 (and (= (size!18775 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18775 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18775 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!644083 () Bool)

(declare-fun res!417350 () Bool)

(assert (=> b!644083 (=> (not res!417350) (not e!369015))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38403 (_ BitVec 32)) Bool)

(assert (=> b!644083 (= res!417350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!644084 () Bool)

(assert (=> b!644084 (= e!369003 e!369009)))

(declare-fun res!417347 () Bool)

(assert (=> b!644084 (=> res!417347 e!369009)))

(assert (=> b!644084 (= res!417347 (bvsge index!984 j!136))))

(declare-fun lt!298539 () Unit!21820)

(assert (=> b!644084 (= lt!298539 e!369011)))

(declare-fun c!73733 () Bool)

(assert (=> b!644084 (= c!73733 (bvslt j!136 index!984))))

(assert (= (and start!58350 res!417345) b!644082))

(assert (= (and b!644082 res!417342) b!644076))

(assert (= (and b!644076 res!417348) b!644072))

(assert (= (and b!644072 res!417336) b!644078))

(assert (= (and b!644078 res!417343) b!644075))

(assert (= (and b!644075 res!417346) b!644083))

(assert (= (and b!644083 res!417350) b!644065))

(assert (= (and b!644065 res!417341) b!644066))

(assert (= (and b!644066 res!417333) b!644067))

(assert (= (and b!644067 res!417335) b!644073))

(assert (= (and b!644073 res!417337) b!644064))

(assert (= (and b!644064 res!417332) b!644079))

(assert (= (and b!644064 c!73732) b!644080))

(assert (= (and b!644064 (not c!73732)) b!644074))

(assert (= (and b!644064 (not res!417339)) b!644071))

(assert (= (and b!644071 res!417334) b!644081))

(assert (= (and b!644081 (not res!417344)) b!644069))

(assert (= (and b!644069 res!417340) b!644068))

(assert (= (and b!644071 (not res!417338)) b!644084))

(assert (= (and b!644084 c!73733) b!644077))

(assert (= (and b!644084 (not c!73733)) b!644062))

(assert (= (and b!644084 (not res!417347)) b!644070))

(assert (= (and b!644070 res!417349) b!644063))

(declare-fun m!617763 () Bool)

(assert (=> b!644065 m!617763))

(declare-fun m!617765 () Bool)

(assert (=> b!644063 m!617765))

(assert (=> b!644063 m!617765))

(declare-fun m!617767 () Bool)

(assert (=> b!644063 m!617767))

(assert (=> b!644076 m!617765))

(assert (=> b!644076 m!617765))

(declare-fun m!617769 () Bool)

(assert (=> b!644076 m!617769))

(declare-fun m!617771 () Bool)

(assert (=> b!644073 m!617771))

(assert (=> b!644073 m!617765))

(assert (=> b!644073 m!617765))

(declare-fun m!617773 () Bool)

(assert (=> b!644073 m!617773))

(assert (=> b!644077 m!617765))

(declare-fun m!617775 () Bool)

(assert (=> b!644077 m!617775))

(assert (=> b!644077 m!617765))

(assert (=> b!644077 m!617765))

(declare-fun m!617777 () Bool)

(assert (=> b!644077 m!617777))

(declare-fun m!617779 () Bool)

(assert (=> b!644077 m!617779))

(assert (=> b!644077 m!617765))

(declare-fun m!617781 () Bool)

(assert (=> b!644077 m!617781))

(declare-fun m!617783 () Bool)

(assert (=> b!644077 m!617783))

(declare-fun m!617785 () Bool)

(assert (=> b!644077 m!617785))

(declare-fun m!617787 () Bool)

(assert (=> b!644077 m!617787))

(declare-fun m!617789 () Bool)

(assert (=> b!644075 m!617789))

(declare-fun m!617791 () Bool)

(assert (=> b!644066 m!617791))

(assert (=> b!644071 m!617765))

(declare-fun m!617793 () Bool)

(assert (=> b!644071 m!617793))

(declare-fun m!617795 () Bool)

(assert (=> b!644071 m!617795))

(assert (=> b!644067 m!617793))

(declare-fun m!617797 () Bool)

(assert (=> b!644067 m!617797))

(declare-fun m!617799 () Bool)

(assert (=> b!644083 m!617799))

(assert (=> b!644081 m!617765))

(assert (=> b!644070 m!617765))

(assert (=> b!644070 m!617765))

(declare-fun m!617801 () Bool)

(assert (=> b!644070 m!617801))

(assert (=> b!644068 m!617765))

(assert (=> b!644068 m!617765))

(assert (=> b!644068 m!617767))

(declare-fun m!617803 () Bool)

(assert (=> start!58350 m!617803))

(declare-fun m!617805 () Bool)

(assert (=> start!58350 m!617805))

(assert (=> b!644069 m!617765))

(assert (=> b!644069 m!617765))

(assert (=> b!644069 m!617801))

(declare-fun m!617807 () Bool)

(assert (=> b!644072 m!617807))

(declare-fun m!617809 () Bool)

(assert (=> b!644064 m!617809))

(declare-fun m!617811 () Bool)

(assert (=> b!644064 m!617811))

(declare-fun m!617813 () Bool)

(assert (=> b!644064 m!617813))

(assert (=> b!644064 m!617765))

(declare-fun m!617815 () Bool)

(assert (=> b!644064 m!617815))

(assert (=> b!644064 m!617765))

(assert (=> b!644064 m!617793))

(declare-fun m!617817 () Bool)

(assert (=> b!644064 m!617817))

(declare-fun m!617819 () Bool)

(assert (=> b!644064 m!617819))

(declare-fun m!617821 () Bool)

(assert (=> b!644078 m!617821))

(push 1)

