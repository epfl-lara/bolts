; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85518 () Bool)

(assert start!85518)

(declare-fun b!993441 () Bool)

(declare-fun e!560626 () Bool)

(assert (=> b!993441 (= e!560626 (not true))))

(declare-datatypes ((array!62755 0))(
  ( (array!62756 (arr!30217 (Array (_ BitVec 32) (_ BitVec 64))) (size!30714 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62755)

(declare-fun from!3778 () (_ BitVec 32))

(declare-datatypes ((List!21061 0))(
  ( (Nil!21058) (Cons!21057 (h!22219 (_ BitVec 64)) (t!30070 List!21061)) )
))
(declare-fun acc!919 () List!21061)

(declare-fun arrayNoDuplicates!0 (array!62755 (_ BitVec 32) List!21061) Bool)

(assert (=> b!993441 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-datatypes ((Unit!32884 0))(
  ( (Unit!32885) )
))
(declare-fun lt!440520 () Unit!32884)

(declare-fun size!36 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!62755 (_ BitVec 32) (_ BitVec 32) List!21061) Unit!32884)

(assert (=> b!993441 (= lt!440520 (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(declare-fun b!993442 () Bool)

(declare-fun res!664170 () Bool)

(assert (=> b!993442 (=> (not res!664170) (not e!560626))))

(declare-fun contains!5818 (List!21061 (_ BitVec 64)) Bool)

(assert (=> b!993442 (= res!664170 (not (contains!5818 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!664168 () Bool)

(assert (=> start!85518 (=> (not res!664168) (not e!560626))))

(assert (=> start!85518 (= res!664168 (and (= (size!30714 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62756 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30714 a!4424))))))

(assert (=> start!85518 e!560626))

(declare-fun array_inv!23207 (array!62755) Bool)

(assert (=> start!85518 (array_inv!23207 a!4424)))

(assert (=> start!85518 true))

(declare-fun b!993443 () Bool)

(declare-fun res!664171 () Bool)

(assert (=> b!993443 (=> (not res!664171) (not e!560626))))

(assert (=> b!993443 (= res!664171 (not (contains!5818 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993444 () Bool)

(declare-fun res!664167 () Bool)

(assert (=> b!993444 (=> (not res!664167) (not e!560626))))

(declare-fun noDuplicate!1415 (List!21061) Bool)

(assert (=> b!993444 (= res!664167 (noDuplicate!1415 acc!919))))

(declare-fun b!993445 () Bool)

(declare-fun res!664169 () Bool)

(assert (=> b!993445 (=> (not res!664169) (not e!560626))))

(assert (=> b!993445 (= res!664169 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30714 a!4424))))))

(assert (= (and start!85518 res!664168) b!993443))

(assert (= (and b!993443 res!664171) b!993442))

(assert (= (and b!993442 res!664170) b!993444))

(assert (= (and b!993444 res!664167) b!993445))

(assert (= (and b!993445 res!664169) b!993441))

(declare-fun m!921239 () Bool)

(assert (=> start!85518 m!921239))

(declare-fun m!921241 () Bool)

(assert (=> b!993442 m!921241))

(declare-fun m!921243 () Bool)

(assert (=> b!993444 m!921243))

(declare-fun m!921245 () Bool)

(assert (=> b!993443 m!921245))

(declare-fun m!921247 () Bool)

(assert (=> b!993441 m!921247))

(declare-fun m!921249 () Bool)

(assert (=> b!993441 m!921249))

(push 1)

(assert (not b!993443))

(assert (not b!993441))

(assert (not start!85518))

(assert (not b!993442))

(assert (not b!993444))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

