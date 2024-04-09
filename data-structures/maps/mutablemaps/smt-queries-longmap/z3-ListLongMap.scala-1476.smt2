; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28254 () Bool)

(assert start!28254)

(declare-fun b!289241 () Bool)

(declare-fun res!150903 () Bool)

(declare-fun e!183137 () Bool)

(assert (=> b!289241 (=> (not res!150903) (not e!183137))))

(declare-datatypes ((array!14557 0))(
  ( (array!14558 (arr!6905 (Array (_ BitVec 32) (_ BitVec 64))) (size!7257 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14557)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289241 (= res!150903 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289242 () Bool)

(declare-fun res!150909 () Bool)

(assert (=> b!289242 (=> (not res!150909) (not e!183137))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!289242 (= res!150909 (and (= (size!7257 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7257 a!3312))))))

(declare-fun res!150906 () Bool)

(assert (=> start!28254 (=> (not res!150906) (not e!183137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28254 (= res!150906 (validMask!0 mask!3809))))

(assert (=> start!28254 e!183137))

(assert (=> start!28254 true))

(declare-fun array_inv!4859 (array!14557) Bool)

(assert (=> start!28254 (array_inv!4859 a!3312)))

(declare-fun b!289243 () Bool)

(declare-fun e!183136 () Bool)

(declare-fun e!183139 () Bool)

(assert (=> b!289243 (= e!183136 e!183139)))

(declare-fun res!150902 () Bool)

(assert (=> b!289243 (=> (not res!150902) (not e!183139))))

(declare-datatypes ((SeekEntryResult!2065 0))(
  ( (MissingZero!2065 (index!10430 (_ BitVec 32))) (Found!2065 (index!10431 (_ BitVec 32))) (Intermediate!2065 (undefined!2877 Bool) (index!10432 (_ BitVec 32)) (x!28606 (_ BitVec 32))) (Undefined!2065) (MissingVacant!2065 (index!10433 (_ BitVec 32))) )
))
(declare-fun lt!142737 () SeekEntryResult!2065)

(declare-fun lt!142740 () Bool)

(assert (=> b!289243 (= res!150902 (and (or lt!142740 (not (undefined!2877 lt!142737))) (or lt!142740 (not (= (select (arr!6905 a!3312) (index!10432 lt!142737)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142740 (not (= (select (arr!6905 a!3312) (index!10432 lt!142737)) k0!2524))) (not lt!142740)))))

(get-info :version)

(assert (=> b!289243 (= lt!142740 (not ((_ is Intermediate!2065) lt!142737)))))

(declare-fun b!289244 () Bool)

(declare-fun res!150908 () Bool)

(declare-fun e!183138 () Bool)

(assert (=> b!289244 (=> (not res!150908) (not e!183138))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14557 (_ BitVec 32)) Bool)

(assert (=> b!289244 (= res!150908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289245 () Bool)

(assert (=> b!289245 (= e!183139 (not true))))

(assert (=> b!289245 (and (= (select (arr!6905 a!3312) (index!10432 lt!142737)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10432 lt!142737) i!1256))))

(declare-fun b!289246 () Bool)

(declare-fun res!150907 () Bool)

(assert (=> b!289246 (=> (not res!150907) (not e!183137))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289246 (= res!150907 (validKeyInArray!0 k0!2524))))

(declare-fun b!289247 () Bool)

(assert (=> b!289247 (= e!183137 e!183138)))

(declare-fun res!150905 () Bool)

(assert (=> b!289247 (=> (not res!150905) (not e!183138))))

(declare-fun lt!142739 () SeekEntryResult!2065)

(declare-fun lt!142741 () Bool)

(assert (=> b!289247 (= res!150905 (or lt!142741 (= lt!142739 (MissingVacant!2065 i!1256))))))

(assert (=> b!289247 (= lt!142741 (= lt!142739 (MissingZero!2065 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14557 (_ BitVec 32)) SeekEntryResult!2065)

(assert (=> b!289247 (= lt!142739 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!289248 () Bool)

(assert (=> b!289248 (= e!183138 e!183136)))

(declare-fun res!150904 () Bool)

(assert (=> b!289248 (=> (not res!150904) (not e!183136))))

(assert (=> b!289248 (= res!150904 lt!142741)))

(declare-fun lt!142742 () (_ BitVec 32))

(declare-fun lt!142738 () SeekEntryResult!2065)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14557 (_ BitVec 32)) SeekEntryResult!2065)

(assert (=> b!289248 (= lt!142738 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142742 k0!2524 (array!14558 (store (arr!6905 a!3312) i!1256 k0!2524) (size!7257 a!3312)) mask!3809))))

(assert (=> b!289248 (= lt!142737 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142742 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289248 (= lt!142742 (toIndex!0 k0!2524 mask!3809))))

(assert (= (and start!28254 res!150906) b!289242))

(assert (= (and b!289242 res!150909) b!289246))

(assert (= (and b!289246 res!150907) b!289241))

(assert (= (and b!289241 res!150903) b!289247))

(assert (= (and b!289247 res!150905) b!289244))

(assert (= (and b!289244 res!150908) b!289248))

(assert (= (and b!289248 res!150904) b!289243))

(assert (= (and b!289243 res!150902) b!289245))

(declare-fun m!303443 () Bool)

(assert (=> b!289247 m!303443))

(declare-fun m!303445 () Bool)

(assert (=> start!28254 m!303445))

(declare-fun m!303447 () Bool)

(assert (=> start!28254 m!303447))

(declare-fun m!303449 () Bool)

(assert (=> b!289241 m!303449))

(declare-fun m!303451 () Bool)

(assert (=> b!289244 m!303451))

(declare-fun m!303453 () Bool)

(assert (=> b!289243 m!303453))

(declare-fun m!303455 () Bool)

(assert (=> b!289246 m!303455))

(declare-fun m!303457 () Bool)

(assert (=> b!289248 m!303457))

(declare-fun m!303459 () Bool)

(assert (=> b!289248 m!303459))

(declare-fun m!303461 () Bool)

(assert (=> b!289248 m!303461))

(declare-fun m!303463 () Bool)

(assert (=> b!289248 m!303463))

(assert (=> b!289245 m!303453))

(check-sat (not start!28254) (not b!289241) (not b!289246) (not b!289247) (not b!289248) (not b!289244))
(check-sat)
