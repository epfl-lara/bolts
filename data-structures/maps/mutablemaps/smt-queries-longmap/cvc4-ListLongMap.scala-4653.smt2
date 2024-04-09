; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64712 () Bool)

(assert start!64712)

(declare-fun b!729366 () Bool)

(declare-fun res!489904 () Bool)

(declare-fun e!408245 () Bool)

(assert (=> b!729366 (=> (not res!489904) (not e!408245))))

(declare-datatypes ((array!41114 0))(
  ( (array!41115 (arr!19673 (Array (_ BitVec 32) (_ BitVec 64))) (size!20094 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41114)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41114 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729366 (= res!489904 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!729367 () Bool)

(declare-fun e!408246 () Bool)

(assert (=> b!729367 (= e!408246 true)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!323156 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729367 (= lt!323156 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!408252 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!729368 () Bool)

(declare-datatypes ((SeekEntryResult!7280 0))(
  ( (MissingZero!7280 (index!31487 (_ BitVec 32))) (Found!7280 (index!31488 (_ BitVec 32))) (Intermediate!7280 (undefined!8092 Bool) (index!31489 (_ BitVec 32)) (x!62495 (_ BitVec 32))) (Undefined!7280) (MissingVacant!7280 (index!31490 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41114 (_ BitVec 32)) SeekEntryResult!7280)

(assert (=> b!729368 (= e!408252 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19673 a!3186) j!159) a!3186 mask!3328) (Found!7280 j!159)))))

(declare-fun b!729369 () Bool)

(declare-fun res!489906 () Bool)

(declare-fun e!408244 () Bool)

(assert (=> b!729369 (=> (not res!489906) (not e!408244))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!729369 (= res!489906 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19673 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!729370 () Bool)

(declare-fun e!408248 () Bool)

(assert (=> b!729370 (= e!408248 e!408244)))

(declare-fun res!489918 () Bool)

(assert (=> b!729370 (=> (not res!489918) (not e!408244))))

(declare-fun lt!323152 () SeekEntryResult!7280)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41114 (_ BitVec 32)) SeekEntryResult!7280)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729370 (= res!489918 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19673 a!3186) j!159) mask!3328) (select (arr!19673 a!3186) j!159) a!3186 mask!3328) lt!323152))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!729370 (= lt!323152 (Intermediate!7280 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729371 () Bool)

(declare-fun res!489914 () Bool)

(assert (=> b!729371 (=> (not res!489914) (not e!408248))))

(assert (=> b!729371 (= res!489914 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20094 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20094 a!3186))))))

(declare-fun b!729372 () Bool)

(assert (=> b!729372 (= e!408252 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19673 a!3186) j!159) a!3186 mask!3328) lt!323152))))

(declare-fun b!729373 () Bool)

(declare-fun res!489913 () Bool)

(assert (=> b!729373 (=> (not res!489913) (not e!408245))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729373 (= res!489913 (validKeyInArray!0 (select (arr!19673 a!3186) j!159)))))

(declare-fun b!729374 () Bool)

(assert (=> b!729374 (= e!408245 e!408248)))

(declare-fun res!489917 () Bool)

(assert (=> b!729374 (=> (not res!489917) (not e!408248))))

(declare-fun lt!323157 () SeekEntryResult!7280)

