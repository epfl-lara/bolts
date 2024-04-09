; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85496 () Bool)

(assert start!85496)

(declare-fun res!664028 () Bool)

(declare-fun e!560560 () Bool)

(assert (=> start!85496 (=> (not res!664028) (not e!560560))))

(declare-datatypes ((array!62733 0))(
  ( (array!62734 (arr!30206 (Array (_ BitVec 32) (_ BitVec 64))) (size!30703 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62733)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85496 (= res!664028 (and (= (size!30703 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62734 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30703 a!4424))))))

(assert (=> start!85496 e!560560))

(declare-fun array_inv!23196 (array!62733) Bool)

(assert (=> start!85496 (array_inv!23196 a!4424)))

(assert (=> start!85496 true))

(declare-fun b!993302 () Bool)

(declare-fun res!664030 () Bool)

(assert (=> b!993302 (=> (not res!664030) (not e!560560))))

(declare-datatypes ((List!21050 0))(
  ( (Nil!21047) (Cons!21046 (h!22208 (_ BitVec 64)) (t!30059 List!21050)) )
))
(declare-fun acc!919 () List!21050)

(declare-fun contains!5807 (List!21050 (_ BitVec 64)) Bool)

(assert (=> b!993302 (= res!664030 (not (contains!5807 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993303 () Bool)

(declare-fun res!664029 () Bool)

(assert (=> b!993303 (=> (not res!664029) (not e!560560))))

(assert (=> b!993303 (= res!664029 (not (contains!5807 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993304 () Bool)

(assert (=> b!993304 (= e!560560 false)))

(declare-fun lt!440487 () Bool)

(declare-fun noDuplicate!1404 (List!21050) Bool)

(assert (=> b!993304 (= lt!440487 (noDuplicate!1404 acc!919))))

(assert (= (and start!85496 res!664028) b!993302))

(assert (= (and b!993302 res!664030) b!993303))

(assert (= (and b!993303 res!664029) b!993304))

(declare-fun m!921127 () Bool)

(assert (=> start!85496 m!921127))

(declare-fun m!921129 () Bool)

(assert (=> b!993302 m!921129))

(declare-fun m!921131 () Bool)

(assert (=> b!993303 m!921131))

(declare-fun m!921133 () Bool)

(assert (=> b!993304 m!921133))

(check-sat (not start!85496) (not b!993304) (not b!993302) (not b!993303))
