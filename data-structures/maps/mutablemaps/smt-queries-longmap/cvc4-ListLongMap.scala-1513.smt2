; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28622 () Bool)

(assert start!28622)

(declare-fun b!292489 () Bool)

(declare-fun res!153583 () Bool)

(declare-fun e!185052 () Bool)

(assert (=> b!292489 (=> (not res!153583) (not e!185052))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292489 (= res!153583 (validKeyInArray!0 k!2524))))

(declare-fun b!292490 () Bool)

(declare-fun e!185051 () Bool)

(assert (=> b!292490 (= e!185051 false)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2177 0))(
  ( (MissingZero!2177 (index!10878 (_ BitVec 32))) (Found!2177 (index!10879 (_ BitVec 32))) (Intermediate!2177 (undefined!2989 Bool) (index!10880 (_ BitVec 32)) (x!29032 (_ BitVec 32))) (Undefined!2177) (MissingVacant!2177 (index!10881 (_ BitVec 32))) )
))
(declare-fun lt!144928 () SeekEntryResult!2177)

(declare-fun lt!144927 () (_ BitVec 32))

(declare-datatypes ((array!14790 0))(
  ( (array!14791 (arr!7017 (Array (_ BitVec 32) (_ BitVec 64))) (size!7369 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14790)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14790 (_ BitVec 32)) SeekEntryResult!2177)

(assert (=> b!292490 (= lt!144928 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144927 k!2524 (array!14791 (store (arr!7017 a!3312) i!1256 k!2524) (size!7369 a!3312)) mask!3809))))

(declare-fun lt!144929 () SeekEntryResult!2177)

(assert (=> b!292490 (= lt!144929 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144927 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292490 (= lt!144927 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!153585 () Bool)

(assert (=> start!28622 (=> (not res!153585) (not e!185052))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28622 (= res!153585 (validMask!0 mask!3809))))

(assert (=> start!28622 e!185052))

(assert (=> start!28622 true))

(declare-fun array_inv!4971 (array!14790) Bool)

(assert (=> start!28622 (array_inv!4971 a!3312)))

(declare-fun b!292491 () Bool)

(declare-fun res!153588 () Bool)

(assert (=> b!292491 (=> (not res!153588) (not e!185052))))

(assert (=> b!292491 (= res!153588 (and (= (size!7369 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7369 a!3312))))))

(declare-fun b!292492 () Bool)

(assert (=> b!292492 (= e!185052 e!185051)))

(declare-fun res!153587 () Bool)

(assert (=> b!292492 (=> (not res!153587) (not e!185051))))

(declare-fun lt!144926 () SeekEntryResult!2177)

(assert (=> b!292492 (= res!153587 (or (= lt!144926 (MissingZero!2177 i!1256)) (= lt!144926 (MissingVacant!2177 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14790 (_ BitVec 32)) SeekEntryResult!2177)

(assert (=> b!292492 (= lt!144926 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292493 () Bool)

(declare-fun res!153586 () Bool)

(assert (=> b!292493 (=> (not res!153586) (not e!185052))))

(declare-fun arrayContainsKey!0 (array!14790 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292493 (= res!153586 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292494 () Bool)

(declare-fun res!153584 () Bool)

(assert (=> b!292494 (=> (not res!153584) (not e!185051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14790 (_ BitVec 32)) Bool)

(assert (=> b!292494 (= res!153584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28622 res!153585) b!292491))

(assert (= (and b!292491 res!153588) b!292489))

(assert (= (and b!292489 res!153583) b!292493))

(assert (= (and b!292493 res!153586) b!292492))

(assert (= (and b!292492 res!153587) b!292494))

(assert (= (and b!292494 res!153584) b!292490))

(declare-fun m!306275 () Bool)

(assert (=> start!28622 m!306275))

(declare-fun m!306277 () Bool)

(assert (=> start!28622 m!306277))

(declare-fun m!306279 () Bool)

(assert (=> b!292493 m!306279))

(declare-fun m!306281 () Bool)

(assert (=> b!292494 m!306281))

(declare-fun m!306283 () Bool)

(assert (=> b!292490 m!306283))

(declare-fun m!306285 () Bool)

(assert (=> b!292490 m!306285))

(declare-fun m!306287 () Bool)

(assert (=> b!292490 m!306287))

(declare-fun m!306289 () Bool)

(assert (=> b!292490 m!306289))

(declare-fun m!306291 () Bool)

(assert (=> b!292492 m!306291))

(declare-fun m!306293 () Bool)

(assert (=> b!292489 m!306293))

(push 1)

