; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66808 () Bool)

(assert start!66808)

(declare-fun b!769985 () Bool)

(declare-fun e!428741 () Bool)

(declare-fun e!428742 () Bool)

(assert (=> b!769985 (= e!428741 e!428742)))

(declare-fun res!520924 () Bool)

(assert (=> b!769985 (=> (not res!520924) (not e!428742))))

(declare-datatypes ((SeekEntryResult!7866 0))(
  ( (MissingZero!7866 (index!33831 (_ BitVec 32))) (Found!7866 (index!33832 (_ BitVec 32))) (Intermediate!7866 (undefined!8678 Bool) (index!33833 (_ BitVec 32)) (x!64790 (_ BitVec 32))) (Undefined!7866) (MissingVacant!7866 (index!33834 (_ BitVec 32))) )
))
(declare-fun lt!342693 () SeekEntryResult!7866)

(declare-fun lt!342688 () SeekEntryResult!7866)

(assert (=> b!769985 (= res!520924 (= lt!342693 lt!342688))))

(declare-datatypes ((array!42325 0))(
  ( (array!42326 (arr!20259 (Array (_ BitVec 32) (_ BitVec 64))) (size!20680 (_ BitVec 32))) )
))
(declare-fun lt!342694 () array!42325)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!342685 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42325 (_ BitVec 32)) SeekEntryResult!7866)

(assert (=> b!769985 (= lt!342688 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342685 lt!342694 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769985 (= lt!342693 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342685 mask!3328) lt!342685 lt!342694 mask!3328))))

(declare-fun a!3186 () array!42325)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!769985 (= lt!342685 (select (store (arr!20259 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!769985 (= lt!342694 (array!42326 (store (arr!20259 a!3186) i!1173 k!2102) (size!20680 a!3186)))))

(declare-fun b!769987 () Bool)

(declare-fun res!520935 () Bool)

(declare-fun e!428748 () Bool)

(assert (=> b!769987 (=> (not res!520935) (not e!428748))))

(declare-datatypes ((List!14314 0))(
  ( (Nil!14311) (Cons!14310 (h!15409 (_ BitVec 64)) (t!20637 List!14314)) )
))
(declare-fun arrayNoDuplicates!0 (array!42325 (_ BitVec 32) List!14314) Bool)

(assert (=> b!769987 (= res!520935 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14311))))

(declare-fun b!769988 () Bool)

(declare-fun e!428746 () Bool)

(assert (=> b!769988 (= e!428742 (not e!428746))))

(declare-fun res!520939 () Bool)

(assert (=> b!769988 (=> res!520939 e!428746)))

(assert (=> b!769988 (= res!520939 (or (not (is-Intermediate!7866 lt!342688)) (bvsge x!1131 (x!64790 lt!342688))))))

(declare-fun e!428745 () Bool)

(assert (=> b!769988 e!428745))

(declare-fun res!520930 () Bool)

(assert (=> b!769988 (=> (not res!520930) (not e!428745))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42325 (_ BitVec 32)) Bool)

(assert (=> b!769988 (= res!520930 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26500 0))(
  ( (Unit!26501) )
))
(declare-fun lt!342691 () Unit!26500)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42325 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26500)

(assert (=> b!769988 (= lt!342691 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!769989 () Bool)

(declare-fun res!520926 () Bool)

(declare-fun e!428743 () Bool)

(assert (=> b!769989 (=> (not res!520926) (not e!428743))))

(assert (=> b!769989 (= res!520926 (and (= (size!20680 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20680 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20680 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!769990 () Bool)

(declare-fun e!428749 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42325 (_ BitVec 32)) SeekEntryResult!7866)

(assert (=> b!769990 (= e!428749 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20259 a!3186) j!159) a!3186 mask!3328) (Found!7866 j!159)))))

(declare-fun b!769991 () Bool)

(declare-fun res!520928 () Bool)

(assert (=> b!769991 (=> (not res!520928) (not e!428743))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!769991 (= res!520928 (validKeyInArray!0 k!2102))))

(declare-fun b!769992 () Bool)

(declare-fun res!520932 () Bool)

(assert (=> b!769992 (=> (not res!520932) (not e!428748))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!769992 (= res!520932 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20680 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20680 a!3186))))))

(declare-fun b!769993 () Bool)

(assert (=> b!769993 (= e!428743 e!428748)))

(declare-fun res!520929 () Bool)

