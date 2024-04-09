; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65524 () Bool)

(assert start!65524)

(declare-fun b!747024 () Bool)

(declare-fun res!503833 () Bool)

(declare-fun e!417140 () Bool)

(assert (=> b!747024 (=> (not res!503833) (not e!417140))))

(declare-datatypes ((array!41650 0))(
  ( (array!41651 (arr!19935 (Array (_ BitVec 32) (_ BitVec 64))) (size!20356 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41650)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!747024 (= res!503833 (validKeyInArray!0 (select (arr!19935 a!3186) j!159)))))

(declare-fun b!747025 () Bool)

(declare-fun res!503839 () Bool)

(declare-fun e!417142 () Bool)

(assert (=> b!747025 (=> res!503839 e!417142)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7542 0))(
  ( (MissingZero!7542 (index!32535 (_ BitVec 32))) (Found!7542 (index!32536 (_ BitVec 32))) (Intermediate!7542 (undefined!8354 Bool) (index!32537 (_ BitVec 32)) (x!63509 (_ BitVec 32))) (Undefined!7542) (MissingVacant!7542 (index!32538 (_ BitVec 32))) )
))
(declare-fun lt!332059 () SeekEntryResult!7542)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41650 (_ BitVec 32)) SeekEntryResult!7542)

(assert (=> b!747025 (= res!503839 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19935 a!3186) j!159) a!3186 mask!3328) lt!332059)))))

(declare-fun b!747026 () Bool)

(declare-fun res!503844 () Bool)

