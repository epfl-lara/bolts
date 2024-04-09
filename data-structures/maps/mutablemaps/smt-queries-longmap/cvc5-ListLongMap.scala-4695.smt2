; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65248 () Bool)

(assert start!65248)

(declare-fun b!738930 () Bool)

(declare-fun res!496918 () Bool)

(declare-fun e!413247 () Bool)

(assert (=> b!738930 (=> (not res!496918) (not e!413247))))

(declare-datatypes ((array!41374 0))(
  ( (array!41375 (arr!19797 (Array (_ BitVec 32) (_ BitVec 64))) (size!20218 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41374)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!738930 (= res!496918 (and (= (size!20218 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20218 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20218 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!738931 () Bool)

(declare-fun e!413242 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7404 0))(
  ( (MissingZero!7404 (index!31983 (_ BitVec 32))) (Found!7404 (index!31984 (_ BitVec 32))) (Intermediate!7404 (undefined!8216 Bool) (index!31985 (_ BitVec 32)) (x!63003 (_ BitVec 32))) (Undefined!7404) (MissingVacant!7404 (index!31986 (_ BitVec 32))) )
))
(declare-fun lt!328097 () SeekEntryResult!7404)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41374 (_ BitVec 32)) SeekEntryResult!7404)

(assert (=> b!738931 (= e!413242 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19797 a!3186) j!159) a!3186 mask!3328) lt!328097))))

(declare-fun b!738932 () Bool)

(declare-fun e!413240 () Bool)

(assert (=> b!738932 (= e!413247 e!413240)))

(declare-fun res!496914 () Bool)

(assert (=> b!738932 (=> (not res!496914) (not e!413240))))

(declare-fun lt!328089 () SeekEntryResult!7404)

(assert (=> b!738932 (= res!496914 (or (= lt!328089 (MissingZero!7404 i!1173)) (= lt!328089 (MissingVacant!7404 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41374 (_ BitVec 32)) SeekEntryResult!7404)

(assert (=> b!738932 (= lt!328089 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!738933 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41374 (_ BitVec 32)) SeekEntryResult!7404)

(assert (=> b!738933 (= e!413242 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19797 a!3186) j!159) a!3186 mask!3328) (Found!7404 j!159)))))

(declare-fun b!738934 () Bool)

(declare-datatypes ((Unit!25234 0))(
  ( (Unit!25235) )
))
(declare-fun e!413236 () Unit!25234)

(declare-fun Unit!25236 () Unit!25234)

(assert (=> b!738934 (= e!413236 Unit!25236)))

(declare-fun lt!328088 () (_ BitVec 32))

(assert (=> b!738934 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328088 (select (arr!19797 a!3186) j!159) a!3186 mask!3328) lt!328097)))

(declare-fun b!738935 () Bool)

(declare-fun lt!328098 () SeekEntryResult!7404)

(declare-fun e!413239 () Bool)

(assert (=> b!738935 (= e!413239 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328088 resIntermediateIndex!5 (select (arr!19797 a!3186) j!159) a!3186 mask!3328) lt!328098)))))

(declare-fun b!738936 () Bool)

(declare-fun res!496906 () Bool)

(assert (=> b!738936 (=> (not res!496906) (not e!413240))))

(declare-datatypes ((List!13852 0))(
  ( (Nil!13849) (Cons!13848 (h!14920 (_ BitVec 64)) (t!20175 List!13852)) )
))
(declare-fun arrayNoDuplicates!0 (array!41374 (_ BitVec 32) List!13852) Bool)

(assert (=> b!738936 (= res!496906 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13849))))

(declare-fun b!738937 () Bool)

(declare-fun res!496919 () Bool)

(assert (=> b!738937 (=> (not res!496919) (not e!413247))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!738937 (= res!496919 (validKeyInArray!0 k!2102))))

(declare-fun b!738938 () Bool)

(declare-fun e!413243 () Bool)

