; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85550 () Bool)

(assert start!85550)

(declare-fun res!664352 () Bool)

(declare-fun e!560723 () Bool)

(assert (=> start!85550 (=> (not res!664352) (not e!560723))))

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(declare-datatypes ((array!62787 0))(
  ( (array!62788 (arr!30233 (Array (_ BitVec 32) (_ BitVec 64))) (size!30730 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62787)

(assert (=> start!85550 (= res!664352 (and (= (size!30730 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62788 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30730 a!4424))))))

(assert (=> start!85550 e!560723))

(declare-fun array_inv!23223 (array!62787) Bool)

(assert (=> start!85550 (array_inv!23223 a!4424)))

(assert (=> start!85550 true))

(declare-fun b!993626 () Bool)

(declare-fun res!664354 () Bool)

(assert (=> b!993626 (=> (not res!664354) (not e!560723))))

(declare-datatypes ((List!21077 0))(
  ( (Nil!21074) (Cons!21073 (h!22235 (_ BitVec 64)) (t!30086 List!21077)) )
))
(declare-fun acc!919 () List!21077)

(declare-fun contains!5834 (List!21077 (_ BitVec 64)) Bool)

(assert (=> b!993626 (= res!664354 (not (contains!5834 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993627 () Bool)

(declare-fun res!664353 () Bool)

(assert (=> b!993627 (=> (not res!664353) (not e!560723))))

(assert (=> b!993627 (= res!664353 (not (contains!5834 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993628 () Bool)

(assert (=> b!993628 (= e!560723 false)))

(declare-fun lt!440559 () Bool)

(declare-fun noDuplicate!1431 (List!21077) Bool)

(assert (=> b!993628 (= lt!440559 (noDuplicate!1431 acc!919))))

(assert (= (and start!85550 res!664352) b!993626))

(assert (= (and b!993626 res!664354) b!993627))

(assert (= (and b!993627 res!664353) b!993628))

(declare-fun m!921391 () Bool)

(assert (=> start!85550 m!921391))

(declare-fun m!921393 () Bool)

(assert (=> b!993626 m!921393))

(declare-fun m!921395 () Bool)

(assert (=> b!993627 m!921395))

(declare-fun m!921397 () Bool)

(assert (=> b!993628 m!921397))

(check-sat (not b!993628) (not b!993626) (not b!993627) (not start!85550))
(check-sat)
