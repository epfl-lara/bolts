; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47762 () Bool)

(assert start!47762)

(declare-fun b!525397 () Bool)

(declare-fun res!322301 () Bool)

(declare-fun e!306328 () Bool)

(assert (=> b!525397 (=> (not res!322301) (not e!306328))))

(declare-datatypes ((array!33359 0))(
  ( (array!33360 (arr!16028 (Array (_ BitVec 32) (_ BitVec 64))) (size!16392 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33359)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33359 (_ BitVec 32)) Bool)

(assert (=> b!525397 (= res!322301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525398 () Bool)

(declare-fun res!322295 () Bool)

(declare-fun e!306330 () Bool)

(assert (=> b!525398 (=> res!322295 e!306330)))

(declare-datatypes ((SeekEntryResult!4502 0))(
  ( (MissingZero!4502 (index!20220 (_ BitVec 32))) (Found!4502 (index!20221 (_ BitVec 32))) (Intermediate!4502 (undefined!5314 Bool) (index!20222 (_ BitVec 32)) (x!49222 (_ BitVec 32))) (Undefined!4502) (MissingVacant!4502 (index!20223 (_ BitVec 32))) )
))
(declare-fun lt!241475 () SeekEntryResult!4502)

(assert (=> b!525398 (= res!322295 (or (undefined!5314 lt!241475) (not (is-Intermediate!4502 lt!241475))))))

(declare-fun b!525399 () Bool)

(declare-fun e!306333 () Bool)

(assert (=> b!525399 (= e!306333 e!306328)))

(declare-fun res!322292 () Bool)

(assert (=> b!525399 (=> (not res!322292) (not e!306328))))

(declare-fun lt!241468 () SeekEntryResult!4502)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525399 (= res!322292 (or (= lt!241468 (MissingZero!4502 i!1204)) (= lt!241468 (MissingVacant!4502 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33359 (_ BitVec 32)) SeekEntryResult!4502)

(assert (=> b!525399 (= lt!241468 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!525400 () Bool)

(declare-fun res!322300 () Bool)

(assert (=> b!525400 (=> (not res!322300) (not e!306333))))

(declare-fun arrayContainsKey!0 (array!33359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525400 (= res!322300 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525401 () Bool)

(assert (=> b!525401 (= e!306330 true)))

(assert (=> b!525401 (= (index!20222 lt!241475) i!1204)))

(declare-fun lt!241470 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((Unit!16474 0))(
  ( (Unit!16475) )
))
(declare-fun lt!241467 () Unit!16474)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33359 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16474)

(assert (=> b!525401 (= lt!241467 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241470 #b00000000000000000000000000000000 (index!20222 lt!241475) (x!49222 lt!241475) mask!3524))))

(assert (=> b!525401 (and (or (= (select (arr!16028 a!3235) (index!20222 lt!241475)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16028 a!3235) (index!20222 lt!241475)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16028 a!3235) (index!20222 lt!241475)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16028 a!3235) (index!20222 lt!241475)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241469 () Unit!16474)

(declare-fun e!306331 () Unit!16474)

(assert (=> b!525401 (= lt!241469 e!306331)))

(declare-fun c!61859 () Bool)

(assert (=> b!525401 (= c!61859 (= (select (arr!16028 a!3235) (index!20222 lt!241475)) (select (arr!16028 a!3235) j!176)))))

(assert (=> b!525401 (and (bvslt (x!49222 lt!241475) #b01111111111111111111111111111110) (or (= (select (arr!16028 a!3235) (index!20222 lt!241475)) (select (arr!16028 a!3235) j!176)) (= (select (arr!16028 a!3235) (index!20222 lt!241475)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16028 a!3235) (index!20222 lt!241475)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525402 () Bool)

(declare-fun res!322297 () Bool)

(assert (=> b!525402 (=> (not res!322297) (not e!306333))))

(assert (=> b!525402 (= res!322297 (and (= (size!16392 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16392 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16392 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525403 () Bool)

(assert (=> b!525403 (= e!306328 (not e!306330))))

(declare-fun res!322290 () Bool)

(assert (=> b!525403 (=> res!322290 e!306330)))

(declare-fun lt!241474 () (_ BitVec 64))

(declare-fun lt!241473 () (_ BitVec 32))

(declare-fun lt!241466 () array!33359)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33359 (_ BitVec 32)) SeekEntryResult!4502)

(assert (=> b!525403 (= res!322290 (= lt!241475 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241473 lt!241474 lt!241466 mask!3524)))))

(assert (=> b!525403 (= lt!241475 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241470 (select (arr!16028 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525403 (= lt!241473 (toIndex!0 lt!241474 mask!3524))))

(assert (=> b!525403 (= lt!241474 (select (store (arr!16028 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!525403 (= lt!241470 (toIndex!0 (select (arr!16028 a!3235) j!176) mask!3524))))

(assert (=> b!525403 (= lt!241466 (array!33360 (store (arr!16028 a!3235) i!1204 k!2280) (size!16392 a!3235)))))

(declare-fun e!306329 () Bool)

(assert (=> b!525403 e!306329))

(declare-fun res!322294 () Bool)

(assert (=> b!525403 (=> (not res!322294) (not e!306329))))

(assert (=> b!525403 (= res!322294 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241472 () Unit!16474)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33359 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16474)

(assert (=> b!525403 (= lt!241472 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525404 () Bool)

(declare-fun res!322291 () Bool)

(assert (=> b!525404 (=> (not res!322291) (not e!306333))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525404 (= res!322291 (validKeyInArray!0 (select (arr!16028 a!3235) j!176)))))

(declare-fun res!322299 () Bool)

(assert (=> start!47762 (=> (not res!322299) (not e!306333))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47762 (= res!322299 (validMask!0 mask!3524))))

(assert (=> start!47762 e!306333))

(assert (=> start!47762 true))

(declare-fun array_inv!11802 (array!33359) Bool)

(assert (=> start!47762 (array_inv!11802 a!3235)))

(declare-fun b!525405 () Bool)

(declare-fun e!306332 () Bool)

(assert (=> b!525405 (= e!306332 false)))

(declare-fun b!525406 () Bool)

(declare-fun Unit!16476 () Unit!16474)

(assert (=> b!525406 (= e!306331 Unit!16476)))

(declare-fun b!525407 () Bool)

(assert (=> b!525407 (= e!306329 (= (seekEntryOrOpen!0 (select (arr!16028 a!3235) j!176) a!3235 mask!3524) (Found!4502 j!176)))))

(declare-fun b!525408 () Bool)

(declare-fun res!322298 () Bool)

(assert (=> b!525408 (=> (not res!322298) (not e!306328))))

(declare-datatypes ((List!10239 0))(
  ( (Nil!10236) (Cons!10235 (h!11166 (_ BitVec 64)) (t!16475 List!10239)) )
))
(declare-fun arrayNoDuplicates!0 (array!33359 (_ BitVec 32) List!10239) Bool)

(assert (=> b!525408 (= res!322298 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10236))))

(declare-fun b!525409 () Bool)

(declare-fun res!322293 () Bool)

(assert (=> b!525409 (=> (not res!322293) (not e!306333))))

(assert (=> b!525409 (= res!322293 (validKeyInArray!0 k!2280))))

(declare-fun b!525410 () Bool)

(declare-fun Unit!16477 () Unit!16474)

(assert (=> b!525410 (= e!306331 Unit!16477)))

(declare-fun lt!241471 () Unit!16474)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33359 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16474)

(assert (=> b!525410 (= lt!241471 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241470 #b00000000000000000000000000000000 (index!20222 lt!241475) (x!49222 lt!241475) mask!3524))))

(declare-fun res!322296 () Bool)

(assert (=> b!525410 (= res!322296 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241470 lt!241474 lt!241466 mask!3524) (Intermediate!4502 false (index!20222 lt!241475) (x!49222 lt!241475))))))

(assert (=> b!525410 (=> (not res!322296) (not e!306332))))

(assert (=> b!525410 e!306332))

(assert (= (and start!47762 res!322299) b!525402))

(assert (= (and b!525402 res!322297) b!525404))

(assert (= (and b!525404 res!322291) b!525409))

(assert (= (and b!525409 res!322293) b!525400))

(assert (= (and b!525400 res!322300) b!525399))

(assert (= (and b!525399 res!322292) b!525397))

(assert (= (and b!525397 res!322301) b!525408))

(assert (= (and b!525408 res!322298) b!525403))

(assert (= (and b!525403 res!322294) b!525407))

(assert (= (and b!525403 (not res!322290)) b!525398))

(assert (= (and b!525398 (not res!322295)) b!525401))

(assert (= (and b!525401 c!61859) b!525410))

(assert (= (and b!525401 (not c!61859)) b!525406))

(assert (= (and b!525410 res!322296) b!525405))

(declare-fun m!506099 () Bool)

(assert (=> b!525407 m!506099))

(assert (=> b!525407 m!506099))

(declare-fun m!506101 () Bool)

(assert (=> b!525407 m!506101))

(assert (=> b!525404 m!506099))

(assert (=> b!525404 m!506099))

(declare-fun m!506103 () Bool)

(assert (=> b!525404 m!506103))

(declare-fun m!506105 () Bool)

(assert (=> b!525399 m!506105))

(declare-fun m!506107 () Bool)

(assert (=> b!525401 m!506107))

(declare-fun m!506109 () Bool)

(assert (=> b!525401 m!506109))

(assert (=> b!525401 m!506099))

(declare-fun m!506111 () Bool)

(assert (=> b!525410 m!506111))

(declare-fun m!506113 () Bool)

(assert (=> b!525410 m!506113))

(declare-fun m!506115 () Bool)

(assert (=> b!525408 m!506115))

(declare-fun m!506117 () Bool)

(assert (=> b!525409 m!506117))

(declare-fun m!506119 () Bool)

(assert (=> b!525400 m!506119))

(declare-fun m!506121 () Bool)

(assert (=> b!525397 m!506121))

(declare-fun m!506123 () Bool)

(assert (=> b!525403 m!506123))

(declare-fun m!506125 () Bool)

(assert (=> b!525403 m!506125))

(declare-fun m!506127 () Bool)

(assert (=> b!525403 m!506127))

(assert (=> b!525403 m!506099))

(declare-fun m!506129 () Bool)

(assert (=> b!525403 m!506129))

(assert (=> b!525403 m!506099))

(declare-fun m!506131 () Bool)

(assert (=> b!525403 m!506131))

(assert (=> b!525403 m!506099))

(declare-fun m!506133 () Bool)

(assert (=> b!525403 m!506133))

(declare-fun m!506135 () Bool)

(assert (=> b!525403 m!506135))

(declare-fun m!506137 () Bool)

(assert (=> b!525403 m!506137))

(declare-fun m!506139 () Bool)

(assert (=> start!47762 m!506139))

(declare-fun m!506141 () Bool)

(assert (=> start!47762 m!506141))

(push 1)

(assert (not b!525403))

(assert (not b!525401))

(assert (not b!525404))

(assert (not b!525407))

(assert (not b!525397))

(assert (not b!525409))

(assert (not b!525410))

(assert (not start!47762))

