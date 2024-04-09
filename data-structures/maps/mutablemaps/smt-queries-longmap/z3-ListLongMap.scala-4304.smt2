; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59870 () Bool)

(assert start!59870)

(declare-fun b!661459 () Bool)

(declare-fun e!379909 () Bool)

(assert (=> b!661459 (= e!379909 (not true))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-datatypes ((array!38873 0))(
  ( (array!38874 (arr!18625 (Array (_ BitVec 32) (_ BitVec 64))) (size!18989 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38873)

(declare-fun arrayContainsKey!0 (array!38873 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661459 (arrayContainsKey!0 (array!38874 (store (arr!18625 a!3626) i!1382 k0!2843) (size!18989 a!3626)) k0!2843 from!3004)))

(declare-fun b!661460 () Bool)

(declare-fun res!429708 () Bool)

(assert (=> b!661460 (=> (not res!429708) (not e!379909))))

(declare-datatypes ((List!12719 0))(
  ( (Nil!12716) (Cons!12715 (h!13760 (_ BitVec 64)) (t!18955 List!12719)) )
))
(declare-fun acc!681 () List!12719)

(declare-fun contains!3262 (List!12719 (_ BitVec 64)) Bool)

(assert (=> b!661460 (= res!429708 (not (contains!3262 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661461 () Bool)

(declare-fun res!429702 () Bool)

(assert (=> b!661461 (=> (not res!429702) (not e!379909))))

(assert (=> b!661461 (= res!429702 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18989 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!661462 () Bool)

(declare-fun res!429710 () Bool)

(assert (=> b!661462 (=> (not res!429710) (not e!379909))))

(assert (=> b!661462 (= res!429710 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!661463 () Bool)

(declare-fun e!379910 () Bool)

(declare-fun e!379908 () Bool)

(assert (=> b!661463 (= e!379910 e!379908)))

(declare-fun res!429705 () Bool)

(assert (=> b!661463 (=> (not res!429705) (not e!379908))))

(assert (=> b!661463 (= res!429705 (bvsle from!3004 i!1382))))

(declare-fun b!661464 () Bool)

(declare-fun e!379911 () Bool)

(assert (=> b!661464 (= e!379911 (contains!3262 acc!681 k0!2843))))

(declare-fun b!661465 () Bool)

(declare-fun res!429706 () Bool)

(assert (=> b!661465 (=> (not res!429706) (not e!379909))))

(declare-fun arrayNoDuplicates!0 (array!38873 (_ BitVec 32) List!12719) Bool)

(assert (=> b!661465 (= res!429706 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12716))))

(declare-fun b!661466 () Bool)

(declare-fun res!429700 () Bool)

(assert (=> b!661466 (=> (not res!429700) (not e!379909))))

(declare-fun noDuplicate!509 (List!12719) Bool)

(assert (=> b!661466 (= res!429700 (noDuplicate!509 acc!681))))

(declare-fun res!429698 () Bool)

(assert (=> start!59870 (=> (not res!429698) (not e!379909))))

(assert (=> start!59870 (= res!429698 (and (bvslt (size!18989 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18989 a!3626))))))

(assert (=> start!59870 e!379909))

(assert (=> start!59870 true))

(declare-fun array_inv!14399 (array!38873) Bool)

(assert (=> start!59870 (array_inv!14399 a!3626)))

(declare-fun b!661467 () Bool)

(declare-fun res!429703 () Bool)

(assert (=> b!661467 (=> (not res!429703) (not e!379909))))

(assert (=> b!661467 (= res!429703 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18989 a!3626))))))

(declare-fun b!661468 () Bool)

(declare-fun res!429701 () Bool)

(assert (=> b!661468 (=> (not res!429701) (not e!379909))))

(assert (=> b!661468 (= res!429701 e!379910)))

(declare-fun res!429709 () Bool)

(assert (=> b!661468 (=> res!429709 e!379910)))

(assert (=> b!661468 (= res!429709 e!379911)))

(declare-fun res!429704 () Bool)

(assert (=> b!661468 (=> (not res!429704) (not e!379911))))

(assert (=> b!661468 (= res!429704 (bvsgt from!3004 i!1382))))

(declare-fun b!661469 () Bool)

(assert (=> b!661469 (= e!379908 (not (contains!3262 acc!681 k0!2843)))))

(declare-fun b!661470 () Bool)

(declare-fun res!429707 () Bool)

(assert (=> b!661470 (=> (not res!429707) (not e!379909))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!661470 (= res!429707 (validKeyInArray!0 k0!2843))))

(declare-fun b!661471 () Bool)

(declare-fun res!429697 () Bool)

(assert (=> b!661471 (=> (not res!429697) (not e!379909))))

(assert (=> b!661471 (= res!429697 (not (contains!3262 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661472 () Bool)

(declare-fun res!429699 () Bool)

(assert (=> b!661472 (=> (not res!429699) (not e!379909))))

(assert (=> b!661472 (= res!429699 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!59870 res!429698) b!661466))

(assert (= (and b!661466 res!429700) b!661460))

(assert (= (and b!661460 res!429708) b!661471))

(assert (= (and b!661471 res!429697) b!661468))

(assert (= (and b!661468 res!429704) b!661464))

(assert (= (and b!661468 (not res!429709)) b!661463))

(assert (= (and b!661463 res!429705) b!661469))

(assert (= (and b!661468 res!429701) b!661465))

(assert (= (and b!661465 res!429706) b!661472))

(assert (= (and b!661472 res!429699) b!661467))

(assert (= (and b!661467 res!429703) b!661470))

(assert (= (and b!661470 res!429707) b!661462))

(assert (= (and b!661462 res!429710) b!661461))

(assert (= (and b!661461 res!429702) b!661459))

(declare-fun m!633607 () Bool)

(assert (=> b!661470 m!633607))

(declare-fun m!633609 () Bool)

(assert (=> start!59870 m!633609))

(declare-fun m!633611 () Bool)

(assert (=> b!661460 m!633611))

(declare-fun m!633613 () Bool)

(assert (=> b!661471 m!633613))

(declare-fun m!633615 () Bool)

(assert (=> b!661462 m!633615))

(declare-fun m!633617 () Bool)

(assert (=> b!661464 m!633617))

(declare-fun m!633619 () Bool)

(assert (=> b!661459 m!633619))

(declare-fun m!633621 () Bool)

(assert (=> b!661459 m!633621))

(declare-fun m!633623 () Bool)

(assert (=> b!661472 m!633623))

(declare-fun m!633625 () Bool)

(assert (=> b!661465 m!633625))

(assert (=> b!661469 m!633617))

(declare-fun m!633627 () Bool)

(assert (=> b!661466 m!633627))

(check-sat (not b!661466) (not b!661462) (not b!661471) (not b!661459) (not b!661472) (not b!661470) (not b!661464) (not b!661469) (not b!661465) (not b!661460) (not start!59870))
