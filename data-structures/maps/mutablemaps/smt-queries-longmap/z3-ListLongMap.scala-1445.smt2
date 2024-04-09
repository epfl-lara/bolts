; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27882 () Bool)

(assert start!27882)

(declare-fun b!286585 () Bool)

(declare-fun res!148705 () Bool)

(declare-fun e!181581 () Bool)

(assert (=> b!286585 (=> (not res!148705) (not e!181581))))

(declare-datatypes ((array!14359 0))(
  ( (array!14360 (arr!6812 (Array (_ BitVec 32) (_ BitVec 64))) (size!7164 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14359)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286585 (= res!148705 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286586 () Bool)

(declare-fun res!148706 () Bool)

(declare-fun e!181580 () Bool)

(assert (=> b!286586 (=> (not res!148706) (not e!181580))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14359 (_ BitVec 32)) Bool)

(assert (=> b!286586 (= res!148706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286587 () Bool)

(assert (=> b!286587 (= e!181581 e!181580)))

(declare-fun res!148707 () Bool)

(assert (=> b!286587 (=> (not res!148707) (not e!181580))))

(declare-datatypes ((SeekEntryResult!1972 0))(
  ( (MissingZero!1972 (index!10058 (_ BitVec 32))) (Found!1972 (index!10059 (_ BitVec 32))) (Intermediate!1972 (undefined!2784 Bool) (index!10060 (_ BitVec 32)) (x!28244 (_ BitVec 32))) (Undefined!1972) (MissingVacant!1972 (index!10061 (_ BitVec 32))) )
))
(declare-fun lt!141191 () SeekEntryResult!1972)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286587 (= res!148707 (or (= lt!141191 (MissingZero!1972 i!1256)) (= lt!141191 (MissingVacant!1972 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14359 (_ BitVec 32)) SeekEntryResult!1972)

(assert (=> b!286587 (= lt!141191 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!286588 () Bool)

(assert (=> b!286588 (= e!181580 false)))

(declare-fun lt!141190 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286588 (= lt!141190 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!148704 () Bool)

(assert (=> start!27882 (=> (not res!148704) (not e!181581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27882 (= res!148704 (validMask!0 mask!3809))))

(assert (=> start!27882 e!181581))

(assert (=> start!27882 true))

(declare-fun array_inv!4766 (array!14359) Bool)

(assert (=> start!27882 (array_inv!4766 a!3312)))

(declare-fun b!286589 () Bool)

(declare-fun res!148703 () Bool)

(assert (=> b!286589 (=> (not res!148703) (not e!181581))))

(assert (=> b!286589 (= res!148703 (and (= (size!7164 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7164 a!3312))))))

(declare-fun b!286590 () Bool)

(declare-fun res!148702 () Bool)

(assert (=> b!286590 (=> (not res!148702) (not e!181581))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286590 (= res!148702 (validKeyInArray!0 k0!2524))))

(assert (= (and start!27882 res!148704) b!286589))

(assert (= (and b!286589 res!148703) b!286590))

(assert (= (and b!286590 res!148702) b!286585))

(assert (= (and b!286585 res!148705) b!286587))

(assert (= (and b!286587 res!148707) b!286586))

(assert (= (and b!286586 res!148706) b!286588))

(declare-fun m!301257 () Bool)

(assert (=> b!286590 m!301257))

(declare-fun m!301259 () Bool)

(assert (=> b!286588 m!301259))

(declare-fun m!301261 () Bool)

(assert (=> b!286585 m!301261))

(declare-fun m!301263 () Bool)

(assert (=> b!286586 m!301263))

(declare-fun m!301265 () Bool)

(assert (=> start!27882 m!301265))

(declare-fun m!301267 () Bool)

(assert (=> start!27882 m!301267))

(declare-fun m!301269 () Bool)

(assert (=> b!286587 m!301269))

(check-sat (not b!286586) (not start!27882) (not b!286590) (not b!286587) (not b!286585) (not b!286588))
(check-sat)
