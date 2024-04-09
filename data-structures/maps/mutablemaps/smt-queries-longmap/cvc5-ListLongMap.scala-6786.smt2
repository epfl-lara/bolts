; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85482 () Bool)

(assert start!85482)

(declare-fun res!663967 () Bool)

(declare-fun e!560518 () Bool)

(assert (=> start!85482 (=> (not res!663967) (not e!560518))))

(declare-datatypes ((array!62719 0))(
  ( (array!62720 (arr!30199 (Array (_ BitVec 32) (_ BitVec 64))) (size!30696 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62719)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85482 (= res!663967 (and (= (size!30696 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62720 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30696 a!4424))))))

(assert (=> start!85482 e!560518))

(declare-fun array_inv!23189 (array!62719) Bool)

(assert (=> start!85482 (array_inv!23189 a!4424)))

(assert (=> start!85482 true))

(declare-fun b!993239 () Bool)

(declare-fun res!663966 () Bool)

(assert (=> b!993239 (=> (not res!663966) (not e!560518))))

(declare-datatypes ((List!21043 0))(
  ( (Nil!21040) (Cons!21039 (h!22201 (_ BitVec 64)) (t!30052 List!21043)) )
))
(declare-fun acc!919 () List!21043)

(declare-fun contains!5800 (List!21043 (_ BitVec 64)) Bool)

(assert (=> b!993239 (= res!663966 (not (contains!5800 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993240 () Bool)

(declare-fun res!663965 () Bool)

(assert (=> b!993240 (=> (not res!663965) (not e!560518))))

(assert (=> b!993240 (= res!663965 (not (contains!5800 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993241 () Bool)

(assert (=> b!993241 (= e!560518 false)))

(declare-fun lt!440466 () Bool)

(declare-fun noDuplicate!1397 (List!21043) Bool)

(assert (=> b!993241 (= lt!440466 (noDuplicate!1397 acc!919))))

(assert (= (and start!85482 res!663967) b!993239))

(assert (= (and b!993239 res!663966) b!993240))

(assert (= (and b!993240 res!663965) b!993241))

(declare-fun m!921071 () Bool)

(assert (=> start!85482 m!921071))

(declare-fun m!921073 () Bool)

(assert (=> b!993239 m!921073))

(declare-fun m!921075 () Bool)

(assert (=> b!993240 m!921075))

(declare-fun m!921077 () Bool)

(assert (=> b!993241 m!921077))

(push 1)

(assert (not b!993240))

(assert (not start!85482))

(assert (not b!993241))

(assert (not b!993239))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

