; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28316 () Bool)

(assert start!28316)

(declare-fun b!290005 () Bool)

(declare-fun res!151524 () Bool)

(declare-fun e!183550 () Bool)

(assert (=> b!290005 (=> (not res!151524) (not e!183550))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14619 0))(
  ( (array!14620 (arr!6936 (Array (_ BitVec 32) (_ BitVec 64))) (size!7288 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14619)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!290005 (= res!151524 (and (= (size!7288 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7288 a!3312))))))

(declare-fun b!290006 () Bool)

(declare-fun e!183549 () Bool)

(assert (=> b!290006 (= e!183549 false)))

(declare-fun lt!143252 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2096 0))(
  ( (MissingZero!2096 (index!10554 (_ BitVec 32))) (Found!2096 (index!10555 (_ BitVec 32))) (Intermediate!2096 (undefined!2908 Bool) (index!10556 (_ BitVec 32)) (x!28717 (_ BitVec 32))) (Undefined!2096) (MissingVacant!2096 (index!10557 (_ BitVec 32))) )
))
(declare-fun lt!143255 () SeekEntryResult!2096)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14619 (_ BitVec 32)) SeekEntryResult!2096)

(assert (=> b!290006 (= lt!143255 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143252 k!2524 (array!14620 (store (arr!6936 a!3312) i!1256 k!2524) (size!7288 a!3312)) mask!3809))))

(declare-fun lt!143253 () SeekEntryResult!2096)

(assert (=> b!290006 (= lt!143253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143252 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290006 (= lt!143252 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290007 () Bool)

(assert (=> b!290007 (= e!183550 e!183549)))

(declare-fun res!151523 () Bool)

(assert (=> b!290007 (=> (not res!151523) (not e!183549))))

(declare-fun lt!143254 () SeekEntryResult!2096)

(assert (=> b!290007 (= res!151523 (or (= lt!143254 (MissingZero!2096 i!1256)) (= lt!143254 (MissingVacant!2096 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14619 (_ BitVec 32)) SeekEntryResult!2096)

(assert (=> b!290007 (= lt!143254 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290008 () Bool)

(declare-fun res!151525 () Bool)

(assert (=> b!290008 (=> (not res!151525) (not e!183550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290008 (= res!151525 (validKeyInArray!0 k!2524))))

(declare-fun b!290009 () Bool)

(declare-fun res!151522 () Bool)

(assert (=> b!290009 (=> (not res!151522) (not e!183549))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14619 (_ BitVec 32)) Bool)

(assert (=> b!290009 (= res!151522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!151527 () Bool)

(assert (=> start!28316 (=> (not res!151527) (not e!183550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28316 (= res!151527 (validMask!0 mask!3809))))

(assert (=> start!28316 e!183550))

(assert (=> start!28316 true))

(declare-fun array_inv!4890 (array!14619) Bool)

(assert (=> start!28316 (array_inv!4890 a!3312)))

(declare-fun b!290010 () Bool)

(declare-fun res!151526 () Bool)

(assert (=> b!290010 (=> (not res!151526) (not e!183550))))

(declare-fun arrayContainsKey!0 (array!14619 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290010 (= res!151526 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28316 res!151527) b!290005))

(assert (= (and b!290005 res!151524) b!290008))

(assert (= (and b!290008 res!151525) b!290010))

(assert (= (and b!290010 res!151526) b!290007))

(assert (= (and b!290007 res!151523) b!290009))

(assert (= (and b!290009 res!151522) b!290006))

(declare-fun m!304145 () Bool)

(assert (=> b!290010 m!304145))

(declare-fun m!304147 () Bool)

(assert (=> b!290009 m!304147))

(declare-fun m!304149 () Bool)

(assert (=> b!290007 m!304149))

(declare-fun m!304151 () Bool)

(assert (=> b!290008 m!304151))

(declare-fun m!304153 () Bool)

(assert (=> start!28316 m!304153))

(declare-fun m!304155 () Bool)

(assert (=> start!28316 m!304155))

(declare-fun m!304157 () Bool)

(assert (=> b!290006 m!304157))

(declare-fun m!304159 () Bool)

(assert (=> b!290006 m!304159))

(declare-fun m!304161 () Bool)

(assert (=> b!290006 m!304161))

(declare-fun m!304163 () Bool)

(assert (=> b!290006 m!304163))

(push 1)

