; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27944 () Bool)

(assert start!27944)

(declare-fun b!286873 () Bool)

(declare-fun e!181744 () Bool)

(declare-fun e!181742 () Bool)

(assert (=> b!286873 (= e!181744 e!181742)))

(declare-fun res!148924 () Bool)

(assert (=> b!286873 (=> (not res!148924) (not e!181742))))

(declare-datatypes ((SeekEntryResult!1982 0))(
  ( (MissingZero!1982 (index!10098 (_ BitVec 32))) (Found!1982 (index!10099 (_ BitVec 32))) (Intermediate!1982 (undefined!2794 Bool) (index!10100 (_ BitVec 32)) (x!28281 (_ BitVec 32))) (Undefined!1982) (MissingVacant!1982 (index!10101 (_ BitVec 32))) )
))
(declare-fun lt!141323 () SeekEntryResult!1982)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286873 (= res!148924 (or (= lt!141323 (MissingZero!1982 i!1256)) (= lt!141323 (MissingVacant!1982 i!1256))))))

(declare-datatypes ((array!14382 0))(
  ( (array!14383 (arr!6822 (Array (_ BitVec 32) (_ BitVec 64))) (size!7174 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14382)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14382 (_ BitVec 32)) SeekEntryResult!1982)

(assert (=> b!286873 (= lt!141323 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286874 () Bool)

(declare-fun res!148926 () Bool)

(assert (=> b!286874 (=> (not res!148926) (not e!181742))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14382 (_ BitVec 32)) Bool)

(assert (=> b!286874 (= res!148926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286875 () Bool)

(assert (=> b!286875 (= e!181742 false)))

(declare-fun lt!141322 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286875 (= lt!141322 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!286876 () Bool)

(declare-fun res!148923 () Bool)

(assert (=> b!286876 (=> (not res!148923) (not e!181744))))

(declare-fun arrayContainsKey!0 (array!14382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286876 (= res!148923 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286877 () Bool)

(declare-fun res!148922 () Bool)

(assert (=> b!286877 (=> (not res!148922) (not e!181744))))

(assert (=> b!286877 (= res!148922 (and (= (size!7174 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7174 a!3312))))))

(declare-fun b!286878 () Bool)

(declare-fun res!148925 () Bool)

(assert (=> b!286878 (=> (not res!148925) (not e!181744))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286878 (= res!148925 (validKeyInArray!0 k!2524))))

(declare-fun res!148921 () Bool)

(assert (=> start!27944 (=> (not res!148921) (not e!181744))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27944 (= res!148921 (validMask!0 mask!3809))))

(assert (=> start!27944 e!181744))

(assert (=> start!27944 true))

(declare-fun array_inv!4776 (array!14382) Bool)

(assert (=> start!27944 (array_inv!4776 a!3312)))

(assert (= (and start!27944 res!148921) b!286877))

(assert (= (and b!286877 res!148922) b!286878))

(assert (= (and b!286878 res!148925) b!286876))

(assert (= (and b!286876 res!148923) b!286873))

(assert (= (and b!286873 res!148924) b!286874))

(assert (= (and b!286874 res!148926) b!286875))

(declare-fun m!301475 () Bool)

(assert (=> b!286876 m!301475))

(declare-fun m!301477 () Bool)

(assert (=> b!286875 m!301477))

(declare-fun m!301479 () Bool)

(assert (=> start!27944 m!301479))

(declare-fun m!301481 () Bool)

(assert (=> start!27944 m!301481))

(declare-fun m!301483 () Bool)

(assert (=> b!286873 m!301483))

(declare-fun m!301485 () Bool)

(assert (=> b!286874 m!301485))

(declare-fun m!301487 () Bool)

(assert (=> b!286878 m!301487))

(push 1)

(assert (not b!286875))

(assert (not b!286873))

(assert (not b!286878))

(assert (not start!27944))

(assert (not b!286874))

(assert (not b!286876))

(check-sat)

(pop 1)

