; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85508 () Bool)

(assert start!85508)

(declare-fun res!664092 () Bool)

(declare-fun e!560596 () Bool)

(assert (=> start!85508 (=> (not res!664092) (not e!560596))))

(declare-datatypes ((array!62745 0))(
  ( (array!62746 (arr!30212 (Array (_ BitVec 32) (_ BitVec 64))) (size!30709 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62745)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85508 (= res!664092 (and (= (size!30709 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62746 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30709 a!4424))))))

(assert (=> start!85508 e!560596))

(declare-fun array_inv!23202 (array!62745) Bool)

(assert (=> start!85508 (array_inv!23202 a!4424)))

(assert (=> start!85508 true))

(declare-fun b!993366 () Bool)

(declare-fun res!664093 () Bool)

(assert (=> b!993366 (=> (not res!664093) (not e!560596))))

(declare-datatypes ((List!21056 0))(
  ( (Nil!21053) (Cons!21052 (h!22214 (_ BitVec 64)) (t!30065 List!21056)) )
))
(declare-fun acc!919 () List!21056)

(declare-fun noDuplicate!1410 (List!21056) Bool)

(assert (=> b!993366 (= res!664093 (noDuplicate!1410 acc!919))))

(declare-fun b!993367 () Bool)

(assert (=> b!993367 (= e!560596 (not true))))

(declare-fun arrayNoDuplicates!0 (array!62745 (_ BitVec 32) List!21056) Bool)

(assert (=> b!993367 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-datatypes ((Unit!32874 0))(
  ( (Unit!32875) )
))
(declare-fun lt!440505 () Unit!32874)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!62745 (_ BitVec 32) (_ BitVec 32) List!21056) Unit!32874)

(assert (=> b!993367 (= lt!440505 (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(declare-fun b!993368 () Bool)

(declare-fun res!664094 () Bool)

(assert (=> b!993368 (=> (not res!664094) (not e!560596))))

(declare-fun contains!5813 (List!21056 (_ BitVec 64)) Bool)

(assert (=> b!993368 (= res!664094 (not (contains!5813 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993369 () Bool)

(declare-fun res!664095 () Bool)

(assert (=> b!993369 (=> (not res!664095) (not e!560596))))

(assert (=> b!993369 (= res!664095 (not (contains!5813 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993370 () Bool)

(declare-fun res!664096 () Bool)

(assert (=> b!993370 (=> (not res!664096) (not e!560596))))

(assert (=> b!993370 (= res!664096 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30709 a!4424))))))

(assert (= (and start!85508 res!664092) b!993368))

(assert (= (and b!993368 res!664094) b!993369))

(assert (= (and b!993369 res!664095) b!993366))

(assert (= (and b!993366 res!664093) b!993370))

(assert (= (and b!993370 res!664096) b!993367))

(declare-fun m!921179 () Bool)

(assert (=> b!993367 m!921179))

(declare-fun m!921181 () Bool)

(assert (=> b!993367 m!921181))

(declare-fun m!921183 () Bool)

(assert (=> b!993369 m!921183))

(declare-fun m!921185 () Bool)

(assert (=> b!993366 m!921185))

(declare-fun m!921187 () Bool)

(assert (=> b!993368 m!921187))

(declare-fun m!921189 () Bool)

(assert (=> start!85508 m!921189))

(check-sat (not b!993367) (not start!85508) (not b!993368) (not b!993369) (not b!993366))
