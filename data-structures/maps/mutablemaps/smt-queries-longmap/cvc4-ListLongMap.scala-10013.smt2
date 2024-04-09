; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118172 () Bool)

(assert start!118172)

(declare-fun b!1382713 () Bool)

(declare-fun res!924417 () Bool)

(declare-fun e!783721 () Bool)

(assert (=> b!1382713 (=> (not res!924417) (not e!783721))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94441 0))(
  ( (array!94442 (arr!45597 (Array (_ BitVec 32) (_ BitVec 64))) (size!46148 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94441)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1382713 (= res!924417 (and (= (size!46148 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46148 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46148 a!2938))))))

(declare-fun b!1382714 () Bool)

(declare-fun res!924416 () Bool)

(assert (=> b!1382714 (=> (not res!924416) (not e!783721))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382714 (= res!924416 (validKeyInArray!0 (select (arr!45597 a!2938) i!1065)))))

(declare-fun b!1382716 () Bool)

(declare-datatypes ((List!32305 0))(
  ( (Nil!32302) (Cons!32301 (h!33510 (_ BitVec 64)) (t!47006 List!32305)) )
))
(declare-fun noDuplicate!2629 (List!32305) Bool)

(assert (=> b!1382716 (= e!783721 (not (noDuplicate!2629 Nil!32302)))))

(declare-fun res!924414 () Bool)

(assert (=> start!118172 (=> (not res!924414) (not e!783721))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118172 (= res!924414 (validMask!0 mask!2987))))

(assert (=> start!118172 e!783721))

(assert (=> start!118172 true))

(declare-fun array_inv!34542 (array!94441) Bool)

(assert (=> start!118172 (array_inv!34542 a!2938)))

(declare-fun b!1382715 () Bool)

(declare-fun res!924415 () Bool)

(assert (=> b!1382715 (=> (not res!924415) (not e!783721))))

(assert (=> b!1382715 (= res!924415 (and (bvsle #b00000000000000000000000000000000 (size!46148 a!2938)) (bvslt (size!46148 a!2938) #b01111111111111111111111111111111)))))

(assert (= (and start!118172 res!924414) b!1382713))

(assert (= (and b!1382713 res!924417) b!1382714))

(assert (= (and b!1382714 res!924416) b!1382715))

(assert (= (and b!1382715 res!924415) b!1382716))

(declare-fun m!1267895 () Bool)

(assert (=> b!1382714 m!1267895))

(assert (=> b!1382714 m!1267895))

(declare-fun m!1267897 () Bool)

(assert (=> b!1382714 m!1267897))

(declare-fun m!1267899 () Bool)

(assert (=> b!1382716 m!1267899))

(declare-fun m!1267901 () Bool)

(assert (=> start!118172 m!1267901))

(declare-fun m!1267903 () Bool)

(assert (=> start!118172 m!1267903))

(push 1)

(assert (not b!1382714))

(assert (not start!118172))

(assert (not b!1382716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!149157 () Bool)