(assert (=> b!769993 (=> (not res!520929) (not e!428748))))

(declare-fun lt!342692 () SeekEntryResult!7866)

(assert (=> b!769993 (= res!520929 (or (= lt!342692 (MissingZero!7866 i!1173)) (= lt!342692 (MissingVacant!7866 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42325 (_ BitVec 32)) SeekEntryResult!7866)

(assert (=> b!769993 (= lt!342692 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun lt!342684 () SeekEntryResult!7866)

(declare-fun b!769994 () Bool)

(assert (=> b!769994 (= e!428749 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20259 a!3186) j!159) a!3186 mask!3328) lt!342684))))

(declare-fun b!769995 () Bool)

(declare-fun res!520925 () Bool)

(assert (=> b!769995 (=> (not res!520925) (not e!428741))))

(assert (=> b!769995 (= res!520925 e!428749)))

(declare-fun c!84926 () Bool)

(assert (=> b!769995 (= c!84926 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!769996 () Bool)

(declare-fun res!520938 () Bool)

(assert (=> b!769996 (=> (not res!520938) (not e!428743))))

(declare-fun arrayContainsKey!0 (array!42325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!769996 (= res!520938 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!769997 () Bool)

(assert (=> b!769997 (= e!428746 true)))

(declare-fun lt!342690 () Unit!26500)

(declare-fun e!428740 () Unit!26500)

(assert (=> b!769997 (= lt!342690 e!428740)))

(declare-fun c!84927 () Bool)

(assert (=> b!769997 (= c!84927 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!342689 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769997 (= lt!342689 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun lt!342686 () SeekEntryResult!7866)

(declare-fun e!428744 () Bool)

(declare-fun b!769986 () Bool)

(assert (=> b!769986 (= e!428744 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20259 a!3186) j!159) a!3186 mask!3328) lt!342686))))

(declare-fun res!520931 () Bool)

(assert (=> start!66808 (=> (not res!520931) (not e!428743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66808 (= res!520931 (validMask!0 mask!3328))))

(assert (=> start!66808 e!428743))

(assert (=> start!66808 true))

(declare-fun array_inv!16033 (array!42325) Bool)

(assert (=> start!66808 (array_inv!16033 a!3186)))

(declare-fun b!769998 () Bool)

(declare-fun res!520927 () Bool)

(assert (=> b!769998 (=> (not res!520927) (not e!428743))))

(assert (=> b!769998 (= res!520927 (validKeyInArray!0 (select (arr!20259 a!3186) j!159)))))

(declare-fun b!769999 () Bool)

(assert (=> b!769999 (= e!428748 e!428741)))

(declare-fun res!520934 () Bool)

(assert (=> b!769999 (=> (not res!520934) (not e!428741))))

(assert (=> b!769999 (= res!520934 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20259 a!3186) j!159) mask!3328) (select (arr!20259 a!3186) j!159) a!3186 mask!3328) lt!342684))))

(assert (=> b!769999 (= lt!342684 (Intermediate!7866 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!770000 () Bool)

(declare-fun res!520936 () Bool)

(assert (=> b!770000 (=> (not res!520936) (not e!428741))))

(assert (=> b!770000 (= res!520936 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20259 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!770001 () Bool)

(declare-fun res!520937 () Bool)

(assert (=> b!770001 (=> (not res!520937) (not e!428748))))

(assert (=> b!770001 (= res!520937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!770002 () Bool)

(declare-fun Unit!26502 () Unit!26500)

(assert (=> b!770002 (= e!428740 Unit!26502)))

(assert (=> b!770002 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342689 (select (arr!20259 a!3186) j!159) a!3186 mask!3328) lt!342684)))

(declare-fun b!770003 () Bool)

(declare-fun Unit!26503 () Unit!26500)

(assert (=> b!770003 (= e!428740 Unit!26503)))

(declare-fun lt!342687 () SeekEntryResult!7866)

(assert (=> b!770003 (= lt!342687 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20259 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!770003 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342689 resIntermediateIndex!5 (select (arr!20259 a!3186) j!159) a!3186 mask!3328) (Found!7866 j!159))))

(declare-fun b!770004 () Bool)

(assert (=> b!770004 (= e!428745 e!428744)))

(declare-fun res!520933 () Bool)

(assert (=> b!770004 (=> (not res!520933) (not e!428744))))

(assert (=> b!770004 (= res!520933 (= (seekEntryOrOpen!0 (select (arr!20259 a!3186) j!159) a!3186 mask!3328) lt!342686))))

(assert (=> b!770004 (= lt!342686 (Found!7866 j!159))))

(assert (= (and start!66808 res!520931) b!769989))

(assert (= (and b!769989 res!520926) b!769998))

(assert (= (and b!769998 res!520927) b!769991))

(assert (= (and b!769991 res!520928) b!769996))

(assert (= (and b!769996 res!520938) b!769993))

(assert (= (and b!769993 res!520929) b!770001))

(assert (= (and b!770001 res!520937) b!769987))

(assert (= (and b!769987 res!520935) b!769992))

(assert (= (and b!769992 res!520932) b!769999))

(assert (= (and b!769999 res!520934) b!770000))

(assert (= (and b!770000 res!520936) b!769995))

(assert (= (and b!769995 c!84926) b!769994))

(assert (= (and b!769995 (not c!84926)) b!769990))

(assert (= (and b!769995 res!520925) b!769985))

(assert (= (and b!769985 res!520924) b!769988))

(assert (= (and b!769988 res!520930) b!770004))

(assert (= (and b!770004 res!520933) b!769986))

(assert (= (and b!769988 (not res!520939)) b!769997))

(assert (= (and b!769997 c!84927) b!770002))

(assert (= (and b!769997 (not c!84927)) b!770003))

(declare-fun m!715387 () Bool)

(assert (=> b!770004 m!715387))

(assert (=> b!770004 m!715387))

(declare-fun m!715389 () Bool)

(assert (=> b!770004 m!715389))

(declare-fun m!715391 () Bool)

(assert (=> b!770000 m!715391))

(declare-fun m!715393 () Bool)

(assert (=> b!769988 m!715393))

(declare-fun m!715395 () Bool)

(assert (=> b!769988 m!715395))

(declare-fun m!715397 () Bool)

(assert (=> b!770001 m!715397))

(declare-fun m!715399 () Bool)

(assert (=> b!769991 m!715399))

(assert (=> b!769998 m!715387))

(assert (=> b!769998 m!715387))

(declare-fun m!715401 () Bool)

(assert (=> b!769998 m!715401))

(assert (=> b!769994 m!715387))

(assert (=> b!769994 m!715387))

(declare-fun m!715403 () Bool)

(assert (=> b!769994 m!715403))

(declare-fun m!715405 () Bool)

(assert (=> b!769997 m!715405))

(assert (=> b!769999 m!715387))

(assert (=> b!769999 m!715387))

(declare-fun m!715407 () Bool)

(assert (=> b!769999 m!715407))

(assert (=> b!769999 m!715407))

(assert (=> b!769999 m!715387))

(declare-fun m!715409 () Bool)

(assert (=> b!769999 m!715409))

(declare-fun m!715411 () Bool)

(assert (=> start!66808 m!715411))

(declare-fun m!715413 () Bool)

(assert (=> start!66808 m!715413))

(declare-fun m!715415 () Bool)

(assert (=> b!769993 m!715415))

(declare-fun m!715417 () Bool)

(assert (=> b!769987 m!715417))

(declare-fun m!715419 () Bool)

(assert (=> b!769985 m!715419))

(declare-fun m!715421 () Bool)

(assert (=> b!769985 m!715421))

(declare-fun m!715423 () Bool)

(assert (=> b!769985 m!715423))

(assert (=> b!769985 m!715419))

(declare-fun m!715425 () Bool)

(assert (=> b!769985 m!715425))

(declare-fun m!715427 () Bool)

(assert (=> b!769985 m!715427))

(assert (=> b!770002 m!715387))

(assert (=> b!770002 m!715387))

(declare-fun m!715429 () Bool)

(assert (=> b!770002 m!715429))

(assert (=> b!769990 m!715387))

(assert (=> b!769990 m!715387))

(declare-fun m!715431 () Bool)

(assert (=> b!769990 m!715431))

(declare-fun m!715433 () Bool)

(assert (=> b!769996 m!715433))

(assert (=> b!770003 m!715387))

(assert (=> b!770003 m!715387))

(assert (=> b!770003 m!715431))

(assert (=> b!770003 m!715387))

(declare-fun m!715435 () Bool)

(assert (=> b!770003 m!715435))

(assert (=> b!769986 m!715387))

(assert (=> b!769986 m!715387))

(declare-fun m!715437 () Bool)

(assert (=> b!769986 m!715437))

(push 1)

