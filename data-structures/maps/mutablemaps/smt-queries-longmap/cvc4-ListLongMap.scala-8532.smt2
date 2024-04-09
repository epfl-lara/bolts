; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104104 () Bool)

(assert start!104104)

(declare-fun res!830398 () Bool)

(declare-fun e!705631 () Bool)

(assert (=> start!104104 (=> (not res!830398) (not e!705631))))

(declare-datatypes ((array!80070 0))(
  ( (array!80071 (arr!38621 (Array (_ BitVec 32) (_ BitVec 64))) (size!39158 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80070)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104104 (= res!830398 (and (bvslt (size!39158 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39158 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39158 a!3892))))))

(assert (=> start!104104 e!705631))

(declare-fun array_inv!29397 (array!80070) Bool)

(assert (=> start!104104 (array_inv!29397 a!3892)))

(assert (=> start!104104 true))

(declare-fun b!1244718 () Bool)

(assert (=> b!1244718 (= e!705631 false)))

(declare-fun lt!562783 () Bool)

(declare-datatypes ((List!27602 0))(
  ( (Nil!27599) (Cons!27598 (h!28807 (_ BitVec 64)) (t!41078 List!27602)) )
))
(declare-fun arrayNoDuplicates!0 (array!80070 (_ BitVec 32) List!27602) Bool)

(assert (=> b!1244718 (= lt!562783 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27599))))

(assert (= (and start!104104 res!830398) b!1244718))

(declare-fun m!1146983 () Bool)

(assert (=> start!104104 m!1146983))

(declare-fun m!1146985 () Bool)

(assert (=> b!1244718 m!1146985))

(push 1)

(assert (not b!1244718))

(assert (not start!104104))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

