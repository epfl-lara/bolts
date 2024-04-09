; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85538 () Bool)

(assert start!85538)

(declare-fun b!993568 () Bool)

(declare-fun res!664296 () Bool)

(declare-fun e!560687 () Bool)

(assert (=> b!993568 (=> (not res!664296) (not e!560687))))

(declare-datatypes ((List!21071 0))(
  ( (Nil!21068) (Cons!21067 (h!22229 (_ BitVec 64)) (t!30080 List!21071)) )
))
(declare-fun acc!919 () List!21071)

(declare-fun contains!5828 (List!21071 (_ BitVec 64)) Bool)

(assert (=> b!993568 (= res!664296 (not (contains!5828 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((array!62775 0))(
  ( (array!62776 (arr!30227 (Array (_ BitVec 32) (_ BitVec 64))) (size!30724 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62775)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(declare-fun b!993571 () Bool)

(assert (=> b!993571 (= e!560687 (and (bvsge from!3778 size!36) (bvsge (size!30724 a!4424) #b01111111111111111111111111111111)))))

(declare-fun res!664297 () Bool)

(assert (=> start!85538 (=> (not res!664297) (not e!560687))))

(assert (=> start!85538 (= res!664297 (and (= (size!30724 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62776 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30724 a!4424))))))

(assert (=> start!85538 e!560687))

(declare-fun array_inv!23217 (array!62775) Bool)

(assert (=> start!85538 (array_inv!23217 a!4424)))

(assert (=> start!85538 true))

(declare-fun b!993569 () Bool)

(declare-fun res!664294 () Bool)

(assert (=> b!993569 (=> (not res!664294) (not e!560687))))

(assert (=> b!993569 (= res!664294 (not (contains!5828 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993570 () Bool)

(declare-fun res!664295 () Bool)

(assert (=> b!993570 (=> (not res!664295) (not e!560687))))

(declare-fun noDuplicate!1425 (List!21071) Bool)

(assert (=> b!993570 (= res!664295 (noDuplicate!1425 acc!919))))

(assert (= (and start!85538 res!664297) b!993568))

(assert (= (and b!993568 res!664296) b!993569))

(assert (= (and b!993569 res!664294) b!993570))

(assert (= (and b!993570 res!664295) b!993571))

(declare-fun m!921343 () Bool)

(assert (=> b!993568 m!921343))

(declare-fun m!921345 () Bool)

(assert (=> start!85538 m!921345))

(declare-fun m!921347 () Bool)

(assert (=> b!993569 m!921347))

(declare-fun m!921349 () Bool)

(assert (=> b!993570 m!921349))

(check-sat (not b!993570) (not b!993568) (not start!85538) (not b!993569))
(check-sat)
