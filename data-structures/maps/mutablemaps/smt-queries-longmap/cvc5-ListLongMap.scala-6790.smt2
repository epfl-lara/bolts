; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85506 () Bool)

(assert start!85506)

(declare-fun b!993351 () Bool)

(declare-fun res!664081 () Bool)

(declare-fun e!560591 () Bool)

(assert (=> b!993351 (=> (not res!664081) (not e!560591))))

(declare-datatypes ((List!21055 0))(
  ( (Nil!21052) (Cons!21051 (h!22213 (_ BitVec 64)) (t!30064 List!21055)) )
))
(declare-fun acc!919 () List!21055)

(declare-fun noDuplicate!1409 (List!21055) Bool)

(assert (=> b!993351 (= res!664081 (noDuplicate!1409 acc!919))))

(declare-fun b!993352 () Bool)

(declare-fun res!664080 () Bool)

(assert (=> b!993352 (=> (not res!664080) (not e!560591))))

(declare-fun contains!5812 (List!21055 (_ BitVec 64)) Bool)

(assert (=> b!993352 (= res!664080 (not (contains!5812 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993353 () Bool)

(declare-fun res!664079 () Bool)

(assert (=> b!993353 (=> (not res!664079) (not e!560591))))

(declare-datatypes ((array!62743 0))(
  ( (array!62744 (arr!30211 (Array (_ BitVec 32) (_ BitVec 64))) (size!30708 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62743)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> b!993353 (= res!664079 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30708 a!4424))))))

(declare-fun b!993354 () Bool)

(assert (=> b!993354 (= e!560591 (not true))))

(declare-fun arrayNoDuplicates!0 (array!62743 (_ BitVec 32) List!21055) Bool)

(assert (=> b!993354 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-datatypes ((Unit!32872 0))(
  ( (Unit!32873) )
))
(declare-fun lt!440502 () Unit!32872)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!62743 (_ BitVec 32) (_ BitVec 32) List!21055) Unit!32872)

(assert (=> b!993354 (= lt!440502 (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(declare-fun res!664077 () Bool)

(assert (=> start!85506 (=> (not res!664077) (not e!560591))))

(assert (=> start!85506 (= res!664077 (and (= (size!30708 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62744 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30708 a!4424))))))

(assert (=> start!85506 e!560591))

(declare-fun array_inv!23201 (array!62743) Bool)

(assert (=> start!85506 (array_inv!23201 a!4424)))

(assert (=> start!85506 true))

(declare-fun b!993355 () Bool)

(declare-fun res!664078 () Bool)

(assert (=> b!993355 (=> (not res!664078) (not e!560591))))

(assert (=> b!993355 (= res!664078 (not (contains!5812 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!85506 res!664077) b!993355))

(assert (= (and b!993355 res!664078) b!993352))

(assert (= (and b!993352 res!664080) b!993351))

(assert (= (and b!993351 res!664081) b!993353))

(assert (= (and b!993353 res!664079) b!993354))

(declare-fun m!921167 () Bool)

(assert (=> b!993354 m!921167))

(declare-fun m!921169 () Bool)

(assert (=> b!993354 m!921169))

(declare-fun m!921171 () Bool)

(assert (=> b!993352 m!921171))

(declare-fun m!921173 () Bool)

(assert (=> b!993351 m!921173))

(declare-fun m!921175 () Bool)

(assert (=> b!993355 m!921175))

(declare-fun m!921177 () Bool)

(assert (=> start!85506 m!921177))

(push 1)

(assert (not b!993354))

(assert (not start!85506))

(assert (not b!993351))

(assert (not b!993355))

(assert (not b!993352))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

