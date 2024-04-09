; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85598 () Bool)

(assert start!85598)

(declare-fun res!664532 () Bool)

(declare-fun e!560839 () Bool)

(assert (=> start!85598 (=> (not res!664532) (not e!560839))))

(declare-datatypes ((array!62832 0))(
  ( (array!62833 (arr!30254 (Array (_ BitVec 32) (_ BitVec 64))) (size!30751 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62832)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85598 (= res!664532 (and (= (size!30751 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62833 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30751 a!4424))))))

(assert (=> start!85598 e!560839))

(declare-fun array_inv!23244 (array!62832) Bool)

(assert (=> start!85598 (array_inv!23244 a!4424)))

(assert (=> start!85598 true))

(declare-fun b!993806 () Bool)

(declare-fun res!664534 () Bool)

(assert (=> b!993806 (=> (not res!664534) (not e!560839))))

(declare-datatypes ((List!21095 0))(
  ( (Nil!21092) (Cons!21091 (h!22253 (_ BitVec 64)) (t!30104 List!21095)) )
))
(declare-fun acc!919 () List!21095)

(declare-fun contains!5852 (List!21095 (_ BitVec 64)) Bool)

(assert (=> b!993806 (= res!664534 (not (contains!5852 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993807 () Bool)

(declare-fun res!664533 () Bool)

(assert (=> b!993807 (=> (not res!664533) (not e!560839))))

(assert (=> b!993807 (= res!664533 (not (contains!5852 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993808 () Bool)

(assert (=> b!993808 (= e!560839 false)))

(declare-fun lt!440595 () Bool)

(declare-fun noDuplicate!1449 (List!21095) Bool)

(assert (=> b!993808 (= lt!440595 (noDuplicate!1449 acc!919))))

(assert (= (and start!85598 res!664532) b!993806))

(assert (= (and b!993806 res!664534) b!993807))

(assert (= (and b!993807 res!664533) b!993808))

(declare-fun m!921541 () Bool)

(assert (=> start!85598 m!921541))

(declare-fun m!921543 () Bool)

(assert (=> b!993806 m!921543))

(declare-fun m!921545 () Bool)

(assert (=> b!993807 m!921545))

(declare-fun m!921547 () Bool)

(assert (=> b!993808 m!921547))

(check-sat (not b!993808) (not start!85598) (not b!993807) (not b!993806))
(check-sat)
