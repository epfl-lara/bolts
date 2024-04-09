; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64492 () Bool)

(assert start!64492)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!406075 () Bool)

(declare-datatypes ((SeekEntryResult!7206 0))(
  ( (MissingZero!7206 (index!31191 (_ BitVec 32))) (Found!7206 (index!31192 (_ BitVec 32))) (Intermediate!7206 (undefined!8018 Bool) (index!31193 (_ BitVec 32)) (x!62217 (_ BitVec 32))) (Undefined!7206) (MissingVacant!7206 (index!31194 (_ BitVec 32))) )
))
(declare-fun lt!321209 () SeekEntryResult!7206)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!40963 0))(
  ( (array!40964 (arr!19599 (Array (_ BitVec 32) (_ BitVec 64))) (size!20020 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40963)

(declare-fun b!725032 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40963 (_ BitVec 32)) SeekEntryResult!7206)

(assert (=> b!725032 (= e!406075 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19599 a!3186) j!159) a!3186 mask!3328) lt!321209))))

(declare-fun b!725033 () Bool)

(declare-fun res!486316 () Bool)

(declare-fun e!406074 () Bool)

(assert (=> b!725033 (=> (not res!486316) (not e!406074))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725033 (= res!486316 (validKeyInArray!0 (select (arr!19599 a!3186) j!159)))))

(declare-fun b!725034 () Bool)

(declare-fun e!406080 () Bool)

(declare-fun e!406079 () Bool)

(assert (=> b!725034 (= e!406080 e!406079)))

(declare-fun res!486309 () Bool)

(assert (=> b!725034 (=> (not res!486309) (not e!406079))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725034 (= res!486309 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19599 a!3186) j!159) mask!3328) (select (arr!19599 a!3186) j!159) a!3186 mask!3328) lt!321209))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!725034 (= lt!321209 (Intermediate!7206 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725035 () Bool)

(assert (=> b!725035 (= e!406074 e!406080)))

(declare-fun res!486304 () Bool)

(assert (=> b!725035 (=> (not res!486304) (not e!406080))))

(declare-fun lt!321210 () SeekEntryResult!7206)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!725035 (= res!486304 (or (= lt!321210 (MissingZero!7206 i!1173)) (= lt!321210 (MissingVacant!7206 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40963 (_ BitVec 32)) SeekEntryResult!7206)

(assert (=> b!725035 (= lt!321210 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!725036 () Bool)

(declare-fun e!406073 () Bool)

(declare-fun lt!321211 () SeekEntryResult!7206)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40963 (_ BitVec 32)) SeekEntryResult!7206)

(assert (=> b!725036 (= e!406073 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19599 a!3186) j!159) a!3186 mask!3328) lt!321211))))

(declare-fun b!725037 () Bool)

(declare-fun res!486306 () Bool)

(assert (=> b!725037 (=> (not res!486306) (not e!406080))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40963 (_ BitVec 32)) Bool)

(assert (=> b!725037 (= res!486306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!725038 () Bool)

(declare-fun res!486314 () Bool)

(assert (=> b!725038 (=> (not res!486314) (not e!406080))))

(declare-datatypes ((List!13654 0))(
  ( (Nil!13651) (Cons!13650 (h!14707 (_ BitVec 64)) (t!19977 List!13654)) )
))
(declare-fun arrayNoDuplicates!0 (array!40963 (_ BitVec 32) List!13654) Bool)

(assert (=> b!725038 (= res!486314 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13651))))

(declare-fun b!725039 () Bool)

(declare-fun e!406077 () Bool)

(assert (=> b!725039 (= e!406077 e!406073)))

(declare-fun res!486307 () Bool)

(assert (=> b!725039 (=> (not res!486307) (not e!406073))))

(assert (=> b!725039 (= res!486307 (= (seekEntryOrOpen!0 (select (arr!19599 a!3186) j!159) a!3186 mask!3328) lt!321211))))

(assert (=> b!725039 (= lt!321211 (Found!7206 j!159))))

(declare-fun b!725040 () Bool)

(declare-fun res!486313 () Bool)

(assert (=> b!725040 (=> (not res!486313) (not e!406080))))

(assert (=> b!725040 (= res!486313 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20020 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20020 a!3186))))))

(declare-fun b!725041 () Bool)

(declare-fun res!486317 () Bool)

(assert (=> b!725041 (=> (not res!486317) (not e!406079))))

(assert (=> b!725041 (= res!486317 e!406075)))

(declare-fun c!79737 () Bool)

