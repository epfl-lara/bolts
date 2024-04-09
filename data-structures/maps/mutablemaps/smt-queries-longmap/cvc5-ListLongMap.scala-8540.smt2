; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104232 () Bool)

(assert start!104232)

(declare-fun res!830818 () Bool)

(declare-fun e!706045 () Bool)

(assert (=> start!104232 (=> (not res!830818) (not e!706045))))

(declare-datatypes ((array!80126 0))(
  ( (array!80127 (arr!38643 (Array (_ BitVec 32) (_ BitVec 64))) (size!39180 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80126)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!104232 (= res!830818 (and (bvslt (size!39180 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39180 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39180 a!3892))))))

(assert (=> start!104232 e!706045))

(declare-fun array_inv!29419 (array!80126) Bool)

(assert (=> start!104232 (array_inv!29419 a!3892)))

(assert (=> start!104232 true))

(declare-fun b!1245210 () Bool)

(assert (=> b!1245210 (= e!706045 false)))

(declare-fun lt!562819 () Bool)

(declare-datatypes ((List!27624 0))(
  ( (Nil!27621) (Cons!27620 (h!28829 (_ BitVec 64)) (t!41100 List!27624)) )
))
(declare-fun arrayNoDuplicates!0 (array!80126 (_ BitVec 32) List!27624) Bool)

(assert (=> b!1245210 (= lt!562819 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27621))))

(assert (= (and start!104232 res!830818) b!1245210))

(declare-fun m!1147323 () Bool)

(assert (=> start!104232 m!1147323))

(declare-fun m!1147325 () Bool)

(assert (=> b!1245210 m!1147325))

(push 1)

(assert (not start!104232))

(assert (not b!1245210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

