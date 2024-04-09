; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27940 () Bool)

(assert start!27940)

(declare-fun res!148885 () Bool)

(declare-fun e!181724 () Bool)

(assert (=> start!27940 (=> (not res!148885) (not e!181724))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27940 (= res!148885 (validMask!0 mask!3809))))

(assert (=> start!27940 e!181724))

(assert (=> start!27940 true))

(declare-datatypes ((array!14378 0))(
  ( (array!14379 (arr!6820 (Array (_ BitVec 32) (_ BitVec 64))) (size!7172 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14378)

(declare-fun array_inv!4774 (array!14378) Bool)

(assert (=> start!27940 (array_inv!4774 a!3312)))

(declare-fun b!286837 () Bool)

(declare-fun res!148886 () Bool)

(assert (=> b!286837 (=> (not res!148886) (not e!181724))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286837 (= res!148886 (and (= (size!7172 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7172 a!3312))))))

(declare-fun b!286838 () Bool)

(declare-fun e!181726 () Bool)

(assert (=> b!286838 (= e!181726 false)))

(declare-fun lt!141311 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286838 (= lt!141311 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!286839 () Bool)

(declare-fun res!148890 () Bool)

(assert (=> b!286839 (=> (not res!148890) (not e!181724))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286839 (= res!148890 (validKeyInArray!0 k!2524))))

(declare-fun b!286840 () Bool)

(declare-fun res!148887 () Bool)

(assert (=> b!286840 (=> (not res!148887) (not e!181726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14378 (_ BitVec 32)) Bool)

(assert (=> b!286840 (= res!148887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286841 () Bool)

(assert (=> b!286841 (= e!181724 e!181726)))

(declare-fun res!148889 () Bool)

(assert (=> b!286841 (=> (not res!148889) (not e!181726))))

(declare-datatypes ((SeekEntryResult!1980 0))(
  ( (MissingZero!1980 (index!10090 (_ BitVec 32))) (Found!1980 (index!10091 (_ BitVec 32))) (Intermediate!1980 (undefined!2792 Bool) (index!10092 (_ BitVec 32)) (x!28279 (_ BitVec 32))) (Undefined!1980) (MissingVacant!1980 (index!10093 (_ BitVec 32))) )
))
(declare-fun lt!141310 () SeekEntryResult!1980)

(assert (=> b!286841 (= res!148889 (or (= lt!141310 (MissingZero!1980 i!1256)) (= lt!141310 (MissingVacant!1980 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14378 (_ BitVec 32)) SeekEntryResult!1980)

(assert (=> b!286841 (= lt!141310 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286842 () Bool)

(declare-fun res!148888 () Bool)

(assert (=> b!286842 (=> (not res!148888) (not e!181724))))

(declare-fun arrayContainsKey!0 (array!14378 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286842 (= res!148888 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!27940 res!148885) b!286837))

(assert (= (and b!286837 res!148886) b!286839))

(assert (= (and b!286839 res!148890) b!286842))

(assert (= (and b!286842 res!148888) b!286841))

(assert (= (and b!286841 res!148889) b!286840))

(assert (= (and b!286840 res!148887) b!286838))

(declare-fun m!301447 () Bool)

(assert (=> b!286842 m!301447))

(declare-fun m!301449 () Bool)

(assert (=> b!286841 m!301449))

(declare-fun m!301451 () Bool)

(assert (=> start!27940 m!301451))

(declare-fun m!301453 () Bool)

(assert (=> start!27940 m!301453))

(declare-fun m!301455 () Bool)

(assert (=> b!286840 m!301455))

(declare-fun m!301457 () Bool)

(assert (=> b!286839 m!301457))

(declare-fun m!301459 () Bool)

(assert (=> b!286838 m!301459))

(push 1)

(assert (not b!286842))

(assert (not b!286840))

(assert (not b!286838))

(assert (not b!286841))

(assert (not start!27940))

(assert (not b!286839))

(check-sat)

(pop 1)

