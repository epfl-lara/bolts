; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85586 () Bool)

(assert start!85586)

(declare-fun res!664471 () Bool)

(declare-fun e!560804 () Bool)

(assert (=> start!85586 (=> (not res!664471) (not e!560804))))

(declare-datatypes ((array!62820 0))(
  ( (array!62821 (arr!30248 (Array (_ BitVec 32) (_ BitVec 64))) (size!30745 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62820)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85586 (= res!664471 (and (= (size!30745 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62821 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30745 a!4424))))))

(assert (=> start!85586 e!560804))

(declare-fun array_inv!23238 (array!62820) Bool)

(assert (=> start!85586 (array_inv!23238 a!4424)))

(assert (=> start!85586 true))

(declare-fun b!993743 () Bool)

(declare-fun res!664469 () Bool)

(assert (=> b!993743 (=> (not res!664469) (not e!560804))))

(declare-datatypes ((List!21089 0))(
  ( (Nil!21086) (Cons!21085 (h!22247 (_ BitVec 64)) (t!30098 List!21089)) )
))
(declare-fun acc!919 () List!21089)

(declare-fun contains!5846 (List!21089 (_ BitVec 64)) Bool)

(assert (=> b!993743 (= res!664469 (not (contains!5846 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993744 () Bool)

(declare-fun res!664470 () Bool)

(assert (=> b!993744 (=> (not res!664470) (not e!560804))))

(assert (=> b!993744 (= res!664470 (not (contains!5846 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993745 () Bool)

(assert (=> b!993745 (= e!560804 false)))

(declare-fun lt!440586 () Bool)

(declare-fun noDuplicate!1443 (List!21089) Bool)

(assert (=> b!993745 (= lt!440586 (noDuplicate!1443 acc!919))))

(assert (= (and start!85586 res!664471) b!993743))

(assert (= (and b!993743 res!664469) b!993744))

(assert (= (and b!993744 res!664470) b!993745))

(declare-fun m!921493 () Bool)

(assert (=> start!85586 m!921493))

(declare-fun m!921495 () Bool)

(assert (=> b!993743 m!921495))

(declare-fun m!921497 () Bool)

(assert (=> b!993744 m!921497))

(declare-fun m!921499 () Bool)

(assert (=> b!993745 m!921499))

(check-sat (not b!993745) (not b!993743) (not b!993744) (not start!85586))
