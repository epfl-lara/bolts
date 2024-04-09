; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28518 () Bool)

(assert start!28518)

(declare-fun b!291653 () Bool)

(declare-fun e!184555 () Bool)

(declare-fun e!184553 () Bool)

(assert (=> b!291653 (= e!184555 e!184553)))

(declare-fun res!152895 () Bool)

(assert (=> b!291653 (=> (not res!152895) (not e!184553))))

(declare-datatypes ((SeekEntryResult!2149 0))(
  ( (MissingZero!2149 (index!10766 (_ BitVec 32))) (Found!2149 (index!10767 (_ BitVec 32))) (Intermediate!2149 (undefined!2961 Bool) (index!10768 (_ BitVec 32)) (x!28926 (_ BitVec 32))) (Undefined!2149) (MissingVacant!2149 (index!10769 (_ BitVec 32))) )
))
(declare-fun lt!144342 () SeekEntryResult!2149)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!144343 () Bool)

(assert (=> b!291653 (= res!152895 (and (not lt!144343) (= lt!144342 (MissingVacant!2149 i!1256))))))

(declare-fun lt!144347 () (_ BitVec 32))

(declare-datatypes ((array!14731 0))(
  ( (array!14732 (arr!6989 (Array (_ BitVec 32) (_ BitVec 64))) (size!7341 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14731)

(declare-fun lt!144344 () SeekEntryResult!2149)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14731 (_ BitVec 32)) SeekEntryResult!2149)

(assert (=> b!291653 (= lt!144344 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144347 k0!2524 (array!14732 (store (arr!6989 a!3312) i!1256 k0!2524) (size!7341 a!3312)) mask!3809))))

(declare-fun lt!144345 () SeekEntryResult!2149)

(assert (=> b!291653 (= lt!144345 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144347 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291653 (= lt!144347 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!291654 () Bool)

(declare-fun res!152892 () Bool)

(declare-fun e!184551 () Bool)

(assert (=> b!291654 (=> (not res!152892) (not e!184551))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291654 (= res!152892 (validKeyInArray!0 k0!2524))))

(declare-fun b!291655 () Bool)

(declare-fun e!184554 () Bool)

(assert (=> b!291655 (= e!184553 e!184554)))

(declare-fun res!152891 () Bool)

(assert (=> b!291655 (=> (not res!152891) (not e!184554))))

(declare-fun lt!144346 () Bool)

(assert (=> b!291655 (= res!152891 (and (or lt!144346 (not (undefined!2961 lt!144345))) (not lt!144346) (= (select (arr!6989 a!3312) (index!10768 lt!144345)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!291655 (= lt!144346 (not ((_ is Intermediate!2149) lt!144345)))))

(declare-fun b!291656 () Bool)

(assert (=> b!291656 (= e!184554 (not true))))

(assert (=> b!291656 (= (index!10768 lt!144345) i!1256)))

(declare-fun b!291657 () Bool)

(declare-fun res!152894 () Bool)

(assert (=> b!291657 (=> (not res!152894) (not e!184555))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14731 (_ BitVec 32)) Bool)

(assert (=> b!291657 (= res!152894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291658 () Bool)

(declare-fun res!152893 () Bool)

(assert (=> b!291658 (=> (not res!152893) (not e!184551))))

(assert (=> b!291658 (= res!152893 (and (= (size!7341 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7341 a!3312))))))

(declare-fun b!291659 () Bool)

(declare-fun res!152888 () Bool)

(assert (=> b!291659 (=> (not res!152888) (not e!184551))))

(declare-fun arrayContainsKey!0 (array!14731 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291659 (= res!152888 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun res!152890 () Bool)

(assert (=> start!28518 (=> (not res!152890) (not e!184551))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28518 (= res!152890 (validMask!0 mask!3809))))

(assert (=> start!28518 e!184551))

(assert (=> start!28518 true))

(declare-fun array_inv!4943 (array!14731) Bool)

(assert (=> start!28518 (array_inv!4943 a!3312)))

(declare-fun b!291660 () Bool)

(assert (=> b!291660 (= e!184551 e!184555)))

(declare-fun res!152889 () Bool)

(assert (=> b!291660 (=> (not res!152889) (not e!184555))))

(assert (=> b!291660 (= res!152889 (or lt!144343 (= lt!144342 (MissingVacant!2149 i!1256))))))

(assert (=> b!291660 (= lt!144343 (= lt!144342 (MissingZero!2149 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14731 (_ BitVec 32)) SeekEntryResult!2149)

(assert (=> b!291660 (= lt!144342 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(assert (= (and start!28518 res!152890) b!291658))

(assert (= (and b!291658 res!152893) b!291654))

(assert (= (and b!291654 res!152892) b!291659))

(assert (= (and b!291659 res!152888) b!291660))

(assert (= (and b!291660 res!152889) b!291657))

(assert (= (and b!291657 res!152894) b!291653))

(assert (= (and b!291653 res!152895) b!291655))

(assert (= (and b!291655 res!152891) b!291656))

(declare-fun m!305531 () Bool)

(assert (=> start!28518 m!305531))

(declare-fun m!305533 () Bool)

(assert (=> start!28518 m!305533))

(declare-fun m!305535 () Bool)

(assert (=> b!291655 m!305535))

(declare-fun m!305537 () Bool)

(assert (=> b!291657 m!305537))

(declare-fun m!305539 () Bool)

(assert (=> b!291654 m!305539))

(declare-fun m!305541 () Bool)

(assert (=> b!291653 m!305541))

(declare-fun m!305543 () Bool)

(assert (=> b!291653 m!305543))

(declare-fun m!305545 () Bool)

(assert (=> b!291653 m!305545))

(declare-fun m!305547 () Bool)

(assert (=> b!291653 m!305547))

(declare-fun m!305549 () Bool)

(assert (=> b!291660 m!305549))

(declare-fun m!305551 () Bool)

(assert (=> b!291659 m!305551))

(check-sat (not b!291654) (not b!291657) (not b!291660) (not b!291653) (not start!28518) (not b!291659))
(check-sat)
