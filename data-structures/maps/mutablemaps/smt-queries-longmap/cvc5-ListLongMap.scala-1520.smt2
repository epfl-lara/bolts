; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28660 () Bool)

(assert start!28660)

(declare-fun b!292831 () Bool)

(declare-fun e!185222 () Bool)

(declare-fun e!185223 () Bool)

(assert (=> b!292831 (= e!185222 e!185223)))

(declare-fun res!153928 () Bool)

(assert (=> b!292831 (=> (not res!153928) (not e!185223))))

(declare-datatypes ((SeekEntryResult!2196 0))(
  ( (MissingZero!2196 (index!10954 (_ BitVec 32))) (Found!2196 (index!10955 (_ BitVec 32))) (Intermediate!2196 (undefined!3008 Bool) (index!10956 (_ BitVec 32)) (x!29107 (_ BitVec 32))) (Undefined!2196) (MissingVacant!2196 (index!10957 (_ BitVec 32))) )
))
(declare-fun lt!145157 () SeekEntryResult!2196)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292831 (= res!153928 (or (= lt!145157 (MissingZero!2196 i!1256)) (= lt!145157 (MissingVacant!2196 i!1256))))))

(declare-datatypes ((array!14828 0))(
  ( (array!14829 (arr!7036 (Array (_ BitVec 32) (_ BitVec 64))) (size!7388 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14828)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14828 (_ BitVec 32)) SeekEntryResult!2196)

(assert (=> b!292831 (= lt!145157 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292832 () Bool)

(declare-fun res!153930 () Bool)

(assert (=> b!292832 (=> (not res!153930) (not e!185222))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292832 (= res!153930 (validKeyInArray!0 k!2524))))

(declare-fun b!292833 () Bool)

(assert (=> b!292833 (= e!185223 false)))

(declare-fun lt!145154 () (_ BitVec 32))

(declare-fun lt!145155 () SeekEntryResult!2196)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14828 (_ BitVec 32)) SeekEntryResult!2196)

(assert (=> b!292833 (= lt!145155 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145154 k!2524 (array!14829 (store (arr!7036 a!3312) i!1256 k!2524) (size!7388 a!3312)) mask!3809))))

(declare-fun lt!145156 () SeekEntryResult!2196)

(assert (=> b!292833 (= lt!145156 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145154 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292833 (= lt!145154 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!153929 () Bool)

(assert (=> start!28660 (=> (not res!153929) (not e!185222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28660 (= res!153929 (validMask!0 mask!3809))))

(assert (=> start!28660 e!185222))

(assert (=> start!28660 true))

(declare-fun array_inv!4990 (array!14828) Bool)

(assert (=> start!28660 (array_inv!4990 a!3312)))

(declare-fun b!292834 () Bool)

(declare-fun res!153927 () Bool)

(assert (=> b!292834 (=> (not res!153927) (not e!185222))))

(declare-fun arrayContainsKey!0 (array!14828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292834 (= res!153927 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292835 () Bool)

(declare-fun res!153926 () Bool)

(assert (=> b!292835 (=> (not res!153926) (not e!185223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14828 (_ BitVec 32)) Bool)

(assert (=> b!292835 (= res!153926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292836 () Bool)

(declare-fun res!153925 () Bool)

(assert (=> b!292836 (=> (not res!153925) (not e!185222))))

(assert (=> b!292836 (= res!153925 (and (= (size!7388 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7388 a!3312))))))

(assert (= (and start!28660 res!153929) b!292836))

(assert (= (and b!292836 res!153925) b!292832))

(assert (= (and b!292832 res!153930) b!292834))

(assert (= (and b!292834 res!153927) b!292831))

(assert (= (and b!292831 res!153928) b!292835))

(assert (= (and b!292835 res!153926) b!292833))

(declare-fun m!306655 () Bool)

(assert (=> start!28660 m!306655))

(declare-fun m!306657 () Bool)

(assert (=> start!28660 m!306657))

(declare-fun m!306659 () Bool)

(assert (=> b!292834 m!306659))

(declare-fun m!306661 () Bool)

(assert (=> b!292833 m!306661))

(declare-fun m!306663 () Bool)

(assert (=> b!292833 m!306663))

(declare-fun m!306665 () Bool)

(assert (=> b!292833 m!306665))

(declare-fun m!306667 () Bool)

(assert (=> b!292833 m!306667))

(declare-fun m!306669 () Bool)

(assert (=> b!292831 m!306669))

(declare-fun m!306671 () Bool)

(assert (=> b!292835 m!306671))

(declare-fun m!306673 () Bool)

(assert (=> b!292832 m!306673))

(push 1)

