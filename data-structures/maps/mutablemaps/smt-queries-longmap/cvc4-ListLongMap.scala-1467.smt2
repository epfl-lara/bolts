; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28202 () Bool)

(assert start!28202)

(declare-fun b!288617 () Bool)

(declare-fun res!150283 () Bool)

(declare-fun e!182745 () Bool)

(assert (=> b!288617 (=> (not res!150283) (not e!182745))))

(declare-datatypes ((array!14505 0))(
  ( (array!14506 (arr!6879 (Array (_ BitVec 32) (_ BitVec 64))) (size!7231 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14505)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14505 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288617 (= res!150283 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288618 () Bool)

(declare-fun e!182746 () Bool)

(declare-fun e!182747 () Bool)

(assert (=> b!288618 (= e!182746 e!182747)))

(declare-fun res!150278 () Bool)

(assert (=> b!288618 (=> (not res!150278) (not e!182747))))

(declare-datatypes ((SeekEntryResult!2039 0))(
  ( (MissingZero!2039 (index!10326 (_ BitVec 32))) (Found!2039 (index!10327 (_ BitVec 32))) (Intermediate!2039 (undefined!2851 Bool) (index!10328 (_ BitVec 32)) (x!28508 (_ BitVec 32))) (Undefined!2039) (MissingVacant!2039 (index!10329 (_ BitVec 32))) )
))
(declare-fun lt!142269 () SeekEntryResult!2039)

(declare-fun lt!142272 () Bool)

(assert (=> b!288618 (= res!150278 (and (or lt!142272 (not (undefined!2851 lt!142269))) (or lt!142272 (not (= (select (arr!6879 a!3312) (index!10328 lt!142269)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142272 (not (= (select (arr!6879 a!3312) (index!10328 lt!142269)) k!2524))) (not lt!142272)))))

(assert (=> b!288618 (= lt!142272 (not (is-Intermediate!2039 lt!142269)))))

(declare-fun res!150282 () Bool)

(assert (=> start!28202 (=> (not res!150282) (not e!182745))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28202 (= res!150282 (validMask!0 mask!3809))))

(assert (=> start!28202 e!182745))

(assert (=> start!28202 true))

(declare-fun array_inv!4833 (array!14505) Bool)

(assert (=> start!28202 (array_inv!4833 a!3312)))

(declare-fun b!288619 () Bool)

(declare-fun e!182748 () Bool)

(assert (=> b!288619 (= e!182748 e!182746)))

(declare-fun res!150284 () Bool)

(assert (=> b!288619 (=> (not res!150284) (not e!182746))))

(declare-fun lt!142270 () Bool)

(assert (=> b!288619 (= res!150284 lt!142270)))

(declare-fun lt!142274 () SeekEntryResult!2039)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!142271 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14505 (_ BitVec 32)) SeekEntryResult!2039)

(assert (=> b!288619 (= lt!142274 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142271 k!2524 (array!14506 (store (arr!6879 a!3312) i!1256 k!2524) (size!7231 a!3312)) mask!3809))))

(assert (=> b!288619 (= lt!142269 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142271 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288619 (= lt!142271 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!288620 () Bool)

(declare-fun res!150280 () Bool)

(assert (=> b!288620 (=> (not res!150280) (not e!182745))))

(assert (=> b!288620 (= res!150280 (and (= (size!7231 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7231 a!3312))))))

(declare-fun b!288621 () Bool)

(declare-fun res!150285 () Bool)

(assert (=> b!288621 (=> (not res!150285) (not e!182748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14505 (_ BitVec 32)) Bool)

(assert (=> b!288621 (= res!150285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288622 () Bool)

(assert (=> b!288622 (= e!182747 (not true))))

(assert (=> b!288622 (and (= (select (arr!6879 a!3312) (index!10328 lt!142269)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10328 lt!142269) i!1256))))

(declare-fun b!288623 () Bool)

(declare-fun res!150279 () Bool)

(assert (=> b!288623 (=> (not res!150279) (not e!182745))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288623 (= res!150279 (validKeyInArray!0 k!2524))))

(declare-fun b!288624 () Bool)

(assert (=> b!288624 (= e!182745 e!182748)))

(declare-fun res!150281 () Bool)

(assert (=> b!288624 (=> (not res!150281) (not e!182748))))

(declare-fun lt!142273 () SeekEntryResult!2039)

(assert (=> b!288624 (= res!150281 (or lt!142270 (= lt!142273 (MissingVacant!2039 i!1256))))))

(assert (=> b!288624 (= lt!142270 (= lt!142273 (MissingZero!2039 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14505 (_ BitVec 32)) SeekEntryResult!2039)

(assert (=> b!288624 (= lt!142273 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!28202 res!150282) b!288620))

(assert (= (and b!288620 res!150280) b!288623))

(assert (= (and b!288623 res!150279) b!288617))

(assert (= (and b!288617 res!150283) b!288624))

(assert (= (and b!288624 res!150281) b!288621))

(assert (= (and b!288621 res!150285) b!288619))

(assert (= (and b!288619 res!150284) b!288618))

(assert (= (and b!288618 res!150278) b!288622))

(declare-fun m!302871 () Bool)

(assert (=> b!288623 m!302871))

(declare-fun m!302873 () Bool)

(assert (=> b!288622 m!302873))

(declare-fun m!302875 () Bool)

(assert (=> start!28202 m!302875))

(declare-fun m!302877 () Bool)

(assert (=> start!28202 m!302877))

(declare-fun m!302879 () Bool)

(assert (=> b!288617 m!302879))

(assert (=> b!288618 m!302873))

(declare-fun m!302881 () Bool)

(assert (=> b!288621 m!302881))

(declare-fun m!302883 () Bool)

(assert (=> b!288619 m!302883))

(declare-fun m!302885 () Bool)

(assert (=> b!288619 m!302885))

(declare-fun m!302887 () Bool)

(assert (=> b!288619 m!302887))

(declare-fun m!302889 () Bool)

(assert (=> b!288619 m!302889))

(declare-fun m!302891 () Bool)

(assert (=> b!288624 m!302891))

(push 1)

