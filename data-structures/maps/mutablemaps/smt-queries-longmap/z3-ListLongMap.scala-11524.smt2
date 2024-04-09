; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134214 () Bool)

(assert start!134214)

(declare-fun e!873860 () Bool)

(declare-datatypes ((array!104687 0))(
  ( (array!104688 (arr!50522 (Array (_ BitVec 32) (_ BitVec 64))) (size!51073 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104687)

(declare-datatypes ((List!36833 0))(
  ( (Nil!36830) (Cons!36829 (h!38277 (_ BitVec 64)) (t!51748 List!36833)) )
))
(declare-fun acc!619 () List!36833)

(declare-fun b!1567584 () Bool)

(declare-fun from!2856 () (_ BitVec 32))

(declare-fun contains!10392 (List!36833 (_ BitVec 64)) Bool)

(assert (=> b!1567584 (= e!873860 (not (contains!10392 acc!619 (select (arr!50522 a!3481) from!2856))))))

(declare-fun b!1567585 () Bool)

(declare-fun res!1071412 () Bool)

(declare-fun e!873859 () Bool)

(assert (=> b!1567585 (=> (not res!1071412) (not e!873859))))

(assert (=> b!1567585 (= res!1071412 (not (contains!10392 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567586 () Bool)

(assert (=> b!1567586 (= e!873859 false)))

(declare-fun lt!672958 () Bool)

(assert (=> b!1567586 (= lt!672958 e!873860)))

(declare-fun res!1071408 () Bool)

(assert (=> b!1567586 (=> res!1071408 e!873860)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567586 (= res!1071408 (not (validKeyInArray!0 (select (arr!50522 a!3481) from!2856))))))

(declare-fun res!1071410 () Bool)

(assert (=> start!134214 (=> (not res!1071410) (not e!873859))))

(assert (=> start!134214 (= res!1071410 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51073 a!3481)) (bvslt (size!51073 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134214 e!873859))

(assert (=> start!134214 true))

(declare-fun array_inv!39167 (array!104687) Bool)

(assert (=> start!134214 (array_inv!39167 a!3481)))

(declare-fun b!1567587 () Bool)

(declare-fun res!1071413 () Bool)

(assert (=> b!1567587 (=> (not res!1071413) (not e!873859))))

(declare-fun noDuplicate!2683 (List!36833) Bool)

(assert (=> b!1567587 (= res!1071413 (noDuplicate!2683 acc!619))))

(declare-fun b!1567588 () Bool)

(declare-fun res!1071411 () Bool)

(assert (=> b!1567588 (=> (not res!1071411) (not e!873859))))

(assert (=> b!1567588 (= res!1071411 (not (contains!10392 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567589 () Bool)

(declare-fun res!1071409 () Bool)

(assert (=> b!1567589 (=> (not res!1071409) (not e!873859))))

(assert (=> b!1567589 (= res!1071409 (bvslt from!2856 (size!51073 a!3481)))))

(assert (= (and start!134214 res!1071410) b!1567587))

(assert (= (and b!1567587 res!1071413) b!1567585))

(assert (= (and b!1567585 res!1071412) b!1567588))

(assert (= (and b!1567588 res!1071411) b!1567589))

(assert (= (and b!1567589 res!1071409) b!1567586))

(assert (= (and b!1567586 (not res!1071408)) b!1567584))

(declare-fun m!1442415 () Bool)

(assert (=> b!1567587 m!1442415))

(declare-fun m!1442417 () Bool)

(assert (=> start!134214 m!1442417))

(declare-fun m!1442419 () Bool)

(assert (=> b!1567584 m!1442419))

(assert (=> b!1567584 m!1442419))

(declare-fun m!1442421 () Bool)

(assert (=> b!1567584 m!1442421))

(declare-fun m!1442423 () Bool)

(assert (=> b!1567585 m!1442423))

(assert (=> b!1567586 m!1442419))

(assert (=> b!1567586 m!1442419))

(declare-fun m!1442425 () Bool)

(assert (=> b!1567586 m!1442425))

(declare-fun m!1442427 () Bool)

(assert (=> b!1567588 m!1442427))

(check-sat (not b!1567587) (not b!1567585) (not b!1567588) (not start!134214) (not b!1567584) (not b!1567586))
(check-sat)
