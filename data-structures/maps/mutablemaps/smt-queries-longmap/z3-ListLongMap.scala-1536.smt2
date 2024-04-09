; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29150 () Bool)

(assert start!29150)

(declare-fun b!295582 () Bool)

(declare-fun res!155508 () Bool)

(declare-fun e!186839 () Bool)

(assert (=> b!295582 (=> (not res!155508) (not e!186839))))

(declare-datatypes ((array!14950 0))(
  ( (array!14951 (arr!7085 (Array (_ BitVec 32) (_ BitVec 64))) (size!7437 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14950)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14950 (_ BitVec 32)) Bool)

(assert (=> b!295582 (= res!155508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295583 () Bool)

(declare-fun e!186836 () Bool)

(assert (=> b!295583 (= e!186836 e!186839)))

(declare-fun res!155507 () Bool)

(assert (=> b!295583 (=> (not res!155507) (not e!186839))))

(declare-datatypes ((SeekEntryResult!2245 0))(
  ( (MissingZero!2245 (index!11150 (_ BitVec 32))) (Found!2245 (index!11151 (_ BitVec 32))) (Intermediate!2245 (undefined!3057 Bool) (index!11152 (_ BitVec 32)) (x!29334 (_ BitVec 32))) (Undefined!2245) (MissingVacant!2245 (index!11153 (_ BitVec 32))) )
))
(declare-fun lt!146668 () SeekEntryResult!2245)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!146665 () Bool)

(assert (=> b!295583 (= res!155507 (or lt!146665 (= lt!146668 (MissingVacant!2245 i!1256))))))

(assert (=> b!295583 (= lt!146665 (= lt!146668 (MissingZero!2245 i!1256)))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14950 (_ BitVec 32)) SeekEntryResult!2245)

(assert (=> b!295583 (= lt!146668 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!295584 () Bool)

(declare-fun e!186838 () Bool)

(assert (=> b!295584 (= e!186838 (not true))))

(declare-fun lt!146666 () SeekEntryResult!2245)

(assert (=> b!295584 (and (= (select (arr!7085 a!3312) (index!11152 lt!146666)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11152 lt!146666) i!1256))))

(declare-fun b!295585 () Bool)

(declare-fun res!155511 () Bool)

(assert (=> b!295585 (=> (not res!155511) (not e!186836))))

(declare-fun arrayContainsKey!0 (array!14950 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295585 (= res!155511 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun res!155504 () Bool)

(assert (=> start!29150 (=> (not res!155504) (not e!186836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29150 (= res!155504 (validMask!0 mask!3809))))

(assert (=> start!29150 e!186836))

(assert (=> start!29150 true))

(declare-fun array_inv!5039 (array!14950) Bool)

(assert (=> start!29150 (array_inv!5039 a!3312)))

(declare-fun b!295586 () Bool)

(declare-fun e!186835 () Bool)

(assert (=> b!295586 (= e!186839 e!186835)))

(declare-fun res!155510 () Bool)

(assert (=> b!295586 (=> (not res!155510) (not e!186835))))

(assert (=> b!295586 (= res!155510 lt!146665)))

(declare-fun lt!146667 () (_ BitVec 32))

(declare-fun lt!146664 () SeekEntryResult!2245)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14950 (_ BitVec 32)) SeekEntryResult!2245)

(assert (=> b!295586 (= lt!146664 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146667 k0!2524 (array!14951 (store (arr!7085 a!3312) i!1256 k0!2524) (size!7437 a!3312)) mask!3809))))

(assert (=> b!295586 (= lt!146666 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146667 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295586 (= lt!146667 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!295587 () Bool)

(assert (=> b!295587 (= e!186835 e!186838)))

(declare-fun res!155506 () Bool)

(assert (=> b!295587 (=> (not res!155506) (not e!186838))))

(declare-fun lt!146669 () Bool)

(assert (=> b!295587 (= res!155506 (and (or lt!146669 (not (undefined!3057 lt!146666))) (or lt!146669 (not (= (select (arr!7085 a!3312) (index!11152 lt!146666)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146669 (not (= (select (arr!7085 a!3312) (index!11152 lt!146666)) k0!2524))) (not lt!146669)))))

(get-info :version)

(assert (=> b!295587 (= lt!146669 (not ((_ is Intermediate!2245) lt!146666)))))

(declare-fun b!295588 () Bool)

(declare-fun res!155509 () Bool)

(assert (=> b!295588 (=> (not res!155509) (not e!186836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295588 (= res!155509 (validKeyInArray!0 k0!2524))))

(declare-fun b!295589 () Bool)

(declare-fun res!155505 () Bool)

(assert (=> b!295589 (=> (not res!155505) (not e!186836))))

(assert (=> b!295589 (= res!155505 (and (= (size!7437 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7437 a!3312))))))

(assert (= (and start!29150 res!155504) b!295589))

(assert (= (and b!295589 res!155505) b!295588))

(assert (= (and b!295588 res!155509) b!295585))

(assert (= (and b!295585 res!155511) b!295583))

(assert (= (and b!295583 res!155507) b!295582))

(assert (= (and b!295582 res!155508) b!295586))

(assert (= (and b!295586 res!155510) b!295587))

(assert (= (and b!295587 res!155506) b!295584))

(declare-fun m!308703 () Bool)

(assert (=> b!295587 m!308703))

(declare-fun m!308705 () Bool)

(assert (=> b!295585 m!308705))

(declare-fun m!308707 () Bool)

(assert (=> b!295582 m!308707))

(declare-fun m!308709 () Bool)

(assert (=> b!295583 m!308709))

(declare-fun m!308711 () Bool)

(assert (=> start!29150 m!308711))

(declare-fun m!308713 () Bool)

(assert (=> start!29150 m!308713))

(declare-fun m!308715 () Bool)

(assert (=> b!295586 m!308715))

(declare-fun m!308717 () Bool)

(assert (=> b!295586 m!308717))

(declare-fun m!308719 () Bool)

(assert (=> b!295586 m!308719))

(declare-fun m!308721 () Bool)

(assert (=> b!295586 m!308721))

(assert (=> b!295584 m!308703))

(declare-fun m!308723 () Bool)

(assert (=> b!295588 m!308723))

(check-sat (not b!295582) (not b!295585) (not b!295586) (not start!29150) (not b!295583) (not b!295588))
(check-sat)
