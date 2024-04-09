; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27772 () Bool)

(assert start!27772)

(declare-fun b!285945 () Bool)

(declare-fun e!181246 () Bool)

(assert (=> b!285945 (= e!181246 false)))

(declare-datatypes ((SeekEntryResult!1935 0))(
  ( (MissingZero!1935 (index!9910 (_ BitVec 32))) (Found!1935 (index!9911 (_ BitVec 32))) (Intermediate!1935 (undefined!2747 Bool) (index!9912 (_ BitVec 32)) (x!28111 (_ BitVec 32))) (Undefined!1935) (MissingVacant!1935 (index!9913 (_ BitVec 32))) )
))
(declare-fun lt!141011 () SeekEntryResult!1935)

(declare-datatypes ((array!14282 0))(
  ( (array!14283 (arr!6775 (Array (_ BitVec 32) (_ BitVec 64))) (size!7127 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14282)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14282 (_ BitVec 32)) SeekEntryResult!1935)

(assert (=> b!285945 (= lt!141011 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!285942 () Bool)

(declare-fun res!148132 () Bool)

(assert (=> b!285942 (=> (not res!148132) (not e!181246))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!285942 (= res!148132 (and (= (size!7127 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7127 a!3312))))))

(declare-fun res!148131 () Bool)

(assert (=> start!27772 (=> (not res!148131) (not e!181246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27772 (= res!148131 (validMask!0 mask!3809))))

(assert (=> start!27772 e!181246))

(assert (=> start!27772 true))

(declare-fun array_inv!4729 (array!14282) Bool)

(assert (=> start!27772 (array_inv!4729 a!3312)))

(declare-fun b!285944 () Bool)

(declare-fun res!148133 () Bool)

(assert (=> b!285944 (=> (not res!148133) (not e!181246))))

(declare-fun arrayContainsKey!0 (array!14282 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285944 (= res!148133 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!285943 () Bool)

(declare-fun res!148134 () Bool)

(assert (=> b!285943 (=> (not res!148134) (not e!181246))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285943 (= res!148134 (validKeyInArray!0 k!2524))))

(assert (= (and start!27772 res!148131) b!285942))

(assert (= (and b!285942 res!148132) b!285943))

(assert (= (and b!285943 res!148134) b!285944))

(assert (= (and b!285944 res!148133) b!285945))

(declare-fun m!300763 () Bool)

(assert (=> b!285945 m!300763))

(declare-fun m!300765 () Bool)

(assert (=> start!27772 m!300765))

(declare-fun m!300767 () Bool)

(assert (=> start!27772 m!300767))

(declare-fun m!300769 () Bool)

(assert (=> b!285944 m!300769))

(declare-fun m!300771 () Bool)

(assert (=> b!285943 m!300771))

(push 1)

(assert (not b!285944))

(assert (not start!27772))

(assert (not b!285945))

(assert (not b!285943))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

