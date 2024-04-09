; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81722 () Bool)

(assert start!81722)

(declare-fun b!953312 () Bool)

(declare-fun res!638642 () Bool)

(declare-fun e!537007 () Bool)

(assert (=> b!953312 (=> (not res!638642) (not e!537007))))

(declare-fun k!2725 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953312 (= res!638642 (validKeyInArray!0 k!2725))))

(declare-fun res!638639 () Bool)

(assert (=> start!81722 (=> (not res!638639) (not e!537007))))

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81722 (= res!638639 (validMask!0 mask!4034))))

(assert (=> start!81722 e!537007))

(assert (=> start!81722 true))

(declare-datatypes ((array!57756 0))(
  ( (array!57757 (arr!27760 (Array (_ BitVec 32) (_ BitVec 64))) (size!28240 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57756)

(declare-fun array_inv!21493 (array!57756) Bool)

(assert (=> start!81722 (array_inv!21493 a!3460)))

(declare-fun b!953310 () Bool)

(declare-fun res!638640 () Bool)

(assert (=> b!953310 (=> (not res!638640) (not e!537007))))

(assert (=> b!953310 (= res!638640 (= (size!28240 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953313 () Bool)

(assert (=> b!953313 (= e!537007 false)))

(declare-datatypes ((SeekEntryResult!9168 0))(
  ( (MissingZero!9168 (index!39042 (_ BitVec 32))) (Found!9168 (index!39043 (_ BitVec 32))) (Intermediate!9168 (undefined!9980 Bool) (index!39044 (_ BitVec 32)) (x!82057 (_ BitVec 32))) (Undefined!9168) (MissingVacant!9168 (index!39045 (_ BitVec 32))) )
))
(declare-fun lt!429666 () SeekEntryResult!9168)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57756 (_ BitVec 32)) SeekEntryResult!9168)

(assert (=> b!953313 (= lt!429666 (seekEntryOrOpen!0 k!2725 a!3460 mask!4034))))

(declare-fun b!953311 () Bool)

(declare-fun res!638641 () Bool)

(assert (=> b!953311 (=> (not res!638641) (not e!537007))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57756 (_ BitVec 32)) Bool)

(assert (=> b!953311 (= res!638641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(assert (= (and start!81722 res!638639) b!953310))

(assert (= (and b!953310 res!638640) b!953311))

(assert (= (and b!953311 res!638641) b!953312))

(assert (= (and b!953312 res!638642) b!953313))

(declare-fun m!885469 () Bool)

(assert (=> b!953312 m!885469))

(declare-fun m!885471 () Bool)

(assert (=> start!81722 m!885471))

(declare-fun m!885473 () Bool)

(assert (=> start!81722 m!885473))

(declare-fun m!885475 () Bool)

(assert (=> b!953313 m!885475))

(declare-fun m!885477 () Bool)

(assert (=> b!953311 m!885477))

(push 1)

(assert (not b!953313))

(assert (not b!953312))

(assert (not start!81722))

(assert (not b!953311))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

