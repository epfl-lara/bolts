; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131494 () Bool)

(assert start!131494)

(declare-fun res!1057484 () Bool)

(declare-fun e!856958 () Bool)

(assert (=> start!131494 (=> (not res!1057484) (not e!856958))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131494 (= res!1057484 (validMask!0 mask!4052))))

(assert (=> start!131494 e!856958))

(assert (=> start!131494 true))

(declare-datatypes ((array!102324 0))(
  ( (array!102325 (arr!49366 (Array (_ BitVec 32) (_ BitVec 64))) (size!49917 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102324)

(declare-fun array_inv!38311 (array!102324) Bool)

(assert (=> start!131494 (array_inv!38311 a!3920)))

(declare-fun b!1540798 () Bool)

(declare-fun res!1057485 () Bool)

(assert (=> b!1540798 (=> (not res!1057485) (not e!856958))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1540798 (= res!1057485 (and (= (size!49917 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49917 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49917 a!3920))))))

(declare-fun b!1540799 () Bool)

(declare-fun res!1057482 () Bool)

(assert (=> b!1540799 (=> (not res!1057482) (not e!856958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102324 (_ BitVec 32)) Bool)

(assert (=> b!1540799 (= res!1057482 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1540800 () Bool)

(declare-fun res!1057483 () Bool)

(assert (=> b!1540800 (=> (not res!1057483) (not e!856958))))

(assert (=> b!1540800 (= res!1057483 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49917 a!3920))))))

(declare-fun b!1540801 () Bool)

(assert (=> b!1540801 (= e!856958 false)))

(declare-fun lt!665467 () Bool)

(assert (=> b!1540801 (= lt!665467 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(assert (= (and start!131494 res!1057484) b!1540798))

(assert (= (and b!1540798 res!1057485) b!1540799))

(assert (= (and b!1540799 res!1057482) b!1540800))

(assert (= (and b!1540800 res!1057483) b!1540801))

(declare-fun m!1422909 () Bool)

(assert (=> start!131494 m!1422909))

(declare-fun m!1422911 () Bool)

(assert (=> start!131494 m!1422911))

(declare-fun m!1422913 () Bool)

(assert (=> b!1540799 m!1422913))

(declare-fun m!1422915 () Bool)

(assert (=> b!1540801 m!1422915))

(push 1)

(assert (not b!1540799))

(assert (not start!131494))

(assert (not b!1540801))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

