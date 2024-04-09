; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62594 () Bool)

(assert start!62594)

(declare-fun b!705620 () Bool)

(declare-fun res!469607 () Bool)

(declare-fun e!397761 () Bool)

(assert (=> b!705620 (=> (not res!469607) (not e!397761))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-datatypes ((List!13361 0))(
  ( (Nil!13358) (Cons!13357 (h!14402 (_ BitVec 64)) (t!19651 List!13361)) )
))
(declare-fun acc!652 () List!13361)

(declare-fun newAcc!49 () List!13361)

(declare-fun -!313 (List!13361 (_ BitVec 64)) List!13361)

(assert (=> b!705620 (= res!469607 (= (-!313 newAcc!49 k0!2824) acc!652))))

(declare-fun b!705621 () Bool)

(declare-fun res!469613 () Bool)

(assert (=> b!705621 (=> (not res!469613) (not e!397761))))

(declare-datatypes ((array!40229 0))(
  ( (array!40230 (arr!19267 (Array (_ BitVec 32) (_ BitVec 64))) (size!19650 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40229)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705621 (= res!469613 (not (validKeyInArray!0 (select (arr!19267 a!3591) from!2969))))))

(declare-fun b!705622 () Bool)

(declare-fun res!469616 () Bool)

(assert (=> b!705622 (=> (not res!469616) (not e!397761))))

(declare-fun arrayNoDuplicates!0 (array!40229 (_ BitVec 32) List!13361) Bool)

(assert (=> b!705622 (= res!469616 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705624 () Bool)

(declare-fun res!469614 () Bool)

(assert (=> b!705624 (=> (not res!469614) (not e!397761))))

(assert (=> b!705624 (= res!469614 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!705625 () Bool)

(declare-fun res!469606 () Bool)

(assert (=> b!705625 (=> (not res!469606) (not e!397761))))

(declare-fun subseq!348 (List!13361 List!13361) Bool)

(assert (=> b!705625 (= res!469606 (subseq!348 acc!652 newAcc!49))))

(declare-fun b!705626 () Bool)

(declare-fun res!469610 () Bool)

(assert (=> b!705626 (=> (not res!469610) (not e!397761))))

(declare-fun contains!3904 (List!13361 (_ BitVec 64)) Bool)

(assert (=> b!705626 (= res!469610 (not (contains!3904 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705627 () Bool)

(declare-fun res!469621 () Bool)

(assert (=> b!705627 (=> (not res!469621) (not e!397761))))

(assert (=> b!705627 (= res!469621 (not (contains!3904 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705628 () Bool)

(declare-fun res!469618 () Bool)

(assert (=> b!705628 (=> (not res!469618) (not e!397761))))

(declare-fun noDuplicate!1151 (List!13361) Bool)

(assert (=> b!705628 (= res!469618 (noDuplicate!1151 acc!652))))

(declare-fun b!705629 () Bool)

(declare-fun res!469619 () Bool)

(assert (=> b!705629 (=> (not res!469619) (not e!397761))))

(declare-fun arrayContainsKey!0 (array!40229 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705629 (= res!469619 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!705630 () Bool)

(declare-fun res!469609 () Bool)

(assert (=> b!705630 (=> (not res!469609) (not e!397761))))

(assert (=> b!705630 (= res!469609 (noDuplicate!1151 newAcc!49))))

(declare-fun b!705631 () Bool)

(declare-fun res!469622 () Bool)

(assert (=> b!705631 (=> (not res!469622) (not e!397761))))

(assert (=> b!705631 (= res!469622 (not (contains!3904 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705632 () Bool)

(declare-fun res!469612 () Bool)

(assert (=> b!705632 (=> (not res!469612) (not e!397761))))

(assert (=> b!705632 (= res!469612 (validKeyInArray!0 k0!2824))))

(declare-fun b!705633 () Bool)

(declare-fun res!469611 () Bool)

(assert (=> b!705633 (=> (not res!469611) (not e!397761))))

(assert (=> b!705633 (= res!469611 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19650 a!3591)))))

(declare-fun b!705634 () Bool)

(declare-fun res!469604 () Bool)

(assert (=> b!705634 (=> (not res!469604) (not e!397761))))

(assert (=> b!705634 (= res!469604 (not (contains!3904 acc!652 k0!2824)))))

(declare-fun b!705635 () Bool)

(declare-fun res!469615 () Bool)

(assert (=> b!705635 (=> (not res!469615) (not e!397761))))

(assert (=> b!705635 (= res!469615 (not (contains!3904 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705636 () Bool)

(declare-fun res!469608 () Bool)

(assert (=> b!705636 (=> (not res!469608) (not e!397761))))

(assert (=> b!705636 (= res!469608 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!705623 () Bool)

(declare-fun res!469620 () Bool)

(assert (=> b!705623 (=> (not res!469620) (not e!397761))))

(assert (=> b!705623 (= res!469620 (contains!3904 newAcc!49 k0!2824))))

(declare-fun res!469605 () Bool)

(assert (=> start!62594 (=> (not res!469605) (not e!397761))))

(assert (=> start!62594 (= res!469605 (and (bvslt (size!19650 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19650 a!3591))))))

(assert (=> start!62594 e!397761))

(assert (=> start!62594 true))

(declare-fun array_inv!15041 (array!40229) Bool)

(assert (=> start!62594 (array_inv!15041 a!3591)))

(declare-fun b!705637 () Bool)

(declare-fun res!469617 () Bool)

(assert (=> b!705637 (=> (not res!469617) (not e!397761))))

(assert (=> b!705637 (= res!469617 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!705638 () Bool)

(assert (=> b!705638 (= e!397761 (not true))))

(assert (=> b!705638 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) newAcc!49)))

(declare-datatypes ((Unit!24600 0))(
  ( (Unit!24601) )
))
(declare-fun lt!317862 () Unit!24600)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40229 (_ BitVec 64) (_ BitVec 32) List!13361 List!13361) Unit!24600)

(assert (=> b!705638 (= lt!317862 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969) acc!652 newAcc!49))))

(assert (= (and start!62594 res!469605) b!705628))

(assert (= (and b!705628 res!469618) b!705630))

(assert (= (and b!705630 res!469609) b!705626))

(assert (= (and b!705626 res!469610) b!705627))

(assert (= (and b!705627 res!469621) b!705629))

(assert (= (and b!705629 res!469619) b!705634))

(assert (= (and b!705634 res!469604) b!705632))

(assert (= (and b!705632 res!469612) b!705622))

(assert (= (and b!705622 res!469616) b!705625))

(assert (= (and b!705625 res!469606) b!705623))

(assert (= (and b!705623 res!469620) b!705620))

(assert (= (and b!705620 res!469607) b!705631))

(assert (= (and b!705631 res!469622) b!705635))

(assert (= (and b!705635 res!469615) b!705633))

(assert (= (and b!705633 res!469611) b!705621))

(assert (= (and b!705621 res!469613) b!705636))

(assert (= (and b!705636 res!469608) b!705637))

(assert (= (and b!705637 res!469617) b!705624))

(assert (= (and b!705624 res!469614) b!705638))

(declare-fun m!663751 () Bool)

(assert (=> b!705637 m!663751))

(declare-fun m!663753 () Bool)

(assert (=> b!705638 m!663753))

(declare-fun m!663755 () Bool)

(assert (=> b!705638 m!663755))

(declare-fun m!663757 () Bool)

(assert (=> start!62594 m!663757))

(declare-fun m!663759 () Bool)

(assert (=> b!705625 m!663759))

(declare-fun m!663761 () Bool)

(assert (=> b!705630 m!663761))

(declare-fun m!663763 () Bool)

(assert (=> b!705635 m!663763))

(declare-fun m!663765 () Bool)

(assert (=> b!705620 m!663765))

(declare-fun m!663767 () Bool)

(assert (=> b!705634 m!663767))

(declare-fun m!663769 () Bool)

(assert (=> b!705623 m!663769))

(declare-fun m!663771 () Bool)

(assert (=> b!705624 m!663771))

(declare-fun m!663773 () Bool)

(assert (=> b!705627 m!663773))

(declare-fun m!663775 () Bool)

(assert (=> b!705632 m!663775))

(declare-fun m!663777 () Bool)

(assert (=> b!705631 m!663777))

(declare-fun m!663779 () Bool)

(assert (=> b!705628 m!663779))

(declare-fun m!663781 () Bool)

(assert (=> b!705626 m!663781))

(declare-fun m!663783 () Bool)

(assert (=> b!705622 m!663783))

(declare-fun m!663785 () Bool)

(assert (=> b!705629 m!663785))

(declare-fun m!663787 () Bool)

(assert (=> b!705621 m!663787))

(assert (=> b!705621 m!663787))

(declare-fun m!663789 () Bool)

(assert (=> b!705621 m!663789))

(check-sat (not start!62594) (not b!705632) (not b!705620) (not b!705625) (not b!705635) (not b!705621) (not b!705634) (not b!705631) (not b!705628) (not b!705638) (not b!705624) (not b!705623) (not b!705630) (not b!705637) (not b!705626) (not b!705629) (not b!705627) (not b!705622))
(check-sat)
