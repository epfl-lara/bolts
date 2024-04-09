; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31864 () Bool)

(assert start!31864)

(declare-fun b!318339 () Bool)

(declare-fun res!173078 () Bool)

(declare-fun e!197809 () Bool)

(assert (=> b!318339 (=> (not res!173078) (not e!197809))))

(declare-datatypes ((array!16233 0))(
  ( (array!16234 (arr!7680 (Array (_ BitVec 32) (_ BitVec 64))) (size!8032 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16233)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16233 (_ BitVec 32)) Bool)

(assert (=> b!318339 (= res!173078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!318340 () Bool)

(declare-fun res!173082 () Bool)

(assert (=> b!318340 (=> (not res!173082) (not e!197809))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2831 0))(
  ( (MissingZero!2831 (index!13500 (_ BitVec 32))) (Found!2831 (index!13501 (_ BitVec 32))) (Intermediate!2831 (undefined!3643 Bool) (index!13502 (_ BitVec 32)) (x!31715 (_ BitVec 32))) (Undefined!2831) (MissingVacant!2831 (index!13503 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16233 (_ BitVec 32)) SeekEntryResult!2831)

(assert (=> b!318340 (= res!173082 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2831 i!1240)))))

(declare-fun b!318341 () Bool)

(declare-fun res!173079 () Bool)

(assert (=> b!318341 (=> (not res!173079) (not e!197809))))

(assert (=> b!318341 (= res!173079 (and (= (size!8032 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8032 a!3293))))))

(declare-fun b!318342 () Bool)

(declare-fun e!197807 () Bool)

(declare-fun e!197808 () Bool)

(assert (=> b!318342 (= e!197807 e!197808)))

(declare-fun res!173085 () Bool)

(assert (=> b!318342 (=> (not res!173085) (not e!197808))))

(declare-fun lt!155353 () SeekEntryResult!2831)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!155354 () SeekEntryResult!2831)

(assert (=> b!318342 (= res!173085 (and (= lt!155354 lt!155353) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7680 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16233 (_ BitVec 32)) SeekEntryResult!2831)

(assert (=> b!318342 (= lt!155354 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!318343 () Bool)

(assert (=> b!318343 (= e!197808 (not (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000))))))

(declare-fun e!197806 () Bool)

(assert (=> b!318343 e!197806))

(declare-fun res!173076 () Bool)

(assert (=> b!318343 (=> (not res!173076) (not e!197806))))

(declare-fun lt!155352 () (_ BitVec 32))

(assert (=> b!318343 (= res!173076 (= lt!155354 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155352 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318343 (= lt!155352 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318345 () Bool)

(declare-fun lt!155351 () array!16233)

(assert (=> b!318345 (= e!197806 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155351 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155352 k!2441 lt!155351 mask!3709)))))

(assert (=> b!318345 (= lt!155351 (array!16234 (store (arr!7680 a!3293) i!1240 k!2441) (size!8032 a!3293)))))

(declare-fun b!318346 () Bool)

(declare-fun res!173080 () Bool)

(assert (=> b!318346 (=> (not res!173080) (not e!197807))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!318346 (= res!173080 (and (= (select (arr!7680 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8032 a!3293))))))

(declare-fun b!318347 () Bool)

(declare-fun res!173083 () Bool)

(assert (=> b!318347 (=> (not res!173083) (not e!197809))))

(declare-fun arrayContainsKey!0 (array!16233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318347 (= res!173083 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318348 () Bool)

(assert (=> b!318348 (= e!197809 e!197807)))

(declare-fun res!173084 () Bool)

(assert (=> b!318348 (=> (not res!173084) (not e!197807))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318348 (= res!173084 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155353))))

(assert (=> b!318348 (= lt!155353 (Intermediate!2831 false resIndex!52 resX!52))))

(declare-fun res!173081 () Bool)

(assert (=> start!31864 (=> (not res!173081) (not e!197809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31864 (= res!173081 (validMask!0 mask!3709))))

(assert (=> start!31864 e!197809))

(declare-fun array_inv!5634 (array!16233) Bool)

(assert (=> start!31864 (array_inv!5634 a!3293)))

(assert (=> start!31864 true))

(declare-fun b!318344 () Bool)

(declare-fun res!173077 () Bool)

(assert (=> b!318344 (=> (not res!173077) (not e!197809))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318344 (= res!173077 (validKeyInArray!0 k!2441))))

(assert (= (and start!31864 res!173081) b!318341))

(assert (= (and b!318341 res!173079) b!318344))

(assert (= (and b!318344 res!173077) b!318347))

(assert (= (and b!318347 res!173083) b!318340))

(assert (= (and b!318340 res!173082) b!318339))

(assert (= (and b!318339 res!173078) b!318348))

(assert (= (and b!318348 res!173084) b!318346))

(assert (= (and b!318346 res!173080) b!318342))

(assert (= (and b!318342 res!173085) b!318343))

(assert (= (and b!318343 res!173076) b!318345))

(declare-fun m!327089 () Bool)

(assert (=> b!318340 m!327089))

(declare-fun m!327091 () Bool)

(assert (=> b!318347 m!327091))

(declare-fun m!327093 () Bool)

(assert (=> b!318345 m!327093))

(declare-fun m!327095 () Bool)

(assert (=> b!318345 m!327095))

(declare-fun m!327097 () Bool)

(assert (=> b!318345 m!327097))

(declare-fun m!327099 () Bool)

(assert (=> b!318346 m!327099))

(declare-fun m!327101 () Bool)

(assert (=> b!318344 m!327101))

(declare-fun m!327103 () Bool)

(assert (=> b!318342 m!327103))

(declare-fun m!327105 () Bool)

(assert (=> b!318342 m!327105))

(declare-fun m!327107 () Bool)

(assert (=> b!318348 m!327107))

(assert (=> b!318348 m!327107))

(declare-fun m!327109 () Bool)

(assert (=> b!318348 m!327109))

(declare-fun m!327111 () Bool)

(assert (=> b!318339 m!327111))

(declare-fun m!327113 () Bool)

(assert (=> start!31864 m!327113))

(declare-fun m!327115 () Bool)

(assert (=> start!31864 m!327115))

(declare-fun m!327117 () Bool)

(assert (=> b!318343 m!327117))

(declare-fun m!327119 () Bool)

(assert (=> b!318343 m!327119))

(push 1)

(assert (not b!318347))

(assert (not b!318343))

(assert (not b!318339))

(assert (not b!318348))

