; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64516 () Bool)

(assert start!64516)

(declare-fun b!725644 () Bool)

(declare-fun e!406362 () Bool)

(declare-fun e!406363 () Bool)

(assert (=> b!725644 (= e!406362 e!406363)))

(declare-fun res!486849 () Bool)

(assert (=> b!725644 (=> (not res!486849) (not e!406363))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!321425 () (_ BitVec 64))

(declare-datatypes ((array!40987 0))(
  ( (array!40988 (arr!19611 (Array (_ BitVec 32) (_ BitVec 64))) (size!20032 (_ BitVec 32))) )
))
(declare-fun lt!321427 () array!40987)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7218 0))(
  ( (MissingZero!7218 (index!31239 (_ BitVec 32))) (Found!7218 (index!31240 (_ BitVec 32))) (Intermediate!7218 (undefined!8030 Bool) (index!31241 (_ BitVec 32)) (x!62261 (_ BitVec 32))) (Undefined!7218) (MissingVacant!7218 (index!31242 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40987 (_ BitVec 32)) SeekEntryResult!7218)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725644 (= res!486849 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321425 mask!3328) lt!321425 lt!321427 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321425 lt!321427 mask!3328)))))

(declare-fun a!3186 () array!40987)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!725644 (= lt!321425 (select (store (arr!19611 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!725644 (= lt!321427 (array!40988 (store (arr!19611 a!3186) i!1173 k!2102) (size!20032 a!3186)))))

(declare-fun b!725645 () Bool)

(declare-fun res!486850 () Bool)

(assert (=> b!725645 (=> (not res!486850) (not e!406362))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!725645 (= res!486850 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19611 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!486857 () Bool)

(declare-fun e!406366 () Bool)

(assert (=> start!64516 (=> (not res!486857) (not e!406366))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64516 (= res!486857 (validMask!0 mask!3328))))

(assert (=> start!64516 e!406366))

(assert (=> start!64516 true))

(declare-fun array_inv!15385 (array!40987) Bool)

(assert (=> start!64516 (array_inv!15385 a!3186)))

(declare-fun b!725646 () Bool)

(declare-fun e!406364 () Bool)

(assert (=> b!725646 (= e!406364 e!406362)))

(declare-fun res!486848 () Bool)

(assert (=> b!725646 (=> (not res!486848) (not e!406362))))

(declare-fun lt!321428 () SeekEntryResult!7218)

(assert (=> b!725646 (= res!486848 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19611 a!3186) j!159) mask!3328) (select (arr!19611 a!3186) j!159) a!3186 mask!3328) lt!321428))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!725646 (= lt!321428 (Intermediate!7218 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725647 () Bool)

(declare-fun res!486851 () Bool)

(assert (=> b!725647 (=> (not res!486851) (not e!406364))))

(assert (=> b!725647 (= res!486851 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20032 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20032 a!3186))))))

(declare-fun b!725648 () Bool)

(declare-fun res!486846 () Bool)

(assert (=> b!725648 (=> (not res!486846) (not e!406362))))

(declare-fun e!406368 () Bool)

(assert (=> b!725648 (= res!486846 e!406368)))

(declare-fun c!79773 () Bool)

