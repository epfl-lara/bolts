; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85502 () Bool)

(assert start!85502)

(declare-fun res!664057 () Bool)

(declare-fun e!560579 () Bool)

(assert (=> start!85502 (=> (not res!664057) (not e!560579))))

(declare-datatypes ((array!62739 0))(
  ( (array!62740 (arr!30209 (Array (_ BitVec 32) (_ BitVec 64))) (size!30706 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62739)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85502 (= res!664057 (and (= (size!30706 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62740 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30706 a!4424))))))

(assert (=> start!85502 e!560579))

(declare-fun array_inv!23199 (array!62739) Bool)

(assert (=> start!85502 (array_inv!23199 a!4424)))

(assert (=> start!85502 true))

(declare-fun b!993329 () Bool)

(declare-fun res!664055 () Bool)

(assert (=> b!993329 (=> (not res!664055) (not e!560579))))

(declare-datatypes ((List!21053 0))(
  ( (Nil!21050) (Cons!21049 (h!22211 (_ BitVec 64)) (t!30062 List!21053)) )
))
(declare-fun acc!919 () List!21053)

(declare-fun contains!5810 (List!21053 (_ BitVec 64)) Bool)

(assert (=> b!993329 (= res!664055 (not (contains!5810 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993330 () Bool)

(declare-fun res!664056 () Bool)

(assert (=> b!993330 (=> (not res!664056) (not e!560579))))

(assert (=> b!993330 (= res!664056 (not (contains!5810 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993331 () Bool)

(assert (=> b!993331 (= e!560579 false)))

(declare-fun lt!440496 () Bool)

(declare-fun noDuplicate!1407 (List!21053) Bool)

(assert (=> b!993331 (= lt!440496 (noDuplicate!1407 acc!919))))

(assert (= (and start!85502 res!664057) b!993329))

(assert (= (and b!993329 res!664055) b!993330))

(assert (= (and b!993330 res!664056) b!993331))

(declare-fun m!921151 () Bool)

(assert (=> start!85502 m!921151))

(declare-fun m!921153 () Bool)

(assert (=> b!993329 m!921153))

(declare-fun m!921155 () Bool)

(assert (=> b!993330 m!921155))

(declare-fun m!921157 () Bool)

(assert (=> b!993331 m!921157))

(check-sat (not b!993331) (not b!993330) (not start!85502) (not b!993329))
