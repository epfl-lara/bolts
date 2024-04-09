; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47768 () Bool)

(assert start!47768)

(declare-fun b!525523 () Bool)

(declare-fun res!322409 () Bool)

(declare-fun e!306392 () Bool)

(assert (=> b!525523 (=> (not res!322409) (not e!306392))))

(declare-datatypes ((array!33365 0))(
  ( (array!33366 (arr!16031 (Array (_ BitVec 32) (_ BitVec 64))) (size!16395 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33365)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33365 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525523 (= res!322409 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525524 () Bool)

(declare-fun res!322407 () Bool)

(declare-fun e!306394 () Bool)

(assert (=> b!525524 (=> (not res!322407) (not e!306394))))

(declare-datatypes ((List!10242 0))(
  ( (Nil!10239) (Cons!10238 (h!11169 (_ BitVec 64)) (t!16478 List!10242)) )
))
(declare-fun arrayNoDuplicates!0 (array!33365 (_ BitVec 32) List!10242) Bool)

(assert (=> b!525524 (= res!322407 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10239))))

(declare-fun b!525525 () Bool)

(assert (=> b!525525 (= e!306392 e!306394)))

(declare-fun res!322405 () Bool)

(assert (=> b!525525 (=> (not res!322405) (not e!306394))))

(declare-datatypes ((SeekEntryResult!4505 0))(
  ( (MissingZero!4505 (index!20232 (_ BitVec 32))) (Found!4505 (index!20233 (_ BitVec 32))) (Intermediate!4505 (undefined!5317 Bool) (index!20234 (_ BitVec 32)) (x!49233 (_ BitVec 32))) (Undefined!4505) (MissingVacant!4505 (index!20235 (_ BitVec 32))) )
))
(declare-fun lt!241562 () SeekEntryResult!4505)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525525 (= res!322405 (or (= lt!241562 (MissingZero!4505 i!1204)) (= lt!241562 (MissingVacant!4505 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33365 (_ BitVec 32)) SeekEntryResult!4505)

(assert (=> b!525525 (= lt!241562 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!525526 () Bool)

(declare-fun e!306397 () Bool)

(assert (=> b!525526 (= e!306397 false)))

(declare-fun res!322408 () Bool)

(assert (=> start!47768 (=> (not res!322408) (not e!306392))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47768 (= res!322408 (validMask!0 mask!3524))))

(assert (=> start!47768 e!306392))

(assert (=> start!47768 true))

(declare-fun array_inv!11805 (array!33365) Bool)

(assert (=> start!47768 (array_inv!11805 a!3235)))

(declare-fun b!525527 () Bool)

(declare-datatypes ((Unit!16486 0))(
  ( (Unit!16487) )
))
(declare-fun e!306393 () Unit!16486)

(declare-fun Unit!16488 () Unit!16486)

(assert (=> b!525527 (= e!306393 Unit!16488)))

(declare-fun lt!241564 () SeekEntryResult!4505)

(declare-fun lt!241563 () Unit!16486)

(declare-fun lt!241559 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33365 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16486)

(assert (=> b!525527 (= lt!241563 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241559 #b00000000000000000000000000000000 (index!20234 lt!241564) (x!49233 lt!241564) mask!3524))))

(declare-fun res!322400 () Bool)

(declare-fun lt!241557 () (_ BitVec 64))

(declare-fun lt!241556 () array!33365)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33365 (_ BitVec 32)) SeekEntryResult!4505)

(assert (=> b!525527 (= res!322400 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241559 lt!241557 lt!241556 mask!3524) (Intermediate!4505 false (index!20234 lt!241564) (x!49233 lt!241564))))))

(assert (=> b!525527 (=> (not res!322400) (not e!306397))))

(assert (=> b!525527 e!306397))

(declare-fun b!525528 () Bool)

(declare-fun e!306396 () Bool)

(assert (=> b!525528 (= e!306396 true)))

(assert (=> b!525528 (= (index!20234 lt!241564) i!1204)))

(declare-fun lt!241565 () Unit!16486)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33365 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16486)

(assert (=> b!525528 (= lt!241565 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241559 #b00000000000000000000000000000000 (index!20234 lt!241564) (x!49233 lt!241564) mask!3524))))

(assert (=> b!525528 (and (or (= (select (arr!16031 a!3235) (index!20234 lt!241564)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16031 a!3235) (index!20234 lt!241564)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16031 a!3235) (index!20234 lt!241564)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16031 a!3235) (index!20234 lt!241564)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241558 () Unit!16486)

(assert (=> b!525528 (= lt!241558 e!306393)))

(declare-fun c!61868 () Bool)

(assert (=> b!525528 (= c!61868 (= (select (arr!16031 a!3235) (index!20234 lt!241564)) (select (arr!16031 a!3235) j!176)))))

(assert (=> b!525528 (and (bvslt (x!49233 lt!241564) #b01111111111111111111111111111110) (or (= (select (arr!16031 a!3235) (index!20234 lt!241564)) (select (arr!16031 a!3235) j!176)) (= (select (arr!16031 a!3235) (index!20234 lt!241564)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16031 a!3235) (index!20234 lt!241564)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525529 () Bool)

(declare-fun res!322401 () Bool)

(assert (=> b!525529 (=> (not res!322401) (not e!306392))))

(assert (=> b!525529 (= res!322401 (and (= (size!16395 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16395 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16395 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525530 () Bool)

(declare-fun res!322399 () Bool)

(assert (=> b!525530 (=> (not res!322399) (not e!306392))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525530 (= res!322399 (validKeyInArray!0 k!2280))))

(declare-fun b!525531 () Bool)

(declare-fun res!322398 () Bool)

(assert (=> b!525531 (=> res!322398 e!306396)))

(assert (=> b!525531 (= res!322398 (or (undefined!5317 lt!241564) (not (is-Intermediate!4505 lt!241564))))))

(declare-fun b!525532 () Bool)

(assert (=> b!525532 (= e!306394 (not e!306396))))

(declare-fun res!322404 () Bool)

(assert (=> b!525532 (=> res!322404 e!306396)))

(declare-fun lt!241560 () (_ BitVec 32))

(assert (=> b!525532 (= res!322404 (= lt!241564 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241560 lt!241557 lt!241556 mask!3524)))))

(assert (=> b!525532 (= lt!241564 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241559 (select (arr!16031 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525532 (= lt!241560 (toIndex!0 lt!241557 mask!3524))))

(assert (=> b!525532 (= lt!241557 (select (store (arr!16031 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!525532 (= lt!241559 (toIndex!0 (select (arr!16031 a!3235) j!176) mask!3524))))

(assert (=> b!525532 (= lt!241556 (array!33366 (store (arr!16031 a!3235) i!1204 k!2280) (size!16395 a!3235)))))

(declare-fun e!306395 () Bool)

(assert (=> b!525532 e!306395))

(declare-fun res!322403 () Bool)

(assert (=> b!525532 (=> (not res!322403) (not e!306395))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33365 (_ BitVec 32)) Bool)

(assert (=> b!525532 (= res!322403 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241561 () Unit!16486)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33365 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16486)

(assert (=> b!525532 (= lt!241561 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525533 () Bool)

(assert (=> b!525533 (= e!306395 (= (seekEntryOrOpen!0 (select (arr!16031 a!3235) j!176) a!3235 mask!3524) (Found!4505 j!176)))))

(declare-fun b!525534 () Bool)

(declare-fun Unit!16489 () Unit!16486)

(assert (=> b!525534 (= e!306393 Unit!16489)))

(declare-fun b!525535 () Bool)

(declare-fun res!322402 () Bool)

(assert (=> b!525535 (=> (not res!322402) (not e!306394))))

(assert (=> b!525535 (= res!322402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525536 () Bool)

(declare-fun res!322406 () Bool)

(assert (=> b!525536 (=> (not res!322406) (not e!306392))))

(assert (=> b!525536 (= res!322406 (validKeyInArray!0 (select (arr!16031 a!3235) j!176)))))

(assert (= (and start!47768 res!322408) b!525529))

(assert (= (and b!525529 res!322401) b!525536))

(assert (= (and b!525536 res!322406) b!525530))

(assert (= (and b!525530 res!322399) b!525523))

(assert (= (and b!525523 res!322409) b!525525))

(assert (= (and b!525525 res!322405) b!525535))

(assert (= (and b!525535 res!322402) b!525524))

(assert (= (and b!525524 res!322407) b!525532))

(assert (= (and b!525532 res!322403) b!525533))

(assert (= (and b!525532 (not res!322404)) b!525531))

(assert (= (and b!525531 (not res!322398)) b!525528))

(assert (= (and b!525528 c!61868) b!525527))

(assert (= (and b!525528 (not c!61868)) b!525534))

(assert (= (and b!525527 res!322400) b!525526))

(declare-fun m!506231 () Bool)

(assert (=> b!525523 m!506231))

(declare-fun m!506233 () Bool)

(assert (=> b!525536 m!506233))

(assert (=> b!525536 m!506233))

(declare-fun m!506235 () Bool)

(assert (=> b!525536 m!506235))

(declare-fun m!506237 () Bool)

(assert (=> b!525530 m!506237))

(declare-fun m!506239 () Bool)

(assert (=> b!525528 m!506239))

(declare-fun m!506241 () Bool)

(assert (=> b!525528 m!506241))

(assert (=> b!525528 m!506233))

(assert (=> b!525533 m!506233))

(assert (=> b!525533 m!506233))

(declare-fun m!506243 () Bool)

(assert (=> b!525533 m!506243))

(declare-fun m!506245 () Bool)

(assert (=> b!525527 m!506245))

(declare-fun m!506247 () Bool)

(assert (=> b!525527 m!506247))

(declare-fun m!506249 () Bool)

(assert (=> b!525535 m!506249))

(declare-fun m!506251 () Bool)

(assert (=> b!525525 m!506251))

(declare-fun m!506253 () Bool)

(assert (=> b!525532 m!506253))

(declare-fun m!506255 () Bool)

(assert (=> b!525532 m!506255))

(assert (=> b!525532 m!506233))

(declare-fun m!506257 () Bool)

(assert (=> b!525532 m!506257))

(assert (=> b!525532 m!506233))

(declare-fun m!506259 () Bool)

(assert (=> b!525532 m!506259))

(assert (=> b!525532 m!506233))

(declare-fun m!506261 () Bool)

(assert (=> b!525532 m!506261))

(declare-fun m!506263 () Bool)

(assert (=> b!525532 m!506263))

(declare-fun m!506265 () Bool)

(assert (=> b!525532 m!506265))

(declare-fun m!506267 () Bool)

(assert (=> b!525532 m!506267))

(declare-fun m!506269 () Bool)

(assert (=> b!525524 m!506269))

(declare-fun m!506271 () Bool)

(assert (=> start!47768 m!506271))

(declare-fun m!506273 () Bool)

(assert (=> start!47768 m!506273))

(push 1)

(assert (not b!525528))

(assert (not b!525523))

(assert (not b!525530))

(assert (not b!525527))

(assert (not b!525532))

(assert (not b!525533))

(assert (not start!47768))

(assert (not b!525535))

