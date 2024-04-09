; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27934 () Bool)

(assert start!27934)

(declare-fun b!286783 () Bool)

(declare-fun res!148834 () Bool)

(declare-fun e!181698 () Bool)

(assert (=> b!286783 (=> (not res!148834) (not e!181698))))

(declare-datatypes ((array!14372 0))(
  ( (array!14373 (arr!6817 (Array (_ BitVec 32) (_ BitVec 64))) (size!7169 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14372)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14372 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286783 (= res!148834 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286784 () Bool)

(declare-fun res!148831 () Bool)

(assert (=> b!286784 (=> (not res!148831) (not e!181698))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!286784 (= res!148831 (and (= (size!7169 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7169 a!3312))))))

(declare-fun res!148836 () Bool)

(assert (=> start!27934 (=> (not res!148836) (not e!181698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27934 (= res!148836 (validMask!0 mask!3809))))

(assert (=> start!27934 e!181698))

(assert (=> start!27934 true))

(declare-fun array_inv!4771 (array!14372) Bool)

(assert (=> start!27934 (array_inv!4771 a!3312)))

(declare-fun b!286785 () Bool)

(declare-fun res!148833 () Bool)

(declare-fun e!181699 () Bool)

(assert (=> b!286785 (=> (not res!148833) (not e!181699))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14372 (_ BitVec 32)) Bool)

(assert (=> b!286785 (= res!148833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286786 () Bool)

(assert (=> b!286786 (= e!181699 false)))

(declare-fun lt!141292 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286786 (= lt!141292 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!286787 () Bool)

(assert (=> b!286787 (= e!181698 e!181699)))

(declare-fun res!148835 () Bool)

(assert (=> b!286787 (=> (not res!148835) (not e!181699))))

(declare-datatypes ((SeekEntryResult!1977 0))(
  ( (MissingZero!1977 (index!10078 (_ BitVec 32))) (Found!1977 (index!10079 (_ BitVec 32))) (Intermediate!1977 (undefined!2789 Bool) (index!10080 (_ BitVec 32)) (x!28268 (_ BitVec 32))) (Undefined!1977) (MissingVacant!1977 (index!10081 (_ BitVec 32))) )
))
(declare-fun lt!141293 () SeekEntryResult!1977)

(assert (=> b!286787 (= res!148835 (or (= lt!141293 (MissingZero!1977 i!1256)) (= lt!141293 (MissingVacant!1977 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14372 (_ BitVec 32)) SeekEntryResult!1977)

(assert (=> b!286787 (= lt!141293 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286788 () Bool)

(declare-fun res!148832 () Bool)

(assert (=> b!286788 (=> (not res!148832) (not e!181698))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286788 (= res!148832 (validKeyInArray!0 k!2524))))

(assert (= (and start!27934 res!148836) b!286784))

(assert (= (and b!286784 res!148831) b!286788))

(assert (= (and b!286788 res!148832) b!286783))

(assert (= (and b!286783 res!148834) b!286787))

(assert (= (and b!286787 res!148835) b!286785))

(assert (= (and b!286785 res!148833) b!286786))

(declare-fun m!301405 () Bool)

(assert (=> b!286783 m!301405))

(declare-fun m!301407 () Bool)

(assert (=> start!27934 m!301407))

(declare-fun m!301409 () Bool)

(assert (=> start!27934 m!301409))

(declare-fun m!301411 () Bool)

(assert (=> b!286787 m!301411))

(declare-fun m!301413 () Bool)

(assert (=> b!286788 m!301413))

(declare-fun m!301415 () Bool)

(assert (=> b!286785 m!301415))

(declare-fun m!301417 () Bool)

(assert (=> b!286786 m!301417))

(push 1)

(assert (not b!286783))

(assert (not b!286787))

(assert (not b!286788))

(assert (not b!286785))

(assert (not start!27934))

(assert (not b!286786))

(check-sat)

