; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85542 () Bool)

(assert start!85542)

(declare-fun res!664318 () Bool)

(declare-fun e!560698 () Bool)

(assert (=> start!85542 (=> (not res!664318) (not e!560698))))

(declare-datatypes ((array!62779 0))(
  ( (array!62780 (arr!30229 (Array (_ BitVec 32) (_ BitVec 64))) (size!30726 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62779)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85542 (= res!664318 (and (= (size!30726 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62780 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30726 a!4424))))))

(assert (=> start!85542 e!560698))

(declare-fun array_inv!23219 (array!62779) Bool)

(assert (=> start!85542 (array_inv!23219 a!4424)))

(assert (=> start!85542 true))

(declare-fun b!993590 () Bool)

(declare-fun res!664317 () Bool)

(assert (=> b!993590 (=> (not res!664317) (not e!560698))))

(declare-datatypes ((List!21073 0))(
  ( (Nil!21070) (Cons!21069 (h!22231 (_ BitVec 64)) (t!30082 List!21073)) )
))
(declare-fun acc!919 () List!21073)

(declare-fun contains!5830 (List!21073 (_ BitVec 64)) Bool)

(assert (=> b!993590 (= res!664317 (not (contains!5830 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993591 () Bool)

(declare-fun res!664316 () Bool)

(assert (=> b!993591 (=> (not res!664316) (not e!560698))))

(assert (=> b!993591 (= res!664316 (not (contains!5830 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993592 () Bool)

(assert (=> b!993592 (= e!560698 false)))

(declare-fun lt!440547 () Bool)

(declare-fun noDuplicate!1427 (List!21073) Bool)

(assert (=> b!993592 (= lt!440547 (noDuplicate!1427 acc!919))))

(assert (= (and start!85542 res!664318) b!993590))

(assert (= (and b!993590 res!664317) b!993591))

(assert (= (and b!993591 res!664316) b!993592))

(declare-fun m!921359 () Bool)

(assert (=> start!85542 m!921359))

(declare-fun m!921361 () Bool)

(assert (=> b!993590 m!921361))

(declare-fun m!921363 () Bool)

(assert (=> b!993591 m!921363))

(declare-fun m!921365 () Bool)

(assert (=> b!993592 m!921365))

(push 1)

(assert (not start!85542))

(assert (not b!993592))

(assert (not b!993591))

(assert (not b!993590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

