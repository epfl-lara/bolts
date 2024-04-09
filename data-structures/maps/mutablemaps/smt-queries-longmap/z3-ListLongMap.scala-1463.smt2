; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28176 () Bool)

(assert start!28176)

(declare-fun b!288305 () Bool)

(declare-fun res!149971 () Bool)

(declare-fun e!182550 () Bool)

(assert (=> b!288305 (=> (not res!149971) (not e!182550))))

(declare-datatypes ((array!14479 0))(
  ( (array!14480 (arr!6866 (Array (_ BitVec 32) (_ BitVec 64))) (size!7218 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14479)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14479 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288305 (= res!149971 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288306 () Bool)

(declare-fun e!182553 () Bool)

(declare-fun e!182551 () Bool)

(assert (=> b!288306 (= e!182553 e!182551)))

(declare-fun res!149968 () Bool)

(assert (=> b!288306 (=> (not res!149968) (not e!182551))))

(declare-fun lt!142035 () Bool)

(declare-datatypes ((SeekEntryResult!2026 0))(
  ( (MissingZero!2026 (index!10274 (_ BitVec 32))) (Found!2026 (index!10275 (_ BitVec 32))) (Intermediate!2026 (undefined!2838 Bool) (index!10276 (_ BitVec 32)) (x!28463 (_ BitVec 32))) (Undefined!2026) (MissingVacant!2026 (index!10277 (_ BitVec 32))) )
))
(declare-fun lt!142038 () SeekEntryResult!2026)

(assert (=> b!288306 (= res!149968 (and (or lt!142035 (not (undefined!2838 lt!142038))) (or lt!142035 (not (= (select (arr!6866 a!3312) (index!10276 lt!142038)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142035 (not (= (select (arr!6866 a!3312) (index!10276 lt!142038)) k0!2524))) (not lt!142035)))))

(get-info :version)

(assert (=> b!288306 (= lt!142035 (not ((_ is Intermediate!2026) lt!142038)))))

(declare-fun b!288307 () Bool)

(declare-fun res!149966 () Bool)

(assert (=> b!288307 (=> (not res!149966) (not e!182550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288307 (= res!149966 (validKeyInArray!0 k0!2524))))

(declare-fun b!288308 () Bool)

(declare-fun res!149969 () Bool)

(assert (=> b!288308 (=> (not res!149969) (not e!182550))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!288308 (= res!149969 (and (= (size!7218 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7218 a!3312))))))

(declare-fun b!288310 () Bool)

(declare-fun e!182554 () Bool)

(assert (=> b!288310 (= e!182550 e!182554)))

(declare-fun res!149972 () Bool)

(assert (=> b!288310 (=> (not res!149972) (not e!182554))))

(declare-fun lt!142036 () Bool)

(declare-fun lt!142037 () SeekEntryResult!2026)

(assert (=> b!288310 (= res!149972 (or lt!142036 (= lt!142037 (MissingVacant!2026 i!1256))))))

(assert (=> b!288310 (= lt!142036 (= lt!142037 (MissingZero!2026 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14479 (_ BitVec 32)) SeekEntryResult!2026)

(assert (=> b!288310 (= lt!142037 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!288311 () Bool)

(assert (=> b!288311 (= e!182554 e!182553)))

(declare-fun res!149967 () Bool)

(assert (=> b!288311 (=> (not res!149967) (not e!182553))))

(assert (=> b!288311 (= res!149967 lt!142036)))

(declare-fun lt!142039 () (_ BitVec 32))

(declare-fun lt!142040 () SeekEntryResult!2026)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14479 (_ BitVec 32)) SeekEntryResult!2026)

(assert (=> b!288311 (= lt!142040 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142039 k0!2524 (array!14480 (store (arr!6866 a!3312) i!1256 k0!2524) (size!7218 a!3312)) mask!3809))))

(assert (=> b!288311 (= lt!142038 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142039 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288311 (= lt!142039 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!288312 () Bool)

(assert (=> b!288312 (= e!182551 (not true))))

(assert (=> b!288312 (and (= (select (arr!6866 a!3312) (index!10276 lt!142038)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10276 lt!142038) i!1256))))

(declare-fun b!288309 () Bool)

(declare-fun res!149970 () Bool)

(assert (=> b!288309 (=> (not res!149970) (not e!182554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14479 (_ BitVec 32)) Bool)

(assert (=> b!288309 (= res!149970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!149973 () Bool)

(assert (=> start!28176 (=> (not res!149973) (not e!182550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28176 (= res!149973 (validMask!0 mask!3809))))

(assert (=> start!28176 e!182550))

(assert (=> start!28176 true))

(declare-fun array_inv!4820 (array!14479) Bool)

(assert (=> start!28176 (array_inv!4820 a!3312)))

(assert (= (and start!28176 res!149973) b!288308))

(assert (= (and b!288308 res!149969) b!288307))

(assert (= (and b!288307 res!149966) b!288305))

(assert (= (and b!288305 res!149971) b!288310))

(assert (= (and b!288310 res!149972) b!288309))

(assert (= (and b!288309 res!149970) b!288311))

(assert (= (and b!288311 res!149967) b!288306))

(assert (= (and b!288306 res!149968) b!288312))

(declare-fun m!302585 () Bool)

(assert (=> b!288309 m!302585))

(declare-fun m!302587 () Bool)

(assert (=> start!28176 m!302587))

(declare-fun m!302589 () Bool)

(assert (=> start!28176 m!302589))

(declare-fun m!302591 () Bool)

(assert (=> b!288307 m!302591))

(declare-fun m!302593 () Bool)

(assert (=> b!288306 m!302593))

(assert (=> b!288312 m!302593))

(declare-fun m!302595 () Bool)

(assert (=> b!288310 m!302595))

(declare-fun m!302597 () Bool)

(assert (=> b!288311 m!302597))

(declare-fun m!302599 () Bool)

(assert (=> b!288311 m!302599))

(declare-fun m!302601 () Bool)

(assert (=> b!288311 m!302601))

(declare-fun m!302603 () Bool)

(assert (=> b!288311 m!302603))

(declare-fun m!302605 () Bool)

(assert (=> b!288305 m!302605))

(check-sat (not b!288305) (not b!288307) (not start!28176) (not b!288311) (not b!288310) (not b!288309))
(check-sat)
