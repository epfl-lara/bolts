; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47810 () Bool)

(assert start!47810)

(declare-fun b!526405 () Bool)

(declare-fun res!323163 () Bool)

(declare-fun e!306832 () Bool)

(assert (=> b!526405 (=> (not res!323163) (not e!306832))))

(declare-datatypes ((array!33407 0))(
  ( (array!33408 (arr!16052 (Array (_ BitVec 32) (_ BitVec 64))) (size!16416 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33407)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526405 (= res!323163 (validKeyInArray!0 (select (arr!16052 a!3235) j!176)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!306836 () Bool)

(declare-fun b!526406 () Bool)

(declare-datatypes ((SeekEntryResult!4526 0))(
  ( (MissingZero!4526 (index!20316 (_ BitVec 32))) (Found!4526 (index!20317 (_ BitVec 32))) (Intermediate!4526 (undefined!5338 Bool) (index!20318 (_ BitVec 32)) (x!49310 (_ BitVec 32))) (Undefined!4526) (MissingVacant!4526 (index!20319 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33407 (_ BitVec 32)) SeekEntryResult!4526)

(assert (=> b!526406 (= e!306836 (= (seekEntryOrOpen!0 (select (arr!16052 a!3235) j!176) a!3235 mask!3524) (Found!4526 j!176)))))

(declare-fun b!526407 () Bool)

(declare-fun res!323164 () Bool)

(assert (=> b!526407 (=> (not res!323164) (not e!306832))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33407 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526407 (= res!323164 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!526408 () Bool)

(declare-fun res!323160 () Bool)

(assert (=> b!526408 (=> (not res!323160) (not e!306832))))

(assert (=> b!526408 (= res!323160 (validKeyInArray!0 k!2280))))

(declare-fun b!526409 () Bool)

(declare-fun e!306835 () Bool)

(assert (=> b!526409 (= e!306832 e!306835)))

(declare-fun res!323161 () Bool)

(assert (=> b!526409 (=> (not res!323161) (not e!306835))))

(declare-fun lt!242188 () SeekEntryResult!4526)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!526409 (= res!323161 (or (= lt!242188 (MissingZero!4526 i!1204)) (= lt!242188 (MissingVacant!4526 i!1204))))))

(assert (=> b!526409 (= lt!242188 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!323158 () Bool)

(assert (=> start!47810 (=> (not res!323158) (not e!306832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47810 (= res!323158 (validMask!0 mask!3524))))

(assert (=> start!47810 e!306832))

(assert (=> start!47810 true))

(declare-fun array_inv!11826 (array!33407) Bool)

(assert (=> start!47810 (array_inv!11826 a!3235)))

(declare-fun b!526410 () Bool)

(declare-fun e!306837 () Bool)

(assert (=> b!526410 (= e!306835 (not e!306837))))

(declare-fun res!323159 () Bool)

(assert (=> b!526410 (=> res!323159 e!306837)))

(declare-fun lt!242194 () (_ BitVec 32))

(declare-fun lt!242187 () SeekEntryResult!4526)

(declare-fun lt!242186 () (_ BitVec 64))

(declare-fun lt!242190 () array!33407)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33407 (_ BitVec 32)) SeekEntryResult!4526)

(assert (=> b!526410 (= res!323159 (= lt!242187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242194 lt!242186 lt!242190 mask!3524)))))

(declare-fun lt!242193 () (_ BitVec 32))

(assert (=> b!526410 (= lt!242187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242193 (select (arr!16052 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526410 (= lt!242194 (toIndex!0 lt!242186 mask!3524))))

(assert (=> b!526410 (= lt!242186 (select (store (arr!16052 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!526410 (= lt!242193 (toIndex!0 (select (arr!16052 a!3235) j!176) mask!3524))))

(assert (=> b!526410 (= lt!242190 (array!33408 (store (arr!16052 a!3235) i!1204 k!2280) (size!16416 a!3235)))))

(assert (=> b!526410 e!306836))

(declare-fun res!323165 () Bool)

(assert (=> b!526410 (=> (not res!323165) (not e!306836))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33407 (_ BitVec 32)) Bool)

(assert (=> b!526410 (= res!323165 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16570 0))(
  ( (Unit!16571) )
))
(declare-fun lt!242189 () Unit!16570)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33407 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16570)

(assert (=> b!526410 (= lt!242189 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!526411 () Bool)

(declare-fun res!323156 () Bool)

(assert (=> b!526411 (=> (not res!323156) (not e!306835))))

(declare-datatypes ((List!10263 0))(
  ( (Nil!10260) (Cons!10259 (h!11190 (_ BitVec 64)) (t!16499 List!10263)) )
))
(declare-fun arrayNoDuplicates!0 (array!33407 (_ BitVec 32) List!10263) Bool)

(assert (=> b!526411 (= res!323156 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10260))))

(declare-fun b!526412 () Bool)

(assert (=> b!526412 (= e!306837 true)))

(assert (=> b!526412 (= (index!20318 lt!242187) i!1204)))

(declare-fun lt!242192 () Unit!16570)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33407 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16570)

(assert (=> b!526412 (= lt!242192 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242193 #b00000000000000000000000000000000 (index!20318 lt!242187) (x!49310 lt!242187) mask!3524))))

(assert (=> b!526412 (and (or (= (select (arr!16052 a!3235) (index!20318 lt!242187)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16052 a!3235) (index!20318 lt!242187)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16052 a!3235) (index!20318 lt!242187)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16052 a!3235) (index!20318 lt!242187)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242191 () Unit!16570)

(declare-fun e!306838 () Unit!16570)

(assert (=> b!526412 (= lt!242191 e!306838)))

(declare-fun c!61931 () Bool)

(assert (=> b!526412 (= c!61931 (= (select (arr!16052 a!3235) (index!20318 lt!242187)) (select (arr!16052 a!3235) j!176)))))

(assert (=> b!526412 (and (bvslt (x!49310 lt!242187) #b01111111111111111111111111111110) (or (= (select (arr!16052 a!3235) (index!20318 lt!242187)) (select (arr!16052 a!3235) j!176)) (= (select (arr!16052 a!3235) (index!20318 lt!242187)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16052 a!3235) (index!20318 lt!242187)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526413 () Bool)

(declare-fun Unit!16572 () Unit!16570)

(assert (=> b!526413 (= e!306838 Unit!16572)))

(declare-fun b!526414 () Bool)

(declare-fun Unit!16573 () Unit!16570)

(assert (=> b!526414 (= e!306838 Unit!16573)))

(declare-fun lt!242195 () Unit!16570)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33407 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16570)

(assert (=> b!526414 (= lt!242195 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242193 #b00000000000000000000000000000000 (index!20318 lt!242187) (x!49310 lt!242187) mask!3524))))

(declare-fun res!323157 () Bool)

(assert (=> b!526414 (= res!323157 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242193 lt!242186 lt!242190 mask!3524) (Intermediate!4526 false (index!20318 lt!242187) (x!49310 lt!242187))))))

(declare-fun e!306834 () Bool)

(assert (=> b!526414 (=> (not res!323157) (not e!306834))))

(assert (=> b!526414 e!306834))

(declare-fun b!526415 () Bool)

(declare-fun res!323162 () Bool)

(assert (=> b!526415 (=> (not res!323162) (not e!306835))))

(assert (=> b!526415 (= res!323162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!526416 () Bool)

(assert (=> b!526416 (= e!306834 false)))

(declare-fun b!526417 () Bool)

(declare-fun res!323155 () Bool)

(assert (=> b!526417 (=> res!323155 e!306837)))

(assert (=> b!526417 (= res!323155 (or (undefined!5338 lt!242187) (not (is-Intermediate!4526 lt!242187))))))

(declare-fun b!526418 () Bool)

(declare-fun res!323154 () Bool)

(assert (=> b!526418 (=> (not res!323154) (not e!306832))))

(assert (=> b!526418 (= res!323154 (and (= (size!16416 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16416 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16416 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!47810 res!323158) b!526418))

(assert (= (and b!526418 res!323154) b!526405))

(assert (= (and b!526405 res!323163) b!526408))

(assert (= (and b!526408 res!323160) b!526407))

(assert (= (and b!526407 res!323164) b!526409))

(assert (= (and b!526409 res!323161) b!526415))

(assert (= (and b!526415 res!323162) b!526411))

(assert (= (and b!526411 res!323156) b!526410))

(assert (= (and b!526410 res!323165) b!526406))

(assert (= (and b!526410 (not res!323159)) b!526417))

(assert (= (and b!526417 (not res!323155)) b!526412))

(assert (= (and b!526412 c!61931) b!526414))

(assert (= (and b!526412 (not c!61931)) b!526413))

(assert (= (and b!526414 res!323157) b!526416))

(declare-fun m!507155 () Bool)

(assert (=> b!526406 m!507155))

(assert (=> b!526406 m!507155))

(declare-fun m!507157 () Bool)

(assert (=> b!526406 m!507157))

(declare-fun m!507159 () Bool)

(assert (=> b!526411 m!507159))

(declare-fun m!507161 () Bool)

(assert (=> b!526415 m!507161))

(declare-fun m!507163 () Bool)

(assert (=> b!526407 m!507163))

(assert (=> b!526410 m!507155))

(declare-fun m!507165 () Bool)

(assert (=> b!526410 m!507165))

(declare-fun m!507167 () Bool)

(assert (=> b!526410 m!507167))

(declare-fun m!507169 () Bool)

(assert (=> b!526410 m!507169))

(declare-fun m!507171 () Bool)

(assert (=> b!526410 m!507171))

(assert (=> b!526410 m!507155))

(declare-fun m!507173 () Bool)

(assert (=> b!526410 m!507173))

(assert (=> b!526410 m!507155))

(declare-fun m!507175 () Bool)

(assert (=> b!526410 m!507175))

(declare-fun m!507177 () Bool)

(assert (=> b!526410 m!507177))

(declare-fun m!507179 () Bool)

(assert (=> b!526410 m!507179))

(declare-fun m!507181 () Bool)

(assert (=> b!526409 m!507181))

(declare-fun m!507183 () Bool)

(assert (=> b!526414 m!507183))

(declare-fun m!507185 () Bool)

(assert (=> b!526414 m!507185))

(declare-fun m!507187 () Bool)

(assert (=> b!526408 m!507187))

(assert (=> b!526405 m!507155))

(assert (=> b!526405 m!507155))

(declare-fun m!507189 () Bool)

(assert (=> b!526405 m!507189))

(declare-fun m!507191 () Bool)

(assert (=> start!47810 m!507191))

(declare-fun m!507193 () Bool)

(assert (=> start!47810 m!507193))

(declare-fun m!507195 () Bool)

(assert (=> b!526412 m!507195))

(declare-fun m!507197 () Bool)

(assert (=> b!526412 m!507197))

(assert (=> b!526412 m!507155))

(push 1)

