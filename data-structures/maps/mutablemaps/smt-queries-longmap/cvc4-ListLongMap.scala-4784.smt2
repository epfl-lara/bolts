; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65786 () Bool)

(assert start!65786)

(declare-fun b!755779 () Bool)

(declare-fun res!511024 () Bool)

(declare-fun e!421471 () Bool)

(assert (=> b!755779 (=> (not res!511024) (not e!421471))))

(declare-datatypes ((array!41912 0))(
  ( (array!41913 (arr!20066 (Array (_ BitVec 32) (_ BitVec 64))) (size!20487 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41912)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!755779 (= res!511024 (and (= (size!20487 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20487 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20487 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!421472 () Bool)

(declare-fun b!755780 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7673 0))(
  ( (MissingZero!7673 (index!33059 (_ BitVec 32))) (Found!7673 (index!33060 (_ BitVec 32))) (Intermediate!7673 (undefined!8485 Bool) (index!33061 (_ BitVec 32)) (x!63984 (_ BitVec 32))) (Undefined!7673) (MissingVacant!7673 (index!33062 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41912 (_ BitVec 32)) SeekEntryResult!7673)

(assert (=> b!755780 (= e!421472 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20066 a!3186) j!159) a!3186 mask!3328) (Found!7673 j!159)))))

(declare-fun b!755782 () Bool)

(declare-fun e!421474 () Bool)

(declare-fun lt!336481 () SeekEntryResult!7673)

(declare-fun lt!336471 () SeekEntryResult!7673)

(assert (=> b!755782 (= e!421474 (= lt!336481 lt!336471))))

(declare-fun b!755783 () Bool)

(declare-fun res!511031 () Bool)

(declare-fun e!421481 () Bool)

(assert (=> b!755783 (=> (not res!511031) (not e!421481))))

(declare-datatypes ((List!14121 0))(
  ( (Nil!14118) (Cons!14117 (h!15189 (_ BitVec 64)) (t!20444 List!14121)) )
))
(declare-fun arrayNoDuplicates!0 (array!41912 (_ BitVec 32) List!14121) Bool)

(assert (=> b!755783 (= res!511031 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14118))))

(declare-fun e!421473 () Bool)

(declare-fun lt!336476 () SeekEntryResult!7673)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!755784 () Bool)

(assert (=> b!755784 (= e!421473 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20066 a!3186) j!159) a!3186 mask!3328) lt!336476))))

(declare-fun b!755785 () Bool)

(declare-datatypes ((Unit!26094 0))(
  ( (Unit!26095) )
))
(declare-fun e!421478 () Unit!26094)

(declare-fun Unit!26096 () Unit!26094)

(assert (=> b!755785 (= e!421478 Unit!26096)))

(assert (=> b!755785 false))

(declare-fun b!755786 () Bool)

(declare-fun e!421476 () Bool)

(assert (=> b!755786 (= e!421476 true)))

(assert (=> b!755786 e!421474))

(declare-fun res!511022 () Bool)

(assert (=> b!755786 (=> (not res!511022) (not e!421474))))

(declare-fun lt!336473 () (_ BitVec 64))

