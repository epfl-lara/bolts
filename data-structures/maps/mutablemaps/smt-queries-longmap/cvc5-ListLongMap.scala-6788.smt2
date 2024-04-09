; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85494 () Bool)

(assert start!85494)

(declare-fun res!664019 () Bool)

(declare-fun e!560555 () Bool)

(assert (=> start!85494 (=> (not res!664019) (not e!560555))))

(declare-datatypes ((array!62731 0))(
  ( (array!62732 (arr!30205 (Array (_ BitVec 32) (_ BitVec 64))) (size!30702 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62731)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85494 (= res!664019 (and (= (size!30702 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62732 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30702 a!4424))))))

(assert (=> start!85494 e!560555))

(declare-fun array_inv!23195 (array!62731) Bool)

(assert (=> start!85494 (array_inv!23195 a!4424)))

(assert (=> start!85494 true))

(declare-fun b!993293 () Bool)

(declare-fun res!664021 () Bool)

(assert (=> b!993293 (=> (not res!664021) (not e!560555))))

(declare-datatypes ((List!21049 0))(
  ( (Nil!21046) (Cons!21045 (h!22207 (_ BitVec 64)) (t!30058 List!21049)) )
))
(declare-fun acc!919 () List!21049)

(declare-fun contains!5806 (List!21049 (_ BitVec 64)) Bool)

(assert (=> b!993293 (= res!664021 (not (contains!5806 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993294 () Bool)

(declare-fun res!664020 () Bool)

(assert (=> b!993294 (=> (not res!664020) (not e!560555))))

(assert (=> b!993294 (= res!664020 (not (contains!5806 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993295 () Bool)

(assert (=> b!993295 (= e!560555 false)))

(declare-fun lt!440484 () Bool)

(declare-fun noDuplicate!1403 (List!21049) Bool)

(assert (=> b!993295 (= lt!440484 (noDuplicate!1403 acc!919))))

(assert (= (and start!85494 res!664019) b!993293))

(assert (= (and b!993293 res!664021) b!993294))

(assert (= (and b!993294 res!664020) b!993295))

(declare-fun m!921119 () Bool)

(assert (=> start!85494 m!921119))

(declare-fun m!921121 () Bool)

(assert (=> b!993293 m!921121))

(declare-fun m!921123 () Bool)

(assert (=> b!993294 m!921123))

(declare-fun m!921125 () Bool)

(assert (=> b!993295 m!921125))

(push 1)

(assert (not b!993294))

(assert (not start!85494))

(assert (not b!993295))

(assert (not b!993293))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

