; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28290 () Bool)

(assert start!28290)

(declare-fun b!289771 () Bool)

(declare-fun e!183432 () Bool)

(assert (=> b!289771 (= e!183432 false)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14593 0))(
  ( (array!14594 (arr!6923 (Array (_ BitVec 32) (_ BitVec 64))) (size!7275 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14593)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2083 0))(
  ( (MissingZero!2083 (index!10502 (_ BitVec 32))) (Found!2083 (index!10503 (_ BitVec 32))) (Intermediate!2083 (undefined!2895 Bool) (index!10504 (_ BitVec 32)) (x!28672 (_ BitVec 32))) (Undefined!2083) (MissingVacant!2083 (index!10505 (_ BitVec 32))) )
))
(declare-fun lt!143089 () SeekEntryResult!2083)

(declare-fun lt!143090 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14593 (_ BitVec 32)) SeekEntryResult!2083)

(assert (=> b!289771 (= lt!143089 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143090 k0!2524 (array!14594 (store (arr!6923 a!3312) i!1256 k0!2524) (size!7275 a!3312)) mask!3809))))

(declare-fun lt!143087 () SeekEntryResult!2083)

(assert (=> b!289771 (= lt!143087 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143090 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289771 (= lt!143090 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!289772 () Bool)

(declare-fun res!151289 () Bool)

(assert (=> b!289772 (=> (not res!151289) (not e!183432))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14593 (_ BitVec 32)) Bool)

(assert (=> b!289772 (= res!151289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289773 () Bool)

(declare-fun e!183433 () Bool)

(assert (=> b!289773 (= e!183433 e!183432)))

(declare-fun res!151290 () Bool)

(assert (=> b!289773 (=> (not res!151290) (not e!183432))))

(declare-fun lt!143088 () SeekEntryResult!2083)

(assert (=> b!289773 (= res!151290 (or (= lt!143088 (MissingZero!2083 i!1256)) (= lt!143088 (MissingVacant!2083 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14593 (_ BitVec 32)) SeekEntryResult!2083)

(assert (=> b!289773 (= lt!143088 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!151288 () Bool)

(assert (=> start!28290 (=> (not res!151288) (not e!183433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28290 (= res!151288 (validMask!0 mask!3809))))

(assert (=> start!28290 e!183433))

(assert (=> start!28290 true))

(declare-fun array_inv!4877 (array!14593) Bool)

(assert (=> start!28290 (array_inv!4877 a!3312)))

(declare-fun b!289774 () Bool)

(declare-fun res!151293 () Bool)

(assert (=> b!289774 (=> (not res!151293) (not e!183433))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289774 (= res!151293 (validKeyInArray!0 k0!2524))))

(declare-fun b!289775 () Bool)

(declare-fun res!151292 () Bool)

(assert (=> b!289775 (=> (not res!151292) (not e!183433))))

(assert (=> b!289775 (= res!151292 (and (= (size!7275 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7275 a!3312))))))

(declare-fun b!289776 () Bool)

(declare-fun res!151291 () Bool)

(assert (=> b!289776 (=> (not res!151291) (not e!183433))))

(declare-fun arrayContainsKey!0 (array!14593 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289776 (= res!151291 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28290 res!151288) b!289775))

(assert (= (and b!289775 res!151292) b!289774))

(assert (= (and b!289774 res!151293) b!289776))

(assert (= (and b!289776 res!151291) b!289773))

(assert (= (and b!289773 res!151290) b!289772))

(assert (= (and b!289772 res!151289) b!289771))

(declare-fun m!303885 () Bool)

(assert (=> b!289776 m!303885))

(declare-fun m!303887 () Bool)

(assert (=> b!289774 m!303887))

(declare-fun m!303889 () Bool)

(assert (=> b!289771 m!303889))

(declare-fun m!303891 () Bool)

(assert (=> b!289771 m!303891))

(declare-fun m!303893 () Bool)

(assert (=> b!289771 m!303893))

(declare-fun m!303895 () Bool)

(assert (=> b!289771 m!303895))

(declare-fun m!303897 () Bool)

(assert (=> b!289773 m!303897))

(declare-fun m!303899 () Bool)

(assert (=> start!28290 m!303899))

(declare-fun m!303901 () Bool)

(assert (=> start!28290 m!303901))

(declare-fun m!303903 () Bool)

(assert (=> b!289772 m!303903))

(check-sat (not b!289772) (not b!289774) (not b!289773) (not start!28290) (not b!289776) (not b!289771))
(check-sat)
