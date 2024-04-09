; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85540 () Bool)

(assert start!85540)

(declare-datatypes ((array!62777 0))(
  ( (array!62778 (arr!30228 (Array (_ BitVec 32) (_ BitVec 64))) (size!30725 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62777)

(declare-fun e!560692 () Bool)

(declare-fun b!993583 () Bool)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> b!993583 (= e!560692 (and (bvsge from!3778 size!36) (bvsge (size!30725 a!4424) #b01111111111111111111111111111111)))))

(declare-fun b!993582 () Bool)

(declare-fun res!664307 () Bool)

(assert (=> b!993582 (=> (not res!664307) (not e!560692))))

(declare-datatypes ((List!21072 0))(
  ( (Nil!21069) (Cons!21068 (h!22230 (_ BitVec 64)) (t!30081 List!21072)) )
))
(declare-fun acc!919 () List!21072)

(declare-fun noDuplicate!1426 (List!21072) Bool)

(assert (=> b!993582 (= res!664307 (noDuplicate!1426 acc!919))))

(declare-fun res!664309 () Bool)

(assert (=> start!85540 (=> (not res!664309) (not e!560692))))

(assert (=> start!85540 (= res!664309 (and (= (size!30725 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62778 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30725 a!4424))))))

(assert (=> start!85540 e!560692))

(declare-fun array_inv!23218 (array!62777) Bool)

(assert (=> start!85540 (array_inv!23218 a!4424)))

(assert (=> start!85540 true))

(declare-fun b!993581 () Bool)

(declare-fun res!664306 () Bool)

(assert (=> b!993581 (=> (not res!664306) (not e!560692))))

(declare-fun contains!5829 (List!21072 (_ BitVec 64)) Bool)

(assert (=> b!993581 (= res!664306 (not (contains!5829 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993580 () Bool)

(declare-fun res!664308 () Bool)

(assert (=> b!993580 (=> (not res!664308) (not e!560692))))

(assert (=> b!993580 (= res!664308 (not (contains!5829 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!85540 res!664309) b!993580))

(assert (= (and b!993580 res!664308) b!993581))

(assert (= (and b!993581 res!664306) b!993582))

(assert (= (and b!993582 res!664307) b!993583))

(declare-fun m!921351 () Bool)

(assert (=> b!993582 m!921351))

(declare-fun m!921353 () Bool)

(assert (=> start!85540 m!921353))

(declare-fun m!921355 () Bool)

(assert (=> b!993581 m!921355))

(declare-fun m!921357 () Bool)

(assert (=> b!993580 m!921357))

(push 1)

(assert (not b!993580))

(assert (not start!85540))

(assert (not b!993581))

(assert (not b!993582))

(check-sat)

(pop 1)

(push 1)

(check-sat)

