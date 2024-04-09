; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104236 () Bool)

(assert start!104236)

(declare-fun res!830824 () Bool)

(declare-fun e!706057 () Bool)

(assert (=> start!104236 (=> (not res!830824) (not e!706057))))

(declare-datatypes ((array!80130 0))(
  ( (array!80131 (arr!38645 (Array (_ BitVec 32) (_ BitVec 64))) (size!39182 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80130)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!104236 (= res!830824 (and (bvslt (size!39182 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39182 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39182 a!3892))))))

(assert (=> start!104236 e!706057))

(declare-fun array_inv!29421 (array!80130) Bool)

(assert (=> start!104236 (array_inv!29421 a!3892)))

(assert (=> start!104236 true))

(declare-fun b!1245216 () Bool)

(assert (=> b!1245216 (= e!706057 false)))

(declare-fun lt!562825 () Bool)

(declare-datatypes ((List!27626 0))(
  ( (Nil!27623) (Cons!27622 (h!28831 (_ BitVec 64)) (t!41102 List!27626)) )
))
(declare-fun arrayNoDuplicates!0 (array!80130 (_ BitVec 32) List!27626) Bool)

(assert (=> b!1245216 (= lt!562825 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27623))))

(assert (= (and start!104236 res!830824) b!1245216))

(declare-fun m!1147331 () Bool)

(assert (=> start!104236 m!1147331))

(declare-fun m!1147333 () Bool)

(assert (=> b!1245216 m!1147333))

(push 1)

(assert (not start!104236))

(assert (not b!1245216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

