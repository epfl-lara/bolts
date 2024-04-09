; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67388 () Bool)

(assert start!67388)

(declare-fun b!779267 () Bool)

(declare-fun res!527403 () Bool)

(declare-fun e!433537 () Bool)

(assert (=> b!779267 (=> (not res!527403) (not e!433537))))

(declare-datatypes ((array!42572 0))(
  ( (array!42573 (arr!20375 (Array (_ BitVec 32) (_ BitVec 64))) (size!20796 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42572)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!779267 (= res!527403 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!779269 () Bool)

(declare-fun res!527402 () Bool)

(declare-fun e!433539 () Bool)

(assert (=> b!779269 (=> (not res!527402) (not e!433539))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!779269 (= res!527402 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20796 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20796 a!3186))))))

(declare-fun b!779270 () Bool)

(declare-fun res!527394 () Bool)

(declare-fun e!433533 () Bool)

(assert (=> b!779270 (=> (not res!527394) (not e!433533))))

(declare-fun e!433538 () Bool)

(assert (=> b!779270 (= res!527394 e!433538)))

(declare-fun c!86340 () Bool)

(assert (=> b!779270 (= c!86340 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!779271 () Bool)

(declare-fun res!527406 () Bool)

(assert (=> b!779271 (=> (not res!527406) (not e!433539))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42572 (_ BitVec 32)) Bool)

(assert (=> b!779271 (= res!527406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-datatypes ((SeekEntryResult!7982 0))(
  ( (MissingZero!7982 (index!34295 (_ BitVec 32))) (Found!7982 (index!34296 (_ BitVec 32))) (Intermediate!7982 (undefined!8794 Bool) (index!34297 (_ BitVec 32)) (x!65264 (_ BitVec 32))) (Undefined!7982) (MissingVacant!7982 (index!34298 (_ BitVec 32))) )
))
(declare-fun lt!347253 () SeekEntryResult!7982)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!779272 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42572 (_ BitVec 32)) SeekEntryResult!7982)

(assert (=> b!779272 (= e!433538 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20375 a!3186) j!159) a!3186 mask!3328) lt!347253))))

(declare-fun b!779273 () Bool)

(declare-fun lt!347248 () SeekEntryResult!7982)

(declare-fun e!433540 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42572 (_ BitVec 32)) SeekEntryResult!7982)

(assert (=> b!779273 (= e!433540 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20375 a!3186) j!159) a!3186 mask!3328) lt!347248))))

(declare-fun b!779274 () Bool)

(declare-fun lt!347247 () SeekEntryResult!7982)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun lt!347250 () SeekEntryResult!7982)

(declare-fun lt!347246 () (_ BitVec 64))

(declare-fun e!433534 () Bool)

