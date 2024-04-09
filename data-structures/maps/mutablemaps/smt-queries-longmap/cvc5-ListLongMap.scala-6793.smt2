; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85524 () Bool)

(assert start!85524)

(declare-fun res!664214 () Bool)

(declare-fun e!560645 () Bool)

(assert (=> start!85524 (=> (not res!664214) (not e!560645))))

(declare-datatypes ((array!62761 0))(
  ( (array!62762 (arr!30220 (Array (_ BitVec 32) (_ BitVec 64))) (size!30717 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62761)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85524 (= res!664214 (and (= (size!30717 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62762 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30717 a!4424))))))

(assert (=> start!85524 e!560645))

(declare-fun array_inv!23210 (array!62761) Bool)

(assert (=> start!85524 (array_inv!23210 a!4424)))

(assert (=> start!85524 true))

(declare-fun b!993486 () Bool)

(declare-fun res!664216 () Bool)

(assert (=> b!993486 (=> (not res!664216) (not e!560645))))

(declare-datatypes ((List!21064 0))(
  ( (Nil!21061) (Cons!21060 (h!22222 (_ BitVec 64)) (t!30073 List!21064)) )
))
(declare-fun acc!919 () List!21064)

(declare-fun contains!5821 (List!21064 (_ BitVec 64)) Bool)

(assert (=> b!993486 (= res!664216 (not (contains!5821 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993487 () Bool)

(assert (=> b!993487 (= e!560645 (not true))))

(declare-fun arrayNoDuplicates!0 (array!62761 (_ BitVec 32) List!21064) Bool)

(assert (=> b!993487 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-datatypes ((Unit!32890 0))(
  ( (Unit!32891) )
))
(declare-fun lt!440529 () Unit!32890)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!62761 (_ BitVec 32) (_ BitVec 32) List!21064) Unit!32890)

(assert (=> b!993487 (= lt!440529 (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(declare-fun b!993488 () Bool)

(declare-fun res!664215 () Bool)

(assert (=> b!993488 (=> (not res!664215) (not e!560645))))

(assert (=> b!993488 (= res!664215 (not (contains!5821 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993489 () Bool)

(declare-fun res!664212 () Bool)

(assert (=> b!993489 (=> (not res!664212) (not e!560645))))

(declare-fun noDuplicate!1418 (List!21064) Bool)

(assert (=> b!993489 (= res!664212 (noDuplicate!1418 acc!919))))

(declare-fun b!993490 () Bool)

(declare-fun res!664213 () Bool)

(assert (=> b!993490 (=> (not res!664213) (not e!560645))))

(assert (=> b!993490 (= res!664213 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30717 a!4424))))))

(assert (= (and start!85524 res!664214) b!993486))

(assert (= (and b!993486 res!664216) b!993488))

(assert (= (and b!993488 res!664215) b!993489))

(assert (= (and b!993489 res!664212) b!993490))

(assert (= (and b!993490 res!664213) b!993487))

(declare-fun m!921275 () Bool)

(assert (=> b!993489 m!921275))

(declare-fun m!921277 () Bool)

(assert (=> b!993488 m!921277))

(declare-fun m!921279 () Bool)

(assert (=> b!993486 m!921279))

(declare-fun m!921281 () Bool)

(assert (=> b!993487 m!921281))

(declare-fun m!921283 () Bool)

(assert (=> b!993487 m!921283))

(declare-fun m!921285 () Bool)

(assert (=> start!85524 m!921285))

(push 1)

(assert (not b!993487))

(assert (not b!993489))

(assert (not b!993488))

(assert (not start!85524))

(assert (not b!993486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

