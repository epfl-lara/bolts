; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28200 () Bool)

(assert start!28200)

(declare-fun b!288593 () Bool)

(declare-fun res!150254 () Bool)

(declare-fun e!182732 () Bool)

(assert (=> b!288593 (=> (not res!150254) (not e!182732))))

(declare-datatypes ((array!14503 0))(
  ( (array!14504 (arr!6878 (Array (_ BitVec 32) (_ BitVec 64))) (size!7230 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14503)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14503 (_ BitVec 32)) Bool)

(assert (=> b!288593 (= res!150254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288594 () Bool)

(declare-fun res!150260 () Bool)

(declare-fun e!182734 () Bool)

(assert (=> b!288594 (=> (not res!150260) (not e!182734))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14503 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288594 (= res!150260 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288595 () Bool)

(declare-fun e!182730 () Bool)

(assert (=> b!288595 (= e!182732 e!182730)))

(declare-fun res!150259 () Bool)

(assert (=> b!288595 (=> (not res!150259) (not e!182730))))

(declare-fun lt!142254 () Bool)

(assert (=> b!288595 (= res!150259 lt!142254)))

(declare-fun lt!142256 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2038 0))(
  ( (MissingZero!2038 (index!10322 (_ BitVec 32))) (Found!2038 (index!10323 (_ BitVec 32))) (Intermediate!2038 (undefined!2850 Bool) (index!10324 (_ BitVec 32)) (x!28507 (_ BitVec 32))) (Undefined!2038) (MissingVacant!2038 (index!10325 (_ BitVec 32))) )
))
(declare-fun lt!142255 () SeekEntryResult!2038)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14503 (_ BitVec 32)) SeekEntryResult!2038)

(assert (=> b!288595 (= lt!142255 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142256 k0!2524 (array!14504 (store (arr!6878 a!3312) i!1256 k0!2524) (size!7230 a!3312)) mask!3809))))

(declare-fun lt!142251 () SeekEntryResult!2038)

(assert (=> b!288595 (= lt!142251 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142256 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288595 (= lt!142256 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!288596 () Bool)

(declare-fun res!150261 () Bool)

(assert (=> b!288596 (=> (not res!150261) (not e!182734))))

(assert (=> b!288596 (= res!150261 (and (= (size!7230 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7230 a!3312))))))

(declare-fun b!288597 () Bool)

(declare-fun res!150258 () Bool)

(assert (=> b!288597 (=> (not res!150258) (not e!182734))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288597 (= res!150258 (validKeyInArray!0 k0!2524))))

(declare-fun res!150255 () Bool)

(assert (=> start!28200 (=> (not res!150255) (not e!182734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28200 (= res!150255 (validMask!0 mask!3809))))

(assert (=> start!28200 e!182734))

(assert (=> start!28200 true))

(declare-fun array_inv!4832 (array!14503) Bool)

(assert (=> start!28200 (array_inv!4832 a!3312)))

(declare-fun b!288598 () Bool)

(declare-fun e!182733 () Bool)

(assert (=> b!288598 (= e!182730 e!182733)))

(declare-fun res!150257 () Bool)

(assert (=> b!288598 (=> (not res!150257) (not e!182733))))

(declare-fun lt!142253 () Bool)

(assert (=> b!288598 (= res!150257 (and (or lt!142253 (not (undefined!2850 lt!142251))) (or lt!142253 (not (= (select (arr!6878 a!3312) (index!10324 lt!142251)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142253 (not (= (select (arr!6878 a!3312) (index!10324 lt!142251)) k0!2524))) (not lt!142253)))))

(get-info :version)

(assert (=> b!288598 (= lt!142253 (not ((_ is Intermediate!2038) lt!142251)))))

(declare-fun b!288599 () Bool)

(assert (=> b!288599 (= e!182733 (not true))))

(assert (=> b!288599 (and (= (select (arr!6878 a!3312) (index!10324 lt!142251)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10324 lt!142251) i!1256))))

(declare-fun b!288600 () Bool)

(assert (=> b!288600 (= e!182734 e!182732)))

(declare-fun res!150256 () Bool)

(assert (=> b!288600 (=> (not res!150256) (not e!182732))))

(declare-fun lt!142252 () SeekEntryResult!2038)

(assert (=> b!288600 (= res!150256 (or lt!142254 (= lt!142252 (MissingVacant!2038 i!1256))))))

(assert (=> b!288600 (= lt!142254 (= lt!142252 (MissingZero!2038 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14503 (_ BitVec 32)) SeekEntryResult!2038)

(assert (=> b!288600 (= lt!142252 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(assert (= (and start!28200 res!150255) b!288596))

(assert (= (and b!288596 res!150261) b!288597))

(assert (= (and b!288597 res!150258) b!288594))

(assert (= (and b!288594 res!150260) b!288600))

(assert (= (and b!288600 res!150256) b!288593))

(assert (= (and b!288593 res!150254) b!288595))

(assert (= (and b!288595 res!150259) b!288598))

(assert (= (and b!288598 res!150257) b!288599))

(declare-fun m!302849 () Bool)

(assert (=> start!28200 m!302849))

(declare-fun m!302851 () Bool)

(assert (=> start!28200 m!302851))

(declare-fun m!302853 () Bool)

(assert (=> b!288597 m!302853))

(declare-fun m!302855 () Bool)

(assert (=> b!288593 m!302855))

(declare-fun m!302857 () Bool)

(assert (=> b!288600 m!302857))

(declare-fun m!302859 () Bool)

(assert (=> b!288594 m!302859))

(declare-fun m!302861 () Bool)

(assert (=> b!288598 m!302861))

(declare-fun m!302863 () Bool)

(assert (=> b!288595 m!302863))

(declare-fun m!302865 () Bool)

(assert (=> b!288595 m!302865))

(declare-fun m!302867 () Bool)

(assert (=> b!288595 m!302867))

(declare-fun m!302869 () Bool)

(assert (=> b!288595 m!302869))

(assert (=> b!288599 m!302861))

(check-sat (not b!288597) (not b!288594) (not start!28200) (not b!288593) (not b!288600) (not b!288595))
(check-sat)
