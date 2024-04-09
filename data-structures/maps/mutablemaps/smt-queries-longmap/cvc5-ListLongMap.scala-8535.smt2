; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104160 () Bool)

(assert start!104160)

(declare-fun res!830589 () Bool)

(declare-fun e!705814 () Bool)

(assert (=> start!104160 (=> (not res!830589) (not e!705814))))

(declare-datatypes ((array!80090 0))(
  ( (array!80091 (arr!38628 (Array (_ BitVec 32) (_ BitVec 64))) (size!39165 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80090)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104160 (= res!830589 (and (bvslt (size!39165 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39165 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39165 a!3892))))))

(assert (=> start!104160 e!705814))

(declare-fun array_inv!29404 (array!80090) Bool)

(assert (=> start!104160 (array_inv!29404 a!3892)))

(assert (=> start!104160 true))

(declare-fun b!1244945 () Bool)

(declare-fun res!830590 () Bool)

(assert (=> b!1244945 (=> (not res!830590) (not e!705814))))

(declare-datatypes ((List!27609 0))(
  ( (Nil!27606) (Cons!27605 (h!28814 (_ BitVec 64)) (t!41085 List!27609)) )
))
(declare-fun arrayNoDuplicates!0 (array!80090 (_ BitVec 32) List!27609) Bool)

(assert (=> b!1244945 (= res!830590 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27606))))

(declare-fun b!1244946 () Bool)

(assert (=> b!1244946 (= e!705814 (and (= from!3270 newFrom!287) (bvslt newFrom!287 #b00000000000000000000000000000000)))))

(assert (= (and start!104160 res!830589) b!1244945))

(assert (= (and b!1244945 res!830590) b!1244946))

(declare-fun m!1147137 () Bool)

(assert (=> start!104160 m!1147137))

(declare-fun m!1147139 () Bool)

(assert (=> b!1244945 m!1147139))

(push 1)

(assert (not start!104160))

(assert (not b!1244945))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

