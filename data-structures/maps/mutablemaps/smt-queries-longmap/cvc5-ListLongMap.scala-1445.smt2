; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27880 () Bool)

(assert start!27880)

(declare-fun res!148685 () Bool)

(declare-fun e!181571 () Bool)

(assert (=> start!27880 (=> (not res!148685) (not e!181571))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27880 (= res!148685 (validMask!0 mask!3809))))

(assert (=> start!27880 e!181571))

(assert (=> start!27880 true))

(declare-datatypes ((array!14357 0))(
  ( (array!14358 (arr!6811 (Array (_ BitVec 32) (_ BitVec 64))) (size!7163 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14357)

(declare-fun array_inv!4765 (array!14357) Bool)

(assert (=> start!27880 (array_inv!4765 a!3312)))

(declare-fun b!286567 () Bool)

(declare-fun res!148688 () Bool)

(declare-fun e!181573 () Bool)

(assert (=> b!286567 (=> (not res!148688) (not e!181573))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14357 (_ BitVec 32)) Bool)

(assert (=> b!286567 (= res!148688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286568 () Bool)

(assert (=> b!286568 (= e!181571 e!181573)))

(declare-fun res!148684 () Bool)

(assert (=> b!286568 (=> (not res!148684) (not e!181573))))

(declare-datatypes ((SeekEntryResult!1971 0))(
  ( (MissingZero!1971 (index!10054 (_ BitVec 32))) (Found!1971 (index!10055 (_ BitVec 32))) (Intermediate!1971 (undefined!2783 Bool) (index!10056 (_ BitVec 32)) (x!28243 (_ BitVec 32))) (Undefined!1971) (MissingVacant!1971 (index!10057 (_ BitVec 32))) )
))
(declare-fun lt!141184 () SeekEntryResult!1971)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286568 (= res!148684 (or (= lt!141184 (MissingZero!1971 i!1256)) (= lt!141184 (MissingVacant!1971 i!1256))))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14357 (_ BitVec 32)) SeekEntryResult!1971)

(assert (=> b!286568 (= lt!141184 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286569 () Bool)

(declare-fun res!148687 () Bool)

(assert (=> b!286569 (=> (not res!148687) (not e!181571))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286569 (= res!148687 (validKeyInArray!0 k!2524))))

(declare-fun b!286570 () Bool)

(declare-fun res!148689 () Bool)

(assert (=> b!286570 (=> (not res!148689) (not e!181571))))

(assert (=> b!286570 (= res!148689 (and (= (size!7163 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7163 a!3312))))))

(declare-fun b!286571 () Bool)

(assert (=> b!286571 (= e!181573 false)))

(declare-fun lt!141185 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286571 (= lt!141185 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!286572 () Bool)

(declare-fun res!148686 () Bool)

(assert (=> b!286572 (=> (not res!148686) (not e!181571))))

(declare-fun arrayContainsKey!0 (array!14357 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286572 (= res!148686 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!27880 res!148685) b!286570))

(assert (= (and b!286570 res!148689) b!286569))

(assert (= (and b!286569 res!148687) b!286572))

(assert (= (and b!286572 res!148686) b!286568))

(assert (= (and b!286568 res!148684) b!286567))

(assert (= (and b!286567 res!148688) b!286571))

(declare-fun m!301243 () Bool)

(assert (=> start!27880 m!301243))

(declare-fun m!301245 () Bool)

(assert (=> start!27880 m!301245))

(declare-fun m!301247 () Bool)

(assert (=> b!286569 m!301247))

(declare-fun m!301249 () Bool)

(assert (=> b!286567 m!301249))

(declare-fun m!301251 () Bool)

(assert (=> b!286568 m!301251))

(declare-fun m!301253 () Bool)

(assert (=> b!286571 m!301253))

(declare-fun m!301255 () Bool)

(assert (=> b!286572 m!301255))

(push 1)

(assert (not b!286567))

(assert (not b!286572))

(assert (not b!286571))

(assert (not start!27880))

(assert (not b!286569))

(assert (not b!286568))

(check-sat)

(pop 1)

