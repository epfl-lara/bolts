; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85514 () Bool)

(assert start!85514)

(declare-fun b!993411 () Bool)

(declare-fun res!664141 () Bool)

(declare-fun e!560615 () Bool)

(assert (=> b!993411 (=> (not res!664141) (not e!560615))))

(declare-datatypes ((List!21059 0))(
  ( (Nil!21056) (Cons!21055 (h!22217 (_ BitVec 64)) (t!30068 List!21059)) )
))
(declare-fun acc!919 () List!21059)

(declare-fun noDuplicate!1413 (List!21059) Bool)

(assert (=> b!993411 (= res!664141 (noDuplicate!1413 acc!919))))

(declare-fun b!993412 () Bool)

(declare-datatypes ((array!62751 0))(
  ( (array!62752 (arr!30215 (Array (_ BitVec 32) (_ BitVec 64))) (size!30712 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62751)

(assert (=> b!993412 (= e!560615 (not (bvslt (size!30712 a!4424) #b01111111111111111111111111111111)))))

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!62751 (_ BitVec 32) List!21059) Bool)

(assert (=> b!993412 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-fun size!36 () (_ BitVec 32))

(declare-datatypes ((Unit!32880 0))(
  ( (Unit!32881) )
))
(declare-fun lt!440514 () Unit!32880)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!62751 (_ BitVec 32) (_ BitVec 32) List!21059) Unit!32880)

(assert (=> b!993412 (= lt!440514 (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(declare-fun b!993413 () Bool)

(declare-fun res!664139 () Bool)

(assert (=> b!993413 (=> (not res!664139) (not e!560615))))

(declare-fun contains!5816 (List!21059 (_ BitVec 64)) Bool)

(assert (=> b!993413 (= res!664139 (not (contains!5816 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!664138 () Bool)

(assert (=> start!85514 (=> (not res!664138) (not e!560615))))

(assert (=> start!85514 (= res!664138 (and (= (size!30712 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62752 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30712 a!4424))))))

(assert (=> start!85514 e!560615))

(declare-fun array_inv!23205 (array!62751) Bool)

(assert (=> start!85514 (array_inv!23205 a!4424)))

(assert (=> start!85514 true))

(declare-fun b!993414 () Bool)

(declare-fun res!664137 () Bool)

(assert (=> b!993414 (=> (not res!664137) (not e!560615))))

(assert (=> b!993414 (= res!664137 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30712 a!4424))))))

(declare-fun b!993415 () Bool)

(declare-fun res!664140 () Bool)

(assert (=> b!993415 (=> (not res!664140) (not e!560615))))

(assert (=> b!993415 (= res!664140 (not (contains!5816 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!85514 res!664138) b!993415))

(assert (= (and b!993415 res!664140) b!993413))

(assert (= (and b!993413 res!664139) b!993411))

(assert (= (and b!993411 res!664141) b!993414))

(assert (= (and b!993414 res!664137) b!993412))

(declare-fun m!921215 () Bool)

(assert (=> b!993413 m!921215))

(declare-fun m!921217 () Bool)

(assert (=> b!993411 m!921217))

(declare-fun m!921219 () Bool)

(assert (=> start!85514 m!921219))

(declare-fun m!921221 () Bool)

(assert (=> b!993415 m!921221))

(declare-fun m!921223 () Bool)

(assert (=> b!993412 m!921223))

(declare-fun m!921225 () Bool)

(assert (=> b!993412 m!921225))

(check-sat (not start!85514) (not b!993412) (not b!993413) (not b!993415) (not b!993411))
(check-sat)
