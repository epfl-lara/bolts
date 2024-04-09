; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28322 () Bool)

(assert start!28322)

(declare-fun b!290059 () Bool)

(declare-fun e!183577 () Bool)

(assert (=> b!290059 (= e!183577 false)))

(declare-fun lt!143288 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14625 0))(
  ( (array!14626 (arr!6939 (Array (_ BitVec 32) (_ BitVec 64))) (size!7291 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14625)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2099 0))(
  ( (MissingZero!2099 (index!10566 (_ BitVec 32))) (Found!2099 (index!10567 (_ BitVec 32))) (Intermediate!2099 (undefined!2911 Bool) (index!10568 (_ BitVec 32)) (x!28728 (_ BitVec 32))) (Undefined!2099) (MissingVacant!2099 (index!10569 (_ BitVec 32))) )
))
(declare-fun lt!143289 () SeekEntryResult!2099)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14625 (_ BitVec 32)) SeekEntryResult!2099)

(assert (=> b!290059 (= lt!143289 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143288 k!2524 (array!14626 (store (arr!6939 a!3312) i!1256 k!2524) (size!7291 a!3312)) mask!3809))))

(declare-fun lt!143290 () SeekEntryResult!2099)

(assert (=> b!290059 (= lt!143290 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143288 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290059 (= lt!143288 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290060 () Bool)

(declare-fun res!151577 () Bool)

(assert (=> b!290060 (=> (not res!151577) (not e!183577))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14625 (_ BitVec 32)) Bool)

(assert (=> b!290060 (= res!151577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290062 () Bool)

(declare-fun res!151580 () Bool)

(declare-fun e!183575 () Bool)

(assert (=> b!290062 (=> (not res!151580) (not e!183575))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290062 (= res!151580 (validKeyInArray!0 k!2524))))

(declare-fun b!290063 () Bool)

(declare-fun res!151576 () Bool)

(assert (=> b!290063 (=> (not res!151576) (not e!183575))))

(declare-fun arrayContainsKey!0 (array!14625 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290063 (= res!151576 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290064 () Bool)

(assert (=> b!290064 (= e!183575 e!183577)))

(declare-fun res!151579 () Bool)

(assert (=> b!290064 (=> (not res!151579) (not e!183577))))

(declare-fun lt!143291 () SeekEntryResult!2099)

(assert (=> b!290064 (= res!151579 (or (= lt!143291 (MissingZero!2099 i!1256)) (= lt!143291 (MissingVacant!2099 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14625 (_ BitVec 32)) SeekEntryResult!2099)

(assert (=> b!290064 (= lt!143291 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290061 () Bool)

(declare-fun res!151578 () Bool)

(assert (=> b!290061 (=> (not res!151578) (not e!183575))))

(assert (=> b!290061 (= res!151578 (and (= (size!7291 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7291 a!3312))))))

(declare-fun res!151581 () Bool)

(assert (=> start!28322 (=> (not res!151581) (not e!183575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28322 (= res!151581 (validMask!0 mask!3809))))

(assert (=> start!28322 e!183575))

(assert (=> start!28322 true))

(declare-fun array_inv!4893 (array!14625) Bool)

(assert (=> start!28322 (array_inv!4893 a!3312)))

(assert (= (and start!28322 res!151581) b!290061))

(assert (= (and b!290061 res!151578) b!290062))

(assert (= (and b!290062 res!151580) b!290063))

(assert (= (and b!290063 res!151576) b!290064))

(assert (= (and b!290064 res!151579) b!290060))

(assert (= (and b!290060 res!151577) b!290059))

(declare-fun m!304205 () Bool)

(assert (=> b!290064 m!304205))

(declare-fun m!304207 () Bool)

(assert (=> b!290063 m!304207))

(declare-fun m!304209 () Bool)

(assert (=> b!290059 m!304209))

(declare-fun m!304211 () Bool)

(assert (=> b!290059 m!304211))

(declare-fun m!304213 () Bool)

(assert (=> b!290059 m!304213))

(declare-fun m!304215 () Bool)

(assert (=> b!290059 m!304215))

(declare-fun m!304217 () Bool)

(assert (=> b!290062 m!304217))

(declare-fun m!304219 () Bool)

(assert (=> b!290060 m!304219))

(declare-fun m!304221 () Bool)

(assert (=> start!28322 m!304221))

(declare-fun m!304223 () Bool)

(assert (=> start!28322 m!304223))

(push 1)

(assert (not b!290062))

(assert (not b!290063))

