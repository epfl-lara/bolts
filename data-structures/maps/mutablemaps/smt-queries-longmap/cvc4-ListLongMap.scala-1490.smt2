; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28340 () Bool)

(assert start!28340)

(declare-fun b!290237 () Bool)

(declare-fun e!183675 () Bool)

(declare-fun e!183672 () Bool)

(assert (=> b!290237 (= e!183675 e!183672)))

(declare-fun res!151761 () Bool)

(assert (=> b!290237 (=> (not res!151761) (not e!183672))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!143413 () Bool)

(declare-datatypes ((SeekEntryResult!2108 0))(
  ( (MissingZero!2108 (index!10602 (_ BitVec 32))) (Found!2108 (index!10603 (_ BitVec 32))) (Intermediate!2108 (undefined!2920 Bool) (index!10604 (_ BitVec 32)) (x!28761 (_ BitVec 32))) (Undefined!2108) (MissingVacant!2108 (index!10605 (_ BitVec 32))) )
))
(declare-fun lt!143417 () SeekEntryResult!2108)

(assert (=> b!290237 (= res!151761 (or lt!143413 (= lt!143417 (MissingVacant!2108 i!1256))))))

(assert (=> b!290237 (= lt!143413 (= lt!143417 (MissingZero!2108 i!1256)))))

(declare-datatypes ((array!14643 0))(
  ( (array!14644 (arr!6948 (Array (_ BitVec 32) (_ BitVec 64))) (size!7300 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14643)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14643 (_ BitVec 32)) SeekEntryResult!2108)

(assert (=> b!290237 (= lt!143417 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290238 () Bool)

(declare-fun e!183676 () Bool)

(declare-fun e!183673 () Bool)

(assert (=> b!290238 (= e!183676 e!183673)))

(declare-fun res!151759 () Bool)

(assert (=> b!290238 (=> (not res!151759) (not e!183673))))

(declare-fun lt!143416 () Bool)

(declare-fun lt!143412 () SeekEntryResult!2108)

(assert (=> b!290238 (= res!151759 (and (or lt!143416 (not (undefined!2920 lt!143412))) (not lt!143416) (= (select (arr!6948 a!3312) (index!10604 lt!143412)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!290238 (= lt!143416 (not (is-Intermediate!2108 lt!143412)))))

(declare-fun b!290239 () Bool)

(declare-fun res!151756 () Bool)

(assert (=> b!290239 (=> (not res!151756) (not e!183675))))

(assert (=> b!290239 (= res!151756 (and (= (size!7300 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7300 a!3312))))))

(declare-fun res!151755 () Bool)

(assert (=> start!28340 (=> (not res!151755) (not e!183675))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28340 (= res!151755 (validMask!0 mask!3809))))

(assert (=> start!28340 e!183675))

(assert (=> start!28340 true))

(declare-fun array_inv!4902 (array!14643) Bool)

(assert (=> start!28340 (array_inv!4902 a!3312)))

(declare-fun b!290240 () Bool)

(declare-fun res!151758 () Bool)

(assert (=> b!290240 (=> (not res!151758) (not e!183672))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14643 (_ BitVec 32)) Bool)

(assert (=> b!290240 (= res!151758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290241 () Bool)

(assert (=> b!290241 (= e!183672 e!183676)))

(declare-fun res!151757 () Bool)

(assert (=> b!290241 (=> (not res!151757) (not e!183676))))

(assert (=> b!290241 (= res!151757 (and (not lt!143413) (= lt!143417 (MissingVacant!2108 i!1256))))))

(declare-fun lt!143415 () SeekEntryResult!2108)

(declare-fun lt!143414 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14643 (_ BitVec 32)) SeekEntryResult!2108)

(assert (=> b!290241 (= lt!143415 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143414 k!2524 (array!14644 (store (arr!6948 a!3312) i!1256 k!2524) (size!7300 a!3312)) mask!3809))))

(assert (=> b!290241 (= lt!143412 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143414 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290241 (= lt!143414 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290242 () Bool)

(declare-fun res!151760 () Bool)

(assert (=> b!290242 (=> (not res!151760) (not e!183675))))

(declare-fun arrayContainsKey!0 (array!14643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290242 (= res!151760 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290243 () Bool)

(declare-fun res!151754 () Bool)

(assert (=> b!290243 (=> (not res!151754) (not e!183675))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290243 (= res!151754 (validKeyInArray!0 k!2524))))

(declare-fun b!290244 () Bool)

(assert (=> b!290244 (= e!183673 (not (bvsge mask!3809 #b00000000000000000000000000000000)))))

(assert (=> b!290244 (= (index!10604 lt!143412) i!1256)))

(assert (= (and start!28340 res!151755) b!290239))

(assert (= (and b!290239 res!151756) b!290243))

(assert (= (and b!290243 res!151754) b!290242))

(assert (= (and b!290242 res!151760) b!290237))

(assert (= (and b!290237 res!151761) b!290240))

(assert (= (and b!290240 res!151758) b!290241))

(assert (= (and b!290241 res!151757) b!290238))

(assert (= (and b!290238 res!151759) b!290244))

(declare-fun m!304389 () Bool)

(assert (=> b!290241 m!304389))

(declare-fun m!304391 () Bool)

(assert (=> b!290241 m!304391))

(declare-fun m!304393 () Bool)

(assert (=> b!290241 m!304393))

(declare-fun m!304395 () Bool)

(assert (=> b!290241 m!304395))

(declare-fun m!304397 () Bool)

(assert (=> b!290238 m!304397))

(declare-fun m!304399 () Bool)

(assert (=> b!290240 m!304399))

(declare-fun m!304401 () Bool)

(assert (=> b!290242 m!304401))

(declare-fun m!304403 () Bool)

(assert (=> b!290237 m!304403))

(declare-fun m!304405 () Bool)

(assert (=> b!290243 m!304405))

(declare-fun m!304407 () Bool)

(assert (=> start!28340 m!304407))

(declare-fun m!304409 () Bool)

(assert (=> start!28340 m!304409))

(push 1)

(assert (not b!290242))

