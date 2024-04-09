; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85544 () Bool)

(assert start!85544)

(declare-fun res!664325 () Bool)

(declare-fun e!560705 () Bool)

(assert (=> start!85544 (=> (not res!664325) (not e!560705))))

(declare-datatypes ((array!62781 0))(
  ( (array!62782 (arr!30230 (Array (_ BitVec 32) (_ BitVec 64))) (size!30727 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62781)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85544 (= res!664325 (and (= (size!30727 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62782 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30727 a!4424))))))

(assert (=> start!85544 e!560705))

(declare-fun array_inv!23220 (array!62781) Bool)

(assert (=> start!85544 (array_inv!23220 a!4424)))

(assert (=> start!85544 true))

(declare-fun b!993599 () Bool)

(declare-fun res!664327 () Bool)

(assert (=> b!993599 (=> (not res!664327) (not e!560705))))

(declare-datatypes ((List!21074 0))(
  ( (Nil!21071) (Cons!21070 (h!22232 (_ BitVec 64)) (t!30083 List!21074)) )
))
(declare-fun acc!919 () List!21074)

(declare-fun contains!5831 (List!21074 (_ BitVec 64)) Bool)

(assert (=> b!993599 (= res!664327 (not (contains!5831 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993600 () Bool)

(declare-fun res!664326 () Bool)

(assert (=> b!993600 (=> (not res!664326) (not e!560705))))

(assert (=> b!993600 (= res!664326 (not (contains!5831 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993601 () Bool)

(assert (=> b!993601 (= e!560705 false)))

(declare-fun lt!440550 () Bool)

(declare-fun noDuplicate!1428 (List!21074) Bool)

(assert (=> b!993601 (= lt!440550 (noDuplicate!1428 acc!919))))

(assert (= (and start!85544 res!664325) b!993599))

(assert (= (and b!993599 res!664327) b!993600))

(assert (= (and b!993600 res!664326) b!993601))

(declare-fun m!921367 () Bool)

(assert (=> start!85544 m!921367))

(declare-fun m!921369 () Bool)

(assert (=> b!993599 m!921369))

(declare-fun m!921371 () Bool)

(assert (=> b!993600 m!921371))

(declare-fun m!921373 () Bool)

(assert (=> b!993601 m!921373))

(check-sat (not b!993599) (not b!993600) (not start!85544) (not b!993601))
(check-sat)
