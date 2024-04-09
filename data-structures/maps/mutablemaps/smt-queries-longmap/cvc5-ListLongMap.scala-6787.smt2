; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85488 () Bool)

(assert start!85488)

(declare-fun res!663993 () Bool)

(declare-fun e!560537 () Bool)

(assert (=> start!85488 (=> (not res!663993) (not e!560537))))

(declare-datatypes ((array!62725 0))(
  ( (array!62726 (arr!30202 (Array (_ BitVec 32) (_ BitVec 64))) (size!30699 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62725)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85488 (= res!663993 (and (= (size!30699 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62726 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30699 a!4424))))))

(assert (=> start!85488 e!560537))

(declare-fun array_inv!23192 (array!62725) Bool)

(assert (=> start!85488 (array_inv!23192 a!4424)))

(assert (=> start!85488 true))

(declare-fun b!993266 () Bool)

(declare-fun res!663992 () Bool)

(assert (=> b!993266 (=> (not res!663992) (not e!560537))))

(declare-datatypes ((List!21046 0))(
  ( (Nil!21043) (Cons!21042 (h!22204 (_ BitVec 64)) (t!30055 List!21046)) )
))
(declare-fun acc!919 () List!21046)

(declare-fun contains!5803 (List!21046 (_ BitVec 64)) Bool)

(assert (=> b!993266 (= res!663992 (not (contains!5803 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993267 () Bool)

(declare-fun res!663994 () Bool)

(assert (=> b!993267 (=> (not res!663994) (not e!560537))))

(assert (=> b!993267 (= res!663994 (not (contains!5803 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993268 () Bool)

(assert (=> b!993268 (= e!560537 false)))

(declare-fun lt!440475 () Bool)

(declare-fun noDuplicate!1400 (List!21046) Bool)

(assert (=> b!993268 (= lt!440475 (noDuplicate!1400 acc!919))))

(assert (= (and start!85488 res!663993) b!993266))

(assert (= (and b!993266 res!663992) b!993267))

(assert (= (and b!993267 res!663994) b!993268))

(declare-fun m!921095 () Bool)

(assert (=> start!85488 m!921095))

(declare-fun m!921097 () Bool)

(assert (=> b!993266 m!921097))

(declare-fun m!921099 () Bool)

(assert (=> b!993267 m!921099))

(declare-fun m!921101 () Bool)

(assert (=> b!993268 m!921101))

(push 1)

(assert (not b!993267))

(assert (not b!993266))

(assert (not start!85488))

(assert (not b!993268))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

