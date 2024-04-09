; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28092 () Bool)

(assert start!28092)

(declare-fun res!149522 () Bool)

(declare-fun e!182210 () Bool)

(assert (=> start!28092 (=> (not res!149522) (not e!182210))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28092 (= res!149522 (validMask!0 mask!3809))))

(assert (=> start!28092 e!182210))

(assert (=> start!28092 true))

(declare-datatypes ((array!14440 0))(
  ( (array!14441 (arr!6848 (Array (_ BitVec 32) (_ BitVec 64))) (size!7200 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14440)

(declare-fun array_inv!4802 (array!14440) Bool)

(assert (=> start!28092 (array_inv!4802 a!3312)))

(declare-fun b!287719 () Bool)

(declare-fun e!182211 () Bool)

(assert (=> b!287719 (= e!182210 e!182211)))

(declare-fun res!149526 () Bool)

(assert (=> b!287719 (=> (not res!149526) (not e!182211))))

(declare-datatypes ((SeekEntryResult!2008 0))(
  ( (MissingZero!2008 (index!10202 (_ BitVec 32))) (Found!2008 (index!10203 (_ BitVec 32))) (Intermediate!2008 (undefined!2820 Bool) (index!10204 (_ BitVec 32)) (x!28391 (_ BitVec 32))) (Undefined!2008) (MissingVacant!2008 (index!10205 (_ BitVec 32))) )
))
(declare-fun lt!141680 () SeekEntryResult!2008)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287719 (= res!149526 (or (= lt!141680 (MissingZero!2008 i!1256)) (= lt!141680 (MissingVacant!2008 i!1256))))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14440 (_ BitVec 32)) SeekEntryResult!2008)

(assert (=> b!287719 (= lt!141680 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!287720 () Bool)

(declare-fun res!149525 () Bool)

(assert (=> b!287720 (=> (not res!149525) (not e!182211))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14440 (_ BitVec 32)) Bool)

(assert (=> b!287720 (= res!149525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287721 () Bool)

(assert (=> b!287721 (= e!182211 false)))

(declare-fun lt!141679 () (_ BitVec 32))

(declare-fun lt!141677 () SeekEntryResult!2008)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14440 (_ BitVec 32)) SeekEntryResult!2008)

(assert (=> b!287721 (= lt!141677 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141679 k0!2524 (array!14441 (store (arr!6848 a!3312) i!1256 k0!2524) (size!7200 a!3312)) mask!3809))))

(declare-fun lt!141678 () SeekEntryResult!2008)

(assert (=> b!287721 (= lt!141678 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141679 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287721 (= lt!141679 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!287722 () Bool)

(declare-fun res!149524 () Bool)

(assert (=> b!287722 (=> (not res!149524) (not e!182210))))

(assert (=> b!287722 (= res!149524 (and (= (size!7200 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7200 a!3312))))))

(declare-fun b!287723 () Bool)

(declare-fun res!149521 () Bool)

(assert (=> b!287723 (=> (not res!149521) (not e!182210))))

(declare-fun arrayContainsKey!0 (array!14440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287723 (= res!149521 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287724 () Bool)

(declare-fun res!149523 () Bool)

(assert (=> b!287724 (=> (not res!149523) (not e!182210))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287724 (= res!149523 (validKeyInArray!0 k0!2524))))

(assert (= (and start!28092 res!149522) b!287722))

(assert (= (and b!287722 res!149524) b!287724))

(assert (= (and b!287724 res!149523) b!287723))

(assert (= (and b!287723 res!149521) b!287719))

(assert (= (and b!287719 res!149526) b!287720))

(assert (= (and b!287720 res!149525) b!287721))

(declare-fun m!302091 () Bool)

(assert (=> b!287721 m!302091))

(declare-fun m!302093 () Bool)

(assert (=> b!287721 m!302093))

(declare-fun m!302095 () Bool)

(assert (=> b!287721 m!302095))

(declare-fun m!302097 () Bool)

(assert (=> b!287721 m!302097))

(declare-fun m!302099 () Bool)

(assert (=> b!287724 m!302099))

(declare-fun m!302101 () Bool)

(assert (=> b!287719 m!302101))

(declare-fun m!302103 () Bool)

(assert (=> b!287720 m!302103))

(declare-fun m!302105 () Bool)

(assert (=> start!28092 m!302105))

(declare-fun m!302107 () Bool)

(assert (=> start!28092 m!302107))

(declare-fun m!302109 () Bool)

(assert (=> b!287723 m!302109))

(check-sat (not start!28092) (not b!287721) (not b!287723) (not b!287724) (not b!287720) (not b!287719))
(check-sat)
