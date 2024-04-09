; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85580 () Bool)

(assert start!85580)

(declare-fun res!664442 () Bool)

(declare-fun e!560786 () Bool)

(assert (=> start!85580 (=> (not res!664442) (not e!560786))))

(declare-datatypes ((array!62814 0))(
  ( (array!62815 (arr!30245 (Array (_ BitVec 32) (_ BitVec 64))) (size!30742 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62814)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85580 (= res!664442 (and (= (size!30742 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62815 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30742 a!4424))))))

(assert (=> start!85580 e!560786))

(declare-fun array_inv!23235 (array!62814) Bool)

(assert (=> start!85580 (array_inv!23235 a!4424)))

(assert (=> start!85580 true))

(declare-fun b!993716 () Bool)

(declare-fun res!664443 () Bool)

(assert (=> b!993716 (=> (not res!664443) (not e!560786))))

(declare-datatypes ((List!21086 0))(
  ( (Nil!21083) (Cons!21082 (h!22244 (_ BitVec 64)) (t!30095 List!21086)) )
))
(declare-fun acc!919 () List!21086)

(declare-fun contains!5843 (List!21086 (_ BitVec 64)) Bool)

(assert (=> b!993716 (= res!664443 (not (contains!5843 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993717 () Bool)

(declare-fun res!664444 () Bool)

(assert (=> b!993717 (=> (not res!664444) (not e!560786))))

(assert (=> b!993717 (= res!664444 (not (contains!5843 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993718 () Bool)

(assert (=> b!993718 (= e!560786 false)))

(declare-fun lt!440577 () Bool)

(declare-fun noDuplicate!1440 (List!21086) Bool)

(assert (=> b!993718 (= lt!440577 (noDuplicate!1440 acc!919))))

(assert (= (and start!85580 res!664442) b!993716))

(assert (= (and b!993716 res!664443) b!993717))

(assert (= (and b!993717 res!664444) b!993718))

(declare-fun m!921469 () Bool)

(assert (=> start!85580 m!921469))

(declare-fun m!921471 () Bool)

(assert (=> b!993716 m!921471))

(declare-fun m!921473 () Bool)

(assert (=> b!993717 m!921473))

(declare-fun m!921475 () Bool)

(assert (=> b!993718 m!921475))

(check-sat (not b!993716) (not b!993717) (not start!85580) (not b!993718))
