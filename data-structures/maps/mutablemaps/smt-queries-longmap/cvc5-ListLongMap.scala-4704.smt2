; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65302 () Bool)

(assert start!65302)

(declare-fun b!740905 () Bool)

(declare-fun res!498404 () Bool)

(declare-fun e!414211 () Bool)

(assert (=> b!740905 (=> (not res!498404) (not e!414211))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41428 0))(
  ( (array!41429 (arr!19824 (Array (_ BitVec 32) (_ BitVec 64))) (size!20245 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41428)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!740905 (= res!498404 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20245 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20245 a!3186))))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!740906 () Bool)

(declare-fun e!414210 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7431 0))(
  ( (MissingZero!7431 (index!32091 (_ BitVec 32))) (Found!7431 (index!32092 (_ BitVec 32))) (Intermediate!7431 (undefined!8243 Bool) (index!32093 (_ BitVec 32)) (x!63102 (_ BitVec 32))) (Undefined!7431) (MissingVacant!7431 (index!32094 (_ BitVec 32))) )
))
(declare-fun lt!329205 () SeekEntryResult!7431)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41428 (_ BitVec 32)) SeekEntryResult!7431)

(assert (=> b!740906 (= e!414210 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19824 a!3186) j!159) a!3186 mask!3328) lt!329205))))

(declare-fun res!498410 () Bool)

(declare-fun e!414215 () Bool)

