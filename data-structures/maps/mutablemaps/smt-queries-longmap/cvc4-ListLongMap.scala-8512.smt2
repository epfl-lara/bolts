; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103876 () Bool)

(assert start!103876)

(declare-fun res!828946 () Bool)

(declare-fun e!704761 () Bool)

(assert (=> start!103876 (=> (not res!828946) (not e!704761))))

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((array!79938 0))(
  ( (array!79939 (arr!38561 (Array (_ BitVec 32) (_ BitVec 64))) (size!39098 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79938)

(assert (=> start!103876 (= res!828946 (and (bvslt (size!39098 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39098 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39098 a!3892))))))

(assert (=> start!103876 e!704761))

(declare-fun array_inv!29337 (array!79938) Bool)

(assert (=> start!103876 (array_inv!29337 a!3892)))

(assert (=> start!103876 true))

(declare-fun b!1243044 () Bool)

(declare-datatypes ((List!27542 0))(
  ( (Nil!27539) (Cons!27538 (h!28747 (_ BitVec 64)) (t!41018 List!27542)) )
))
(declare-fun noDuplicate!2004 (List!27542) Bool)

(assert (=> b!1243044 (= e!704761 (not (noDuplicate!2004 Nil!27539)))))

(assert (= (and start!103876 res!828946) b!1243044))

(declare-fun m!1145719 () Bool)

(assert (=> start!103876 m!1145719))

(declare-fun m!1145721 () Bool)

(assert (=> b!1243044 m!1145721))

(push 1)

(assert (not start!103876))

(assert (not b!1243044))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

