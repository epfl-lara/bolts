; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28196 () Bool)

(assert start!28196)

(declare-fun b!288545 () Bool)

(declare-fun e!182700 () Bool)

(declare-fun e!182702 () Bool)

(assert (=> b!288545 (= e!182700 e!182702)))

(declare-fun res!150212 () Bool)

(assert (=> b!288545 (=> (not res!150212) (not e!182702))))

(declare-fun lt!142216 () Bool)

(assert (=> b!288545 (= res!150212 lt!142216)))

(declare-datatypes ((SeekEntryResult!2036 0))(
  ( (MissingZero!2036 (index!10314 (_ BitVec 32))) (Found!2036 (index!10315 (_ BitVec 32))) (Intermediate!2036 (undefined!2848 Bool) (index!10316 (_ BitVec 32)) (x!28497 (_ BitVec 32))) (Undefined!2036) (MissingVacant!2036 (index!10317 (_ BitVec 32))) )
))
(declare-fun lt!142219 () SeekEntryResult!2036)

(declare-fun lt!142220 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14499 0))(
  ( (array!14500 (arr!6876 (Array (_ BitVec 32) (_ BitVec 64))) (size!7228 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14499)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14499 (_ BitVec 32)) SeekEntryResult!2036)

(assert (=> b!288545 (= lt!142219 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142220 k!2524 (array!14500 (store (arr!6876 a!3312) i!1256 k!2524) (size!7228 a!3312)) mask!3809))))

(declare-fun lt!142217 () SeekEntryResult!2036)

(assert (=> b!288545 (= lt!142217 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142220 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288545 (= lt!142220 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!288546 () Bool)

(declare-fun e!182703 () Bool)

(assert (=> b!288546 (= e!182703 e!182700)))

(declare-fun res!150213 () Bool)

(assert (=> b!288546 (=> (not res!150213) (not e!182700))))

(declare-fun lt!142218 () SeekEntryResult!2036)

(assert (=> b!288546 (= res!150213 (or lt!142216 (= lt!142218 (MissingVacant!2036 i!1256))))))

(assert (=> b!288546 (= lt!142216 (= lt!142218 (MissingZero!2036 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14499 (_ BitVec 32)) SeekEntryResult!2036)

(assert (=> b!288546 (= lt!142218 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!288547 () Bool)

(declare-fun res!150209 () Bool)

(assert (=> b!288547 (=> (not res!150209) (not e!182703))))

(declare-fun arrayContainsKey!0 (array!14499 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288547 (= res!150209 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288548 () Bool)

(declare-fun res!150211 () Bool)

(assert (=> b!288548 (=> (not res!150211) (not e!182703))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288548 (= res!150211 (validKeyInArray!0 k!2524))))

(declare-fun b!288549 () Bool)

(declare-fun res!150207 () Bool)

(assert (=> b!288549 (=> (not res!150207) (not e!182700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14499 (_ BitVec 32)) Bool)

(assert (=> b!288549 (= res!150207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288550 () Bool)

(declare-fun res!150208 () Bool)

(assert (=> b!288550 (=> (not res!150208) (not e!182703))))

(assert (=> b!288550 (= res!150208 (and (= (size!7228 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7228 a!3312))))))

(declare-fun b!288551 () Bool)

(declare-fun e!182704 () Bool)

(assert (=> b!288551 (= e!182704 (not true))))

(assert (=> b!288551 (and (= (select (arr!6876 a!3312) (index!10316 lt!142217)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10316 lt!142217) i!1256))))

(declare-fun res!150210 () Bool)

(assert (=> start!28196 (=> (not res!150210) (not e!182703))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28196 (= res!150210 (validMask!0 mask!3809))))

(assert (=> start!28196 e!182703))

(assert (=> start!28196 true))

(declare-fun array_inv!4830 (array!14499) Bool)

(assert (=> start!28196 (array_inv!4830 a!3312)))

(declare-fun b!288552 () Bool)

(assert (=> b!288552 (= e!182702 e!182704)))

(declare-fun res!150206 () Bool)

(assert (=> b!288552 (=> (not res!150206) (not e!182704))))

(declare-fun lt!142215 () Bool)

(assert (=> b!288552 (= res!150206 (and (or lt!142215 (not (undefined!2848 lt!142217))) (or lt!142215 (not (= (select (arr!6876 a!3312) (index!10316 lt!142217)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142215 (not (= (select (arr!6876 a!3312) (index!10316 lt!142217)) k!2524))) (not lt!142215)))))

(assert (=> b!288552 (= lt!142215 (not (is-Intermediate!2036 lt!142217)))))

(assert (= (and start!28196 res!150210) b!288550))

(assert (= (and b!288550 res!150208) b!288548))

(assert (= (and b!288548 res!150211) b!288547))

(assert (= (and b!288547 res!150209) b!288546))

(assert (= (and b!288546 res!150213) b!288549))

(assert (= (and b!288549 res!150207) b!288545))

(assert (= (and b!288545 res!150212) b!288552))

(assert (= (and b!288552 res!150206) b!288551))

(declare-fun m!302805 () Bool)

(assert (=> b!288552 m!302805))

(declare-fun m!302807 () Bool)

(assert (=> b!288547 m!302807))

(declare-fun m!302809 () Bool)

(assert (=> b!288549 m!302809))

(declare-fun m!302811 () Bool)

(assert (=> start!28196 m!302811))

(declare-fun m!302813 () Bool)

(assert (=> start!28196 m!302813))

(assert (=> b!288551 m!302805))

(declare-fun m!302815 () Bool)

(assert (=> b!288548 m!302815))

(declare-fun m!302817 () Bool)

(assert (=> b!288546 m!302817))

(declare-fun m!302819 () Bool)

(assert (=> b!288545 m!302819))

(declare-fun m!302821 () Bool)

(assert (=> b!288545 m!302821))

(declare-fun m!302823 () Bool)

(assert (=> b!288545 m!302823))

(declare-fun m!302825 () Bool)

(assert (=> b!288545 m!302825))

(push 1)

(assert (not b!288545))

(assert (not b!288547))

(assert (not b!288548))

(assert (not b!288546))

(assert (not b!288549))

(assert (not start!28196))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

