; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28218 () Bool)

(assert start!28218)

(declare-fun b!288809 () Bool)

(declare-fun e!182869 () Bool)

(assert (=> b!288809 (= e!182869 (not true))))

(declare-datatypes ((array!14521 0))(
  ( (array!14522 (arr!6887 (Array (_ BitVec 32) (_ BitVec 64))) (size!7239 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14521)

(declare-datatypes ((SeekEntryResult!2047 0))(
  ( (MissingZero!2047 (index!10358 (_ BitVec 32))) (Found!2047 (index!10359 (_ BitVec 32))) (Intermediate!2047 (undefined!2859 Bool) (index!10360 (_ BitVec 32)) (x!28540 (_ BitVec 32))) (Undefined!2047) (MissingVacant!2047 (index!10361 (_ BitVec 32))) )
))
(declare-fun lt!142414 () SeekEntryResult!2047)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!288809 (and (= (select (arr!6887 a!3312) (index!10360 lt!142414)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10360 lt!142414) i!1256))))

(declare-fun b!288811 () Bool)

(declare-fun res!150477 () Bool)

(declare-fun e!182865 () Bool)

(assert (=> b!288811 (=> (not res!150477) (not e!182865))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14521 (_ BitVec 32)) Bool)

(assert (=> b!288811 (= res!150477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288812 () Bool)

(declare-fun res!150472 () Bool)

(declare-fun e!182868 () Bool)

(assert (=> b!288812 (=> (not res!150472) (not e!182868))))

(assert (=> b!288812 (= res!150472 (and (= (size!7239 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7239 a!3312))))))

(declare-fun b!288813 () Bool)

(declare-fun e!182867 () Bool)

(assert (=> b!288813 (= e!182865 e!182867)))

(declare-fun res!150473 () Bool)

(assert (=> b!288813 (=> (not res!150473) (not e!182867))))

(declare-fun lt!142415 () Bool)

(assert (=> b!288813 (= res!150473 lt!142415)))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun lt!142416 () (_ BitVec 32))

(declare-fun lt!142418 () SeekEntryResult!2047)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14521 (_ BitVec 32)) SeekEntryResult!2047)

(assert (=> b!288813 (= lt!142418 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142416 k0!2524 (array!14522 (store (arr!6887 a!3312) i!1256 k0!2524) (size!7239 a!3312)) mask!3809))))

(assert (=> b!288813 (= lt!142414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142416 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288813 (= lt!142416 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!288814 () Bool)

(declare-fun res!150470 () Bool)

(assert (=> b!288814 (=> (not res!150470) (not e!182868))))

(declare-fun arrayContainsKey!0 (array!14521 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288814 (= res!150470 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288815 () Bool)

(assert (=> b!288815 (= e!182868 e!182865)))

(declare-fun res!150475 () Bool)

(assert (=> b!288815 (=> (not res!150475) (not e!182865))))

(declare-fun lt!142413 () SeekEntryResult!2047)

(assert (=> b!288815 (= res!150475 (or lt!142415 (= lt!142413 (MissingVacant!2047 i!1256))))))

(assert (=> b!288815 (= lt!142415 (= lt!142413 (MissingZero!2047 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14521 (_ BitVec 32)) SeekEntryResult!2047)

(assert (=> b!288815 (= lt!142413 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!288816 () Bool)

(assert (=> b!288816 (= e!182867 e!182869)))

(declare-fun res!150474 () Bool)

(assert (=> b!288816 (=> (not res!150474) (not e!182869))))

(declare-fun lt!142417 () Bool)

(assert (=> b!288816 (= res!150474 (and (or lt!142417 (not (undefined!2859 lt!142414))) (or lt!142417 (not (= (select (arr!6887 a!3312) (index!10360 lt!142414)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142417 (not (= (select (arr!6887 a!3312) (index!10360 lt!142414)) k0!2524))) (not lt!142417)))))

(get-info :version)

(assert (=> b!288816 (= lt!142417 (not ((_ is Intermediate!2047) lt!142414)))))

(declare-fun b!288810 () Bool)

(declare-fun res!150471 () Bool)

(assert (=> b!288810 (=> (not res!150471) (not e!182868))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288810 (= res!150471 (validKeyInArray!0 k0!2524))))

(declare-fun res!150476 () Bool)

(assert (=> start!28218 (=> (not res!150476) (not e!182868))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28218 (= res!150476 (validMask!0 mask!3809))))

(assert (=> start!28218 e!182868))

(assert (=> start!28218 true))

(declare-fun array_inv!4841 (array!14521) Bool)

(assert (=> start!28218 (array_inv!4841 a!3312)))

(assert (= (and start!28218 res!150476) b!288812))

(assert (= (and b!288812 res!150472) b!288810))

(assert (= (and b!288810 res!150471) b!288814))

(assert (= (and b!288814 res!150470) b!288815))

(assert (= (and b!288815 res!150475) b!288811))

(assert (= (and b!288811 res!150477) b!288813))

(assert (= (and b!288813 res!150473) b!288816))

(assert (= (and b!288816 res!150474) b!288809))

(declare-fun m!303047 () Bool)

(assert (=> b!288810 m!303047))

(declare-fun m!303049 () Bool)

(assert (=> b!288811 m!303049))

(declare-fun m!303051 () Bool)

(assert (=> b!288814 m!303051))

(declare-fun m!303053 () Bool)

(assert (=> b!288815 m!303053))

(declare-fun m!303055 () Bool)

(assert (=> b!288813 m!303055))

(declare-fun m!303057 () Bool)

(assert (=> b!288813 m!303057))

(declare-fun m!303059 () Bool)

(assert (=> b!288813 m!303059))

(declare-fun m!303061 () Bool)

(assert (=> b!288813 m!303061))

(declare-fun m!303063 () Bool)

(assert (=> start!28218 m!303063))

(declare-fun m!303065 () Bool)

(assert (=> start!28218 m!303065))

(declare-fun m!303067 () Bool)

(assert (=> b!288809 m!303067))

(assert (=> b!288816 m!303067))

(check-sat (not b!288813) (not start!28218) (not b!288810) (not b!288811) (not b!288814) (not b!288815))
(check-sat)
