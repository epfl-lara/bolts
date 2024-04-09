; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27788 () Bool)

(assert start!27788)

(declare-fun b!286047 () Bool)

(declare-fun res!148237 () Bool)

(declare-fun e!181293 () Bool)

(assert (=> b!286047 (=> (not res!148237) (not e!181293))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14298 0))(
  ( (array!14299 (arr!6783 (Array (_ BitVec 32) (_ BitVec 64))) (size!7135 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14298)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!286047 (= res!148237 (and (= (size!7135 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7135 a!3312))))))

(declare-fun b!286048 () Bool)

(declare-fun res!148238 () Bool)

(assert (=> b!286048 (=> (not res!148238) (not e!181293))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286048 (= res!148238 (validKeyInArray!0 k!2524))))

(declare-fun b!286049 () Bool)

(declare-fun res!148236 () Bool)

(assert (=> b!286049 (=> (not res!148236) (not e!181293))))

(declare-fun arrayContainsKey!0 (array!14298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286049 (= res!148236 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286050 () Bool)

(assert (=> b!286050 (= e!181293 false)))

(declare-datatypes ((SeekEntryResult!1943 0))(
  ( (MissingZero!1943 (index!9942 (_ BitVec 32))) (Found!1943 (index!9943 (_ BitVec 32))) (Intermediate!1943 (undefined!2755 Bool) (index!9944 (_ BitVec 32)) (x!28135 (_ BitVec 32))) (Undefined!1943) (MissingVacant!1943 (index!9945 (_ BitVec 32))) )
))
(declare-fun lt!141026 () SeekEntryResult!1943)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14298 (_ BitVec 32)) SeekEntryResult!1943)

(assert (=> b!286050 (= lt!141026 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!148239 () Bool)

(assert (=> start!27788 (=> (not res!148239) (not e!181293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27788 (= res!148239 (validMask!0 mask!3809))))

(assert (=> start!27788 e!181293))

(assert (=> start!27788 true))

(declare-fun array_inv!4737 (array!14298) Bool)

(assert (=> start!27788 (array_inv!4737 a!3312)))

(assert (= (and start!27788 res!148239) b!286047))

(assert (= (and b!286047 res!148237) b!286048))

(assert (= (and b!286048 res!148238) b!286049))

(assert (= (and b!286049 res!148236) b!286050))

(declare-fun m!300843 () Bool)

(assert (=> b!286048 m!300843))

(declare-fun m!300845 () Bool)

(assert (=> b!286049 m!300845))

(declare-fun m!300847 () Bool)

(assert (=> b!286050 m!300847))

(declare-fun m!300849 () Bool)

(assert (=> start!27788 m!300849))

(declare-fun m!300851 () Bool)

(assert (=> start!27788 m!300851))

(push 1)

(assert (not b!286048))

(assert (not start!27788))

(assert (not b!286049))

(assert (not b!286050))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

