; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104262 () Bool)

(assert start!104262)

(declare-fun res!830890 () Bool)

(declare-fun e!706135 () Bool)

(assert (=> start!104262 (=> (not res!830890) (not e!706135))))

(declare-datatypes ((array!80156 0))(
  ( (array!80157 (arr!38658 (Array (_ BitVec 32) (_ BitVec 64))) (size!39195 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80156)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104262 (= res!830890 (and (bvslt (size!39195 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39195 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39195 a!3892))))))

(assert (=> start!104262 e!706135))

(declare-fun array_inv!29434 (array!80156) Bool)

(assert (=> start!104262 (array_inv!29434 a!3892)))

(assert (=> start!104262 true))

(declare-fun b!1245282 () Bool)

(assert (=> b!1245282 (= e!706135 false)))

(declare-fun lt!562855 () Bool)

(declare-datatypes ((List!27639 0))(
  ( (Nil!27636) (Cons!27635 (h!28844 (_ BitVec 64)) (t!41115 List!27639)) )
))
(declare-fun arrayNoDuplicates!0 (array!80156 (_ BitVec 32) List!27639) Bool)

(assert (=> b!1245282 (= lt!562855 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27636))))

(assert (= (and start!104262 res!830890) b!1245282))

(declare-fun m!1147395 () Bool)

(assert (=> start!104262 m!1147395))

(declare-fun m!1147397 () Bool)

(assert (=> b!1245282 m!1147397))

(push 1)

(assert (not start!104262))

(assert (not b!1245282))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

