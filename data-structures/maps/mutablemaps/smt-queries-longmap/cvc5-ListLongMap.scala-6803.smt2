; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85590 () Bool)

(assert start!85590)

(declare-fun res!664489 () Bool)

(declare-fun e!560816 () Bool)

(assert (=> start!85590 (=> (not res!664489) (not e!560816))))

(declare-datatypes ((array!62824 0))(
  ( (array!62825 (arr!30250 (Array (_ BitVec 32) (_ BitVec 64))) (size!30747 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62824)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85590 (= res!664489 (and (= (size!30747 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62825 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30747 a!4424))))))

(assert (=> start!85590 e!560816))

(declare-fun array_inv!23240 (array!62824) Bool)

(assert (=> start!85590 (array_inv!23240 a!4424)))

(assert (=> start!85590 true))

(declare-fun b!993765 () Bool)

(declare-fun res!664492 () Bool)

(assert (=> b!993765 (=> (not res!664492) (not e!560816))))

(declare-datatypes ((List!21091 0))(
  ( (Nil!21088) (Cons!21087 (h!22249 (_ BitVec 64)) (t!30100 List!21091)) )
))
(declare-fun acc!919 () List!21091)

(declare-fun noDuplicate!1445 (List!21091) Bool)

(assert (=> b!993765 (= res!664492 (noDuplicate!1445 acc!919))))

(declare-fun b!993764 () Bool)

(declare-fun res!664491 () Bool)

(assert (=> b!993764 (=> (not res!664491) (not e!560816))))

(declare-fun contains!5848 (List!21091 (_ BitVec 64)) Bool)

(assert (=> b!993764 (= res!664491 (not (contains!5848 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993763 () Bool)

(declare-fun res!664490 () Bool)

(assert (=> b!993763 (=> (not res!664490) (not e!560816))))

(assert (=> b!993763 (= res!664490 (not (contains!5848 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993766 () Bool)

(assert (=> b!993766 (= e!560816 (and (bvslt from!3778 size!36) (or (bvslt (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!3778) (size!30747 a!4424)))))))

(assert (= (and start!85590 res!664489) b!993763))

(assert (= (and b!993763 res!664490) b!993764))

(assert (= (and b!993764 res!664491) b!993765))

(assert (= (and b!993765 res!664492) b!993766))

(declare-fun m!921509 () Bool)

(assert (=> start!85590 m!921509))

(declare-fun m!921511 () Bool)

(assert (=> b!993765 m!921511))

(declare-fun m!921513 () Bool)

(assert (=> b!993764 m!921513))

(declare-fun m!921515 () Bool)

(assert (=> b!993763 m!921515))

(push 1)

(assert (not start!85590))

(assert (not b!993763))

(assert (not b!993764))

(assert (not b!993765))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

