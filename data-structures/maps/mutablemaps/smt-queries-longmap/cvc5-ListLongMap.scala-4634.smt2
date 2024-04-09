; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64522 () Bool)

(assert start!64522)

(declare-fun b!725799 () Bool)

(declare-fun e!406435 () Bool)

(declare-fun e!406438 () Bool)

(assert (=> b!725799 (= e!406435 e!406438)))

(declare-fun res!486992 () Bool)

(assert (=> b!725799 (=> (not res!486992) (not e!406438))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!40993 0))(
  ( (array!40994 (arr!19614 (Array (_ BitVec 32) (_ BitVec 64))) (size!20035 (_ BitVec 32))) )
))
(declare-fun lt!321477 () array!40993)

(declare-fun lt!321480 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7221 0))(
  ( (MissingZero!7221 (index!31251 (_ BitVec 32))) (Found!7221 (index!31252 (_ BitVec 32))) (Intermediate!7221 (undefined!8033 Bool) (index!31253 (_ BitVec 32)) (x!62272 (_ BitVec 32))) (Undefined!7221) (MissingVacant!7221 (index!31254 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40993 (_ BitVec 32)) SeekEntryResult!7221)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725799 (= res!486992 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321480 mask!3328) lt!321480 lt!321477 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321480 lt!321477 mask!3328)))))

(declare-fun a!3186 () array!40993)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!725799 (= lt!321480 (select (store (arr!19614 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!725799 (= lt!321477 (array!40994 (store (arr!19614 a!3186) i!1173 k!2102) (size!20035 a!3186)))))

(declare-fun b!725800 () Bool)

(declare-fun res!486995 () Bool)

(assert (=> b!725800 (=> (not res!486995) (not e!406435))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!725800 (= res!486995 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19614 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!725801 () Bool)

(declare-fun e!406441 () Bool)

(declare-fun e!406439 () Bool)

(assert (=> b!725801 (= e!406441 e!406439)))

(declare-fun res!486988 () Bool)

(assert (=> b!725801 (=> (not res!486988) (not e!406439))))

(declare-fun lt!321479 () SeekEntryResult!7221)

(assert (=> b!725801 (= res!486988 (or (= lt!321479 (MissingZero!7221 i!1173)) (= lt!321479 (MissingVacant!7221 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40993 (_ BitVec 32)) SeekEntryResult!7221)

(assert (=> b!725801 (= lt!321479 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!725802 () Bool)

(declare-fun e!406442 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725802 (= e!406442 (validKeyInArray!0 lt!321480))))

(declare-fun e!406440 () Bool)

(declare-fun b!725804 () Bool)

(declare-fun lt!321481 () SeekEntryResult!7221)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40993 (_ BitVec 32)) SeekEntryResult!7221)

(assert (=> b!725804 (= e!406440 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19614 a!3186) j!159) a!3186 mask!3328) lt!321481))))

(declare-fun e!406443 () Bool)

(declare-fun b!725805 () Bool)

(assert (=> b!725805 (= e!406443 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19614 a!3186) j!159) a!3186 mask!3328) (Found!7221 j!159)))))

(declare-fun lt!321478 () SeekEntryResult!7221)

(declare-fun b!725806 () Bool)

(assert (=> b!725806 (= e!406443 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19614 a!3186) j!159) a!3186 mask!3328) lt!321478))))

(declare-fun b!725807 () Bool)

(declare-fun res!486994 () Bool)

(assert (=> b!725807 (=> (not res!486994) (not e!406441))))

(assert (=> b!725807 (= res!486994 (validKeyInArray!0 (select (arr!19614 a!3186) j!159)))))

(declare-fun b!725808 () Bool)

(assert (=> b!725808 (= e!406438 (not e!406442))))

(declare-fun res!486991 () Bool)

(assert (=> b!725808 (=> res!486991 e!406442)))

(assert (=> b!725808 (= res!486991 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun e!406436 () Bool)

(assert (=> b!725808 e!406436))

(declare-fun res!486981 () Bool)

(assert (=> b!725808 (=> (not res!486981) (not e!406436))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40993 (_ BitVec 32)) Bool)

(assert (=> b!725808 (= res!486981 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24760 0))(
  ( (Unit!24761) )
))
(declare-fun lt!321482 () Unit!24760)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40993 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24760)

(assert (=> b!725808 (= lt!321482 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!725809 () Bool)

(declare-fun res!486993 () Bool)

(assert (=> b!725809 (=> (not res!486993) (not e!406439))))

(assert (=> b!725809 (= res!486993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!725810 () Bool)

(declare-fun res!486984 () Bool)

(assert (=> b!725810 (=> (not res!486984) (not e!406439))))

(assert (=> b!725810 (= res!486984 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20035 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20035 a!3186))))))

(declare-fun b!725811 () Bool)

(assert (=> b!725811 (= e!406436 e!406440)))

(declare-fun res!486983 () Bool)

(assert (=> b!725811 (=> (not res!486983) (not e!406440))))

(assert (=> b!725811 (= res!486983 (= (seekEntryOrOpen!0 (select (arr!19614 a!3186) j!159) a!3186 mask!3328) lt!321481))))

(assert (=> b!725811 (= lt!321481 (Found!7221 j!159))))

(declare-fun b!725812 () Bool)

(assert (=> b!725812 (= e!406439 e!406435)))

(declare-fun res!486987 () Bool)

(assert (=> b!725812 (=> (not res!486987) (not e!406435))))

(assert (=> b!725812 (= res!486987 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19614 a!3186) j!159) mask!3328) (select (arr!19614 a!3186) j!159) a!3186 mask!3328) lt!321478))))

