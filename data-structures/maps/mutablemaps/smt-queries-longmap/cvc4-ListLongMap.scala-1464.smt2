; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28184 () Bool)

(assert start!28184)

(declare-fun b!288401 () Bool)

(declare-fun res!150066 () Bool)

(declare-fun e!182613 () Bool)

(assert (=> b!288401 (=> (not res!150066) (not e!182613))))

(declare-datatypes ((array!14487 0))(
  ( (array!14488 (arr!6870 (Array (_ BitVec 32) (_ BitVec 64))) (size!7222 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14487)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14487 (_ BitVec 32)) Bool)

(assert (=> b!288401 (= res!150066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288402 () Bool)

(declare-fun e!182611 () Bool)

(assert (=> b!288402 (= e!182613 e!182611)))

(declare-fun res!150065 () Bool)

(assert (=> b!288402 (=> (not res!150065) (not e!182611))))

(declare-fun lt!142111 () Bool)

(assert (=> b!288402 (= res!150065 lt!142111)))

(declare-datatypes ((SeekEntryResult!2030 0))(
  ( (MissingZero!2030 (index!10290 (_ BitVec 32))) (Found!2030 (index!10291 (_ BitVec 32))) (Intermediate!2030 (undefined!2842 Bool) (index!10292 (_ BitVec 32)) (x!28475 (_ BitVec 32))) (Undefined!2030) (MissingVacant!2030 (index!10293 (_ BitVec 32))) )
))
(declare-fun lt!142108 () SeekEntryResult!2030)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun lt!142112 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14487 (_ BitVec 32)) SeekEntryResult!2030)

(assert (=> b!288402 (= lt!142108 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142112 k!2524 (array!14488 (store (arr!6870 a!3312) i!1256 k!2524) (size!7222 a!3312)) mask!3809))))

(declare-fun lt!142107 () SeekEntryResult!2030)

(assert (=> b!288402 (= lt!142107 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142112 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288402 (= lt!142112 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!288403 () Bool)

(declare-fun e!182610 () Bool)

(assert (=> b!288403 (= e!182610 e!182613)))

(declare-fun res!150063 () Bool)

(assert (=> b!288403 (=> (not res!150063) (not e!182613))))

(declare-fun lt!142109 () SeekEntryResult!2030)

(assert (=> b!288403 (= res!150063 (or lt!142111 (= lt!142109 (MissingVacant!2030 i!1256))))))

(assert (=> b!288403 (= lt!142111 (= lt!142109 (MissingZero!2030 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14487 (_ BitVec 32)) SeekEntryResult!2030)

(assert (=> b!288403 (= lt!142109 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!288404 () Bool)

(declare-fun res!150067 () Bool)

(assert (=> b!288404 (=> (not res!150067) (not e!182610))))

(declare-fun arrayContainsKey!0 (array!14487 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288404 (= res!150067 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288405 () Bool)

(declare-fun res!150062 () Bool)

(assert (=> b!288405 (=> (not res!150062) (not e!182610))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288405 (= res!150062 (validKeyInArray!0 k!2524))))

(declare-fun res!150069 () Bool)

(assert (=> start!28184 (=> (not res!150069) (not e!182610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28184 (= res!150069 (validMask!0 mask!3809))))

(assert (=> start!28184 e!182610))

(assert (=> start!28184 true))

(declare-fun array_inv!4824 (array!14487) Bool)

(assert (=> start!28184 (array_inv!4824 a!3312)))

(declare-fun b!288406 () Bool)

(declare-fun res!150068 () Bool)

(assert (=> b!288406 (=> (not res!150068) (not e!182610))))

(assert (=> b!288406 (= res!150068 (and (= (size!7222 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7222 a!3312))))))

(declare-fun b!288407 () Bool)

(declare-fun e!182612 () Bool)

(assert (=> b!288407 (= e!182612 (not true))))

(assert (=> b!288407 (and (= (select (arr!6870 a!3312) (index!10292 lt!142107)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10292 lt!142107) i!1256))))

(declare-fun b!288408 () Bool)

(assert (=> b!288408 (= e!182611 e!182612)))

(declare-fun res!150064 () Bool)

(assert (=> b!288408 (=> (not res!150064) (not e!182612))))

(declare-fun lt!142110 () Bool)

(assert (=> b!288408 (= res!150064 (and (or lt!142110 (not (undefined!2842 lt!142107))) (or lt!142110 (not (= (select (arr!6870 a!3312) (index!10292 lt!142107)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142110 (not (= (select (arr!6870 a!3312) (index!10292 lt!142107)) k!2524))) (not lt!142110)))))

(assert (=> b!288408 (= lt!142110 (not (is-Intermediate!2030 lt!142107)))))

(assert (= (and start!28184 res!150069) b!288406))

(assert (= (and b!288406 res!150068) b!288405))

(assert (= (and b!288405 res!150062) b!288404))

(assert (= (and b!288404 res!150067) b!288403))

(assert (= (and b!288403 res!150063) b!288401))

(assert (= (and b!288401 res!150066) b!288402))

(assert (= (and b!288402 res!150065) b!288408))

(assert (= (and b!288408 res!150064) b!288407))

(declare-fun m!302673 () Bool)

(assert (=> b!288405 m!302673))

(declare-fun m!302675 () Bool)

(assert (=> b!288402 m!302675))

(declare-fun m!302677 () Bool)

(assert (=> b!288402 m!302677))

(declare-fun m!302679 () Bool)

(assert (=> b!288402 m!302679))

(declare-fun m!302681 () Bool)

(assert (=> b!288402 m!302681))

(declare-fun m!302683 () Bool)

(assert (=> start!28184 m!302683))

(declare-fun m!302685 () Bool)

(assert (=> start!28184 m!302685))

(declare-fun m!302687 () Bool)

(assert (=> b!288401 m!302687))

(declare-fun m!302689 () Bool)

(assert (=> b!288407 m!302689))

(declare-fun m!302691 () Bool)

(assert (=> b!288404 m!302691))

(declare-fun m!302693 () Bool)

(assert (=> b!288403 m!302693))

(assert (=> b!288408 m!302689))

(push 1)

