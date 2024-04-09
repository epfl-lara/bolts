; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104238 () Bool)

(assert start!104238)

(declare-fun res!830827 () Bool)

(declare-fun e!706063 () Bool)

(assert (=> start!104238 (=> (not res!830827) (not e!706063))))

(declare-datatypes ((array!80132 0))(
  ( (array!80133 (arr!38646 (Array (_ BitVec 32) (_ BitVec 64))) (size!39183 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80132)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104238 (= res!830827 (and (bvslt (size!39183 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39183 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39183 a!3892))))))

(assert (=> start!104238 e!706063))

(declare-fun array_inv!29422 (array!80132) Bool)

(assert (=> start!104238 (array_inv!29422 a!3892)))

(assert (=> start!104238 true))

(declare-fun b!1245219 () Bool)

(assert (=> b!1245219 (= e!706063 false)))

(declare-fun lt!562828 () Bool)

(declare-datatypes ((List!27627 0))(
  ( (Nil!27624) (Cons!27623 (h!28832 (_ BitVec 64)) (t!41103 List!27627)) )
))
(declare-fun arrayNoDuplicates!0 (array!80132 (_ BitVec 32) List!27627) Bool)

(assert (=> b!1245219 (= lt!562828 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27624))))

(assert (= (and start!104238 res!830827) b!1245219))

(declare-fun m!1147335 () Bool)

(assert (=> start!104238 m!1147335))

(declare-fun m!1147337 () Bool)

(assert (=> b!1245219 m!1147337))

(push 1)

(assert (not b!1245219))

(assert (not start!104238))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

