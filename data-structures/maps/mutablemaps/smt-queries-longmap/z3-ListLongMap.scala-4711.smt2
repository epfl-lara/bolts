; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65346 () Bool)

(assert start!65346)

(declare-fun b!742027 () Bool)

(declare-fun e!414743 () Bool)

(declare-fun e!414744 () Bool)

(assert (=> b!742027 (= e!414743 e!414744)))

(declare-fun res!499395 () Bool)

(assert (=> b!742027 (=> (not res!499395) (not e!414744))))

(declare-datatypes ((array!41472 0))(
  ( (array!41473 (arr!19846 (Array (_ BitVec 32) (_ BitVec 64))) (size!20267 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41472)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7453 0))(
  ( (MissingZero!7453 (index!32179 (_ BitVec 32))) (Found!7453 (index!32180 (_ BitVec 32))) (Intermediate!7453 (undefined!8265 Bool) (index!32181 (_ BitVec 32)) (x!63180 (_ BitVec 32))) (Undefined!7453) (MissingVacant!7453 (index!32182 (_ BitVec 32))) )
))
(declare-fun lt!329655 () SeekEntryResult!7453)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41472 (_ BitVec 32)) SeekEntryResult!7453)

(assert (=> b!742027 (= res!499395 (= (seekEntryOrOpen!0 (select (arr!19846 a!3186) j!159) a!3186 mask!3328) lt!329655))))

(assert (=> b!742027 (= lt!329655 (Found!7453 j!159))))

(declare-fun b!742028 () Bool)

(declare-fun res!499392 () Bool)

(declare-fun e!414741 () Bool)

(assert (=> b!742028 (=> (not res!499392) (not e!414741))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41472 (_ BitVec 32)) Bool)

(assert (=> b!742028 (= res!499392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!742029 () Bool)

(declare-fun res!499400 () Bool)

(assert (=> b!742029 (=> (not res!499400) (not e!414741))))

(declare-datatypes ((List!13901 0))(
  ( (Nil!13898) (Cons!13897 (h!14969 (_ BitVec 64)) (t!20224 List!13901)) )
))
(declare-fun arrayNoDuplicates!0 (array!41472 (_ BitVec 32) List!13901) Bool)

(assert (=> b!742029 (= res!499400 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13898))))

(declare-fun b!742030 () Bool)

(declare-fun e!414738 () Bool)

(declare-fun e!414739 () Bool)

(assert (=> b!742030 (= e!414738 e!414739)))

(declare-fun res!499398 () Bool)

(assert (=> b!742030 (=> (not res!499398) (not e!414739))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!329656 () (_ BitVec 64))

(declare-fun lt!329658 () array!41472)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41472 (_ BitVec 32)) SeekEntryResult!7453)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742030 (= res!499398 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329656 mask!3328) lt!329656 lt!329658 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329656 lt!329658 mask!3328)))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!742030 (= lt!329656 (select (store (arr!19846 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!742030 (= lt!329658 (array!41473 (store (arr!19846 a!3186) i!1173 k0!2102) (size!20267 a!3186)))))

(declare-fun b!742031 () Bool)

(declare-fun res!499402 () Bool)

(declare-fun e!414737 () Bool)

(assert (=> b!742031 (=> (not res!499402) (not e!414737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!742031 (= res!499402 (validKeyInArray!0 (select (arr!19846 a!3186) j!159)))))

(declare-fun b!742032 () Bool)

(declare-fun res!499397 () Bool)

(assert (=> b!742032 (=> (not res!499397) (not e!414738))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!742032 (= res!499397 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19846 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!742033 () Bool)

(declare-fun res!499393 () Bool)

(assert (=> b!742033 (=> (not res!499393) (not e!414741))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!742033 (= res!499393 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20267 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20267 a!3186))))))

(declare-fun e!414742 () Bool)

(declare-fun lt!329659 () SeekEntryResult!7453)

(declare-fun b!742034 () Bool)

(assert (=> b!742034 (= e!414742 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19846 a!3186) j!159) a!3186 mask!3328) lt!329659))))

(declare-fun b!742035 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41472 (_ BitVec 32)) SeekEntryResult!7453)

(assert (=> b!742035 (= e!414744 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19846 a!3186) j!159) a!3186 mask!3328) lt!329655))))

(declare-fun b!742036 () Bool)

(assert (=> b!742036 (= e!414737 e!414741)))

(declare-fun res!499396 () Bool)

(assert (=> b!742036 (=> (not res!499396) (not e!414741))))

(declare-fun lt!329657 () SeekEntryResult!7453)

(assert (=> b!742036 (= res!499396 (or (= lt!329657 (MissingZero!7453 i!1173)) (= lt!329657 (MissingVacant!7453 i!1173))))))

