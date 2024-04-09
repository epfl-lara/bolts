; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117474 () Bool)

(assert start!117474)

(declare-fun res!922350 () Bool)

(declare-fun e!781918 () Bool)

(assert (=> start!117474 (=> (not res!922350) (not e!781918))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93941 0))(
  ( (array!93942 (arr!45360 (Array (_ BitVec 32) (_ BitVec 64))) (size!45911 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93941)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117474 (= res!922350 (and (bvslt (size!45911 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45911 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117474 e!781918))

(assert (=> start!117474 true))

(declare-fun array_inv!34305 (array!93941) Bool)

(assert (=> start!117474 (array_inv!34305 a!3985)))

(declare-fun b!1379971 () Bool)

(assert (=> b!1379971 (= e!781918 false)))

(declare-fun lt!607786 () Bool)

(declare-fun isPivot!0 (array!93941 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379971 (= lt!607786 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117474 res!922350) b!1379971))

(declare-fun m!1265249 () Bool)

(assert (=> start!117474 m!1265249))

(declare-fun m!1265251 () Bool)

(assert (=> b!1379971 m!1265251))

(push 1)

(assert (not start!117474))

(assert (not b!1379971))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