(declare-fun e!413241 () Bool)

(assert (=> b!738938 (= e!413243 e!413241)))

(declare-fun res!496915 () Bool)

(assert (=> b!738938 (=> res!496915 e!413241)))

(assert (=> b!738938 (= res!496915 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328088 #b00000000000000000000000000000000) (bvsge lt!328088 (size!20218 a!3186))))))

(declare-fun lt!328090 () Unit!25234)

(assert (=> b!738938 (= lt!328090 e!413236)))

(declare-fun c!81396 () Bool)

(declare-fun lt!328095 () Bool)

(assert (=> b!738938 (= c!81396 lt!328095)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!738938 (= lt!328095 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738938 (= lt!328088 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun res!496913 () Bool)

(assert (=> start!65248 (=> (not res!496913) (not e!413247))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65248 (= res!496913 (validMask!0 mask!3328))))

(assert (=> start!65248 e!413247))

(assert (=> start!65248 true))

(declare-fun array_inv!15571 (array!41374) Bool)

(assert (=> start!65248 (array_inv!15571 a!3186)))

(declare-fun b!738939 () Bool)

(declare-fun res!496904 () Bool)

(assert (=> b!738939 (=> (not res!496904) (not e!413240))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41374 (_ BitVec 32)) Bool)

(assert (=> b!738939 (= res!496904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!738940 () Bool)

(declare-fun res!496912 () Bool)

(declare-fun e!413245 () Bool)

(assert (=> b!738940 (=> (not res!496912) (not e!413245))))

(assert (=> b!738940 (= res!496912 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19797 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!738941 () Bool)

(declare-fun res!496907 () Bool)

(assert (=> b!738941 (=> (not res!496907) (not e!413247))))

(assert (=> b!738941 (= res!496907 (validKeyInArray!0 (select (arr!19797 a!3186) j!159)))))

(declare-fun b!738942 () Bool)

(declare-fun e!413238 () Bool)

(declare-fun e!413237 () Bool)

(assert (=> b!738942 (= e!413238 e!413237)))

(declare-fun res!496916 () Bool)

(assert (=> b!738942 (=> (not res!496916) (not e!413237))))

(declare-fun lt!328094 () SeekEntryResult!7404)

(assert (=> b!738942 (= res!496916 (= (seekEntryOrOpen!0 (select (arr!19797 a!3186) j!159) a!3186 mask!3328) lt!328094))))

(assert (=> b!738942 (= lt!328094 (Found!7404 j!159))))

(declare-fun b!738943 () Bool)

(assert (=> b!738943 (= e!413239 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328088 (select (arr!19797 a!3186) j!159) a!3186 mask!3328) lt!328097)))))

(declare-fun b!738944 () Bool)

(assert (=> b!738944 (= e!413237 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19797 a!3186) j!159) a!3186 mask!3328) lt!328094))))

(declare-fun b!738945 () Bool)

(declare-fun res!496920 () Bool)

(assert (=> b!738945 (=> (not res!496920) (not e!413240))))

(assert (=> b!738945 (= res!496920 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20218 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20218 a!3186))))))

(declare-fun b!738946 () Bool)

(declare-fun e!413244 () Bool)

(assert (=> b!738946 (= e!413244 (not e!413243))))

(declare-fun res!496917 () Bool)

(assert (=> b!738946 (=> res!496917 e!413243)))

(declare-fun lt!328092 () SeekEntryResult!7404)

(assert (=> b!738946 (= res!496917 (or (not (is-Intermediate!7404 lt!328092)) (bvsge x!1131 (x!63003 lt!328092))))))

(assert (=> b!738946 (= lt!328098 (Found!7404 j!159))))

(assert (=> b!738946 e!413238))

(declare-fun res!496909 () Bool)

(assert (=> b!738946 (=> (not res!496909) (not e!413238))))

