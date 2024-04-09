; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64744 () Bool)

(assert start!64744)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41146 0))(
  ( (array!41147 (arr!19689 (Array (_ BitVec 32) (_ BitVec 64))) (size!20110 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41146)

(declare-datatypes ((SeekEntryResult!7296 0))(
  ( (MissingZero!7296 (index!31551 (_ BitVec 32))) (Found!7296 (index!31552 (_ BitVec 32))) (Intermediate!7296 (undefined!8108 Bool) (index!31553 (_ BitVec 32)) (x!62559 (_ BitVec 32))) (Undefined!7296) (MissingVacant!7296 (index!31554 (_ BitVec 32))) )
))
(declare-fun lt!323586 () SeekEntryResult!7296)

(declare-fun b!730231 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!408678 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41146 (_ BitVec 32)) SeekEntryResult!7296)

(assert (=> b!730231 (= e!408678 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19689 a!3186) j!159) a!3186 mask!3328) lt!323586))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!323590 () SeekEntryResult!7296)

(declare-fun e!408679 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!730232 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41146 (_ BitVec 32)) SeekEntryResult!7296)

(assert (=> b!730232 (= e!408679 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19689 a!3186) j!159) a!3186 mask!3328) lt!323590))))

(declare-fun b!730233 () Bool)

(declare-fun res!490677 () Bool)

(declare-fun e!408680 () Bool)

(assert (=> b!730233 (=> (not res!490677) (not e!408680))))

(assert (=> b!730233 (= res!490677 e!408679)))

(declare-fun c!80154 () Bool)

(assert (=> b!730233 (= c!80154 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!730234 () Bool)

(declare-fun res!490683 () Bool)

(declare-fun e!408682 () Bool)

(assert (=> b!730234 (=> (not res!490683) (not e!408682))))

(declare-datatypes ((List!13744 0))(
  ( (Nil!13741) (Cons!13740 (h!14800 (_ BitVec 64)) (t!20067 List!13744)) )
))
(declare-fun arrayNoDuplicates!0 (array!41146 (_ BitVec 32) List!13744) Bool)

(assert (=> b!730234 (= res!490683 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13741))))

(declare-fun b!730235 () Bool)

(declare-fun res!490675 () Bool)

(assert (=> b!730235 (=> (not res!490675) (not e!408682))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41146 (_ BitVec 32)) Bool)

(assert (=> b!730235 (= res!490675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!490673 () Bool)

(declare-fun e!408684 () Bool)

(assert (=> start!64744 (=> (not res!490673) (not e!408684))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64744 (= res!490673 (validMask!0 mask!3328))))

(assert (=> start!64744 e!408684))

(assert (=> start!64744 true))

(declare-fun array_inv!15463 (array!41146) Bool)

(assert (=> start!64744 (array_inv!15463 a!3186)))

(declare-fun b!730230 () Bool)

(declare-fun res!490686 () Bool)

(assert (=> b!730230 (=> (not res!490686) (not e!408684))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730230 (= res!490686 (validKeyInArray!0 (select (arr!19689 a!3186) j!159)))))

(declare-fun b!730236 () Bool)

(assert (=> b!730236 (= e!408682 e!408680)))

(declare-fun res!490685 () Bool)

(assert (=> b!730236 (=> (not res!490685) (not e!408680))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730236 (= res!490685 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19689 a!3186) j!159) mask!3328) (select (arr!19689 a!3186) j!159) a!3186 mask!3328) lt!323590))))

