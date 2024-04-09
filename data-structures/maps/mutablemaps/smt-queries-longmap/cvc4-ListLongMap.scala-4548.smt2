; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63386 () Bool)

(assert start!63386)

(declare-fun b!713657 () Bool)

(declare-fun res!476917 () Bool)

(declare-fun e!401214 () Bool)

(assert (=> b!713657 (=> (not res!476917) (not e!401214))))

(declare-datatypes ((List!13452 0))(
  ( (Nil!13449) (Cons!13448 (h!14493 (_ BitVec 64)) (t!19775 List!13452)) )
))
(declare-fun acc!652 () List!13452)

(declare-fun contains!3995 (List!13452 (_ BitVec 64)) Bool)

(assert (=> b!713657 (= res!476917 (not (contains!3995 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713658 () Bool)

(declare-fun res!476918 () Bool)

(assert (=> b!713658 (=> (not res!476918) (not e!401214))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713658 (= res!476918 (validKeyInArray!0 k!2824))))

(declare-fun b!713659 () Bool)

(declare-fun res!476911 () Bool)

(assert (=> b!713659 (=> (not res!476911) (not e!401214))))

(assert (=> b!713659 (= res!476911 (not (contains!3995 acc!652 k!2824)))))

(declare-fun b!713660 () Bool)

(declare-fun res!476913 () Bool)

(assert (=> b!713660 (=> (not res!476913) (not e!401214))))

(declare-datatypes ((array!40444 0))(
  ( (array!40445 (arr!19358 (Array (_ BitVec 32) (_ BitVec 64))) (size!19770 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40444)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40444 (_ BitVec 32) List!13452) Bool)

(assert (=> b!713660 (= res!476913 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun res!476908 () Bool)

(assert (=> start!63386 (=> (not res!476908) (not e!401214))))

(assert (=> start!63386 (= res!476908 (and (bvslt (size!19770 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19770 a!3591))))))

(assert (=> start!63386 e!401214))

(assert (=> start!63386 true))

(declare-fun array_inv!15132 (array!40444) Bool)

(assert (=> start!63386 (array_inv!15132 a!3591)))

(declare-fun b!713661 () Bool)

(declare-fun res!476907 () Bool)

(assert (=> b!713661 (=> (not res!476907) (not e!401214))))

(declare-fun newAcc!49 () List!13452)

(assert (=> b!713661 (= res!476907 (not (contains!3995 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713662 () Bool)

(declare-fun res!476919 () Bool)

(assert (=> b!713662 (=> (not res!476919) (not e!401214))))

(declare-fun arrayContainsKey!0 (array!40444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713662 (= res!476919 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!713663 () Bool)

(declare-fun res!476910 () Bool)

(assert (=> b!713663 (=> (not res!476910) (not e!401214))))

(declare-fun noDuplicate!1242 (List!13452) Bool)

(assert (=> b!713663 (= res!476910 (noDuplicate!1242 newAcc!49))))

(declare-fun b!713664 () Bool)

(declare-fun res!476912 () Bool)

(assert (=> b!713664 (=> (not res!476912) (not e!401214))))

(assert (=> b!713664 (= res!476912 (noDuplicate!1242 acc!652))))

(declare-fun b!713665 () Bool)

(declare-fun res!476915 () Bool)

(assert (=> b!713665 (=> (not res!476915) (not e!401214))))

(assert (=> b!713665 (= res!476915 (contains!3995 newAcc!49 k!2824))))

(declare-fun b!713666 () Bool)

(declare-fun res!476909 () Bool)

(assert (=> b!713666 (=> (not res!476909) (not e!401214))))

(declare-fun -!404 (List!13452 (_ BitVec 64)) List!13452)

(assert (=> b!713666 (= res!476909 (= (-!404 newAcc!49 k!2824) acc!652))))

(declare-fun b!713667 () Bool)

(assert (=> b!713667 (= e!401214 false)))

(declare-fun lt!318668 () Bool)

(assert (=> b!713667 (= lt!318668 (contains!3995 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713668 () Bool)

(declare-fun res!476916 () Bool)

(assert (=> b!713668 (=> (not res!476916) (not e!401214))))

(declare-fun subseq!439 (List!13452 List!13452) Bool)

(assert (=> b!713668 (= res!476916 (subseq!439 acc!652 newAcc!49))))

(declare-fun b!713669 () Bool)

(declare-fun res!476914 () Bool)

(assert (=> b!713669 (=> (not res!476914) (not e!401214))))

(assert (=> b!713669 (= res!476914 (not (contains!3995 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!63386 res!476908) b!713664))

(assert (= (and b!713664 res!476912) b!713663))

(assert (= (and b!713663 res!476910) b!713669))

(assert (= (and b!713669 res!476914) b!713657))

(assert (= (and b!713657 res!476917) b!713662))

(assert (= (and b!713662 res!476919) b!713659))

(assert (= (and b!713659 res!476911) b!713658))

(assert (= (and b!713658 res!476918) b!713660))

(assert (= (and b!713660 res!476913) b!713668))

(assert (= (and b!713668 res!476916) b!713665))

(assert (= (and b!713665 res!476915) b!713666))

(assert (= (and b!713666 res!476909) b!713661))

(assert (= (and b!713661 res!476907) b!713667))

(declare-fun m!670433 () Bool)

(assert (=> start!63386 m!670433))

(declare-fun m!670435 () Bool)

(assert (=> b!713669 m!670435))

(declare-fun m!670437 () Bool)

(assert (=> b!713658 m!670437))

(declare-fun m!670439 () Bool)

(assert (=> b!713665 m!670439))

(declare-fun m!670441 () Bool)

(assert (=> b!713667 m!670441))

(declare-fun m!670443 () Bool)

(assert (=> b!713659 m!670443))

(declare-fun m!670445 () Bool)

(assert (=> b!713668 m!670445))

(declare-fun m!670447 () Bool)

(assert (=> b!713661 m!670447))

(declare-fun m!670449 () Bool)

(assert (=> b!713662 m!670449))

(declare-fun m!670451 () Bool)

(assert (=> b!713660 m!670451))

(declare-fun m!670453 () Bool)

(assert (=> b!713666 m!670453))

(declare-fun m!670455 () Bool)

(assert (=> b!713657 m!670455))

(declare-fun m!670457 () Bool)

(assert (=> b!713664 m!670457))

(declare-fun m!670459 () Bool)

(assert (=> b!713663 m!670459))

(push 1)

(assert (not b!713664))

(assert (not b!713662))

(assert (not b!713668))

(assert (not b!713665))

(assert (not b!713663))

(assert (not start!63386))

(assert (not b!713669))

(assert (not b!713661))

(assert (not b!713659))

(assert (not b!713667))

(assert (not b!713666))

