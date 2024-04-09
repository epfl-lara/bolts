; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117464 () Bool)

(assert start!117464)

(declare-fun res!922328 () Bool)

(declare-fun e!781888 () Bool)

(assert (=> start!117464 (=> (not res!922328) (not e!781888))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93931 0))(
  ( (array!93932 (arr!45355 (Array (_ BitVec 32) (_ BitVec 64))) (size!45906 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93931)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117464 (= res!922328 (and (bvslt (size!45906 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45906 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117464 e!781888))

(assert (=> start!117464 true))

(declare-fun array_inv!34300 (array!93931) Bool)

(assert (=> start!117464 (array_inv!34300 a!3985)))

(declare-fun b!1379949 () Bool)

(declare-fun res!922329 () Bool)

(assert (=> b!1379949 (=> (not res!922329) (not e!781888))))

(declare-fun isPivot!0 (array!93931 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379949 (= res!922329 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1379950 () Bool)

(assert (=> b!1379950 (= e!781888 (and (= knownPivot!5 pivot!40) (bvsle to!159 from!3363)))))

(assert (= (and start!117464 res!922328) b!1379949))

(assert (= (and b!1379949 res!922329) b!1379950))

(declare-fun m!1265229 () Bool)

(assert (=> start!117464 m!1265229))

(declare-fun m!1265231 () Bool)

(assert (=> b!1379949 m!1265231))

(push 1)

(assert (not b!1379949))

(assert (not start!117464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