(assert (=> b!730236 (= lt!323590 (Intermediate!7296 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!730237 () Bool)

(declare-fun res!490680 () Bool)

(assert (=> b!730237 (=> (not res!490680) (not e!408684))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41146 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730237 (= res!490680 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!730238 () Bool)

(declare-fun e!408681 () Bool)

(assert (=> b!730238 (= e!408680 e!408681)))

(declare-fun res!490678 () Bool)

(assert (=> b!730238 (=> (not res!490678) (not e!408681))))

(declare-fun lt!323589 () SeekEntryResult!7296)

(declare-fun lt!323583 () SeekEntryResult!7296)

(assert (=> b!730238 (= res!490678 (= lt!323589 lt!323583))))

(declare-fun lt!323585 () array!41146)

(declare-fun lt!323587 () (_ BitVec 64))

(assert (=> b!730238 (= lt!323583 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323587 lt!323585 mask!3328))))

(assert (=> b!730238 (= lt!323589 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323587 mask!3328) lt!323587 lt!323585 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!730238 (= lt!323587 (select (store (arr!19689 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!730238 (= lt!323585 (array!41147 (store (arr!19689 a!3186) i!1173 k!2102) (size!20110 a!3186)))))

(declare-fun b!730239 () Bool)

(declare-fun res!490671 () Bool)

(assert (=> b!730239 (=> (not res!490671) (not e!408682))))

(assert (=> b!730239 (= res!490671 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20110 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20110 a!3186))))))

(declare-fun b!730240 () Bool)

(declare-fun e!408677 () Bool)

(assert (=> b!730240 (= e!408681 (not e!408677))))

(declare-fun res!490679 () Bool)

(assert (=> b!730240 (=> res!490679 e!408677)))

(assert (=> b!730240 (= res!490679 (or (not (is-Intermediate!7296 lt!323583)) (bvsge x!1131 (x!62559 lt!323583))))))

(declare-fun e!408683 () Bool)

(assert (=> b!730240 e!408683))

(declare-fun res!490676 () Bool)

(assert (=> b!730240 (=> (not res!490676) (not e!408683))))

(assert (=> b!730240 (= res!490676 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24910 0))(
  ( (Unit!24911) )
))
(declare-fun lt!323584 () Unit!24910)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41146 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24910)

(assert (=> b!730240 (= lt!323584 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!730241 () Bool)

(assert (=> b!730241 (= e!408683 e!408678)))

(declare-fun res!490672 () Bool)

(assert (=> b!730241 (=> (not res!490672) (not e!408678))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41146 (_ BitVec 32)) SeekEntryResult!7296)

(assert (=> b!730241 (= res!490672 (= (seekEntryOrOpen!0 (select (arr!19689 a!3186) j!159) a!3186 mask!3328) lt!323586))))

(assert (=> b!730241 (= lt!323586 (Found!7296 j!159))))

(declare-fun b!730242 () Bool)

(declare-fun res!490684 () Bool)

(assert (=> b!730242 (=> (not res!490684) (not e!408684))))

(assert (=> b!730242 (= res!490684 (and (= (size!20110 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20110 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20110 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!730243 () Bool)

(declare-fun res!490681 () Bool)

(assert (=> b!730243 (=> (not res!490681) (not e!408680))))

(assert (=> b!730243 (= res!490681 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19689 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!730244 () Bool)

(assert (=> b!730244 (= e!408684 e!408682)))

(declare-fun res!490674 () Bool)

(assert (=> b!730244 (=> (not res!490674) (not e!408682))))

(declare-fun lt!323588 () SeekEntryResult!7296)

(assert (=> b!730244 (= res!490674 (or (= lt!323588 (MissingZero!7296 i!1173)) (= lt!323588 (MissingVacant!7296 i!1173))))))

(assert (=> b!730244 (= lt!323588 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!730245 () Bool)

(assert (=> b!730245 (= e!408677 true)))

(declare-fun lt!323591 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730245 (= lt!323591 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730246 () Bool)

(assert (=> b!730246 (= e!408679 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19689 a!3186) j!159) a!3186 mask!3328) (Found!7296 j!159)))))

(declare-fun b!730247 () Bool)

(declare-fun res!490682 () Bool)

(assert (=> b!730247 (=> (not res!490682) (not e!408684))))

(assert (=> b!730247 (= res!490682 (validKeyInArray!0 k!2102))))

(assert (= (and start!64744 res!490673) b!730242))

(assert (= (and b!730242 res!490684) b!730230))

(assert (= (and b!730230 res!490686) b!730247))

(assert (= (and b!730247 res!490682) b!730237))

(assert (= (and b!730237 res!490680) b!730244))

(assert (= (and b!730244 res!490674) b!730235))

(assert (= (and b!730235 res!490675) b!730234))

(assert (= (and b!730234 res!490683) b!730239))

(assert (= (and b!730239 res!490671) b!730236))

(assert (= (and b!730236 res!490685) b!730243))

(assert (= (and b!730243 res!490681) b!730233))

(assert (= (and b!730233 c!80154) b!730232))

(assert (= (and b!730233 (not c!80154)) b!730246))

(assert (= (and b!730233 res!490677) b!730238))

(assert (= (and b!730238 res!490678) b!730240))

(assert (= (and b!730240 res!490676) b!730241))

(assert (= (and b!730241 res!490672) b!730231))

(assert (= (and b!730240 (not res!490679)) b!730245))

(declare-fun m!683869 () Bool)

(assert (=> b!730246 m!683869))

(assert (=> b!730246 m!683869))

(declare-fun m!683871 () Bool)

(assert (=> b!730246 m!683871))

(declare-fun m!683873 () Bool)

(assert (=> b!730237 m!683873))

(declare-fun m!683875 () Bool)

(assert (=> b!730238 m!683875))

(declare-fun m!683877 () Bool)

(assert (=> b!730238 m!683877))

(declare-fun m!683879 () Bool)

(assert (=> b!730238 m!683879))

(declare-fun m!683881 () Bool)

(assert (=> b!730238 m!683881))

(assert (=> b!730238 m!683877))

(declare-fun m!683883 () Bool)

(assert (=> b!730238 m!683883))

(declare-fun m!683885 () Bool)

(assert (=> b!730243 m!683885))

(assert (=> b!730231 m!683869))

(assert (=> b!730231 m!683869))

(declare-fun m!683887 () Bool)

(assert (=> b!730231 m!683887))

(declare-fun m!683889 () Bool)

(assert (=> b!730235 m!683889))

(declare-fun m!683891 () Bool)

(assert (=> b!730234 m!683891))

(assert (=> b!730232 m!683869))

(assert (=> b!730232 m!683869))

(declare-fun m!683893 () Bool)

(assert (=> b!730232 m!683893))

(assert (=> b!730230 m!683869))

(assert (=> b!730230 m!683869))

(declare-fun m!683895 () Bool)

(assert (=> b!730230 m!683895))

(assert (=> b!730241 m!683869))

(assert (=> b!730241 m!683869))

(declare-fun m!683897 () Bool)

(assert (=> b!730241 m!683897))

(declare-fun m!683899 () Bool)

(assert (=> b!730247 m!683899))

(declare-fun m!683901 () Bool)

(assert (=> start!64744 m!683901))

(declare-fun m!683903 () Bool)

(assert (=> start!64744 m!683903))

(declare-fun m!683905 () Bool)

(assert (=> b!730240 m!683905))

(declare-fun m!683907 () Bool)

(assert (=> b!730240 m!683907))

(assert (=> b!730236 m!683869))

(assert (=> b!730236 m!683869))

(declare-fun m!683909 () Bool)

(assert (=> b!730236 m!683909))

(assert (=> b!730236 m!683909))

(assert (=> b!730236 m!683869))

(declare-fun m!683911 () Bool)

(assert (=> b!730236 m!683911))

(declare-fun m!683913 () Bool)

(assert (=> b!730245 m!683913))

(declare-fun m!683915 () Bool)

(assert (=> b!730244 m!683915))

(push 1)

