; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85606 () Bool)

(assert start!85606)

(declare-fun res!664570 () Bool)

(declare-fun e!560864 () Bool)

(assert (=> start!85606 (=> (not res!664570) (not e!560864))))

(declare-datatypes ((array!62840 0))(
  ( (array!62841 (arr!30258 (Array (_ BitVec 32) (_ BitVec 64))) (size!30755 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62840)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85606 (= res!664570 (and (= (size!30755 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62841 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30755 a!4424))))))

(assert (=> start!85606 e!560864))

(declare-fun array_inv!23248 (array!62840) Bool)

(assert (=> start!85606 (array_inv!23248 a!4424)))

(assert (=> start!85606 true))

(declare-fun b!993842 () Bool)

(declare-fun res!664569 () Bool)

(assert (=> b!993842 (=> (not res!664569) (not e!560864))))

(declare-datatypes ((List!21099 0))(
  ( (Nil!21096) (Cons!21095 (h!22257 (_ BitVec 64)) (t!30108 List!21099)) )
))
(declare-fun acc!919 () List!21099)

(declare-fun contains!5856 (List!21099 (_ BitVec 64)) Bool)

(assert (=> b!993842 (= res!664569 (not (contains!5856 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993843 () Bool)

(declare-fun res!664568 () Bool)

(assert (=> b!993843 (=> (not res!664568) (not e!560864))))

(assert (=> b!993843 (= res!664568 (not (contains!5856 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993844 () Bool)

(assert (=> b!993844 (= e!560864 false)))

(declare-fun lt!440607 () Bool)

(declare-fun noDuplicate!1453 (List!21099) Bool)

(assert (=> b!993844 (= lt!440607 (noDuplicate!1453 acc!919))))

(assert (= (and start!85606 res!664570) b!993842))

(assert (= (and b!993842 res!664569) b!993843))

(assert (= (and b!993843 res!664568) b!993844))

(declare-fun m!921573 () Bool)

(assert (=> start!85606 m!921573))

(declare-fun m!921575 () Bool)

(assert (=> b!993842 m!921575))

(declare-fun m!921577 () Bool)

(assert (=> b!993843 m!921577))

(declare-fun m!921579 () Bool)

(assert (=> b!993844 m!921579))

(push 1)

(assert (not b!993844))

(assert (not start!85606))

(assert (not b!993843))

(assert (not b!993842))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

