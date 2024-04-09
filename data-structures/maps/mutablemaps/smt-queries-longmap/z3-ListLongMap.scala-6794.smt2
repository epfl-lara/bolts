; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85532 () Bool)

(assert start!85532)

(declare-fun res!664262 () Bool)

(declare-fun e!560669 () Bool)

(assert (=> start!85532 (=> (not res!664262) (not e!560669))))

(declare-datatypes ((array!62769 0))(
  ( (array!62770 (arr!30224 (Array (_ BitVec 32) (_ BitVec 64))) (size!30721 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62769)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85532 (= res!664262 (and (= (size!30721 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62770 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30721 a!4424))))))

(assert (=> start!85532 e!560669))

(declare-fun array_inv!23214 (array!62769) Bool)

(assert (=> start!85532 (array_inv!23214 a!4424)))

(assert (=> start!85532 true))

(declare-fun b!993536 () Bool)

(declare-fun res!664263 () Bool)

(assert (=> b!993536 (=> (not res!664263) (not e!560669))))

(declare-datatypes ((List!21068 0))(
  ( (Nil!21065) (Cons!21064 (h!22226 (_ BitVec 64)) (t!30077 List!21068)) )
))
(declare-fun acc!919 () List!21068)

(declare-fun contains!5825 (List!21068 (_ BitVec 64)) Bool)

(assert (=> b!993536 (= res!664263 (not (contains!5825 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993537 () Bool)

(declare-fun res!664264 () Bool)

(assert (=> b!993537 (=> (not res!664264) (not e!560669))))

(assert (=> b!993537 (= res!664264 (not (contains!5825 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993538 () Bool)

(assert (=> b!993538 (= e!560669 false)))

(declare-fun lt!440541 () Bool)

(declare-fun noDuplicate!1422 (List!21068) Bool)

(assert (=> b!993538 (= lt!440541 (noDuplicate!1422 acc!919))))

(assert (= (and start!85532 res!664262) b!993536))

(assert (= (and b!993536 res!664263) b!993537))

(assert (= (and b!993537 res!664264) b!993538))

(declare-fun m!921319 () Bool)

(assert (=> start!85532 m!921319))

(declare-fun m!921321 () Bool)

(assert (=> b!993536 m!921321))

(declare-fun m!921323 () Bool)

(assert (=> b!993537 m!921323))

(declare-fun m!921325 () Bool)

(assert (=> b!993538 m!921325))

(check-sat (not b!993537) (not b!993536) (not b!993538) (not start!85532))
