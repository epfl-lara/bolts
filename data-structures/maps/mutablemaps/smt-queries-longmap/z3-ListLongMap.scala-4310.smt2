; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59906 () Bool)

(assert start!59906)

(declare-fun b!662615 () Bool)

(declare-datatypes ((Unit!23018 0))(
  ( (Unit!23019) )
))
(declare-fun e!380328 () Unit!23018)

(declare-fun Unit!23020 () Unit!23018)

(assert (=> b!662615 (= e!380328 Unit!23020)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!309058 () Unit!23018)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-datatypes ((array!38909 0))(
  ( (array!38910 (arr!18643 (Array (_ BitVec 32) (_ BitVec 64))) (size!19007 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38909)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38909 (_ BitVec 64) (_ BitVec 32)) Unit!23018)

(assert (=> b!662615 (= lt!309058 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!662615 false))

(declare-fun b!662616 () Bool)

(declare-fun e!380329 () Bool)

(assert (=> b!662616 (= e!380329 true)))

(declare-datatypes ((List!12737 0))(
  ( (Nil!12734) (Cons!12733 (h!13778 (_ BitVec 64)) (t!18973 List!12737)) )
))
(declare-fun lt!309060 () List!12737)

(declare-fun lt!309059 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38909 (_ BitVec 32) List!12737) Bool)

(assert (=> b!662616 (= lt!309059 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!309060))))

(declare-fun lt!309062 () Unit!23018)

(declare-fun acc!681 () List!12737)

(declare-fun noDuplicateSubseq!18 (List!12737 List!12737) Unit!23018)

(assert (=> b!662616 (= lt!309062 (noDuplicateSubseq!18 acc!681 lt!309060))))

(declare-fun b!662617 () Bool)

(declare-fun res!430763 () Bool)

(assert (=> b!662617 (=> res!430763 e!380329)))

(declare-fun contains!3280 (List!12737 (_ BitVec 64)) Bool)

(assert (=> b!662617 (= res!430763 (contains!3280 lt!309060 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662618 () Bool)

(declare-fun res!430772 () Bool)

(declare-fun e!380333 () Bool)

(assert (=> b!662618 (=> (not res!430772) (not e!380333))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!662618 (= res!430772 (validKeyInArray!0 k0!2843))))

(declare-fun b!662619 () Bool)

(declare-fun e!380335 () Bool)

(assert (=> b!662619 (= e!380335 (not (contains!3280 acc!681 k0!2843)))))

(declare-fun b!662620 () Bool)

(declare-fun Unit!23021 () Unit!23018)

(assert (=> b!662620 (= e!380328 Unit!23021)))

(declare-fun b!662621 () Bool)

(declare-fun e!380332 () Bool)

(assert (=> b!662621 (= e!380333 (not e!380332))))

(declare-fun res!430761 () Bool)

(assert (=> b!662621 (=> res!430761 e!380332)))

(assert (=> b!662621 (= res!430761 (not (validKeyInArray!0 (select (arr!18643 a!3626) from!3004))))))

(declare-fun lt!309063 () Unit!23018)

(assert (=> b!662621 (= lt!309063 e!380328)))

(declare-fun c!76298 () Bool)

(declare-fun arrayContainsKey!0 (array!38909 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!662621 (= c!76298 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!662621 (arrayContainsKey!0 (array!38910 (store (arr!18643 a!3626) i!1382 k0!2843) (size!19007 a!3626)) k0!2843 from!3004)))

(declare-fun b!662623 () Bool)

(declare-fun res!430755 () Bool)

(assert (=> b!662623 (=> (not res!430755) (not e!380333))))

(assert (=> b!662623 (= res!430755 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12734))))

(declare-fun b!662624 () Bool)

(declare-fun res!430760 () Bool)

(assert (=> b!662624 (=> (not res!430760) (not e!380333))))

(declare-fun e!380334 () Bool)

(assert (=> b!662624 (= res!430760 e!380334)))

(declare-fun res!430769 () Bool)

(assert (=> b!662624 (=> res!430769 e!380334)))

(declare-fun e!380331 () Bool)

(assert (=> b!662624 (= res!430769 e!380331)))

(declare-fun res!430758 () Bool)

(assert (=> b!662624 (=> (not res!430758) (not e!380331))))

(assert (=> b!662624 (= res!430758 (bvsgt from!3004 i!1382))))

(declare-fun b!662625 () Bool)

(assert (=> b!662625 (= e!380331 (contains!3280 acc!681 k0!2843))))

(declare-fun b!662626 () Bool)

(declare-fun res!430762 () Bool)

(assert (=> b!662626 (=> res!430762 e!380329)))

(declare-fun subseq!18 (List!12737 List!12737) Bool)

(assert (=> b!662626 (= res!430762 (not (subseq!18 acc!681 lt!309060)))))

(declare-fun b!662627 () Bool)

(declare-fun res!430759 () Bool)

(assert (=> b!662627 (=> res!430759 e!380329)))

(declare-fun noDuplicate!527 (List!12737) Bool)

(assert (=> b!662627 (= res!430759 (not (noDuplicate!527 lt!309060)))))

(declare-fun b!662628 () Bool)

(declare-fun res!430765 () Bool)

(assert (=> b!662628 (=> (not res!430765) (not e!380333))))

(assert (=> b!662628 (= res!430765 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!662629 () Bool)

(declare-fun res!430756 () Bool)

(assert (=> b!662629 (=> res!430756 e!380329)))

(assert (=> b!662629 (= res!430756 (contains!3280 lt!309060 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662630 () Bool)

(declare-fun res!430768 () Bool)

(assert (=> b!662630 (=> (not res!430768) (not e!380333))))

(assert (=> b!662630 (= res!430768 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19007 a!3626))))))

(declare-fun b!662631 () Bool)

(declare-fun res!430757 () Bool)

(assert (=> b!662631 (=> (not res!430757) (not e!380333))))

(assert (=> b!662631 (= res!430757 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19007 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!662632 () Bool)

(declare-fun res!430770 () Bool)

(assert (=> b!662632 (=> (not res!430770) (not e!380333))))

(assert (=> b!662632 (= res!430770 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun res!430753 () Bool)

(assert (=> start!59906 (=> (not res!430753) (not e!380333))))

(assert (=> start!59906 (= res!430753 (and (bvslt (size!19007 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19007 a!3626))))))

(assert (=> start!59906 e!380333))

(assert (=> start!59906 true))

(declare-fun array_inv!14417 (array!38909) Bool)

(assert (=> start!59906 (array_inv!14417 a!3626)))

(declare-fun b!662622 () Bool)

(declare-fun res!430767 () Bool)

(assert (=> b!662622 (=> (not res!430767) (not e!380333))))

(assert (=> b!662622 (= res!430767 (not (contains!3280 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662633 () Bool)

(assert (=> b!662633 (= e!380334 e!380335)))

(declare-fun res!430766 () Bool)

(assert (=> b!662633 (=> (not res!430766) (not e!380335))))

(assert (=> b!662633 (= res!430766 (bvsle from!3004 i!1382))))

(declare-fun b!662634 () Bool)

(declare-fun res!430771 () Bool)

(assert (=> b!662634 (=> (not res!430771) (not e!380333))))

(assert (=> b!662634 (= res!430771 (not (contains!3280 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662635 () Bool)

(declare-fun res!430754 () Bool)

(assert (=> b!662635 (=> (not res!430754) (not e!380333))))

(assert (=> b!662635 (= res!430754 (noDuplicate!527 acc!681))))

(declare-fun b!662636 () Bool)

(assert (=> b!662636 (= e!380332 e!380329)))

(declare-fun res!430764 () Bool)

(assert (=> b!662636 (=> res!430764 e!380329)))

(assert (=> b!662636 (= res!430764 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!149 (List!12737 (_ BitVec 64)) List!12737)

(assert (=> b!662636 (= lt!309060 ($colon$colon!149 acc!681 (select (arr!18643 a!3626) from!3004)))))

(assert (=> b!662636 (subseq!18 acc!681 acc!681)))

(declare-fun lt!309061 () Unit!23018)

(declare-fun lemmaListSubSeqRefl!0 (List!12737) Unit!23018)

(assert (=> b!662636 (= lt!309061 (lemmaListSubSeqRefl!0 acc!681))))

(assert (= (and start!59906 res!430753) b!662635))

(assert (= (and b!662635 res!430754) b!662622))

(assert (= (and b!662622 res!430767) b!662634))

(assert (= (and b!662634 res!430771) b!662624))

(assert (= (and b!662624 res!430758) b!662625))

(assert (= (and b!662624 (not res!430769)) b!662633))

(assert (= (and b!662633 res!430766) b!662619))

(assert (= (and b!662624 res!430760) b!662623))

(assert (= (and b!662623 res!430755) b!662628))

(assert (= (and b!662628 res!430765) b!662630))

(assert (= (and b!662630 res!430768) b!662618))

(assert (= (and b!662618 res!430772) b!662632))

(assert (= (and b!662632 res!430770) b!662631))

(assert (= (and b!662631 res!430757) b!662621))

(assert (= (and b!662621 c!76298) b!662615))

(assert (= (and b!662621 (not c!76298)) b!662620))

(assert (= (and b!662621 (not res!430761)) b!662636))

(assert (= (and b!662636 (not res!430764)) b!662627))

(assert (= (and b!662627 (not res!430759)) b!662617))

(assert (= (and b!662617 (not res!430763)) b!662629))

(assert (= (and b!662629 (not res!430756)) b!662626))

(assert (= (and b!662626 (not res!430762)) b!662616))

(declare-fun m!634419 () Bool)

(assert (=> b!662636 m!634419))

(assert (=> b!662636 m!634419))

(declare-fun m!634421 () Bool)

(assert (=> b!662636 m!634421))

(declare-fun m!634423 () Bool)

(assert (=> b!662636 m!634423))

(declare-fun m!634425 () Bool)

(assert (=> b!662636 m!634425))

(declare-fun m!634427 () Bool)

(assert (=> b!662625 m!634427))

(declare-fun m!634429 () Bool)

(assert (=> b!662628 m!634429))

(declare-fun m!634431 () Bool)

(assert (=> b!662634 m!634431))

(declare-fun m!634433 () Bool)

(assert (=> b!662635 m!634433))

(declare-fun m!634435 () Bool)

(assert (=> b!662623 m!634435))

(assert (=> b!662619 m!634427))

(declare-fun m!634437 () Bool)

(assert (=> b!662615 m!634437))

(declare-fun m!634439 () Bool)

(assert (=> b!662627 m!634439))

(assert (=> b!662621 m!634419))

(declare-fun m!634441 () Bool)

(assert (=> b!662621 m!634441))

(declare-fun m!634443 () Bool)

(assert (=> b!662621 m!634443))

(assert (=> b!662621 m!634419))

(declare-fun m!634445 () Bool)

(assert (=> b!662621 m!634445))

(declare-fun m!634447 () Bool)

(assert (=> b!662621 m!634447))

(declare-fun m!634449 () Bool)

(assert (=> b!662632 m!634449))

(declare-fun m!634451 () Bool)

(assert (=> b!662616 m!634451))

(declare-fun m!634453 () Bool)

(assert (=> b!662616 m!634453))

(declare-fun m!634455 () Bool)

(assert (=> b!662622 m!634455))

(declare-fun m!634457 () Bool)

(assert (=> start!59906 m!634457))

(declare-fun m!634459 () Bool)

(assert (=> b!662629 m!634459))

(declare-fun m!634461 () Bool)

(assert (=> b!662626 m!634461))

(declare-fun m!634463 () Bool)

(assert (=> b!662617 m!634463))

(declare-fun m!634465 () Bool)

(assert (=> b!662618 m!634465))

(check-sat (not b!662619) (not b!662634) (not b!662635) (not b!662632) (not b!662616) (not b!662617) (not b!662618) (not b!662623) (not start!59906) (not b!662615) (not b!662636) (not b!662621) (not b!662627) (not b!662629) (not b!662626) (not b!662622) (not b!662625) (not b!662628))
(check-sat)
