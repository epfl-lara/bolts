; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59816 () Bool)

(assert start!59816)

(declare-fun b!660435 () Bool)

(declare-fun e!379506 () Bool)

(assert (=> b!660435 (= e!379506 false)))

(declare-datatypes ((array!38819 0))(
  ( (array!38820 (arr!18598 (Array (_ BitVec 32) (_ BitVec 64))) (size!18962 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38819)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12692 0))(
  ( (Nil!12689) (Cons!12688 (h!13733 (_ BitVec 64)) (t!18928 List!12692)) )
))
(declare-fun acc!681 () List!12692)

(declare-fun lt!308736 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38819 (_ BitVec 32) List!12692) Bool)

(assert (=> b!660435 (= lt!308736 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660436 () Bool)

(declare-fun res!428678 () Bool)

(assert (=> b!660436 (=> (not res!428678) (not e!379506))))

(declare-fun noDuplicate!482 (List!12692) Bool)

(assert (=> b!660436 (= res!428678 (noDuplicate!482 acc!681))))

(declare-fun b!660437 () Bool)

(declare-fun res!428677 () Bool)

(assert (=> b!660437 (=> (not res!428677) (not e!379506))))

(assert (=> b!660437 (= res!428677 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12689))))

(declare-fun b!660438 () Bool)

(declare-fun res!428673 () Bool)

(assert (=> b!660438 (=> (not res!428673) (not e!379506))))

(declare-fun e!379505 () Bool)

(assert (=> b!660438 (= res!428673 e!379505)))

(declare-fun res!428676 () Bool)

(assert (=> b!660438 (=> res!428676 e!379505)))

(declare-fun e!379507 () Bool)

(assert (=> b!660438 (= res!428676 e!379507)))

(declare-fun res!428675 () Bool)

(assert (=> b!660438 (=> (not res!428675) (not e!379507))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660438 (= res!428675 (bvsgt from!3004 i!1382))))

(declare-fun b!660439 () Bool)

(declare-fun e!379503 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3235 (List!12692 (_ BitVec 64)) Bool)

(assert (=> b!660439 (= e!379503 (not (contains!3235 acc!681 k0!2843)))))

(declare-fun res!428679 () Bool)

(assert (=> start!59816 (=> (not res!428679) (not e!379506))))

(assert (=> start!59816 (= res!428679 (and (bvslt (size!18962 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18962 a!3626))))))

(assert (=> start!59816 e!379506))

(assert (=> start!59816 true))

(declare-fun array_inv!14372 (array!38819) Bool)

(assert (=> start!59816 (array_inv!14372 a!3626)))

(declare-fun b!660440 () Bool)

(assert (=> b!660440 (= e!379507 (contains!3235 acc!681 k0!2843))))

(declare-fun b!660441 () Bool)

(declare-fun res!428681 () Bool)

(assert (=> b!660441 (=> (not res!428681) (not e!379506))))

(assert (=> b!660441 (= res!428681 (not (contains!3235 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660442 () Bool)

(declare-fun res!428680 () Bool)

(assert (=> b!660442 (=> (not res!428680) (not e!379506))))

(assert (=> b!660442 (= res!428680 (not (contains!3235 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660443 () Bool)

(assert (=> b!660443 (= e!379505 e!379503)))

(declare-fun res!428674 () Bool)

(assert (=> b!660443 (=> (not res!428674) (not e!379503))))

(assert (=> b!660443 (= res!428674 (bvsle from!3004 i!1382))))

(assert (= (and start!59816 res!428679) b!660436))

(assert (= (and b!660436 res!428678) b!660441))

(assert (= (and b!660441 res!428681) b!660442))

(assert (= (and b!660442 res!428680) b!660438))

(assert (= (and b!660438 res!428675) b!660440))

(assert (= (and b!660438 (not res!428676)) b!660443))

(assert (= (and b!660443 res!428674) b!660439))

(assert (= (and b!660438 res!428673) b!660437))

(assert (= (and b!660437 res!428677) b!660435))

(declare-fun m!633077 () Bool)

(assert (=> b!660440 m!633077))

(declare-fun m!633079 () Bool)

(assert (=> start!59816 m!633079))

(declare-fun m!633081 () Bool)

(assert (=> b!660441 m!633081))

(declare-fun m!633083 () Bool)

(assert (=> b!660437 m!633083))

(declare-fun m!633085 () Bool)

(assert (=> b!660436 m!633085))

(assert (=> b!660439 m!633077))

(declare-fun m!633087 () Bool)

(assert (=> b!660435 m!633087))

(declare-fun m!633089 () Bool)

(assert (=> b!660442 m!633089))

(check-sat (not b!660437) (not b!660436) (not b!660435) (not b!660441) (not b!660442) (not b!660439) (not start!59816) (not b!660440))
