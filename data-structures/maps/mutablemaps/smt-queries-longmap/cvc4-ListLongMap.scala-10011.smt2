; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118148 () Bool)

(assert start!118148)

(declare-fun res!924354 () Bool)

(declare-fun e!783685 () Bool)

(assert (=> start!118148 (=> (not res!924354) (not e!783685))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118148 (= res!924354 (validMask!0 mask!2987))))

(assert (=> start!118148 e!783685))

(assert (=> start!118148 true))

(declare-datatypes ((array!94428 0))(
  ( (array!94429 (arr!45591 (Array (_ BitVec 32) (_ BitVec 64))) (size!46142 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94428)

(declare-fun array_inv!34536 (array!94428) Bool)

(assert (=> start!118148 (array_inv!34536 a!2938)))

(declare-fun b!1382651 () Bool)

(declare-fun res!924353 () Bool)

(assert (=> b!1382651 (=> (not res!924353) (not e!783685))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1382651 (= res!924353 (and (= (size!46142 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46142 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46142 a!2938))))))

(declare-fun b!1382652 () Bool)

(declare-fun res!924352 () Bool)

(assert (=> b!1382652 (=> (not res!924352) (not e!783685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382652 (= res!924352 (validKeyInArray!0 (select (arr!45591 a!2938) i!1065)))))

(declare-fun b!1382653 () Bool)

(assert (=> b!1382653 (= e!783685 (bvsgt #b00000000000000000000000000000000 (size!46142 a!2938)))))

(assert (= (and start!118148 res!924354) b!1382651))

(assert (= (and b!1382651 res!924353) b!1382652))

(assert (= (and b!1382652 res!924352) b!1382653))

(declare-fun m!1267843 () Bool)

(assert (=> start!118148 m!1267843))

(declare-fun m!1267845 () Bool)

(assert (=> start!118148 m!1267845))

(declare-fun m!1267847 () Bool)

(assert (=> b!1382652 m!1267847))

(assert (=> b!1382652 m!1267847))

(declare-fun m!1267849 () Bool)

(assert (=> b!1382652 m!1267849))

(push 1)

(assert (not start!118148))

(assert (not b!1382652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

