; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28222 () Bool)

(assert start!28222)

(declare-fun b!288857 () Bool)

(declare-fun e!182896 () Bool)

(declare-fun e!182899 () Bool)

(assert (=> b!288857 (= e!182896 e!182899)))

(declare-fun res!150518 () Bool)

(assert (=> b!288857 (=> (not res!150518) (not e!182899))))

(declare-datatypes ((SeekEntryResult!2049 0))(
  ( (MissingZero!2049 (index!10366 (_ BitVec 32))) (Found!2049 (index!10367 (_ BitVec 32))) (Intermediate!2049 (undefined!2861 Bool) (index!10368 (_ BitVec 32)) (x!28550 (_ BitVec 32))) (Undefined!2049) (MissingVacant!2049 (index!10369 (_ BitVec 32))) )
))
(declare-fun lt!142451 () SeekEntryResult!2049)

(declare-datatypes ((array!14525 0))(
  ( (array!14526 (arr!6889 (Array (_ BitVec 32) (_ BitVec 64))) (size!7241 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14525)

(declare-fun lt!142453 () Bool)

(declare-fun k!2524 () (_ BitVec 64))

(assert (=> b!288857 (= res!150518 (and (or lt!142453 (not (undefined!2861 lt!142451))) (or lt!142453 (not (= (select (arr!6889 a!3312) (index!10368 lt!142451)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142453 (not (= (select (arr!6889 a!3312) (index!10368 lt!142451)) k!2524))) (not lt!142453)))))

(assert (=> b!288857 (= lt!142453 (not (is-Intermediate!2049 lt!142451)))))

(declare-fun b!288858 () Bool)

(declare-fun e!182895 () Bool)

(assert (=> b!288858 (= e!182895 e!182896)))

(declare-fun res!150524 () Bool)

(assert (=> b!288858 (=> (not res!150524) (not e!182896))))

(declare-fun lt!142449 () Bool)

(assert (=> b!288858 (= res!150524 lt!142449)))

(declare-fun lt!142454 () SeekEntryResult!2049)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!142452 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14525 (_ BitVec 32)) SeekEntryResult!2049)

(assert (=> b!288858 (= lt!142454 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142452 k!2524 (array!14526 (store (arr!6889 a!3312) i!1256 k!2524) (size!7241 a!3312)) mask!3809))))

(assert (=> b!288858 (= lt!142451 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142452 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288858 (= lt!142452 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!288859 () Bool)

(declare-fun e!182898 () Bool)

(assert (=> b!288859 (= e!182898 e!182895)))

(declare-fun res!150520 () Bool)

(assert (=> b!288859 (=> (not res!150520) (not e!182895))))

(declare-fun lt!142450 () SeekEntryResult!2049)

(assert (=> b!288859 (= res!150520 (or lt!142449 (= lt!142450 (MissingVacant!2049 i!1256))))))

(assert (=> b!288859 (= lt!142449 (= lt!142450 (MissingZero!2049 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14525 (_ BitVec 32)) SeekEntryResult!2049)

(assert (=> b!288859 (= lt!142450 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!288860 () Bool)

(declare-fun res!150521 () Bool)

(assert (=> b!288860 (=> (not res!150521) (not e!182898))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288860 (= res!150521 (validKeyInArray!0 k!2524))))

(declare-fun res!150522 () Bool)

(assert (=> start!28222 (=> (not res!150522) (not e!182898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28222 (= res!150522 (validMask!0 mask!3809))))

(assert (=> start!28222 e!182898))

(assert (=> start!28222 true))

(declare-fun array_inv!4843 (array!14525) Bool)

(assert (=> start!28222 (array_inv!4843 a!3312)))

(declare-fun b!288861 () Bool)

(declare-fun res!150523 () Bool)

(assert (=> b!288861 (=> (not res!150523) (not e!182898))))

(declare-fun arrayContainsKey!0 (array!14525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288861 (= res!150523 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288862 () Bool)

(declare-fun res!150519 () Bool)

(assert (=> b!288862 (=> (not res!150519) (not e!182898))))

(assert (=> b!288862 (= res!150519 (and (= (size!7241 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7241 a!3312))))))

(declare-fun b!288863 () Bool)

(assert (=> b!288863 (= e!182899 (not true))))

(assert (=> b!288863 (and (= (select (arr!6889 a!3312) (index!10368 lt!142451)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10368 lt!142451) i!1256))))

(declare-fun b!288864 () Bool)

(declare-fun res!150525 () Bool)

(assert (=> b!288864 (=> (not res!150525) (not e!182895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14525 (_ BitVec 32)) Bool)

(assert (=> b!288864 (= res!150525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28222 res!150522) b!288862))

(assert (= (and b!288862 res!150519) b!288860))

(assert (= (and b!288860 res!150521) b!288861))

(assert (= (and b!288861 res!150523) b!288859))

(assert (= (and b!288859 res!150520) b!288864))

(assert (= (and b!288864 res!150525) b!288858))

(assert (= (and b!288858 res!150524) b!288857))

(assert (= (and b!288857 res!150518) b!288863))

(declare-fun m!303091 () Bool)

(assert (=> b!288864 m!303091))

(declare-fun m!303093 () Bool)

(assert (=> b!288858 m!303093))

(declare-fun m!303095 () Bool)

(assert (=> b!288858 m!303095))

(declare-fun m!303097 () Bool)

(assert (=> b!288858 m!303097))

(declare-fun m!303099 () Bool)

(assert (=> b!288858 m!303099))

(declare-fun m!303101 () Bool)

(assert (=> b!288861 m!303101))

(declare-fun m!303103 () Bool)

(assert (=> b!288857 m!303103))

(declare-fun m!303105 () Bool)

(assert (=> start!28222 m!303105))

(declare-fun m!303107 () Bool)

(assert (=> start!28222 m!303107))

(declare-fun m!303109 () Bool)

(assert (=> b!288860 m!303109))

(declare-fun m!303111 () Bool)

(assert (=> b!288859 m!303111))

(assert (=> b!288863 m!303103))

(push 1)

(assert (not b!288858))

(assert (not b!288861))

(assert (not start!28222))

(assert (not b!288859))

(assert (not b!288860))

(assert (not b!288864))

(check-sat)

