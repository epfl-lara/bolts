; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28096 () Bool)

(assert start!28096)

(declare-fun b!287755 () Bool)

(declare-fun res!149558 () Bool)

(declare-fun e!182229 () Bool)

(assert (=> b!287755 (=> (not res!149558) (not e!182229))))

(declare-datatypes ((array!14444 0))(
  ( (array!14445 (arr!6850 (Array (_ BitVec 32) (_ BitVec 64))) (size!7202 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14444)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287755 (= res!149558 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287756 () Bool)

(declare-fun e!182228 () Bool)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!287756 (= e!182228 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!141702 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2010 0))(
  ( (MissingZero!2010 (index!10210 (_ BitVec 32))) (Found!2010 (index!10211 (_ BitVec 32))) (Intermediate!2010 (undefined!2822 Bool) (index!10212 (_ BitVec 32)) (x!28401 (_ BitVec 32))) (Undefined!2010) (MissingVacant!2010 (index!10213 (_ BitVec 32))) )
))
(declare-fun lt!141704 () SeekEntryResult!2010)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14444 (_ BitVec 32)) SeekEntryResult!2010)

(assert (=> b!287756 (= lt!141704 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141702 k!2524 (array!14445 (store (arr!6850 a!3312) i!1256 k!2524) (size!7202 a!3312)) mask!3809))))

(declare-fun lt!141701 () SeekEntryResult!2010)

(assert (=> b!287756 (= lt!141701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141702 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287756 (= lt!141702 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!149557 () Bool)

(assert (=> start!28096 (=> (not res!149557) (not e!182229))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28096 (= res!149557 (validMask!0 mask!3809))))

(assert (=> start!28096 e!182229))

(assert (=> start!28096 true))

(declare-fun array_inv!4804 (array!14444) Bool)

(assert (=> start!28096 (array_inv!4804 a!3312)))

(declare-fun b!287757 () Bool)

(declare-fun res!149562 () Bool)

(assert (=> b!287757 (=> (not res!149562) (not e!182228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14444 (_ BitVec 32)) Bool)

(assert (=> b!287757 (= res!149562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287758 () Bool)

(declare-fun res!149561 () Bool)

(assert (=> b!287758 (=> (not res!149561) (not e!182229))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287758 (= res!149561 (validKeyInArray!0 k!2524))))

(declare-fun b!287759 () Bool)

(assert (=> b!287759 (= e!182229 e!182228)))

(declare-fun res!149560 () Bool)

(assert (=> b!287759 (=> (not res!149560) (not e!182228))))

(declare-fun lt!141703 () SeekEntryResult!2010)

(assert (=> b!287759 (= res!149560 (or (= lt!141703 (MissingZero!2010 i!1256)) (= lt!141703 (MissingVacant!2010 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14444 (_ BitVec 32)) SeekEntryResult!2010)

(assert (=> b!287759 (= lt!141703 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!287760 () Bool)

(declare-fun res!149559 () Bool)

(assert (=> b!287760 (=> (not res!149559) (not e!182229))))

(assert (=> b!287760 (= res!149559 (and (= (size!7202 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7202 a!3312))))))

(assert (= (and start!28096 res!149557) b!287760))

(assert (= (and b!287760 res!149559) b!287758))

(assert (= (and b!287758 res!149561) b!287755))

(assert (= (and b!287755 res!149558) b!287759))

(assert (= (and b!287759 res!149560) b!287757))

(assert (= (and b!287757 res!149562) b!287756))

(declare-fun m!302131 () Bool)

(assert (=> b!287756 m!302131))

(declare-fun m!302133 () Bool)

(assert (=> b!287756 m!302133))

(declare-fun m!302135 () Bool)

(assert (=> b!287756 m!302135))

(declare-fun m!302137 () Bool)

(assert (=> b!287756 m!302137))

(declare-fun m!302139 () Bool)

(assert (=> b!287758 m!302139))

(declare-fun m!302141 () Bool)

(assert (=> b!287759 m!302141))

(declare-fun m!302143 () Bool)

(assert (=> b!287757 m!302143))

(declare-fun m!302145 () Bool)

(assert (=> start!28096 m!302145))

(declare-fun m!302147 () Bool)

(assert (=> start!28096 m!302147))

(declare-fun m!302149 () Bool)

(assert (=> b!287755 m!302149))

(push 1)

