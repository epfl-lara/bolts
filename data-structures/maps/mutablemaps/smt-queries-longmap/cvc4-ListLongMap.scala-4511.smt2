; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62554 () Bool)

(assert start!62554)

(declare-fun b!704517 () Bool)

(declare-fun res!468518 () Bool)

(declare-fun e!397641 () Bool)

(assert (=> b!704517 (=> (not res!468518) (not e!397641))))

(declare-datatypes ((List!13341 0))(
  ( (Nil!13338) (Cons!13337 (h!14382 (_ BitVec 64)) (t!19631 List!13341)) )
))
(declare-fun newAcc!49 () List!13341)

(declare-fun noDuplicate!1131 (List!13341) Bool)

(assert (=> b!704517 (= res!468518 (noDuplicate!1131 newAcc!49))))

(declare-fun b!704518 () Bool)

(declare-fun res!468509 () Bool)

(assert (=> b!704518 (=> (not res!468509) (not e!397641))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40189 0))(
  ( (array!40190 (arr!19247 (Array (_ BitVec 32) (_ BitVec 64))) (size!19630 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40189)

(assert (=> b!704518 (= res!468509 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19630 a!3591)))))

(declare-fun b!704519 () Bool)

(declare-fun res!468503 () Bool)

(assert (=> b!704519 (=> (not res!468503) (not e!397641))))

(declare-fun acc!652 () List!13341)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3884 (List!13341 (_ BitVec 64)) Bool)

(assert (=> b!704519 (= res!468503 (not (contains!3884 acc!652 k!2824)))))

(declare-fun b!704520 () Bool)

(declare-fun res!468514 () Bool)

(assert (=> b!704520 (=> (not res!468514) (not e!397641))))

