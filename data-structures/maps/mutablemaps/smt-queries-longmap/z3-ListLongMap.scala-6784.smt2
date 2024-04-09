; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85472 () Bool)

(assert start!85472)

(declare-fun res!663922 () Bool)

(declare-fun e!560489 () Bool)

(assert (=> start!85472 (=> (not res!663922) (not e!560489))))

(declare-datatypes ((array!62709 0))(
  ( (array!62710 (arr!30194 (Array (_ BitVec 32) (_ BitVec 64))) (size!30691 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62709)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85472 (= res!663922 (and (= (size!30691 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62710 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30691 a!4424))))))

(assert (=> start!85472 e!560489))

(declare-fun array_inv!23184 (array!62709) Bool)

(assert (=> start!85472 (array_inv!23184 a!4424)))

(assert (=> start!85472 true))

(declare-fun b!993194 () Bool)

(declare-fun res!663921 () Bool)

(assert (=> b!993194 (=> (not res!663921) (not e!560489))))

(declare-datatypes ((List!21038 0))(
  ( (Nil!21035) (Cons!21034 (h!22196 (_ BitVec 64)) (t!30047 List!21038)) )
))
(declare-fun acc!919 () List!21038)

(declare-fun contains!5795 (List!21038 (_ BitVec 64)) Bool)

(assert (=> b!993194 (= res!663921 (not (contains!5795 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993195 () Bool)

(declare-fun res!663920 () Bool)

(assert (=> b!993195 (=> (not res!663920) (not e!560489))))

(assert (=> b!993195 (= res!663920 (not (contains!5795 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993196 () Bool)

(assert (=> b!993196 (= e!560489 false)))

(declare-fun lt!440451 () Bool)

(declare-fun noDuplicate!1392 (List!21038) Bool)

(assert (=> b!993196 (= lt!440451 (noDuplicate!1392 acc!919))))

(assert (= (and start!85472 res!663922) b!993194))

(assert (= (and b!993194 res!663921) b!993195))

(assert (= (and b!993195 res!663920) b!993196))

(declare-fun m!921031 () Bool)

(assert (=> start!85472 m!921031))

(declare-fun m!921033 () Bool)

(assert (=> b!993194 m!921033))

(declare-fun m!921035 () Bool)

(assert (=> b!993195 m!921035))

(declare-fun m!921037 () Bool)

(assert (=> b!993196 m!921037))

(check-sat (not start!85472) (not b!993196) (not b!993194) (not b!993195))
