; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62150 () Bool)

(assert start!62150)

(declare-fun b!695469 () Bool)

(declare-fun res!459598 () Bool)

(declare-fun e!395547 () Bool)

(assert (=> b!695469 (=> (not res!459598) (not e!395547))))

(declare-fun e!395551 () Bool)

(assert (=> b!695469 (= res!459598 e!395551)))

(declare-fun res!459599 () Bool)

(assert (=> b!695469 (=> res!459599 e!395551)))

(declare-fun e!395549 () Bool)

(assert (=> b!695469 (= res!459599 e!395549)))

(declare-fun res!459597 () Bool)

(assert (=> b!695469 (=> (not res!459597) (not e!395549))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!695469 (= res!459597 (bvsgt from!3004 i!1382))))

(declare-fun b!695470 () Bool)

(declare-fun res!459593 () Bool)

(assert (=> b!695470 (=> (not res!459593) (not e!395547))))

(declare-datatypes ((List!13199 0))(
  ( (Nil!13196) (Cons!13195 (h!14240 (_ BitVec 64)) (t!19489 List!13199)) )
))
(declare-fun acc!681 () List!13199)

(declare-fun contains!3742 (List!13199 (_ BitVec 64)) Bool)

(assert (=> b!695470 (= res!459593 (not (contains!3742 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695471 () Bool)

(declare-fun res!459591 () Bool)

(assert (=> b!695471 (=> (not res!459591) (not e!395547))))

(declare-fun noDuplicate!989 (List!13199) Bool)

(assert (=> b!695471 (= res!459591 (noDuplicate!989 acc!681))))

(declare-fun res!459596 () Bool)

(assert (=> start!62150 (=> (not res!459596) (not e!395547))))

(declare-datatypes ((array!39896 0))(
  ( (array!39897 (arr!19105 (Array (_ BitVec 32) (_ BitVec 64))) (size!19488 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39896)

(assert (=> start!62150 (= res!459596 (and (bvslt (size!19488 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19488 a!3626))))))

(assert (=> start!62150 e!395547))

(assert (=> start!62150 true))

(declare-fun array_inv!14879 (array!39896) Bool)

(assert (=> start!62150 (array_inv!14879 a!3626)))

(declare-fun b!695472 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!695472 (= e!395549 (contains!3742 acc!681 k0!2843))))

(declare-fun b!695473 () Bool)

(declare-fun res!459595 () Bool)

(assert (=> b!695473 (=> (not res!459595) (not e!395547))))

(declare-fun arrayNoDuplicates!0 (array!39896 (_ BitVec 32) List!13199) Bool)

(assert (=> b!695473 (= res!459595 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13196))))

(declare-fun b!695474 () Bool)

(declare-fun e!395548 () Bool)

(assert (=> b!695474 (= e!395551 e!395548)))

(declare-fun res!459594 () Bool)

(assert (=> b!695474 (=> (not res!459594) (not e!395548))))

(assert (=> b!695474 (= res!459594 (bvsle from!3004 i!1382))))

(declare-fun b!695475 () Bool)

(assert (=> b!695475 (= e!395548 (not (contains!3742 acc!681 k0!2843)))))

(declare-fun b!695476 () Bool)

(declare-fun res!459592 () Bool)

(assert (=> b!695476 (=> (not res!459592) (not e!395547))))

(assert (=> b!695476 (= res!459592 (not (contains!3742 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695477 () Bool)

(assert (=> b!695477 (= e!395547 false)))

(declare-fun lt!317013 () Bool)

(assert (=> b!695477 (= lt!317013 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!62150 res!459596) b!695471))

(assert (= (and b!695471 res!459591) b!695476))

(assert (= (and b!695476 res!459592) b!695470))

(assert (= (and b!695470 res!459593) b!695469))

(assert (= (and b!695469 res!459597) b!695472))

(assert (= (and b!695469 (not res!459599)) b!695474))

(assert (= (and b!695474 res!459594) b!695475))

(assert (= (and b!695469 res!459598) b!695473))

(assert (= (and b!695473 res!459595) b!695477))

(declare-fun m!656927 () Bool)

(assert (=> b!695475 m!656927))

(declare-fun m!656929 () Bool)

(assert (=> start!62150 m!656929))

(declare-fun m!656931 () Bool)

(assert (=> b!695473 m!656931))

(declare-fun m!656933 () Bool)

(assert (=> b!695477 m!656933))

(declare-fun m!656935 () Bool)

(assert (=> b!695476 m!656935))

(declare-fun m!656937 () Bool)

(assert (=> b!695471 m!656937))

(declare-fun m!656939 () Bool)

(assert (=> b!695470 m!656939))

(assert (=> b!695472 m!656927))

(check-sat (not b!695475) (not b!695470) (not b!695472) (not b!695476) (not b!695473) (not b!695471) (not start!62150) (not b!695477))
(check-sat)
