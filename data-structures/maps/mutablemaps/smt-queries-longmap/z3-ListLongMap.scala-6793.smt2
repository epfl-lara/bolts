; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85526 () Bool)

(assert start!85526)

(declare-fun res!664231 () Bool)

(declare-fun e!560651 () Bool)

(assert (=> start!85526 (=> (not res!664231) (not e!560651))))

(declare-datatypes ((array!62763 0))(
  ( (array!62764 (arr!30221 (Array (_ BitVec 32) (_ BitVec 64))) (size!30718 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62763)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85526 (= res!664231 (and (= (size!30718 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62764 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30718 a!4424))))))

(assert (=> start!85526 e!560651))

(declare-fun array_inv!23211 (array!62763) Bool)

(assert (=> start!85526 (array_inv!23211 a!4424)))

(assert (=> start!85526 true))

(declare-fun b!993501 () Bool)

(assert (=> b!993501 (= e!560651 (not true))))

(declare-datatypes ((List!21065 0))(
  ( (Nil!21062) (Cons!21061 (h!22223 (_ BitVec 64)) (t!30074 List!21065)) )
))
(declare-fun acc!919 () List!21065)

(declare-fun arrayNoDuplicates!0 (array!62763 (_ BitVec 32) List!21065) Bool)

(assert (=> b!993501 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-datatypes ((Unit!32892 0))(
  ( (Unit!32893) )
))
(declare-fun lt!440532 () Unit!32892)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!62763 (_ BitVec 32) (_ BitVec 32) List!21065) Unit!32892)

(assert (=> b!993501 (= lt!440532 (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(declare-fun b!993502 () Bool)

(declare-fun res!664227 () Bool)

(assert (=> b!993502 (=> (not res!664227) (not e!560651))))

(declare-fun noDuplicate!1419 (List!21065) Bool)

(assert (=> b!993502 (= res!664227 (noDuplicate!1419 acc!919))))

(declare-fun b!993503 () Bool)

(declare-fun res!664228 () Bool)

(assert (=> b!993503 (=> (not res!664228) (not e!560651))))

(declare-fun contains!5822 (List!21065 (_ BitVec 64)) Bool)

(assert (=> b!993503 (= res!664228 (not (contains!5822 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993504 () Bool)

(declare-fun res!664229 () Bool)

(assert (=> b!993504 (=> (not res!664229) (not e!560651))))

(assert (=> b!993504 (= res!664229 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30718 a!4424))))))

(declare-fun b!993505 () Bool)

(declare-fun res!664230 () Bool)

(assert (=> b!993505 (=> (not res!664230) (not e!560651))))

(assert (=> b!993505 (= res!664230 (not (contains!5822 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!85526 res!664231) b!993505))

(assert (= (and b!993505 res!664230) b!993503))

(assert (= (and b!993503 res!664228) b!993502))

(assert (= (and b!993502 res!664227) b!993504))

(assert (= (and b!993504 res!664229) b!993501))

(declare-fun m!921287 () Bool)

(assert (=> start!85526 m!921287))

(declare-fun m!921289 () Bool)

(assert (=> b!993501 m!921289))

(declare-fun m!921291 () Bool)

(assert (=> b!993501 m!921291))

(declare-fun m!921293 () Bool)

(assert (=> b!993502 m!921293))

(declare-fun m!921295 () Bool)

(assert (=> b!993503 m!921295))

(declare-fun m!921297 () Bool)

(assert (=> b!993505 m!921297))

(check-sat (not b!993503) (not b!993502) (not start!85526) (not b!993505) (not b!993501))
