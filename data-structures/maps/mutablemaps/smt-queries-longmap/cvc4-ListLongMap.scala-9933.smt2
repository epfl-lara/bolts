; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117468 () Bool)

(assert start!117468)

(declare-fun res!922340 () Bool)

(declare-fun e!781900 () Bool)

(assert (=> start!117468 (=> (not res!922340) (not e!781900))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93935 0))(
  ( (array!93936 (arr!45357 (Array (_ BitVec 32) (_ BitVec 64))) (size!45908 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93935)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117468 (= res!922340 (and (bvslt (size!45908 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45908 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117468 e!781900))

(assert (=> start!117468 true))

(declare-fun array_inv!34302 (array!93935) Bool)

(assert (=> start!117468 (array_inv!34302 a!3985)))

(declare-fun b!1379961 () Bool)

(declare-fun res!922341 () Bool)

(assert (=> b!1379961 (=> (not res!922341) (not e!781900))))

(declare-fun isPivot!0 (array!93935 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379961 (= res!922341 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1379962 () Bool)

(assert (=> b!1379962 (= e!781900 (and (= knownPivot!5 pivot!40) (bvsle to!159 from!3363)))))

(assert (= (and start!117468 res!922340) b!1379961))

(assert (= (and b!1379961 res!922341) b!1379962))

(declare-fun m!1265237 () Bool)

(assert (=> start!117468 m!1265237))

(declare-fun m!1265239 () Bool)

(assert (=> b!1379961 m!1265239))

(push 1)

(assert (not b!1379961))

(assert (not start!117468))

(check-sat)

(pop 1)

(push 1)

(check-sat)

