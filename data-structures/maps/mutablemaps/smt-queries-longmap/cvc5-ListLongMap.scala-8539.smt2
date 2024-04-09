; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104226 () Bool)

(assert start!104226)

(declare-fun res!830802 () Bool)

(declare-fun e!706027 () Bool)

(assert (=> start!104226 (=> (not res!830802) (not e!706027))))

(declare-datatypes ((array!80120 0))(
  ( (array!80121 (arr!38640 (Array (_ BitVec 32) (_ BitVec 64))) (size!39177 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80120)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104226 (= res!830802 (and (bvslt (size!39177 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39177 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39177 a!3892))))))

(assert (=> start!104226 e!706027))

(declare-fun array_inv!29416 (array!80120) Bool)

(assert (=> start!104226 (array_inv!29416 a!3892)))

(assert (=> start!104226 true))

(declare-fun b!1245194 () Bool)

(declare-fun res!830803 () Bool)

(assert (=> b!1245194 (=> (not res!830803) (not e!706027))))

(declare-datatypes ((List!27621 0))(
  ( (Nil!27618) (Cons!27617 (h!28826 (_ BitVec 64)) (t!41097 List!27621)) )
))
(declare-fun arrayNoDuplicates!0 (array!80120 (_ BitVec 32) List!27621) Bool)

(assert (=> b!1245194 (= res!830803 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27618))))

(declare-fun b!1245195 () Bool)

(assert (=> b!1245195 (= e!706027 (and (not (= from!3270 newFrom!287)) (bvsge from!3270 (size!39177 a!3892))))))

(assert (= (and start!104226 res!830802) b!1245194))

(assert (= (and b!1245194 res!830803) b!1245195))

(declare-fun m!1147311 () Bool)

(assert (=> start!104226 m!1147311))

(declare-fun m!1147313 () Bool)

(assert (=> b!1245194 m!1147313))

(push 1)

(assert (not b!1245194))

(assert (not start!104226))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