(assert (=> b!747026 (=> (not res!503844) (not e!417140))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41650 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!747026 (= res!503844 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!747027 () Bool)

(declare-fun res!503840 () Bool)

(declare-fun e!417144 () Bool)

(assert (=> b!747027 (=> (not res!503840) (not e!417144))))

(declare-fun e!417143 () Bool)

(assert (=> b!747027 (= res!503840 e!417143)))

(declare-fun c!81978 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!747027 (= c!81978 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!747028 () Bool)

(assert (=> b!747028 (= e!417142 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!747028 (= (select (store (arr!19935 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!25570 0))(
  ( (Unit!25571) )
))
(declare-fun lt!332058 () Unit!25570)

(declare-fun e!417136 () Unit!25570)

(assert (=> b!747028 (= lt!332058 e!417136)))

(declare-fun c!81977 () Bool)

(assert (=> b!747028 (= c!81977 (= (select (store (arr!19935 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!747029 () Bool)

(declare-fun e!417138 () Bool)

(assert (=> b!747029 (= e!417140 e!417138)))

(declare-fun res!503834 () Bool)

(assert (=> b!747029 (=> (not res!503834) (not e!417138))))

(declare-fun lt!332057 () SeekEntryResult!7542)

(assert (=> b!747029 (= res!503834 (or (= lt!332057 (MissingZero!7542 i!1173)) (= lt!332057 (MissingVacant!7542 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41650 (_ BitVec 32)) SeekEntryResult!7542)

(assert (=> b!747029 (= lt!332057 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!747030 () Bool)

(assert (=> b!747030 (= e!417143 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19935 a!3186) j!159) a!3186 mask!3328) (Found!7542 j!159)))))

(declare-fun b!747031 () Bool)

(declare-fun res!503845 () Bool)

(assert (=> b!747031 (=> (not res!503845) (not e!417138))))

(assert (=> b!747031 (= res!503845 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20356 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20356 a!3186))))))

(declare-fun b!747032 () Bool)

(declare-fun e!417139 () Bool)

(assert (=> b!747032 (= e!417144 e!417139)))

(declare-fun res!503843 () Bool)

(assert (=> b!747032 (=> (not res!503843) (not e!417139))))

(declare-fun lt!332064 () SeekEntryResult!7542)

(declare-fun lt!332066 () SeekEntryResult!7542)

(assert (=> b!747032 (= res!503843 (= lt!332064 lt!332066))))

(declare-fun lt!332062 () (_ BitVec 64))

(declare-fun lt!332061 () array!41650)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41650 (_ BitVec 32)) SeekEntryResult!7542)

(assert (=> b!747032 (= lt!332066 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332062 lt!332061 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!747032 (= lt!332064 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332062 mask!3328) lt!332062 lt!332061 mask!3328))))

(assert (=> b!747032 (= lt!332062 (select (store (arr!19935 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!747032 (= lt!332061 (array!41651 (store (arr!19935 a!3186) i!1173 k!2102) (size!20356 a!3186)))))

(declare-fun b!747033 () Bool)

(declare-fun res!503837 () Bool)

(assert (=> b!747033 (=> (not res!503837) (not e!417140))))

(assert (=> b!747033 (= res!503837 (and (= (size!20356 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20356 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20356 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!747034 () Bool)

(declare-fun res!503832 () Bool)

(assert (=> b!747034 (=> (not res!503832) (not e!417140))))

(assert (=> b!747034 (= res!503832 (validKeyInArray!0 k!2102))))

(declare-fun b!747035 () Bool)

(declare-fun res!503842 () Bool)

(assert (=> b!747035 (=> (not res!503842) (not e!417138))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41650 (_ BitVec 32)) Bool)

(assert (=> b!747035 (= res!503842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!747036 () Bool)

(declare-fun res!503846 () Bool)

(assert (=> b!747036 (=> (not res!503846) (not e!417144))))

(assert (=> b!747036 (= res!503846 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19935 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!747037 () Bool)

(declare-fun Unit!25572 () Unit!25570)

(assert (=> b!747037 (= e!417136 Unit!25572)))

(assert (=> b!747037 false))

(declare-fun res!503847 () Bool)

(assert (=> start!65524 (=> (not res!503847) (not e!417140))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65524 (= res!503847 (validMask!0 mask!3328))))

(assert (=> start!65524 e!417140))

(assert (=> start!65524 true))

(declare-fun array_inv!15709 (array!41650) Bool)

(assert (=> start!65524 (array_inv!15709 a!3186)))

(declare-fun b!747038 () Bool)

(declare-fun lt!332065 () SeekEntryResult!7542)

(assert (=> b!747038 (= e!417143 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19935 a!3186) j!159) a!3186 mask!3328) lt!332065))))

(declare-fun b!747039 () Bool)

(declare-fun e!417137 () Bool)

(assert (=> b!747039 (= e!417137 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19935 a!3186) j!159) a!3186 mask!3328) lt!332059))))

(declare-fun b!747040 () Bool)

(declare-fun res!503836 () Bool)

(assert (=> b!747040 (=> (not res!503836) (not e!417138))))

(declare-datatypes ((List!13990 0))(
  ( (Nil!13987) (Cons!13986 (h!15058 (_ BitVec 64)) (t!20313 List!13990)) )
))
(declare-fun arrayNoDuplicates!0 (array!41650 (_ BitVec 32) List!13990) Bool)

(assert (=> b!747040 (= res!503836 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13987))))

(declare-fun b!747041 () Bool)

(assert (=> b!747041 (= e!417139 (not e!417142))))

(declare-fun res!503838 () Bool)

(assert (=> b!747041 (=> res!503838 e!417142)))

(assert (=> b!747041 (= res!503838 (or (not (is-Intermediate!7542 lt!332066)) (bvslt x!1131 (x!63509 lt!332066)) (not (= x!1131 (x!63509 lt!332066))) (not (= index!1321 (index!32537 lt!332066)))))))

(assert (=> b!747041 e!417137))

(declare-fun res!503835 () Bool)

(assert (=> b!747041 (=> (not res!503835) (not e!417137))))

(declare-fun lt!332060 () SeekEntryResult!7542)

(assert (=> b!747041 (= res!503835 (= lt!332060 lt!332059))))

(assert (=> b!747041 (= lt!332059 (Found!7542 j!159))))

(assert (=> b!747041 (= lt!332060 (seekEntryOrOpen!0 (select (arr!19935 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!747041 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332063 () Unit!25570)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41650 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25570)

(assert (=> b!747041 (= lt!332063 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!747042 () Bool)

(declare-fun res!503831 () Bool)

(assert (=> b!747042 (=> res!503831 e!417142)))

(assert (=> b!747042 (= res!503831 (= (select (store (arr!19935 a!3186) i!1173 k!2102) index!1321) lt!332062))))

(declare-fun b!747043 () Bool)

(assert (=> b!747043 (= e!417138 e!417144)))

(declare-fun res!503841 () Bool)

(assert (=> b!747043 (=> (not res!503841) (not e!417144))))

(assert (=> b!747043 (= res!503841 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19935 a!3186) j!159) mask!3328) (select (arr!19935 a!3186) j!159) a!3186 mask!3328) lt!332065))))

(assert (=> b!747043 (= lt!332065 (Intermediate!7542 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!747044 () Bool)

(declare-fun Unit!25573 () Unit!25570)

(assert (=> b!747044 (= e!417136 Unit!25573)))

(assert (= (and start!65524 res!503847) b!747033))

(assert (= (and b!747033 res!503837) b!747024))

(assert (= (and b!747024 res!503833) b!747034))

(assert (= (and b!747034 res!503832) b!747026))

(assert (= (and b!747026 res!503844) b!747029))

(assert (= (and b!747029 res!503834) b!747035))

(assert (= (and b!747035 res!503842) b!747040))

(assert (= (and b!747040 res!503836) b!747031))

(assert (= (and b!747031 res!503845) b!747043))

(assert (= (and b!747043 res!503841) b!747036))

(assert (= (and b!747036 res!503846) b!747027))

(assert (= (and b!747027 c!81978) b!747038))

(assert (= (and b!747027 (not c!81978)) b!747030))

(assert (= (and b!747027 res!503840) b!747032))

(assert (= (and b!747032 res!503843) b!747041))

(assert (= (and b!747041 res!503835) b!747039))

(assert (= (and b!747041 (not res!503838)) b!747025))

(assert (= (and b!747025 (not res!503839)) b!747042))

(assert (= (and b!747042 (not res!503831)) b!747028))

(assert (= (and b!747028 c!81977) b!747037))

(assert (= (and b!747028 (not c!81977)) b!747044))

(declare-fun m!697273 () Bool)

(assert (=> b!747028 m!697273))

(declare-fun m!697275 () Bool)

(assert (=> b!747028 m!697275))

(declare-fun m!697277 () Bool)

(assert (=> b!747025 m!697277))

(assert (=> b!747025 m!697277))

(declare-fun m!697279 () Bool)

(assert (=> b!747025 m!697279))

(assert (=> b!747039 m!697277))

(assert (=> b!747039 m!697277))

(declare-fun m!697281 () Bool)

(assert (=> b!747039 m!697281))

(assert (=> b!747041 m!697277))

(assert (=> b!747041 m!697277))

(declare-fun m!697283 () Bool)

(assert (=> b!747041 m!697283))

(declare-fun m!697285 () Bool)

(assert (=> b!747041 m!697285))

(declare-fun m!697287 () Bool)

(assert (=> b!747041 m!697287))

(declare-fun m!697289 () Bool)

(assert (=> b!747036 m!697289))

(declare-fun m!697291 () Bool)

(assert (=> start!65524 m!697291))

(declare-fun m!697293 () Bool)

(assert (=> start!65524 m!697293))

(assert (=> b!747042 m!697273))

(assert (=> b!747042 m!697275))

(declare-fun m!697295 () Bool)

(assert (=> b!747034 m!697295))

(assert (=> b!747038 m!697277))

(assert (=> b!747038 m!697277))

(declare-fun m!697297 () Bool)

(assert (=> b!747038 m!697297))

(declare-fun m!697299 () Bool)

(assert (=> b!747040 m!697299))

(assert (=> b!747030 m!697277))

(assert (=> b!747030 m!697277))

(assert (=> b!747030 m!697279))

(assert (=> b!747043 m!697277))

(assert (=> b!747043 m!697277))

(declare-fun m!697301 () Bool)

(assert (=> b!747043 m!697301))

(assert (=> b!747043 m!697301))

(assert (=> b!747043 m!697277))

(declare-fun m!697303 () Bool)

(assert (=> b!747043 m!697303))

(declare-fun m!697305 () Bool)

(assert (=> b!747032 m!697305))

(declare-fun m!697307 () Bool)

(assert (=> b!747032 m!697307))

(assert (=> b!747032 m!697305))

(declare-fun m!697309 () Bool)

(assert (=> b!747032 m!697309))

(declare-fun m!697311 () Bool)

(assert (=> b!747032 m!697311))

(assert (=> b!747032 m!697273))

(declare-fun m!697313 () Bool)

(assert (=> b!747035 m!697313))

(assert (=> b!747024 m!697277))

(assert (=> b!747024 m!697277))

(declare-fun m!697315 () Bool)

(assert (=> b!747024 m!697315))

(declare-fun m!697317 () Bool)

(assert (=> b!747026 m!697317))

(declare-fun m!697319 () Bool)

(assert (=> b!747029 m!697319))

(push 1)

