; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85600 () Bool)

(assert start!85600)

(declare-fun res!664541 () Bool)

(declare-fun e!560845 () Bool)

(assert (=> start!85600 (=> (not res!664541) (not e!560845))))

(declare-datatypes ((array!62834 0))(
  ( (array!62835 (arr!30255 (Array (_ BitVec 32) (_ BitVec 64))) (size!30752 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62834)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85600 (= res!664541 (and (= (size!30752 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62835 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30752 a!4424))))))

(assert (=> start!85600 e!560845))

(declare-fun array_inv!23245 (array!62834) Bool)

(assert (=> start!85600 (array_inv!23245 a!4424)))

(assert (=> start!85600 true))

(declare-fun b!993815 () Bool)

(declare-fun res!664543 () Bool)

(assert (=> b!993815 (=> (not res!664543) (not e!560845))))

(declare-datatypes ((List!21096 0))(
  ( (Nil!21093) (Cons!21092 (h!22254 (_ BitVec 64)) (t!30105 List!21096)) )
))
(declare-fun acc!919 () List!21096)

(declare-fun contains!5853 (List!21096 (_ BitVec 64)) Bool)

(assert (=> b!993815 (= res!664543 (not (contains!5853 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993816 () Bool)

(declare-fun res!664542 () Bool)

(assert (=> b!993816 (=> (not res!664542) (not e!560845))))

(assert (=> b!993816 (= res!664542 (not (contains!5853 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993817 () Bool)

(assert (=> b!993817 (= e!560845 false)))

(declare-fun lt!440598 () Bool)

(declare-fun noDuplicate!1450 (List!21096) Bool)

(assert (=> b!993817 (= lt!440598 (noDuplicate!1450 acc!919))))

(assert (= (and start!85600 res!664541) b!993815))

(assert (= (and b!993815 res!664543) b!993816))

(assert (= (and b!993816 res!664542) b!993817))

(declare-fun m!921549 () Bool)

(assert (=> start!85600 m!921549))

(declare-fun m!921551 () Bool)

(assert (=> b!993815 m!921551))

(declare-fun m!921553 () Bool)

(assert (=> b!993816 m!921553))

(declare-fun m!921555 () Bool)

(assert (=> b!993817 m!921555))

(push 1)

(assert (not b!993817))

(assert (not start!85600))

(assert (not b!993816))

(assert (not b!993815))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

