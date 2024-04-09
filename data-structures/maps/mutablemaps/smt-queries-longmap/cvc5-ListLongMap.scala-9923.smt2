; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117350 () Bool)

(assert start!117350)

(declare-fun res!922194 () Bool)

(declare-fun e!781634 () Bool)

(assert (=> start!117350 (=> (not res!922194) (not e!781634))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93862 0))(
  ( (array!93863 (arr!45325 (Array (_ BitVec 32) (_ BitVec 64))) (size!45876 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93862)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117350 (= res!922194 (and (bvslt (size!45876 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45876 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117350 e!781634))

(declare-fun array_inv!34270 (array!93862) Bool)

(assert (=> start!117350 (array_inv!34270 a!4010)))

(assert (=> start!117350 true))

(declare-fun b!1379646 () Bool)

(declare-fun res!922193 () Bool)

(assert (=> b!1379646 (=> (not res!922193) (not e!781634))))

(declare-fun isPivot!0 (array!93862 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379646 (= res!922193 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379647 () Bool)

(assert (=> b!1379647 (= e!781634 (not true))))

(assert (=> b!1379647 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45857 0))(
  ( (Unit!45858) )
))
(declare-fun lt!607675 () Unit!45857)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93862 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45857)

(assert (=> b!1379647 (= lt!607675 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117350 res!922194) b!1379646))

(assert (= (and b!1379646 res!922193) b!1379647))

(declare-fun m!1264905 () Bool)

(assert (=> start!117350 m!1264905))

(declare-fun m!1264907 () Bool)

(assert (=> b!1379646 m!1264907))

(declare-fun m!1264909 () Bool)

(assert (=> b!1379647 m!1264909))

(declare-fun m!1264911 () Bool)

(assert (=> b!1379647 m!1264911))

(push 1)

(assert (not b!1379647))

(assert (not start!117350))

(assert (not b!1379646))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

