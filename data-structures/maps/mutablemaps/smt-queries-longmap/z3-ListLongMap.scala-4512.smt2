; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62558 () Bool)

(assert start!62558)

(declare-fun b!704625 () Bool)

(declare-fun res!468619 () Bool)

(declare-fun e!397653 () Bool)

(assert (=> b!704625 (=> (not res!468619) (not e!397653))))

(declare-datatypes ((array!40193 0))(
  ( (array!40194 (arr!19249 (Array (_ BitVec 32) (_ BitVec 64))) (size!19632 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40193)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!704625 (= res!468619 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!704626 () Bool)

(declare-fun res!468622 () Bool)

(assert (=> b!704626 (=> (not res!468622) (not e!397653))))

(assert (=> b!704626 (= res!468622 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!704627 () Bool)

(declare-fun res!468615 () Bool)

(assert (=> b!704627 (=> (not res!468615) (not e!397653))))

(declare-datatypes ((List!13343 0))(
  ( (Nil!13340) (Cons!13339 (h!14384 (_ BitVec 64)) (t!19633 List!13343)) )
))
(declare-fun acc!652 () List!13343)

(declare-fun contains!3886 (List!13343 (_ BitVec 64)) Bool)

(assert (=> b!704627 (= res!468615 (not (contains!3886 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704628 () Bool)

(declare-fun res!468612 () Bool)

(assert (=> b!704628 (=> (not res!468612) (not e!397653))))

(declare-fun arrayNoDuplicates!0 (array!40193 (_ BitVec 32) List!13343) Bool)

(assert (=> b!704628 (= res!468612 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!704629 () Bool)

(declare-fun res!468624 () Bool)

(assert (=> b!704629 (=> (not res!468624) (not e!397653))))

(declare-fun newAcc!49 () List!13343)

(declare-fun -!295 (List!13343 (_ BitVec 64)) List!13343)

(assert (=> b!704629 (= res!468624 (= (-!295 newAcc!49 k0!2824) acc!652))))

(declare-fun b!704630 () Bool)

(declare-fun res!468610 () Bool)

(assert (=> b!704630 (=> (not res!468610) (not e!397653))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!704630 (= res!468610 (not (validKeyInArray!0 (select (arr!19249 a!3591) from!2969))))))

(declare-fun b!704631 () Bool)

(declare-fun res!468625 () Bool)

(assert (=> b!704631 (=> (not res!468625) (not e!397653))))

(assert (=> b!704631 (= res!468625 (validKeyInArray!0 k0!2824))))

(declare-fun b!704632 () Bool)

(declare-fun res!468618 () Bool)

(assert (=> b!704632 (=> (not res!468618) (not e!397653))))

(declare-fun subseq!330 (List!13343 List!13343) Bool)

(assert (=> b!704632 (= res!468618 (subseq!330 acc!652 newAcc!49))))

(declare-fun b!704633 () Bool)

(assert (=> b!704633 (= e!397653 false)))

(declare-fun lt!317808 () Bool)

(assert (=> b!704633 (= lt!317808 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun res!468623 () Bool)

(assert (=> start!62558 (=> (not res!468623) (not e!397653))))

(assert (=> start!62558 (= res!468623 (and (bvslt (size!19632 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19632 a!3591))))))

(assert (=> start!62558 e!397653))

(assert (=> start!62558 true))

(declare-fun array_inv!15023 (array!40193) Bool)

(assert (=> start!62558 (array_inv!15023 a!3591)))

(declare-fun b!704634 () Bool)

(declare-fun res!468613 () Bool)

(assert (=> b!704634 (=> (not res!468613) (not e!397653))))

(assert (=> b!704634 (= res!468613 (not (contains!3886 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704635 () Bool)

(declare-fun res!468609 () Bool)

(assert (=> b!704635 (=> (not res!468609) (not e!397653))))

(assert (=> b!704635 (= res!468609 (not (contains!3886 acc!652 k0!2824)))))

(declare-fun b!704636 () Bool)

(declare-fun res!468614 () Bool)

(assert (=> b!704636 (=> (not res!468614) (not e!397653))))

(assert (=> b!704636 (= res!468614 (not (contains!3886 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704637 () Bool)

(declare-fun res!468611 () Bool)

(assert (=> b!704637 (=> (not res!468611) (not e!397653))))

(assert (=> b!704637 (= res!468611 (contains!3886 newAcc!49 k0!2824))))

(declare-fun b!704638 () Bool)

(declare-fun res!468616 () Bool)

(assert (=> b!704638 (=> (not res!468616) (not e!397653))))

(assert (=> b!704638 (= res!468616 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19632 a!3591)))))

(declare-fun b!704639 () Bool)

(declare-fun res!468620 () Bool)

(assert (=> b!704639 (=> (not res!468620) (not e!397653))))

(declare-fun noDuplicate!1133 (List!13343) Bool)

(assert (=> b!704639 (= res!468620 (noDuplicate!1133 acc!652))))

(declare-fun b!704640 () Bool)

(declare-fun res!468621 () Bool)

(assert (=> b!704640 (=> (not res!468621) (not e!397653))))

(assert (=> b!704640 (= res!468621 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!704641 () Bool)

(declare-fun res!468617 () Bool)

(assert (=> b!704641 (=> (not res!468617) (not e!397653))))

(assert (=> b!704641 (= res!468617 (not (contains!3886 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704642 () Bool)

(declare-fun res!468626 () Bool)

(assert (=> b!704642 (=> (not res!468626) (not e!397653))))

(assert (=> b!704642 (= res!468626 (noDuplicate!1133 newAcc!49))))

(assert (= (and start!62558 res!468623) b!704639))

(assert (= (and b!704639 res!468620) b!704642))

(assert (= (and b!704642 res!468626) b!704627))

(assert (= (and b!704627 res!468615) b!704636))

(assert (= (and b!704636 res!468614) b!704626))

(assert (= (and b!704626 res!468622) b!704635))

(assert (= (and b!704635 res!468609) b!704631))

(assert (= (and b!704631 res!468625) b!704628))

(assert (= (and b!704628 res!468612) b!704632))

(assert (= (and b!704632 res!468618) b!704637))

(assert (= (and b!704637 res!468611) b!704629))

(assert (= (and b!704629 res!468624) b!704634))

(assert (= (and b!704634 res!468613) b!704641))

(assert (= (and b!704641 res!468617) b!704638))

(assert (= (and b!704638 res!468616) b!704630))

(assert (= (and b!704630 res!468610) b!704640))

(assert (= (and b!704640 res!468621) b!704625))

(assert (= (and b!704625 res!468619) b!704633))

(declare-fun m!663075 () Bool)

(assert (=> b!704637 m!663075))

(declare-fun m!663077 () Bool)

(assert (=> b!704635 m!663077))

(declare-fun m!663079 () Bool)

(assert (=> start!62558 m!663079))

(declare-fun m!663081 () Bool)

(assert (=> b!704636 m!663081))

(declare-fun m!663083 () Bool)

(assert (=> b!704632 m!663083))

(declare-fun m!663085 () Bool)

(assert (=> b!704627 m!663085))

(declare-fun m!663087 () Bool)

(assert (=> b!704630 m!663087))

(assert (=> b!704630 m!663087))

(declare-fun m!663089 () Bool)

(assert (=> b!704630 m!663089))

(declare-fun m!663091 () Bool)

(assert (=> b!704641 m!663091))

(declare-fun m!663093 () Bool)

(assert (=> b!704633 m!663093))

(declare-fun m!663095 () Bool)

(assert (=> b!704634 m!663095))

(declare-fun m!663097 () Bool)

(assert (=> b!704642 m!663097))

(declare-fun m!663099 () Bool)

(assert (=> b!704629 m!663099))

(declare-fun m!663101 () Bool)

(assert (=> b!704626 m!663101))

(declare-fun m!663103 () Bool)

(assert (=> b!704631 m!663103))

(declare-fun m!663105 () Bool)

(assert (=> b!704639 m!663105))

(declare-fun m!663107 () Bool)

(assert (=> b!704628 m!663107))

(declare-fun m!663109 () Bool)

(assert (=> b!704625 m!663109))

(check-sat (not b!704635) (not b!704634) (not b!704636) (not b!704628) (not b!704631) (not start!62558) (not b!704632) (not b!704633) (not b!704637) (not b!704630) (not b!704627) (not b!704641) (not b!704629) (not b!704625) (not b!704642) (not b!704626) (not b!704639))
(check-sat)
