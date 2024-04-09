; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104094 () Bool)

(assert start!104094)

(declare-fun res!830376 () Bool)

(declare-fun e!705601 () Bool)

(assert (=> start!104094 (=> (not res!830376) (not e!705601))))

(declare-datatypes ((array!80060 0))(
  ( (array!80061 (arr!38616 (Array (_ BitVec 32) (_ BitVec 64))) (size!39153 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80060)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104094 (= res!830376 (and (bvslt (size!39153 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39153 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39153 a!3892))))))

(assert (=> start!104094 e!705601))

(declare-fun array_inv!29392 (array!80060) Bool)

(assert (=> start!104094 (array_inv!29392 a!3892)))

(assert (=> start!104094 true))

(declare-fun b!1244696 () Bool)

(declare-fun res!830377 () Bool)

(assert (=> b!1244696 (=> (not res!830377) (not e!705601))))

(declare-datatypes ((List!27597 0))(
  ( (Nil!27594) (Cons!27593 (h!28802 (_ BitVec 64)) (t!41073 List!27597)) )
))
(declare-fun arrayNoDuplicates!0 (array!80060 (_ BitVec 32) List!27597) Bool)

(assert (=> b!1244696 (= res!830377 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27594))))

(declare-fun b!1244697 () Bool)

(assert (=> b!1244697 (= e!705601 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39153 a!3892)) (= newFrom!287 (size!39153 a!3892)) (bvslt newFrom!287 #b00000000000000000000000000000000)))))

(assert (= (and start!104094 res!830376) b!1244696))

(assert (= (and b!1244696 res!830377) b!1244697))

(declare-fun m!1146963 () Bool)

(assert (=> start!104094 m!1146963))

(declare-fun m!1146965 () Bool)

(assert (=> b!1244696 m!1146965))

(push 1)

(assert (not start!104094))

(assert (not b!1244696))

(check-sat)

(pop 1)

