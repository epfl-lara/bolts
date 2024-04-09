; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117318 () Bool)

(assert start!117318)

(declare-fun res!922098 () Bool)

(declare-fun e!781537 () Bool)

(assert (=> start!117318 (=> (not res!922098) (not e!781537))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93830 0))(
  ( (array!93831 (arr!45309 (Array (_ BitVec 32) (_ BitVec 64))) (size!45860 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93830)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117318 (= res!922098 (and (bvslt (size!45860 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45860 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117318 e!781537))

(declare-fun array_inv!34254 (array!93830) Bool)

(assert (=> start!117318 (array_inv!34254 a!4010)))

(assert (=> start!117318 true))

(declare-fun b!1379551 () Bool)

(assert (=> b!1379551 (= e!781537 false)))

(declare-fun lt!607627 () Bool)

(declare-fun isPivot!0 (array!93830 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379551 (= lt!607627 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(assert (= (and start!117318 res!922098) b!1379551))

(declare-fun m!1264781 () Bool)

(assert (=> start!117318 m!1264781))

(declare-fun m!1264783 () Bool)

(assert (=> b!1379551 m!1264783))

(push 1)

(assert (not b!1379551))

(assert (not start!117318))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

