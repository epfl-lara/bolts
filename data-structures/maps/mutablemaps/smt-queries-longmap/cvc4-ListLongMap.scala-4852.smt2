; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66830 () Bool)

(assert start!66830)

(declare-fun b!770645 () Bool)

(declare-fun res!521465 () Bool)

(declare-fun e!429076 () Bool)

(assert (=> b!770645 (=> (not res!521465) (not e!429076))))

(declare-datatypes ((array!42347 0))(
  ( (array!42348 (arr!20270 (Array (_ BitVec 32) (_ BitVec 64))) (size!20691 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42347)

(declare-datatypes ((List!14325 0))(
  ( (Nil!14322) (Cons!14321 (h!15420 (_ BitVec 64)) (t!20648 List!14325)) )
))
(declare-fun arrayNoDuplicates!0 (array!42347 (_ BitVec 32) List!14325) Bool)

(assert (=> b!770645 (= res!521465 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14322))))

(declare-fun res!521457 () Bool)

(declare-fun e!429075 () Bool)

(assert (=> start!66830 (=> (not res!521457) (not e!429075))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66830 (= res!521457 (validMask!0 mask!3328))))

(assert (=> start!66830 e!429075))

(assert (=> start!66830 true))

(declare-fun array_inv!16044 (array!42347) Bool)

(assert (=> start!66830 (array_inv!16044 a!3186)))

(declare-datatypes ((SeekEntryResult!7877 0))(
  ( (MissingZero!7877 (index!33875 (_ BitVec 32))) (Found!7877 (index!33876 (_ BitVec 32))) (Intermediate!7877 (undefined!8689 Bool) (index!33877 (_ BitVec 32)) (x!64825 (_ BitVec 32))) (Undefined!7877) (MissingVacant!7877 (index!33878 (_ BitVec 32))) )
))
(declare-fun lt!343049 () SeekEntryResult!7877)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!770646 () Bool)

(declare-fun e!429074 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42347 (_ BitVec 32)) SeekEntryResult!7877)

(assert (=> b!770646 (= e!429074 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20270 a!3186) j!159) a!3186 mask!3328) lt!343049))))

(declare-fun b!770647 () Bool)

(declare-fun res!521460 () Bool)

