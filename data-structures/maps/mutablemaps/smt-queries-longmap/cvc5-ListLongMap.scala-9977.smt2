; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117842 () Bool)

(assert start!117842)

(declare-fun res!922897 () Bool)

(declare-fun e!782930 () Bool)

(assert (=> start!117842 (=> (not res!922897) (not e!782930))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117842 (= res!922897 (validMask!0 mask!3034))))

(assert (=> start!117842 e!782930))

(assert (=> start!117842 true))

(declare-datatypes ((array!94210 0))(
  ( (array!94211 (arr!45487 (Array (_ BitVec 32) (_ BitVec 64))) (size!46038 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94210)

(declare-fun array_inv!34432 (array!94210) Bool)

(assert (=> start!117842 (array_inv!34432 a!2971)))

(declare-fun b!1381160 () Bool)

(declare-fun res!922898 () Bool)

(assert (=> b!1381160 (=> (not res!922898) (not e!782930))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381160 (= res!922898 (and (= (size!46038 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46038 a!2971))))))

(declare-fun b!1381161 () Bool)

(declare-fun res!922899 () Bool)

(assert (=> b!1381161 (=> (not res!922899) (not e!782930))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381161 (= res!922899 (validKeyInArray!0 (select (arr!45487 a!2971) i!1094)))))

(declare-fun b!1381162 () Bool)

(assert (=> b!1381162 (= e!782930 (and (bvsle #b00000000000000000000000000000000 (size!46038 a!2971)) (bvsge (size!46038 a!2971) #b01111111111111111111111111111111)))))

(assert (= (and start!117842 res!922897) b!1381160))

(assert (= (and b!1381160 res!922898) b!1381161))

(assert (= (and b!1381161 res!922899) b!1381162))

(declare-fun m!1266429 () Bool)

(assert (=> start!117842 m!1266429))

(declare-fun m!1266431 () Bool)

(assert (=> start!117842 m!1266431))

(declare-fun m!1266433 () Bool)

(assert (=> b!1381161 m!1266433))

(assert (=> b!1381161 m!1266433))

(declare-fun m!1266435 () Bool)

(assert (=> b!1381161 m!1266435))

(push 1)

(assert (not b!1381161))

(assert (not start!117842))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

