; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67374 () Bool)

(assert start!67374)

(declare-fun b!778897 () Bool)

(declare-fun e!433353 () Bool)

(declare-fun e!433359 () Bool)

(assert (=> b!778897 (= e!433353 (not e!433359))))

(declare-fun res!527071 () Bool)

(assert (=> b!778897 (=> res!527071 e!433359)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7975 0))(
  ( (MissingZero!7975 (index!34267 (_ BitVec 32))) (Found!7975 (index!34268 (_ BitVec 32))) (Intermediate!7975 (undefined!8787 Bool) (index!34269 (_ BitVec 32)) (x!65241 (_ BitVec 32))) (Undefined!7975) (MissingVacant!7975 (index!34270 (_ BitVec 32))) )
))
(declare-fun lt!347049 () SeekEntryResult!7975)

(declare-fun index!1321 () (_ BitVec 32))

(get-info :version)

(assert (=> b!778897 (= res!527071 (or (not ((_ is Intermediate!7975) lt!347049)) (bvslt x!1131 (x!65241 lt!347049)) (not (= x!1131 (x!65241 lt!347049))) (not (= index!1321 (index!34269 lt!347049)))))))

(declare-fun e!433354 () Bool)

(assert (=> b!778897 e!433354))

(declare-fun res!527074 () Bool)

(assert (=> b!778897 (=> (not res!527074) (not e!433354))))

(declare-datatypes ((array!42558 0))(
  ( (array!42559 (arr!20368 (Array (_ BitVec 32) (_ BitVec 64))) (size!20789 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42558)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42558 (_ BitVec 32)) Bool)

(assert (=> b!778897 (= res!527074 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26844 0))(
  ( (Unit!26845) )
))
(declare-fun lt!347051 () Unit!26844)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42558 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26844)

(assert (=> b!778897 (= lt!347051 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!778898 () Bool)

(declare-fun res!527069 () Bool)

(declare-fun e!433352 () Bool)

(assert (=> b!778898 (=> (not res!527069) (not e!433352))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!778898 (= res!527069 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20789 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20789 a!3186))))))

(declare-fun b!778899 () Bool)

(declare-fun e!433356 () Bool)

(assert (=> b!778899 (= e!433356 e!433353)))

(declare-fun res!527073 () Bool)

(assert (=> b!778899 (=> (not res!527073) (not e!433353))))

(declare-fun lt!347048 () SeekEntryResult!7975)

(assert (=> b!778899 (= res!527073 (= lt!347048 lt!347049))))

(declare-fun lt!347056 () array!42558)

(declare-fun lt!347055 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42558 (_ BitVec 32)) SeekEntryResult!7975)

