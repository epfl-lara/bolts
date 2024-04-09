; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59876 () Bool)

(assert start!59876)

(declare-fun b!661625 () Bool)

(declare-fun res!429872 () Bool)

(declare-fun e!379970 () Bool)

(assert (=> b!661625 (=> (not res!429872) (not e!379970))))

(declare-datatypes ((List!12722 0))(
  ( (Nil!12719) (Cons!12718 (h!13763 (_ BitVec 64)) (t!18958 List!12722)) )
))
(declare-fun acc!681 () List!12722)

(declare-fun contains!3265 (List!12722 (_ BitVec 64)) Bool)

(assert (=> b!661625 (= res!429872 (not (contains!3265 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661627 () Bool)

(declare-fun e!379973 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!661627 (= e!379973 (not (contains!3265 acc!681 k0!2843)))))

(declare-fun b!661628 () Bool)

(declare-fun res!429853 () Bool)

(assert (=> b!661628 (=> (not res!429853) (not e!379970))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!661628 (= res!429853 (validKeyInArray!0 k0!2843))))

(declare-fun b!661629 () Bool)

(declare-fun res!429864 () Bool)

(declare-fun e!379971 () Bool)

(assert (=> b!661629 (=> res!429864 e!379971)))

(declare-fun lt!308791 () List!12722)

(declare-fun subseq!3 (List!12722 List!12722) Bool)

(assert (=> b!661629 (= res!429864 (not (subseq!3 acc!681 lt!308791)))))

(declare-fun b!661630 () Bool)

(assert (=> b!661630 (= e!379971 true)))

(declare-datatypes ((array!38879 0))(
  ( (array!38880 (arr!18628 (Array (_ BitVec 32) (_ BitVec 64))) (size!18992 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38879)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!308793 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38879 (_ BitVec 32) List!12722) Bool)

(assert (=> b!661630 (= lt!308793 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!308791))))

(declare-datatypes ((Unit!22958 0))(
  ( (Unit!22959) )
))
(declare-fun lt!308789 () Unit!22958)

(declare-fun noDuplicateSubseq!3 (List!12722 List!12722) Unit!22958)

(assert (=> b!661630 (= lt!308789 (noDuplicateSubseq!3 acc!681 lt!308791))))

(declare-fun b!661631 () Bool)

(declare-fun e!379972 () Unit!22958)

(declare-fun Unit!22960 () Unit!22958)

(assert (=> b!661631 (= e!379972 Unit!22960)))

(declare-fun lt!308792 () Unit!22958)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38879 (_ BitVec 64) (_ BitVec 32)) Unit!22958)

(assert (=> b!661631 (= lt!308792 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!661631 false))

(declare-fun b!661632 () Bool)

(declare-fun res!429871 () Bool)

(assert (=> b!661632 (=> (not res!429871) (not e!379970))))

(declare-fun e!379969 () Bool)

(assert (=> b!661632 (= res!429871 e!379969)))

(declare-fun res!429862 () Bool)

(assert (=> b!661632 (=> res!429862 e!379969)))

(declare-fun e!379975 () Bool)

(assert (=> b!661632 (= res!429862 e!379975)))

(declare-fun res!429856 () Bool)

(assert (=> b!661632 (=> (not res!429856) (not e!379975))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!661632 (= res!429856 (bvsgt from!3004 i!1382))))

(declare-fun b!661633 () Bool)

(declare-fun res!429868 () Bool)

(assert (=> b!661633 (=> res!429868 e!379971)))

(assert (=> b!661633 (= res!429868 (contains!3265 lt!308791 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!661634 () Bool)

(assert (=> b!661634 (= e!379969 e!379973)))

(declare-fun res!429859 () Bool)

(assert (=> b!661634 (=> (not res!429859) (not e!379973))))

(assert (=> b!661634 (= res!429859 (bvsle from!3004 i!1382))))

(declare-fun b!661635 () Bool)

(declare-fun res!429867 () Bool)

(assert (=> b!661635 (=> (not res!429867) (not e!379970))))

(assert (=> b!661635 (= res!429867 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12719))))

(declare-fun b!661636 () Bool)

(declare-fun Unit!22961 () Unit!22958)

(assert (=> b!661636 (= e!379972 Unit!22961)))

(declare-fun b!661637 () Bool)

(declare-fun res!429854 () Bool)

(assert (=> b!661637 (=> (not res!429854) (not e!379970))))

(declare-fun noDuplicate!512 (List!12722) Bool)

(assert (=> b!661637 (= res!429854 (noDuplicate!512 acc!681))))

(declare-fun b!661638 () Bool)

(declare-fun res!429865 () Bool)

(assert (=> b!661638 (=> (not res!429865) (not e!379970))))

(assert (=> b!661638 (= res!429865 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18992 a!3626))))))

(declare-fun b!661626 () Bool)

(declare-fun e!379974 () Bool)

(assert (=> b!661626 (= e!379974 e!379971)))

(declare-fun res!429863 () Bool)

(assert (=> b!661626 (=> res!429863 e!379971)))

(assert (=> b!661626 (= res!429863 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!134 (List!12722 (_ BitVec 64)) List!12722)

(assert (=> b!661626 (= lt!308791 ($colon$colon!134 acc!681 (select (arr!18628 a!3626) from!3004)))))

(assert (=> b!661626 (subseq!3 acc!681 acc!681)))

(declare-fun lt!308790 () Unit!22958)

(declare-fun lemmaListSubSeqRefl!0 (List!12722) Unit!22958)

(assert (=> b!661626 (= lt!308790 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun res!429866 () Bool)

(assert (=> start!59876 (=> (not res!429866) (not e!379970))))

(assert (=> start!59876 (= res!429866 (and (bvslt (size!18992 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18992 a!3626))))))

(assert (=> start!59876 e!379970))

(assert (=> start!59876 true))

(declare-fun array_inv!14402 (array!38879) Bool)

(assert (=> start!59876 (array_inv!14402 a!3626)))

(declare-fun b!661639 () Bool)

(assert (=> b!661639 (= e!379970 (not e!379974))))

(declare-fun res!429870 () Bool)

(assert (=> b!661639 (=> res!429870 e!379974)))

(assert (=> b!661639 (= res!429870 (not (validKeyInArray!0 (select (arr!18628 a!3626) from!3004))))))

(declare-fun lt!308788 () Unit!22958)

(assert (=> b!661639 (= lt!308788 e!379972)))

(declare-fun c!76253 () Bool)

(declare-fun arrayContainsKey!0 (array!38879 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661639 (= c!76253 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!661639 (arrayContainsKey!0 (array!38880 (store (arr!18628 a!3626) i!1382 k0!2843) (size!18992 a!3626)) k0!2843 from!3004)))

(declare-fun b!661640 () Bool)

(declare-fun res!429861 () Bool)

(assert (=> b!661640 (=> (not res!429861) (not e!379970))))

(assert (=> b!661640 (= res!429861 (not (contains!3265 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661641 () Bool)

(declare-fun res!429860 () Bool)

(assert (=> b!661641 (=> res!429860 e!379971)))

(assert (=> b!661641 (= res!429860 (contains!3265 lt!308791 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!661642 () Bool)

(declare-fun res!429858 () Bool)

(assert (=> b!661642 (=> (not res!429858) (not e!379970))))

(assert (=> b!661642 (= res!429858 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!661643 () Bool)

(declare-fun res!429869 () Bool)

(assert (=> b!661643 (=> res!429869 e!379971)))

(assert (=> b!661643 (= res!429869 (not (noDuplicate!512 lt!308791)))))

(declare-fun b!661644 () Bool)

(assert (=> b!661644 (= e!379975 (contains!3265 acc!681 k0!2843))))

(declare-fun b!661645 () Bool)

(declare-fun res!429855 () Bool)

(assert (=> b!661645 (=> (not res!429855) (not e!379970))))

(assert (=> b!661645 (= res!429855 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!661646 () Bool)

(declare-fun res!429857 () Bool)

(assert (=> b!661646 (=> (not res!429857) (not e!379970))))

(assert (=> b!661646 (= res!429857 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18992 a!3626)) (= from!3004 i!1382)))))

(assert (= (and start!59876 res!429866) b!661637))

(assert (= (and b!661637 res!429854) b!661625))

(assert (= (and b!661625 res!429872) b!661640))

(assert (= (and b!661640 res!429861) b!661632))

(assert (= (and b!661632 res!429856) b!661644))

(assert (= (and b!661632 (not res!429862)) b!661634))

(assert (= (and b!661634 res!429859) b!661627))

(assert (= (and b!661632 res!429871) b!661635))

(assert (= (and b!661635 res!429867) b!661642))

(assert (= (and b!661642 res!429858) b!661638))

(assert (= (and b!661638 res!429865) b!661628))

(assert (= (and b!661628 res!429853) b!661645))

(assert (= (and b!661645 res!429855) b!661646))

(assert (= (and b!661646 res!429857) b!661639))

(assert (= (and b!661639 c!76253) b!661631))

(assert (= (and b!661639 (not c!76253)) b!661636))

(assert (= (and b!661639 (not res!429870)) b!661626))

(assert (= (and b!661626 (not res!429863)) b!661643))

(assert (= (and b!661643 (not res!429869)) b!661633))

(assert (= (and b!661633 (not res!429868)) b!661641))

(assert (= (and b!661641 (not res!429860)) b!661629))

(assert (= (and b!661629 (not res!429864)) b!661630))

(declare-fun m!633699 () Bool)

(assert (=> b!661637 m!633699))

(declare-fun m!633701 () Bool)

(assert (=> b!661645 m!633701))

(declare-fun m!633703 () Bool)

(assert (=> b!661627 m!633703))

(declare-fun m!633705 () Bool)

(assert (=> b!661633 m!633705))

(declare-fun m!633707 () Bool)

(assert (=> b!661639 m!633707))

(declare-fun m!633709 () Bool)

(assert (=> b!661639 m!633709))

(declare-fun m!633711 () Bool)

(assert (=> b!661639 m!633711))

(assert (=> b!661639 m!633707))

(declare-fun m!633713 () Bool)

(assert (=> b!661639 m!633713))

(declare-fun m!633715 () Bool)

(assert (=> b!661639 m!633715))

(declare-fun m!633717 () Bool)

(assert (=> start!59876 m!633717))

(declare-fun m!633719 () Bool)

(assert (=> b!661641 m!633719))

(declare-fun m!633721 () Bool)

(assert (=> b!661630 m!633721))

(declare-fun m!633723 () Bool)

(assert (=> b!661630 m!633723))

(declare-fun m!633725 () Bool)

(assert (=> b!661628 m!633725))

(declare-fun m!633727 () Bool)

(assert (=> b!661642 m!633727))

(declare-fun m!633729 () Bool)

(assert (=> b!661625 m!633729))

(declare-fun m!633731 () Bool)

(assert (=> b!661643 m!633731))

(assert (=> b!661626 m!633707))

(assert (=> b!661626 m!633707))

(declare-fun m!633733 () Bool)

(assert (=> b!661626 m!633733))

(declare-fun m!633735 () Bool)

(assert (=> b!661626 m!633735))

(declare-fun m!633737 () Bool)

(assert (=> b!661626 m!633737))

(declare-fun m!633739 () Bool)

(assert (=> b!661631 m!633739))

(declare-fun m!633741 () Bool)

(assert (=> b!661635 m!633741))

(declare-fun m!633743 () Bool)

(assert (=> b!661629 m!633743))

(assert (=> b!661644 m!633703))

(declare-fun m!633745 () Bool)

(assert (=> b!661640 m!633745))

(check-sat (not b!661626) (not b!661635) (not b!661640) (not b!661637) (not b!661633) (not b!661644) (not b!661625) (not b!661642) (not b!661628) (not b!661630) (not b!661643) (not b!661645) (not b!661639) (not start!59876) (not b!661641) (not b!661629) (not b!661631) (not b!661627))
(check-sat)
