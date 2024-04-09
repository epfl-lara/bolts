; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25460 () Bool)

(assert start!25460)

(declare-fun b!264877 () Bool)

(declare-fun res!129426 () Bool)

(declare-fun e!171567 () Bool)

(assert (=> b!264877 (=> (not res!129426) (not e!171567))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264877 (= res!129426 (validKeyInArray!0 k!2698))))

(declare-fun b!264879 () Bool)

(assert (=> b!264879 (= e!171567 false)))

(declare-datatypes ((array!12743 0))(
  ( (array!12744 (arr!6030 (Array (_ BitVec 32) (_ BitVec 64))) (size!6382 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12743)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1232 0))(
  ( (MissingZero!1232 (index!7098 (_ BitVec 32))) (Found!1232 (index!7099 (_ BitVec 32))) (Intermediate!1232 (undefined!2044 Bool) (index!7100 (_ BitVec 32)) (x!25389 (_ BitVec 32))) (Undefined!1232) (MissingVacant!1232 (index!7101 (_ BitVec 32))) )
))
(declare-fun lt!133961 () SeekEntryResult!1232)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12743 (_ BitVec 32)) SeekEntryResult!1232)

(assert (=> b!264879 (= lt!133961 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun res!129429 () Bool)

(assert (=> start!25460 (=> (not res!129429) (not e!171567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25460 (= res!129429 (validMask!0 mask!4002))))

(assert (=> start!25460 e!171567))

(assert (=> start!25460 true))

(declare-fun array_inv!3984 (array!12743) Bool)

(assert (=> start!25460 (array_inv!3984 a!3436)))

(declare-fun b!264878 () Bool)

(declare-fun res!129427 () Bool)

(assert (=> b!264878 (=> (not res!129427) (not e!171567))))

(declare-fun arrayContainsKey!0 (array!12743 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264878 (= res!129427 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264876 () Bool)

(declare-fun res!129428 () Bool)

(assert (=> b!264876 (=> (not res!129428) (not e!171567))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264876 (= res!129428 (and (= (size!6382 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6382 a!3436))))))

(assert (= (and start!25460 res!129429) b!264876))

(assert (= (and b!264876 res!129428) b!264877))

(assert (= (and b!264877 res!129426) b!264878))

(assert (= (and b!264878 res!129427) b!264879))

(declare-fun m!281863 () Bool)

(assert (=> b!264877 m!281863))

(declare-fun m!281865 () Bool)

(assert (=> b!264879 m!281865))

(declare-fun m!281867 () Bool)

(assert (=> start!25460 m!281867))

(declare-fun m!281869 () Bool)

(assert (=> start!25460 m!281869))

(declare-fun m!281871 () Bool)

(assert (=> b!264878 m!281871))

(push 1)

(assert (not b!264878))

(assert (not start!25460))

(assert (not b!264877))

(assert (not b!264879))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

