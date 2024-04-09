; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28318 () Bool)

(assert start!28318)

(declare-fun b!290023 () Bool)

(declare-fun res!151545 () Bool)

(declare-fun e!183557 () Bool)

(assert (=> b!290023 (=> (not res!151545) (not e!183557))))

(declare-datatypes ((array!14621 0))(
  ( (array!14622 (arr!6937 (Array (_ BitVec 32) (_ BitVec 64))) (size!7289 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14621)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!290023 (= res!151545 (and (= (size!7289 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7289 a!3312))))))

(declare-fun b!290024 () Bool)

(declare-fun e!183559 () Bool)

(assert (=> b!290024 (= e!183559 false)))

(declare-datatypes ((SeekEntryResult!2097 0))(
  ( (MissingZero!2097 (index!10558 (_ BitVec 32))) (Found!2097 (index!10559 (_ BitVec 32))) (Intermediate!2097 (undefined!2909 Bool) (index!10560 (_ BitVec 32)) (x!28726 (_ BitVec 32))) (Undefined!2097) (MissingVacant!2097 (index!10561 (_ BitVec 32))) )
))
(declare-fun lt!143267 () SeekEntryResult!2097)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun lt!143266 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14621 (_ BitVec 32)) SeekEntryResult!2097)

(assert (=> b!290024 (= lt!143267 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143266 k!2524 (array!14622 (store (arr!6937 a!3312) i!1256 k!2524) (size!7289 a!3312)) mask!3809))))

(declare-fun lt!143265 () SeekEntryResult!2097)

(assert (=> b!290024 (= lt!143265 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143266 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290024 (= lt!143266 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290025 () Bool)

(declare-fun res!151540 () Bool)

(assert (=> b!290025 (=> (not res!151540) (not e!183557))))

(declare-fun arrayContainsKey!0 (array!14621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290025 (= res!151540 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290026 () Bool)

(declare-fun res!151541 () Bool)

(assert (=> b!290026 (=> (not res!151541) (not e!183557))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290026 (= res!151541 (validKeyInArray!0 k!2524))))

(declare-fun b!290027 () Bool)

(assert (=> b!290027 (= e!183557 e!183559)))

(declare-fun res!151542 () Bool)

(assert (=> b!290027 (=> (not res!151542) (not e!183559))))

(declare-fun lt!143264 () SeekEntryResult!2097)

(assert (=> b!290027 (= res!151542 (or (= lt!143264 (MissingZero!2097 i!1256)) (= lt!143264 (MissingVacant!2097 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14621 (_ BitVec 32)) SeekEntryResult!2097)

(assert (=> b!290027 (= lt!143264 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290028 () Bool)

(declare-fun res!151544 () Bool)

(assert (=> b!290028 (=> (not res!151544) (not e!183559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14621 (_ BitVec 32)) Bool)

(assert (=> b!290028 (= res!151544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!151543 () Bool)

(assert (=> start!28318 (=> (not res!151543) (not e!183557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28318 (= res!151543 (validMask!0 mask!3809))))

(assert (=> start!28318 e!183557))

(assert (=> start!28318 true))

(declare-fun array_inv!4891 (array!14621) Bool)

(assert (=> start!28318 (array_inv!4891 a!3312)))

(assert (= (and start!28318 res!151543) b!290023))

(assert (= (and b!290023 res!151545) b!290026))

(assert (= (and b!290026 res!151541) b!290025))

(assert (= (and b!290025 res!151540) b!290027))

(assert (= (and b!290027 res!151542) b!290028))

(assert (= (and b!290028 res!151544) b!290024))

(declare-fun m!304165 () Bool)

(assert (=> b!290028 m!304165))

(declare-fun m!304167 () Bool)

(assert (=> b!290024 m!304167))

(declare-fun m!304169 () Bool)

(assert (=> b!290024 m!304169))

(declare-fun m!304171 () Bool)

(assert (=> b!290024 m!304171))

(declare-fun m!304173 () Bool)

(assert (=> b!290024 m!304173))

(declare-fun m!304175 () Bool)

(assert (=> b!290025 m!304175))

(declare-fun m!304177 () Bool)

(assert (=> b!290026 m!304177))

(declare-fun m!304179 () Bool)

(assert (=> b!290027 m!304179))

(declare-fun m!304181 () Bool)

(assert (=> start!28318 m!304181))

(declare-fun m!304183 () Bool)

(assert (=> start!28318 m!304183))

(push 1)

