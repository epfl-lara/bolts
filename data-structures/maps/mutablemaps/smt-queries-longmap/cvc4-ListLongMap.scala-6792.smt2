; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85522 () Bool)

(assert start!85522)

(declare-fun b!993471 () Bool)

(declare-fun res!664198 () Bool)

(declare-fun e!560638 () Bool)

(assert (=> b!993471 (=> (not res!664198) (not e!560638))))

(declare-datatypes ((List!21063 0))(
  ( (Nil!21060) (Cons!21059 (h!22221 (_ BitVec 64)) (t!30072 List!21063)) )
))
(declare-fun acc!919 () List!21063)

(declare-fun contains!5820 (List!21063 (_ BitVec 64)) Bool)

(assert (=> b!993471 (= res!664198 (not (contains!5820 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993472 () Bool)

(declare-fun res!664197 () Bool)

(assert (=> b!993472 (=> (not res!664197) (not e!560638))))

(declare-fun noDuplicate!1417 (List!21063) Bool)

(assert (=> b!993472 (= res!664197 (noDuplicate!1417 acc!919))))

(declare-fun b!993473 () Bool)

(declare-fun res!664200 () Bool)

(assert (=> b!993473 (=> (not res!664200) (not e!560638))))

(declare-datatypes ((array!62759 0))(
  ( (array!62760 (arr!30219 (Array (_ BitVec 32) (_ BitVec 64))) (size!30716 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62759)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> b!993473 (= res!664200 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30716 a!4424))))))

(declare-fun b!993474 () Bool)

(assert (=> b!993474 (= e!560638 (not true))))

(declare-fun arrayNoDuplicates!0 (array!62759 (_ BitVec 32) List!21063) Bool)

(assert (=> b!993474 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-datatypes ((Unit!32888 0))(
  ( (Unit!32889) )
))
(declare-fun lt!440526 () Unit!32888)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!62759 (_ BitVec 32) (_ BitVec 32) List!21063) Unit!32888)

(assert (=> b!993474 (= lt!440526 (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(declare-fun res!664199 () Bool)

(assert (=> start!85522 (=> (not res!664199) (not e!560638))))

(assert (=> start!85522 (= res!664199 (and (= (size!30716 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62760 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30716 a!4424))))))

(assert (=> start!85522 e!560638))

(declare-fun array_inv!23209 (array!62759) Bool)

(assert (=> start!85522 (array_inv!23209 a!4424)))

(assert (=> start!85522 true))

(declare-fun b!993475 () Bool)

(declare-fun res!664201 () Bool)

(assert (=> b!993475 (=> (not res!664201) (not e!560638))))

(assert (=> b!993475 (= res!664201 (not (contains!5820 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!85522 res!664199) b!993475))

(assert (= (and b!993475 res!664201) b!993471))

(assert (= (and b!993471 res!664198) b!993472))

(assert (= (and b!993472 res!664197) b!993473))

(assert (= (and b!993473 res!664200) b!993474))

(declare-fun m!921263 () Bool)

(assert (=> b!993474 m!921263))

(declare-fun m!921265 () Bool)

(assert (=> b!993474 m!921265))

(declare-fun m!921267 () Bool)

(assert (=> b!993475 m!921267))

(declare-fun m!921269 () Bool)

(assert (=> b!993472 m!921269))

(declare-fun m!921271 () Bool)

(assert (=> start!85522 m!921271))

(declare-fun m!921273 () Bool)

(assert (=> b!993471 m!921273))

(push 1)

(assert (not b!993472))

(assert (not b!993475))

(assert (not b!993471))

(assert (not start!85522))

(assert (not b!993474))

(check-sat)

