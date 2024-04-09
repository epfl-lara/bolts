; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103872 () Bool)

(assert start!103872)

(declare-fun res!828940 () Bool)

(declare-fun e!704749 () Bool)

(assert (=> start!103872 (=> (not res!828940) (not e!704749))))

(declare-datatypes ((array!79934 0))(
  ( (array!79935 (arr!38559 (Array (_ BitVec 32) (_ BitVec 64))) (size!39096 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79934)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!103872 (= res!828940 (and (bvslt (size!39096 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39096 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39096 a!3892))))))

(assert (=> start!103872 e!704749))

(declare-fun array_inv!29335 (array!79934) Bool)

(assert (=> start!103872 (array_inv!29335 a!3892)))

(assert (=> start!103872 true))

(declare-fun b!1243038 () Bool)

(declare-datatypes ((List!27540 0))(
  ( (Nil!27537) (Cons!27536 (h!28745 (_ BitVec 64)) (t!41016 List!27540)) )
))
(declare-fun noDuplicate!2002 (List!27540) Bool)

(assert (=> b!1243038 (= e!704749 (not (noDuplicate!2002 Nil!27537)))))

(assert (= (and start!103872 res!828940) b!1243038))

(declare-fun m!1145711 () Bool)

(assert (=> start!103872 m!1145711))

(declare-fun m!1145713 () Bool)

(assert (=> b!1243038 m!1145713))

(push 1)

(assert (not start!103872))

(assert (not b!1243038))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

