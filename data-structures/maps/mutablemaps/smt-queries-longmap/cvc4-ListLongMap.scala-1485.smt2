; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28310 () Bool)

(assert start!28310)

(declare-fun b!289951 () Bool)

(declare-fun e!183521 () Bool)

(declare-fun e!183522 () Bool)

(assert (=> b!289951 (= e!183521 e!183522)))

(declare-fun res!151471 () Bool)

(assert (=> b!289951 (=> (not res!151471) (not e!183522))))

(declare-datatypes ((SeekEntryResult!2093 0))(
  ( (MissingZero!2093 (index!10542 (_ BitVec 32))) (Found!2093 (index!10543 (_ BitVec 32))) (Intermediate!2093 (undefined!2905 Bool) (index!10544 (_ BitVec 32)) (x!28706 (_ BitVec 32))) (Undefined!2093) (MissingVacant!2093 (index!10545 (_ BitVec 32))) )
))
(declare-fun lt!143219 () SeekEntryResult!2093)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!289951 (= res!151471 (or (= lt!143219 (MissingZero!2093 i!1256)) (= lt!143219 (MissingVacant!2093 i!1256))))))

(declare-datatypes ((array!14613 0))(
  ( (array!14614 (arr!6933 (Array (_ BitVec 32) (_ BitVec 64))) (size!7285 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14613)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14613 (_ BitVec 32)) SeekEntryResult!2093)

(assert (=> b!289951 (= lt!143219 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289952 () Bool)

(declare-fun res!151472 () Bool)

(assert (=> b!289952 (=> (not res!151472) (not e!183521))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289952 (= res!151472 (validKeyInArray!0 k!2524))))

(declare-fun b!289953 () Bool)

(declare-fun res!151470 () Bool)

(assert (=> b!289953 (=> (not res!151470) (not e!183522))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14613 (_ BitVec 32)) Bool)

(assert (=> b!289953 (= res!151470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289954 () Bool)

(declare-fun res!151473 () Bool)

(assert (=> b!289954 (=> (not res!151473) (not e!183521))))

(declare-fun arrayContainsKey!0 (array!14613 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289954 (= res!151473 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289955 () Bool)

(declare-fun res!151468 () Bool)

(assert (=> b!289955 (=> (not res!151468) (not e!183521))))

(assert (=> b!289955 (= res!151468 (and (= (size!7285 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7285 a!3312))))))

(declare-fun b!289956 () Bool)

(assert (=> b!289956 (= e!183522 false)))

(declare-fun lt!143218 () (_ BitVec 32))

(declare-fun lt!143216 () SeekEntryResult!2093)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14613 (_ BitVec 32)) SeekEntryResult!2093)

(assert (=> b!289956 (= lt!143216 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143218 k!2524 (array!14614 (store (arr!6933 a!3312) i!1256 k!2524) (size!7285 a!3312)) mask!3809))))

(declare-fun lt!143217 () SeekEntryResult!2093)

(assert (=> b!289956 (= lt!143217 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143218 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289956 (= lt!143218 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!151469 () Bool)

(assert (=> start!28310 (=> (not res!151469) (not e!183521))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28310 (= res!151469 (validMask!0 mask!3809))))

(assert (=> start!28310 e!183521))

(assert (=> start!28310 true))

(declare-fun array_inv!4887 (array!14613) Bool)

(assert (=> start!28310 (array_inv!4887 a!3312)))

(assert (= (and start!28310 res!151469) b!289955))

(assert (= (and b!289955 res!151468) b!289952))

(assert (= (and b!289952 res!151472) b!289954))

(assert (= (and b!289954 res!151473) b!289951))

(assert (= (and b!289951 res!151471) b!289953))

(assert (= (and b!289953 res!151470) b!289956))

(declare-fun m!304085 () Bool)

(assert (=> b!289951 m!304085))

(declare-fun m!304087 () Bool)

(assert (=> start!28310 m!304087))

(declare-fun m!304089 () Bool)

(assert (=> start!28310 m!304089))

(declare-fun m!304091 () Bool)

(assert (=> b!289952 m!304091))

(declare-fun m!304093 () Bool)

(assert (=> b!289953 m!304093))

(declare-fun m!304095 () Bool)

(assert (=> b!289954 m!304095))

(declare-fun m!304097 () Bool)

(assert (=> b!289956 m!304097))

(declare-fun m!304099 () Bool)

(assert (=> b!289956 m!304099))

(declare-fun m!304101 () Bool)

(assert (=> b!289956 m!304101))

(declare-fun m!304103 () Bool)

(assert (=> b!289956 m!304103))

(push 1)

