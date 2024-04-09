; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28252 () Bool)

(assert start!28252)

(declare-fun res!150879 () Bool)

(declare-fun e!183120 () Bool)

(assert (=> start!28252 (=> (not res!150879) (not e!183120))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28252 (= res!150879 (validMask!0 mask!3809))))

(assert (=> start!28252 e!183120))

(assert (=> start!28252 true))

(declare-datatypes ((array!14555 0))(
  ( (array!14556 (arr!6904 (Array (_ BitVec 32) (_ BitVec 64))) (size!7256 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14555)

(declare-fun array_inv!4858 (array!14555) Bool)

(assert (=> start!28252 (array_inv!4858 a!3312)))

(declare-fun b!289217 () Bool)

(declare-fun res!150883 () Bool)

(assert (=> b!289217 (=> (not res!150883) (not e!183120))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289217 (= res!150883 (validKeyInArray!0 k!2524))))

(declare-fun b!289218 () Bool)

(declare-fun e!183121 () Bool)

(assert (=> b!289218 (= e!183120 e!183121)))

(declare-fun res!150881 () Bool)

(assert (=> b!289218 (=> (not res!150881) (not e!183121))))

(declare-fun lt!142723 () Bool)

(declare-datatypes ((SeekEntryResult!2064 0))(
  ( (MissingZero!2064 (index!10426 (_ BitVec 32))) (Found!2064 (index!10427 (_ BitVec 32))) (Intermediate!2064 (undefined!2876 Bool) (index!10428 (_ BitVec 32)) (x!28605 (_ BitVec 32))) (Undefined!2064) (MissingVacant!2064 (index!10429 (_ BitVec 32))) )
))
(declare-fun lt!142720 () SeekEntryResult!2064)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!289218 (= res!150881 (or lt!142723 (= lt!142720 (MissingVacant!2064 i!1256))))))

(assert (=> b!289218 (= lt!142723 (= lt!142720 (MissingZero!2064 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14555 (_ BitVec 32)) SeekEntryResult!2064)

(assert (=> b!289218 (= lt!142720 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289219 () Bool)

(declare-fun res!150884 () Bool)

(assert (=> b!289219 (=> (not res!150884) (not e!183120))))

(declare-fun arrayContainsKey!0 (array!14555 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289219 (= res!150884 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289220 () Bool)

(declare-fun e!183123 () Bool)

(assert (=> b!289220 (= e!183123 (not true))))

(declare-fun lt!142721 () SeekEntryResult!2064)

(assert (=> b!289220 (and (= (select (arr!6904 a!3312) (index!10428 lt!142721)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10428 lt!142721) i!1256))))

(declare-fun b!289221 () Bool)

(declare-fun res!150882 () Bool)

(assert (=> b!289221 (=> (not res!150882) (not e!183120))))

(assert (=> b!289221 (= res!150882 (and (= (size!7256 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7256 a!3312))))))

(declare-fun b!289222 () Bool)

(declare-fun res!150880 () Bool)

(assert (=> b!289222 (=> (not res!150880) (not e!183121))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14555 (_ BitVec 32)) Bool)

(assert (=> b!289222 (= res!150880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289223 () Bool)

(declare-fun e!183124 () Bool)

(assert (=> b!289223 (= e!183121 e!183124)))

(declare-fun res!150878 () Bool)

(assert (=> b!289223 (=> (not res!150878) (not e!183124))))

(assert (=> b!289223 (= res!150878 lt!142723)))

(declare-fun lt!142722 () (_ BitVec 32))

(declare-fun lt!142724 () SeekEntryResult!2064)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14555 (_ BitVec 32)) SeekEntryResult!2064)

(assert (=> b!289223 (= lt!142724 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142722 k!2524 (array!14556 (store (arr!6904 a!3312) i!1256 k!2524) (size!7256 a!3312)) mask!3809))))

(assert (=> b!289223 (= lt!142721 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142722 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289223 (= lt!142722 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289224 () Bool)

(assert (=> b!289224 (= e!183124 e!183123)))

(declare-fun res!150885 () Bool)

(assert (=> b!289224 (=> (not res!150885) (not e!183123))))

(declare-fun lt!142719 () Bool)

(assert (=> b!289224 (= res!150885 (and (or lt!142719 (not (undefined!2876 lt!142721))) (or lt!142719 (not (= (select (arr!6904 a!3312) (index!10428 lt!142721)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142719 (not (= (select (arr!6904 a!3312) (index!10428 lt!142721)) k!2524))) (not lt!142719)))))

(assert (=> b!289224 (= lt!142719 (not (is-Intermediate!2064 lt!142721)))))

(assert (= (and start!28252 res!150879) b!289221))

(assert (= (and b!289221 res!150882) b!289217))

(assert (= (and b!289217 res!150883) b!289219))

(assert (= (and b!289219 res!150884) b!289218))

(assert (= (and b!289218 res!150881) b!289222))

(assert (= (and b!289222 res!150880) b!289223))

(assert (= (and b!289223 res!150878) b!289224))

(assert (= (and b!289224 res!150885) b!289220))

(declare-fun m!303421 () Bool)

(assert (=> b!289222 m!303421))

(declare-fun m!303423 () Bool)

(assert (=> b!289217 m!303423))

(declare-fun m!303425 () Bool)

(assert (=> b!289220 m!303425))

(declare-fun m!303427 () Bool)

(assert (=> b!289218 m!303427))

(declare-fun m!303429 () Bool)

(assert (=> b!289223 m!303429))

(declare-fun m!303431 () Bool)

(assert (=> b!289223 m!303431))

(declare-fun m!303433 () Bool)

(assert (=> b!289223 m!303433))

(declare-fun m!303435 () Bool)

(assert (=> b!289223 m!303435))

(assert (=> b!289224 m!303425))

(declare-fun m!303437 () Bool)

(assert (=> start!28252 m!303437))

(declare-fun m!303439 () Bool)

(assert (=> start!28252 m!303439))

(declare-fun m!303441 () Bool)

(assert (=> b!289219 m!303441))

(push 1)

