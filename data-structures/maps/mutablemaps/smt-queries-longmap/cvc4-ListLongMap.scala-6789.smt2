; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85504 () Bool)

(assert start!85504)

(declare-fun res!664065 () Bool)

(declare-fun e!560585 () Bool)

(assert (=> start!85504 (=> (not res!664065) (not e!560585))))

(declare-datatypes ((array!62741 0))(
  ( (array!62742 (arr!30210 (Array (_ BitVec 32) (_ BitVec 64))) (size!30707 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62741)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85504 (= res!664065 (and (= (size!30707 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62742 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30707 a!4424))))))

(assert (=> start!85504 e!560585))

(declare-fun array_inv!23200 (array!62741) Bool)

(assert (=> start!85504 (array_inv!23200 a!4424)))

(assert (=> start!85504 true))

(declare-fun b!993338 () Bool)

(declare-fun res!664064 () Bool)

(assert (=> b!993338 (=> (not res!664064) (not e!560585))))

(declare-datatypes ((List!21054 0))(
  ( (Nil!21051) (Cons!21050 (h!22212 (_ BitVec 64)) (t!30063 List!21054)) )
))
(declare-fun acc!919 () List!21054)

(declare-fun contains!5811 (List!21054 (_ BitVec 64)) Bool)

(assert (=> b!993338 (= res!664064 (not (contains!5811 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993339 () Bool)

(declare-fun res!664066 () Bool)

(assert (=> b!993339 (=> (not res!664066) (not e!560585))))

(assert (=> b!993339 (= res!664066 (not (contains!5811 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993340 () Bool)

(assert (=> b!993340 (= e!560585 false)))

(declare-fun lt!440499 () Bool)

(declare-fun noDuplicate!1408 (List!21054) Bool)

(assert (=> b!993340 (= lt!440499 (noDuplicate!1408 acc!919))))

(assert (= (and start!85504 res!664065) b!993338))

(assert (= (and b!993338 res!664064) b!993339))

(assert (= (and b!993339 res!664066) b!993340))

(declare-fun m!921159 () Bool)

(assert (=> start!85504 m!921159))

(declare-fun m!921161 () Bool)

(assert (=> b!993338 m!921161))

(declare-fun m!921163 () Bool)

(assert (=> b!993339 m!921163))

(declare-fun m!921165 () Bool)

(assert (=> b!993340 m!921165))

(push 1)

(assert (not b!993340))

(assert (not b!993339))

(assert (not start!85504))

(assert (not b!993338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