(assert (=> start!65302 (=> (not res!498410) (not e!414215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65302 (= res!498410 (validMask!0 mask!3328))))

(assert (=> start!65302 e!414215))

(assert (=> start!65302 true))

(declare-fun array_inv!15598 (array!41428) Bool)

(assert (=> start!65302 (array_inv!15598 a!3186)))

(declare-fun b!740907 () Bool)

(declare-fun e!414212 () Bool)

(assert (=> b!740907 (= e!414212 (not true))))

(declare-fun e!414213 () Bool)

(assert (=> b!740907 e!414213))

(declare-fun res!498408 () Bool)

(assert (=> b!740907 (=> (not res!498408) (not e!414213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41428 (_ BitVec 32)) Bool)

(assert (=> b!740907 (= res!498408 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25342 0))(
  ( (Unit!25343) )
))
(declare-fun lt!329210 () Unit!25342)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41428 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25342)

(assert (=> b!740907 (= lt!329210 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!740908 () Bool)

(declare-fun res!498401 () Bool)

(assert (=> b!740908 (=> (not res!498401) (not e!414215))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!740908 (= res!498401 (and (= (size!20245 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20245 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20245 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!740909 () Bool)

(declare-fun res!498413 () Bool)

(declare-fun e!414216 () Bool)

(assert (=> b!740909 (=> (not res!498413) (not e!414216))))

(declare-fun e!414209 () Bool)

(assert (=> b!740909 (= res!498413 e!414209)))

(declare-fun c!81633 () Bool)

(assert (=> b!740909 (= c!81633 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!740910 () Bool)

(assert (=> b!740910 (= e!414215 e!414211)))

(declare-fun res!498402 () Bool)

(assert (=> b!740910 (=> (not res!498402) (not e!414211))))

(declare-fun lt!329207 () SeekEntryResult!7431)

(assert (=> b!740910 (= res!498402 (or (= lt!329207 (MissingZero!7431 i!1173)) (= lt!329207 (MissingVacant!7431 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41428 (_ BitVec 32)) SeekEntryResult!7431)

(assert (=> b!740910 (= lt!329207 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!740911 () Bool)

(assert (=> b!740911 (= e!414211 e!414216)))

(declare-fun res!498407 () Bool)

(assert (=> b!740911 (=> (not res!498407) (not e!414216))))

(declare-fun lt!329209 () SeekEntryResult!7431)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41428 (_ BitVec 32)) SeekEntryResult!7431)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740911 (= res!498407 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19824 a!3186) j!159) mask!3328) (select (arr!19824 a!3186) j!159) a!3186 mask!3328) lt!329209))))

(assert (=> b!740911 (= lt!329209 (Intermediate!7431 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!740912 () Bool)

(declare-fun res!498412 () Bool)

(assert (=> b!740912 (=> (not res!498412) (not e!414216))))

(assert (=> b!740912 (= res!498412 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19824 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!740913 () Bool)

(assert (=> b!740913 (= e!414209 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19824 a!3186) j!159) a!3186 mask!3328) lt!329209))))

(declare-fun b!740914 () Bool)

(declare-fun res!498403 () Bool)

(assert (=> b!740914 (=> (not res!498403) (not e!414211))))

(declare-datatypes ((List!13879 0))(
  ( (Nil!13876) (Cons!13875 (h!14947 (_ BitVec 64)) (t!20202 List!13879)) )
))
(declare-fun arrayNoDuplicates!0 (array!41428 (_ BitVec 32) List!13879) Bool)

(assert (=> b!740914 (= res!498403 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13876))))

(declare-fun b!740915 () Bool)

(declare-fun res!498414 () Bool)

(assert (=> b!740915 (=> (not res!498414) (not e!414215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!740915 (= res!498414 (validKeyInArray!0 k!2102))))

(declare-fun b!740916 () Bool)

(assert (=> b!740916 (= e!414213 e!414210)))

(declare-fun res!498411 () Bool)

(assert (=> b!740916 (=> (not res!498411) (not e!414210))))

(assert (=> b!740916 (= res!498411 (= (seekEntryOrOpen!0 (select (arr!19824 a!3186) j!159) a!3186 mask!3328) lt!329205))))

(assert (=> b!740916 (= lt!329205 (Found!7431 j!159))))

(declare-fun b!740917 () Bool)

(declare-fun res!498409 () Bool)

(assert (=> b!740917 (=> (not res!498409) (not e!414215))))

(assert (=> b!740917 (= res!498409 (validKeyInArray!0 (select (arr!19824 a!3186) j!159)))))

(declare-fun b!740918 () Bool)

(declare-fun res!498405 () Bool)

(assert (=> b!740918 (=> (not res!498405) (not e!414215))))

(declare-fun arrayContainsKey!0 (array!41428 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!740918 (= res!498405 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!740919 () Bool)

(assert (=> b!740919 (= e!414216 e!414212)))

(declare-fun res!498406 () Bool)

(assert (=> b!740919 (=> (not res!498406) (not e!414212))))

(declare-fun lt!329208 () array!41428)

(declare-fun lt!329206 () (_ BitVec 64))

(assert (=> b!740919 (= res!498406 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329206 mask!3328) lt!329206 lt!329208 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329206 lt!329208 mask!3328)))))

(assert (=> b!740919 (= lt!329206 (select (store (arr!19824 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!740919 (= lt!329208 (array!41429 (store (arr!19824 a!3186) i!1173 k!2102) (size!20245 a!3186)))))

(declare-fun b!740920 () Bool)

(assert (=> b!740920 (= e!414209 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19824 a!3186) j!159) a!3186 mask!3328) (Found!7431 j!159)))))

(declare-fun b!740921 () Bool)

(declare-fun res!498400 () Bool)

(assert (=> b!740921 (=> (not res!498400) (not e!414211))))

(assert (=> b!740921 (= res!498400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65302 res!498410) b!740908))

(assert (= (and b!740908 res!498401) b!740917))

(assert (= (and b!740917 res!498409) b!740915))

(assert (= (and b!740915 res!498414) b!740918))

(assert (= (and b!740918 res!498405) b!740910))

(assert (= (and b!740910 res!498402) b!740921))

(assert (= (and b!740921 res!498400) b!740914))

(assert (= (and b!740914 res!498403) b!740905))

(assert (= (and b!740905 res!498404) b!740911))

(assert (= (and b!740911 res!498407) b!740912))

(assert (= (and b!740912 res!498412) b!740909))

(assert (= (and b!740909 c!81633) b!740913))

(assert (= (and b!740909 (not c!81633)) b!740920))

(assert (= (and b!740909 res!498413) b!740919))

(assert (= (and b!740919 res!498406) b!740907))

(assert (= (and b!740907 res!498408) b!740916))

(assert (= (and b!740916 res!498411) b!740906))

(declare-fun m!692017 () Bool)

(assert (=> b!740914 m!692017))

(declare-fun m!692019 () Bool)

(assert (=> b!740911 m!692019))

(assert (=> b!740911 m!692019))

(declare-fun m!692021 () Bool)

(assert (=> b!740911 m!692021))

(assert (=> b!740911 m!692021))

(assert (=> b!740911 m!692019))

(declare-fun m!692023 () Bool)

(assert (=> b!740911 m!692023))

(declare-fun m!692025 () Bool)

(assert (=> b!740918 m!692025))

(declare-fun m!692027 () Bool)

(assert (=> b!740915 m!692027))

(assert (=> b!740913 m!692019))

(assert (=> b!740913 m!692019))

(declare-fun m!692029 () Bool)

(assert (=> b!740913 m!692029))

(declare-fun m!692031 () Bool)

(assert (=> b!740921 m!692031))

(declare-fun m!692033 () Bool)

(assert (=> b!740912 m!692033))

(declare-fun m!692035 () Bool)

(assert (=> b!740919 m!692035))

(declare-fun m!692037 () Bool)

(assert (=> b!740919 m!692037))

(declare-fun m!692039 () Bool)

(assert (=> b!740919 m!692039))

(declare-fun m!692041 () Bool)

(assert (=> b!740919 m!692041))

(assert (=> b!740919 m!692039))

(declare-fun m!692043 () Bool)

(assert (=> b!740919 m!692043))

(assert (=> b!740916 m!692019))

(assert (=> b!740916 m!692019))

(declare-fun m!692045 () Bool)

(assert (=> b!740916 m!692045))

(assert (=> b!740917 m!692019))

(assert (=> b!740917 m!692019))

(declare-fun m!692047 () Bool)

(assert (=> b!740917 m!692047))

(assert (=> b!740920 m!692019))

(assert (=> b!740920 m!692019))

(declare-fun m!692049 () Bool)

(assert (=> b!740920 m!692049))

(assert (=> b!740906 m!692019))

(assert (=> b!740906 m!692019))

(declare-fun m!692051 () Bool)

(assert (=> b!740906 m!692051))

(declare-fun m!692053 () Bool)

(assert (=> b!740910 m!692053))

(declare-fun m!692055 () Bool)

(assert (=> start!65302 m!692055))

(declare-fun m!692057 () Bool)

(assert (=> start!65302 m!692057))

(declare-fun m!692059 () Bool)

(assert (=> b!740907 m!692059))

(declare-fun m!692061 () Bool)

(assert (=> b!740907 m!692061))

(push 1)

