; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85610 () Bool)

(assert start!85610)

(declare-fun b!993865 () Bool)

(declare-fun res!664593 () Bool)

(declare-fun e!560875 () Bool)

(assert (=> b!993865 (=> (not res!664593) (not e!560875))))

(declare-datatypes ((List!21101 0))(
  ( (Nil!21098) (Cons!21097 (h!22259 (_ BitVec 64)) (t!30110 List!21101)) )
))
(declare-fun acc!919 () List!21101)

(declare-fun contains!5858 (List!21101 (_ BitVec 64)) Bool)

(assert (=> b!993865 (= res!664593 (not (contains!5858 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993866 () Bool)

(declare-fun res!664591 () Bool)

(assert (=> b!993866 (=> (not res!664591) (not e!560875))))

(assert (=> b!993866 (= res!664591 (not (contains!5858 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993867 () Bool)

(declare-fun res!664594 () Bool)

(assert (=> b!993867 (=> (not res!664594) (not e!560875))))

(declare-fun noDuplicate!1455 (List!21101) Bool)

(assert (=> b!993867 (= res!664594 (noDuplicate!1455 acc!919))))

(declare-datatypes ((array!62844 0))(
  ( (array!62845 (arr!30260 (Array (_ BitVec 32) (_ BitVec 64))) (size!30757 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62844)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun b!993868 () Bool)

(declare-fun size!36 () (_ BitVec 32))

(assert (=> b!993868 (= e!560875 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30757 a!4424)) (bvsge (bvsub size!36 (bvadd #b00000000000000000000000000000001 from!3778)) (bvsub size!36 from!3778))))))

(declare-fun res!664592 () Bool)

(assert (=> start!85610 (=> (not res!664592) (not e!560875))))

(assert (=> start!85610 (= res!664592 (and (= (size!30757 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62845 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30757 a!4424))))))

(assert (=> start!85610 e!560875))

(declare-fun array_inv!23250 (array!62844) Bool)

(assert (=> start!85610 (array_inv!23250 a!4424)))

(assert (=> start!85610 true))

(assert (= (and start!85610 res!664592) b!993865))

(assert (= (and b!993865 res!664593) b!993866))

(assert (= (and b!993866 res!664591) b!993867))

(assert (= (and b!993867 res!664594) b!993868))

(declare-fun m!921589 () Bool)

(assert (=> b!993865 m!921589))

(declare-fun m!921591 () Bool)

(assert (=> b!993866 m!921591))

(declare-fun m!921593 () Bool)

(assert (=> b!993867 m!921593))

(declare-fun m!921595 () Bool)

(assert (=> start!85610 m!921595))

(check-sat (not b!993867) (not b!993866) (not b!993865) (not start!85610))
(check-sat)