(assert (=> b!729374 (= res!489917 (or (= lt!323157 (MissingZero!7280 i!1173)) (= lt!323157 (MissingVacant!7280 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41114 (_ BitVec 32)) SeekEntryResult!7280)

(assert (=> b!729374 (= lt!323157 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun lt!323158 () SeekEntryResult!7280)

(declare-fun e!408250 () Bool)

(declare-fun b!729375 () Bool)

(assert (=> b!729375 (= e!408250 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19673 a!3186) j!159) a!3186 mask!3328) lt!323158))))

(declare-fun b!729376 () Bool)

(declare-fun res!489911 () Bool)

(assert (=> b!729376 (=> (not res!489911) (not e!408248))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41114 (_ BitVec 32)) Bool)

(assert (=> b!729376 (= res!489911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!729377 () Bool)

(declare-fun res!489909 () Bool)

(assert (=> b!729377 (=> (not res!489909) (not e!408248))))

(declare-datatypes ((List!13728 0))(
  ( (Nil!13725) (Cons!13724 (h!14784 (_ BitVec 64)) (t!20051 List!13728)) )
))
(declare-fun arrayNoDuplicates!0 (array!41114 (_ BitVec 32) List!13728) Bool)

(assert (=> b!729377 (= res!489909 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13725))))

(declare-fun b!729378 () Bool)

(declare-fun e!408249 () Bool)

(assert (=> b!729378 (= e!408244 e!408249)))

(declare-fun res!489903 () Bool)

(assert (=> b!729378 (=> (not res!489903) (not e!408249))))

(declare-fun lt!323159 () SeekEntryResult!7280)

(declare-fun lt!323155 () SeekEntryResult!7280)

(assert (=> b!729378 (= res!489903 (= lt!323159 lt!323155))))

(declare-fun lt!323151 () array!41114)

(declare-fun lt!323154 () (_ BitVec 64))

(assert (=> b!729378 (= lt!323155 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323154 lt!323151 mask!3328))))

(assert (=> b!729378 (= lt!323159 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323154 mask!3328) lt!323154 lt!323151 mask!3328))))

