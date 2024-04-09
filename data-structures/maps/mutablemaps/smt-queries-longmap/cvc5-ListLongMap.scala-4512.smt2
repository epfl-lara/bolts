; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62556 () Bool)

(assert start!62556)

(declare-fun b!704571 () Bool)

(declare-fun res!468557 () Bool)

(declare-fun e!397648 () Bool)

(assert (=> b!704571 (=> (not res!468557) (not e!397648))))

(declare-datatypes ((array!40191 0))(
  ( (array!40192 (arr!19248 (Array (_ BitVec 32) (_ BitVec 64))) (size!19631 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40191)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!704571 (= res!468557 (not (validKeyInArray!0 (select (arr!19248 a!3591) from!2969))))))

(declare-fun b!704572 () Bool)

(declare-fun res!468566 () Bool)

(assert (=> b!704572 (=> (not res!468566) (not e!397648))))

(assert (=> b!704572 (= res!468566 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!704573 () Bool)

(declare-fun res!468559 () Bool)

(assert (=> b!704573 (=> (not res!468559) (not e!397648))))

(declare-datatypes ((List!13342 0))(
  ( (Nil!13339) (Cons!13338 (h!14383 (_ BitVec 64)) (t!19632 List!13342)) )
))
(declare-fun acc!652 () List!13342)

(declare-fun arrayNoDuplicates!0 (array!40191 (_ BitVec 32) List!13342) Bool)

(assert (=> b!704573 (= res!468559 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!704574 () Bool)

(declare-fun res!468562 () Bool)

(assert (=> b!704574 (=> (not res!468562) (not e!397648))))

(declare-fun newAcc!49 () List!13342)

(declare-fun subseq!329 (List!13342 List!13342) Bool)

(assert (=> b!704574 (= res!468562 (subseq!329 acc!652 newAcc!49))))

(declare-fun b!704575 () Bool)

(declare-fun res!468568 () Bool)

(assert (=> b!704575 (=> (not res!468568) (not e!397648))))

(declare-fun contains!3885 (List!13342 (_ BitVec 64)) Bool)

(assert (=> b!704575 (= res!468568 (not (contains!3885 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!468565 () Bool)

(assert (=> start!62556 (=> (not res!468565) (not e!397648))))

(assert (=> start!62556 (= res!468565 (and (bvslt (size!19631 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19631 a!3591))))))

(assert (=> start!62556 e!397648))

(assert (=> start!62556 true))

(declare-fun array_inv!15022 (array!40191) Bool)

(assert (=> start!62556 (array_inv!15022 a!3591)))

(declare-fun b!704576 () Bool)

(declare-fun res!468569 () Bool)

(assert (=> b!704576 (=> (not res!468569) (not e!397648))))

(assert (=> b!704576 (= res!468569 (not (contains!3885 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704577 () Bool)

(declare-fun res!468556 () Bool)

(assert (=> b!704577 (=> (not res!468556) (not e!397648))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40191 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!704577 (= res!468556 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!704578 () Bool)

(declare-fun res!468558 () Bool)

(assert (=> b!704578 (=> (not res!468558) (not e!397648))))

(assert (=> b!704578 (= res!468558 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19631 a!3591)))))

(declare-fun b!704579 () Bool)

(declare-fun res!468561 () Bool)

(assert (=> b!704579 (=> (not res!468561) (not e!397648))))

(assert (=> b!704579 (= res!468561 (not (contains!3885 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704580 () Bool)

(assert (=> b!704580 (= e!397648 false)))

(declare-fun lt!317805 () Bool)

(assert (=> b!704580 (= lt!317805 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!704581 () Bool)

(declare-fun res!468563 () Bool)

(assert (=> b!704581 (=> (not res!468563) (not e!397648))))

(declare-fun noDuplicate!1132 (List!13342) Bool)

(assert (=> b!704581 (= res!468563 (noDuplicate!1132 newAcc!49))))

(declare-fun b!704582 () Bool)

(declare-fun res!468560 () Bool)

(assert (=> b!704582 (=> (not res!468560) (not e!397648))))

(assert (=> b!704582 (= res!468560 (not (contains!3885 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704583 () Bool)

(declare-fun res!468571 () Bool)

(assert (=> b!704583 (=> (not res!468571) (not e!397648))))

(assert (=> b!704583 (= res!468571 (validKeyInArray!0 k!2824))))

(declare-fun b!704584 () Bool)

(declare-fun res!468567 () Bool)

(assert (=> b!704584 (=> (not res!468567) (not e!397648))))

(assert (=> b!704584 (= res!468567 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!704585 () Bool)

(declare-fun res!468555 () Bool)

(assert (=> b!704585 (=> (not res!468555) (not e!397648))))

(assert (=> b!704585 (= res!468555 (noDuplicate!1132 acc!652))))

(declare-fun b!704586 () Bool)

(declare-fun res!468564 () Bool)

(assert (=> b!704586 (=> (not res!468564) (not e!397648))))

(assert (=> b!704586 (= res!468564 (not (contains!3885 acc!652 k!2824)))))

(declare-fun b!704587 () Bool)

(declare-fun res!468570 () Bool)

(assert (=> b!704587 (=> (not res!468570) (not e!397648))))

(assert (=> b!704587 (= res!468570 (contains!3885 newAcc!49 k!2824))))

(declare-fun b!704588 () Bool)

(declare-fun res!468572 () Bool)

(assert (=> b!704588 (=> (not res!468572) (not e!397648))))

(declare-fun -!294 (List!13342 (_ BitVec 64)) List!13342)

(assert (=> b!704588 (= res!468572 (= (-!294 newAcc!49 k!2824) acc!652))))

(assert (= (and start!62556 res!468565) b!704585))

(assert (= (and b!704585 res!468555) b!704581))

(assert (= (and b!704581 res!468563) b!704576))

(assert (= (and b!704576 res!468569) b!704579))

(assert (= (and b!704579 res!468561) b!704577))

(assert (= (and b!704577 res!468556) b!704586))

(assert (= (and b!704586 res!468564) b!704583))

(assert (= (and b!704583 res!468571) b!704573))

(assert (= (and b!704573 res!468559) b!704574))

(assert (= (and b!704574 res!468562) b!704587))

(assert (= (and b!704587 res!468570) b!704588))

(assert (= (and b!704588 res!468572) b!704582))

(assert (= (and b!704582 res!468560) b!704575))

(assert (= (and b!704575 res!468568) b!704578))

(assert (= (and b!704578 res!468558) b!704571))

(assert (= (and b!704571 res!468557) b!704572))

(assert (= (and b!704572 res!468566) b!704584))

(assert (= (and b!704584 res!468567) b!704580))

(declare-fun m!663039 () Bool)

(assert (=> b!704576 m!663039))

(declare-fun m!663041 () Bool)

(assert (=> b!704574 m!663041))

(declare-fun m!663043 () Bool)

(assert (=> b!704579 m!663043))

(declare-fun m!663045 () Bool)

(assert (=> b!704571 m!663045))

(assert (=> b!704571 m!663045))

(declare-fun m!663047 () Bool)

(assert (=> b!704571 m!663047))

(declare-fun m!663049 () Bool)

(assert (=> b!704588 m!663049))

(declare-fun m!663051 () Bool)

(assert (=> b!704585 m!663051))

(declare-fun m!663053 () Bool)

(assert (=> start!62556 m!663053))

(declare-fun m!663055 () Bool)

(assert (=> b!704577 m!663055))

(declare-fun m!663057 () Bool)

(assert (=> b!704587 m!663057))

(declare-fun m!663059 () Bool)

(assert (=> b!704586 m!663059))

(declare-fun m!663061 () Bool)

(assert (=> b!704583 m!663061))

(declare-fun m!663063 () Bool)

(assert (=> b!704575 m!663063))

(declare-fun m!663065 () Bool)

(assert (=> b!704581 m!663065))

(declare-fun m!663067 () Bool)

(assert (=> b!704584 m!663067))

(declare-fun m!663069 () Bool)

(assert (=> b!704582 m!663069))

(declare-fun m!663071 () Bool)

(assert (=> b!704573 m!663071))

(declare-fun m!663073 () Bool)

(assert (=> b!704580 m!663073))

(push 1)

(assert (not b!704581))

(assert (not b!704576))

(assert (not b!704582))

(assert (not b!704583))

(assert (not b!704585))

(assert (not b!704573))

(assert (not b!704584))

(assert (not b!704580))

(assert (not b!704579))

(assert (not b!704571))

(assert (not b!704588))

(assert (not b!704586))

(assert (not start!62556))

(assert (not b!704575))

(assert (not b!704577))

(assert (not b!704574))

(assert (not b!704587))

(check-sat)

(pop 1)

