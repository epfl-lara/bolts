; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118250 () Bool)

(assert start!118250)

(declare-fun res!924612 () Bool)

(declare-fun e!783862 () Bool)

(assert (=> start!118250 (=> (not res!924612) (not e!783862))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118250 (= res!924612 (validMask!0 mask!2987))))

(assert (=> start!118250 e!783862))

(assert (=> start!118250 true))

(declare-datatypes ((array!94471 0))(
  ( (array!94472 (arr!45609 (Array (_ BitVec 32) (_ BitVec 64))) (size!46160 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94471)

(declare-fun array_inv!34554 (array!94471) Bool)

(assert (=> start!118250 (array_inv!34554 a!2938)))

(declare-fun b!1382909 () Bool)

(declare-fun res!924610 () Bool)

(assert (=> b!1382909 (=> (not res!924610) (not e!783862))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1382909 (= res!924610 (and (= (size!46160 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46160 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46160 a!2938))))))

(declare-fun b!1382910 () Bool)

(declare-fun res!924611 () Bool)

(assert (=> b!1382910 (=> (not res!924611) (not e!783862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382910 (= res!924611 (validKeyInArray!0 (select (arr!45609 a!2938) i!1065)))))

(declare-fun b!1382911 () Bool)

(assert (=> b!1382911 (= e!783862 false)))

(declare-fun lt!608452 () Bool)

(declare-datatypes ((List!32317 0))(
  ( (Nil!32314) (Cons!32313 (h!33522 (_ BitVec 64)) (t!47018 List!32317)) )
))
(declare-fun arrayNoDuplicates!0 (array!94471 (_ BitVec 32) List!32317) Bool)

(assert (=> b!1382911 (= lt!608452 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32314))))

(assert (= (and start!118250 res!924612) b!1382909))

(assert (= (and b!1382909 res!924610) b!1382910))

(assert (= (and b!1382910 res!924611) b!1382911))

(declare-fun m!1268077 () Bool)

(assert (=> start!118250 m!1268077))

(declare-fun m!1268079 () Bool)

(assert (=> start!118250 m!1268079))

(declare-fun m!1268081 () Bool)

(assert (=> b!1382910 m!1268081))

(assert (=> b!1382910 m!1268081))

(declare-fun m!1268083 () Bool)

(assert (=> b!1382910 m!1268083))

(declare-fun m!1268085 () Bool)

(assert (=> b!1382911 m!1268085))

(push 1)

(assert (not start!118250))

(assert (not b!1382911))

(assert (not b!1382910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

