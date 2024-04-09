; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29180 () Bool)

(assert start!29180)

(declare-fun res!155865 () Bool)

(declare-fun e!187062 () Bool)

(assert (=> start!29180 (=> (not res!155865) (not e!187062))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29180 (= res!155865 (validMask!0 mask!3809))))

(assert (=> start!29180 e!187062))

(assert (=> start!29180 true))

(declare-datatypes ((array!14980 0))(
  ( (array!14981 (arr!7100 (Array (_ BitVec 32) (_ BitVec 64))) (size!7452 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14980)

(declare-fun array_inv!5054 (array!14980) Bool)

(assert (=> start!29180 (array_inv!5054 a!3312)))

(declare-fun b!295942 () Bool)

(declare-fun e!187061 () Bool)

(declare-fun e!187060 () Bool)

(assert (=> b!295942 (= e!187061 e!187060)))

(declare-fun res!155867 () Bool)

(assert (=> b!295942 (=> (not res!155867) (not e!187060))))

(declare-fun lt!146935 () Bool)

(assert (=> b!295942 (= res!155867 lt!146935)))

(declare-datatypes ((SeekEntryResult!2260 0))(
  ( (MissingZero!2260 (index!11210 (_ BitVec 32))) (Found!2260 (index!11211 (_ BitVec 32))) (Intermediate!2260 (undefined!3072 Bool) (index!11212 (_ BitVec 32)) (x!29389 (_ BitVec 32))) (Undefined!2260) (MissingVacant!2260 (index!11213 (_ BitVec 32))) )
))
(declare-fun lt!146937 () SeekEntryResult!2260)

(declare-fun lt!146938 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14980 (_ BitVec 32)) SeekEntryResult!2260)

(assert (=> b!295942 (= lt!146937 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146938 k0!2524 (array!14981 (store (arr!7100 a!3312) i!1256 k0!2524) (size!7452 a!3312)) mask!3809))))

(declare-fun lt!146934 () SeekEntryResult!2260)

(assert (=> b!295942 (= lt!146934 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146938 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295942 (= lt!146938 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!295943 () Bool)

(declare-fun res!155864 () Bool)

(assert (=> b!295943 (=> (not res!155864) (not e!187062))))

(assert (=> b!295943 (= res!155864 (and (= (size!7452 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7452 a!3312))))))

(declare-fun b!295944 () Bool)

(assert (=> b!295944 (= e!187062 e!187061)))

(declare-fun res!155871 () Bool)

(assert (=> b!295944 (=> (not res!155871) (not e!187061))))

(declare-fun lt!146936 () SeekEntryResult!2260)

(assert (=> b!295944 (= res!155871 (or lt!146935 (= lt!146936 (MissingVacant!2260 i!1256))))))

(assert (=> b!295944 (= lt!146935 (= lt!146936 (MissingZero!2260 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14980 (_ BitVec 32)) SeekEntryResult!2260)

(assert (=> b!295944 (= lt!146936 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!295945 () Bool)

(declare-fun res!155869 () Bool)

(assert (=> b!295945 (=> (not res!155869) (not e!187061))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14980 (_ BitVec 32)) Bool)

(assert (=> b!295945 (= res!155869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295946 () Bool)

(declare-fun e!187064 () Bool)

(assert (=> b!295946 (= e!187060 e!187064)))

(declare-fun res!155868 () Bool)

(assert (=> b!295946 (=> (not res!155868) (not e!187064))))

(declare-fun lt!146939 () Bool)

(assert (=> b!295946 (= res!155868 (and (or lt!146939 (not (undefined!3072 lt!146934))) (or lt!146939 (not (= (select (arr!7100 a!3312) (index!11212 lt!146934)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146939 (not (= (select (arr!7100 a!3312) (index!11212 lt!146934)) k0!2524))) (not lt!146939)))))

(get-info :version)

(assert (=> b!295946 (= lt!146939 (not ((_ is Intermediate!2260) lt!146934)))))

(declare-fun b!295947 () Bool)

(assert (=> b!295947 (= e!187064 (not (= lt!146934 (Intermediate!2260 false (index!11212 lt!146934) (x!29389 lt!146934)))))))

(assert (=> b!295947 (and (= (select (arr!7100 a!3312) (index!11212 lt!146934)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11212 lt!146934) i!1256))))

(declare-fun b!295948 () Bool)

(declare-fun res!155870 () Bool)

(assert (=> b!295948 (=> (not res!155870) (not e!187062))))

(declare-fun arrayContainsKey!0 (array!14980 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295948 (= res!155870 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295949 () Bool)

(declare-fun res!155866 () Bool)

(assert (=> b!295949 (=> (not res!155866) (not e!187062))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295949 (= res!155866 (validKeyInArray!0 k0!2524))))

(assert (= (and start!29180 res!155865) b!295943))

(assert (= (and b!295943 res!155864) b!295949))

(assert (= (and b!295949 res!155866) b!295948))

(assert (= (and b!295948 res!155870) b!295944))

(assert (= (and b!295944 res!155871) b!295945))

(assert (= (and b!295945 res!155869) b!295942))

(assert (= (and b!295942 res!155867) b!295946))

(assert (= (and b!295946 res!155868) b!295947))

(declare-fun m!309033 () Bool)

(assert (=> b!295947 m!309033))

(declare-fun m!309035 () Bool)

(assert (=> b!295944 m!309035))

(declare-fun m!309037 () Bool)

(assert (=> b!295945 m!309037))

(declare-fun m!309039 () Bool)

(assert (=> start!29180 m!309039))

(declare-fun m!309041 () Bool)

(assert (=> start!29180 m!309041))

(declare-fun m!309043 () Bool)

(assert (=> b!295948 m!309043))

(declare-fun m!309045 () Bool)

(assert (=> b!295949 m!309045))

(declare-fun m!309047 () Bool)

(assert (=> b!295942 m!309047))

(declare-fun m!309049 () Bool)

(assert (=> b!295942 m!309049))

(declare-fun m!309051 () Bool)

(assert (=> b!295942 m!309051))

(declare-fun m!309053 () Bool)

(assert (=> b!295942 m!309053))

(assert (=> b!295946 m!309033))

(check-sat (not start!29180) (not b!295945) (not b!295944) (not b!295949) (not b!295942) (not b!295948))
(check-sat)
