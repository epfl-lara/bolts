; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28174 () Bool)

(assert start!28174)

(declare-fun res!149946 () Bool)

(declare-fun e!182535 () Bool)

(assert (=> start!28174 (=> (not res!149946) (not e!182535))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28174 (= res!149946 (validMask!0 mask!3809))))

(assert (=> start!28174 e!182535))

(assert (=> start!28174 true))

(declare-datatypes ((array!14477 0))(
  ( (array!14478 (arr!6865 (Array (_ BitVec 32) (_ BitVec 64))) (size!7217 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14477)

(declare-fun array_inv!4819 (array!14477) Bool)

(assert (=> start!28174 (array_inv!4819 a!3312)))

(declare-fun b!288281 () Bool)

(declare-fun e!182539 () Bool)

(declare-fun e!182537 () Bool)

(assert (=> b!288281 (= e!182539 e!182537)))

(declare-fun res!149947 () Bool)

(assert (=> b!288281 (=> (not res!149947) (not e!182537))))

(declare-fun lt!142021 () Bool)

(assert (=> b!288281 (= res!149947 lt!142021)))

(declare-datatypes ((SeekEntryResult!2025 0))(
  ( (MissingZero!2025 (index!10270 (_ BitVec 32))) (Found!2025 (index!10271 (_ BitVec 32))) (Intermediate!2025 (undefined!2837 Bool) (index!10272 (_ BitVec 32)) (x!28462 (_ BitVec 32))) (Undefined!2025) (MissingVacant!2025 (index!10273 (_ BitVec 32))) )
))
(declare-fun lt!142022 () SeekEntryResult!2025)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!142018 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14477 (_ BitVec 32)) SeekEntryResult!2025)

(assert (=> b!288281 (= lt!142022 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142018 k!2524 (array!14478 (store (arr!6865 a!3312) i!1256 k!2524) (size!7217 a!3312)) mask!3809))))

(declare-fun lt!142020 () SeekEntryResult!2025)

(assert (=> b!288281 (= lt!142020 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142018 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288281 (= lt!142018 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!288282 () Bool)

(declare-fun res!149949 () Bool)

(assert (=> b!288282 (=> (not res!149949) (not e!182535))))

(assert (=> b!288282 (= res!149949 (and (= (size!7217 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7217 a!3312))))))

(declare-fun b!288283 () Bool)

(assert (=> b!288283 (= e!182535 e!182539)))

(declare-fun res!149945 () Bool)

(assert (=> b!288283 (=> (not res!149945) (not e!182539))))

(declare-fun lt!142019 () SeekEntryResult!2025)

(assert (=> b!288283 (= res!149945 (or lt!142021 (= lt!142019 (MissingVacant!2025 i!1256))))))

(assert (=> b!288283 (= lt!142021 (= lt!142019 (MissingZero!2025 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14477 (_ BitVec 32)) SeekEntryResult!2025)

(assert (=> b!288283 (= lt!142019 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!288284 () Bool)

(declare-fun e!182538 () Bool)

(assert (=> b!288284 (= e!182538 (not true))))

(assert (=> b!288284 (and (= (select (arr!6865 a!3312) (index!10272 lt!142020)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10272 lt!142020) i!1256))))

(declare-fun b!288285 () Bool)

(declare-fun res!149942 () Bool)

(assert (=> b!288285 (=> (not res!149942) (not e!182535))))

(declare-fun arrayContainsKey!0 (array!14477 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288285 (= res!149942 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288286 () Bool)

(assert (=> b!288286 (= e!182537 e!182538)))

(declare-fun res!149944 () Bool)

(assert (=> b!288286 (=> (not res!149944) (not e!182538))))

(declare-fun lt!142017 () Bool)

(assert (=> b!288286 (= res!149944 (and (or lt!142017 (not (undefined!2837 lt!142020))) (or lt!142017 (not (= (select (arr!6865 a!3312) (index!10272 lt!142020)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142017 (not (= (select (arr!6865 a!3312) (index!10272 lt!142020)) k!2524))) (not lt!142017)))))

(assert (=> b!288286 (= lt!142017 (not (is-Intermediate!2025 lt!142020)))))

(declare-fun b!288287 () Bool)

(declare-fun res!149948 () Bool)

(assert (=> b!288287 (=> (not res!149948) (not e!182535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288287 (= res!149948 (validKeyInArray!0 k!2524))))

(declare-fun b!288288 () Bool)

(declare-fun res!149943 () Bool)

(assert (=> b!288288 (=> (not res!149943) (not e!182539))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14477 (_ BitVec 32)) Bool)

(assert (=> b!288288 (= res!149943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28174 res!149946) b!288282))

(assert (= (and b!288282 res!149949) b!288287))

(assert (= (and b!288287 res!149948) b!288285))

(assert (= (and b!288285 res!149942) b!288283))

(assert (= (and b!288283 res!149945) b!288288))

(assert (= (and b!288288 res!149943) b!288281))

(assert (= (and b!288281 res!149947) b!288286))

(assert (= (and b!288286 res!149944) b!288284))

(declare-fun m!302563 () Bool)

(assert (=> b!288285 m!302563))

(declare-fun m!302565 () Bool)

(assert (=> b!288286 m!302565))

(declare-fun m!302567 () Bool)

(assert (=> b!288288 m!302567))

(assert (=> b!288284 m!302565))

(declare-fun m!302569 () Bool)

(assert (=> b!288281 m!302569))

(declare-fun m!302571 () Bool)

(assert (=> b!288281 m!302571))

(declare-fun m!302573 () Bool)

(assert (=> b!288281 m!302573))

(declare-fun m!302575 () Bool)

(assert (=> b!288281 m!302575))

(declare-fun m!302577 () Bool)

(assert (=> b!288283 m!302577))

(declare-fun m!302579 () Bool)

(assert (=> b!288287 m!302579))

(declare-fun m!302581 () Bool)

(assert (=> start!28174 m!302581))

(declare-fun m!302583 () Bool)

(assert (=> start!28174 m!302583))

(push 1)