(assert (=> b!725648 (= c!79773 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725649 () Bool)

(assert (=> b!725649 (= e!406366 e!406364)))

(declare-fun res!486852 () Bool)

(assert (=> b!725649 (=> (not res!486852) (not e!406364))))

(declare-fun lt!321426 () SeekEntryResult!7218)

(assert (=> b!725649 (= res!486852 (or (= lt!321426 (MissingZero!7218 i!1173)) (= lt!321426 (MissingVacant!7218 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40987 (_ BitVec 32)) SeekEntryResult!7218)

(assert (=> b!725649 (= lt!321426 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!725650 () Bool)

(declare-fun res!486854 () Bool)

(assert (=> b!725650 (=> (not res!486854) (not e!406366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725650 (= res!486854 (validKeyInArray!0 (select (arr!19611 a!3186) j!159)))))

(declare-fun b!725651 () Bool)

(declare-fun res!486847 () Bool)

(assert (=> b!725651 (=> (not res!486847) (not e!406364))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40987 (_ BitVec 32)) Bool)

(assert (=> b!725651 (= res!486847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!725652 () Bool)

(declare-fun res!486858 () Bool)

(assert (=> b!725652 (=> (not res!486858) (not e!406364))))

(declare-datatypes ((List!13666 0))(
  ( (Nil!13663) (Cons!13662 (h!14719 (_ BitVec 64)) (t!19989 List!13666)) )
))
(declare-fun arrayNoDuplicates!0 (array!40987 (_ BitVec 32) List!13666) Bool)

(assert (=> b!725652 (= res!486858 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13663))))

(declare-fun e!406361 () Bool)

(declare-fun b!725653 () Bool)

(declare-fun lt!321424 () SeekEntryResult!7218)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40987 (_ BitVec 32)) SeekEntryResult!7218)

(assert (=> b!725653 (= e!406361 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19611 a!3186) j!159) a!3186 mask!3328) lt!321424))))

(declare-fun b!725654 () Bool)

(declare-fun e!406367 () Bool)

(assert (=> b!725654 (= e!406367 e!406361)))

(declare-fun res!486853 () Bool)

(assert (=> b!725654 (=> (not res!486853) (not e!406361))))

(assert (=> b!725654 (= res!486853 (= (seekEntryOrOpen!0 (select (arr!19611 a!3186) j!159) a!3186 mask!3328) lt!321424))))

(assert (=> b!725654 (= lt!321424 (Found!7218 j!159))))

(declare-fun b!725655 () Bool)

(declare-fun res!486856 () Bool)

(assert (=> b!725655 (=> (not res!486856) (not e!406366))))

(assert (=> b!725655 (= res!486856 (and (= (size!20032 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20032 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20032 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!725656 () Bool)

(declare-fun res!486845 () Bool)

(assert (=> b!725656 (=> (not res!486845) (not e!406366))))

(assert (=> b!725656 (= res!486845 (validKeyInArray!0 k!2102))))

(declare-fun b!725657 () Bool)

(assert (=> b!725657 (= e!406368 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19611 a!3186) j!159) a!3186 mask!3328) lt!321428))))

(declare-fun b!725658 () Bool)

(declare-fun res!486844 () Bool)

(assert (=> b!725658 (=> (not res!486844) (not e!406366))))

(declare-fun arrayContainsKey!0 (array!40987 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725658 (= res!486844 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725659 () Bool)

(assert (=> b!725659 (= e!406363 (not true))))

(assert (=> b!725659 e!406367))

(declare-fun res!486855 () Bool)

(assert (=> b!725659 (=> (not res!486855) (not e!406367))))

(assert (=> b!725659 (= res!486855 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24754 0))(
  ( (Unit!24755) )
))
(declare-fun lt!321423 () Unit!24754)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40987 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24754)

(assert (=> b!725659 (= lt!321423 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!725660 () Bool)

(assert (=> b!725660 (= e!406368 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19611 a!3186) j!159) a!3186 mask!3328) (Found!7218 j!159)))))

(assert (= (and start!64516 res!486857) b!725655))

(assert (= (and b!725655 res!486856) b!725650))

(assert (= (and b!725650 res!486854) b!725656))

(assert (= (and b!725656 res!486845) b!725658))

(assert (= (and b!725658 res!486844) b!725649))

(assert (= (and b!725649 res!486852) b!725651))

(assert (= (and b!725651 res!486847) b!725652))

(assert (= (and b!725652 res!486858) b!725647))

(assert (= (and b!725647 res!486851) b!725646))

(assert (= (and b!725646 res!486848) b!725645))

(assert (= (and b!725645 res!486850) b!725648))

(assert (= (and b!725648 c!79773) b!725657))

(assert (= (and b!725648 (not c!79773)) b!725660))

(assert (= (and b!725648 res!486846) b!725644))

(assert (= (and b!725644 res!486849) b!725659))

(assert (= (and b!725659 res!486855) b!725654))

(assert (= (and b!725654 res!486853) b!725653))

(declare-fun m!679873 () Bool)

(assert (=> b!725659 m!679873))

(declare-fun m!679875 () Bool)

(assert (=> b!725659 m!679875))

(declare-fun m!679877 () Bool)

(assert (=> b!725660 m!679877))

(assert (=> b!725660 m!679877))

(declare-fun m!679879 () Bool)

(assert (=> b!725660 m!679879))

(declare-fun m!679881 () Bool)

(assert (=> b!725651 m!679881))

(assert (=> b!725646 m!679877))

(assert (=> b!725646 m!679877))

(declare-fun m!679883 () Bool)

(assert (=> b!725646 m!679883))

(assert (=> b!725646 m!679883))

(assert (=> b!725646 m!679877))

(declare-fun m!679885 () Bool)

(assert (=> b!725646 m!679885))

(declare-fun m!679887 () Bool)

(assert (=> b!725656 m!679887))

(assert (=> b!725654 m!679877))

(assert (=> b!725654 m!679877))

(declare-fun m!679889 () Bool)

(assert (=> b!725654 m!679889))

(declare-fun m!679891 () Bool)

(assert (=> b!725658 m!679891))

(declare-fun m!679893 () Bool)

(assert (=> start!64516 m!679893))

(declare-fun m!679895 () Bool)

(assert (=> start!64516 m!679895))

(assert (=> b!725657 m!679877))

(assert (=> b!725657 m!679877))

(declare-fun m!679897 () Bool)

(assert (=> b!725657 m!679897))

(declare-fun m!679899 () Bool)

(assert (=> b!725649 m!679899))

(assert (=> b!725653 m!679877))

(assert (=> b!725653 m!679877))

(declare-fun m!679901 () Bool)

(assert (=> b!725653 m!679901))

(declare-fun m!679903 () Bool)

(assert (=> b!725645 m!679903))

(assert (=> b!725650 m!679877))

(assert (=> b!725650 m!679877))

(declare-fun m!679905 () Bool)

(assert (=> b!725650 m!679905))

(declare-fun m!679907 () Bool)

(assert (=> b!725644 m!679907))

(assert (=> b!725644 m!679907))

(declare-fun m!679909 () Bool)

(assert (=> b!725644 m!679909))

(declare-fun m!679911 () Bool)

(assert (=> b!725644 m!679911))

(declare-fun m!679913 () Bool)

(assert (=> b!725644 m!679913))

(declare-fun m!679915 () Bool)

(assert (=> b!725644 m!679915))

(declare-fun m!679917 () Bool)

(assert (=> b!725652 m!679917))

(push 1)

