; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64708 () Bool)

(assert start!64708)

(declare-fun b!729259 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41110 0))(
  ( (array!41111 (arr!19671 (Array (_ BitVec 32) (_ BitVec 64))) (size!20092 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41110)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!408193 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7278 0))(
  ( (MissingZero!7278 (index!31479 (_ BitVec 32))) (Found!7278 (index!31480 (_ BitVec 32))) (Intermediate!7278 (undefined!8090 Bool) (index!31481 (_ BitVec 32)) (x!62493 (_ BitVec 32))) (Undefined!7278) (MissingVacant!7278 (index!31482 (_ BitVec 32))) )
))
(declare-fun lt!323097 () SeekEntryResult!7278)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41110 (_ BitVec 32)) SeekEntryResult!7278)

(assert (=> b!729259 (= e!408193 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19671 a!3186) j!159) a!3186 mask!3328) lt!323097))))

(declare-fun b!729260 () Bool)

(declare-fun res!489821 () Bool)

(declare-fun e!408192 () Bool)

(assert (=> b!729260 (=> (not res!489821) (not e!408192))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!729260 (= res!489821 (and (= (size!20092 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20092 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20092 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!729261 () Bool)

(declare-fun e!408196 () Bool)

(declare-fun e!408197 () Bool)

(assert (=> b!729261 (= e!408196 e!408197)))

(declare-fun res!489816 () Bool)

(assert (=> b!729261 (=> (not res!489816) (not e!408197))))

(declare-fun lt!323100 () SeekEntryResult!7278)

(declare-fun lt!323103 () SeekEntryResult!7278)

(assert (=> b!729261 (= res!489816 (= lt!323100 lt!323103))))

(declare-fun lt!323104 () array!41110)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!323099 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41110 (_ BitVec 32)) SeekEntryResult!7278)

(assert (=> b!729261 (= lt!323103 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323099 lt!323104 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729261 (= lt!323100 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323099 mask!3328) lt!323099 lt!323104 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!729261 (= lt!323099 (select (store (arr!19671 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!729261 (= lt!323104 (array!41111 (store (arr!19671 a!3186) i!1173 k!2102) (size!20092 a!3186)))))

(declare-fun b!729262 () Bool)

(declare-fun res!489812 () Bool)

(assert (=> b!729262 (=> (not res!489812) (not e!408192))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729262 (= res!489812 (validKeyInArray!0 (select (arr!19671 a!3186) j!159)))))

(declare-fun b!729263 () Bool)

(declare-fun res!489820 () Bool)

(declare-fun e!408190 () Bool)

(assert (=> b!729263 (=> (not res!489820) (not e!408190))))

(assert (=> b!729263 (= res!489820 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20092 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20092 a!3186))))))

(declare-fun b!729264 () Bool)

(declare-fun res!489810 () Bool)

(assert (=> b!729264 (=> (not res!489810) (not e!408196))))

(declare-fun e!408195 () Bool)

(assert (=> b!729264 (= res!489810 e!408195)))

(declare-fun c!80100 () Bool)

(assert (=> b!729264 (= c!80100 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!729265 () Bool)

(declare-fun res!489808 () Bool)

(assert (=> b!729265 (=> (not res!489808) (not e!408192))))

(declare-fun arrayContainsKey!0 (array!41110 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729265 (= res!489808 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!729266 () Bool)

(declare-fun res!489807 () Bool)

(assert (=> b!729266 (=> (not res!489807) (not e!408196))))

(assert (=> b!729266 (= res!489807 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19671 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!729267 () Bool)

(declare-fun res!489822 () Bool)

(assert (=> b!729267 (=> (not res!489822) (not e!408190))))

(declare-datatypes ((List!13726 0))(
  ( (Nil!13723) (Cons!13722 (h!14782 (_ BitVec 64)) (t!20049 List!13726)) )
))
(declare-fun arrayNoDuplicates!0 (array!41110 (_ BitVec 32) List!13726) Bool)

(assert (=> b!729267 (= res!489822 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13723))))

(declare-fun b!729268 () Bool)

(declare-fun e!408191 () Bool)

(assert (=> b!729268 (= e!408191 e!408193)))

(declare-fun res!489809 () Bool)

(assert (=> b!729268 (=> (not res!489809) (not e!408193))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41110 (_ BitVec 32)) SeekEntryResult!7278)

(assert (=> b!729268 (= res!489809 (= (seekEntryOrOpen!0 (select (arr!19671 a!3186) j!159) a!3186 mask!3328) lt!323097))))

(assert (=> b!729268 (= lt!323097 (Found!7278 j!159))))

(declare-fun b!729269 () Bool)

(assert (=> b!729269 (= e!408195 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19671 a!3186) j!159) a!3186 mask!3328) (Found!7278 j!159)))))

(declare-fun b!729270 () Bool)

(declare-fun lt!323102 () SeekEntryResult!7278)

(assert (=> b!729270 (= e!408195 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19671 a!3186) j!159) a!3186 mask!3328) lt!323102))))

(declare-fun b!729258 () Bool)

(declare-fun res!489814 () Bool)

(assert (=> b!729258 (=> (not res!489814) (not e!408190))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41110 (_ BitVec 32)) Bool)

(assert (=> b!729258 (= res!489814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!489813 () Bool)

(assert (=> start!64708 (=> (not res!489813) (not e!408192))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64708 (= res!489813 (validMask!0 mask!3328))))

(assert (=> start!64708 e!408192))

(assert (=> start!64708 true))

(declare-fun array_inv!15445 (array!41110) Bool)

(assert (=> start!64708 (array_inv!15445 a!3186)))

(declare-fun b!729271 () Bool)

(declare-fun e!408194 () Bool)

(assert (=> b!729271 (= e!408197 (not e!408194))))

(declare-fun res!489811 () Bool)

(assert (=> b!729271 (=> res!489811 e!408194)))

(assert (=> b!729271 (= res!489811 (or (not (is-Intermediate!7278 lt!323103)) (bvsge x!1131 (x!62493 lt!323103))))))

(assert (=> b!729271 e!408191))

(declare-fun res!489815 () Bool)

(assert (=> b!729271 (=> (not res!489815) (not e!408191))))

(assert (=> b!729271 (= res!489815 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24874 0))(
  ( (Unit!24875) )
))
(declare-fun lt!323098 () Unit!24874)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41110 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24874)

(assert (=> b!729271 (= lt!323098 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!729272 () Bool)

(assert (=> b!729272 (= e!408192 e!408190)))

(declare-fun res!489819 () Bool)

(assert (=> b!729272 (=> (not res!489819) (not e!408190))))

(declare-fun lt!323105 () SeekEntryResult!7278)

(assert (=> b!729272 (= res!489819 (or (= lt!323105 (MissingZero!7278 i!1173)) (= lt!323105 (MissingVacant!7278 i!1173))))))

(assert (=> b!729272 (= lt!323105 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!729273 () Bool)

(declare-fun res!489817 () Bool)

(assert (=> b!729273 (=> (not res!489817) (not e!408192))))

(assert (=> b!729273 (= res!489817 (validKeyInArray!0 k!2102))))

(declare-fun b!729274 () Bool)

(assert (=> b!729274 (= e!408190 e!408196)))

(declare-fun res!489818 () Bool)

(assert (=> b!729274 (=> (not res!489818) (not e!408196))))

(assert (=> b!729274 (= res!489818 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19671 a!3186) j!159) mask!3328) (select (arr!19671 a!3186) j!159) a!3186 mask!3328) lt!323102))))

(assert (=> b!729274 (= lt!323102 (Intermediate!7278 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729275 () Bool)

(assert (=> b!729275 (= e!408194 true)))

(declare-fun lt!323101 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729275 (= lt!323101 (nextIndex!0 index!1321 x!1131 mask!3328))))

(assert (= (and start!64708 res!489813) b!729260))

(assert (= (and b!729260 res!489821) b!729262))

(assert (= (and b!729262 res!489812) b!729273))

(assert (= (and b!729273 res!489817) b!729265))

(assert (= (and b!729265 res!489808) b!729272))

(assert (= (and b!729272 res!489819) b!729258))

(assert (= (and b!729258 res!489814) b!729267))

(assert (= (and b!729267 res!489822) b!729263))

(assert (= (and b!729263 res!489820) b!729274))

(assert (= (and b!729274 res!489818) b!729266))

(assert (= (and b!729266 res!489807) b!729264))

(assert (= (and b!729264 c!80100) b!729270))

(assert (= (and b!729264 (not c!80100)) b!729269))

(assert (= (and b!729264 res!489810) b!729261))

(assert (= (and b!729261 res!489816) b!729271))

(assert (= (and b!729271 res!489815) b!729268))

(assert (= (and b!729268 res!489809) b!729259))

(assert (= (and b!729271 (not res!489811)) b!729275))

(declare-fun m!683005 () Bool)

(assert (=> b!729267 m!683005))

(declare-fun m!683007 () Bool)

(assert (=> start!64708 m!683007))

(declare-fun m!683009 () Bool)

(assert (=> start!64708 m!683009))

(declare-fun m!683011 () Bool)

(assert (=> b!729266 m!683011))

(declare-fun m!683013 () Bool)

(assert (=> b!729268 m!683013))

(assert (=> b!729268 m!683013))

(declare-fun m!683015 () Bool)

(assert (=> b!729268 m!683015))

(assert (=> b!729269 m!683013))

(assert (=> b!729269 m!683013))

(declare-fun m!683017 () Bool)

(assert (=> b!729269 m!683017))

(assert (=> b!729274 m!683013))

(assert (=> b!729274 m!683013))

(declare-fun m!683019 () Bool)

(assert (=> b!729274 m!683019))

(assert (=> b!729274 m!683019))

(assert (=> b!729274 m!683013))

(declare-fun m!683021 () Bool)

(assert (=> b!729274 m!683021))

(declare-fun m!683023 () Bool)

(assert (=> b!729273 m!683023))

(declare-fun m!683025 () Bool)

(assert (=> b!729261 m!683025))

(declare-fun m!683027 () Bool)

(assert (=> b!729261 m!683027))

(declare-fun m!683029 () Bool)

(assert (=> b!729261 m!683029))

(declare-fun m!683031 () Bool)

(assert (=> b!729261 m!683031))

(assert (=> b!729261 m!683025))

(declare-fun m!683033 () Bool)

(assert (=> b!729261 m!683033))

(assert (=> b!729270 m!683013))

(assert (=> b!729270 m!683013))

(declare-fun m!683035 () Bool)

(assert (=> b!729270 m!683035))

(declare-fun m!683037 () Bool)

(assert (=> b!729275 m!683037))

(declare-fun m!683039 () Bool)

(assert (=> b!729272 m!683039))

(declare-fun m!683041 () Bool)

(assert (=> b!729271 m!683041))

(declare-fun m!683043 () Bool)

(assert (=> b!729271 m!683043))

(declare-fun m!683045 () Bool)

(assert (=> b!729258 m!683045))

(assert (=> b!729259 m!683013))

(assert (=> b!729259 m!683013))

(declare-fun m!683047 () Bool)

(assert (=> b!729259 m!683047))

(declare-fun m!683049 () Bool)

(assert (=> b!729265 m!683049))

(assert (=> b!729262 m!683013))

(assert (=> b!729262 m!683013))

(declare-fun m!683051 () Bool)

(assert (=> b!729262 m!683051))

(push 1)

