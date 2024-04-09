; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65426 () Bool)

(assert start!65426)

(declare-fun b!744318 () Bool)

(declare-fun e!415818 () Bool)

(declare-fun e!415821 () Bool)

(assert (=> b!744318 (= e!415818 e!415821)))

(declare-fun res!501454 () Bool)

(assert (=> b!744318 (=> (not res!501454) (not e!415821))))

(declare-datatypes ((array!41552 0))(
  ( (array!41553 (arr!19886 (Array (_ BitVec 32) (_ BitVec 64))) (size!20307 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41552)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7493 0))(
  ( (MissingZero!7493 (index!32339 (_ BitVec 32))) (Found!7493 (index!32340 (_ BitVec 32))) (Intermediate!7493 (undefined!8305 Bool) (index!32341 (_ BitVec 32)) (x!63324 (_ BitVec 32))) (Undefined!7493) (MissingVacant!7493 (index!32342 (_ BitVec 32))) )
))
(declare-fun lt!330686 () SeekEntryResult!7493)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41552 (_ BitVec 32)) SeekEntryResult!7493)

(assert (=> b!744318 (= res!501454 (= (seekEntryOrOpen!0 (select (arr!19886 a!3186) j!159) a!3186 mask!3328) lt!330686))))

(assert (=> b!744318 (= lt!330686 (Found!7493 j!159))))

(declare-fun b!744319 () Bool)

(declare-fun res!501445 () Bool)

(declare-fun e!415815 () Bool)

