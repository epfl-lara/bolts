; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31810 () Bool)

(assert start!31810)

(declare-fun res!172272 () Bool)

(declare-fun e!197401 () Bool)

(assert (=> start!31810 (=> (not res!172272) (not e!197401))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31810 (= res!172272 (validMask!0 mask!3709))))

(assert (=> start!31810 e!197401))

(declare-datatypes ((array!16179 0))(
  ( (array!16180 (arr!7653 (Array (_ BitVec 32) (_ BitVec 64))) (size!8005 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16179)

(declare-fun array_inv!5607 (array!16179) Bool)

(assert (=> start!31810 (array_inv!5607 a!3293)))

(assert (=> start!31810 true))

(declare-fun b!317529 () Bool)

(declare-fun lt!155027 () (_ BitVec 32))

(declare-fun lt!155028 () array!16179)

(declare-fun e!197403 () Bool)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2804 0))(
  ( (MissingZero!2804 (index!13392 (_ BitVec 32))) (Found!2804 (index!13393 (_ BitVec 32))) (Intermediate!2804 (undefined!3616 Bool) (index!13394 (_ BitVec 32)) (x!31616 (_ BitVec 32))) (Undefined!2804) (MissingVacant!2804 (index!13395 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16179 (_ BitVec 32)) SeekEntryResult!2804)

(assert (=> b!317529 (= e!197403 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155028 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155027 k!2441 lt!155028 mask!3709)))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!317529 (= lt!155028 (array!16180 (store (arr!7653 a!3293) i!1240 k!2441) (size!8005 a!3293)))))

(declare-fun b!317530 () Bool)

(declare-fun res!172269 () Bool)

(declare-fun e!197404 () Bool)

(assert (=> b!317530 (=> (not res!172269) (not e!197404))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!317530 (= res!172269 (and (= (select (arr!7653 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8005 a!3293))))))

(declare-fun b!317531 () Bool)

(declare-fun res!172266 () Bool)

(assert (=> b!317531 (=> (not res!172266) (not e!197401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16179 (_ BitVec 32)) Bool)

(assert (=> b!317531 (= res!172266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317532 () Bool)

(declare-fun e!197400 () Bool)

(assert (=> b!317532 (= e!197404 e!197400)))

(declare-fun res!172273 () Bool)

(assert (=> b!317532 (=> (not res!172273) (not e!197400))))

(declare-fun lt!155030 () SeekEntryResult!2804)

(declare-fun lt!155029 () SeekEntryResult!2804)

(assert (=> b!317532 (= res!172273 (and (= lt!155030 lt!155029) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7653 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317532 (= lt!155030 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!317533 () Bool)

(declare-fun res!172268 () Bool)

(assert (=> b!317533 (=> (not res!172268) (not e!197401))))

(declare-fun arrayContainsKey!0 (array!16179 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317533 (= res!172268 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317534 () Bool)

(declare-fun res!172267 () Bool)

(assert (=> b!317534 (=> (not res!172267) (not e!197401))))

(assert (=> b!317534 (= res!172267 (and (= (size!8005 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8005 a!3293))))))

(declare-fun b!317535 () Bool)

(assert (=> b!317535 (= e!197400 (not true))))

(assert (=> b!317535 e!197403))

(declare-fun res!172271 () Bool)

(assert (=> b!317535 (=> (not res!172271) (not e!197403))))

(assert (=> b!317535 (= res!172271 (= lt!155030 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155027 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317535 (= lt!155027 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317536 () Bool)

(declare-fun res!172270 () Bool)

(assert (=> b!317536 (=> (not res!172270) (not e!197401))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16179 (_ BitVec 32)) SeekEntryResult!2804)

(assert (=> b!317536 (= res!172270 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2804 i!1240)))))

(declare-fun b!317537 () Bool)

(declare-fun res!172274 () Bool)

(assert (=> b!317537 (=> (not res!172274) (not e!197401))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317537 (= res!172274 (validKeyInArray!0 k!2441))))

(declare-fun b!317538 () Bool)

(assert (=> b!317538 (= e!197401 e!197404)))

(declare-fun res!172275 () Bool)

(assert (=> b!317538 (=> (not res!172275) (not e!197404))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317538 (= res!172275 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155029))))

(assert (=> b!317538 (= lt!155029 (Intermediate!2804 false resIndex!52 resX!52))))

(assert (= (and start!31810 res!172272) b!317534))

(assert (= (and b!317534 res!172267) b!317537))

(assert (= (and b!317537 res!172274) b!317533))

(assert (= (and b!317533 res!172268) b!317536))

(assert (= (and b!317536 res!172270) b!317531))

(assert (= (and b!317531 res!172266) b!317538))

(assert (= (and b!317538 res!172275) b!317530))

(assert (= (and b!317530 res!172269) b!317532))

(assert (= (and b!317532 res!172273) b!317535))

(assert (= (and b!317535 res!172271) b!317529))

(declare-fun m!326225 () Bool)

(assert (=> b!317537 m!326225))

(declare-fun m!326227 () Bool)

(assert (=> b!317536 m!326227))

(declare-fun m!326229 () Bool)

(assert (=> b!317530 m!326229))

(declare-fun m!326231 () Bool)

(assert (=> b!317535 m!326231))

(declare-fun m!326233 () Bool)

(assert (=> b!317535 m!326233))

(declare-fun m!326235 () Bool)

(assert (=> b!317532 m!326235))

(declare-fun m!326237 () Bool)

(assert (=> b!317532 m!326237))

(declare-fun m!326239 () Bool)

(assert (=> b!317531 m!326239))

(declare-fun m!326241 () Bool)

(assert (=> b!317538 m!326241))

(assert (=> b!317538 m!326241))

(declare-fun m!326243 () Bool)

(assert (=> b!317538 m!326243))

(declare-fun m!326245 () Bool)

(assert (=> b!317529 m!326245))

(declare-fun m!326247 () Bool)

(assert (=> b!317529 m!326247))

(declare-fun m!326249 () Bool)

(assert (=> b!317529 m!326249))

(declare-fun m!326251 () Bool)

(assert (=> start!31810 m!326251))

(declare-fun m!326253 () Bool)

(assert (=> start!31810 m!326253))

(declare-fun m!326255 () Bool)

(assert (=> b!317533 m!326255))

(push 1)

(assert (not b!317533))

(assert (not b!317535))

(assert (not b!317537))

(assert (not b!317529))

(assert (not b!317532))

(assert (not b!317536))

(assert (not b!317531))

(assert (not b!317538))

(assert (not start!31810))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

