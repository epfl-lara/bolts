; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28234 () Bool)

(assert start!28234)

(declare-fun b!289001 () Bool)

(declare-fun e!182986 () Bool)

(assert (=> b!289001 (= e!182986 (not true))))

(declare-datatypes ((array!14537 0))(
  ( (array!14538 (arr!6895 (Array (_ BitVec 32) (_ BitVec 64))) (size!7247 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14537)

(declare-datatypes ((SeekEntryResult!2055 0))(
  ( (MissingZero!2055 (index!10390 (_ BitVec 32))) (Found!2055 (index!10391 (_ BitVec 32))) (Intermediate!2055 (undefined!2867 Bool) (index!10392 (_ BitVec 32)) (x!28572 (_ BitVec 32))) (Undefined!2055) (MissingVacant!2055 (index!10393 (_ BitVec 32))) )
))
(declare-fun lt!142561 () SeekEntryResult!2055)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!289001 (and (= (select (arr!6895 a!3312) (index!10392 lt!142561)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10392 lt!142561) i!1256))))

(declare-fun b!289002 () Bool)

(declare-fun res!150668 () Bool)

(declare-fun e!182987 () Bool)

(assert (=> b!289002 (=> (not res!150668) (not e!182987))))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!289002 (= res!150668 (and (= (size!7247 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7247 a!3312))))))

(declare-fun b!289003 () Bool)

(declare-fun res!150669 () Bool)

(assert (=> b!289003 (=> (not res!150669) (not e!182987))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14537 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289003 (= res!150669 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289005 () Bool)

(declare-fun e!182989 () Bool)

(assert (=> b!289005 (= e!182989 e!182986)))

(declare-fun res!150663 () Bool)

(assert (=> b!289005 (=> (not res!150663) (not e!182986))))

(declare-fun lt!142559 () Bool)

(assert (=> b!289005 (= res!150663 (and (or lt!142559 (not (undefined!2867 lt!142561))) (or lt!142559 (not (= (select (arr!6895 a!3312) (index!10392 lt!142561)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142559 (not (= (select (arr!6895 a!3312) (index!10392 lt!142561)) k!2524))) (not lt!142559)))))

(assert (=> b!289005 (= lt!142559 (not (is-Intermediate!2055 lt!142561)))))

(declare-fun b!289006 () Bool)

(declare-fun res!150666 () Bool)

(declare-fun e!182988 () Bool)

(assert (=> b!289006 (=> (not res!150666) (not e!182988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14537 (_ BitVec 32)) Bool)

(assert (=> b!289006 (= res!150666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289007 () Bool)

(assert (=> b!289007 (= e!182987 e!182988)))

(declare-fun res!150665 () Bool)

(assert (=> b!289007 (=> (not res!150665) (not e!182988))))

(declare-fun lt!142562 () SeekEntryResult!2055)

(declare-fun lt!142557 () Bool)

(assert (=> b!289007 (= res!150665 (or lt!142557 (= lt!142562 (MissingVacant!2055 i!1256))))))

(assert (=> b!289007 (= lt!142557 (= lt!142562 (MissingZero!2055 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14537 (_ BitVec 32)) SeekEntryResult!2055)

(assert (=> b!289007 (= lt!142562 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289008 () Bool)

(declare-fun res!150664 () Bool)

(assert (=> b!289008 (=> (not res!150664) (not e!182987))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289008 (= res!150664 (validKeyInArray!0 k!2524))))

(declare-fun res!150662 () Bool)

(assert (=> start!28234 (=> (not res!150662) (not e!182987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28234 (= res!150662 (validMask!0 mask!3809))))

(assert (=> start!28234 e!182987))

(assert (=> start!28234 true))

(declare-fun array_inv!4849 (array!14537) Bool)

(assert (=> start!28234 (array_inv!4849 a!3312)))

(declare-fun b!289004 () Bool)

(assert (=> b!289004 (= e!182988 e!182989)))

(declare-fun res!150667 () Bool)

(assert (=> b!289004 (=> (not res!150667) (not e!182989))))

(assert (=> b!289004 (= res!150667 lt!142557)))

(declare-fun lt!142560 () SeekEntryResult!2055)

(declare-fun lt!142558 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14537 (_ BitVec 32)) SeekEntryResult!2055)

(assert (=> b!289004 (= lt!142560 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142558 k!2524 (array!14538 (store (arr!6895 a!3312) i!1256 k!2524) (size!7247 a!3312)) mask!3809))))

(assert (=> b!289004 (= lt!142561 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142558 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289004 (= lt!142558 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28234 res!150662) b!289002))

(assert (= (and b!289002 res!150668) b!289008))

(assert (= (and b!289008 res!150664) b!289003))

(assert (= (and b!289003 res!150669) b!289007))

(assert (= (and b!289007 res!150665) b!289006))

(assert (= (and b!289006 res!150666) b!289004))

(assert (= (and b!289004 res!150667) b!289005))

(assert (= (and b!289005 res!150663) b!289001))

(declare-fun m!303223 () Bool)

(assert (=> b!289005 m!303223))

(declare-fun m!303225 () Bool)

(assert (=> start!28234 m!303225))

(declare-fun m!303227 () Bool)

(assert (=> start!28234 m!303227))

(declare-fun m!303229 () Bool)

(assert (=> b!289007 m!303229))

(declare-fun m!303231 () Bool)

(assert (=> b!289008 m!303231))

(declare-fun m!303233 () Bool)

(assert (=> b!289003 m!303233))

(declare-fun m!303235 () Bool)

(assert (=> b!289004 m!303235))

(declare-fun m!303237 () Bool)

(assert (=> b!289004 m!303237))

(declare-fun m!303239 () Bool)

(assert (=> b!289004 m!303239))

(declare-fun m!303241 () Bool)

(assert (=> b!289004 m!303241))

(assert (=> b!289001 m!303223))

(declare-fun m!303243 () Bool)

(assert (=> b!289006 m!303243))

(push 1)

