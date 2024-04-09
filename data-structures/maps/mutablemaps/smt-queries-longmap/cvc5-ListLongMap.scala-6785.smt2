; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85476 () Bool)

(assert start!85476)

(declare-fun res!663938 () Bool)

(declare-fun e!560500 () Bool)

(assert (=> start!85476 (=> (not res!663938) (not e!560500))))

(declare-datatypes ((array!62713 0))(
  ( (array!62714 (arr!30196 (Array (_ BitVec 32) (_ BitVec 64))) (size!30693 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62713)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85476 (= res!663938 (and (= (size!30693 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62714 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30693 a!4424))))))

(assert (=> start!85476 e!560500))

(declare-fun array_inv!23186 (array!62713) Bool)

(assert (=> start!85476 (array_inv!23186 a!4424)))

(assert (=> start!85476 true))

(declare-fun b!993212 () Bool)

(declare-fun res!663940 () Bool)

(assert (=> b!993212 (=> (not res!663940) (not e!560500))))

(declare-datatypes ((List!21040 0))(
  ( (Nil!21037) (Cons!21036 (h!22198 (_ BitVec 64)) (t!30049 List!21040)) )
))
(declare-fun acc!919 () List!21040)

(declare-fun contains!5797 (List!21040 (_ BitVec 64)) Bool)

(assert (=> b!993212 (= res!663940 (not (contains!5797 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993213 () Bool)

(declare-fun res!663939 () Bool)

(assert (=> b!993213 (=> (not res!663939) (not e!560500))))

(assert (=> b!993213 (= res!663939 (not (contains!5797 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993214 () Bool)

(assert (=> b!993214 (= e!560500 false)))

(declare-fun lt!440457 () Bool)

(declare-fun noDuplicate!1394 (List!21040) Bool)

(assert (=> b!993214 (= lt!440457 (noDuplicate!1394 acc!919))))

(assert (= (and start!85476 res!663938) b!993212))

(assert (= (and b!993212 res!663940) b!993213))

(assert (= (and b!993213 res!663939) b!993214))

(declare-fun m!921047 () Bool)

(assert (=> start!85476 m!921047))

(declare-fun m!921049 () Bool)

(assert (=> b!993212 m!921049))

(declare-fun m!921051 () Bool)

(assert (=> b!993213 m!921051))

(declare-fun m!921053 () Bool)

(assert (=> b!993214 m!921053))

(push 1)

(assert (not b!993214))

(assert (not start!85476))

(assert (not b!993213))

(assert (not b!993212))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

