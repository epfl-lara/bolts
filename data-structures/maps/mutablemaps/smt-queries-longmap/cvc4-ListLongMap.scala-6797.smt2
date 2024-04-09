; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85552 () Bool)

(assert start!85552)

(declare-fun res!664362 () Bool)

(declare-fun e!560729 () Bool)

(assert (=> start!85552 (=> (not res!664362) (not e!560729))))

(declare-datatypes ((array!62789 0))(
  ( (array!62790 (arr!30234 (Array (_ BitVec 32) (_ BitVec 64))) (size!30731 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62789)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85552 (= res!664362 (and (= (size!30731 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62790 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30731 a!4424))))))

(assert (=> start!85552 e!560729))

(declare-fun array_inv!23224 (array!62789) Bool)

(assert (=> start!85552 (array_inv!23224 a!4424)))

(assert (=> start!85552 true))

(declare-fun b!993635 () Bool)

(declare-fun res!664363 () Bool)

(assert (=> b!993635 (=> (not res!664363) (not e!560729))))

(declare-datatypes ((List!21078 0))(
  ( (Nil!21075) (Cons!21074 (h!22236 (_ BitVec 64)) (t!30087 List!21078)) )
))
(declare-fun acc!919 () List!21078)

(declare-fun contains!5835 (List!21078 (_ BitVec 64)) Bool)

(assert (=> b!993635 (= res!664363 (not (contains!5835 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993636 () Bool)

(declare-fun res!664361 () Bool)

(assert (=> b!993636 (=> (not res!664361) (not e!560729))))

(assert (=> b!993636 (= res!664361 (not (contains!5835 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993637 () Bool)

(assert (=> b!993637 (= e!560729 false)))

(declare-fun lt!440562 () Bool)

(declare-fun noDuplicate!1432 (List!21078) Bool)

(assert (=> b!993637 (= lt!440562 (noDuplicate!1432 acc!919))))

(assert (= (and start!85552 res!664362) b!993635))

(assert (= (and b!993635 res!664363) b!993636))

(assert (= (and b!993636 res!664361) b!993637))

(declare-fun m!921399 () Bool)

(assert (=> start!85552 m!921399))

(declare-fun m!921401 () Bool)

(assert (=> b!993635 m!921401))

(declare-fun m!921403 () Bool)

(assert (=> b!993636 m!921403))

(declare-fun m!921405 () Bool)

(assert (=> b!993637 m!921405))

(push 1)

(assert (not b!993636))

(assert (not b!993637))

(assert (not start!85552))

(assert (not b!993635))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

