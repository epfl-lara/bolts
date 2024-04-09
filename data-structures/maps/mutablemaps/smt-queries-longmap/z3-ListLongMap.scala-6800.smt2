; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85574 () Bool)

(assert start!85574)

(declare-fun res!664417 () Bool)

(declare-fun e!560768 () Bool)

(assert (=> start!85574 (=> (not res!664417) (not e!560768))))

(declare-datatypes ((array!62808 0))(
  ( (array!62809 (arr!30242 (Array (_ BitVec 32) (_ BitVec 64))) (size!30739 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62808)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85574 (= res!664417 (and (= (size!30739 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62809 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30739 a!4424))))))

(assert (=> start!85574 e!560768))

(declare-fun array_inv!23232 (array!62808) Bool)

(assert (=> start!85574 (array_inv!23232 a!4424)))

(assert (=> start!85574 true))

(declare-fun b!993689 () Bool)

(declare-fun res!664416 () Bool)

(assert (=> b!993689 (=> (not res!664416) (not e!560768))))

(declare-datatypes ((List!21083 0))(
  ( (Nil!21080) (Cons!21079 (h!22241 (_ BitVec 64)) (t!30092 List!21083)) )
))
(declare-fun acc!919 () List!21083)

(declare-fun contains!5840 (List!21083 (_ BitVec 64)) Bool)

(assert (=> b!993689 (= res!664416 (not (contains!5840 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993690 () Bool)

(declare-fun res!664415 () Bool)

(assert (=> b!993690 (=> (not res!664415) (not e!560768))))

(assert (=> b!993690 (= res!664415 (not (contains!5840 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993691 () Bool)

(assert (=> b!993691 (= e!560768 false)))

(declare-fun lt!440568 () Bool)

(declare-fun noDuplicate!1437 (List!21083) Bool)

(assert (=> b!993691 (= lt!440568 (noDuplicate!1437 acc!919))))

(assert (= (and start!85574 res!664417) b!993689))

(assert (= (and b!993689 res!664416) b!993690))

(assert (= (and b!993690 res!664415) b!993691))

(declare-fun m!921445 () Bool)

(assert (=> start!85574 m!921445))

(declare-fun m!921447 () Bool)

(assert (=> b!993689 m!921447))

(declare-fun m!921449 () Bool)

(assert (=> b!993690 m!921449))

(declare-fun m!921451 () Bool)

(assert (=> b!993691 m!921451))

(check-sat (not b!993689) (not b!993690) (not start!85574) (not b!993691))
(check-sat)
