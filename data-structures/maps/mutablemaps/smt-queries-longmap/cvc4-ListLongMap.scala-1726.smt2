; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31816 () Bool)

(assert start!31816)

(declare-fun b!317619 () Bool)

(declare-fun res!172365 () Bool)

(declare-fun e!197446 () Bool)

(assert (=> b!317619 (=> (not res!172365) (not e!197446))))

(declare-datatypes ((array!16185 0))(
  ( (array!16186 (arr!7656 (Array (_ BitVec 32) (_ BitVec 64))) (size!8008 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16185)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!317619 (= res!172365 (and (= (size!8008 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8008 a!3293))))))

(declare-fun b!317620 () Bool)

(declare-fun e!197445 () Bool)

(declare-fun e!197449 () Bool)

(assert (=> b!317620 (= e!197445 e!197449)))

(declare-fun res!172356 () Bool)

(assert (=> b!317620 (=> (not res!172356) (not e!197449))))

(declare-datatypes ((SeekEntryResult!2807 0))(
  ( (MissingZero!2807 (index!13404 (_ BitVec 32))) (Found!2807 (index!13405 (_ BitVec 32))) (Intermediate!2807 (undefined!3619 Bool) (index!13406 (_ BitVec 32)) (x!31627 (_ BitVec 32))) (Undefined!2807) (MissingVacant!2807 (index!13407 (_ BitVec 32))) )
))
(declare-fun lt!155063 () SeekEntryResult!2807)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!155065 () SeekEntryResult!2807)

(assert (=> b!317620 (= res!172356 (and (= lt!155063 lt!155065) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7656 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16185 (_ BitVec 32)) SeekEntryResult!2807)

(assert (=> b!317620 (= lt!155063 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!317622 () Bool)

(assert (=> b!317622 (= e!197449 (not true))))

(declare-fun e!197447 () Bool)

(assert (=> b!317622 e!197447))

(declare-fun res!172363 () Bool)

(assert (=> b!317622 (=> (not res!172363) (not e!197447))))

(declare-fun lt!155064 () (_ BitVec 32))

(assert (=> b!317622 (= res!172363 (= lt!155063 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155064 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317622 (= lt!155064 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317623 () Bool)

(declare-fun res!172361 () Bool)

(assert (=> b!317623 (=> (not res!172361) (not e!197446))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16185 (_ BitVec 32)) SeekEntryResult!2807)

(assert (=> b!317623 (= res!172361 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2807 i!1240)))))

(declare-fun b!317624 () Bool)

(declare-fun res!172359 () Bool)

(assert (=> b!317624 (=> (not res!172359) (not e!197445))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!317624 (= res!172359 (and (= (select (arr!7656 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8008 a!3293))))))

(declare-fun b!317625 () Bool)

(declare-fun res!172357 () Bool)

(assert (=> b!317625 (=> (not res!172357) (not e!197446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16185 (_ BitVec 32)) Bool)

(assert (=> b!317625 (= res!172357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317626 () Bool)

(assert (=> b!317626 (= e!197446 e!197445)))

(declare-fun res!172364 () Bool)

(assert (=> b!317626 (=> (not res!172364) (not e!197445))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317626 (= res!172364 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155065))))

(assert (=> b!317626 (= lt!155065 (Intermediate!2807 false resIndex!52 resX!52))))

(declare-fun lt!155066 () array!16185)

(declare-fun b!317621 () Bool)

(assert (=> b!317621 (= e!197447 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155066 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155064 k!2441 lt!155066 mask!3709)))))

(assert (=> b!317621 (= lt!155066 (array!16186 (store (arr!7656 a!3293) i!1240 k!2441) (size!8008 a!3293)))))

(declare-fun res!172362 () Bool)

(assert (=> start!31816 (=> (not res!172362) (not e!197446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31816 (= res!172362 (validMask!0 mask!3709))))

(assert (=> start!31816 e!197446))

(declare-fun array_inv!5610 (array!16185) Bool)

(assert (=> start!31816 (array_inv!5610 a!3293)))

(assert (=> start!31816 true))

(declare-fun b!317627 () Bool)

(declare-fun res!172360 () Bool)

(assert (=> b!317627 (=> (not res!172360) (not e!197446))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317627 (= res!172360 (validKeyInArray!0 k!2441))))

(declare-fun b!317628 () Bool)

(declare-fun res!172358 () Bool)

(assert (=> b!317628 (=> (not res!172358) (not e!197446))))

(declare-fun arrayContainsKey!0 (array!16185 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317628 (= res!172358 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!31816 res!172362) b!317619))

(assert (= (and b!317619 res!172365) b!317627))

(assert (= (and b!317627 res!172360) b!317628))

(assert (= (and b!317628 res!172358) b!317623))

(assert (= (and b!317623 res!172361) b!317625))

(assert (= (and b!317625 res!172357) b!317626))

(assert (= (and b!317626 res!172364) b!317624))

(assert (= (and b!317624 res!172359) b!317620))

(assert (= (and b!317620 res!172356) b!317622))

(assert (= (and b!317622 res!172363) b!317621))

(declare-fun m!326321 () Bool)

(assert (=> b!317625 m!326321))

(declare-fun m!326323 () Bool)

(assert (=> b!317627 m!326323))

(declare-fun m!326325 () Bool)

(assert (=> b!317628 m!326325))

(declare-fun m!326327 () Bool)

(assert (=> b!317626 m!326327))

(assert (=> b!317626 m!326327))

(declare-fun m!326329 () Bool)

(assert (=> b!317626 m!326329))

(declare-fun m!326331 () Bool)

(assert (=> b!317621 m!326331))

(declare-fun m!326333 () Bool)

(assert (=> b!317621 m!326333))

(declare-fun m!326335 () Bool)

(assert (=> b!317621 m!326335))

(declare-fun m!326337 () Bool)

(assert (=> b!317622 m!326337))

(declare-fun m!326339 () Bool)

(assert (=> b!317622 m!326339))

(declare-fun m!326341 () Bool)

(assert (=> b!317624 m!326341))

(declare-fun m!326343 () Bool)

(assert (=> b!317623 m!326343))

(declare-fun m!326345 () Bool)

(assert (=> b!317620 m!326345))

(declare-fun m!326347 () Bool)

(assert (=> b!317620 m!326347))

(declare-fun m!326349 () Bool)

(assert (=> start!31816 m!326349))

(declare-fun m!326351 () Bool)

(assert (=> start!31816 m!326351))

(push 1)

