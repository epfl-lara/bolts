; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63384 () Bool)

(assert start!63384)

(declare-fun b!713618 () Bool)

(declare-fun res!476871 () Bool)

(declare-fun e!401207 () Bool)

(assert (=> b!713618 (=> (not res!476871) (not e!401207))))

(declare-datatypes ((List!13451 0))(
  ( (Nil!13448) (Cons!13447 (h!14492 (_ BitVec 64)) (t!19774 List!13451)) )
))
(declare-fun newAcc!49 () List!13451)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun contains!3994 (List!13451 (_ BitVec 64)) Bool)

(assert (=> b!713618 (= res!476871 (contains!3994 newAcc!49 k0!2824))))

(declare-fun b!713619 () Bool)

(declare-fun res!476870 () Bool)

(assert (=> b!713619 (=> (not res!476870) (not e!401207))))

(declare-fun acc!652 () List!13451)

(assert (=> b!713619 (= res!476870 (not (contains!3994 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713620 () Bool)

(assert (=> b!713620 (= e!401207 false)))

(declare-fun lt!318665 () Bool)

(assert (=> b!713620 (= lt!318665 (contains!3994 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713621 () Bool)

(declare-fun res!476875 () Bool)

(assert (=> b!713621 (=> (not res!476875) (not e!401207))))

(declare-datatypes ((array!40442 0))(
  ( (array!40443 (arr!19357 (Array (_ BitVec 32) (_ BitVec 64))) (size!19769 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40442)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713621 (= res!476875 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!713622 () Bool)

(declare-fun res!476869 () Bool)

(assert (=> b!713622 (=> (not res!476869) (not e!401207))))

(declare-fun noDuplicate!1241 (List!13451) Bool)

(assert (=> b!713622 (= res!476869 (noDuplicate!1241 acc!652))))

(declare-fun b!713623 () Bool)

(declare-fun res!476877 () Bool)

(assert (=> b!713623 (=> (not res!476877) (not e!401207))))

(declare-fun subseq!438 (List!13451 List!13451) Bool)

(assert (=> b!713623 (= res!476877 (subseq!438 acc!652 newAcc!49))))

(declare-fun b!713624 () Bool)

(declare-fun res!476873 () Bool)

(assert (=> b!713624 (=> (not res!476873) (not e!401207))))

(declare-fun arrayNoDuplicates!0 (array!40442 (_ BitVec 32) List!13451) Bool)

(assert (=> b!713624 (= res!476873 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun res!476874 () Bool)

(assert (=> start!63384 (=> (not res!476874) (not e!401207))))

(assert (=> start!63384 (= res!476874 (and (bvslt (size!19769 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19769 a!3591))))))

(assert (=> start!63384 e!401207))

(assert (=> start!63384 true))

(declare-fun array_inv!15131 (array!40442) Bool)

(assert (=> start!63384 (array_inv!15131 a!3591)))

(declare-fun b!713625 () Bool)

(declare-fun res!476876 () Bool)

(assert (=> b!713625 (=> (not res!476876) (not e!401207))))

(assert (=> b!713625 (= res!476876 (not (contains!3994 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713626 () Bool)

(declare-fun res!476868 () Bool)

(assert (=> b!713626 (=> (not res!476868) (not e!401207))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713626 (= res!476868 (validKeyInArray!0 k0!2824))))

(declare-fun b!713627 () Bool)

(declare-fun res!476872 () Bool)

(assert (=> b!713627 (=> (not res!476872) (not e!401207))))

(declare-fun -!403 (List!13451 (_ BitVec 64)) List!13451)

(assert (=> b!713627 (= res!476872 (= (-!403 newAcc!49 k0!2824) acc!652))))

(declare-fun b!713628 () Bool)

(declare-fun res!476880 () Bool)

(assert (=> b!713628 (=> (not res!476880) (not e!401207))))

(assert (=> b!713628 (= res!476880 (not (contains!3994 acc!652 k0!2824)))))

(declare-fun b!713629 () Bool)

(declare-fun res!476878 () Bool)

(assert (=> b!713629 (=> (not res!476878) (not e!401207))))

(assert (=> b!713629 (= res!476878 (noDuplicate!1241 newAcc!49))))

(declare-fun b!713630 () Bool)

(declare-fun res!476879 () Bool)

(assert (=> b!713630 (=> (not res!476879) (not e!401207))))

(assert (=> b!713630 (= res!476879 (not (contains!3994 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!63384 res!476874) b!713622))

(assert (= (and b!713622 res!476869) b!713629))

(assert (= (and b!713629 res!476878) b!713625))

(assert (= (and b!713625 res!476876) b!713619))

(assert (= (and b!713619 res!476870) b!713621))

(assert (= (and b!713621 res!476875) b!713628))

(assert (= (and b!713628 res!476880) b!713626))

(assert (= (and b!713626 res!476868) b!713624))

(assert (= (and b!713624 res!476873) b!713623))

(assert (= (and b!713623 res!476877) b!713618))

(assert (= (and b!713618 res!476871) b!713627))

(assert (= (and b!713627 res!476872) b!713630))

(assert (= (and b!713630 res!476879) b!713620))

(declare-fun m!670405 () Bool)

(assert (=> b!713618 m!670405))

(declare-fun m!670407 () Bool)

(assert (=> b!713630 m!670407))

(declare-fun m!670409 () Bool)

(assert (=> b!713625 m!670409))

(declare-fun m!670411 () Bool)

(assert (=> b!713624 m!670411))

(declare-fun m!670413 () Bool)

(assert (=> b!713621 m!670413))

(declare-fun m!670415 () Bool)

(assert (=> b!713623 m!670415))

(declare-fun m!670417 () Bool)

(assert (=> b!713620 m!670417))

(declare-fun m!670419 () Bool)

(assert (=> b!713626 m!670419))

(declare-fun m!670421 () Bool)

(assert (=> b!713622 m!670421))

(declare-fun m!670423 () Bool)

(assert (=> b!713629 m!670423))

(declare-fun m!670425 () Bool)

(assert (=> b!713628 m!670425))

(declare-fun m!670427 () Bool)

(assert (=> b!713627 m!670427))

(declare-fun m!670429 () Bool)

(assert (=> b!713619 m!670429))

(declare-fun m!670431 () Bool)

(assert (=> start!63384 m!670431))

(check-sat (not b!713618) (not b!713630) (not b!713625) (not b!713628) (not b!713623) (not start!63384) (not b!713621) (not b!713620) (not b!713624) (not b!713629) (not b!713627) (not b!713619) (not b!713622) (not b!713626))
(check-sat)
