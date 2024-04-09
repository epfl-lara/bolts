; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104250 () Bool)

(assert start!104250)

(declare-fun res!830845 () Bool)

(declare-fun e!706099 () Bool)

(assert (=> start!104250 (=> (not res!830845) (not e!706099))))

(declare-datatypes ((array!80144 0))(
  ( (array!80145 (arr!38652 (Array (_ BitVec 32) (_ BitVec 64))) (size!39189 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80144)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!104250 (= res!830845 (and (bvslt (size!39189 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39189 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39189 a!3892))))))

(assert (=> start!104250 e!706099))

(declare-fun array_inv!29428 (array!80144) Bool)

(assert (=> start!104250 (array_inv!29428 a!3892)))

(assert (=> start!104250 true))

(declare-fun b!1245237 () Bool)

(assert (=> b!1245237 (= e!706099 false)))

(declare-fun lt!562846 () Bool)

(declare-datatypes ((List!27633 0))(
  ( (Nil!27630) (Cons!27629 (h!28838 (_ BitVec 64)) (t!41109 List!27633)) )
))
(declare-fun arrayNoDuplicates!0 (array!80144 (_ BitVec 32) List!27633) Bool)

(assert (=> b!1245237 (= lt!562846 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27630))))

(assert (= (and start!104250 res!830845) b!1245237))

(declare-fun m!1147359 () Bool)

(assert (=> start!104250 m!1147359))

(declare-fun m!1147361 () Bool)

(assert (=> b!1245237 m!1147361))

(push 1)

(assert (not b!1245237))

(assert (not start!104250))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

