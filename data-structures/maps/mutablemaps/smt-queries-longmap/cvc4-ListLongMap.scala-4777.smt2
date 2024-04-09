; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65744 () Bool)

(assert start!65744)

(declare-fun b!754330 () Bool)

(declare-fun res!509821 () Bool)

(declare-fun e!420723 () Bool)

(assert (=> b!754330 (=> (not res!509821) (not e!420723))))

(declare-datatypes ((array!41870 0))(
  ( (array!41871 (arr!20045 (Array (_ BitVec 32) (_ BitVec 64))) (size!20466 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41870)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41870 (_ BitVec 32)) Bool)

(assert (=> b!754330 (= res!509821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!420716 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!754331 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7652 0))(
  ( (MissingZero!7652 (index!32975 (_ BitVec 32))) (Found!7652 (index!32976 (_ BitVec 32))) (Intermediate!7652 (undefined!8464 Bool) (index!32977 (_ BitVec 32)) (x!63907 (_ BitVec 32))) (Undefined!7652) (MissingVacant!7652 (index!32978 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41870 (_ BitVec 32)) SeekEntryResult!7652)

(assert (=> b!754331 (= e!420716 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20045 a!3186) j!159) a!3186 mask!3328) (Found!7652 j!159)))))

(declare-fun b!754332 () Bool)

(declare-datatypes ((Unit!26010 0))(
  ( (Unit!26011) )
))
(declare-fun e!420718 () Unit!26010)

(declare-fun Unit!26012 () Unit!26010)

(assert (=> b!754332 (= e!420718 Unit!26012)))

(declare-fun b!754333 () Bool)

(declare-fun res!509819 () Bool)

(declare-fun e!420726 () Bool)

(assert (=> b!754333 (=> (not res!509819) (not e!420726))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!754333 (= res!509819 (validKeyInArray!0 k!2102))))

(declare-fun lt!335725 () SeekEntryResult!7652)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!754334 () Bool)

(declare-fun e!420717 () Bool)

(assert (=> b!754334 (= e!420717 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20045 a!3186) j!159) a!3186 mask!3328) lt!335725))))

(declare-fun res!509820 () Bool)

