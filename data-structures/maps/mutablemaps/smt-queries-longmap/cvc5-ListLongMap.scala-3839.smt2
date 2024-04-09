; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52802 () Bool)

(assert start!52802)

(declare-fun b!575394 () Bool)

(declare-fun res!363966 () Bool)

(declare-fun e!331079 () Bool)

(assert (=> b!575394 (=> (not res!363966) (not e!331079))))

(declare-datatypes ((array!35901 0))(
  ( (array!35902 (arr!17229 (Array (_ BitVec 32) (_ BitVec 64))) (size!17593 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35901)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575394 (= res!363966 (validKeyInArray!0 (select (arr!17229 a!3118) j!142)))))

(declare-fun b!575395 () Bool)

(declare-fun res!363963 () Bool)

(assert (=> b!575395 (=> (not res!363963) (not e!331079))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!575395 (= res!363963 (and (= (size!17593 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17593 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17593 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575396 () Bool)

(declare-fun e!331078 () Bool)

(assert (=> b!575396 (= e!331078 true)))

(declare-datatypes ((SeekEntryResult!5685 0))(
  ( (MissingZero!5685 (index!24967 (_ BitVec 32))) (Found!5685 (index!24968 (_ BitVec 32))) (Intermediate!5685 (undefined!6497 Bool) (index!24969 (_ BitVec 32)) (x!53889 (_ BitVec 32))) (Undefined!5685) (MissingVacant!5685 (index!24970 (_ BitVec 32))) )
))
(declare-fun lt!263162 () SeekEntryResult!5685)

(declare-fun lt!263170 () SeekEntryResult!5685)

(assert (=> b!575396 (= lt!263162 lt!263170)))

(declare-datatypes ((Unit!18072 0))(
  ( (Unit!18073) )
))
(declare-fun lt!263174 () Unit!18072)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!263171 () SeekEntryResult!5685)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35901 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18072)

(assert (=> b!575396 (= lt!263174 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!53889 lt!263171) (index!24969 lt!263171) (index!24969 lt!263171) mask!3119))))

(declare-fun b!575397 () Bool)

(declare-fun e!331081 () Bool)

(declare-fun e!331080 () Bool)

(assert (=> b!575397 (= e!331081 (not e!331080))))

(declare-fun res!363967 () Bool)

(assert (=> b!575397 (=> res!363967 e!331080)))

(assert (=> b!575397 (= res!363967 (or (undefined!6497 lt!263171) (not (is-Intermediate!5685 lt!263171))))))

(declare-fun lt!263173 () SeekEntryResult!5685)

(declare-fun lt!263169 () SeekEntryResult!5685)

(assert (=> b!575397 (= lt!263173 lt!263169)))

(assert (=> b!575397 (= lt!263169 (Found!5685 j!142))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35901 (_ BitVec 32)) SeekEntryResult!5685)

(assert (=> b!575397 (= lt!263173 (seekEntryOrOpen!0 (select (arr!17229 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35901 (_ BitVec 32)) Bool)

(assert (=> b!575397 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!263168 () Unit!18072)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35901 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18072)

(assert (=> b!575397 (= lt!263168 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!575398 () Bool)

(declare-fun e!331083 () Bool)

(assert (=> b!575398 (= e!331083 e!331078)))

(declare-fun res!363969 () Bool)

(assert (=> b!575398 (=> res!363969 e!331078)))

(declare-fun lt!263163 () (_ BitVec 64))

(assert (=> b!575398 (= res!363969 (or (bvslt (index!24969 lt!263171) #b00000000000000000000000000000000) (bvsge (index!24969 lt!263171) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53889 lt!263171) #b01111111111111111111111111111110) (bvslt (x!53889 lt!263171) #b00000000000000000000000000000000) (not (= lt!263163 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17229 a!3118) i!1132 k!1914) (index!24969 lt!263171)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!263162 lt!263169))))))

(declare-fun lt!263167 () SeekEntryResult!5685)

(assert (=> b!575398 (= lt!263167 lt!263170)))

(declare-fun lt!263164 () (_ BitVec 64))

(declare-fun lt!263165 () array!35901)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35901 (_ BitVec 32)) SeekEntryResult!5685)

(assert (=> b!575398 (= lt!263170 (seekKeyOrZeroReturnVacant!0 (x!53889 lt!263171) (index!24969 lt!263171) (index!24969 lt!263171) lt!263164 lt!263165 mask!3119))))

(assert (=> b!575398 (= lt!263167 (seekEntryOrOpen!0 lt!263164 lt!263165 mask!3119))))

(assert (=> b!575398 (= lt!263173 lt!263162)))

(assert (=> b!575398 (= lt!263162 (seekKeyOrZeroReturnVacant!0 (x!53889 lt!263171) (index!24969 lt!263171) (index!24969 lt!263171) (select (arr!17229 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575399 () Bool)

(declare-fun e!331084 () Bool)

(assert (=> b!575399 (= e!331084 e!331081)))

(declare-fun res!363968 () Bool)

(assert (=> b!575399 (=> (not res!363968) (not e!331081))))

(declare-fun lt!263172 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35901 (_ BitVec 32)) SeekEntryResult!5685)

(assert (=> b!575399 (= res!363968 (= lt!263171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263172 lt!263164 lt!263165 mask!3119)))))

(declare-fun lt!263161 () (_ BitVec 32))

(assert (=> b!575399 (= lt!263171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263161 (select (arr!17229 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575399 (= lt!263172 (toIndex!0 lt!263164 mask!3119))))

(assert (=> b!575399 (= lt!263164 (select (store (arr!17229 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!575399 (= lt!263161 (toIndex!0 (select (arr!17229 a!3118) j!142) mask!3119))))

(assert (=> b!575399 (= lt!263165 (array!35902 (store (arr!17229 a!3118) i!1132 k!1914) (size!17593 a!3118)))))

(declare-fun res!363964 () Bool)

(assert (=> start!52802 (=> (not res!363964) (not e!331079))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52802 (= res!363964 (validMask!0 mask!3119))))

(assert (=> start!52802 e!331079))

(assert (=> start!52802 true))

(declare-fun array_inv!13003 (array!35901) Bool)

(assert (=> start!52802 (array_inv!13003 a!3118)))

(declare-fun b!575400 () Bool)

(assert (=> b!575400 (= e!331080 e!331083)))

(declare-fun res!363961 () Bool)

(assert (=> b!575400 (=> res!363961 e!331083)))

(assert (=> b!575400 (= res!363961 (or (= lt!263163 (select (arr!17229 a!3118) j!142)) (= lt!263163 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!575400 (= lt!263163 (select (arr!17229 a!3118) (index!24969 lt!263171)))))

(declare-fun b!575401 () Bool)

(assert (=> b!575401 (= e!331079 e!331084)))

(declare-fun res!363971 () Bool)

(assert (=> b!575401 (=> (not res!363971) (not e!331084))))

(declare-fun lt!263166 () SeekEntryResult!5685)

(assert (=> b!575401 (= res!363971 (or (= lt!263166 (MissingZero!5685 i!1132)) (= lt!263166 (MissingVacant!5685 i!1132))))))

(assert (=> b!575401 (= lt!263166 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!575402 () Bool)

(declare-fun res!363965 () Bool)

(assert (=> b!575402 (=> (not res!363965) (not e!331079))))

(declare-fun arrayContainsKey!0 (array!35901 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575402 (= res!363965 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!575403 () Bool)

(declare-fun res!363962 () Bool)

(assert (=> b!575403 (=> (not res!363962) (not e!331084))))

(declare-datatypes ((List!11362 0))(
  ( (Nil!11359) (Cons!11358 (h!12397 (_ BitVec 64)) (t!17598 List!11362)) )
))
(declare-fun arrayNoDuplicates!0 (array!35901 (_ BitVec 32) List!11362) Bool)

(assert (=> b!575403 (= res!363962 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11359))))

(declare-fun b!575404 () Bool)

(declare-fun res!363960 () Bool)

(assert (=> b!575404 (=> (not res!363960) (not e!331084))))

(assert (=> b!575404 (= res!363960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!575405 () Bool)

(declare-fun res!363970 () Bool)

(assert (=> b!575405 (=> (not res!363970) (not e!331079))))

(assert (=> b!575405 (= res!363970 (validKeyInArray!0 k!1914))))

(assert (= (and start!52802 res!363964) b!575395))

(assert (= (and b!575395 res!363963) b!575394))

(assert (= (and b!575394 res!363966) b!575405))

(assert (= (and b!575405 res!363970) b!575402))

(assert (= (and b!575402 res!363965) b!575401))

(assert (= (and b!575401 res!363971) b!575404))

(assert (= (and b!575404 res!363960) b!575403))

(assert (= (and b!575403 res!363962) b!575399))

(assert (= (and b!575399 res!363968) b!575397))

(assert (= (and b!575397 (not res!363967)) b!575400))

(assert (= (and b!575400 (not res!363961)) b!575398))

(assert (= (and b!575398 (not res!363969)) b!575396))

(declare-fun m!554335 () Bool)

(assert (=> b!575394 m!554335))

(assert (=> b!575394 m!554335))

(declare-fun m!554337 () Bool)

(assert (=> b!575394 m!554337))

(declare-fun m!554339 () Bool)

(assert (=> b!575403 m!554339))

(declare-fun m!554341 () Bool)

(assert (=> b!575402 m!554341))

(assert (=> b!575398 m!554335))

(declare-fun m!554343 () Bool)

(assert (=> b!575398 m!554343))

(declare-fun m!554345 () Bool)

(assert (=> b!575398 m!554345))

(assert (=> b!575398 m!554335))

(declare-fun m!554347 () Bool)

(assert (=> b!575398 m!554347))

(declare-fun m!554349 () Bool)

(assert (=> b!575398 m!554349))

(declare-fun m!554351 () Bool)

(assert (=> b!575398 m!554351))

(declare-fun m!554353 () Bool)

(assert (=> b!575396 m!554353))

(assert (=> b!575400 m!554335))

(declare-fun m!554355 () Bool)

(assert (=> b!575400 m!554355))

(declare-fun m!554357 () Bool)

(assert (=> b!575405 m!554357))

(declare-fun m!554359 () Bool)

(assert (=> b!575404 m!554359))

(declare-fun m!554361 () Bool)

(assert (=> start!52802 m!554361))

(declare-fun m!554363 () Bool)

(assert (=> start!52802 m!554363))

(declare-fun m!554365 () Bool)

(assert (=> b!575401 m!554365))

(assert (=> b!575399 m!554335))

(declare-fun m!554367 () Bool)

(assert (=> b!575399 m!554367))

(assert (=> b!575399 m!554335))

(declare-fun m!554369 () Bool)

(assert (=> b!575399 m!554369))

(assert (=> b!575399 m!554335))

(declare-fun m!554371 () Bool)

(assert (=> b!575399 m!554371))

(declare-fun m!554373 () Bool)

(assert (=> b!575399 m!554373))

(assert (=> b!575399 m!554351))

(declare-fun m!554375 () Bool)

(assert (=> b!575399 m!554375))

(assert (=> b!575397 m!554335))

(assert (=> b!575397 m!554335))

(declare-fun m!554377 () Bool)

(assert (=> b!575397 m!554377))

(declare-fun m!554379 () Bool)

(assert (=> b!575397 m!554379))

(declare-fun m!554381 () Bool)

(assert (=> b!575397 m!554381))

(push 1)

