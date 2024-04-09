; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85578 () Bool)

(assert start!85578)

(declare-fun res!664434 () Bool)

(declare-fun e!560780 () Bool)

(assert (=> start!85578 (=> (not res!664434) (not e!560780))))

(declare-datatypes ((array!62812 0))(
  ( (array!62813 (arr!30244 (Array (_ BitVec 32) (_ BitVec 64))) (size!30741 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62812)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85578 (= res!664434 (and (= (size!30741 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62813 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30741 a!4424))))))

(assert (=> start!85578 e!560780))

(declare-fun array_inv!23234 (array!62812) Bool)

(assert (=> start!85578 (array_inv!23234 a!4424)))

(assert (=> start!85578 true))

(declare-fun b!993707 () Bool)

(declare-fun res!664435 () Bool)

(assert (=> b!993707 (=> (not res!664435) (not e!560780))))

(declare-datatypes ((List!21085 0))(
  ( (Nil!21082) (Cons!21081 (h!22243 (_ BitVec 64)) (t!30094 List!21085)) )
))
(declare-fun acc!919 () List!21085)

(declare-fun contains!5842 (List!21085 (_ BitVec 64)) Bool)

(assert (=> b!993707 (= res!664435 (not (contains!5842 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993708 () Bool)

(declare-fun res!664433 () Bool)

(assert (=> b!993708 (=> (not res!664433) (not e!560780))))

(assert (=> b!993708 (= res!664433 (not (contains!5842 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993709 () Bool)

(assert (=> b!993709 (= e!560780 false)))

(declare-fun lt!440574 () Bool)

(declare-fun noDuplicate!1439 (List!21085) Bool)

(assert (=> b!993709 (= lt!440574 (noDuplicate!1439 acc!919))))

(assert (= (and start!85578 res!664434) b!993707))

(assert (= (and b!993707 res!664435) b!993708))

(assert (= (and b!993708 res!664433) b!993709))

(declare-fun m!921461 () Bool)

(assert (=> start!85578 m!921461))

(declare-fun m!921463 () Bool)

(assert (=> b!993707 m!921463))

(declare-fun m!921465 () Bool)

(assert (=> b!993708 m!921465))

(declare-fun m!921467 () Bool)

(assert (=> b!993709 m!921467))

(push 1)

(assert (not b!993708))

(assert (not start!85578))

(assert (not b!993709))

(assert (not b!993707))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

