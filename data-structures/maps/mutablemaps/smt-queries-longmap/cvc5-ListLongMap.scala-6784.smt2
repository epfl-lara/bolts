; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85470 () Bool)

(assert start!85470)

(declare-fun res!663912 () Bool)

(declare-fun e!560483 () Bool)

(assert (=> start!85470 (=> (not res!663912) (not e!560483))))

(declare-datatypes ((array!62707 0))(
  ( (array!62708 (arr!30193 (Array (_ BitVec 32) (_ BitVec 64))) (size!30690 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62707)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85470 (= res!663912 (and (= (size!30690 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62708 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30690 a!4424))))))

(assert (=> start!85470 e!560483))

(declare-fun array_inv!23183 (array!62707) Bool)

(assert (=> start!85470 (array_inv!23183 a!4424)))

(assert (=> start!85470 true))

(declare-fun b!993185 () Bool)

(declare-fun res!663913 () Bool)

(assert (=> b!993185 (=> (not res!663913) (not e!560483))))

(declare-datatypes ((List!21037 0))(
  ( (Nil!21034) (Cons!21033 (h!22195 (_ BitVec 64)) (t!30046 List!21037)) )
))
(declare-fun acc!919 () List!21037)

(declare-fun contains!5794 (List!21037 (_ BitVec 64)) Bool)

(assert (=> b!993185 (= res!663913 (not (contains!5794 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993186 () Bool)

(declare-fun res!663911 () Bool)

(assert (=> b!993186 (=> (not res!663911) (not e!560483))))

(assert (=> b!993186 (= res!663911 (not (contains!5794 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993187 () Bool)

(assert (=> b!993187 (= e!560483 false)))

(declare-fun lt!440448 () Bool)

(declare-fun noDuplicate!1391 (List!21037) Bool)

(assert (=> b!993187 (= lt!440448 (noDuplicate!1391 acc!919))))

(assert (= (and start!85470 res!663912) b!993185))

(assert (= (and b!993185 res!663913) b!993186))

(assert (= (and b!993186 res!663911) b!993187))

(declare-fun m!921023 () Bool)

(assert (=> start!85470 m!921023))

(declare-fun m!921025 () Bool)

(assert (=> b!993185 m!921025))

(declare-fun m!921027 () Bool)

(assert (=> b!993186 m!921027))

(declare-fun m!921029 () Bool)

(assert (=> b!993187 m!921029))

(push 1)

(assert (not b!993185))

(assert (not b!993186))

(assert (not b!993187))

(assert (not start!85470))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