(assert (=> b!778899 (= lt!347049 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347055 lt!347056 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!778899 (= lt!347048 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347055 mask!3328) lt!347055 lt!347056 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!778899 (= lt!347055 (select (store (arr!20368 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!778899 (= lt!347056 (array!42559 (store (arr!20368 a!3186) i!1173 k0!2102) (size!20789 a!3186)))))

(declare-fun b!778900 () Bool)

(declare-fun e!433360 () Bool)

(assert (=> b!778900 (= e!433354 e!433360)))

(declare-fun res!527075 () Bool)

(assert (=> b!778900 (=> (not res!527075) (not e!433360))))

(declare-fun lt!347054 () SeekEntryResult!7975)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42558 (_ BitVec 32)) SeekEntryResult!7975)

(assert (=> b!778900 (= res!527075 (= (seekEntryOrOpen!0 (select (arr!20368 a!3186) j!159) a!3186 mask!3328) lt!347054))))

(assert (=> b!778900 (= lt!347054 (Found!7975 j!159))))

(declare-fun b!778901 () Bool)

(declare-fun res!527076 () Bool)

(assert (=> b!778901 (=> (not res!527076) (not e!433352))))

(assert (=> b!778901 (= res!527076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!778902 () Bool)

(declare-fun res!527080 () Bool)

(assert (=> b!778902 (=> (not res!527080) (not e!433356))))

(assert (=> b!778902 (= res!527080 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20368 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!778903 () Bool)

(declare-fun res!527079 () Bool)

(assert (=> b!778903 (=> (not res!527079) (not e!433352))))

(declare-datatypes ((List!14423 0))(
  ( (Nil!14420) (Cons!14419 (h!15533 (_ BitVec 64)) (t!20746 List!14423)) )
))
(declare-fun arrayNoDuplicates!0 (array!42558 (_ BitVec 32) List!14423) Bool)

(assert (=> b!778903 (= res!527079 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14420))))

(declare-fun b!778904 () Bool)

(declare-fun e!433358 () Bool)

(assert (=> b!778904 (= e!433358 e!433352)))

(declare-fun res!527078 () Bool)

(assert (=> b!778904 (=> (not res!527078) (not e!433352))))

(declare-fun lt!347050 () SeekEntryResult!7975)

(assert (=> b!778904 (= res!527078 (or (= lt!347050 (MissingZero!7975 i!1173)) (= lt!347050 (MissingVacant!7975 i!1173))))))

(assert (=> b!778904 (= lt!347050 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!778905 () Bool)

(declare-fun res!527067 () Bool)

(assert (=> b!778905 (=> (not res!527067) (not e!433358))))

(declare-fun arrayContainsKey!0 (array!42558 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!778905 (= res!527067 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!778906 () Bool)

(declare-fun res!527070 () Bool)

(assert (=> b!778906 (=> (not res!527070) (not e!433358))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!778906 (= res!527070 (validKeyInArray!0 (select (arr!20368 a!3186) j!159)))))

(declare-fun b!778907 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42558 (_ BitVec 32)) SeekEntryResult!7975)

(assert (=> b!778907 (= e!433360 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20368 a!3186) j!159) a!3186 mask!3328) lt!347054))))

(declare-fun b!778908 () Bool)

(declare-fun e!433355 () Bool)

(assert (=> b!778908 (= e!433355 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20368 a!3186) j!159) a!3186 mask!3328) (Found!7975 j!159)))))

(declare-fun b!778909 () Bool)

(declare-fun lt!347053 () SeekEntryResult!7975)

(assert (=> b!778909 (= e!433355 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20368 a!3186) j!159) a!3186 mask!3328) lt!347053))))

(declare-fun b!778910 () Bool)

(assert (=> b!778910 (= e!433352 e!433356)))

(declare-fun res!527072 () Bool)

(assert (=> b!778910 (=> (not res!527072) (not e!433356))))

(assert (=> b!778910 (= res!527072 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20368 a!3186) j!159) mask!3328) (select (arr!20368 a!3186) j!159) a!3186 mask!3328) lt!347053))))

