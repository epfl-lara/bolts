; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104266 () Bool)

(assert start!104266)

(declare-fun res!830896 () Bool)

(declare-fun e!706147 () Bool)

(assert (=> start!104266 (=> (not res!830896) (not e!706147))))

(declare-datatypes ((array!80160 0))(
  ( (array!80161 (arr!38660 (Array (_ BitVec 32) (_ BitVec 64))) (size!39197 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80160)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104266 (= res!830896 (and (bvslt (size!39197 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39197 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39197 a!3892))))))

(assert (=> start!104266 e!706147))

(declare-fun array_inv!29436 (array!80160) Bool)

(assert (=> start!104266 (array_inv!29436 a!3892)))

(assert (=> start!104266 true))

(declare-fun b!1245288 () Bool)

(assert (=> b!1245288 (= e!706147 false)))

(declare-fun lt!562861 () Bool)

(declare-datatypes ((List!27641 0))(
  ( (Nil!27638) (Cons!27637 (h!28846 (_ BitVec 64)) (t!41117 List!27641)) )
))
(declare-fun arrayNoDuplicates!0 (array!80160 (_ BitVec 32) List!27641) Bool)

(assert (=> b!1245288 (= lt!562861 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27638))))

(assert (= (and start!104266 res!830896) b!1245288))

(declare-fun m!1147403 () Bool)

(assert (=> start!104266 m!1147403))

(declare-fun m!1147405 () Bool)

(assert (=> b!1245288 m!1147405))

(push 1)

(assert (not start!104266))

(assert (not b!1245288))

(check-sat)

(pop 1)

(push 1)

