; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28466 () Bool)

(assert start!28466)

(declare-fun b!291389 () Bool)

(declare-fun res!152770 () Bool)

(declare-fun e!184392 () Bool)

(assert (=> b!291389 (=> (not res!152770) (not e!184392))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14724 0))(
  ( (array!14725 (arr!6987 (Array (_ BitVec 32) (_ BitVec 64))) (size!7339 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14724)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!291389 (= res!152770 (and (= (size!7339 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7339 a!3312))))))

(declare-fun b!291391 () Bool)

(declare-fun e!184393 () Bool)

(declare-fun e!184390 () Bool)

(assert (=> b!291391 (= e!184393 e!184390)))

(declare-fun res!152766 () Bool)

(assert (=> b!291391 (=> (not res!152766) (not e!184390))))

(declare-datatypes ((SeekEntryResult!2147 0))(
  ( (MissingZero!2147 (index!10758 (_ BitVec 32))) (Found!2147 (index!10759 (_ BitVec 32))) (Intermediate!2147 (undefined!2959 Bool) (index!10760 (_ BitVec 32)) (x!28910 (_ BitVec 32))) (Undefined!2147) (MissingVacant!2147 (index!10761 (_ BitVec 32))) )
))
(declare-fun lt!144215 () SeekEntryResult!2147)

(declare-fun lt!144211 () Bool)

(assert (=> b!291391 (= res!152766 (and (not lt!144211) (= lt!144215 (MissingVacant!2147 i!1256))))))

(declare-fun lt!144210 () (_ BitVec 32))

(declare-fun lt!144213 () SeekEntryResult!2147)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14724 (_ BitVec 32)) SeekEntryResult!2147)

(assert (=> b!291391 (= lt!144213 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144210 k!2524 (array!14725 (store (arr!6987 a!3312) i!1256 k!2524) (size!7339 a!3312)) mask!3809))))

(declare-fun lt!144214 () SeekEntryResult!2147)

(assert (=> b!291391 (= lt!144214 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144210 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291391 (= lt!144210 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!291392 () Bool)

(declare-fun res!152768 () Bool)

(assert (=> b!291392 (=> (not res!152768) (not e!184392))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291392 (= res!152768 (validKeyInArray!0 k!2524))))

(declare-fun b!291390 () Bool)

(declare-fun e!184391 () Bool)

(assert (=> b!291390 (= e!184391 (not (or (not (= lt!144214 (Intermediate!2147 false (index!10760 lt!144214) (x!28910 lt!144214)))) (bvsle #b00000000000000000000000000000000 (x!28910 lt!144214)))))))

(assert (=> b!291390 (= (index!10760 lt!144214) i!1256)))

(declare-fun res!152767 () Bool)

(assert (=> start!28466 (=> (not res!152767) (not e!184392))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28466 (= res!152767 (validMask!0 mask!3809))))

(assert (=> start!28466 e!184392))

(assert (=> start!28466 true))

(declare-fun array_inv!4941 (array!14724) Bool)

(assert (=> start!28466 (array_inv!4941 a!3312)))

(declare-fun b!291393 () Bool)

(assert (=> b!291393 (= e!184390 e!184391)))

(declare-fun res!152771 () Bool)

(assert (=> b!291393 (=> (not res!152771) (not e!184391))))

(declare-fun lt!144212 () Bool)

(assert (=> b!291393 (= res!152771 (and (or lt!144212 (not (undefined!2959 lt!144214))) (not lt!144212) (= (select (arr!6987 a!3312) (index!10760 lt!144214)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!291393 (= lt!144212 (not (is-Intermediate!2147 lt!144214)))))

(declare-fun b!291394 () Bool)

(declare-fun res!152772 () Bool)

(assert (=> b!291394 (=> (not res!152772) (not e!184393))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14724 (_ BitVec 32)) Bool)

(assert (=> b!291394 (= res!152772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291395 () Bool)

(assert (=> b!291395 (= e!184392 e!184393)))

(declare-fun res!152765 () Bool)

(assert (=> b!291395 (=> (not res!152765) (not e!184393))))

(assert (=> b!291395 (= res!152765 (or lt!144211 (= lt!144215 (MissingVacant!2147 i!1256))))))

(assert (=> b!291395 (= lt!144211 (= lt!144215 (MissingZero!2147 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14724 (_ BitVec 32)) SeekEntryResult!2147)

(assert (=> b!291395 (= lt!144215 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!291396 () Bool)

(declare-fun res!152769 () Bool)

(assert (=> b!291396 (=> (not res!152769) (not e!184392))))

(declare-fun arrayContainsKey!0 (array!14724 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291396 (= res!152769 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28466 res!152767) b!291389))

(assert (= (and b!291389 res!152770) b!291392))

(assert (= (and b!291392 res!152768) b!291396))

(assert (= (and b!291396 res!152769) b!291395))

(assert (= (and b!291395 res!152765) b!291394))

(assert (= (and b!291394 res!152772) b!291391))

(assert (= (and b!291391 res!152766) b!291393))

(assert (= (and b!291393 res!152771) b!291390))

(declare-fun m!305367 () Bool)

(assert (=> b!291396 m!305367))

(declare-fun m!305369 () Bool)

(assert (=> b!291393 m!305369))

(declare-fun m!305371 () Bool)

(assert (=> b!291395 m!305371))

(declare-fun m!305373 () Bool)

(assert (=> b!291391 m!305373))

(declare-fun m!305375 () Bool)

(assert (=> b!291391 m!305375))

(declare-fun m!305377 () Bool)

(assert (=> b!291391 m!305377))

(declare-fun m!305379 () Bool)

(assert (=> b!291391 m!305379))

(declare-fun m!305381 () Bool)

(assert (=> start!28466 m!305381))

(declare-fun m!305383 () Bool)

(assert (=> start!28466 m!305383))

(declare-fun m!305385 () Bool)

(assert (=> b!291392 m!305385))

(declare-fun m!305387 () Bool)

(assert (=> b!291394 m!305387))

(push 1)

(assert (not b!291391))

(assert (not b!291394))

(assert (not b!291395))

(assert (not b!291392))

(assert (not b!291396))

(assert (not start!28466))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66293 () Bool)

(assert (=> d!66293 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!291392 d!66293))