(assert (=> b!755786 (= res!511022 (= lt!336473 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336474 () Unit!26094)

(assert (=> b!755786 (= lt!336474 e!421478)))

(declare-fun c!82763 () Bool)

(assert (=> b!755786 (= c!82763 (= lt!336473 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!755787 () Bool)

(declare-fun e!421475 () Bool)

(declare-fun e!421477 () Bool)

(assert (=> b!755787 (= e!421475 e!421477)))

(declare-fun res!511030 () Bool)

(assert (=> b!755787 (=> res!511030 e!421477)))

(assert (=> b!755787 (= res!511030 (not (= lt!336471 lt!336476)))))

(assert (=> b!755787 (= lt!336471 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20066 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!755788 () Bool)

(declare-fun e!421480 () Bool)

(declare-fun e!421482 () Bool)

(assert (=> b!755788 (= e!421480 e!421482)))

(declare-fun res!511021 () Bool)

(assert (=> b!755788 (=> (not res!511021) (not e!421482))))

(declare-fun lt!336478 () SeekEntryResult!7673)

(declare-fun lt!336472 () SeekEntryResult!7673)

(assert (=> b!755788 (= res!511021 (= lt!336478 lt!336472))))

(declare-fun lt!336477 () array!41912)

(declare-fun lt!336482 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41912 (_ BitVec 32)) SeekEntryResult!7673)

(assert (=> b!755788 (= lt!336472 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336482 lt!336477 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!755788 (= lt!336478 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336482 mask!3328) lt!336482 lt!336477 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!755788 (= lt!336482 (select (store (arr!20066 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!755788 (= lt!336477 (array!41913 (store (arr!20066 a!3186) i!1173 k!2102) (size!20487 a!3186)))))

(declare-fun b!755789 () Bool)

(assert (=> b!755789 (= e!421477 e!421476)))

(declare-fun res!511025 () Bool)

(assert (=> b!755789 (=> res!511025 e!421476)))

(assert (=> b!755789 (= res!511025 (= lt!336473 lt!336482))))

(assert (=> b!755789 (= lt!336473 (select (store (arr!20066 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!755790 () Bool)

(assert (=> b!755790 (= e!421471 e!421481)))

(declare-fun res!511020 () Bool)

(assert (=> b!755790 (=> (not res!511020) (not e!421481))))

(declare-fun lt!336475 () SeekEntryResult!7673)

(assert (=> b!755790 (= res!511020 (or (= lt!336475 (MissingZero!7673 i!1173)) (= lt!336475 (MissingVacant!7673 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41912 (_ BitVec 32)) SeekEntryResult!7673)

(assert (=> b!755790 (= lt!336475 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!755781 () Bool)

(declare-fun res!511028 () Bool)

(assert (=> b!755781 (=> (not res!511028) (not e!421474))))

(assert (=> b!755781 (= res!511028 (= (seekEntryOrOpen!0 lt!336482 lt!336477 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336482 lt!336477 mask!3328)))))

(declare-fun res!511026 () Bool)

(assert (=> start!65786 (=> (not res!511026) (not e!421471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65786 (= res!511026 (validMask!0 mask!3328))))

(assert (=> start!65786 e!421471))

(assert (=> start!65786 true))

(declare-fun array_inv!15840 (array!41912) Bool)

(assert (=> start!65786 (array_inv!15840 a!3186)))

(declare-fun b!755791 () Bool)

(assert (=> b!755791 (= e!421481 e!421480)))

(declare-fun res!511027 () Bool)

(assert (=> b!755791 (=> (not res!511027) (not e!421480))))

(declare-fun lt!336480 () SeekEntryResult!7673)

(assert (=> b!755791 (= res!511027 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20066 a!3186) j!159) mask!3328) (select (arr!20066 a!3186) j!159) a!3186 mask!3328) lt!336480))))

(assert (=> b!755791 (= lt!336480 (Intermediate!7673 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!755792 () Bool)

(declare-fun res!511023 () Bool)

(assert (=> b!755792 (=> (not res!511023) (not e!421481))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41912 (_ BitVec 32)) Bool)

(assert (=> b!755792 (= res!511023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!755793 () Bool)

(assert (=> b!755793 (= e!421482 (not e!421475))))

(declare-fun res!511029 () Bool)

(assert (=> b!755793 (=> res!511029 e!421475)))

(assert (=> b!755793 (= res!511029 (or (not (is-Intermediate!7673 lt!336472)) (bvslt x!1131 (x!63984 lt!336472)) (not (= x!1131 (x!63984 lt!336472))) (not (= index!1321 (index!33061 lt!336472)))))))

(assert (=> b!755793 e!421473))

(declare-fun res!511018 () Bool)

(assert (=> b!755793 (=> (not res!511018) (not e!421473))))

(assert (=> b!755793 (= res!511018 (= lt!336481 lt!336476))))

(assert (=> b!755793 (= lt!336476 (Found!7673 j!159))))

(assert (=> b!755793 (= lt!336481 (seekEntryOrOpen!0 (select (arr!20066 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!755793 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336479 () Unit!26094)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41912 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26094)

(assert (=> b!755793 (= lt!336479 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!755794 () Bool)

(declare-fun res!511015 () Bool)

(assert (=> b!755794 (=> (not res!511015) (not e!421471))))

(declare-fun arrayContainsKey!0 (array!41912 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!755794 (= res!511015 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!755795 () Bool)

(assert (=> b!755795 (= e!421472 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20066 a!3186) j!159) a!3186 mask!3328) lt!336480))))

(declare-fun b!755796 () Bool)

(declare-fun res!511017 () Bool)

(assert (=> b!755796 (=> (not res!511017) (not e!421471))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!755796 (= res!511017 (validKeyInArray!0 k!2102))))

(declare-fun b!755797 () Bool)

(declare-fun res!511032 () Bool)

(assert (=> b!755797 (=> (not res!511032) (not e!421471))))

(assert (=> b!755797 (= res!511032 (validKeyInArray!0 (select (arr!20066 a!3186) j!159)))))

(declare-fun b!755798 () Bool)

(declare-fun Unit!26097 () Unit!26094)

(assert (=> b!755798 (= e!421478 Unit!26097)))

(declare-fun b!755799 () Bool)

(declare-fun res!511014 () Bool)

(assert (=> b!755799 (=> (not res!511014) (not e!421481))))

(assert (=> b!755799 (= res!511014 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20487 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20487 a!3186))))))

(declare-fun b!755800 () Bool)

(declare-fun res!511019 () Bool)

(assert (=> b!755800 (=> (not res!511019) (not e!421480))))

(assert (=> b!755800 (= res!511019 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20066 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!755801 () Bool)

(declare-fun res!511016 () Bool)

(assert (=> b!755801 (=> (not res!511016) (not e!421480))))

(assert (=> b!755801 (= res!511016 e!421472)))

(declare-fun c!82764 () Bool)

(assert (=> b!755801 (= c!82764 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65786 res!511026) b!755779))

(assert (= (and b!755779 res!511024) b!755797))

(assert (= (and b!755797 res!511032) b!755796))

(assert (= (and b!755796 res!511017) b!755794))

(assert (= (and b!755794 res!511015) b!755790))

(assert (= (and b!755790 res!511020) b!755792))

(assert (= (and b!755792 res!511023) b!755783))

(assert (= (and b!755783 res!511031) b!755799))

(assert (= (and b!755799 res!511014) b!755791))

(assert (= (and b!755791 res!511027) b!755800))

(assert (= (and b!755800 res!511019) b!755801))

(assert (= (and b!755801 c!82764) b!755795))

(assert (= (and b!755801 (not c!82764)) b!755780))

(assert (= (and b!755801 res!511016) b!755788))

(assert (= (and b!755788 res!511021) b!755793))

(assert (= (and b!755793 res!511018) b!755784))

(assert (= (and b!755793 (not res!511029)) b!755787))

(assert (= (and b!755787 (not res!511030)) b!755789))

(assert (= (and b!755789 (not res!511025)) b!755786))

(assert (= (and b!755786 c!82763) b!755785))

(assert (= (and b!755786 (not c!82763)) b!755798))

(assert (= (and b!755786 res!511022) b!755781))

(assert (= (and b!755781 res!511028) b!755782))

(declare-fun m!703965 () Bool)

(assert (=> b!755784 m!703965))

(assert (=> b!755784 m!703965))

(declare-fun m!703967 () Bool)

(assert (=> b!755784 m!703967))

(declare-fun m!703969 () Bool)

(assert (=> b!755796 m!703969))

(declare-fun m!703971 () Bool)

(assert (=> b!755783 m!703971))

(assert (=> b!755795 m!703965))

(assert (=> b!755795 m!703965))

(declare-fun m!703973 () Bool)

(assert (=> b!755795 m!703973))

(declare-fun m!703975 () Bool)

(assert (=> b!755790 m!703975))

(assert (=> b!755780 m!703965))

(assert (=> b!755780 m!703965))

(declare-fun m!703977 () Bool)

(assert (=> b!755780 m!703977))

(declare-fun m!703979 () Bool)

(assert (=> b!755800 m!703979))

(assert (=> b!755787 m!703965))

(assert (=> b!755787 m!703965))

(assert (=> b!755787 m!703977))

(declare-fun m!703981 () Bool)

(assert (=> b!755781 m!703981))

(declare-fun m!703983 () Bool)

(assert (=> b!755781 m!703983))

(declare-fun m!703985 () Bool)

(assert (=> start!65786 m!703985))

(declare-fun m!703987 () Bool)

(assert (=> start!65786 m!703987))

(declare-fun m!703989 () Bool)

(assert (=> b!755794 m!703989))

(assert (=> b!755797 m!703965))

(assert (=> b!755797 m!703965))

(declare-fun m!703991 () Bool)

(assert (=> b!755797 m!703991))

(assert (=> b!755791 m!703965))

(assert (=> b!755791 m!703965))

(declare-fun m!703993 () Bool)

(assert (=> b!755791 m!703993))

(assert (=> b!755791 m!703993))

(assert (=> b!755791 m!703965))

(declare-fun m!703995 () Bool)

(assert (=> b!755791 m!703995))

(declare-fun m!703997 () Bool)

(assert (=> b!755789 m!703997))

(declare-fun m!703999 () Bool)

(assert (=> b!755789 m!703999))

(declare-fun m!704001 () Bool)

(assert (=> b!755792 m!704001))

(declare-fun m!704003 () Bool)

(assert (=> b!755788 m!704003))

(declare-fun m!704005 () Bool)

(assert (=> b!755788 m!704005))

(assert (=> b!755788 m!703997))

(assert (=> b!755788 m!704003))

(declare-fun m!704007 () Bool)

(assert (=> b!755788 m!704007))

(declare-fun m!704009 () Bool)

(assert (=> b!755788 m!704009))

(assert (=> b!755793 m!703965))

(assert (=> b!755793 m!703965))

(declare-fun m!704011 () Bool)

(assert (=> b!755793 m!704011))

(declare-fun m!704013 () Bool)

(assert (=> b!755793 m!704013))

(declare-fun m!704015 () Bool)

(assert (=> b!755793 m!704015))

(push 1)

(assert (not start!65786))

(assert (not b!755790))

(assert (not b!755795))

(assert (not b!755796))

(assert (not b!755792))

(assert (not b!755797))

(assert (not b!755787))

(assert (not b!755788))

(assert (not b!755783))

(assert (not b!755781))

(assert (not b!755793))

(assert (not b!755780))

(assert (not b!755784))

(assert (not b!755794))

(assert (not b!755791))

(check-sat)

