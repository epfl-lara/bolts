; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28298 () Bool)

(assert start!28298)

(declare-fun b!289843 () Bool)

(declare-fun res!151360 () Bool)

(declare-fun e!183467 () Bool)

(assert (=> b!289843 (=> (not res!151360) (not e!183467))))

(declare-datatypes ((array!14601 0))(
  ( (array!14602 (arr!6927 (Array (_ BitVec 32) (_ BitVec 64))) (size!7279 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14601)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14601 (_ BitVec 32)) Bool)

(assert (=> b!289843 (= res!151360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289844 () Bool)

(declare-fun res!151361 () Bool)

(declare-fun e!183468 () Bool)

(assert (=> b!289844 (=> (not res!151361) (not e!183468))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289844 (= res!151361 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!151365 () Bool)

(assert (=> start!28298 (=> (not res!151365) (not e!183468))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28298 (= res!151365 (validMask!0 mask!3809))))

(assert (=> start!28298 e!183468))

(assert (=> start!28298 true))

(declare-fun array_inv!4881 (array!14601) Bool)

(assert (=> start!28298 (array_inv!4881 a!3312)))

(declare-fun b!289845 () Bool)

(assert (=> b!289845 (= e!183468 e!183467)))

(declare-fun res!151364 () Bool)

(assert (=> b!289845 (=> (not res!151364) (not e!183467))))

(declare-datatypes ((SeekEntryResult!2087 0))(
  ( (MissingZero!2087 (index!10518 (_ BitVec 32))) (Found!2087 (index!10519 (_ BitVec 32))) (Intermediate!2087 (undefined!2899 Bool) (index!10520 (_ BitVec 32)) (x!28684 (_ BitVec 32))) (Undefined!2087) (MissingVacant!2087 (index!10521 (_ BitVec 32))) )
))
(declare-fun lt!143145 () SeekEntryResult!2087)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!143143 () Bool)

(assert (=> b!289845 (= res!151364 (or lt!143143 (= lt!143145 (MissingVacant!2087 i!1256))))))

(assert (=> b!289845 (= lt!143143 (= lt!143145 (MissingZero!2087 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14601 (_ BitVec 32)) SeekEntryResult!2087)

(assert (=> b!289845 (= lt!143145 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289846 () Bool)

(declare-fun res!151362 () Bool)

(assert (=> b!289846 (=> (not res!151362) (not e!183468))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289846 (= res!151362 (validKeyInArray!0 k!2524))))

(declare-fun b!289847 () Bool)

(assert (=> b!289847 (= e!183467 (and (not lt!143143) (bvslt mask!3809 #b00000000000000000000000000000000)))))

(declare-fun lt!143146 () (_ BitVec 32))

(declare-fun lt!143144 () SeekEntryResult!2087)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14601 (_ BitVec 32)) SeekEntryResult!2087)

(assert (=> b!289847 (= lt!143144 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143146 k!2524 (array!14602 (store (arr!6927 a!3312) i!1256 k!2524) (size!7279 a!3312)) mask!3809))))

(declare-fun lt!143147 () SeekEntryResult!2087)

(assert (=> b!289847 (= lt!143147 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143146 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289847 (= lt!143146 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289848 () Bool)

(declare-fun res!151363 () Bool)

(assert (=> b!289848 (=> (not res!151363) (not e!183468))))

(assert (=> b!289848 (= res!151363 (and (= (size!7279 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7279 a!3312))))))

(assert (= (and start!28298 res!151365) b!289848))

(assert (= (and b!289848 res!151363) b!289846))

(assert (= (and b!289846 res!151362) b!289844))

(assert (= (and b!289844 res!151361) b!289845))

(assert (= (and b!289845 res!151364) b!289843))

(assert (= (and b!289843 res!151360) b!289847))

(declare-fun m!303965 () Bool)

(assert (=> b!289844 m!303965))

(declare-fun m!303967 () Bool)

(assert (=> start!28298 m!303967))

(declare-fun m!303969 () Bool)

(assert (=> start!28298 m!303969))

(declare-fun m!303971 () Bool)

(assert (=> b!289843 m!303971))

(declare-fun m!303973 () Bool)

(assert (=> b!289847 m!303973))

(declare-fun m!303975 () Bool)

(assert (=> b!289847 m!303975))

(declare-fun m!303977 () Bool)

(assert (=> b!289847 m!303977))

(declare-fun m!303979 () Bool)

(assert (=> b!289847 m!303979))

(declare-fun m!303981 () Bool)

(assert (=> b!289845 m!303981))

(declare-fun m!303983 () Bool)

(assert (=> b!289846 m!303983))

(push 1)

(assert (not b!289844))

(assert (not start!28298))

(assert (not b!289845))

(assert (not b!289846))

(assert (not b!289847))

(assert (not b!289843))

(check-sat)

