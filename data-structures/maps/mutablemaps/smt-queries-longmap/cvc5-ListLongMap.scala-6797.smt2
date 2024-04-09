; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85548 () Bool)

(assert start!85548)

(declare-fun res!664345 () Bool)

(declare-fun e!560717 () Bool)

(assert (=> start!85548 (=> (not res!664345) (not e!560717))))

(declare-datatypes ((array!62785 0))(
  ( (array!62786 (arr!30232 (Array (_ BitVec 32) (_ BitVec 64))) (size!30729 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62785)

(declare-fun size!36 () (_ BitVec 32))

(declare-fun from!3778 () (_ BitVec 32))

(assert (=> start!85548 (= res!664345 (and (= (size!30729 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62786 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30729 a!4424))))))

(assert (=> start!85548 e!560717))

(declare-fun array_inv!23222 (array!62785) Bool)

(assert (=> start!85548 (array_inv!23222 a!4424)))

(assert (=> start!85548 true))

(declare-fun b!993617 () Bool)

(declare-fun res!664344 () Bool)

(assert (=> b!993617 (=> (not res!664344) (not e!560717))))

(declare-datatypes ((List!21076 0))(
  ( (Nil!21073) (Cons!21072 (h!22234 (_ BitVec 64)) (t!30085 List!21076)) )
))
(declare-fun acc!919 () List!21076)

(declare-fun contains!5833 (List!21076 (_ BitVec 64)) Bool)

(assert (=> b!993617 (= res!664344 (not (contains!5833 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993618 () Bool)

(declare-fun res!664343 () Bool)

(assert (=> b!993618 (=> (not res!664343) (not e!560717))))

(assert (=> b!993618 (= res!664343 (not (contains!5833 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993619 () Bool)

(assert (=> b!993619 (= e!560717 false)))

(declare-fun lt!440556 () Bool)

(declare-fun noDuplicate!1430 (List!21076) Bool)

(assert (=> b!993619 (= lt!440556 (noDuplicate!1430 acc!919))))

(assert (= (and start!85548 res!664345) b!993617))

(assert (= (and b!993617 res!664344) b!993618))

(assert (= (and b!993618 res!664343) b!993619))

(declare-fun m!921383 () Bool)

(assert (=> start!85548 m!921383))

(declare-fun m!921385 () Bool)

(assert (=> b!993617 m!921385))

(declare-fun m!921387 () Bool)

(assert (=> b!993618 m!921387))

(declare-fun m!921389 () Bool)

(assert (=> b!993619 m!921389))

(push 1)

(assert (not b!993617))

(assert (not b!993618))

(assert (not b!993619))

(assert (not start!85548))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