(assert (=> b!738946 (= res!496909 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328091 () Unit!25234)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41374 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25234)

(assert (=> b!738946 (= lt!328091 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!738947 () Bool)

(declare-fun res!496908 () Bool)

(assert (=> b!738947 (=> (not res!496908) (not e!413245))))

(assert (=> b!738947 (= res!496908 e!413242)))

(declare-fun c!81394 () Bool)

(assert (=> b!738947 (= c!81394 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!738948 () Bool)

(assert (=> b!738948 (= e!413245 e!413244)))

(declare-fun res!496905 () Bool)

(assert (=> b!738948 (=> (not res!496905) (not e!413244))))

(declare-fun lt!328099 () SeekEntryResult!7404)

(assert (=> b!738948 (= res!496905 (= lt!328099 lt!328092))))

(declare-fun lt!328096 () array!41374)

(declare-fun lt!328087 () (_ BitVec 64))

(assert (=> b!738948 (= lt!328092 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328087 lt!328096 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738948 (= lt!328099 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328087 mask!3328) lt!328087 lt!328096 mask!3328))))

(assert (=> b!738948 (= lt!328087 (select (store (arr!19797 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!738948 (= lt!328096 (array!41375 (store (arr!19797 a!3186) i!1173 k!2102) (size!20218 a!3186)))))

(declare-fun b!738949 () Bool)

(declare-fun res!496903 () Bool)

(assert (=> b!738949 (=> (not res!496903) (not e!413247))))

(declare-fun arrayContainsKey!0 (array!41374 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!738949 (= res!496903 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!738950 () Bool)

(assert (=> b!738950 (= e!413241 true)))

(declare-fun lt!328093 () SeekEntryResult!7404)

(assert (=> b!738950 (= lt!328093 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328088 lt!328087 lt!328096 mask!3328))))

(declare-fun b!738951 () Bool)

(assert (=> b!738951 (= e!413240 e!413245)))

(declare-fun res!496911 () Bool)

(assert (=> b!738951 (=> (not res!496911) (not e!413245))))

(assert (=> b!738951 (= res!496911 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19797 a!3186) j!159) mask!3328) (select (arr!19797 a!3186) j!159) a!3186 mask!3328) lt!328097))))

(assert (=> b!738951 (= lt!328097 (Intermediate!7404 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!738952 () Bool)

(declare-fun Unit!25237 () Unit!25234)

(assert (=> b!738952 (= e!413236 Unit!25237)))

(declare-fun lt!328100 () SeekEntryResult!7404)

(assert (=> b!738952 (= lt!328100 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19797 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!738952 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328088 resIntermediateIndex!5 (select (arr!19797 a!3186) j!159) a!3186 mask!3328) lt!328098)))

(declare-fun b!738953 () Bool)

(declare-fun res!496910 () Bool)

(assert (=> b!738953 (=> res!496910 e!413241)))

(assert (=> b!738953 (= res!496910 e!413239)))

(declare-fun c!81395 () Bool)

(assert (=> b!738953 (= c!81395 lt!328095)))

(assert (= (and start!65248 res!496913) b!738930))

(assert (= (and b!738930 res!496918) b!738941))

(assert (= (and b!738941 res!496907) b!738937))

(assert (= (and b!738937 res!496919) b!738949))

(assert (= (and b!738949 res!496903) b!738932))

(assert (= (and b!738932 res!496914) b!738939))

(assert (= (and b!738939 res!496904) b!738936))

(assert (= (and b!738936 res!496906) b!738945))

(assert (= (and b!738945 res!496920) b!738951))

(assert (= (and b!738951 res!496911) b!738940))

(assert (= (and b!738940 res!496912) b!738947))

(assert (= (and b!738947 c!81394) b!738931))

(assert (= (and b!738947 (not c!81394)) b!738933))

(assert (= (and b!738947 res!496908) b!738948))

(assert (= (and b!738948 res!496905) b!738946))

(assert (= (and b!738946 res!496909) b!738942))

(assert (= (and b!738942 res!496916) b!738944))

(assert (= (and b!738946 (not res!496917)) b!738938))

(assert (= (and b!738938 c!81396) b!738934))

(assert (= (and b!738938 (not c!81396)) b!738952))

(assert (= (and b!738938 (not res!496915)) b!738953))

(assert (= (and b!738953 c!81395) b!738943))

(assert (= (and b!738953 (not c!81395)) b!738935))

(assert (= (and b!738953 (not res!496910)) b!738950))

(declare-fun m!690505 () Bool)

(assert (=> b!738932 m!690505))

(declare-fun m!690507 () Bool)

(assert (=> b!738936 m!690507))

(declare-fun m!690509 () Bool)

(assert (=> b!738946 m!690509))

(declare-fun m!690511 () Bool)

(assert (=> b!738946 m!690511))

(declare-fun m!690513 () Bool)

(assert (=> b!738950 m!690513))

(declare-fun m!690515 () Bool)

(assert (=> b!738943 m!690515))

(assert (=> b!738943 m!690515))

(declare-fun m!690517 () Bool)

(assert (=> b!738943 m!690517))

(declare-fun m!690519 () Bool)

(assert (=> b!738937 m!690519))

(assert (=> b!738941 m!690515))

(assert (=> b!738941 m!690515))

(declare-fun m!690521 () Bool)

(assert (=> b!738941 m!690521))

(assert (=> b!738931 m!690515))

(assert (=> b!738931 m!690515))

(declare-fun m!690523 () Bool)

(assert (=> b!738931 m!690523))

(assert (=> b!738952 m!690515))

(assert (=> b!738952 m!690515))

(declare-fun m!690525 () Bool)

(assert (=> b!738952 m!690525))

(assert (=> b!738952 m!690515))

(declare-fun m!690527 () Bool)

(assert (=> b!738952 m!690527))

(declare-fun m!690529 () Bool)

(assert (=> b!738940 m!690529))

(assert (=> b!738935 m!690515))

(assert (=> b!738935 m!690515))

(assert (=> b!738935 m!690527))

(assert (=> b!738934 m!690515))

(assert (=> b!738934 m!690515))

(assert (=> b!738934 m!690517))

(assert (=> b!738944 m!690515))

(assert (=> b!738944 m!690515))

(declare-fun m!690531 () Bool)

(assert (=> b!738944 m!690531))

(declare-fun m!690533 () Bool)

(assert (=> b!738949 m!690533))

(assert (=> b!738951 m!690515))

(assert (=> b!738951 m!690515))

(declare-fun m!690535 () Bool)

(assert (=> b!738951 m!690535))

(assert (=> b!738951 m!690535))

(assert (=> b!738951 m!690515))

(declare-fun m!690537 () Bool)

(assert (=> b!738951 m!690537))

(declare-fun m!690539 () Bool)

(assert (=> b!738938 m!690539))

(declare-fun m!690541 () Bool)

(assert (=> b!738939 m!690541))

(declare-fun m!690543 () Bool)

(assert (=> b!738948 m!690543))

(declare-fun m!690545 () Bool)

(assert (=> b!738948 m!690545))

(declare-fun m!690547 () Bool)

(assert (=> b!738948 m!690547))

(assert (=> b!738948 m!690545))

(declare-fun m!690549 () Bool)

(assert (=> b!738948 m!690549))

(declare-fun m!690551 () Bool)

(assert (=> b!738948 m!690551))

(assert (=> b!738933 m!690515))

(assert (=> b!738933 m!690515))

(assert (=> b!738933 m!690525))

(declare-fun m!690553 () Bool)

(assert (=> start!65248 m!690553))

(declare-fun m!690555 () Bool)

(assert (=> start!65248 m!690555))

(assert (=> b!738942 m!690515))

(assert (=> b!738942 m!690515))

(declare-fun m!690557 () Bool)

(assert (=> b!738942 m!690557))

(push 1)

