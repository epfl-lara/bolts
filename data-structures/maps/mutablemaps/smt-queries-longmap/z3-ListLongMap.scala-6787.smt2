; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85490 () Bool)

(assert start!85490)

(declare-fun res!664002 () Bool)

(declare-fun e!560542 () Bool)

(assert (=> start!85490 (=> (not res!664002) (not e!560542))))

(declare-datatypes ((array!62727 0))(
  ( (array!62728 (arr!30203 (Array (_ BitVec 32) (_ BitVec 64))) (size!30700 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62727)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85490 (= res!664002 (and (= (size!30700 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62728 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30700 a!4424))))))

(assert (=> start!85490 e!560542))

(declare-fun array_inv!23193 (array!62727) Bool)

(assert (=> start!85490 (array_inv!23193 a!4424)))

(assert (=> start!85490 true))

(declare-fun b!993275 () Bool)

(declare-fun res!664001 () Bool)

(assert (=> b!993275 (=> (not res!664001) (not e!560542))))

(declare-datatypes ((List!21047 0))(
  ( (Nil!21044) (Cons!21043 (h!22205 (_ BitVec 64)) (t!30056 List!21047)) )
))
(declare-fun acc!919 () List!21047)

(declare-fun contains!5804 (List!21047 (_ BitVec 64)) Bool)

(assert (=> b!993275 (= res!664001 (not (contains!5804 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993276 () Bool)

(declare-fun res!664003 () Bool)

(assert (=> b!993276 (=> (not res!664003) (not e!560542))))

(assert (=> b!993276 (= res!664003 (not (contains!5804 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993277 () Bool)

(assert (=> b!993277 (= e!560542 false)))

(declare-fun lt!440478 () Bool)

(declare-fun noDuplicate!1401 (List!21047) Bool)

(assert (=> b!993277 (= lt!440478 (noDuplicate!1401 acc!919))))

(assert (= (and start!85490 res!664002) b!993275))

(assert (= (and b!993275 res!664001) b!993276))

(assert (= (and b!993276 res!664003) b!993277))

(declare-fun m!921103 () Bool)

(assert (=> start!85490 m!921103))

(declare-fun m!921105 () Bool)

(assert (=> b!993275 m!921105))

(declare-fun m!921107 () Bool)

(assert (=> b!993276 m!921107))

(declare-fun m!921109 () Bool)

(assert (=> b!993277 m!921109))

(check-sat (not b!993275) (not b!993277) (not b!993276) (not start!85490))
