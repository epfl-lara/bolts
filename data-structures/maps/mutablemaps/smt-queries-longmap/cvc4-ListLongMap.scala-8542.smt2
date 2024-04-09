; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104248 () Bool)

(assert start!104248)

(declare-fun res!830842 () Bool)

(declare-fun e!706093 () Bool)

(assert (=> start!104248 (=> (not res!830842) (not e!706093))))

(declare-datatypes ((array!80142 0))(
  ( (array!80143 (arr!38651 (Array (_ BitVec 32) (_ BitVec 64))) (size!39188 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80142)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104248 (= res!830842 (and (bvslt (size!39188 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39188 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39188 a!3892))))))

(assert (=> start!104248 e!706093))

(declare-fun array_inv!29427 (array!80142) Bool)

(assert (=> start!104248 (array_inv!29427 a!3892)))

(assert (=> start!104248 true))

(declare-fun b!1245234 () Bool)

(assert (=> b!1245234 (= e!706093 false)))

(declare-fun lt!562843 () Bool)

(declare-datatypes ((List!27632 0))(
  ( (Nil!27629) (Cons!27628 (h!28837 (_ BitVec 64)) (t!41108 List!27632)) )
))
(declare-fun arrayNoDuplicates!0 (array!80142 (_ BitVec 32) List!27632) Bool)

(assert (=> b!1245234 (= lt!562843 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27629))))

(assert (= (and start!104248 res!830842) b!1245234))

(declare-fun m!1147355 () Bool)

(assert (=> start!104248 m!1147355))

(declare-fun m!1147357 () Bool)

(assert (=> b!1245234 m!1147357))

(push 1)

(assert (not start!104248))

(assert (not b!1245234))

(check-sat)

(pop 1)