(assert (=> b!742036 (= lt!329657 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!742037 () Bool)

(declare-fun res!499399 () Bool)

(assert (=> b!742037 (=> (not res!499399) (not e!414737))))

(assert (=> b!742037 (= res!499399 (validKeyInArray!0 k0!2102))))

(declare-fun res!499391 () Bool)

(assert (=> start!65346 (=> (not res!499391) (not e!414737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65346 (= res!499391 (validMask!0 mask!3328))))

(assert (=> start!65346 e!414737))

(assert (=> start!65346 true))

(declare-fun array_inv!15620 (array!41472) Bool)

(assert (=> start!65346 (array_inv!15620 a!3186)))

(declare-fun b!742038 () Bool)

(assert (=> b!742038 (= e!414739 (not true))))

(assert (=> b!742038 e!414743))

(declare-fun res!499390 () Bool)

(assert (=> b!742038 (=> (not res!499390) (not e!414743))))

(assert (=> b!742038 (= res!499390 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25386 0))(
  ( (Unit!25387) )
))
(declare-fun lt!329660 () Unit!25386)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41472 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25386)

(assert (=> b!742038 (= lt!329660 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!742039 () Bool)

(declare-fun res!499394 () Bool)

(assert (=> b!742039 (=> (not res!499394) (not e!414738))))

(assert (=> b!742039 (= res!499394 e!414742)))

(declare-fun c!81699 () Bool)

(assert (=> b!742039 (= c!81699 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!742040 () Bool)

(assert (=> b!742040 (= e!414742 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19846 a!3186) j!159) a!3186 mask!3328) (Found!7453 j!159)))))

(declare-fun b!742041 () Bool)

(declare-fun res!499401 () Bool)

(assert (=> b!742041 (=> (not res!499401) (not e!414737))))

(assert (=> b!742041 (= res!499401 (and (= (size!20267 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20267 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20267 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!742042 () Bool)

(declare-fun res!499404 () Bool)

(assert (=> b!742042 (=> (not res!499404) (not e!414737))))

(declare-fun arrayContainsKey!0 (array!41472 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!742042 (= res!499404 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!742043 () Bool)

(assert (=> b!742043 (= e!414741 e!414738)))

(declare-fun res!499403 () Bool)

(assert (=> b!742043 (=> (not res!499403) (not e!414738))))

(assert (=> b!742043 (= res!499403 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19846 a!3186) j!159) mask!3328) (select (arr!19846 a!3186) j!159) a!3186 mask!3328) lt!329659))))

(assert (=> b!742043 (= lt!329659 (Intermediate!7453 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65346 res!499391) b!742041))

(assert (= (and b!742041 res!499401) b!742031))

(assert (= (and b!742031 res!499402) b!742037))

(assert (= (and b!742037 res!499399) b!742042))

(assert (= (and b!742042 res!499404) b!742036))

(assert (= (and b!742036 res!499396) b!742028))

(assert (= (and b!742028 res!499392) b!742029))

(assert (= (and b!742029 res!499400) b!742033))

(assert (= (and b!742033 res!499393) b!742043))

(assert (= (and b!742043 res!499403) b!742032))

(assert (= (and b!742032 res!499397) b!742039))

(assert (= (and b!742039 c!81699) b!742034))

(assert (= (and b!742039 (not c!81699)) b!742040))

(assert (= (and b!742039 res!499394) b!742030))

(assert (= (and b!742030 res!499398) b!742038))

(assert (= (and b!742038 res!499390) b!742027))

(assert (= (and b!742027 res!499395) b!742035))

(declare-fun m!693029 () Bool)

(assert (=> b!742042 m!693029))

(declare-fun m!693031 () Bool)

(assert (=> b!742027 m!693031))

(assert (=> b!742027 m!693031))

(declare-fun m!693033 () Bool)

(assert (=> b!742027 m!693033))

(declare-fun m!693035 () Bool)

(assert (=> b!742038 m!693035))

(declare-fun m!693037 () Bool)

(assert (=> b!742038 m!693037))

(declare-fun m!693039 () Bool)

(assert (=> b!742028 m!693039))

(declare-fun m!693041 () Bool)

(assert (=> b!742030 m!693041))

(declare-fun m!693043 () Bool)

(assert (=> b!742030 m!693043))

(assert (=> b!742030 m!693041))

(declare-fun m!693045 () Bool)

(assert (=> b!742030 m!693045))

(declare-fun m!693047 () Bool)

(assert (=> b!742030 m!693047))

(declare-fun m!693049 () Bool)

(assert (=> b!742030 m!693049))

(assert (=> b!742040 m!693031))

(assert (=> b!742040 m!693031))

(declare-fun m!693051 () Bool)

(assert (=> b!742040 m!693051))

(declare-fun m!693053 () Bool)

(assert (=> b!742032 m!693053))

(declare-fun m!693055 () Bool)

(assert (=> b!742029 m!693055))

(assert (=> b!742031 m!693031))

(assert (=> b!742031 m!693031))

(declare-fun m!693057 () Bool)

(assert (=> b!742031 m!693057))

(assert (=> b!742043 m!693031))

(assert (=> b!742043 m!693031))

(declare-fun m!693059 () Bool)

(assert (=> b!742043 m!693059))

(assert (=> b!742043 m!693059))

(assert (=> b!742043 m!693031))

(declare-fun m!693061 () Bool)

(assert (=> b!742043 m!693061))

(declare-fun m!693063 () Bool)

(assert (=> b!742036 m!693063))

(declare-fun m!693065 () Bool)

(assert (=> b!742037 m!693065))

(assert (=> b!742035 m!693031))

(assert (=> b!742035 m!693031))

(declare-fun m!693067 () Bool)

(assert (=> b!742035 m!693067))

(declare-fun m!693069 () Bool)

(assert (=> start!65346 m!693069))

(declare-fun m!693071 () Bool)

(assert (=> start!65346 m!693071))

(assert (=> b!742034 m!693031))

(assert (=> b!742034 m!693031))

(declare-fun m!693073 () Bool)

(assert (=> b!742034 m!693073))

(check-sat (not b!742037) (not b!742038) (not b!742043) (not b!742036) (not b!742034) (not b!742027) (not b!742040) (not b!742035) (not b!742030) (not b!742029) (not b!742031) (not start!65346) (not b!742042) (not b!742028))
(check-sat)
