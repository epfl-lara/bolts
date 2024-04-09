; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85498 () Bool)

(assert start!85498)

(declare-fun res!664037 () Bool)

(declare-fun e!560566 () Bool)

(assert (=> start!85498 (=> (not res!664037) (not e!560566))))

(declare-datatypes ((array!62735 0))(
  ( (array!62736 (arr!30207 (Array (_ BitVec 32) (_ BitVec 64))) (size!30704 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62735)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85498 (= res!664037 (and (= (size!30704 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62736 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30704 a!4424))))))

(assert (=> start!85498 e!560566))

(declare-fun array_inv!23197 (array!62735) Bool)

(assert (=> start!85498 (array_inv!23197 a!4424)))

(assert (=> start!85498 true))

(declare-fun b!993311 () Bool)

(declare-fun res!664039 () Bool)

(assert (=> b!993311 (=> (not res!664039) (not e!560566))))

(declare-datatypes ((List!21051 0))(
  ( (Nil!21048) (Cons!21047 (h!22209 (_ BitVec 64)) (t!30060 List!21051)) )
))
(declare-fun acc!919 () List!21051)

(declare-fun contains!5808 (List!21051 (_ BitVec 64)) Bool)

(assert (=> b!993311 (= res!664039 (not (contains!5808 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993312 () Bool)

(declare-fun res!664038 () Bool)

(assert (=> b!993312 (=> (not res!664038) (not e!560566))))

(assert (=> b!993312 (= res!664038 (not (contains!5808 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993313 () Bool)

(assert (=> b!993313 (= e!560566 false)))

(declare-fun lt!440490 () Bool)

(declare-fun noDuplicate!1405 (List!21051) Bool)

(assert (=> b!993313 (= lt!440490 (noDuplicate!1405 acc!919))))

(assert (= (and start!85498 res!664037) b!993311))

(assert (= (and b!993311 res!664039) b!993312))

(assert (= (and b!993312 res!664038) b!993313))

(declare-fun m!921135 () Bool)

(assert (=> start!85498 m!921135))

(declare-fun m!921137 () Bool)

(assert (=> b!993311 m!921137))

(declare-fun m!921139 () Bool)

(assert (=> b!993312 m!921139))

(declare-fun m!921141 () Bool)

(assert (=> b!993313 m!921141))

(push 1)

(assert (not b!993312))

(assert (not b!993311))

(assert (not start!85498))

(assert (not b!993313))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

