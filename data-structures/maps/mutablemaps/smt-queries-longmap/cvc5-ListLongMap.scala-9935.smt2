; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117476 () Bool)

(assert start!117476)

(declare-fun res!922355 () Bool)

(declare-fun e!781924 () Bool)

(assert (=> start!117476 (=> (not res!922355) (not e!781924))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93943 0))(
  ( (array!93944 (arr!45361 (Array (_ BitVec 32) (_ BitVec 64))) (size!45912 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93943)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117476 (= res!922355 (and (bvslt (size!45912 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45912 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117476 e!781924))

(assert (=> start!117476 true))

(declare-fun array_inv!34306 (array!93943) Bool)

(assert (=> start!117476 (array_inv!34306 a!3985)))

(declare-fun b!1379976 () Bool)

(declare-fun res!922356 () Bool)

(assert (=> b!1379976 (=> (not res!922356) (not e!781924))))

(declare-fun isPivot!0 (array!93943 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379976 (= res!922356 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1379977 () Bool)

(assert (=> b!1379977 (= e!781924 (and (not (= knownPivot!5 pivot!40)) (or (bvsle to!159 from!3363) (bvsge knownPivot!5 (bvsub to!159 #b00000000000000000000000000000001)))))))

(assert (= (and start!117476 res!922355) b!1379976))

(assert (= (and b!1379976 res!922356) b!1379977))

(declare-fun m!1265253 () Bool)

(assert (=> start!117476 m!1265253))

(declare-fun m!1265255 () Bool)

(assert (=> b!1379976 m!1265255))

(push 1)

(assert (not b!1379976))

(assert (not start!117476))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

