; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47756 () Bool)

(assert start!47756)

(declare-fun b!525271 () Bool)

(declare-fun e!306269 () Bool)

(assert (=> b!525271 (= e!306269 true)))

(declare-datatypes ((SeekEntryResult!4499 0))(
  ( (MissingZero!4499 (index!20208 (_ BitVec 32))) (Found!4499 (index!20209 (_ BitVec 32))) (Intermediate!4499 (undefined!5311 Bool) (index!20210 (_ BitVec 32)) (x!49211 (_ BitVec 32))) (Undefined!4499) (MissingVacant!4499 (index!20211 (_ BitVec 32))) )
))
(declare-fun lt!241382 () SeekEntryResult!4499)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525271 (= (index!20210 lt!241382) i!1204)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((array!33353 0))(
  ( (array!33354 (arr!16025 (Array (_ BitVec 32) (_ BitVec 64))) (size!16389 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33353)

(declare-datatypes ((Unit!16462 0))(
  ( (Unit!16463) )
))
(declare-fun lt!241379 () Unit!16462)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!241377 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33353 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16462)

(assert (=> b!525271 (= lt!241379 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241377 #b00000000000000000000000000000000 (index!20210 lt!241382) (x!49211 lt!241382) mask!3524))))

(assert (=> b!525271 (and (or (= (select (arr!16025 a!3235) (index!20210 lt!241382)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16025 a!3235) (index!20210 lt!241382)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16025 a!3235) (index!20210 lt!241382)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16025 a!3235) (index!20210 lt!241382)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241381 () Unit!16462)

(declare-fun e!306271 () Unit!16462)

(assert (=> b!525271 (= lt!241381 e!306271)))

(declare-fun c!61850 () Bool)

(assert (=> b!525271 (= c!61850 (= (select (arr!16025 a!3235) (index!20210 lt!241382)) (select (arr!16025 a!3235) j!176)))))

(assert (=> b!525271 (and (bvslt (x!49211 lt!241382) #b01111111111111111111111111111110) (or (= (select (arr!16025 a!3235) (index!20210 lt!241382)) (select (arr!16025 a!3235) j!176)) (= (select (arr!16025 a!3235) (index!20210 lt!241382)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16025 a!3235) (index!20210 lt!241382)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525272 () Bool)

(declare-fun res!322186 () Bool)

(declare-fun e!306265 () Bool)

(assert (=> b!525272 (=> (not res!322186) (not e!306265))))

(declare-fun arrayContainsKey!0 (array!33353 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525272 (= res!322186 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525273 () Bool)

(declare-fun Unit!16464 () Unit!16462)

(assert (=> b!525273 (= e!306271 Unit!16464)))

(declare-fun lt!241376 () Unit!16462)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33353 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16462)

(assert (=> b!525273 (= lt!241376 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241377 #b00000000000000000000000000000000 (index!20210 lt!241382) (x!49211 lt!241382) mask!3524))))

(declare-fun lt!241378 () (_ BitVec 64))

(declare-fun lt!241385 () array!33353)

(declare-fun res!322182 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33353 (_ BitVec 32)) SeekEntryResult!4499)

(assert (=> b!525273 (= res!322182 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241377 lt!241378 lt!241385 mask!3524) (Intermediate!4499 false (index!20210 lt!241382) (x!49211 lt!241382))))))

(declare-fun e!306270 () Bool)

(assert (=> b!525273 (=> (not res!322182) (not e!306270))))

(assert (=> b!525273 e!306270))

(declare-fun res!322188 () Bool)

(assert (=> start!47756 (=> (not res!322188) (not e!306265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47756 (= res!322188 (validMask!0 mask!3524))))

(assert (=> start!47756 e!306265))

(assert (=> start!47756 true))

(declare-fun array_inv!11799 (array!33353) Bool)

(assert (=> start!47756 (array_inv!11799 a!3235)))

(declare-fun b!525274 () Bool)

(declare-fun e!306268 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33353 (_ BitVec 32)) SeekEntryResult!4499)

(assert (=> b!525274 (= e!306268 (= (seekEntryOrOpen!0 (select (arr!16025 a!3235) j!176) a!3235 mask!3524) (Found!4499 j!176)))))

(declare-fun b!525275 () Bool)

(declare-fun res!322185 () Bool)

(assert (=> b!525275 (=> (not res!322185) (not e!306265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525275 (= res!322185 (validKeyInArray!0 k!2280))))

(declare-fun b!525276 () Bool)

(assert (=> b!525276 (= e!306270 false)))

(declare-fun b!525277 () Bool)

(declare-fun e!306267 () Bool)

(assert (=> b!525277 (= e!306265 e!306267)))

(declare-fun res!322193 () Bool)

(assert (=> b!525277 (=> (not res!322193) (not e!306267))))

(declare-fun lt!241383 () SeekEntryResult!4499)

(assert (=> b!525277 (= res!322193 (or (= lt!241383 (MissingZero!4499 i!1204)) (= lt!241383 (MissingVacant!4499 i!1204))))))

(assert (=> b!525277 (= lt!241383 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!525278 () Bool)

(declare-fun res!322187 () Bool)

(assert (=> b!525278 (=> (not res!322187) (not e!306267))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33353 (_ BitVec 32)) Bool)

(assert (=> b!525278 (= res!322187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525279 () Bool)

(assert (=> b!525279 (= e!306267 (not e!306269))))

(declare-fun res!322189 () Bool)

(assert (=> b!525279 (=> res!322189 e!306269)))

(declare-fun lt!241380 () (_ BitVec 32))

(assert (=> b!525279 (= res!322189 (= lt!241382 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241380 lt!241378 lt!241385 mask!3524)))))

(assert (=> b!525279 (= lt!241382 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241377 (select (arr!16025 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525279 (= lt!241380 (toIndex!0 lt!241378 mask!3524))))

(assert (=> b!525279 (= lt!241378 (select (store (arr!16025 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!525279 (= lt!241377 (toIndex!0 (select (arr!16025 a!3235) j!176) mask!3524))))

(assert (=> b!525279 (= lt!241385 (array!33354 (store (arr!16025 a!3235) i!1204 k!2280) (size!16389 a!3235)))))

(assert (=> b!525279 e!306268))

(declare-fun res!322190 () Bool)

(assert (=> b!525279 (=> (not res!322190) (not e!306268))))

(assert (=> b!525279 (= res!322190 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241384 () Unit!16462)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33353 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16462)

(assert (=> b!525279 (= lt!241384 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525280 () Bool)

(declare-fun res!322184 () Bool)

(assert (=> b!525280 (=> (not res!322184) (not e!306265))))

(assert (=> b!525280 (= res!322184 (and (= (size!16389 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16389 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16389 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525281 () Bool)

(declare-fun res!322183 () Bool)

(assert (=> b!525281 (=> (not res!322183) (not e!306267))))

(declare-datatypes ((List!10236 0))(
  ( (Nil!10233) (Cons!10232 (h!11163 (_ BitVec 64)) (t!16472 List!10236)) )
))
(declare-fun arrayNoDuplicates!0 (array!33353 (_ BitVec 32) List!10236) Bool)

(assert (=> b!525281 (= res!322183 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10233))))

(declare-fun b!525282 () Bool)

(declare-fun Unit!16465 () Unit!16462)

(assert (=> b!525282 (= e!306271 Unit!16465)))

(declare-fun b!525283 () Bool)

(declare-fun res!322191 () Bool)

(assert (=> b!525283 (=> (not res!322191) (not e!306265))))

(assert (=> b!525283 (= res!322191 (validKeyInArray!0 (select (arr!16025 a!3235) j!176)))))

(declare-fun b!525284 () Bool)

(declare-fun res!322192 () Bool)

(assert (=> b!525284 (=> res!322192 e!306269)))

(assert (=> b!525284 (= res!322192 (or (undefined!5311 lt!241382) (not (is-Intermediate!4499 lt!241382))))))

(assert (= (and start!47756 res!322188) b!525280))

(assert (= (and b!525280 res!322184) b!525283))

(assert (= (and b!525283 res!322191) b!525275))

(assert (= (and b!525275 res!322185) b!525272))

(assert (= (and b!525272 res!322186) b!525277))

(assert (= (and b!525277 res!322193) b!525278))

(assert (= (and b!525278 res!322187) b!525281))

(assert (= (and b!525281 res!322183) b!525279))

(assert (= (and b!525279 res!322190) b!525274))

(assert (= (and b!525279 (not res!322189)) b!525284))

(assert (= (and b!525284 (not res!322192)) b!525271))

(assert (= (and b!525271 c!61850) b!525273))

(assert (= (and b!525271 (not c!61850)) b!525282))

(assert (= (and b!525273 res!322182) b!525276))

(declare-fun m!505967 () Bool)

(assert (=> b!525274 m!505967))

(assert (=> b!525274 m!505967))

(declare-fun m!505969 () Bool)

(assert (=> b!525274 m!505969))

(declare-fun m!505971 () Bool)

(assert (=> b!525275 m!505971))

(declare-fun m!505973 () Bool)

(assert (=> b!525272 m!505973))

(declare-fun m!505975 () Bool)

(assert (=> b!525279 m!505975))

(declare-fun m!505977 () Bool)

(assert (=> b!525279 m!505977))

(declare-fun m!505979 () Bool)

(assert (=> b!525279 m!505979))

(declare-fun m!505981 () Bool)

(assert (=> b!525279 m!505981))

(assert (=> b!525279 m!505967))

(declare-fun m!505983 () Bool)

(assert (=> b!525279 m!505983))

(assert (=> b!525279 m!505967))

(declare-fun m!505985 () Bool)

(assert (=> b!525279 m!505985))

(declare-fun m!505987 () Bool)

(assert (=> b!525279 m!505987))

(assert (=> b!525279 m!505967))

(declare-fun m!505989 () Bool)

(assert (=> b!525279 m!505989))

(declare-fun m!505991 () Bool)

(assert (=> b!525273 m!505991))

(declare-fun m!505993 () Bool)

(assert (=> b!525273 m!505993))

(declare-fun m!505995 () Bool)

(assert (=> b!525281 m!505995))

(assert (=> b!525283 m!505967))

(assert (=> b!525283 m!505967))

(declare-fun m!505997 () Bool)

(assert (=> b!525283 m!505997))

(declare-fun m!505999 () Bool)

(assert (=> b!525277 m!505999))

(declare-fun m!506001 () Bool)

(assert (=> b!525278 m!506001))

(declare-fun m!506003 () Bool)

(assert (=> start!47756 m!506003))

(declare-fun m!506005 () Bool)

(assert (=> start!47756 m!506005))

(declare-fun m!506007 () Bool)

(assert (=> b!525271 m!506007))

(declare-fun m!506009 () Bool)

(assert (=> b!525271 m!506009))

(assert (=> b!525271 m!505967))

(push 1)

