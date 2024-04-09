; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85528 () Bool)

(assert start!85528)

(declare-fun b!993516 () Bool)

(declare-fun res!664246 () Bool)

(declare-fun e!560656 () Bool)

(assert (=> b!993516 (=> (not res!664246) (not e!560656))))

(declare-datatypes ((List!21066 0))(
  ( (Nil!21063) (Cons!21062 (h!22224 (_ BitVec 64)) (t!30075 List!21066)) )
))
(declare-fun acc!919 () List!21066)

(declare-fun contains!5823 (List!21066 (_ BitVec 64)) Bool)

(assert (=> b!993516 (= res!664246 (not (contains!5823 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!664245 () Bool)

(assert (=> start!85528 (=> (not res!664245) (not e!560656))))

(declare-datatypes ((array!62765 0))(
  ( (array!62766 (arr!30222 (Array (_ BitVec 32) (_ BitVec 64))) (size!30719 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62765)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85528 (= res!664245 (and (= (size!30719 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62766 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30719 a!4424))))))

(assert (=> start!85528 e!560656))

(declare-fun array_inv!23212 (array!62765) Bool)

(assert (=> start!85528 (array_inv!23212 a!4424)))

(assert (=> start!85528 true))

(declare-fun b!993517 () Bool)

(declare-fun res!664242 () Bool)

(assert (=> b!993517 (=> (not res!664242) (not e!560656))))

(assert (=> b!993517 (= res!664242 (not (contains!5823 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993518 () Bool)

(declare-fun res!664244 () Bool)

(assert (=> b!993518 (=> (not res!664244) (not e!560656))))

(assert (=> b!993518 (= res!664244 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30719 a!4424))))))

(declare-fun b!993519 () Bool)

(assert (=> b!993519 (= e!560656 (not true))))

(declare-fun arrayNoDuplicates!0 (array!62765 (_ BitVec 32) List!21066) Bool)

(assert (=> b!993519 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-datatypes ((Unit!32894 0))(
  ( (Unit!32895) )
))
(declare-fun lt!440535 () Unit!32894)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!62765 (_ BitVec 32) (_ BitVec 32) List!21066) Unit!32894)

(assert (=> b!993519 (= lt!440535 (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(declare-fun b!993520 () Bool)

(declare-fun res!664243 () Bool)

(assert (=> b!993520 (=> (not res!664243) (not e!560656))))

(declare-fun noDuplicate!1420 (List!21066) Bool)

(assert (=> b!993520 (= res!664243 (noDuplicate!1420 acc!919))))

(assert (= (and start!85528 res!664245) b!993517))

(assert (= (and b!993517 res!664242) b!993516))

(assert (= (and b!993516 res!664246) b!993520))

(assert (= (and b!993520 res!664243) b!993518))

(assert (= (and b!993518 res!664244) b!993519))

(declare-fun m!921299 () Bool)

(assert (=> b!993519 m!921299))

(declare-fun m!921301 () Bool)

(assert (=> b!993519 m!921301))

(declare-fun m!921303 () Bool)

(assert (=> b!993520 m!921303))

(declare-fun m!921305 () Bool)

(assert (=> b!993517 m!921305))

(declare-fun m!921307 () Bool)

(assert (=> start!85528 m!921307))

(declare-fun m!921309 () Bool)

(assert (=> b!993516 m!921309))

(push 1)

(assert (not b!993516))

(assert (not start!85528))

(assert (not b!993520))

(assert (not b!993519))

(assert (not b!993517))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