(assert (=> b!729378 (= lt!323154 (select (store (arr!19673 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!729378 (= lt!323151 (array!41115 (store (arr!19673 a!3186) i!1173 k!2102) (size!20094 a!3186)))))

(declare-fun res!489907 () Bool)

(assert (=> start!64712 (=> (not res!489907) (not e!408245))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64712 (= res!489907 (validMask!0 mask!3328))))

(assert (=> start!64712 e!408245))

(assert (=> start!64712 true))

(declare-fun array_inv!15447 (array!41114) Bool)

(assert (=> start!64712 (array_inv!15447 a!3186)))

(declare-fun b!729379 () Bool)

(declare-fun e!408251 () Bool)

(assert (=> b!729379 (= e!408251 e!408250)))

(declare-fun res!489905 () Bool)

(assert (=> b!729379 (=> (not res!489905) (not e!408250))))

(assert (=> b!729379 (= res!489905 (= (seekEntryOrOpen!0 (select (arr!19673 a!3186) j!159) a!3186 mask!3328) lt!323158))))

(assert (=> b!729379 (= lt!323158 (Found!7280 j!159))))

(declare-fun b!729380 () Bool)

(declare-fun res!489916 () Bool)

(assert (=> b!729380 (=> (not res!489916) (not e!408245))))

(assert (=> b!729380 (= res!489916 (validKeyInArray!0 k!2102))))

(declare-fun b!729381 () Bool)

(assert (=> b!729381 (= e!408249 (not e!408246))))

(declare-fun res!489915 () Bool)

(assert (=> b!729381 (=> res!489915 e!408246)))

(assert (=> b!729381 (= res!489915 (or (not (is-Intermediate!7280 lt!323155)) (bvsge x!1131 (x!62495 lt!323155))))))

(assert (=> b!729381 e!408251))

(declare-fun res!489908 () Bool)

(assert (=> b!729381 (=> (not res!489908) (not e!408251))))

(assert (=> b!729381 (= res!489908 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24878 0))(
  ( (Unit!24879) )
))
(declare-fun lt!323153 () Unit!24878)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41114 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24878)

(assert (=> b!729381 (= lt!323153 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!729382 () Bool)

(declare-fun res!489910 () Bool)

(assert (=> b!729382 (=> (not res!489910) (not e!408245))))

(assert (=> b!729382 (= res!489910 (and (= (size!20094 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20094 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20094 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!729383 () Bool)

(declare-fun res!489912 () Bool)

(assert (=> b!729383 (=> (not res!489912) (not e!408244))))

(assert (=> b!729383 (= res!489912 e!408252)))

(declare-fun c!80106 () Bool)

(assert (=> b!729383 (= c!80106 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!64712 res!489907) b!729382))

(assert (= (and b!729382 res!489910) b!729373))

(assert (= (and b!729373 res!489913) b!729380))

(assert (= (and b!729380 res!489916) b!729366))

(assert (= (and b!729366 res!489904) b!729374))

(assert (= (and b!729374 res!489917) b!729376))

(assert (= (and b!729376 res!489911) b!729377))

(assert (= (and b!729377 res!489909) b!729371))

(assert (= (and b!729371 res!489914) b!729370))

(assert (= (and b!729370 res!489918) b!729369))

(assert (= (and b!729369 res!489906) b!729383))

(assert (= (and b!729383 c!80106) b!729372))

(assert (= (and b!729383 (not c!80106)) b!729368))

(assert (= (and b!729383 res!489912) b!729378))

(assert (= (and b!729378 res!489903) b!729381))

(assert (= (and b!729381 res!489908) b!729379))

(assert (= (and b!729379 res!489905) b!729375))

(assert (= (and b!729381 (not res!489915)) b!729367))

(declare-fun m!683101 () Bool)

(assert (=> b!729377 m!683101))

(declare-fun m!683103 () Bool)

(assert (=> b!729366 m!683103))

(declare-fun m!683105 () Bool)

(assert (=> b!729375 m!683105))

(assert (=> b!729375 m!683105))

(declare-fun m!683107 () Bool)

(assert (=> b!729375 m!683107))

(declare-fun m!683109 () Bool)

(assert (=> start!64712 m!683109))

(declare-fun m!683111 () Bool)

(assert (=> start!64712 m!683111))

(declare-fun m!683113 () Bool)

(assert (=> b!729369 m!683113))

(assert (=> b!729370 m!683105))

(assert (=> b!729370 m!683105))

(declare-fun m!683115 () Bool)

(assert (=> b!729370 m!683115))

(assert (=> b!729370 m!683115))

(assert (=> b!729370 m!683105))

(declare-fun m!683117 () Bool)

(assert (=> b!729370 m!683117))

(declare-fun m!683119 () Bool)

(assert (=> b!729367 m!683119))

(assert (=> b!729379 m!683105))

(assert (=> b!729379 m!683105))

(declare-fun m!683121 () Bool)

(assert (=> b!729379 m!683121))

(declare-fun m!683123 () Bool)

(assert (=> b!729376 m!683123))

(declare-fun m!683125 () Bool)

(assert (=> b!729381 m!683125))

(declare-fun m!683127 () Bool)

(assert (=> b!729381 m!683127))

(declare-fun m!683129 () Bool)

(assert (=> b!729378 m!683129))

(declare-fun m!683131 () Bool)

(assert (=> b!729378 m!683131))

(declare-fun m!683133 () Bool)

(assert (=> b!729378 m!683133))

(assert (=> b!729378 m!683131))

(declare-fun m!683135 () Bool)

(assert (=> b!729378 m!683135))

(declare-fun m!683137 () Bool)

(assert (=> b!729378 m!683137))

(assert (=> b!729368 m!683105))

(assert (=> b!729368 m!683105))

(declare-fun m!683139 () Bool)

(assert (=> b!729368 m!683139))

(declare-fun m!683141 () Bool)

(assert (=> b!729380 m!683141))

(assert (=> b!729372 m!683105))

(assert (=> b!729372 m!683105))

(declare-fun m!683143 () Bool)

(assert (=> b!729372 m!683143))

(declare-fun m!683145 () Bool)

(assert (=> b!729374 m!683145))

(assert (=> b!729373 m!683105))

(assert (=> b!729373 m!683105))

(declare-fun m!683147 () Bool)

(assert (=> b!729373 m!683147))

(push 1)

(assert (not b!729377))

(assert (not b!729372))

(assert (not b!729376))

(assert (not b!729367))

(assert (not b!729368))

(assert (not b!729379))

(assert (not b!729380))

(assert (not b!729370))

(assert (not b!729374))

(assert (not b!729378))

(assert (not start!64712))

(assert (not b!729373))

(assert (not b!729381))

(assert (not b!729375))

(assert (not b!729366))

(check-sat)

(pop 1)

(push 1)

