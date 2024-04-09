; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85530 () Bool)

(assert start!85530)

(declare-fun res!664253 () Bool)

(declare-fun e!560663 () Bool)

(assert (=> start!85530 (=> (not res!664253) (not e!560663))))

(declare-datatypes ((array!62767 0))(
  ( (array!62768 (arr!30223 (Array (_ BitVec 32) (_ BitVec 64))) (size!30720 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62767)

(declare-fun size!36 () (_ BitVec 32))

(declare-fun from!3778 () (_ BitVec 32))

(assert (=> start!85530 (= res!664253 (and (= (size!30720 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62768 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30720 a!4424))))))

(assert (=> start!85530 e!560663))

(declare-fun array_inv!23213 (array!62767) Bool)

(assert (=> start!85530 (array_inv!23213 a!4424)))

(assert (=> start!85530 true))

(declare-fun b!993527 () Bool)

(declare-fun res!664255 () Bool)

(assert (=> b!993527 (=> (not res!664255) (not e!560663))))

(declare-datatypes ((List!21067 0))(
  ( (Nil!21064) (Cons!21063 (h!22225 (_ BitVec 64)) (t!30076 List!21067)) )
))
(declare-fun acc!919 () List!21067)

(declare-fun contains!5824 (List!21067 (_ BitVec 64)) Bool)

(assert (=> b!993527 (= res!664255 (not (contains!5824 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993528 () Bool)

(declare-fun res!664254 () Bool)

(assert (=> b!993528 (=> (not res!664254) (not e!560663))))

(assert (=> b!993528 (= res!664254 (not (contains!5824 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993529 () Bool)

(assert (=> b!993529 (= e!560663 false)))

(declare-fun lt!440538 () Bool)

(declare-fun noDuplicate!1421 (List!21067) Bool)

(assert (=> b!993529 (= lt!440538 (noDuplicate!1421 acc!919))))

(assert (= (and start!85530 res!664253) b!993527))

(assert (= (and b!993527 res!664255) b!993528))

(assert (= (and b!993528 res!664254) b!993529))

(declare-fun m!921311 () Bool)

(assert (=> start!85530 m!921311))

(declare-fun m!921313 () Bool)

(assert (=> b!993527 m!921313))

(declare-fun m!921315 () Bool)

(assert (=> b!993528 m!921315))

(declare-fun m!921317 () Bool)

(assert (=> b!993529 m!921317))

(push 1)

(assert (not b!993527))

(assert (not start!85530))

(assert (not b!993529))

(assert (not b!993528))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

