; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104098 () Bool)

(assert start!104098)

(declare-fun res!830388 () Bool)

(declare-fun e!705613 () Bool)

(assert (=> start!104098 (=> (not res!830388) (not e!705613))))

(declare-datatypes ((array!80064 0))(
  ( (array!80065 (arr!38618 (Array (_ BitVec 32) (_ BitVec 64))) (size!39155 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80064)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104098 (= res!830388 (and (bvslt (size!39155 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39155 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39155 a!3892))))))

(assert (=> start!104098 e!705613))

(declare-fun array_inv!29394 (array!80064) Bool)

(assert (=> start!104098 (array_inv!29394 a!3892)))

(assert (=> start!104098 true))

(declare-fun b!1244708 () Bool)

(declare-fun res!830389 () Bool)

(assert (=> b!1244708 (=> (not res!830389) (not e!705613))))

(declare-datatypes ((List!27599 0))(
  ( (Nil!27596) (Cons!27595 (h!28804 (_ BitVec 64)) (t!41075 List!27599)) )
))
(declare-fun arrayNoDuplicates!0 (array!80064 (_ BitVec 32) List!27599) Bool)

(assert (=> b!1244708 (= res!830389 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27596))))

(declare-fun b!1244709 () Bool)

(assert (=> b!1244709 (= e!705613 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39155 a!3892)) (= newFrom!287 (size!39155 a!3892)) (bvslt newFrom!287 #b00000000000000000000000000000000)))))

(assert (= (and start!104098 res!830388) b!1244708))

(assert (= (and b!1244708 res!830389) b!1244709))

(declare-fun m!1146971 () Bool)

(assert (=> start!104098 m!1146971))

(declare-fun m!1146973 () Bool)

(assert (=> b!1244708 m!1146973))

(push 1)

(assert (not start!104098))

(assert (not b!1244708))

(check-sat)

(pop 1)

(push 1)

(check-sat)

