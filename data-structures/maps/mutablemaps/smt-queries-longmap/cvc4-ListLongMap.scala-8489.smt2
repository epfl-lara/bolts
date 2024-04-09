; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103498 () Bool)

(assert start!103498)

(declare-fun b!1240263 () Bool)

(declare-fun e!703001 () Bool)

(declare-fun from!2953 () (_ BitVec 32))

(assert (=> b!1240263 (= e!703001 (bvsge (bvsub from!2953 #b00000000000000000000000000000001) from!2953))))

(declare-fun b!1240262 () Bool)

(declare-fun res!827672 () Bool)

(assert (=> b!1240262 (=> (not res!827672) (not e!703001))))

(declare-datatypes ((array!79920 0))(
  ( (array!79921 (arr!38552 (Array (_ BitVec 32) (_ BitVec 64))) (size!39089 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79920)

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240262 (= res!827672 (arrayContainsKey!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001)))))

(declare-fun res!827674 () Bool)

(assert (=> start!103498 (=> (not res!827674) (not e!703001))))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103498 (= res!827674 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39089 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39089 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103498 e!703001))

(assert (=> start!103498 true))

(declare-fun array_inv!29328 (array!79920) Bool)

(assert (=> start!103498 (array_inv!29328 a!3575)))

(declare-fun b!1240260 () Bool)

(declare-fun res!827673 () Bool)

(assert (=> b!1240260 (=> (not res!827673) (not e!703001))))

(assert (=> b!1240260 (= res!827673 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun b!1240261 () Bool)

(declare-fun res!827671 () Bool)

(assert (=> b!1240261 (=> (not res!827671) (not e!703001))))

(assert (=> b!1240261 (= res!827671 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39089 a!3575))))))

(assert (= (and start!103498 res!827674) b!1240260))

(assert (= (and b!1240260 res!827673) b!1240261))

(assert (= (and b!1240261 res!827671) b!1240262))

(assert (= (and b!1240262 res!827672) b!1240263))

(declare-fun m!1143605 () Bool)

(assert (=> b!1240262 m!1143605))

(declare-fun m!1143607 () Bool)

(assert (=> start!103498 m!1143607))

(declare-fun m!1143609 () Bool)

(assert (=> b!1240260 m!1143609))

(push 1)

(assert (not b!1240260))

(assert (not start!103498))

(assert (not b!1240262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

