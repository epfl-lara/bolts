; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28230 () Bool)

(assert start!28230)

(declare-fun b!288953 () Bool)

(declare-fun res!150621 () Bool)

(declare-fun e!182958 () Bool)

(assert (=> b!288953 (=> (not res!150621) (not e!182958))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14533 0))(
  ( (array!14534 (arr!6893 (Array (_ BitVec 32) (_ BitVec 64))) (size!7245 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14533)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!288953 (= res!150621 (and (= (size!7245 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7245 a!3312))))))

(declare-fun b!288954 () Bool)

(declare-fun e!182956 () Bool)

(declare-fun e!182955 () Bool)

(assert (=> b!288954 (= e!182956 e!182955)))

(declare-fun res!150614 () Bool)

(assert (=> b!288954 (=> (not res!150614) (not e!182955))))

(declare-fun lt!142521 () Bool)

(assert (=> b!288954 (= res!150614 lt!142521)))

(declare-fun lt!142522 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2053 0))(
  ( (MissingZero!2053 (index!10382 (_ BitVec 32))) (Found!2053 (index!10383 (_ BitVec 32))) (Intermediate!2053 (undefined!2865 Bool) (index!10384 (_ BitVec 32)) (x!28562 (_ BitVec 32))) (Undefined!2053) (MissingVacant!2053 (index!10385 (_ BitVec 32))) )
))
(declare-fun lt!142523 () SeekEntryResult!2053)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14533 (_ BitVec 32)) SeekEntryResult!2053)

(assert (=> b!288954 (= lt!142523 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142522 k0!2524 (array!14534 (store (arr!6893 a!3312) i!1256 k0!2524) (size!7245 a!3312)) mask!3809))))

(declare-fun lt!142525 () SeekEntryResult!2053)

(assert (=> b!288954 (= lt!142525 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142522 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288954 (= lt!142522 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!288956 () Bool)

(declare-fun e!182957 () Bool)

(assert (=> b!288956 (= e!182955 e!182957)))

(declare-fun res!150616 () Bool)

(assert (=> b!288956 (=> (not res!150616) (not e!182957))))

(declare-fun lt!142524 () Bool)

(assert (=> b!288956 (= res!150616 (and (or lt!142524 (not (undefined!2865 lt!142525))) (or lt!142524 (not (= (select (arr!6893 a!3312) (index!10384 lt!142525)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142524 (not (= (select (arr!6893 a!3312) (index!10384 lt!142525)) k0!2524))) (not lt!142524)))))

(get-info :version)

(assert (=> b!288956 (= lt!142524 (not ((_ is Intermediate!2053) lt!142525)))))

(declare-fun b!288957 () Bool)

(assert (=> b!288957 (= e!182958 e!182956)))

(declare-fun res!150619 () Bool)

(assert (=> b!288957 (=> (not res!150619) (not e!182956))))

(declare-fun lt!142526 () SeekEntryResult!2053)

(assert (=> b!288957 (= res!150619 (or lt!142521 (= lt!142526 (MissingVacant!2053 i!1256))))))

(assert (=> b!288957 (= lt!142521 (= lt!142526 (MissingZero!2053 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14533 (_ BitVec 32)) SeekEntryResult!2053)

(assert (=> b!288957 (= lt!142526 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!288958 () Bool)

(declare-fun res!150615 () Bool)

(assert (=> b!288958 (=> (not res!150615) (not e!182956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14533 (_ BitVec 32)) Bool)

(assert (=> b!288958 (= res!150615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288955 () Bool)

(assert (=> b!288955 (= e!182957 (not true))))

(assert (=> b!288955 (and (= (select (arr!6893 a!3312) (index!10384 lt!142525)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10384 lt!142525) i!1256))))

(declare-fun res!150617 () Bool)

(assert (=> start!28230 (=> (not res!150617) (not e!182958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28230 (= res!150617 (validMask!0 mask!3809))))

(assert (=> start!28230 e!182958))

(assert (=> start!28230 true))

(declare-fun array_inv!4847 (array!14533) Bool)

(assert (=> start!28230 (array_inv!4847 a!3312)))

(declare-fun b!288959 () Bool)

(declare-fun res!150618 () Bool)

(assert (=> b!288959 (=> (not res!150618) (not e!182958))))

(declare-fun arrayContainsKey!0 (array!14533 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288959 (= res!150618 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288960 () Bool)

(declare-fun res!150620 () Bool)

(assert (=> b!288960 (=> (not res!150620) (not e!182958))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288960 (= res!150620 (validKeyInArray!0 k0!2524))))

(assert (= (and start!28230 res!150617) b!288953))

(assert (= (and b!288953 res!150621) b!288960))

(assert (= (and b!288960 res!150620) b!288959))

(assert (= (and b!288959 res!150618) b!288957))

(assert (= (and b!288957 res!150619) b!288958))

(assert (= (and b!288958 res!150615) b!288954))

(assert (= (and b!288954 res!150614) b!288956))

(assert (= (and b!288956 res!150616) b!288955))

(declare-fun m!303179 () Bool)

(assert (=> b!288958 m!303179))

(declare-fun m!303181 () Bool)

(assert (=> b!288956 m!303181))

(declare-fun m!303183 () Bool)

(assert (=> b!288960 m!303183))

(declare-fun m!303185 () Bool)

(assert (=> b!288959 m!303185))

(declare-fun m!303187 () Bool)

(assert (=> start!28230 m!303187))

(declare-fun m!303189 () Bool)

(assert (=> start!28230 m!303189))

(declare-fun m!303191 () Bool)

(assert (=> b!288954 m!303191))

(declare-fun m!303193 () Bool)

(assert (=> b!288954 m!303193))

(declare-fun m!303195 () Bool)

(assert (=> b!288954 m!303195))

(declare-fun m!303197 () Bool)

(assert (=> b!288954 m!303197))

(declare-fun m!303199 () Bool)

(assert (=> b!288957 m!303199))

(assert (=> b!288955 m!303181))

(check-sat (not b!288959) (not b!288954) (not b!288957) (not b!288958) (not start!28230) (not b!288960))
(check-sat)
