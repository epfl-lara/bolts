; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62294 () Bool)

(assert start!62294)

(declare-fun b!697581 () Bool)

(declare-fun res!461638 () Bool)

(declare-fun e!396565 () Bool)

(assert (=> b!697581 (=> (not res!461638) (not e!396565))))

(declare-datatypes ((List!13232 0))(
  ( (Nil!13229) (Cons!13228 (h!14273 (_ BitVec 64)) (t!19522 List!13232)) )
))
(declare-fun acc!681 () List!13232)

(declare-fun contains!3775 (List!13232 (_ BitVec 64)) Bool)

(assert (=> b!697581 (= res!461638 (not (contains!3775 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697582 () Bool)

(assert (=> b!697582 (= e!396565 false)))

(declare-datatypes ((array!39968 0))(
  ( (array!39969 (arr!19138 (Array (_ BitVec 32) (_ BitVec 64))) (size!19521 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39968)

(declare-fun lt!317133 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39968 (_ BitVec 32) List!13232) Bool)

(assert (=> b!697582 (= lt!317133 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!697583 () Bool)

(declare-fun res!461637 () Bool)

(assert (=> b!697583 (=> (not res!461637) (not e!396565))))

(assert (=> b!697583 (= res!461637 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13229))))

(declare-fun b!697584 () Bool)

(declare-fun res!461632 () Bool)

(assert (=> b!697584 (=> (not res!461632) (not e!396565))))

(declare-fun e!396563 () Bool)

(assert (=> b!697584 (= res!461632 e!396563)))

(declare-fun res!461631 () Bool)

(assert (=> b!697584 (=> res!461631 e!396563)))

(declare-fun e!396562 () Bool)

(assert (=> b!697584 (= res!461631 e!396562)))

(declare-fun res!461639 () Bool)

(assert (=> b!697584 (=> (not res!461639) (not e!396562))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!697584 (= res!461639 (bvsgt from!3004 i!1382))))

(declare-fun b!697586 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!697586 (= e!396562 (contains!3775 acc!681 k0!2843))))

(declare-fun b!697587 () Bool)

(declare-fun res!461636 () Bool)

(assert (=> b!697587 (=> (not res!461636) (not e!396565))))

(assert (=> b!697587 (= res!461636 (not (contains!3775 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697588 () Bool)

(declare-fun res!461633 () Bool)

(assert (=> b!697588 (=> (not res!461633) (not e!396565))))

(declare-fun noDuplicate!1022 (List!13232) Bool)

(assert (=> b!697588 (= res!461633 (noDuplicate!1022 acc!681))))

(declare-fun b!697589 () Bool)

(declare-fun e!396561 () Bool)

(assert (=> b!697589 (= e!396563 e!396561)))

(declare-fun res!461634 () Bool)

(assert (=> b!697589 (=> (not res!461634) (not e!396561))))

(assert (=> b!697589 (= res!461634 (bvsle from!3004 i!1382))))

(declare-fun b!697585 () Bool)

(assert (=> b!697585 (= e!396561 (not (contains!3775 acc!681 k0!2843)))))

(declare-fun res!461635 () Bool)

(assert (=> start!62294 (=> (not res!461635) (not e!396565))))

(assert (=> start!62294 (= res!461635 (and (bvslt (size!19521 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19521 a!3626))))))

(assert (=> start!62294 e!396565))

(assert (=> start!62294 true))

(declare-fun array_inv!14912 (array!39968) Bool)

(assert (=> start!62294 (array_inv!14912 a!3626)))

(assert (= (and start!62294 res!461635) b!697588))

(assert (= (and b!697588 res!461633) b!697581))

(assert (= (and b!697581 res!461638) b!697587))

(assert (= (and b!697587 res!461636) b!697584))

(assert (= (and b!697584 res!461639) b!697586))

(assert (= (and b!697584 (not res!461631)) b!697589))

(assert (= (and b!697589 res!461634) b!697585))

(assert (= (and b!697584 res!461632) b!697583))

(assert (= (and b!697583 res!461637) b!697582))

(declare-fun m!657989 () Bool)

(assert (=> b!697587 m!657989))

(declare-fun m!657991 () Bool)

(assert (=> b!697582 m!657991))

(declare-fun m!657993 () Bool)

(assert (=> b!697581 m!657993))

(declare-fun m!657995 () Bool)

(assert (=> b!697585 m!657995))

(declare-fun m!657997 () Bool)

(assert (=> start!62294 m!657997))

(assert (=> b!697586 m!657995))

(declare-fun m!657999 () Bool)

(assert (=> b!697588 m!657999))

(declare-fun m!658001 () Bool)

(assert (=> b!697583 m!658001))

(check-sat (not b!697588) (not b!697581) (not b!697583) (not start!62294) (not b!697582) (not b!697585) (not b!697586) (not b!697587))
(check-sat)
