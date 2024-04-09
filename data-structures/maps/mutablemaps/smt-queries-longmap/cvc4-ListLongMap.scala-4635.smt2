; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64532 () Bool)

(assert start!64532)

(declare-fun b!726061 () Bool)

(declare-fun e!406565 () Bool)

(declare-fun e!406566 () Bool)

(assert (=> b!726061 (= e!406565 e!406566)))

(declare-fun res!487225 () Bool)

(assert (=> b!726061 (=> (not res!487225) (not e!406566))))

(declare-datatypes ((array!41003 0))(
  ( (array!41004 (arr!19619 (Array (_ BitVec 32) (_ BitVec 64))) (size!20040 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41003)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7226 0))(
  ( (MissingZero!7226 (index!31271 (_ BitVec 32))) (Found!7226 (index!31272 (_ BitVec 32))) (Intermediate!7226 (undefined!8038 Bool) (index!31273 (_ BitVec 32)) (x!62285 (_ BitVec 32))) (Undefined!7226) (MissingVacant!7226 (index!31274 (_ BitVec 32))) )
))
(declare-fun lt!321568 () SeekEntryResult!7226)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41003 (_ BitVec 32)) SeekEntryResult!7226)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726061 (= res!487225 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19619 a!3186) j!159) mask!3328) (select (arr!19619 a!3186) j!159) a!3186 mask!3328) lt!321568))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!726061 (= lt!321568 (Intermediate!7226 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!726062 () Bool)

(declare-fun res!487223 () Bool)

(assert (=> b!726062 (=> (not res!487223) (not e!406566))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!726062 (= res!487223 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19619 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726063 () Bool)

(declare-fun res!487226 () Bool)

(declare-fun e!406567 () Bool)

(assert (=> b!726063 (=> (not res!487226) (not e!406567))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726063 (= res!487226 (validKeyInArray!0 (select (arr!19619 a!3186) j!159)))))

(declare-fun b!726064 () Bool)

(declare-fun res!487218 () Bool)

(assert (=> b!726064 (=> (not res!487218) (not e!406567))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41003 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726064 (= res!487218 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!726065 () Bool)

(assert (=> b!726065 (= e!406567 e!406565)))

(declare-fun res!487221 () Bool)

(assert (=> b!726065 (=> (not res!487221) (not e!406565))))

(declare-fun lt!321571 () SeekEntryResult!7226)

(assert (=> b!726065 (= res!487221 (or (= lt!321571 (MissingZero!7226 i!1173)) (= lt!321571 (MissingVacant!7226 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41003 (_ BitVec 32)) SeekEntryResult!7226)

(assert (=> b!726065 (= lt!321571 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!726066 () Bool)

(declare-fun e!406569 () Bool)

(assert (=> b!726066 (= e!406569 (not true))))

(declare-fun e!406562 () Bool)

(assert (=> b!726066 e!406562))

(declare-fun res!487213 () Bool)

(assert (=> b!726066 (=> (not res!487213) (not e!406562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41003 (_ BitVec 32)) Bool)

(assert (=> b!726066 (= res!487213 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24770 0))(
  ( (Unit!24771) )
))
(declare-fun lt!321567 () Unit!24770)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41003 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24770)

(assert (=> b!726066 (= lt!321567 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726067 () Bool)

(declare-fun res!487216 () Bool)

(assert (=> b!726067 (=> (not res!487216) (not e!406565))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!726067 (= res!487216 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20040 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20040 a!3186))))))

(declare-fun b!726068 () Bool)

(declare-fun res!487215 () Bool)

(assert (=> b!726068 (=> (not res!487215) (not e!406565))))

(declare-datatypes ((List!13674 0))(
  ( (Nil!13671) (Cons!13670 (h!14727 (_ BitVec 64)) (t!19997 List!13674)) )
))
(declare-fun arrayNoDuplicates!0 (array!41003 (_ BitVec 32) List!13674) Bool)

(assert (=> b!726068 (= res!487215 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13671))))

(declare-fun b!726069 () Bool)

(declare-fun res!487222 () Bool)

(assert (=> b!726069 (=> (not res!487222) (not e!406567))))

(assert (=> b!726069 (= res!487222 (and (= (size!20040 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20040 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20040 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!726071 () Bool)

(assert (=> b!726071 (= e!406566 e!406569)))

(declare-fun res!487220 () Bool)

(assert (=> b!726071 (=> (not res!487220) (not e!406569))))

(declare-fun lt!321572 () array!41003)

(declare-fun lt!321570 () (_ BitVec 64))

(assert (=> b!726071 (= res!487220 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321570 mask!3328) lt!321570 lt!321572 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321570 lt!321572 mask!3328)))))

(assert (=> b!726071 (= lt!321570 (select (store (arr!19619 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!726071 (= lt!321572 (array!41004 (store (arr!19619 a!3186) i!1173 k!2102) (size!20040 a!3186)))))

(declare-fun b!726072 () Bool)

(declare-fun res!487224 () Bool)

(assert (=> b!726072 (=> (not res!487224) (not e!406565))))

(assert (=> b!726072 (= res!487224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!726073 () Bool)

(declare-fun e!406568 () Bool)

(assert (=> b!726073 (= e!406562 e!406568)))

(declare-fun res!487227 () Bool)

(assert (=> b!726073 (=> (not res!487227) (not e!406568))))

(declare-fun lt!321569 () SeekEntryResult!7226)

(assert (=> b!726073 (= res!487227 (= (seekEntryOrOpen!0 (select (arr!19619 a!3186) j!159) a!3186 mask!3328) lt!321569))))

(assert (=> b!726073 (= lt!321569 (Found!7226 j!159))))

(declare-fun e!406564 () Bool)

(declare-fun b!726074 () Bool)

(assert (=> b!726074 (= e!406564 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19619 a!3186) j!159) a!3186 mask!3328) lt!321568))))

(declare-fun b!726075 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41003 (_ BitVec 32)) SeekEntryResult!7226)

(assert (=> b!726075 (= e!406568 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19619 a!3186) j!159) a!3186 mask!3328) lt!321569))))

(declare-fun b!726076 () Bool)

(assert (=> b!726076 (= e!406564 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19619 a!3186) j!159) a!3186 mask!3328) (Found!7226 j!159)))))

(declare-fun b!726077 () Bool)

(declare-fun res!487219 () Bool)

(assert (=> b!726077 (=> (not res!487219) (not e!406567))))

(assert (=> b!726077 (= res!487219 (validKeyInArray!0 k!2102))))

(declare-fun res!487217 () Bool)

(assert (=> start!64532 (=> (not res!487217) (not e!406567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64532 (= res!487217 (validMask!0 mask!3328))))

(assert (=> start!64532 e!406567))

(assert (=> start!64532 true))

(declare-fun array_inv!15393 (array!41003) Bool)

(assert (=> start!64532 (array_inv!15393 a!3186)))

(declare-fun b!726070 () Bool)

(declare-fun res!487214 () Bool)

(assert (=> b!726070 (=> (not res!487214) (not e!406566))))

(assert (=> b!726070 (= res!487214 e!406564)))

(declare-fun c!79797 () Bool)

(assert (=> b!726070 (= c!79797 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!64532 res!487217) b!726069))

(assert (= (and b!726069 res!487222) b!726063))

(assert (= (and b!726063 res!487226) b!726077))

(assert (= (and b!726077 res!487219) b!726064))

(assert (= (and b!726064 res!487218) b!726065))

(assert (= (and b!726065 res!487221) b!726072))

(assert (= (and b!726072 res!487224) b!726068))

(assert (= (and b!726068 res!487215) b!726067))

(assert (= (and b!726067 res!487216) b!726061))

(assert (= (and b!726061 res!487225) b!726062))

(assert (= (and b!726062 res!487223) b!726070))

(assert (= (and b!726070 c!79797) b!726074))

(assert (= (and b!726070 (not c!79797)) b!726076))

(assert (= (and b!726070 res!487214) b!726071))

(assert (= (and b!726071 res!487220) b!726066))

(assert (= (and b!726066 res!487213) b!726073))

(assert (= (and b!726073 res!487227) b!726075))

(declare-fun m!680247 () Bool)

(assert (=> b!726077 m!680247))

(declare-fun m!680249 () Bool)

(assert (=> b!726068 m!680249))

(declare-fun m!680251 () Bool)

(assert (=> start!64532 m!680251))

(declare-fun m!680253 () Bool)

(assert (=> start!64532 m!680253))

(declare-fun m!680255 () Bool)

(assert (=> b!726061 m!680255))

(assert (=> b!726061 m!680255))

(declare-fun m!680257 () Bool)

(assert (=> b!726061 m!680257))

(assert (=> b!726061 m!680257))

(assert (=> b!726061 m!680255))

(declare-fun m!680259 () Bool)

(assert (=> b!726061 m!680259))

(declare-fun m!680261 () Bool)

(assert (=> b!726072 m!680261))

(declare-fun m!680263 () Bool)

(assert (=> b!726064 m!680263))

(assert (=> b!726073 m!680255))

(assert (=> b!726073 m!680255))

(declare-fun m!680265 () Bool)

(assert (=> b!726073 m!680265))

(declare-fun m!680267 () Bool)

(assert (=> b!726065 m!680267))

(declare-fun m!680269 () Bool)

(assert (=> b!726066 m!680269))

(declare-fun m!680271 () Bool)

(assert (=> b!726066 m!680271))

(declare-fun m!680273 () Bool)

(assert (=> b!726062 m!680273))

(declare-fun m!680275 () Bool)

(assert (=> b!726071 m!680275))

(declare-fun m!680277 () Bool)

(assert (=> b!726071 m!680277))

(declare-fun m!680279 () Bool)

(assert (=> b!726071 m!680279))

(declare-fun m!680281 () Bool)

(assert (=> b!726071 m!680281))

(declare-fun m!680283 () Bool)

(assert (=> b!726071 m!680283))

(assert (=> b!726071 m!680275))

(assert (=> b!726075 m!680255))

(assert (=> b!726075 m!680255))

(declare-fun m!680285 () Bool)

(assert (=> b!726075 m!680285))

(assert (=> b!726074 m!680255))

(assert (=> b!726074 m!680255))

(declare-fun m!680287 () Bool)

(assert (=> b!726074 m!680287))

(assert (=> b!726063 m!680255))

(assert (=> b!726063 m!680255))

(declare-fun m!680289 () Bool)

(assert (=> b!726063 m!680289))

(assert (=> b!726076 m!680255))

(assert (=> b!726076 m!680255))

(declare-fun m!680291 () Bool)

(assert (=> b!726076 m!680291))

(push 1)

