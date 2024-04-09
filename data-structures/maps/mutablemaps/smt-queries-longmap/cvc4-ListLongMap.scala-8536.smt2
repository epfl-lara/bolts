; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104170 () Bool)

(assert start!104170)

(declare-fun res!830611 () Bool)

(declare-fun e!705844 () Bool)

(assert (=> start!104170 (=> (not res!830611) (not e!705844))))

(declare-datatypes ((array!80100 0))(
  ( (array!80101 (arr!38633 (Array (_ BitVec 32) (_ BitVec 64))) (size!39170 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80100)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104170 (= res!830611 (and (bvslt (size!39170 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39170 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39170 a!3892))))))

(assert (=> start!104170 e!705844))

(declare-fun array_inv!29409 (array!80100) Bool)

(assert (=> start!104170 (array_inv!29409 a!3892)))

(assert (=> start!104170 true))

(declare-fun b!1244967 () Bool)

(assert (=> b!1244967 (= e!705844 false)))

(declare-fun lt!562804 () Bool)

(declare-datatypes ((List!27614 0))(
  ( (Nil!27611) (Cons!27610 (h!28819 (_ BitVec 64)) (t!41090 List!27614)) )
))
(declare-fun arrayNoDuplicates!0 (array!80100 (_ BitVec 32) List!27614) Bool)

(assert (=> b!1244967 (= lt!562804 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27611))))

(assert (= (and start!104170 res!830611) b!1244967))

(declare-fun m!1147157 () Bool)

(assert (=> start!104170 m!1147157))

(declare-fun m!1147159 () Bool)

(assert (=> b!1244967 m!1147159))

(push 1)

(assert (not b!1244967))

(assert (not start!104170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

