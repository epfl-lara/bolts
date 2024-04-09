; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28238 () Bool)

(assert start!28238)

(declare-fun b!289049 () Bool)

(declare-fun res!150716 () Bool)

(declare-fun e!183019 () Bool)

(assert (=> b!289049 (=> (not res!150716) (not e!183019))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289049 (= res!150716 (validKeyInArray!0 k!2524))))

(declare-fun b!289050 () Bool)

(declare-fun res!150712 () Bool)

(assert (=> b!289050 (=> (not res!150712) (not e!183019))))

(declare-datatypes ((array!14541 0))(
  ( (array!14542 (arr!6897 (Array (_ BitVec 32) (_ BitVec 64))) (size!7249 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14541)

(declare-fun arrayContainsKey!0 (array!14541 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289050 (= res!150712 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289051 () Bool)

(declare-fun e!183015 () Bool)

(assert (=> b!289051 (= e!183015 (not true))))

(declare-datatypes ((SeekEntryResult!2057 0))(
  ( (MissingZero!2057 (index!10398 (_ BitVec 32))) (Found!2057 (index!10399 (_ BitVec 32))) (Intermediate!2057 (undefined!2869 Bool) (index!10400 (_ BitVec 32)) (x!28574 (_ BitVec 32))) (Undefined!2057) (MissingVacant!2057 (index!10401 (_ BitVec 32))) )
))
(declare-fun lt!142595 () SeekEntryResult!2057)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!289051 (and (= (select (arr!6897 a!3312) (index!10400 lt!142595)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10400 lt!142595) i!1256))))

(declare-fun b!289053 () Bool)

(declare-fun res!150710 () Bool)

(assert (=> b!289053 (=> (not res!150710) (not e!183019))))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!289053 (= res!150710 (and (= (size!7249 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7249 a!3312))))))

(declare-fun b!289054 () Bool)

(declare-fun e!183016 () Bool)

(assert (=> b!289054 (= e!183019 e!183016)))

(declare-fun res!150713 () Bool)

(assert (=> b!289054 (=> (not res!150713) (not e!183016))))

(declare-fun lt!142594 () SeekEntryResult!2057)

(declare-fun lt!142596 () Bool)

(assert (=> b!289054 (= res!150713 (or lt!142596 (= lt!142594 (MissingVacant!2057 i!1256))))))

(assert (=> b!289054 (= lt!142596 (= lt!142594 (MissingZero!2057 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14541 (_ BitVec 32)) SeekEntryResult!2057)

(assert (=> b!289054 (= lt!142594 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289055 () Bool)

(declare-fun e!183017 () Bool)

(assert (=> b!289055 (= e!183017 e!183015)))

(declare-fun res!150717 () Bool)

(assert (=> b!289055 (=> (not res!150717) (not e!183015))))

(declare-fun lt!142593 () Bool)

(assert (=> b!289055 (= res!150717 (and (or lt!142593 (not (undefined!2869 lt!142595))) (or lt!142593 (not (= (select (arr!6897 a!3312) (index!10400 lt!142595)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142593 (not (= (select (arr!6897 a!3312) (index!10400 lt!142595)) k!2524))) (not lt!142593)))))

(assert (=> b!289055 (= lt!142593 (not (is-Intermediate!2057 lt!142595)))))

(declare-fun b!289056 () Bool)

(assert (=> b!289056 (= e!183016 e!183017)))

(declare-fun res!150711 () Bool)

(assert (=> b!289056 (=> (not res!150711) (not e!183017))))

(assert (=> b!289056 (= res!150711 lt!142596)))

(declare-fun lt!142598 () SeekEntryResult!2057)

(declare-fun lt!142597 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14541 (_ BitVec 32)) SeekEntryResult!2057)

(assert (=> b!289056 (= lt!142598 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142597 k!2524 (array!14542 (store (arr!6897 a!3312) i!1256 k!2524) (size!7249 a!3312)) mask!3809))))

(assert (=> b!289056 (= lt!142595 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142597 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289056 (= lt!142597 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289052 () Bool)

(declare-fun res!150714 () Bool)

(assert (=> b!289052 (=> (not res!150714) (not e!183016))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14541 (_ BitVec 32)) Bool)

(assert (=> b!289052 (= res!150714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!150715 () Bool)

(assert (=> start!28238 (=> (not res!150715) (not e!183019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28238 (= res!150715 (validMask!0 mask!3809))))

(assert (=> start!28238 e!183019))

(assert (=> start!28238 true))

(declare-fun array_inv!4851 (array!14541) Bool)

(assert (=> start!28238 (array_inv!4851 a!3312)))

(assert (= (and start!28238 res!150715) b!289053))

(assert (= (and b!289053 res!150710) b!289049))

(assert (= (and b!289049 res!150716) b!289050))

(assert (= (and b!289050 res!150712) b!289054))

(assert (= (and b!289054 res!150713) b!289052))

(assert (= (and b!289052 res!150714) b!289056))

(assert (= (and b!289056 res!150711) b!289055))

(assert (= (and b!289055 res!150717) b!289051))

(declare-fun m!303267 () Bool)

(assert (=> b!289054 m!303267))

(declare-fun m!303269 () Bool)

(assert (=> b!289050 m!303269))

(declare-fun m!303271 () Bool)

(assert (=> b!289049 m!303271))

(declare-fun m!303273 () Bool)

(assert (=> b!289052 m!303273))

(declare-fun m!303275 () Bool)

(assert (=> b!289051 m!303275))

(assert (=> b!289055 m!303275))

(declare-fun m!303277 () Bool)

(assert (=> b!289056 m!303277))

(declare-fun m!303279 () Bool)

(assert (=> b!289056 m!303279))

(declare-fun m!303281 () Bool)

(assert (=> b!289056 m!303281))

(declare-fun m!303283 () Bool)

(assert (=> b!289056 m!303283))

(declare-fun m!303285 () Bool)

(assert (=> start!28238 m!303285))

(declare-fun m!303287 () Bool)

(assert (=> start!28238 m!303287))

(push 1)