(assert (=> b!779274 (= e!433534 (or (not (= lt!347250 lt!347248)) (= (select (store (arr!20375 a!3186) i!1173 k!2102) index!1321) lt!347246) (not (= (select (store (arr!20375 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!347247 lt!347250)))))

(assert (=> b!779274 (= lt!347250 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20375 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779275 () Bool)

(declare-fun e!433535 () Bool)

(assert (=> b!779275 (= e!433535 (not e!433534))))

(declare-fun res!527404 () Bool)

(assert (=> b!779275 (=> res!527404 e!433534)))

(declare-fun lt!347245 () SeekEntryResult!7982)

(assert (=> b!779275 (= res!527404 (or (not (is-Intermediate!7982 lt!347245)) (bvslt x!1131 (x!65264 lt!347245)) (not (= x!1131 (x!65264 lt!347245))) (not (= index!1321 (index!34297 lt!347245)))))))

(assert (=> b!779275 e!433540))

(declare-fun res!527396 () Bool)

(assert (=> b!779275 (=> (not res!527396) (not e!433540))))

(assert (=> b!779275 (= res!527396 (= lt!347247 lt!347248))))

(assert (=> b!779275 (= lt!347248 (Found!7982 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42572 (_ BitVec 32)) SeekEntryResult!7982)

(assert (=> b!779275 (= lt!347247 (seekEntryOrOpen!0 (select (arr!20375 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!779275 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26858 0))(
  ( (Unit!26859) )
))
(declare-fun lt!347251 () Unit!26858)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42572 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26858)

(assert (=> b!779275 (= lt!347251 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!779276 () Bool)

(assert (=> b!779276 (= e!433538 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20375 a!3186) j!159) a!3186 mask!3328) (Found!7982 j!159)))))

(declare-fun res!527398 () Bool)

(assert (=> start!67388 (=> (not res!527398) (not e!433537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67388 (= res!527398 (validMask!0 mask!3328))))

(assert (=> start!67388 e!433537))

(assert (=> start!67388 true))

(declare-fun array_inv!16149 (array!42572) Bool)

(assert (=> start!67388 (array_inv!16149 a!3186)))

(declare-fun b!779268 () Bool)

(declare-fun res!527397 () Bool)

(assert (=> b!779268 (=> (not res!527397) (not e!433537))))

(assert (=> b!779268 (= res!527397 (and (= (size!20796 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20796 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20796 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!779277 () Bool)

(declare-fun res!527393 () Bool)

(assert (=> b!779277 (=> (not res!527393) (not e!433537))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!779277 (= res!527393 (validKeyInArray!0 (select (arr!20375 a!3186) j!159)))))

(declare-fun b!779278 () Bool)

(assert (=> b!779278 (= e!433533 e!433535)))

(declare-fun res!527401 () Bool)

(assert (=> b!779278 (=> (not res!527401) (not e!433535))))

(declare-fun lt!347249 () SeekEntryResult!7982)

(assert (=> b!779278 (= res!527401 (= lt!347249 lt!347245))))

(declare-fun lt!347254 () array!42572)

(assert (=> b!779278 (= lt!347245 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347246 lt!347254 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!779278 (= lt!347249 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347246 mask!3328) lt!347246 lt!347254 mask!3328))))

(assert (=> b!779278 (= lt!347246 (select (store (arr!20375 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!779278 (= lt!347254 (array!42573 (store (arr!20375 a!3186) i!1173 k!2102) (size!20796 a!3186)))))

(declare-fun b!779279 () Bool)

(assert (=> b!779279 (= e!433539 e!433533)))

(declare-fun res!527400 () Bool)

(assert (=> b!779279 (=> (not res!527400) (not e!433533))))

(assert (=> b!779279 (= res!527400 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20375 a!3186) j!159) mask!3328) (select (arr!20375 a!3186) j!159) a!3186 mask!3328) lt!347253))))

(assert (=> b!779279 (= lt!347253 (Intermediate!7982 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!779280 () Bool)

(declare-fun res!527407 () Bool)

(assert (=> b!779280 (=> (not res!527407) (not e!433533))))

(assert (=> b!779280 (= res!527407 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20375 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779281 () Bool)

(declare-fun res!527395 () Bool)

(assert (=> b!779281 (=> (not res!527395) (not e!433537))))

(assert (=> b!779281 (= res!527395 (validKeyInArray!0 k!2102))))

(declare-fun b!779282 () Bool)

(declare-fun res!527399 () Bool)

(assert (=> b!779282 (=> (not res!527399) (not e!433539))))

(declare-datatypes ((List!14430 0))(
  ( (Nil!14427) (Cons!14426 (h!15540 (_ BitVec 64)) (t!20753 List!14430)) )
))
(declare-fun arrayNoDuplicates!0 (array!42572 (_ BitVec 32) List!14430) Bool)

(assert (=> b!779282 (= res!527399 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14427))))

(declare-fun b!779283 () Bool)

(assert (=> b!779283 (= e!433537 e!433539)))

(declare-fun res!527405 () Bool)

(assert (=> b!779283 (=> (not res!527405) (not e!433539))))

(declare-fun lt!347252 () SeekEntryResult!7982)

(assert (=> b!779283 (= res!527405 (or (= lt!347252 (MissingZero!7982 i!1173)) (= lt!347252 (MissingVacant!7982 i!1173))))))

(assert (=> b!779283 (= lt!347252 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!67388 res!527398) b!779268))

(assert (= (and b!779268 res!527397) b!779277))

(assert (= (and b!779277 res!527393) b!779281))

(assert (= (and b!779281 res!527395) b!779267))

(assert (= (and b!779267 res!527403) b!779283))

(assert (= (and b!779283 res!527405) b!779271))

(assert (= (and b!779271 res!527406) b!779282))

(assert (= (and b!779282 res!527399) b!779269))

(assert (= (and b!779269 res!527402) b!779279))

(assert (= (and b!779279 res!527400) b!779280))

(assert (= (and b!779280 res!527407) b!779270))

(assert (= (and b!779270 c!86340) b!779272))

(assert (= (and b!779270 (not c!86340)) b!779276))

(assert (= (and b!779270 res!527394) b!779278))

(assert (= (and b!779278 res!527401) b!779275))

(assert (= (and b!779275 res!527396) b!779273))

(assert (= (and b!779275 (not res!527404)) b!779274))

(declare-fun m!722863 () Bool)

(assert (=> b!779277 m!722863))

(assert (=> b!779277 m!722863))

(declare-fun m!722865 () Bool)

(assert (=> b!779277 m!722865))

(assert (=> b!779275 m!722863))

(assert (=> b!779275 m!722863))

(declare-fun m!722867 () Bool)

(assert (=> b!779275 m!722867))

(declare-fun m!722869 () Bool)

(assert (=> b!779275 m!722869))

(declare-fun m!722871 () Bool)

(assert (=> b!779275 m!722871))

(declare-fun m!722873 () Bool)

(assert (=> b!779280 m!722873))

(declare-fun m!722875 () Bool)

(assert (=> b!779281 m!722875))

(assert (=> b!779273 m!722863))

(assert (=> b!779273 m!722863))

(declare-fun m!722877 () Bool)

(assert (=> b!779273 m!722877))

(declare-fun m!722879 () Bool)

(assert (=> b!779267 m!722879))

(declare-fun m!722881 () Bool)

(assert (=> start!67388 m!722881))

(declare-fun m!722883 () Bool)

(assert (=> start!67388 m!722883))

(declare-fun m!722885 () Bool)

(assert (=> b!779283 m!722885))

(declare-fun m!722887 () Bool)

(assert (=> b!779274 m!722887))

(declare-fun m!722889 () Bool)

(assert (=> b!779274 m!722889))

(assert (=> b!779274 m!722863))

(assert (=> b!779274 m!722863))

(declare-fun m!722891 () Bool)

(assert (=> b!779274 m!722891))

(assert (=> b!779279 m!722863))

(assert (=> b!779279 m!722863))

(declare-fun m!722893 () Bool)

(assert (=> b!779279 m!722893))

(assert (=> b!779279 m!722893))

(assert (=> b!779279 m!722863))

(declare-fun m!722895 () Bool)

(assert (=> b!779279 m!722895))

(assert (=> b!779278 m!722887))

(declare-fun m!722897 () Bool)

(assert (=> b!779278 m!722897))

(declare-fun m!722899 () Bool)

(assert (=> b!779278 m!722899))

(declare-fun m!722901 () Bool)

(assert (=> b!779278 m!722901))

(assert (=> b!779278 m!722897))

(declare-fun m!722903 () Bool)

(assert (=> b!779278 m!722903))

(assert (=> b!779272 m!722863))

(assert (=> b!779272 m!722863))

(declare-fun m!722905 () Bool)

(assert (=> b!779272 m!722905))

(declare-fun m!722907 () Bool)

(assert (=> b!779282 m!722907))

(declare-fun m!722909 () Bool)

(assert (=> b!779271 m!722909))

(assert (=> b!779276 m!722863))

(assert (=> b!779276 m!722863))

(assert (=> b!779276 m!722891))

(push 1)