(assert (=> b!704520 (= res!468514 (not (contains!3884 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704521 () Bool)

(declare-fun res!468516 () Bool)

(assert (=> b!704521 (=> (not res!468516) (not e!397641))))

(declare-fun arrayContainsKey!0 (array!40189 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!704521 (= res!468516 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun res!468506 () Bool)

(assert (=> start!62554 (=> (not res!468506) (not e!397641))))

(assert (=> start!62554 (= res!468506 (and (bvslt (size!19630 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19630 a!3591))))))

(assert (=> start!62554 e!397641))

(assert (=> start!62554 true))

(declare-fun array_inv!15021 (array!40189) Bool)

(assert (=> start!62554 (array_inv!15021 a!3591)))

(declare-fun b!704522 () Bool)

(declare-fun res!468501 () Bool)

(assert (=> b!704522 (=> (not res!468501) (not e!397641))))

(assert (=> b!704522 (= res!468501 (not (contains!3884 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704523 () Bool)

(declare-fun res!468507 () Bool)

(assert (=> b!704523 (=> (not res!468507) (not e!397641))))

(declare-fun arrayNoDuplicates!0 (array!40189 (_ BitVec 32) List!13341) Bool)

(assert (=> b!704523 (= res!468507 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!704524 () Bool)

(declare-fun res!468502 () Bool)

(assert (=> b!704524 (=> (not res!468502) (not e!397641))))

(assert (=> b!704524 (= res!468502 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!704525 () Bool)

(declare-fun res!468517 () Bool)

(assert (=> b!704525 (=> (not res!468517) (not e!397641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!704525 (= res!468517 (not (validKeyInArray!0 (select (arr!19247 a!3591) from!2969))))))

(declare-fun b!704526 () Bool)

(declare-fun res!468512 () Bool)

(assert (=> b!704526 (=> (not res!468512) (not e!397641))))

(assert (=> b!704526 (= res!468512 (noDuplicate!1131 acc!652))))

(declare-fun b!704527 () Bool)

(assert (=> b!704527 (= e!397641 false)))

(declare-fun lt!317802 () Bool)

(assert (=> b!704527 (= lt!317802 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!704528 () Bool)

(declare-fun res!468508 () Bool)

(assert (=> b!704528 (=> (not res!468508) (not e!397641))))

(declare-fun -!293 (List!13341 (_ BitVec 64)) List!13341)

(assert (=> b!704528 (= res!468508 (= (-!293 newAcc!49 k!2824) acc!652))))

(declare-fun b!704529 () Bool)

(declare-fun res!468511 () Bool)

(assert (=> b!704529 (=> (not res!468511) (not e!397641))))

(declare-fun subseq!328 (List!13341 List!13341) Bool)

(assert (=> b!704529 (= res!468511 (subseq!328 acc!652 newAcc!49))))

(declare-fun b!704530 () Bool)

(declare-fun res!468510 () Bool)

(assert (=> b!704530 (=> (not res!468510) (not e!397641))))

(assert (=> b!704530 (= res!468510 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!704531 () Bool)

(declare-fun res!468504 () Bool)

(assert (=> b!704531 (=> (not res!468504) (not e!397641))))

(assert (=> b!704531 (= res!468504 (not (contains!3884 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704532 () Bool)

(declare-fun res!468513 () Bool)

(assert (=> b!704532 (=> (not res!468513) (not e!397641))))

(assert (=> b!704532 (= res!468513 (not (contains!3884 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704533 () Bool)

(declare-fun res!468515 () Bool)

(assert (=> b!704533 (=> (not res!468515) (not e!397641))))

(assert (=> b!704533 (= res!468515 (validKeyInArray!0 k!2824))))

(declare-fun b!704534 () Bool)

(declare-fun res!468505 () Bool)

(assert (=> b!704534 (=> (not res!468505) (not e!397641))))

(assert (=> b!704534 (= res!468505 (contains!3884 newAcc!49 k!2824))))

(assert (= (and start!62554 res!468506) b!704526))

(assert (= (and b!704526 res!468512) b!704517))

(assert (= (and b!704517 res!468518) b!704532))

(assert (= (and b!704532 res!468513) b!704531))

(assert (= (and b!704531 res!468504) b!704521))

(assert (= (and b!704521 res!468516) b!704519))

(assert (= (and b!704519 res!468503) b!704533))

(assert (= (and b!704533 res!468515) b!704523))

(assert (= (and b!704523 res!468507) b!704529))

(assert (= (and b!704529 res!468511) b!704534))

(assert (= (and b!704534 res!468505) b!704528))

(assert (= (and b!704528 res!468508) b!704522))

(assert (= (and b!704522 res!468501) b!704520))

(assert (= (and b!704520 res!468514) b!704518))

(assert (= (and b!704518 res!468509) b!704525))

(assert (= (and b!704525 res!468517) b!704524))

(assert (= (and b!704524 res!468502) b!704530))

(assert (= (and b!704530 res!468510) b!704527))

(declare-fun m!663003 () Bool)

(assert (=> b!704531 m!663003))

(declare-fun m!663005 () Bool)

(assert (=> start!62554 m!663005))

(declare-fun m!663007 () Bool)

(assert (=> b!704533 m!663007))

(declare-fun m!663009 () Bool)

(assert (=> b!704525 m!663009))

(assert (=> b!704525 m!663009))

(declare-fun m!663011 () Bool)

(assert (=> b!704525 m!663011))

(declare-fun m!663013 () Bool)

(assert (=> b!704528 m!663013))

(declare-fun m!663015 () Bool)

(assert (=> b!704534 m!663015))

(declare-fun m!663017 () Bool)

(assert (=> b!704519 m!663017))

(declare-fun m!663019 () Bool)

(assert (=> b!704532 m!663019))

(declare-fun m!663021 () Bool)

(assert (=> b!704527 m!663021))

(declare-fun m!663023 () Bool)

(assert (=> b!704529 m!663023))

(declare-fun m!663025 () Bool)

(assert (=> b!704521 m!663025))

(declare-fun m!663027 () Bool)

(assert (=> b!704526 m!663027))

(declare-fun m!663029 () Bool)

(assert (=> b!704530 m!663029))

(declare-fun m!663031 () Bool)

(assert (=> b!704523 m!663031))

(declare-fun m!663033 () Bool)

(assert (=> b!704517 m!663033))

(declare-fun m!663035 () Bool)

(assert (=> b!704522 m!663035))

(declare-fun m!663037 () Bool)

(assert (=> b!704520 m!663037))

(push 1)

(assert (not b!704529))

(assert (not b!704531))

(assert (not b!704530))

(assert (not b!704519))

(assert (not b!704534))

(assert (not b!704527))

(assert (not b!704517))

(assert (not b!704532))

(assert (not b!704521))

(assert (not b!704525))

(assert (not b!704523))

(assert (not b!704526))

(assert (not b!704522))

(assert (not start!62554))

(assert (not b!704528))

(assert (not b!704533))

(assert (not b!704520))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

