; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85602 () Bool)

(assert start!85602)

(declare-fun res!664552 () Bool)

(declare-fun e!560851 () Bool)

(assert (=> start!85602 (=> (not res!664552) (not e!560851))))

(declare-datatypes ((array!62836 0))(
  ( (array!62837 (arr!30256 (Array (_ BitVec 32) (_ BitVec 64))) (size!30753 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62836)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85602 (= res!664552 (and (= (size!30753 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62837 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30753 a!4424))))))

(assert (=> start!85602 e!560851))

(declare-fun array_inv!23246 (array!62836) Bool)

(assert (=> start!85602 (array_inv!23246 a!4424)))

(assert (=> start!85602 true))

(declare-fun b!993824 () Bool)

(declare-fun res!664550 () Bool)

(assert (=> b!993824 (=> (not res!664550) (not e!560851))))

(declare-datatypes ((List!21097 0))(
  ( (Nil!21094) (Cons!21093 (h!22255 (_ BitVec 64)) (t!30106 List!21097)) )
))
(declare-fun acc!919 () List!21097)

(declare-fun contains!5854 (List!21097 (_ BitVec 64)) Bool)

(assert (=> b!993824 (= res!664550 (not (contains!5854 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993825 () Bool)

(declare-fun res!664551 () Bool)

(assert (=> b!993825 (=> (not res!664551) (not e!560851))))

(assert (=> b!993825 (= res!664551 (not (contains!5854 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993826 () Bool)

(assert (=> b!993826 (= e!560851 false)))

(declare-fun lt!440601 () Bool)

(declare-fun noDuplicate!1451 (List!21097) Bool)

(assert (=> b!993826 (= lt!440601 (noDuplicate!1451 acc!919))))

(assert (= (and start!85602 res!664552) b!993824))

(assert (= (and b!993824 res!664550) b!993825))

(assert (= (and b!993825 res!664551) b!993826))

(declare-fun m!921557 () Bool)

(assert (=> start!85602 m!921557))

(declare-fun m!921559 () Bool)

(assert (=> b!993824 m!921559))

(declare-fun m!921561 () Bool)

(assert (=> b!993825 m!921561))

(declare-fun m!921563 () Bool)

(assert (=> b!993826 m!921563))

(push 1)

(assert (not b!993824))

(assert (not b!993826))

(assert (not start!85602))

(assert (not b!993825))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

