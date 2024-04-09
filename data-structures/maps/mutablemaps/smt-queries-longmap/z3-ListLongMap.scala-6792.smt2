; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85520 () Bool)

(assert start!85520)

(declare-fun b!993456 () Bool)

(declare-fun res!664186 () Bool)

(declare-fun e!560632 () Bool)

(assert (=> b!993456 (=> (not res!664186) (not e!560632))))

(declare-datatypes ((array!62757 0))(
  ( (array!62758 (arr!30218 (Array (_ BitVec 32) (_ BitVec 64))) (size!30715 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62757)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> b!993456 (= res!664186 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30715 a!4424))))))

(declare-fun b!993457 () Bool)

(declare-fun res!664183 () Bool)

(assert (=> b!993457 (=> (not res!664183) (not e!560632))))

(declare-datatypes ((List!21062 0))(
  ( (Nil!21059) (Cons!21058 (h!22220 (_ BitVec 64)) (t!30071 List!21062)) )
))
(declare-fun acc!919 () List!21062)

(declare-fun noDuplicate!1416 (List!21062) Bool)

(assert (=> b!993457 (= res!664183 (noDuplicate!1416 acc!919))))

(declare-fun res!664182 () Bool)

(assert (=> start!85520 (=> (not res!664182) (not e!560632))))

(assert (=> start!85520 (= res!664182 (and (= (size!30715 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62758 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30715 a!4424))))))

(assert (=> start!85520 e!560632))

(declare-fun array_inv!23208 (array!62757) Bool)

(assert (=> start!85520 (array_inv!23208 a!4424)))

(assert (=> start!85520 true))

(declare-fun b!993458 () Bool)

(assert (=> b!993458 (= e!560632 (not true))))

(declare-fun arrayNoDuplicates!0 (array!62757 (_ BitVec 32) List!21062) Bool)

(assert (=> b!993458 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-datatypes ((Unit!32886 0))(
  ( (Unit!32887) )
))
(declare-fun lt!440523 () Unit!32886)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!62757 (_ BitVec 32) (_ BitVec 32) List!21062) Unit!32886)

(assert (=> b!993458 (= lt!440523 (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(declare-fun b!993459 () Bool)

(declare-fun res!664184 () Bool)

(assert (=> b!993459 (=> (not res!664184) (not e!560632))))

(declare-fun contains!5819 (List!21062 (_ BitVec 64)) Bool)

(assert (=> b!993459 (= res!664184 (not (contains!5819 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993460 () Bool)

(declare-fun res!664185 () Bool)

(assert (=> b!993460 (=> (not res!664185) (not e!560632))))

(assert (=> b!993460 (= res!664185 (not (contains!5819 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!85520 res!664182) b!993460))

(assert (= (and b!993460 res!664185) b!993459))

(assert (= (and b!993459 res!664184) b!993457))

(assert (= (and b!993457 res!664183) b!993456))

(assert (= (and b!993456 res!664186) b!993458))

(declare-fun m!921251 () Bool)

(assert (=> b!993460 m!921251))

(declare-fun m!921253 () Bool)

(assert (=> b!993457 m!921253))

(declare-fun m!921255 () Bool)

(assert (=> start!85520 m!921255))

(declare-fun m!921257 () Bool)

(assert (=> b!993459 m!921257))

(declare-fun m!921259 () Bool)

(assert (=> b!993458 m!921259))

(declare-fun m!921261 () Bool)

(assert (=> b!993458 m!921261))

(check-sat (not b!993459) (not b!993460) (not start!85520) (not b!993458) (not b!993457))
