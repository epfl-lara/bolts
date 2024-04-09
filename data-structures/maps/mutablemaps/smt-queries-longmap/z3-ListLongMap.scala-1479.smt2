; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28272 () Bool)

(assert start!28272)

(declare-datatypes ((SeekEntryResult!2074 0))(
  ( (MissingZero!2074 (index!10466 (_ BitVec 32))) (Found!2074 (index!10467 (_ BitVec 32))) (Intermediate!2074 (undefined!2886 Bool) (index!10468 (_ BitVec 32)) (x!28639 (_ BitVec 32))) (Undefined!2074) (MissingVacant!2074 (index!10469 (_ BitVec 32))) )
))
(declare-fun lt!142913 () SeekEntryResult!2074)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!142914 () SeekEntryResult!2074)

(declare-fun b!289499 () Bool)

(declare-datatypes ((array!14575 0))(
  ( (array!14576 (arr!6914 (Array (_ BitVec 32) (_ BitVec 64))) (size!7266 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14575)

(declare-fun k0!2524 () (_ BitVec 64))

(assert (=> b!289499 (and (= lt!142914 lt!142913) (= (select (store (arr!6914 a!3312) i!1256 k0!2524) (index!10468 lt!142913)) k0!2524))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((Unit!9093 0))(
  ( (Unit!9094) )
))
(declare-fun lt!142915 () Unit!9093)

(declare-fun lt!142918 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!14575 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9093)

(assert (=> b!289499 (= lt!142915 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!142918 (index!10468 lt!142913) (x!28639 lt!142913) mask!3809))))

(assert (=> b!289499 (and (= (select (arr!6914 a!3312) (index!10468 lt!142913)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10468 lt!142913) i!1256))))

(declare-fun e!183284 () Unit!9093)

(declare-fun Unit!9095 () Unit!9093)

(assert (=> b!289499 (= e!183284 Unit!9095)))

(declare-fun b!289500 () Bool)

(declare-fun res!151110 () Bool)

(declare-fun e!183286 () Bool)

(assert (=> b!289500 (=> (not res!151110) (not e!183286))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289500 (= res!151110 (validKeyInArray!0 k0!2524))))

(declare-fun b!289501 () Bool)

(declare-fun res!151104 () Bool)

(assert (=> b!289501 (=> (not res!151104) (not e!183286))))

(declare-fun arrayContainsKey!0 (array!14575 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289501 (= res!151104 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289502 () Bool)

(declare-fun e!183287 () Unit!9093)

(assert (=> b!289502 (= e!183287 e!183284)))

(declare-fun c!46759 () Bool)

(get-info :version)

(assert (=> b!289502 (= c!46759 ((_ is Intermediate!2074) lt!142913))))

(declare-fun b!289503 () Bool)

(declare-fun res!151105 () Bool)

(declare-fun e!183285 () Bool)

(assert (=> b!289503 (=> (not res!151105) (not e!183285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14575 (_ BitVec 32)) Bool)

(assert (=> b!289503 (= res!151105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289504 () Bool)

(assert (=> b!289504 false))

(declare-fun Unit!9096 () Unit!9093)

(assert (=> b!289504 (= e!183284 Unit!9096)))

(declare-fun b!289505 () Bool)

(declare-fun e!183288 () Bool)

(assert (=> b!289505 (= e!183285 e!183288)))

(declare-fun res!151106 () Bool)

(assert (=> b!289505 (=> (not res!151106) (not e!183288))))

(declare-fun lt!142919 () Bool)

(assert (=> b!289505 (= res!151106 lt!142919)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14575 (_ BitVec 32)) SeekEntryResult!2074)

(assert (=> b!289505 (= lt!142914 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142918 k0!2524 (array!14576 (store (arr!6914 a!3312) i!1256 k0!2524) (size!7266 a!3312)) mask!3809))))

(assert (=> b!289505 (= lt!142913 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142918 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289505 (= lt!142918 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!151107 () Bool)

(assert (=> start!28272 (=> (not res!151107) (not e!183286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28272 (= res!151107 (validMask!0 mask!3809))))

(assert (=> start!28272 e!183286))

(assert (=> start!28272 true))

(declare-fun array_inv!4868 (array!14575) Bool)

(assert (=> start!28272 (array_inv!4868 a!3312)))

(declare-fun b!289506 () Bool)

(declare-fun res!151109 () Bool)

(assert (=> b!289506 (=> (not res!151109) (not e!183286))))

(assert (=> b!289506 (= res!151109 (and (= (size!7266 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7266 a!3312))))))

(declare-fun b!289507 () Bool)

(declare-fun Unit!9097 () Unit!9093)

(assert (=> b!289507 (= e!183287 Unit!9097)))

(assert (=> b!289507 false))

(declare-fun b!289508 () Bool)

(assert (=> b!289508 (= e!183286 e!183285)))

(declare-fun res!151108 () Bool)

(assert (=> b!289508 (=> (not res!151108) (not e!183285))))

(declare-fun lt!142916 () SeekEntryResult!2074)

(assert (=> b!289508 (= res!151108 (or lt!142919 (= lt!142916 (MissingVacant!2074 i!1256))))))

(assert (=> b!289508 (= lt!142919 (= lt!142916 (MissingZero!2074 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14575 (_ BitVec 32)) SeekEntryResult!2074)

(assert (=> b!289508 (= lt!142916 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!289509 () Bool)

(assert (=> b!289509 (= e!183288 (and (= lt!142914 lt!142913) (bvslt mask!3809 #b00000000000000000000000000000000)))))

(declare-fun lt!142917 () Unit!9093)

(assert (=> b!289509 (= lt!142917 e!183287)))

(declare-fun c!46760 () Bool)

(assert (=> b!289509 (= c!46760 (or (and ((_ is Intermediate!2074) lt!142913) (undefined!2886 lt!142913)) (and ((_ is Intermediate!2074) lt!142913) (= (select (arr!6914 a!3312) (index!10468 lt!142913)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and ((_ is Intermediate!2074) lt!142913) (= (select (arr!6914 a!3312) (index!10468 lt!142913)) k0!2524))))))

(assert (= (and start!28272 res!151107) b!289506))

(assert (= (and b!289506 res!151109) b!289500))

(assert (= (and b!289500 res!151110) b!289501))

(assert (= (and b!289501 res!151104) b!289508))

(assert (= (and b!289508 res!151108) b!289503))

(assert (= (and b!289503 res!151105) b!289505))

(assert (= (and b!289505 res!151106) b!289509))

(assert (= (and b!289509 c!46760) b!289507))

(assert (= (and b!289509 (not c!46760)) b!289502))

(assert (= (and b!289502 c!46759) b!289499))

(assert (= (and b!289502 (not c!46759)) b!289504))

(declare-fun m!303657 () Bool)

(assert (=> b!289503 m!303657))

(declare-fun m!303659 () Bool)

(assert (=> b!289509 m!303659))

(declare-fun m!303661 () Bool)

(assert (=> b!289505 m!303661))

(declare-fun m!303663 () Bool)

(assert (=> b!289505 m!303663))

(declare-fun m!303665 () Bool)

(assert (=> b!289505 m!303665))

(declare-fun m!303667 () Bool)

(assert (=> b!289505 m!303667))

(declare-fun m!303669 () Bool)

(assert (=> b!289508 m!303669))

(declare-fun m!303671 () Bool)

(assert (=> b!289500 m!303671))

(declare-fun m!303673 () Bool)

(assert (=> start!28272 m!303673))

(declare-fun m!303675 () Bool)

(assert (=> start!28272 m!303675))

(declare-fun m!303677 () Bool)

(assert (=> b!289501 m!303677))

(assert (=> b!289499 m!303661))

(declare-fun m!303679 () Bool)

(assert (=> b!289499 m!303679))

(declare-fun m!303681 () Bool)

(assert (=> b!289499 m!303681))

(assert (=> b!289499 m!303659))

(check-sat (not b!289505) (not b!289503) (not b!289499) (not b!289508) (not start!28272) (not b!289501) (not b!289500))
(check-sat)
