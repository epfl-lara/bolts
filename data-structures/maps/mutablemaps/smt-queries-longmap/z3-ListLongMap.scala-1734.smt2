; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31862 () Bool)

(assert start!31862)

(declare-fun b!318309 () Bool)

(declare-fun res!173055 () Bool)

(declare-fun e!197790 () Bool)

(assert (=> b!318309 (=> (not res!173055) (not e!197790))))

(declare-datatypes ((array!16231 0))(
  ( (array!16232 (arr!7679 (Array (_ BitVec 32) (_ BitVec 64))) (size!8031 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16231)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16231 (_ BitVec 32)) Bool)

(assert (=> b!318309 (= res!173055 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!318310 () Bool)

(declare-fun e!197794 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!318310 (= e!197794 (not (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000))))))

(declare-fun e!197793 () Bool)

(assert (=> b!318310 e!197793))

(declare-fun res!173053 () Bool)

(assert (=> b!318310 (=> (not res!173053) (not e!197793))))

(declare-datatypes ((SeekEntryResult!2830 0))(
  ( (MissingZero!2830 (index!13496 (_ BitVec 32))) (Found!2830 (index!13497 (_ BitVec 32))) (Intermediate!2830 (undefined!3642 Bool) (index!13498 (_ BitVec 32)) (x!31714 (_ BitVec 32))) (Undefined!2830) (MissingVacant!2830 (index!13499 (_ BitVec 32))) )
))
(declare-fun lt!155339 () SeekEntryResult!2830)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun lt!155340 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16231 (_ BitVec 32)) SeekEntryResult!2830)

(assert (=> b!318310 (= res!173053 (= lt!155339 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155340 k0!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318310 (= lt!155340 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318311 () Bool)

(declare-fun res!173047 () Bool)

(declare-fun e!197791 () Bool)

(assert (=> b!318311 (=> (not res!173047) (not e!197791))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!318311 (= res!173047 (and (= (select (arr!7679 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8031 a!3293))))))

(declare-fun b!318312 () Bool)

(declare-fun res!173052 () Bool)

(assert (=> b!318312 (=> (not res!173052) (not e!197790))))

(assert (=> b!318312 (= res!173052 (and (= (size!8031 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8031 a!3293))))))

(declare-fun b!318313 () Bool)

(assert (=> b!318313 (= e!197790 e!197791)))

(declare-fun res!173046 () Bool)

(assert (=> b!318313 (=> (not res!173046) (not e!197791))))

(declare-fun lt!155341 () SeekEntryResult!2830)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318313 (= res!173046 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!155341))))

(assert (=> b!318313 (= lt!155341 (Intermediate!2830 false resIndex!52 resX!52))))

(declare-fun b!318314 () Bool)

(declare-fun res!173049 () Bool)

(assert (=> b!318314 (=> (not res!173049) (not e!197790))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16231 (_ BitVec 32)) SeekEntryResult!2830)

(assert (=> b!318314 (= res!173049 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2830 i!1240)))))

(declare-fun res!173050 () Bool)

(assert (=> start!31862 (=> (not res!173050) (not e!197790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31862 (= res!173050 (validMask!0 mask!3709))))

(assert (=> start!31862 e!197790))

(declare-fun array_inv!5633 (array!16231) Bool)

(assert (=> start!31862 (array_inv!5633 a!3293)))

(assert (=> start!31862 true))

(declare-fun lt!155342 () array!16231)

(declare-fun b!318315 () Bool)

(assert (=> b!318315 (= e!197793 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!155342 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155340 k0!2441 lt!155342 mask!3709)))))

(assert (=> b!318315 (= lt!155342 (array!16232 (store (arr!7679 a!3293) i!1240 k0!2441) (size!8031 a!3293)))))

(declare-fun b!318316 () Bool)

(declare-fun res!173054 () Bool)

(assert (=> b!318316 (=> (not res!173054) (not e!197790))))

(declare-fun arrayContainsKey!0 (array!16231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318316 (= res!173054 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318317 () Bool)

(declare-fun res!173051 () Bool)

(assert (=> b!318317 (=> (not res!173051) (not e!197790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318317 (= res!173051 (validKeyInArray!0 k0!2441))))

(declare-fun b!318318 () Bool)

(assert (=> b!318318 (= e!197791 e!197794)))

(declare-fun res!173048 () Bool)

(assert (=> b!318318 (=> (not res!173048) (not e!197794))))

(assert (=> b!318318 (= res!173048 (and (= lt!155339 lt!155341) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7679 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!318318 (= lt!155339 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(assert (= (and start!31862 res!173050) b!318312))

(assert (= (and b!318312 res!173052) b!318317))

(assert (= (and b!318317 res!173051) b!318316))

(assert (= (and b!318316 res!173054) b!318314))

(assert (= (and b!318314 res!173049) b!318309))

(assert (= (and b!318309 res!173055) b!318313))

(assert (= (and b!318313 res!173046) b!318311))

(assert (= (and b!318311 res!173047) b!318318))

(assert (= (and b!318318 res!173048) b!318310))

(assert (= (and b!318310 res!173053) b!318315))

(declare-fun m!327057 () Bool)

(assert (=> b!318311 m!327057))

(declare-fun m!327059 () Bool)

(assert (=> b!318309 m!327059))

(declare-fun m!327061 () Bool)

(assert (=> b!318318 m!327061))

(declare-fun m!327063 () Bool)

(assert (=> b!318318 m!327063))

(declare-fun m!327065 () Bool)

(assert (=> b!318314 m!327065))

(declare-fun m!327067 () Bool)

(assert (=> b!318316 m!327067))

(declare-fun m!327069 () Bool)

(assert (=> b!318317 m!327069))

(declare-fun m!327071 () Bool)

(assert (=> b!318310 m!327071))

(declare-fun m!327073 () Bool)

(assert (=> b!318310 m!327073))

(declare-fun m!327075 () Bool)

(assert (=> b!318313 m!327075))

(assert (=> b!318313 m!327075))

(declare-fun m!327077 () Bool)

(assert (=> b!318313 m!327077))

(declare-fun m!327079 () Bool)

(assert (=> start!31862 m!327079))

(declare-fun m!327081 () Bool)

(assert (=> start!31862 m!327081))

(declare-fun m!327083 () Bool)

(assert (=> b!318315 m!327083))

(declare-fun m!327085 () Bool)

(assert (=> b!318315 m!327085))

(declare-fun m!327087 () Bool)

(assert (=> b!318315 m!327087))

(check-sat (not b!318317) (not b!318315) (not b!318314) (not b!318309) (not b!318313) (not start!31862) (not b!318316) (not b!318310) (not b!318318))
(check-sat)
