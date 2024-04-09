; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85478 () Bool)

(assert start!85478)

(declare-fun res!663949 () Bool)

(declare-fun e!560506 () Bool)

(assert (=> start!85478 (=> (not res!663949) (not e!560506))))

(declare-datatypes ((array!62715 0))(
  ( (array!62716 (arr!30197 (Array (_ BitVec 32) (_ BitVec 64))) (size!30694 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62715)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85478 (= res!663949 (and (= (size!30694 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62716 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30694 a!4424))))))

(assert (=> start!85478 e!560506))

(declare-fun array_inv!23187 (array!62715) Bool)

(assert (=> start!85478 (array_inv!23187 a!4424)))

(assert (=> start!85478 true))

(declare-fun b!993221 () Bool)

(declare-fun res!663947 () Bool)

(assert (=> b!993221 (=> (not res!663947) (not e!560506))))

(declare-datatypes ((List!21041 0))(
  ( (Nil!21038) (Cons!21037 (h!22199 (_ BitVec 64)) (t!30050 List!21041)) )
))
(declare-fun acc!919 () List!21041)

(declare-fun contains!5798 (List!21041 (_ BitVec 64)) Bool)

(assert (=> b!993221 (= res!663947 (not (contains!5798 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993222 () Bool)

(declare-fun res!663948 () Bool)

(assert (=> b!993222 (=> (not res!663948) (not e!560506))))

(assert (=> b!993222 (= res!663948 (not (contains!5798 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993223 () Bool)

(assert (=> b!993223 (= e!560506 false)))

(declare-fun lt!440460 () Bool)

(declare-fun noDuplicate!1395 (List!21041) Bool)

(assert (=> b!993223 (= lt!440460 (noDuplicate!1395 acc!919))))

(assert (= (and start!85478 res!663949) b!993221))

(assert (= (and b!993221 res!663947) b!993222))

(assert (= (and b!993222 res!663948) b!993223))

(declare-fun m!921055 () Bool)

(assert (=> start!85478 m!921055))

(declare-fun m!921057 () Bool)

(assert (=> b!993221 m!921057))

(declare-fun m!921059 () Bool)

(assert (=> b!993222 m!921059))

(declare-fun m!921061 () Bool)

(assert (=> b!993223 m!921061))

(check-sat (not b!993222) (not start!85478) (not b!993221) (not b!993223))
