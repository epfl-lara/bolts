; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85492 () Bool)

(assert start!85492)

(declare-fun res!664012 () Bool)

(declare-fun e!560549 () Bool)

(assert (=> start!85492 (=> (not res!664012) (not e!560549))))

(declare-datatypes ((array!62729 0))(
  ( (array!62730 (arr!30204 (Array (_ BitVec 32) (_ BitVec 64))) (size!30701 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62729)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85492 (= res!664012 (and (= (size!30701 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62730 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30701 a!4424))))))

(assert (=> start!85492 e!560549))

(declare-fun array_inv!23194 (array!62729) Bool)

(assert (=> start!85492 (array_inv!23194 a!4424)))

(assert (=> start!85492 true))

(declare-fun b!993284 () Bool)

(declare-fun res!664011 () Bool)

(assert (=> b!993284 (=> (not res!664011) (not e!560549))))

(declare-datatypes ((List!21048 0))(
  ( (Nil!21045) (Cons!21044 (h!22206 (_ BitVec 64)) (t!30057 List!21048)) )
))
(declare-fun acc!919 () List!21048)

(declare-fun contains!5805 (List!21048 (_ BitVec 64)) Bool)

(assert (=> b!993284 (= res!664011 (not (contains!5805 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993285 () Bool)

(declare-fun res!664010 () Bool)

(assert (=> b!993285 (=> (not res!664010) (not e!560549))))

(assert (=> b!993285 (= res!664010 (not (contains!5805 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993286 () Bool)

(assert (=> b!993286 (= e!560549 false)))

(declare-fun lt!440481 () Bool)

(declare-fun noDuplicate!1402 (List!21048) Bool)

(assert (=> b!993286 (= lt!440481 (noDuplicate!1402 acc!919))))

(assert (= (and start!85492 res!664012) b!993284))

(assert (= (and b!993284 res!664011) b!993285))

(assert (= (and b!993285 res!664010) b!993286))

(declare-fun m!921111 () Bool)

(assert (=> start!85492 m!921111))

(declare-fun m!921113 () Bool)

(assert (=> b!993284 m!921113))

(declare-fun m!921115 () Bool)

(assert (=> b!993285 m!921115))

(declare-fun m!921117 () Bool)

(assert (=> b!993286 m!921117))

(push 1)

(assert (not b!993285))

(assert (not start!85492))

(assert (not b!993286))

(assert (not b!993284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