(assert (=> start!65744 (=> (not res!509820) (not e!420726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65744 (= res!509820 (validMask!0 mask!3328))))

(assert (=> start!65744 e!420726))

(assert (=> start!65744 true))

(declare-fun array_inv!15819 (array!41870) Bool)

(assert (=> start!65744 (array_inv!15819 a!3186)))

(declare-fun b!754335 () Bool)

(declare-fun res!509824 () Bool)

(declare-fun e!420722 () Bool)

(assert (=> b!754335 (=> (not res!509824) (not e!420722))))

(assert (=> b!754335 (= res!509824 e!420716)))

(declare-fun c!82637 () Bool)

(assert (=> b!754335 (= c!82637 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!754336 () Bool)

(declare-fun e!420720 () Bool)

(declare-fun e!420724 () Bool)

(assert (=> b!754336 (= e!420720 (not e!420724))))

(declare-fun res!509829 () Bool)

(assert (=> b!754336 (=> res!509829 e!420724)))

(declare-fun lt!335718 () SeekEntryResult!7652)

(assert (=> b!754336 (= res!509829 (or (not (is-Intermediate!7652 lt!335718)) (bvslt x!1131 (x!63907 lt!335718)) (not (= x!1131 (x!63907 lt!335718))) (not (= index!1321 (index!32977 lt!335718)))))))

(assert (=> b!754336 e!420717))

(declare-fun res!509823 () Bool)

(assert (=> b!754336 (=> (not res!509823) (not e!420717))))

(declare-fun lt!335717 () SeekEntryResult!7652)

(assert (=> b!754336 (= res!509823 (= lt!335717 lt!335725))))

(assert (=> b!754336 (= lt!335725 (Found!7652 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41870 (_ BitVec 32)) SeekEntryResult!7652)

(assert (=> b!754336 (= lt!335717 (seekEntryOrOpen!0 (select (arr!20045 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!754336 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335719 () Unit!26010)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41870 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26010)

(assert (=> b!754336 (= lt!335719 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!754337 () Bool)

(declare-fun e!420719 () Bool)

(assert (=> b!754337 (= e!420719 true)))

(declare-fun e!420725 () Bool)

(assert (=> b!754337 e!420725))

(declare-fun res!509826 () Bool)

(assert (=> b!754337 (=> (not res!509826) (not e!420725))))

(declare-fun lt!335726 () (_ BitVec 64))

(assert (=> b!754337 (= res!509826 (= lt!335726 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335723 () Unit!26010)

(assert (=> b!754337 (= lt!335723 e!420718)))

(declare-fun c!82638 () Bool)

(assert (=> b!754337 (= c!82638 (= lt!335726 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335724 () SeekEntryResult!7652)

(declare-fun b!754338 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41870 (_ BitVec 32)) SeekEntryResult!7652)

(assert (=> b!754338 (= e!420716 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20045 a!3186) j!159) a!3186 mask!3328) lt!335724))))

(declare-fun b!754339 () Bool)

(declare-fun Unit!26013 () Unit!26010)

(assert (=> b!754339 (= e!420718 Unit!26013)))

(assert (=> b!754339 false))

(declare-fun b!754340 () Bool)

(declare-fun e!420715 () Bool)

(assert (=> b!754340 (= e!420715 e!420719)))

(declare-fun res!509833 () Bool)

(assert (=> b!754340 (=> res!509833 e!420719)))

(declare-fun lt!335715 () (_ BitVec 64))

(assert (=> b!754340 (= res!509833 (= lt!335726 lt!335715))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!754340 (= lt!335726 (select (store (arr!20045 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!754341 () Bool)

(declare-fun res!509830 () Bool)

(assert (=> b!754341 (=> (not res!509830) (not e!420725))))

(declare-fun lt!335716 () array!41870)

(assert (=> b!754341 (= res!509830 (= (seekEntryOrOpen!0 lt!335715 lt!335716 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335715 lt!335716 mask!3328)))))

(declare-fun b!754342 () Bool)

(assert (=> b!754342 (= e!420722 e!420720)))

(declare-fun res!509832 () Bool)

(assert (=> b!754342 (=> (not res!509832) (not e!420720))))

(declare-fun lt!335722 () SeekEntryResult!7652)

(assert (=> b!754342 (= res!509832 (= lt!335722 lt!335718))))

(assert (=> b!754342 (= lt!335718 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335715 lt!335716 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!754342 (= lt!335722 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335715 mask!3328) lt!335715 lt!335716 mask!3328))))

(assert (=> b!754342 (= lt!335715 (select (store (arr!20045 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!754342 (= lt!335716 (array!41871 (store (arr!20045 a!3186) i!1173 k!2102) (size!20466 a!3186)))))

(declare-fun b!754343 () Bool)

(declare-fun res!509827 () Bool)

(assert (=> b!754343 (=> (not res!509827) (not e!420723))))

(assert (=> b!754343 (= res!509827 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20466 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20466 a!3186))))))

(declare-fun b!754344 () Bool)

(assert (=> b!754344 (= e!420724 e!420715)))

(declare-fun res!509831 () Bool)

(assert (=> b!754344 (=> res!509831 e!420715)))

(declare-fun lt!335721 () SeekEntryResult!7652)

(assert (=> b!754344 (= res!509831 (not (= lt!335721 lt!335725)))))

(assert (=> b!754344 (= lt!335721 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20045 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!754345 () Bool)

(declare-fun res!509834 () Bool)

(assert (=> b!754345 (=> (not res!509834) (not e!420722))))

(assert (=> b!754345 (= res!509834 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20045 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!754346 () Bool)

(declare-fun res!509818 () Bool)

(assert (=> b!754346 (=> (not res!509818) (not e!420726))))

(assert (=> b!754346 (= res!509818 (and (= (size!20466 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20466 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20466 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!754347 () Bool)

(assert (=> b!754347 (= e!420725 (= lt!335717 lt!335721))))

(declare-fun b!754348 () Bool)

(declare-fun res!509822 () Bool)

(assert (=> b!754348 (=> (not res!509822) (not e!420726))))

(declare-fun arrayContainsKey!0 (array!41870 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!754348 (= res!509822 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!754349 () Bool)

(declare-fun res!509825 () Bool)

(assert (=> b!754349 (=> (not res!509825) (not e!420723))))

(declare-datatypes ((List!14100 0))(
  ( (Nil!14097) (Cons!14096 (h!15168 (_ BitVec 64)) (t!20423 List!14100)) )
))
(declare-fun arrayNoDuplicates!0 (array!41870 (_ BitVec 32) List!14100) Bool)

(assert (=> b!754349 (= res!509825 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14097))))

(declare-fun b!754350 () Bool)

(assert (=> b!754350 (= e!420726 e!420723)))

(declare-fun res!509817 () Bool)

(assert (=> b!754350 (=> (not res!509817) (not e!420723))))

(declare-fun lt!335720 () SeekEntryResult!7652)

(assert (=> b!754350 (= res!509817 (or (= lt!335720 (MissingZero!7652 i!1173)) (= lt!335720 (MissingVacant!7652 i!1173))))))

(assert (=> b!754350 (= lt!335720 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!754351 () Bool)

(declare-fun res!509835 () Bool)

(assert (=> b!754351 (=> (not res!509835) (not e!420726))))

(assert (=> b!754351 (= res!509835 (validKeyInArray!0 (select (arr!20045 a!3186) j!159)))))

(declare-fun b!754352 () Bool)

(assert (=> b!754352 (= e!420723 e!420722)))

(declare-fun res!509828 () Bool)

(assert (=> b!754352 (=> (not res!509828) (not e!420722))))

(assert (=> b!754352 (= res!509828 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20045 a!3186) j!159) mask!3328) (select (arr!20045 a!3186) j!159) a!3186 mask!3328) lt!335724))))

(assert (=> b!754352 (= lt!335724 (Intermediate!7652 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65744 res!509820) b!754346))

(assert (= (and b!754346 res!509818) b!754351))

(assert (= (and b!754351 res!509835) b!754333))

(assert (= (and b!754333 res!509819) b!754348))

(assert (= (and b!754348 res!509822) b!754350))

(assert (= (and b!754350 res!509817) b!754330))

(assert (= (and b!754330 res!509821) b!754349))

(assert (= (and b!754349 res!509825) b!754343))

(assert (= (and b!754343 res!509827) b!754352))

(assert (= (and b!754352 res!509828) b!754345))

(assert (= (and b!754345 res!509834) b!754335))

(assert (= (and b!754335 c!82637) b!754338))

(assert (= (and b!754335 (not c!82637)) b!754331))

(assert (= (and b!754335 res!509824) b!754342))

(assert (= (and b!754342 res!509832) b!754336))

(assert (= (and b!754336 res!509823) b!754334))

(assert (= (and b!754336 (not res!509829)) b!754344))

(assert (= (and b!754344 (not res!509831)) b!754340))

(assert (= (and b!754340 (not res!509833)) b!754337))

(assert (= (and b!754337 c!82638) b!754339))

(assert (= (and b!754337 (not c!82638)) b!754332))

(assert (= (and b!754337 res!509826) b!754341))

(assert (= (and b!754341 res!509830) b!754347))

(declare-fun m!702873 () Bool)

(assert (=> start!65744 m!702873))

(declare-fun m!702875 () Bool)

(assert (=> start!65744 m!702875))

(declare-fun m!702877 () Bool)

(assert (=> b!754342 m!702877))

(declare-fun m!702879 () Bool)

(assert (=> b!754342 m!702879))

(declare-fun m!702881 () Bool)

(assert (=> b!754342 m!702881))

(declare-fun m!702883 () Bool)

(assert (=> b!754342 m!702883))

(assert (=> b!754342 m!702883))

(declare-fun m!702885 () Bool)

(assert (=> b!754342 m!702885))

(declare-fun m!702887 () Bool)

(assert (=> b!754348 m!702887))

(declare-fun m!702889 () Bool)

(assert (=> b!754338 m!702889))

(assert (=> b!754338 m!702889))

(declare-fun m!702891 () Bool)

(assert (=> b!754338 m!702891))

(assert (=> b!754334 m!702889))

(assert (=> b!754334 m!702889))

(declare-fun m!702893 () Bool)

(assert (=> b!754334 m!702893))

(declare-fun m!702895 () Bool)

(assert (=> b!754333 m!702895))

(declare-fun m!702897 () Bool)

(assert (=> b!754330 m!702897))

(declare-fun m!702899 () Bool)

(assert (=> b!754349 m!702899))

(assert (=> b!754344 m!702889))

(assert (=> b!754344 m!702889))

(declare-fun m!702901 () Bool)

(assert (=> b!754344 m!702901))

(declare-fun m!702903 () Bool)

(assert (=> b!754345 m!702903))

(declare-fun m!702905 () Bool)

(assert (=> b!754350 m!702905))

(assert (=> b!754331 m!702889))

(assert (=> b!754331 m!702889))

(assert (=> b!754331 m!702901))

(assert (=> b!754351 m!702889))

(assert (=> b!754351 m!702889))

(declare-fun m!702907 () Bool)

(assert (=> b!754351 m!702907))

(assert (=> b!754352 m!702889))

(assert (=> b!754352 m!702889))

(declare-fun m!702909 () Bool)

(assert (=> b!754352 m!702909))

(assert (=> b!754352 m!702909))

(assert (=> b!754352 m!702889))

(declare-fun m!702911 () Bool)

(assert (=> b!754352 m!702911))

(assert (=> b!754336 m!702889))

(assert (=> b!754336 m!702889))

(declare-fun m!702913 () Bool)

(assert (=> b!754336 m!702913))

(declare-fun m!702915 () Bool)

(assert (=> b!754336 m!702915))

(declare-fun m!702917 () Bool)

(assert (=> b!754336 m!702917))

(declare-fun m!702919 () Bool)

(assert (=> b!754341 m!702919))

(declare-fun m!702921 () Bool)

(assert (=> b!754341 m!702921))

(assert (=> b!754340 m!702879))

(declare-fun m!702923 () Bool)

(assert (=> b!754340 m!702923))

(push 1)

