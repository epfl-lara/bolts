; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28324 () Bool)

(assert start!28324)

(declare-fun b!290077 () Bool)

(declare-fun e!183584 () Bool)

(assert (=> b!290077 (= e!183584 false)))

(declare-fun lt!143303 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2100 0))(
  ( (MissingZero!2100 (index!10570 (_ BitVec 32))) (Found!2100 (index!10571 (_ BitVec 32))) (Intermediate!2100 (undefined!2912 Bool) (index!10572 (_ BitVec 32)) (x!28737 (_ BitVec 32))) (Undefined!2100) (MissingVacant!2100 (index!10573 (_ BitVec 32))) )
))
(declare-fun lt!143300 () SeekEntryResult!2100)

(declare-datatypes ((array!14627 0))(
  ( (array!14628 (arr!6940 (Array (_ BitVec 32) (_ BitVec 64))) (size!7292 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14627)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14627 (_ BitVec 32)) SeekEntryResult!2100)

(assert (=> b!290077 (= lt!143300 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143303 k!2524 (array!14628 (store (arr!6940 a!3312) i!1256 k!2524) (size!7292 a!3312)) mask!3809))))

(declare-fun lt!143301 () SeekEntryResult!2100)

(assert (=> b!290077 (= lt!143301 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143303 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290077 (= lt!143303 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!151595 () Bool)

(declare-fun e!183586 () Bool)

(assert (=> start!28324 (=> (not res!151595) (not e!183586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28324 (= res!151595 (validMask!0 mask!3809))))

(assert (=> start!28324 e!183586))

(assert (=> start!28324 true))

(declare-fun array_inv!4894 (array!14627) Bool)

(assert (=> start!28324 (array_inv!4894 a!3312)))

(declare-fun b!290078 () Bool)

(declare-fun res!151597 () Bool)

(assert (=> b!290078 (=> (not res!151597) (not e!183584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14627 (_ BitVec 32)) Bool)

(assert (=> b!290078 (= res!151597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290079 () Bool)

(assert (=> b!290079 (= e!183586 e!183584)))

(declare-fun res!151596 () Bool)

(assert (=> b!290079 (=> (not res!151596) (not e!183584))))

(declare-fun lt!143302 () SeekEntryResult!2100)

(assert (=> b!290079 (= res!151596 (or (= lt!143302 (MissingZero!2100 i!1256)) (= lt!143302 (MissingVacant!2100 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14627 (_ BitVec 32)) SeekEntryResult!2100)

(assert (=> b!290079 (= lt!143302 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290080 () Bool)

(declare-fun res!151594 () Bool)

(assert (=> b!290080 (=> (not res!151594) (not e!183586))))

(declare-fun arrayContainsKey!0 (array!14627 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290080 (= res!151594 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290081 () Bool)

(declare-fun res!151599 () Bool)

(assert (=> b!290081 (=> (not res!151599) (not e!183586))))

(assert (=> b!290081 (= res!151599 (and (= (size!7292 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7292 a!3312))))))

(declare-fun b!290082 () Bool)

(declare-fun res!151598 () Bool)

(assert (=> b!290082 (=> (not res!151598) (not e!183586))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290082 (= res!151598 (validKeyInArray!0 k!2524))))

(assert (= (and start!28324 res!151595) b!290081))

(assert (= (and b!290081 res!151599) b!290082))

(assert (= (and b!290082 res!151598) b!290080))

(assert (= (and b!290080 res!151594) b!290079))

(assert (= (and b!290079 res!151596) b!290078))

(assert (= (and b!290078 res!151597) b!290077))

(declare-fun m!304225 () Bool)

(assert (=> b!290078 m!304225))

(declare-fun m!304227 () Bool)

(assert (=> b!290080 m!304227))

(declare-fun m!304229 () Bool)

(assert (=> b!290077 m!304229))

(declare-fun m!304231 () Bool)

(assert (=> b!290077 m!304231))

(declare-fun m!304233 () Bool)

(assert (=> b!290077 m!304233))

(declare-fun m!304235 () Bool)

(assert (=> b!290077 m!304235))

(declare-fun m!304237 () Bool)

(assert (=> start!28324 m!304237))

(declare-fun m!304239 () Bool)

(assert (=> start!28324 m!304239))

(declare-fun m!304241 () Bool)

(assert (=> b!290079 m!304241))

(declare-fun m!304243 () Bool)

(assert (=> b!290082 m!304243))

(push 1)

