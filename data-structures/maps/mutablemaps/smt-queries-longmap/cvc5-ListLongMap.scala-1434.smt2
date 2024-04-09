; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27778 () Bool)

(assert start!27778)

(declare-fun b!285980 () Bool)

(declare-fun res!148172 () Bool)

(declare-fun e!181263 () Bool)

(assert (=> b!285980 (=> (not res!148172) (not e!181263))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14288 0))(
  ( (array!14289 (arr!6778 (Array (_ BitVec 32) (_ BitVec 64))) (size!7130 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14288)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1938 0))(
  ( (MissingZero!1938 (index!9922 (_ BitVec 32))) (Found!1938 (index!9923 (_ BitVec 32))) (Intermediate!1938 (undefined!2750 Bool) (index!9924 (_ BitVec 32)) (x!28122 (_ BitVec 32))) (Undefined!1938) (MissingVacant!1938 (index!9925 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14288 (_ BitVec 32)) SeekEntryResult!1938)

(assert (=> b!285980 (= res!148172 (not (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) (MissingZero!1938 i!1256))))))

(declare-fun res!148171 () Bool)

(assert (=> start!27778 (=> (not res!148171) (not e!181263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27778 (= res!148171 (validMask!0 mask!3809))))

(assert (=> start!27778 e!181263))

(assert (=> start!27778 true))

(declare-fun array_inv!4732 (array!14288) Bool)

(assert (=> start!27778 (array_inv!4732 a!3312)))

(declare-fun b!285981 () Bool)

(declare-fun res!148170 () Bool)

(assert (=> b!285981 (=> (not res!148170) (not e!181263))))

(assert (=> b!285981 (= res!148170 (and (= (size!7130 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7130 a!3312))))))

(declare-fun b!285982 () Bool)

(declare-fun res!148169 () Bool)

(assert (=> b!285982 (=> (not res!148169) (not e!181263))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285982 (= res!148169 (validKeyInArray!0 k!2524))))

(declare-fun b!285983 () Bool)

(assert (=> b!285983 (= e!181263 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-fun b!285984 () Bool)

(declare-fun res!148173 () Bool)

(assert (=> b!285984 (=> (not res!148173) (not e!181263))))

(declare-fun arrayContainsKey!0 (array!14288 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285984 (= res!148173 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!27778 res!148171) b!285981))

(assert (= (and b!285981 res!148170) b!285982))

(assert (= (and b!285982 res!148169) b!285984))

(assert (= (and b!285984 res!148173) b!285980))

(assert (= (and b!285980 res!148172) b!285983))

(declare-fun m!300793 () Bool)

(assert (=> b!285980 m!300793))

(declare-fun m!300795 () Bool)

(assert (=> start!27778 m!300795))

(declare-fun m!300797 () Bool)

(assert (=> start!27778 m!300797))

(declare-fun m!300799 () Bool)

(assert (=> b!285982 m!300799))

(declare-fun m!300801 () Bool)

(assert (=> b!285984 m!300801))

(push 1)

(assert (not b!285982))

(assert (not b!285984))

(assert (not b!285980))

(assert (not start!27778))

(check-sat)

