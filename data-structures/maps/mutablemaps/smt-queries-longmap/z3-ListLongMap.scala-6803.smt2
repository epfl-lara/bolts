; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85592 () Bool)

(assert start!85592)

(declare-fun res!664503 () Bool)

(declare-fun e!560822 () Bool)

(assert (=> start!85592 (=> (not res!664503) (not e!560822))))

(declare-datatypes ((array!62826 0))(
  ( (array!62827 (arr!30251 (Array (_ BitVec 32) (_ BitVec 64))) (size!30748 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62826)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85592 (= res!664503 (and (= (size!30748 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62827 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30748 a!4424))))))

(assert (=> start!85592 e!560822))

(declare-fun array_inv!23241 (array!62826) Bool)

(assert (=> start!85592 (array_inv!23241 a!4424)))

(assert (=> start!85592 true))

(declare-fun b!993776 () Bool)

(declare-fun res!664504 () Bool)

(assert (=> b!993776 (=> (not res!664504) (not e!560822))))

(declare-datatypes ((List!21092 0))(
  ( (Nil!21089) (Cons!21088 (h!22250 (_ BitVec 64)) (t!30101 List!21092)) )
))
(declare-fun acc!919 () List!21092)

(declare-fun contains!5849 (List!21092 (_ BitVec 64)) Bool)

(assert (=> b!993776 (= res!664504 (not (contains!5849 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993775 () Bool)

(declare-fun res!664502 () Bool)

(assert (=> b!993775 (=> (not res!664502) (not e!560822))))

(assert (=> b!993775 (= res!664502 (not (contains!5849 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993777 () Bool)

(declare-fun res!664501 () Bool)

(assert (=> b!993777 (=> (not res!664501) (not e!560822))))

(declare-fun noDuplicate!1446 (List!21092) Bool)

(assert (=> b!993777 (= res!664501 (noDuplicate!1446 acc!919))))

(declare-fun b!993778 () Bool)

(assert (=> b!993778 (= e!560822 (and (bvslt from!3778 size!36) (or (bvslt (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!3778) (size!30748 a!4424)))))))

(assert (= (and start!85592 res!664503) b!993775))

(assert (= (and b!993775 res!664502) b!993776))

(assert (= (and b!993776 res!664504) b!993777))

(assert (= (and b!993777 res!664501) b!993778))

(declare-fun m!921517 () Bool)

(assert (=> start!85592 m!921517))

(declare-fun m!921519 () Bool)

(assert (=> b!993776 m!921519))

(declare-fun m!921521 () Bool)

(assert (=> b!993775 m!921521))

(declare-fun m!921523 () Bool)

(assert (=> b!993777 m!921523))

(check-sat (not b!993775) (not b!993776) (not b!993777) (not start!85592))
(check-sat)