(assert (=> b!744319 (=> (not res!501445) (not e!415815))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744319 (= res!501445 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!744320 () Bool)

(declare-fun e!415819 () Bool)

(declare-fun e!415817 () Bool)

(assert (=> b!744320 (= e!415819 e!415817)))

(declare-fun res!501450 () Bool)

(assert (=> b!744320 (=> (not res!501450) (not e!415817))))

(declare-fun lt!330684 () SeekEntryResult!7493)

(declare-fun lt!330678 () SeekEntryResult!7493)

(assert (=> b!744320 (= res!501450 (= lt!330684 lt!330678))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!330680 () (_ BitVec 64))

(declare-fun lt!330682 () array!41552)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41552 (_ BitVec 32)) SeekEntryResult!7493)

(assert (=> b!744320 (= lt!330678 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330680 lt!330682 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744320 (= lt!330684 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330680 mask!3328) lt!330680 lt!330682 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!744320 (= lt!330680 (select (store (arr!19886 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!744320 (= lt!330682 (array!41553 (store (arr!19886 a!3186) i!1173 k!2102) (size!20307 a!3186)))))

(declare-fun b!744321 () Bool)

(declare-fun e!415820 () Bool)

(assert (=> b!744321 (= e!415820 e!415819)))

(declare-fun res!501446 () Bool)

(assert (=> b!744321 (=> (not res!501446) (not e!415819))))

(declare-fun lt!330681 () SeekEntryResult!7493)

(assert (=> b!744321 (= res!501446 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19886 a!3186) j!159) mask!3328) (select (arr!19886 a!3186) j!159) a!3186 mask!3328) lt!330681))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!744321 (= lt!330681 (Intermediate!7493 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!744322 () Bool)

(declare-fun res!501456 () Bool)

(assert (=> b!744322 (=> (not res!501456) (not e!415819))))

(assert (=> b!744322 (= res!501456 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19886 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!744323 () Bool)

(assert (=> b!744323 (= e!415815 e!415820)))

(declare-fun res!501447 () Bool)

(assert (=> b!744323 (=> (not res!501447) (not e!415820))))

(declare-fun lt!330683 () SeekEntryResult!7493)

(assert (=> b!744323 (= res!501447 (or (= lt!330683 (MissingZero!7493 i!1173)) (= lt!330683 (MissingVacant!7493 i!1173))))))

(assert (=> b!744323 (= lt!330683 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!744324 () Bool)

(declare-fun e!415816 () Bool)

(assert (=> b!744324 (= e!415816 true)))

(declare-fun lt!330685 () SeekEntryResult!7493)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41552 (_ BitVec 32)) SeekEntryResult!7493)

(assert (=> b!744324 (= lt!330685 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19886 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!744325 () Bool)

(declare-fun res!501453 () Bool)

(assert (=> b!744325 (=> (not res!501453) (not e!415820))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41552 (_ BitVec 32)) Bool)

(assert (=> b!744325 (= res!501453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!744326 () Bool)

(assert (=> b!744326 (= e!415821 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19886 a!3186) j!159) a!3186 mask!3328) lt!330686))))

(declare-fun b!744327 () Bool)

(declare-fun res!501441 () Bool)

(assert (=> b!744327 (=> (not res!501441) (not e!415815))))

(assert (=> b!744327 (= res!501441 (and (= (size!20307 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20307 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20307 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!744328 () Bool)

(declare-fun res!501452 () Bool)

(assert (=> b!744328 (=> (not res!501452) (not e!415815))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744328 (= res!501452 (validKeyInArray!0 (select (arr!19886 a!3186) j!159)))))

(declare-fun b!744329 () Bool)

(assert (=> b!744329 (= e!415817 (not e!415816))))

(declare-fun res!501448 () Bool)

(assert (=> b!744329 (=> res!501448 e!415816)))

(assert (=> b!744329 (= res!501448 (or (not (is-Intermediate!7493 lt!330678)) (bvslt x!1131 (x!63324 lt!330678)) (not (= x!1131 (x!63324 lt!330678))) (not (= index!1321 (index!32341 lt!330678)))))))

(assert (=> b!744329 e!415818))

(declare-fun res!501451 () Bool)

(assert (=> b!744329 (=> (not res!501451) (not e!415818))))

(assert (=> b!744329 (= res!501451 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25466 0))(
  ( (Unit!25467) )
))
(declare-fun lt!330679 () Unit!25466)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41552 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25466)

(assert (=> b!744329 (= lt!330679 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!501443 () Bool)

(assert (=> start!65426 (=> (not res!501443) (not e!415815))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65426 (= res!501443 (validMask!0 mask!3328))))

(assert (=> start!65426 e!415815))

(assert (=> start!65426 true))

(declare-fun array_inv!15660 (array!41552) Bool)

(assert (=> start!65426 (array_inv!15660 a!3186)))

(declare-fun b!744330 () Bool)

(declare-fun e!415814 () Bool)

(assert (=> b!744330 (= e!415814 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19886 a!3186) j!159) a!3186 mask!3328) lt!330681))))

(declare-fun b!744331 () Bool)

(assert (=> b!744331 (= e!415814 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19886 a!3186) j!159) a!3186 mask!3328) (Found!7493 j!159)))))

(declare-fun b!744332 () Bool)

(declare-fun res!501442 () Bool)

(assert (=> b!744332 (=> (not res!501442) (not e!415820))))

(assert (=> b!744332 (= res!501442 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20307 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20307 a!3186))))))

(declare-fun b!744333 () Bool)

(declare-fun res!501455 () Bool)

(assert (=> b!744333 (=> (not res!501455) (not e!415819))))

(assert (=> b!744333 (= res!501455 e!415814)))

(declare-fun c!81819 () Bool)

(assert (=> b!744333 (= c!81819 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!744334 () Bool)

(declare-fun res!501449 () Bool)

(assert (=> b!744334 (=> (not res!501449) (not e!415820))))

(declare-datatypes ((List!13941 0))(
  ( (Nil!13938) (Cons!13937 (h!15009 (_ BitVec 64)) (t!20264 List!13941)) )
))
(declare-fun arrayNoDuplicates!0 (array!41552 (_ BitVec 32) List!13941) Bool)

(assert (=> b!744334 (= res!501449 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13938))))

(declare-fun b!744335 () Bool)

(declare-fun res!501444 () Bool)

(assert (=> b!744335 (=> (not res!501444) (not e!415815))))

(assert (=> b!744335 (= res!501444 (validKeyInArray!0 k!2102))))

(assert (= (and start!65426 res!501443) b!744327))

(assert (= (and b!744327 res!501441) b!744328))

(assert (= (and b!744328 res!501452) b!744335))

(assert (= (and b!744335 res!501444) b!744319))

(assert (= (and b!744319 res!501445) b!744323))

(assert (= (and b!744323 res!501447) b!744325))

(assert (= (and b!744325 res!501453) b!744334))

(assert (= (and b!744334 res!501449) b!744332))

(assert (= (and b!744332 res!501442) b!744321))

(assert (= (and b!744321 res!501446) b!744322))

(assert (= (and b!744322 res!501456) b!744333))

(assert (= (and b!744333 c!81819) b!744330))

(assert (= (and b!744333 (not c!81819)) b!744331))

(assert (= (and b!744333 res!501455) b!744320))

(assert (= (and b!744320 res!501450) b!744329))

(assert (= (and b!744329 res!501451) b!744318))

(assert (= (and b!744318 res!501454) b!744326))

(assert (= (and b!744329 (not res!501448)) b!744324))

(declare-fun m!694947 () Bool)

(assert (=> b!744321 m!694947))

(assert (=> b!744321 m!694947))

(declare-fun m!694949 () Bool)

(assert (=> b!744321 m!694949))

(assert (=> b!744321 m!694949))

(assert (=> b!744321 m!694947))

(declare-fun m!694951 () Bool)

(assert (=> b!744321 m!694951))

(declare-fun m!694953 () Bool)

(assert (=> b!744335 m!694953))

(declare-fun m!694955 () Bool)

(assert (=> b!744334 m!694955))

(assert (=> b!744318 m!694947))

(assert (=> b!744318 m!694947))

(declare-fun m!694957 () Bool)

(assert (=> b!744318 m!694957))

(declare-fun m!694959 () Bool)

(assert (=> b!744325 m!694959))

(declare-fun m!694961 () Bool)

(assert (=> b!744320 m!694961))

(declare-fun m!694963 () Bool)

(assert (=> b!744320 m!694963))

(declare-fun m!694965 () Bool)

(assert (=> b!744320 m!694965))

(declare-fun m!694967 () Bool)

(assert (=> b!744320 m!694967))

(assert (=> b!744320 m!694961))

(declare-fun m!694969 () Bool)

(assert (=> b!744320 m!694969))

(declare-fun m!694971 () Bool)

(assert (=> b!744319 m!694971))

(assert (=> b!744328 m!694947))

(assert (=> b!744328 m!694947))

(declare-fun m!694973 () Bool)

(assert (=> b!744328 m!694973))

(assert (=> b!744330 m!694947))

(assert (=> b!744330 m!694947))

(declare-fun m!694975 () Bool)

(assert (=> b!744330 m!694975))

(declare-fun m!694977 () Bool)

(assert (=> b!744323 m!694977))

(declare-fun m!694979 () Bool)

(assert (=> b!744329 m!694979))

(declare-fun m!694981 () Bool)

(assert (=> b!744329 m!694981))

(assert (=> b!744324 m!694947))

(assert (=> b!744324 m!694947))

(declare-fun m!694983 () Bool)

(assert (=> b!744324 m!694983))

(assert (=> b!744331 m!694947))

(assert (=> b!744331 m!694947))

(assert (=> b!744331 m!694983))

(declare-fun m!694985 () Bool)

(assert (=> start!65426 m!694985))

(declare-fun m!694987 () Bool)

(assert (=> start!65426 m!694987))

(assert (=> b!744326 m!694947))

(assert (=> b!744326 m!694947))

(declare-fun m!694989 () Bool)

(assert (=> b!744326 m!694989))

(declare-fun m!694991 () Bool)

(assert (=> b!744322 m!694991))

(push 1)

