; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28308 () Bool)

(assert start!28308)

(declare-fun b!289933 () Bool)

(declare-fun res!151455 () Bool)

(declare-fun e!183513 () Bool)

(assert (=> b!289933 (=> (not res!151455) (not e!183513))))

(declare-datatypes ((array!14611 0))(
  ( (array!14612 (arr!6932 (Array (_ BitVec 32) (_ BitVec 64))) (size!7284 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14611)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14611 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289933 (= res!151455 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289934 () Bool)

(declare-fun e!183512 () Bool)

(assert (=> b!289934 (= e!183512 false)))

(declare-fun lt!143206 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2092 0))(
  ( (MissingZero!2092 (index!10538 (_ BitVec 32))) (Found!2092 (index!10539 (_ BitVec 32))) (Intermediate!2092 (undefined!2904 Bool) (index!10540 (_ BitVec 32)) (x!28705 (_ BitVec 32))) (Undefined!2092) (MissingVacant!2092 (index!10541 (_ BitVec 32))) )
))
(declare-fun lt!143204 () SeekEntryResult!2092)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14611 (_ BitVec 32)) SeekEntryResult!2092)

(assert (=> b!289934 (= lt!143204 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143206 k0!2524 (array!14612 (store (arr!6932 a!3312) i!1256 k0!2524) (size!7284 a!3312)) mask!3809))))

(declare-fun lt!143205 () SeekEntryResult!2092)

(assert (=> b!289934 (= lt!143205 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143206 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289934 (= lt!143206 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!289935 () Bool)

(declare-fun res!151453 () Bool)

(assert (=> b!289935 (=> (not res!151453) (not e!183513))))

(assert (=> b!289935 (= res!151453 (and (= (size!7284 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7284 a!3312))))))

(declare-fun b!289936 () Bool)

(declare-fun res!151450 () Bool)

(assert (=> b!289936 (=> (not res!151450) (not e!183512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14611 (_ BitVec 32)) Bool)

(assert (=> b!289936 (= res!151450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!151451 () Bool)

(assert (=> start!28308 (=> (not res!151451) (not e!183513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28308 (= res!151451 (validMask!0 mask!3809))))

(assert (=> start!28308 e!183513))

(assert (=> start!28308 true))

(declare-fun array_inv!4886 (array!14611) Bool)

(assert (=> start!28308 (array_inv!4886 a!3312)))

(declare-fun b!289937 () Bool)

(declare-fun res!151452 () Bool)

(assert (=> b!289937 (=> (not res!151452) (not e!183513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289937 (= res!151452 (validKeyInArray!0 k0!2524))))

(declare-fun b!289938 () Bool)

(assert (=> b!289938 (= e!183513 e!183512)))

(declare-fun res!151454 () Bool)

(assert (=> b!289938 (=> (not res!151454) (not e!183512))))

(declare-fun lt!143207 () SeekEntryResult!2092)

(assert (=> b!289938 (= res!151454 (or (= lt!143207 (MissingZero!2092 i!1256)) (= lt!143207 (MissingVacant!2092 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14611 (_ BitVec 32)) SeekEntryResult!2092)

(assert (=> b!289938 (= lt!143207 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(assert (= (and start!28308 res!151451) b!289935))

(assert (= (and b!289935 res!151453) b!289937))

(assert (= (and b!289937 res!151452) b!289933))

(assert (= (and b!289933 res!151455) b!289938))

(assert (= (and b!289938 res!151454) b!289936))

(assert (= (and b!289936 res!151450) b!289934))

(declare-fun m!304065 () Bool)

(assert (=> b!289937 m!304065))

(declare-fun m!304067 () Bool)

(assert (=> start!28308 m!304067))

(declare-fun m!304069 () Bool)

(assert (=> start!28308 m!304069))

(declare-fun m!304071 () Bool)

(assert (=> b!289933 m!304071))

(declare-fun m!304073 () Bool)

(assert (=> b!289938 m!304073))

(declare-fun m!304075 () Bool)

(assert (=> b!289936 m!304075))

(declare-fun m!304077 () Bool)

(assert (=> b!289934 m!304077))

(declare-fun m!304079 () Bool)

(assert (=> b!289934 m!304079))

(declare-fun m!304081 () Bool)

(assert (=> b!289934 m!304081))

(declare-fun m!304083 () Bool)

(assert (=> b!289934 m!304083))

(check-sat (not b!289934) (not b!289938) (not b!289936) (not b!289937) (not b!289933) (not start!28308))
(check-sat)
