; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104100 () Bool)

(assert start!104100)

(declare-fun res!830392 () Bool)

(declare-fun e!705619 () Bool)

(assert (=> start!104100 (=> (not res!830392) (not e!705619))))

(declare-datatypes ((array!80066 0))(
  ( (array!80067 (arr!38619 (Array (_ BitVec 32) (_ BitVec 64))) (size!39156 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80066)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104100 (= res!830392 (and (bvslt (size!39156 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39156 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39156 a!3892))))))

(assert (=> start!104100 e!705619))

(declare-fun array_inv!29395 (array!80066) Bool)

(assert (=> start!104100 (array_inv!29395 a!3892)))

(assert (=> start!104100 true))

(declare-fun b!1244712 () Bool)

(assert (=> b!1244712 (= e!705619 false)))

(declare-fun lt!562777 () Bool)

(declare-datatypes ((List!27600 0))(
  ( (Nil!27597) (Cons!27596 (h!28805 (_ BitVec 64)) (t!41076 List!27600)) )
))
(declare-fun arrayNoDuplicates!0 (array!80066 (_ BitVec 32) List!27600) Bool)

(assert (=> b!1244712 (= lt!562777 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27597))))

(assert (= (and start!104100 res!830392) b!1244712))

(declare-fun m!1146975 () Bool)

(assert (=> start!104100 m!1146975))

(declare-fun m!1146977 () Bool)

(assert (=> b!1244712 m!1146977))

(push 1)

(assert (not b!1244712))

(assert (not start!104100))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

