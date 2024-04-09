; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65782 () Bool)

(assert start!65782)

(declare-fun b!755641 () Bool)

(declare-fun res!510903 () Bool)

(declare-fun e!421403 () Bool)

(assert (=> b!755641 (=> (not res!510903) (not e!421403))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41908 0))(
  ( (array!41909 (arr!20064 (Array (_ BitVec 32) (_ BitVec 64))) (size!20485 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41908)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!755641 (= res!510903 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20485 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20485 a!3186))))))

(declare-fun b!755642 () Bool)

(declare-fun res!510905 () Bool)

(declare-fun e!421404 () Bool)

(assert (=> b!755642 (=> (not res!510905) (not e!421404))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41908 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!755642 (= res!510905 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!755643 () Bool)

(declare-fun res!510906 () Bool)

(declare-fun e!421408 () Bool)

(assert (=> b!755643 (=> (not res!510906) (not e!421408))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!755643 (= res!510906 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20064 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!510902 () Bool)

(assert (=> start!65782 (=> (not res!510902) (not e!421404))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65782 (= res!510902 (validMask!0 mask!3328))))

(assert (=> start!65782 e!421404))

(assert (=> start!65782 true))

(declare-fun array_inv!15838 (array!41908) Bool)

(assert (=> start!65782 (array_inv!15838 a!3186)))

(declare-fun b!755644 () Bool)

(declare-datatypes ((Unit!26086 0))(
  ( (Unit!26087) )
))
(declare-fun e!421400 () Unit!26086)

(declare-fun Unit!26088 () Unit!26086)

(assert (=> b!755644 (= e!421400 Unit!26088)))

(assert (=> b!755644 false))

(declare-fun b!755645 () Bool)

(declare-fun res!510908 () Bool)

(declare-fun e!421410 () Bool)

(assert (=> b!755645 (=> (not res!510908) (not e!421410))))

(declare-fun lt!336406 () array!41908)

(declare-fun lt!336399 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!7671 0))(
  ( (MissingZero!7671 (index!33051 (_ BitVec 32))) (Found!7671 (index!33052 (_ BitVec 32))) (Intermediate!7671 (undefined!8483 Bool) (index!33053 (_ BitVec 32)) (x!63982 (_ BitVec 32))) (Undefined!7671) (MissingVacant!7671 (index!33054 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41908 (_ BitVec 32)) SeekEntryResult!7671)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41908 (_ BitVec 32)) SeekEntryResult!7671)

(assert (=> b!755645 (= res!510908 (= (seekEntryOrOpen!0 lt!336399 lt!336406 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336399 lt!336406 mask!3328)))))

(declare-fun b!755646 () Bool)

(declare-fun e!421406 () Bool)

(assert (=> b!755646 (= e!421408 e!421406)))

(declare-fun res!510917 () Bool)

(assert (=> b!755646 (=> (not res!510917) (not e!421406))))

(declare-fun lt!336408 () SeekEntryResult!7671)

(declare-fun lt!336405 () SeekEntryResult!7671)

(assert (=> b!755646 (= res!510917 (= lt!336408 lt!336405))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41908 (_ BitVec 32)) SeekEntryResult!7671)

(assert (=> b!755646 (= lt!336405 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336399 lt!336406 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!755646 (= lt!336408 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336399 mask!3328) lt!336399 lt!336406 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!755646 (= lt!336399 (select (store (arr!20064 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!755646 (= lt!336406 (array!41909 (store (arr!20064 a!3186) i!1173 k!2102) (size!20485 a!3186)))))

(declare-fun b!755647 () Bool)

(declare-fun e!421399 () Bool)

(declare-fun e!421407 () Bool)

(assert (=> b!755647 (= e!421399 e!421407)))

(declare-fun res!510909 () Bool)

(assert (=> b!755647 (=> res!510909 e!421407)))

(declare-fun lt!336407 () SeekEntryResult!7671)

(declare-fun lt!336401 () SeekEntryResult!7671)

(assert (=> b!755647 (= res!510909 (not (= lt!336407 lt!336401)))))

(assert (=> b!755647 (= lt!336407 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20064 a!3186) j!159) a!3186 mask!3328))))

(declare-fun e!421405 () Bool)

(declare-fun b!755648 () Bool)

(assert (=> b!755648 (= e!421405 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20064 a!3186) j!159) a!3186 mask!3328) (Found!7671 j!159)))))

(declare-fun b!755649 () Bool)

(declare-fun res!510912 () Bool)

(assert (=> b!755649 (=> (not res!510912) (not e!421408))))

(assert (=> b!755649 (= res!510912 e!421405)))

(declare-fun c!82752 () Bool)

(assert (=> b!755649 (= c!82752 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!755650 () Bool)

(assert (=> b!755650 (= e!421403 e!421408)))

(declare-fun res!510916 () Bool)

(assert (=> b!755650 (=> (not res!510916) (not e!421408))))

(declare-fun lt!336402 () SeekEntryResult!7671)

(assert (=> b!755650 (= res!510916 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20064 a!3186) j!159) mask!3328) (select (arr!20064 a!3186) j!159) a!3186 mask!3328) lt!336402))))

