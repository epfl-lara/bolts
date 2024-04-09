; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28226 () Bool)

(assert start!28226)

(declare-fun res!150570 () Bool)

(declare-fun e!182927 () Bool)

(assert (=> start!28226 (=> (not res!150570) (not e!182927))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28226 (= res!150570 (validMask!0 mask!3809))))

(assert (=> start!28226 e!182927))

(assert (=> start!28226 true))

(declare-datatypes ((array!14529 0))(
  ( (array!14530 (arr!6891 (Array (_ BitVec 32) (_ BitVec 64))) (size!7243 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14529)

(declare-fun array_inv!4845 (array!14529) Bool)

(assert (=> start!28226 (array_inv!4845 a!3312)))

(declare-fun b!288905 () Bool)

(declare-fun e!182925 () Bool)

(declare-fun e!182929 () Bool)

(assert (=> b!288905 (= e!182925 e!182929)))

(declare-fun res!150569 () Bool)

(assert (=> b!288905 (=> (not res!150569) (not e!182929))))

(declare-fun lt!142486 () Bool)

(declare-datatypes ((SeekEntryResult!2051 0))(
  ( (MissingZero!2051 (index!10374 (_ BitVec 32))) (Found!2051 (index!10375 (_ BitVec 32))) (Intermediate!2051 (undefined!2863 Bool) (index!10376 (_ BitVec 32)) (x!28552 (_ BitVec 32))) (Undefined!2051) (MissingVacant!2051 (index!10377 (_ BitVec 32))) )
))
(declare-fun lt!142485 () SeekEntryResult!2051)

(declare-fun k!2524 () (_ BitVec 64))

(assert (=> b!288905 (= res!150569 (and (or lt!142486 (not (undefined!2863 lt!142485))) (or lt!142486 (not (= (select (arr!6891 a!3312) (index!10376 lt!142485)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142486 (not (= (select (arr!6891 a!3312) (index!10376 lt!142485)) k!2524))) (not lt!142486)))))

(assert (=> b!288905 (= lt!142486 (not (is-Intermediate!2051 lt!142485)))))

(declare-fun b!288906 () Bool)

(declare-fun res!150573 () Bool)

(assert (=> b!288906 (=> (not res!150573) (not e!182927))))

(declare-fun arrayContainsKey!0 (array!14529 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288906 (= res!150573 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288907 () Bool)

(declare-fun res!150571 () Bool)

(assert (=> b!288907 (=> (not res!150571) (not e!182927))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288907 (= res!150571 (validKeyInArray!0 k!2524))))

(declare-fun b!288908 () Bool)

(declare-fun res!150572 () Bool)

(declare-fun e!182926 () Bool)

(assert (=> b!288908 (=> (not res!150572) (not e!182926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14529 (_ BitVec 32)) Bool)

(assert (=> b!288908 (= res!150572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288909 () Bool)

(assert (=> b!288909 (= e!182929 (not true))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!288909 (and (= (select (arr!6891 a!3312) (index!10376 lt!142485)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10376 lt!142485) i!1256))))

(declare-fun b!288910 () Bool)

(declare-fun res!150568 () Bool)

(assert (=> b!288910 (=> (not res!150568) (not e!182927))))

(assert (=> b!288910 (= res!150568 (and (= (size!7243 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7243 a!3312))))))

(declare-fun b!288911 () Bool)

(assert (=> b!288911 (= e!182926 e!182925)))

(declare-fun res!150566 () Bool)

(assert (=> b!288911 (=> (not res!150566) (not e!182925))))

(declare-fun lt!142487 () Bool)

(assert (=> b!288911 (= res!150566 lt!142487)))

(declare-fun lt!142488 () (_ BitVec 32))

(declare-fun lt!142490 () SeekEntryResult!2051)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14529 (_ BitVec 32)) SeekEntryResult!2051)

(assert (=> b!288911 (= lt!142490 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142488 k!2524 (array!14530 (store (arr!6891 a!3312) i!1256 k!2524) (size!7243 a!3312)) mask!3809))))

(assert (=> b!288911 (= lt!142485 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142488 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288911 (= lt!142488 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!288912 () Bool)

(assert (=> b!288912 (= e!182927 e!182926)))

(declare-fun res!150567 () Bool)

(assert (=> b!288912 (=> (not res!150567) (not e!182926))))

(declare-fun lt!142489 () SeekEntryResult!2051)

(assert (=> b!288912 (= res!150567 (or lt!142487 (= lt!142489 (MissingVacant!2051 i!1256))))))

(assert (=> b!288912 (= lt!142487 (= lt!142489 (MissingZero!2051 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14529 (_ BitVec 32)) SeekEntryResult!2051)

(assert (=> b!288912 (= lt!142489 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!28226 res!150570) b!288910))

(assert (= (and b!288910 res!150568) b!288907))

(assert (= (and b!288907 res!150571) b!288906))

(assert (= (and b!288906 res!150573) b!288912))

(assert (= (and b!288912 res!150567) b!288908))

(assert (= (and b!288908 res!150572) b!288911))

(assert (= (and b!288911 res!150566) b!288905))

(assert (= (and b!288905 res!150569) b!288909))

(declare-fun m!303135 () Bool)

(assert (=> b!288907 m!303135))

(declare-fun m!303137 () Bool)

(assert (=> b!288911 m!303137))

(declare-fun m!303139 () Bool)

(assert (=> b!288911 m!303139))

(declare-fun m!303141 () Bool)

(assert (=> b!288911 m!303141))

(declare-fun m!303143 () Bool)

(assert (=> b!288911 m!303143))

(declare-fun m!303145 () Bool)

(assert (=> b!288905 m!303145))

(declare-fun m!303147 () Bool)

(assert (=> b!288908 m!303147))

(declare-fun m!303149 () Bool)

(assert (=> b!288906 m!303149))

(declare-fun m!303151 () Bool)

(assert (=> b!288912 m!303151))

(declare-fun m!303153 () Bool)

(assert (=> start!28226 m!303153))

(declare-fun m!303155 () Bool)

(assert (=> start!28226 m!303155))

(assert (=> b!288909 m!303145))

(push 1)

(assert (not b!288908))

(assert (not b!288906))

(assert (not b!288911))

(assert (not b!288907))

(assert (not b!288912))

(assert (not start!28226))

(check-sat)

(pop 1)

(push 1)

