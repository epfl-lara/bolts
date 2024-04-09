; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47766 () Bool)

(assert start!47766)

(declare-fun b!525481 () Bool)

(declare-fun e!306371 () Bool)

(assert (=> b!525481 (= e!306371 false)))

(declare-fun b!525482 () Bool)

(declare-fun e!306374 () Bool)

(assert (=> b!525482 (= e!306374 true)))

(declare-datatypes ((SeekEntryResult!4504 0))(
  ( (MissingZero!4504 (index!20228 (_ BitVec 32))) (Found!4504 (index!20229 (_ BitVec 32))) (Intermediate!4504 (undefined!5316 Bool) (index!20230 (_ BitVec 32)) (x!49232 (_ BitVec 32))) (Undefined!4504) (MissingVacant!4504 (index!20231 (_ BitVec 32))) )
))
(declare-fun lt!241533 () SeekEntryResult!4504)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525482 (= (index!20230 lt!241533) i!1204)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33363 0))(
  ( (array!33364 (arr!16030 (Array (_ BitVec 32) (_ BitVec 64))) (size!16394 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33363)

(declare-datatypes ((Unit!16482 0))(
  ( (Unit!16483) )
))
(declare-fun lt!241534 () Unit!16482)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!241530 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33363 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16482)

(assert (=> b!525482 (= lt!241534 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!241530 #b00000000000000000000000000000000 (index!20230 lt!241533) (x!49232 lt!241533) mask!3524))))

(assert (=> b!525482 (and (or (= (select (arr!16030 a!3235) (index!20230 lt!241533)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16030 a!3235) (index!20230 lt!241533)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16030 a!3235) (index!20230 lt!241533)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16030 a!3235) (index!20230 lt!241533)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241535 () Unit!16482)

(declare-fun e!306376 () Unit!16482)

(assert (=> b!525482 (= lt!241535 e!306376)))

(declare-fun c!61865 () Bool)

(assert (=> b!525482 (= c!61865 (= (select (arr!16030 a!3235) (index!20230 lt!241533)) (select (arr!16030 a!3235) j!176)))))

(assert (=> b!525482 (and (bvslt (x!49232 lt!241533) #b01111111111111111111111111111110) (or (= (select (arr!16030 a!3235) (index!20230 lt!241533)) (select (arr!16030 a!3235) j!176)) (= (select (arr!16030 a!3235) (index!20230 lt!241533)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16030 a!3235) (index!20230 lt!241533)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525483 () Bool)

(declare-fun e!306370 () Bool)

(declare-fun e!306372 () Bool)

(assert (=> b!525483 (= e!306370 e!306372)))

(declare-fun res!322371 () Bool)

(assert (=> b!525483 (=> (not res!322371) (not e!306372))))

(declare-fun lt!241527 () SeekEntryResult!4504)

(assert (=> b!525483 (= res!322371 (or (= lt!241527 (MissingZero!4504 i!1204)) (= lt!241527 (MissingVacant!4504 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33363 (_ BitVec 32)) SeekEntryResult!4504)

(assert (=> b!525483 (= lt!241527 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!525484 () Bool)

(declare-fun res!322364 () Bool)

(assert (=> b!525484 (=> (not res!322364) (not e!306370))))

(assert (=> b!525484 (= res!322364 (and (= (size!16394 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16394 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16394 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525485 () Bool)

(declare-fun Unit!16484 () Unit!16482)

(assert (=> b!525485 (= e!306376 Unit!16484)))

(declare-fun b!525486 () Bool)

(declare-fun res!322373 () Bool)

(assert (=> b!525486 (=> (not res!322373) (not e!306370))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525486 (= res!322373 (validKeyInArray!0 k0!2280))))

(declare-fun b!525487 () Bool)

(declare-fun res!322367 () Bool)

(assert (=> b!525487 (=> (not res!322367) (not e!306372))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33363 (_ BitVec 32)) Bool)

(assert (=> b!525487 (= res!322367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!322362 () Bool)

(assert (=> start!47766 (=> (not res!322362) (not e!306370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47766 (= res!322362 (validMask!0 mask!3524))))

(assert (=> start!47766 e!306370))

(assert (=> start!47766 true))

(declare-fun array_inv!11804 (array!33363) Bool)

(assert (=> start!47766 (array_inv!11804 a!3235)))

(declare-fun b!525488 () Bool)

(declare-fun res!322368 () Bool)

(assert (=> b!525488 (=> res!322368 e!306374)))

(get-info :version)

(assert (=> b!525488 (= res!322368 (or (undefined!5316 lt!241533) (not ((_ is Intermediate!4504) lt!241533))))))

(declare-fun b!525489 () Bool)

(declare-fun res!322370 () Bool)

(assert (=> b!525489 (=> (not res!322370) (not e!306370))))

(declare-fun arrayContainsKey!0 (array!33363 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525489 (= res!322370 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun e!306373 () Bool)

(declare-fun b!525490 () Bool)

(assert (=> b!525490 (= e!306373 (= (seekEntryOrOpen!0 (select (arr!16030 a!3235) j!176) a!3235 mask!3524) (Found!4504 j!176)))))

(declare-fun b!525491 () Bool)

(assert (=> b!525491 (= e!306372 (not e!306374))))

(declare-fun res!322365 () Bool)

(assert (=> b!525491 (=> res!322365 e!306374)))

(declare-fun lt!241528 () array!33363)

(declare-fun lt!241529 () (_ BitVec 64))

(declare-fun lt!241526 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33363 (_ BitVec 32)) SeekEntryResult!4504)

(assert (=> b!525491 (= res!322365 (= lt!241533 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241526 lt!241529 lt!241528 mask!3524)))))

(assert (=> b!525491 (= lt!241533 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241530 (select (arr!16030 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525491 (= lt!241526 (toIndex!0 lt!241529 mask!3524))))

(assert (=> b!525491 (= lt!241529 (select (store (arr!16030 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!525491 (= lt!241530 (toIndex!0 (select (arr!16030 a!3235) j!176) mask!3524))))

(assert (=> b!525491 (= lt!241528 (array!33364 (store (arr!16030 a!3235) i!1204 k0!2280) (size!16394 a!3235)))))

(assert (=> b!525491 e!306373))

(declare-fun res!322366 () Bool)

(assert (=> b!525491 (=> (not res!322366) (not e!306373))))

(assert (=> b!525491 (= res!322366 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241532 () Unit!16482)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33363 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16482)

(assert (=> b!525491 (= lt!241532 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525492 () Bool)

(declare-fun res!322372 () Bool)

(assert (=> b!525492 (=> (not res!322372) (not e!306370))))

(assert (=> b!525492 (= res!322372 (validKeyInArray!0 (select (arr!16030 a!3235) j!176)))))

(declare-fun b!525493 () Bool)

(declare-fun Unit!16485 () Unit!16482)

(assert (=> b!525493 (= e!306376 Unit!16485)))

(declare-fun lt!241531 () Unit!16482)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33363 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16482)

(assert (=> b!525493 (= lt!241531 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!241530 #b00000000000000000000000000000000 (index!20230 lt!241533) (x!49232 lt!241533) mask!3524))))

(declare-fun res!322363 () Bool)

(assert (=> b!525493 (= res!322363 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241530 lt!241529 lt!241528 mask!3524) (Intermediate!4504 false (index!20230 lt!241533) (x!49232 lt!241533))))))

(assert (=> b!525493 (=> (not res!322363) (not e!306371))))

(assert (=> b!525493 e!306371))

(declare-fun b!525494 () Bool)

(declare-fun res!322369 () Bool)

(assert (=> b!525494 (=> (not res!322369) (not e!306372))))

(declare-datatypes ((List!10241 0))(
  ( (Nil!10238) (Cons!10237 (h!11168 (_ BitVec 64)) (t!16477 List!10241)) )
))
(declare-fun arrayNoDuplicates!0 (array!33363 (_ BitVec 32) List!10241) Bool)

(assert (=> b!525494 (= res!322369 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10238))))

(assert (= (and start!47766 res!322362) b!525484))

(assert (= (and b!525484 res!322364) b!525492))

(assert (= (and b!525492 res!322372) b!525486))

(assert (= (and b!525486 res!322373) b!525489))

(assert (= (and b!525489 res!322370) b!525483))

(assert (= (and b!525483 res!322371) b!525487))

(assert (= (and b!525487 res!322367) b!525494))

(assert (= (and b!525494 res!322369) b!525491))

(assert (= (and b!525491 res!322366) b!525490))

(assert (= (and b!525491 (not res!322365)) b!525488))

(assert (= (and b!525488 (not res!322368)) b!525482))

(assert (= (and b!525482 c!61865) b!525493))

(assert (= (and b!525482 (not c!61865)) b!525485))

(assert (= (and b!525493 res!322363) b!525481))

(declare-fun m!506187 () Bool)

(assert (=> b!525483 m!506187))

(declare-fun m!506189 () Bool)

(assert (=> b!525492 m!506189))

(assert (=> b!525492 m!506189))

(declare-fun m!506191 () Bool)

(assert (=> b!525492 m!506191))

(declare-fun m!506193 () Bool)

(assert (=> b!525493 m!506193))

(declare-fun m!506195 () Bool)

(assert (=> b!525493 m!506195))

(declare-fun m!506197 () Bool)

(assert (=> b!525489 m!506197))

(declare-fun m!506199 () Bool)

(assert (=> b!525494 m!506199))

(declare-fun m!506201 () Bool)

(assert (=> b!525486 m!506201))

(assert (=> b!525490 m!506189))

(assert (=> b!525490 m!506189))

(declare-fun m!506203 () Bool)

(assert (=> b!525490 m!506203))

(declare-fun m!506205 () Bool)

(assert (=> start!47766 m!506205))

(declare-fun m!506207 () Bool)

(assert (=> start!47766 m!506207))

(declare-fun m!506209 () Bool)

(assert (=> b!525487 m!506209))

(assert (=> b!525491 m!506189))

(declare-fun m!506211 () Bool)

(assert (=> b!525491 m!506211))

(declare-fun m!506213 () Bool)

(assert (=> b!525491 m!506213))

(declare-fun m!506215 () Bool)

(assert (=> b!525491 m!506215))

(declare-fun m!506217 () Bool)

(assert (=> b!525491 m!506217))

(assert (=> b!525491 m!506189))

(declare-fun m!506219 () Bool)

(assert (=> b!525491 m!506219))

(assert (=> b!525491 m!506189))

(declare-fun m!506221 () Bool)

(assert (=> b!525491 m!506221))

(declare-fun m!506223 () Bool)

(assert (=> b!525491 m!506223))

(declare-fun m!506225 () Bool)

(assert (=> b!525491 m!506225))

(declare-fun m!506227 () Bool)

(assert (=> b!525482 m!506227))

(declare-fun m!506229 () Bool)

(assert (=> b!525482 m!506229))

(assert (=> b!525482 m!506189))

(check-sat (not b!525482) (not b!525490) (not b!525491) (not start!47766) (not b!525493) (not b!525486) (not b!525489) (not b!525483) (not b!525494) (not b!525492) (not b!525487))
(check-sat)