(assert (=> b!770647 (=> (not res!521460) (not e!429075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!770647 (= res!521460 (validKeyInArray!0 (select (arr!20270 a!3186) j!159)))))

(declare-fun b!770648 () Bool)

(declare-fun e!429072 () Bool)

(declare-fun e!429070 () Bool)

(assert (=> b!770648 (= e!429072 e!429070)))

(declare-fun res!521467 () Bool)

(assert (=> b!770648 (=> (not res!521467) (not e!429070))))

(declare-fun lt!343052 () SeekEntryResult!7877)

(declare-fun lt!343048 () SeekEntryResult!7877)

(assert (=> b!770648 (= res!521467 (= lt!343052 lt!343048))))

(declare-fun lt!343050 () array!42347)

(declare-fun lt!343053 () (_ BitVec 64))

(assert (=> b!770648 (= lt!343048 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343053 lt!343050 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770648 (= lt!343052 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343053 mask!3328) lt!343053 lt!343050 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!770648 (= lt!343053 (select (store (arr!20270 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!770648 (= lt!343050 (array!42348 (store (arr!20270 a!3186) i!1173 k!2102) (size!20691 a!3186)))))

(declare-fun b!770649 () Bool)

(declare-fun res!521461 () Bool)

(assert (=> b!770649 (=> (not res!521461) (not e!429072))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!770649 (= res!521461 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20270 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!770650 () Bool)

(declare-fun res!521459 () Bool)

(assert (=> b!770650 (=> (not res!521459) (not e!429076))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42347 (_ BitVec 32)) Bool)

(assert (=> b!770650 (= res!521459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!770651 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!343054 () SeekEntryResult!7877)

(declare-fun e!429077 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42347 (_ BitVec 32)) SeekEntryResult!7877)

(assert (=> b!770651 (= e!429077 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20270 a!3186) j!159) a!3186 mask!3328) lt!343054))))

(declare-fun b!770652 () Bool)

(declare-fun e!429071 () Bool)

(assert (=> b!770652 (= e!429070 (not e!429071))))

(declare-fun res!521462 () Bool)

(assert (=> b!770652 (=> res!521462 e!429071)))

(assert (=> b!770652 (= res!521462 (or (not (is-Intermediate!7877 lt!343048)) (bvsge x!1131 (x!64825 lt!343048))))))

(declare-fun e!429079 () Bool)

(assert (=> b!770652 e!429079))

(declare-fun res!521455 () Bool)

(assert (=> b!770652 (=> (not res!521455) (not e!429079))))

(assert (=> b!770652 (= res!521455 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26544 0))(
  ( (Unit!26545) )
))
(declare-fun lt!343047 () Unit!26544)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42347 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26544)

(assert (=> b!770652 (= lt!343047 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!770653 () Bool)

(assert (=> b!770653 (= e!429075 e!429076)))

(declare-fun res!521458 () Bool)

(assert (=> b!770653 (=> (not res!521458) (not e!429076))))

(declare-fun lt!343051 () SeekEntryResult!7877)

(assert (=> b!770653 (= res!521458 (or (= lt!343051 (MissingZero!7877 i!1173)) (= lt!343051 (MissingVacant!7877 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42347 (_ BitVec 32)) SeekEntryResult!7877)

(assert (=> b!770653 (= lt!343051 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!770654 () Bool)

(assert (=> b!770654 (= e!429071 true)))

(declare-fun lt!343057 () Unit!26544)

(declare-fun e!429078 () Unit!26544)

(assert (=> b!770654 (= lt!343057 e!429078)))

(declare-fun c!84992 () Bool)

(assert (=> b!770654 (= c!84992 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!343055 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770654 (= lt!343055 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!770655 () Bool)

(declare-fun res!521452 () Bool)

(assert (=> b!770655 (=> (not res!521452) (not e!429075))))

(assert (=> b!770655 (= res!521452 (validKeyInArray!0 k!2102))))

(declare-fun b!770656 () Bool)

(declare-fun res!521463 () Bool)

(assert (=> b!770656 (=> (not res!521463) (not e!429075))))

(declare-fun arrayContainsKey!0 (array!42347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!770656 (= res!521463 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!770657 () Bool)

(assert (=> b!770657 (= e!429076 e!429072)))

(declare-fun res!521466 () Bool)

(assert (=> b!770657 (=> (not res!521466) (not e!429072))))

(assert (=> b!770657 (= res!521466 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20270 a!3186) j!159) mask!3328) (select (arr!20270 a!3186) j!159) a!3186 mask!3328) lt!343049))))

(assert (=> b!770657 (= lt!343049 (Intermediate!7877 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!770658 () Bool)

(assert (=> b!770658 (= e!429079 e!429077)))

(declare-fun res!521454 () Bool)

(assert (=> b!770658 (=> (not res!521454) (not e!429077))))

(assert (=> b!770658 (= res!521454 (= (seekEntryOrOpen!0 (select (arr!20270 a!3186) j!159) a!3186 mask!3328) lt!343054))))

(assert (=> b!770658 (= lt!343054 (Found!7877 j!159))))

(declare-fun b!770659 () Bool)

(declare-fun res!521456 () Bool)

(assert (=> b!770659 (=> (not res!521456) (not e!429076))))

(assert (=> b!770659 (= res!521456 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20691 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20691 a!3186))))))

(declare-fun b!770660 () Bool)

(declare-fun Unit!26546 () Unit!26544)

(assert (=> b!770660 (= e!429078 Unit!26546)))

(assert (=> b!770660 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343055 (select (arr!20270 a!3186) j!159) a!3186 mask!3328) lt!343049)))

(declare-fun b!770661 () Bool)

(declare-fun res!521453 () Bool)

(assert (=> b!770661 (=> (not res!521453) (not e!429075))))

(assert (=> b!770661 (= res!521453 (and (= (size!20691 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20691 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20691 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!770662 () Bool)

(assert (=> b!770662 (= e!429074 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20270 a!3186) j!159) a!3186 mask!3328) (Found!7877 j!159)))))

(declare-fun b!770663 () Bool)

(declare-fun res!521464 () Bool)

(assert (=> b!770663 (=> (not res!521464) (not e!429072))))

(assert (=> b!770663 (= res!521464 e!429074)))

(declare-fun c!84993 () Bool)

(assert (=> b!770663 (= c!84993 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!770664 () Bool)

(declare-fun Unit!26547 () Unit!26544)

(assert (=> b!770664 (= e!429078 Unit!26547)))

(declare-fun lt!343056 () SeekEntryResult!7877)

(assert (=> b!770664 (= lt!343056 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20270 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!770664 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343055 resIntermediateIndex!5 (select (arr!20270 a!3186) j!159) a!3186 mask!3328) (Found!7877 j!159))))

(assert (= (and start!66830 res!521457) b!770661))

(assert (= (and b!770661 res!521453) b!770647))

(assert (= (and b!770647 res!521460) b!770655))

(assert (= (and b!770655 res!521452) b!770656))

(assert (= (and b!770656 res!521463) b!770653))

(assert (= (and b!770653 res!521458) b!770650))

(assert (= (and b!770650 res!521459) b!770645))

(assert (= (and b!770645 res!521465) b!770659))

(assert (= (and b!770659 res!521456) b!770657))

(assert (= (and b!770657 res!521466) b!770649))

(assert (= (and b!770649 res!521461) b!770663))

(assert (= (and b!770663 c!84993) b!770646))

(assert (= (and b!770663 (not c!84993)) b!770662))

(assert (= (and b!770663 res!521464) b!770648))

(assert (= (and b!770648 res!521467) b!770652))

(assert (= (and b!770652 res!521455) b!770658))

(assert (= (and b!770658 res!521454) b!770651))

(assert (= (and b!770652 (not res!521462)) b!770654))

(assert (= (and b!770654 c!84992) b!770660))

(assert (= (and b!770654 (not c!84992)) b!770664))

(declare-fun m!715959 () Bool)

(assert (=> b!770649 m!715959))

(declare-fun m!715961 () Bool)

(assert (=> start!66830 m!715961))

(declare-fun m!715963 () Bool)

(assert (=> start!66830 m!715963))

(declare-fun m!715965 () Bool)

(assert (=> b!770646 m!715965))

(assert (=> b!770646 m!715965))

(declare-fun m!715967 () Bool)

(assert (=> b!770646 m!715967))

(declare-fun m!715969 () Bool)

(assert (=> b!770655 m!715969))

(declare-fun m!715971 () Bool)

(assert (=> b!770656 m!715971))

(assert (=> b!770664 m!715965))

(assert (=> b!770664 m!715965))

(declare-fun m!715973 () Bool)

(assert (=> b!770664 m!715973))

(assert (=> b!770664 m!715965))

(declare-fun m!715975 () Bool)

(assert (=> b!770664 m!715975))

(declare-fun m!715977 () Bool)

(assert (=> b!770654 m!715977))

(declare-fun m!715979 () Bool)

(assert (=> b!770645 m!715979))

(declare-fun m!715981 () Bool)

(assert (=> b!770648 m!715981))

(declare-fun m!715983 () Bool)

(assert (=> b!770648 m!715983))

(assert (=> b!770648 m!715981))

(declare-fun m!715985 () Bool)

(assert (=> b!770648 m!715985))

(declare-fun m!715987 () Bool)

(assert (=> b!770648 m!715987))

(declare-fun m!715989 () Bool)

(assert (=> b!770648 m!715989))

(declare-fun m!715991 () Bool)

(assert (=> b!770650 m!715991))

(assert (=> b!770662 m!715965))

(assert (=> b!770662 m!715965))

(assert (=> b!770662 m!715973))

(assert (=> b!770660 m!715965))

(assert (=> b!770660 m!715965))

(declare-fun m!715993 () Bool)

(assert (=> b!770660 m!715993))

(declare-fun m!715995 () Bool)

(assert (=> b!770653 m!715995))

(assert (=> b!770658 m!715965))

(assert (=> b!770658 m!715965))

(declare-fun m!715997 () Bool)

(assert (=> b!770658 m!715997))

(assert (=> b!770651 m!715965))

(assert (=> b!770651 m!715965))

(declare-fun m!715999 () Bool)

(assert (=> b!770651 m!715999))

(declare-fun m!716001 () Bool)

(assert (=> b!770652 m!716001))

(declare-fun m!716003 () Bool)

(assert (=> b!770652 m!716003))

(assert (=> b!770657 m!715965))

(assert (=> b!770657 m!715965))

(declare-fun m!716005 () Bool)

(assert (=> b!770657 m!716005))

(assert (=> b!770657 m!716005))

(assert (=> b!770657 m!715965))

(declare-fun m!716007 () Bool)

(assert (=> b!770657 m!716007))

(assert (=> b!770647 m!715965))

(assert (=> b!770647 m!715965))

(declare-fun m!716009 () Bool)

(assert (=> b!770647 m!716009))

(push 1)

