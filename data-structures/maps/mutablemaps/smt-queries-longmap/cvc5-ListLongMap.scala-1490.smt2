; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28336 () Bool)

(assert start!28336)

(declare-fun b!290189 () Bool)

(declare-fun e!183644 () Bool)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!290189 (= e!183644 (not (bvsge mask!3809 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!2106 0))(
  ( (MissingZero!2106 (index!10594 (_ BitVec 32))) (Found!2106 (index!10595 (_ BitVec 32))) (Intermediate!2106 (undefined!2918 Bool) (index!10596 (_ BitVec 32)) (x!28759 (_ BitVec 32))) (Undefined!2106) (MissingVacant!2106 (index!10597 (_ BitVec 32))) )
))
(declare-fun lt!143376 () SeekEntryResult!2106)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!290189 (= (index!10596 lt!143376) i!1256)))

(declare-fun b!290190 () Bool)

(declare-fun res!151712 () Bool)

(declare-fun e!183646 () Bool)

(assert (=> b!290190 (=> (not res!151712) (not e!183646))))

(declare-datatypes ((array!14639 0))(
  ( (array!14640 (arr!6946 (Array (_ BitVec 32) (_ BitVec 64))) (size!7298 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14639)

(assert (=> b!290190 (= res!151712 (and (= (size!7298 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7298 a!3312))))))

(declare-fun res!151706 () Bool)

(assert (=> start!28336 (=> (not res!151706) (not e!183646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28336 (= res!151706 (validMask!0 mask!3809))))

(assert (=> start!28336 e!183646))

(assert (=> start!28336 true))

(declare-fun array_inv!4900 (array!14639) Bool)

(assert (=> start!28336 (array_inv!4900 a!3312)))

(declare-fun b!290191 () Bool)

(declare-fun res!151708 () Bool)

(declare-fun e!183642 () Bool)

(assert (=> b!290191 (=> (not res!151708) (not e!183642))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14639 (_ BitVec 32)) Bool)

(assert (=> b!290191 (= res!151708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290192 () Bool)

(declare-fun res!151710 () Bool)

(assert (=> b!290192 (=> (not res!151710) (not e!183646))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14639 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290192 (= res!151710 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290193 () Bool)

(assert (=> b!290193 (= e!183646 e!183642)))

(declare-fun res!151707 () Bool)

(assert (=> b!290193 (=> (not res!151707) (not e!183642))))

(declare-fun lt!143377 () Bool)

(declare-fun lt!143380 () SeekEntryResult!2106)

(assert (=> b!290193 (= res!151707 (or lt!143377 (= lt!143380 (MissingVacant!2106 i!1256))))))

(assert (=> b!290193 (= lt!143377 (= lt!143380 (MissingZero!2106 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14639 (_ BitVec 32)) SeekEntryResult!2106)

(assert (=> b!290193 (= lt!143380 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290194 () Bool)

(declare-fun res!151713 () Bool)

(assert (=> b!290194 (=> (not res!151713) (not e!183646))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290194 (= res!151713 (validKeyInArray!0 k!2524))))

(declare-fun b!290195 () Bool)

(declare-fun e!183645 () Bool)

(assert (=> b!290195 (= e!183642 e!183645)))

(declare-fun res!151709 () Bool)

(assert (=> b!290195 (=> (not res!151709) (not e!183645))))

(assert (=> b!290195 (= res!151709 (and (not lt!143377) (= lt!143380 (MissingVacant!2106 i!1256))))))

(declare-fun lt!143379 () SeekEntryResult!2106)

(declare-fun lt!143378 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14639 (_ BitVec 32)) SeekEntryResult!2106)

(assert (=> b!290195 (= lt!143379 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143378 k!2524 (array!14640 (store (arr!6946 a!3312) i!1256 k!2524) (size!7298 a!3312)) mask!3809))))

(assert (=> b!290195 (= lt!143376 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143378 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290195 (= lt!143378 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290196 () Bool)

(assert (=> b!290196 (= e!183645 e!183644)))

(declare-fun res!151711 () Bool)

(assert (=> b!290196 (=> (not res!151711) (not e!183644))))

(declare-fun lt!143381 () Bool)

(assert (=> b!290196 (= res!151711 (and (or lt!143381 (not (undefined!2918 lt!143376))) (not lt!143381) (= (select (arr!6946 a!3312) (index!10596 lt!143376)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!290196 (= lt!143381 (not (is-Intermediate!2106 lt!143376)))))

(assert (= (and start!28336 res!151706) b!290190))

(assert (= (and b!290190 res!151712) b!290194))

(assert (= (and b!290194 res!151713) b!290192))

(assert (= (and b!290192 res!151710) b!290193))

(assert (= (and b!290193 res!151707) b!290191))

(assert (= (and b!290191 res!151708) b!290195))

(assert (= (and b!290195 res!151709) b!290196))

(assert (= (and b!290196 res!151711) b!290189))

(declare-fun m!304345 () Bool)

(assert (=> b!290191 m!304345))

(declare-fun m!304347 () Bool)

(assert (=> start!28336 m!304347))

(declare-fun m!304349 () Bool)

(assert (=> start!28336 m!304349))

(declare-fun m!304351 () Bool)

(assert (=> b!290194 m!304351))

(declare-fun m!304353 () Bool)

(assert (=> b!290193 m!304353))

(declare-fun m!304355 () Bool)

(assert (=> b!290192 m!304355))

(declare-fun m!304357 () Bool)

(assert (=> b!290195 m!304357))

(declare-fun m!304359 () Bool)

(assert (=> b!290195 m!304359))

(declare-fun m!304361 () Bool)

(assert (=> b!290195 m!304361))

(declare-fun m!304363 () Bool)

(assert (=> b!290195 m!304363))

(declare-fun m!304365 () Bool)

(assert (=> b!290196 m!304365))

(push 1)

