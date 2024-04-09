; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117482 () Bool)

(assert start!117482)

(declare-fun res!922377 () Bool)

(declare-fun e!781942 () Bool)

(assert (=> start!117482 (=> (not res!922377) (not e!781942))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93949 0))(
  ( (array!93950 (arr!45364 (Array (_ BitVec 32) (_ BitVec 64))) (size!45915 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93949)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117482 (= res!922377 (and (bvslt (size!45915 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45915 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117482 e!781942))

(assert (=> start!117482 true))

(declare-fun array_inv!34309 (array!93949) Bool)

(assert (=> start!117482 (array_inv!34309 a!3985)))

(declare-fun b!1379996 () Bool)

(declare-fun res!922376 () Bool)

(assert (=> b!1379996 (=> (not res!922376) (not e!781942))))

(declare-fun isPivot!0 (array!93949 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379996 (= res!922376 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1379997 () Bool)

(declare-fun res!922375 () Bool)

(assert (=> b!1379997 (=> (not res!922375) (not e!781942))))

(assert (=> b!1379997 (= res!922375 (not (= knownPivot!5 pivot!40)))))

(declare-fun b!1379998 () Bool)

(assert (=> b!1379998 (= e!781942 (not (and (bvsle (bvadd #b00000000000000000000000000000001 knownPivot!5) pivot!40) (bvsge (bvadd #b00000000000000000000000000000001 knownPivot!5) from!3363))))))

(assert (=> b!1379998 (isPivot!0 a!3985 from!3363 to!159 (bvadd #b00000000000000000000000000000001 knownPivot!5))))

(declare-datatypes ((Unit!45881 0))(
  ( (Unit!45882) )
))
(declare-fun lt!607789 () Unit!45881)

(declare-fun lemmaKnownPivotPlusOneIsPivot!0 (array!93949 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45881)

(assert (=> b!1379998 (= lt!607789 (lemmaKnownPivotPlusOneIsPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117482 res!922377) b!1379996))

(assert (= (and b!1379996 res!922376) b!1379997))

(assert (= (and b!1379997 res!922375) b!1379998))

(declare-fun m!1265265 () Bool)

(assert (=> start!117482 m!1265265))

(declare-fun m!1265267 () Bool)

(assert (=> b!1379996 m!1265267))

(declare-fun m!1265269 () Bool)

(assert (=> b!1379998 m!1265269))

(declare-fun m!1265271 () Bool)

(assert (=> b!1379998 m!1265271))

(push 1)

(assert (not start!117482))

(assert (not b!1379998))

(assert (not b!1379996))

(check-sat)

(pop 1)

(push 1)

(check-sat)