(assert (=> b!755650 (= lt!336402 (Intermediate!7671 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!755651 () Bool)

(assert (=> b!755651 (= e!421406 (not e!421399))))

(declare-fun res!510918 () Bool)

(assert (=> b!755651 (=> res!510918 e!421399)))

(assert (=> b!755651 (= res!510918 (or (not (is-Intermediate!7671 lt!336405)) (bvslt x!1131 (x!63982 lt!336405)) (not (= x!1131 (x!63982 lt!336405))) (not (= index!1321 (index!33053 lt!336405)))))))

(declare-fun e!421409 () Bool)

(assert (=> b!755651 e!421409))

(declare-fun res!510900 () Bool)

(assert (=> b!755651 (=> (not res!510900) (not e!421409))))

(declare-fun lt!336404 () SeekEntryResult!7671)

(assert (=> b!755651 (= res!510900 (= lt!336404 lt!336401))))

(assert (=> b!755651 (= lt!336401 (Found!7671 j!159))))

(assert (=> b!755651 (= lt!336404 (seekEntryOrOpen!0 (select (arr!20064 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41908 (_ BitVec 32)) Bool)

(assert (=> b!755651 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336403 () Unit!26086)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41908 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26086)

(assert (=> b!755651 (= lt!336403 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!755652 () Bool)

(declare-fun res!510910 () Bool)

(assert (=> b!755652 (=> (not res!510910) (not e!421403))))

(declare-datatypes ((List!14119 0))(
  ( (Nil!14116) (Cons!14115 (h!15187 (_ BitVec 64)) (t!20442 List!14119)) )
))
(declare-fun arrayNoDuplicates!0 (array!41908 (_ BitVec 32) List!14119) Bool)

(assert (=> b!755652 (= res!510910 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14116))))

(declare-fun b!755653 () Bool)

(assert (=> b!755653 (= e!421404 e!421403)))

(declare-fun res!510901 () Bool)

(assert (=> b!755653 (=> (not res!510901) (not e!421403))))

(declare-fun lt!336409 () SeekEntryResult!7671)

(assert (=> b!755653 (= res!510901 (or (= lt!336409 (MissingZero!7671 i!1173)) (= lt!336409 (MissingVacant!7671 i!1173))))))

(assert (=> b!755653 (= lt!336409 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!755654 () Bool)

(assert (=> b!755654 (= e!421409 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20064 a!3186) j!159) a!3186 mask!3328) lt!336401))))

(declare-fun b!755655 () Bool)

(declare-fun res!510911 () Bool)

(assert (=> b!755655 (=> (not res!510911) (not e!421404))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!755655 (= res!510911 (validKeyInArray!0 k!2102))))

(declare-fun b!755656 () Bool)

(declare-fun Unit!26089 () Unit!26086)

(assert (=> b!755656 (= e!421400 Unit!26089)))

(declare-fun b!755657 () Bool)

(assert (=> b!755657 (= e!421405 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20064 a!3186) j!159) a!3186 mask!3328) lt!336402))))

(declare-fun b!755658 () Bool)

(declare-fun res!510915 () Bool)

(assert (=> b!755658 (=> (not res!510915) (not e!421404))))

(assert (=> b!755658 (= res!510915 (validKeyInArray!0 (select (arr!20064 a!3186) j!159)))))

(declare-fun b!755659 () Bool)

(declare-fun e!421402 () Bool)

(assert (=> b!755659 (= e!421407 e!421402)))

(declare-fun res!510914 () Bool)

(assert (=> b!755659 (=> res!510914 e!421402)))

(declare-fun lt!336410 () (_ BitVec 64))

(assert (=> b!755659 (= res!510914 (= lt!336410 lt!336399))))

(assert (=> b!755659 (= lt!336410 (select (store (arr!20064 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!755660 () Bool)

(declare-fun res!510907 () Bool)

(assert (=> b!755660 (=> (not res!510907) (not e!421404))))

(assert (=> b!755660 (= res!510907 (and (= (size!20485 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20485 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20485 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!755661 () Bool)

(assert (=> b!755661 (= e!421402 true)))

(assert (=> b!755661 e!421410))

(declare-fun res!510913 () Bool)

(assert (=> b!755661 (=> (not res!510913) (not e!421410))))

(assert (=> b!755661 (= res!510913 (= lt!336410 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336400 () Unit!26086)

(assert (=> b!755661 (= lt!336400 e!421400)))

(declare-fun c!82751 () Bool)

(assert (=> b!755661 (= c!82751 (= lt!336410 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!755662 () Bool)

(declare-fun res!510904 () Bool)

(assert (=> b!755662 (=> (not res!510904) (not e!421403))))

(assert (=> b!755662 (= res!510904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!755663 () Bool)

(assert (=> b!755663 (= e!421410 (= lt!336404 lt!336407))))

(assert (= (and start!65782 res!510902) b!755660))

(assert (= (and b!755660 res!510907) b!755658))

(assert (= (and b!755658 res!510915) b!755655))

(assert (= (and b!755655 res!510911) b!755642))

(assert (= (and b!755642 res!510905) b!755653))

(assert (= (and b!755653 res!510901) b!755662))

(assert (= (and b!755662 res!510904) b!755652))

(assert (= (and b!755652 res!510910) b!755641))

(assert (= (and b!755641 res!510903) b!755650))

(assert (= (and b!755650 res!510916) b!755643))

(assert (= (and b!755643 res!510906) b!755649))

(assert (= (and b!755649 c!82752) b!755657))

(assert (= (and b!755649 (not c!82752)) b!755648))

(assert (= (and b!755649 res!510912) b!755646))

(assert (= (and b!755646 res!510917) b!755651))

(assert (= (and b!755651 res!510900) b!755654))

(assert (= (and b!755651 (not res!510918)) b!755647))

(assert (= (and b!755647 (not res!510909)) b!755659))

(assert (= (and b!755659 (not res!510914)) b!755661))

(assert (= (and b!755661 c!82751) b!755644))

(assert (= (and b!755661 (not c!82751)) b!755656))

(assert (= (and b!755661 res!510913) b!755645))

(assert (= (and b!755645 res!510908) b!755663))

(declare-fun m!703861 () Bool)

(assert (=> b!755653 m!703861))

(declare-fun m!703863 () Bool)

(assert (=> b!755650 m!703863))

(assert (=> b!755650 m!703863))

(declare-fun m!703865 () Bool)

(assert (=> b!755650 m!703865))

(assert (=> b!755650 m!703865))

(assert (=> b!755650 m!703863))

(declare-fun m!703867 () Bool)

(assert (=> b!755650 m!703867))

(declare-fun m!703869 () Bool)

(assert (=> b!755652 m!703869))

(declare-fun m!703871 () Bool)

(assert (=> b!755646 m!703871))

(declare-fun m!703873 () Bool)

(assert (=> b!755646 m!703873))

(declare-fun m!703875 () Bool)

(assert (=> b!755646 m!703875))

(assert (=> b!755646 m!703871))

(declare-fun m!703877 () Bool)

(assert (=> b!755646 m!703877))

(declare-fun m!703879 () Bool)

(assert (=> b!755646 m!703879))

(assert (=> b!755648 m!703863))

(assert (=> b!755648 m!703863))

(declare-fun m!703881 () Bool)

(assert (=> b!755648 m!703881))

(assert (=> b!755654 m!703863))

(assert (=> b!755654 m!703863))

(declare-fun m!703883 () Bool)

(assert (=> b!755654 m!703883))

(assert (=> b!755657 m!703863))

(assert (=> b!755657 m!703863))

(declare-fun m!703885 () Bool)

(assert (=> b!755657 m!703885))

(assert (=> b!755651 m!703863))

(assert (=> b!755651 m!703863))

(declare-fun m!703887 () Bool)

(assert (=> b!755651 m!703887))

(declare-fun m!703889 () Bool)

(assert (=> b!755651 m!703889))

(declare-fun m!703891 () Bool)

(assert (=> b!755651 m!703891))

(assert (=> b!755659 m!703873))

(declare-fun m!703893 () Bool)

(assert (=> b!755659 m!703893))

(declare-fun m!703895 () Bool)

(assert (=> b!755642 m!703895))

(declare-fun m!703897 () Bool)

(assert (=> b!755655 m!703897))

(declare-fun m!703899 () Bool)

(assert (=> b!755643 m!703899))

(declare-fun m!703901 () Bool)

(assert (=> start!65782 m!703901))

(declare-fun m!703903 () Bool)

(assert (=> start!65782 m!703903))

(assert (=> b!755647 m!703863))

(assert (=> b!755647 m!703863))

(assert (=> b!755647 m!703881))

(declare-fun m!703905 () Bool)

(assert (=> b!755645 m!703905))

(declare-fun m!703907 () Bool)

(assert (=> b!755645 m!703907))

(assert (=> b!755658 m!703863))

(assert (=> b!755658 m!703863))

(declare-fun m!703909 () Bool)

(assert (=> b!755658 m!703909))

(declare-fun m!703911 () Bool)

(assert (=> b!755662 m!703911))

(push 1)