(assert (=> b!725812 (= lt!321478 (Intermediate!7221 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725813 () Bool)

(declare-fun res!486989 () Bool)

(assert (=> b!725813 (=> (not res!486989) (not e!406441))))

(declare-fun arrayContainsKey!0 (array!40993 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725813 (= res!486989 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725814 () Bool)

(declare-fun res!486985 () Bool)

(assert (=> b!725814 (=> (not res!486985) (not e!406441))))

(assert (=> b!725814 (= res!486985 (validKeyInArray!0 k!2102))))

(declare-fun b!725803 () Bool)

(declare-fun res!486990 () Bool)

(assert (=> b!725803 (=> (not res!486990) (not e!406439))))

(declare-datatypes ((List!13669 0))(
  ( (Nil!13666) (Cons!13665 (h!14722 (_ BitVec 64)) (t!19992 List!13669)) )
))
(declare-fun arrayNoDuplicates!0 (array!40993 (_ BitVec 32) List!13669) Bool)

(assert (=> b!725803 (= res!486990 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13666))))

(declare-fun res!486986 () Bool)

(assert (=> start!64522 (=> (not res!486986) (not e!406441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64522 (= res!486986 (validMask!0 mask!3328))))

(assert (=> start!64522 e!406441))

(assert (=> start!64522 true))

(declare-fun array_inv!15388 (array!40993) Bool)

(assert (=> start!64522 (array_inv!15388 a!3186)))

(declare-fun b!725815 () Bool)

(declare-fun res!486982 () Bool)

(assert (=> b!725815 (=> (not res!486982) (not e!406435))))

(assert (=> b!725815 (= res!486982 e!406443)))

(declare-fun c!79782 () Bool)

(assert (=> b!725815 (= c!79782 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725816 () Bool)

(declare-fun res!486996 () Bool)

(assert (=> b!725816 (=> (not res!486996) (not e!406441))))

(assert (=> b!725816 (= res!486996 (and (= (size!20035 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20035 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20035 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64522 res!486986) b!725816))

(assert (= (and b!725816 res!486996) b!725807))

(assert (= (and b!725807 res!486994) b!725814))

(assert (= (and b!725814 res!486985) b!725813))

(assert (= (and b!725813 res!486989) b!725801))

(assert (= (and b!725801 res!486988) b!725809))

(assert (= (and b!725809 res!486993) b!725803))

(assert (= (and b!725803 res!486990) b!725810))

(assert (= (and b!725810 res!486984) b!725812))

(assert (= (and b!725812 res!486987) b!725800))

(assert (= (and b!725800 res!486995) b!725815))

(assert (= (and b!725815 c!79782) b!725806))

(assert (= (and b!725815 (not c!79782)) b!725805))

(assert (= (and b!725815 res!486982) b!725799))

(assert (= (and b!725799 res!486992) b!725808))

(assert (= (and b!725808 res!486981) b!725811))

(assert (= (and b!725811 res!486983) b!725804))

(assert (= (and b!725808 (not res!486991)) b!725802))

(declare-fun m!680011 () Bool)

(assert (=> b!725801 m!680011))

(declare-fun m!680013 () Bool)

(assert (=> b!725805 m!680013))

(assert (=> b!725805 m!680013))

(declare-fun m!680015 () Bool)

(assert (=> b!725805 m!680015))

(declare-fun m!680017 () Bool)

(assert (=> b!725809 m!680017))

(declare-fun m!680019 () Bool)

(assert (=> b!725803 m!680019))

(declare-fun m!680021 () Bool)

(assert (=> b!725800 m!680021))

(declare-fun m!680023 () Bool)

(assert (=> b!725814 m!680023))

(assert (=> b!725807 m!680013))

(assert (=> b!725807 m!680013))

(declare-fun m!680025 () Bool)

(assert (=> b!725807 m!680025))

(assert (=> b!725812 m!680013))

(assert (=> b!725812 m!680013))

(declare-fun m!680027 () Bool)

(assert (=> b!725812 m!680027))

(assert (=> b!725812 m!680027))

(assert (=> b!725812 m!680013))

(declare-fun m!680029 () Bool)

(assert (=> b!725812 m!680029))

(declare-fun m!680031 () Bool)

(assert (=> b!725799 m!680031))

(assert (=> b!725799 m!680031))

(declare-fun m!680033 () Bool)

(assert (=> b!725799 m!680033))

(declare-fun m!680035 () Bool)

(assert (=> b!725799 m!680035))

(declare-fun m!680037 () Bool)

(assert (=> b!725799 m!680037))

(declare-fun m!680039 () Bool)

(assert (=> b!725799 m!680039))

(assert (=> b!725806 m!680013))

(assert (=> b!725806 m!680013))

(declare-fun m!680041 () Bool)

(assert (=> b!725806 m!680041))

(declare-fun m!680043 () Bool)

(assert (=> b!725802 m!680043))

(assert (=> b!725811 m!680013))

(assert (=> b!725811 m!680013))

(declare-fun m!680045 () Bool)

(assert (=> b!725811 m!680045))

(assert (=> b!725804 m!680013))

(assert (=> b!725804 m!680013))

(declare-fun m!680047 () Bool)

(assert (=> b!725804 m!680047))

(declare-fun m!680049 () Bool)

(assert (=> b!725808 m!680049))

(declare-fun m!680051 () Bool)

(assert (=> b!725808 m!680051))

(declare-fun m!680053 () Bool)

(assert (=> b!725813 m!680053))

(declare-fun m!680055 () Bool)

(assert (=> start!64522 m!680055))

(declare-fun m!680057 () Bool)

(assert (=> start!64522 m!680057))

(push 1)

