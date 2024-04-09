; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85612 () Bool)

(assert start!85612)

(declare-fun res!664604 () Bool)

(declare-fun e!560881 () Bool)

(assert (=> start!85612 (=> (not res!664604) (not e!560881))))

(declare-datatypes ((array!62846 0))(
  ( (array!62847 (arr!30261 (Array (_ BitVec 32) (_ BitVec 64))) (size!30758 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62846)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85612 (= res!664604 (and (= (size!30758 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62847 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30758 a!4424))))))

(assert (=> start!85612 e!560881))

(declare-fun array_inv!23251 (array!62846) Bool)

(assert (=> start!85612 (array_inv!23251 a!4424)))

(assert (=> start!85612 true))

(declare-fun b!993880 () Bool)

(assert (=> b!993880 (= e!560881 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30758 a!4424)) (bvsge (bvsub size!36 (bvadd #b00000000000000000000000000000001 from!3778)) (bvsub size!36 from!3778))))))

(declare-fun b!993879 () Bool)

(declare-fun res!664603 () Bool)

(assert (=> b!993879 (=> (not res!664603) (not e!560881))))

(declare-datatypes ((List!21102 0))(
  ( (Nil!21099) (Cons!21098 (h!22260 (_ BitVec 64)) (t!30111 List!21102)) )
))
(declare-fun acc!919 () List!21102)

(declare-fun noDuplicate!1456 (List!21102) Bool)

(assert (=> b!993879 (= res!664603 (noDuplicate!1456 acc!919))))

(declare-fun b!993878 () Bool)

(declare-fun res!664605 () Bool)

(assert (=> b!993878 (=> (not res!664605) (not e!560881))))

(declare-fun contains!5859 (List!21102 (_ BitVec 64)) Bool)

(assert (=> b!993878 (= res!664605 (not (contains!5859 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993877 () Bool)

(declare-fun res!664606 () Bool)

(assert (=> b!993877 (=> (not res!664606) (not e!560881))))

(assert (=> b!993877 (= res!664606 (not (contains!5859 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!85612 res!664604) b!993877))

(assert (= (and b!993877 res!664606) b!993878))

(assert (= (and b!993878 res!664605) b!993879))

(assert (= (and b!993879 res!664603) b!993880))

(declare-fun m!921597 () Bool)

(assert (=> start!85612 m!921597))

(declare-fun m!921599 () Bool)

(assert (=> b!993879 m!921599))

(declare-fun m!921601 () Bool)

(assert (=> b!993878 m!921601))

(declare-fun m!921603 () Bool)

(assert (=> b!993877 m!921603))

(push 1)

(assert (not b!993879))

(assert (not b!993878))

(assert (not b!993877))

(assert (not start!85612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