(assert (=> b!778910 (= lt!347053 (Intermediate!7975 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!778911 () Bool)

(assert (=> b!778911 (= e!433359 true)))

(declare-fun lt!347052 () SeekEntryResult!7975)

(assert (=> b!778911 (= lt!347052 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20368 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778912 () Bool)

(declare-fun res!527068 () Bool)

(assert (=> b!778912 (=> (not res!527068) (not e!433358))))

(assert (=> b!778912 (= res!527068 (validKeyInArray!0 k0!2102))))

(declare-fun b!778913 () Bool)

(declare-fun res!527077 () Bool)

(assert (=> b!778913 (=> (not res!527077) (not e!433358))))

(assert (=> b!778913 (= res!527077 (and (= (size!20789 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20789 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20789 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!778914 () Bool)

(declare-fun res!527065 () Bool)

(assert (=> b!778914 (=> (not res!527065) (not e!433356))))

(assert (=> b!778914 (= res!527065 e!433355)))

(declare-fun c!86319 () Bool)

(assert (=> b!778914 (= c!86319 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!527066 () Bool)

(assert (=> start!67374 (=> (not res!527066) (not e!433358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67374 (= res!527066 (validMask!0 mask!3328))))

(assert (=> start!67374 e!433358))

(assert (=> start!67374 true))

(declare-fun array_inv!16142 (array!42558) Bool)

(assert (=> start!67374 (array_inv!16142 a!3186)))

(assert (= (and start!67374 res!527066) b!778913))

(assert (= (and b!778913 res!527077) b!778906))

(assert (= (and b!778906 res!527070) b!778912))

(assert (= (and b!778912 res!527068) b!778905))

(assert (= (and b!778905 res!527067) b!778904))

(assert (= (and b!778904 res!527078) b!778901))

(assert (= (and b!778901 res!527076) b!778903))

(assert (= (and b!778903 res!527079) b!778898))

(assert (= (and b!778898 res!527069) b!778910))

(assert (= (and b!778910 res!527072) b!778902))

(assert (= (and b!778902 res!527080) b!778914))

(assert (= (and b!778914 c!86319) b!778909))

(assert (= (and b!778914 (not c!86319)) b!778908))

(assert (= (and b!778914 res!527065) b!778899))

(assert (= (and b!778899 res!527073) b!778897))

(assert (= (and b!778897 res!527074) b!778900))

(assert (= (and b!778900 res!527075) b!778907))

(assert (= (and b!778897 (not res!527071)) b!778911))

(declare-fun m!722537 () Bool)

(assert (=> b!778899 m!722537))

(declare-fun m!722539 () Bool)

(assert (=> b!778899 m!722539))

(declare-fun m!722541 () Bool)

(assert (=> b!778899 m!722541))

(declare-fun m!722543 () Bool)

(assert (=> b!778899 m!722543))

(declare-fun m!722545 () Bool)

(assert (=> b!778899 m!722545))

(assert (=> b!778899 m!722543))

(declare-fun m!722547 () Bool)

(assert (=> b!778901 m!722547))

(declare-fun m!722549 () Bool)

(assert (=> b!778906 m!722549))

(assert (=> b!778906 m!722549))

(declare-fun m!722551 () Bool)

(assert (=> b!778906 m!722551))

(declare-fun m!722553 () Bool)

(assert (=> b!778902 m!722553))

(declare-fun m!722555 () Bool)

(assert (=> start!67374 m!722555))

(declare-fun m!722557 () Bool)

(assert (=> start!67374 m!722557))

(assert (=> b!778907 m!722549))

(assert (=> b!778907 m!722549))

(declare-fun m!722559 () Bool)

(assert (=> b!778907 m!722559))

(assert (=> b!778900 m!722549))

(assert (=> b!778900 m!722549))

(declare-fun m!722561 () Bool)

(assert (=> b!778900 m!722561))

(assert (=> b!778909 m!722549))

(assert (=> b!778909 m!722549))

(declare-fun m!722563 () Bool)

(assert (=> b!778909 m!722563))

(declare-fun m!722565 () Bool)

(assert (=> b!778903 m!722565))

(declare-fun m!722567 () Bool)

(assert (=> b!778904 m!722567))

(assert (=> b!778908 m!722549))

(assert (=> b!778908 m!722549))

(declare-fun m!722569 () Bool)

(assert (=> b!778908 m!722569))

(declare-fun m!722571 () Bool)

(assert (=> b!778897 m!722571))

(declare-fun m!722573 () Bool)

(assert (=> b!778897 m!722573))

(assert (=> b!778911 m!722549))

(assert (=> b!778911 m!722549))

(assert (=> b!778911 m!722569))

(declare-fun m!722575 () Bool)

(assert (=> b!778912 m!722575))

(assert (=> b!778910 m!722549))

(assert (=> b!778910 m!722549))

(declare-fun m!722577 () Bool)

(assert (=> b!778910 m!722577))

(assert (=> b!778910 m!722577))

(assert (=> b!778910 m!722549))

(declare-fun m!722579 () Bool)

(assert (=> b!778910 m!722579))

(declare-fun m!722581 () Bool)

(assert (=> b!778905 m!722581))

(check-sat (not b!778905) (not b!778903) (not b!778907) (not b!778899) (not b!778908) (not b!778909) (not b!778906) (not start!67374) (not b!778900) (not b!778904) (not b!778911) (not b!778912) (not b!778901) (not b!778910) (not b!778897))
(check-sat)
