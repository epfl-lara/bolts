; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85534 () Bool)

(assert start!85534)

(declare-fun res!664271 () Bool)

(declare-fun e!560675 () Bool)

(assert (=> start!85534 (=> (not res!664271) (not e!560675))))

(declare-datatypes ((array!62771 0))(
  ( (array!62772 (arr!30225 (Array (_ BitVec 32) (_ BitVec 64))) (size!30722 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62771)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85534 (= res!664271 (and (= (size!30722 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62772 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30722 a!4424))))))

(assert (=> start!85534 e!560675))

(declare-fun array_inv!23215 (array!62771) Bool)

(assert (=> start!85534 (array_inv!23215 a!4424)))

(assert (=> start!85534 true))

(declare-fun b!993545 () Bool)

(declare-fun res!664273 () Bool)

(assert (=> b!993545 (=> (not res!664273) (not e!560675))))

(declare-datatypes ((List!21069 0))(
  ( (Nil!21066) (Cons!21065 (h!22227 (_ BitVec 64)) (t!30078 List!21069)) )
))
(declare-fun acc!919 () List!21069)

(declare-fun contains!5826 (List!21069 (_ BitVec 64)) Bool)

(assert (=> b!993545 (= res!664273 (not (contains!5826 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993546 () Bool)

(declare-fun res!664272 () Bool)

(assert (=> b!993546 (=> (not res!664272) (not e!560675))))

(assert (=> b!993546 (= res!664272 (not (contains!5826 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993547 () Bool)

(assert (=> b!993547 (= e!560675 false)))

(declare-fun lt!440544 () Bool)

(declare-fun noDuplicate!1423 (List!21069) Bool)

(assert (=> b!993547 (= lt!440544 (noDuplicate!1423 acc!919))))

(assert (= (and start!85534 res!664271) b!993545))

(assert (= (and b!993545 res!664273) b!993546))

(assert (= (and b!993546 res!664272) b!993547))

(declare-fun m!921327 () Bool)

(assert (=> start!85534 m!921327))

(declare-fun m!921329 () Bool)

(assert (=> b!993545 m!921329))

(declare-fun m!921331 () Bool)

(assert (=> b!993546 m!921331))

(declare-fun m!921333 () Bool)

(assert (=> b!993547 m!921333))

(push 1)

(assert (not b!993545))

(assert (not b!993546))

(assert (not start!85534))

(assert (not b!993547))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