(assert (=> b!725041 (= c!79737 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725042 () Bool)

(declare-fun res!486308 () Bool)

(assert (=> b!725042 (=> (not res!486308) (not e!406074))))

(declare-fun arrayContainsKey!0 (array!40963 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725042 (= res!486308 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725043 () Bool)

(declare-fun e!406076 () Bool)

(assert (=> b!725043 (= e!406076 (not true))))

(assert (=> b!725043 e!406077))

(declare-fun res!486318 () Bool)

(assert (=> b!725043 (=> (not res!486318) (not e!406077))))

(assert (=> b!725043 (= res!486318 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24730 0))(
  ( (Unit!24731) )
))
(declare-fun lt!321208 () Unit!24730)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40963 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24730)

(assert (=> b!725043 (= lt!321208 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!725044 () Bool)

(declare-fun res!486310 () Bool)

(assert (=> b!725044 (=> (not res!486310) (not e!406074))))

(assert (=> b!725044 (= res!486310 (validKeyInArray!0 k!2102))))

(declare-fun b!725045 () Bool)

(declare-fun res!486311 () Bool)

(assert (=> b!725045 (=> (not res!486311) (not e!406079))))

(assert (=> b!725045 (= res!486311 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19599 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!486315 () Bool)

(assert (=> start!64492 (=> (not res!486315) (not e!406074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64492 (= res!486315 (validMask!0 mask!3328))))

(assert (=> start!64492 e!406074))

(assert (=> start!64492 true))

(declare-fun array_inv!15373 (array!40963) Bool)

(assert (=> start!64492 (array_inv!15373 a!3186)))

(declare-fun b!725046 () Bool)

(assert (=> b!725046 (= e!406079 e!406076)))

(declare-fun res!486312 () Bool)

(assert (=> b!725046 (=> (not res!486312) (not e!406076))))

(declare-fun lt!321207 () (_ BitVec 64))

(declare-fun lt!321212 () array!40963)

(assert (=> b!725046 (= res!486312 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321207 mask!3328) lt!321207 lt!321212 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321207 lt!321212 mask!3328)))))

(assert (=> b!725046 (= lt!321207 (select (store (arr!19599 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!725046 (= lt!321212 (array!40964 (store (arr!19599 a!3186) i!1173 k!2102) (size!20020 a!3186)))))

(declare-fun b!725047 () Bool)

(declare-fun res!486305 () Bool)

(assert (=> b!725047 (=> (not res!486305) (not e!406074))))

(assert (=> b!725047 (= res!486305 (and (= (size!20020 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20020 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20020 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!725048 () Bool)

(assert (=> b!725048 (= e!406075 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19599 a!3186) j!159) a!3186 mask!3328) (Found!7206 j!159)))))

(assert (= (and start!64492 res!486315) b!725047))

(assert (= (and b!725047 res!486305) b!725033))

(assert (= (and b!725033 res!486316) b!725044))

(assert (= (and b!725044 res!486310) b!725042))

(assert (= (and b!725042 res!486308) b!725035))

(assert (= (and b!725035 res!486304) b!725037))

(assert (= (and b!725037 res!486306) b!725038))

(assert (= (and b!725038 res!486314) b!725040))

(assert (= (and b!725040 res!486313) b!725034))

(assert (= (and b!725034 res!486309) b!725045))

(assert (= (and b!725045 res!486311) b!725041))

(assert (= (and b!725041 c!79737) b!725032))

(assert (= (and b!725041 (not c!79737)) b!725048))

(assert (= (and b!725041 res!486317) b!725046))

(assert (= (and b!725046 res!486312) b!725043))

(assert (= (and b!725043 res!486318) b!725039))

(assert (= (and b!725039 res!486307) b!725036))

(declare-fun m!679321 () Bool)

(assert (=> b!725043 m!679321))

(declare-fun m!679323 () Bool)

(assert (=> b!725043 m!679323))

(declare-fun m!679325 () Bool)

(assert (=> b!725046 m!679325))

(declare-fun m!679327 () Bool)

(assert (=> b!725046 m!679327))

(declare-fun m!679329 () Bool)

(assert (=> b!725046 m!679329))

(assert (=> b!725046 m!679325))

(declare-fun m!679331 () Bool)

(assert (=> b!725046 m!679331))

(declare-fun m!679333 () Bool)

(assert (=> b!725046 m!679333))

(declare-fun m!679335 () Bool)

(assert (=> b!725044 m!679335))

(declare-fun m!679337 () Bool)

(assert (=> b!725036 m!679337))

(assert (=> b!725036 m!679337))

(declare-fun m!679339 () Bool)

(assert (=> b!725036 m!679339))

(declare-fun m!679341 () Bool)

(assert (=> b!725037 m!679341))

(declare-fun m!679343 () Bool)

(assert (=> b!725035 m!679343))

(assert (=> b!725039 m!679337))

(assert (=> b!725039 m!679337))

(declare-fun m!679345 () Bool)

(assert (=> b!725039 m!679345))

(declare-fun m!679347 () Bool)

(assert (=> b!725038 m!679347))

(declare-fun m!679349 () Bool)

(assert (=> start!64492 m!679349))

(declare-fun m!679351 () Bool)

(assert (=> start!64492 m!679351))

(assert (=> b!725048 m!679337))

(assert (=> b!725048 m!679337))

(declare-fun m!679353 () Bool)

(assert (=> b!725048 m!679353))

(assert (=> b!725032 m!679337))

(assert (=> b!725032 m!679337))

(declare-fun m!679355 () Bool)

(assert (=> b!725032 m!679355))

(assert (=> b!725034 m!679337))

(assert (=> b!725034 m!679337))

(declare-fun m!679357 () Bool)

(assert (=> b!725034 m!679357))

(assert (=> b!725034 m!679357))

(assert (=> b!725034 m!679337))

(declare-fun m!679359 () Bool)

(assert (=> b!725034 m!679359))

(declare-fun m!679361 () Bool)

(assert (=> b!725042 m!679361))

(declare-fun m!679363 () Bool)

(assert (=> b!725045 m!679363))

(assert (=> b!725033 m!679337))

(assert (=> b!725033 m!679337))

(declare-fun m!679365 () Bool)

(assert (=> b!725033 m!679365))

(push 1)

