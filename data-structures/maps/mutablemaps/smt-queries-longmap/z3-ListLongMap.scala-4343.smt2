; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60104 () Bool)

(assert start!60104)

(declare-fun b!669664 () Bool)

(declare-fun e!382974 () Bool)

(declare-datatypes ((List!12836 0))(
  ( (Nil!12833) (Cons!12832 (h!13877 (_ BitVec 64)) (t!19072 List!12836)) )
))
(declare-fun acc!681 () List!12836)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3379 (List!12836 (_ BitVec 64)) Bool)

(assert (=> b!669664 (= e!382974 (contains!3379 acc!681 k0!2843))))

(declare-fun b!669665 () Bool)

(declare-fun res!436673 () Bool)

(declare-fun e!382977 () Bool)

(assert (=> b!669665 (=> (not res!436673) (not e!382977))))

(declare-fun e!382976 () Bool)

(assert (=> b!669665 (= res!436673 e!382976)))

(declare-fun res!436678 () Bool)

(assert (=> b!669665 (=> res!436678 e!382976)))

(assert (=> b!669665 (= res!436678 e!382974)))

(declare-fun res!436668 () Bool)

(assert (=> b!669665 (=> (not res!436668) (not e!382974))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!669665 (= res!436668 (bvsgt from!3004 i!1382))))

(declare-fun b!669666 () Bool)

(declare-fun res!436676 () Bool)

(assert (=> b!669666 (=> (not res!436676) (not e!382977))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!669666 (= res!436676 (validKeyInArray!0 k0!2843))))

(declare-fun b!669667 () Bool)

(declare-datatypes ((Unit!23505 0))(
  ( (Unit!23506) )
))
(declare-fun e!382975 () Unit!23505)

(declare-fun Unit!23507 () Unit!23505)

(assert (=> b!669667 (= e!382975 Unit!23507)))

(declare-fun b!669668 () Bool)

(declare-fun e!382980 () Unit!23505)

(declare-fun Unit!23508 () Unit!23505)

(assert (=> b!669668 (= e!382980 Unit!23508)))

(declare-fun b!669669 () Bool)

(declare-fun e!382978 () Bool)

(declare-fun e!382979 () Bool)

(assert (=> b!669669 (= e!382978 e!382979)))

(declare-fun res!436659 () Bool)

(assert (=> b!669669 (=> res!436659 e!382979)))

(assert (=> b!669669 (= res!436659 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!436667 () Bool)

(assert (=> start!60104 (=> (not res!436667) (not e!382977))))

(declare-datatypes ((array!39107 0))(
  ( (array!39108 (arr!18742 (Array (_ BitVec 32) (_ BitVec 64))) (size!19106 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39107)

(assert (=> start!60104 (= res!436667 (and (bvslt (size!19106 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19106 a!3626))))))

(assert (=> start!60104 e!382977))

(assert (=> start!60104 true))

(declare-fun array_inv!14516 (array!39107) Bool)

(assert (=> start!60104 (array_inv!14516 a!3626)))

(declare-fun b!669670 () Bool)

(declare-fun res!436665 () Bool)

(assert (=> b!669670 (=> (not res!436665) (not e!382977))))

(assert (=> b!669670 (= res!436665 (not (contains!3379 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669671 () Bool)

(declare-fun res!436670 () Bool)

(assert (=> b!669671 (=> (not res!436670) (not e!382977))))

(assert (=> b!669671 (= res!436670 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19106 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!669672 () Bool)

(declare-fun res!436662 () Bool)

(assert (=> b!669672 (=> (not res!436662) (not e!382977))))

(declare-fun noDuplicate!626 (List!12836) Bool)

(assert (=> b!669672 (= res!436662 (noDuplicate!626 acc!681))))

(declare-fun b!669673 () Bool)

(declare-fun res!436671 () Bool)

(declare-fun e!382973 () Bool)

(assert (=> b!669673 (=> res!436671 e!382973)))

(assert (=> b!669673 (= res!436671 e!382978)))

(declare-fun res!436679 () Bool)

(assert (=> b!669673 (=> (not res!436679) (not e!382978))))

(declare-fun e!382971 () Bool)

(assert (=> b!669673 (= res!436679 e!382971)))

(declare-fun res!436674 () Bool)

(assert (=> b!669673 (=> res!436674 e!382971)))

(assert (=> b!669673 (= res!436674 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669674 () Bool)

(declare-fun lt!311748 () List!12836)

(assert (=> b!669674 (= e!382971 (not (contains!3379 lt!311748 k0!2843)))))

(declare-fun b!669675 () Bool)

(declare-fun res!436663 () Bool)

(assert (=> b!669675 (=> (not res!436663) (not e!382977))))

(declare-fun arrayNoDuplicates!0 (array!39107 (_ BitVec 32) List!12836) Bool)

(assert (=> b!669675 (= res!436663 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!669676 () Bool)

(declare-fun res!436664 () Bool)

(assert (=> b!669676 (=> (not res!436664) (not e!382977))))

(assert (=> b!669676 (= res!436664 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19106 a!3626))))))

(declare-fun b!669677 () Bool)

(declare-fun res!436669 () Bool)

(assert (=> b!669677 (=> (not res!436669) (not e!382977))))

(assert (=> b!669677 (= res!436669 (not (contains!3379 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669678 () Bool)

(declare-fun res!436672 () Bool)

(assert (=> b!669678 (=> (not res!436672) (not e!382977))))

(declare-fun arrayContainsKey!0 (array!39107 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!669678 (= res!436672 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!669679 () Bool)

(assert (=> b!669679 (= e!382973 (bvsle from!3004 (size!19106 a!3626)))))

(declare-fun lt!311743 () array!39107)

(assert (=> b!669679 (arrayNoDuplicates!0 lt!311743 (bvadd #b00000000000000000000000000000001 from!3004) lt!311748)))

(declare-fun lt!311746 () Unit!23505)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39107 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12836) Unit!23505)

(assert (=> b!669679 (= lt!311746 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!311748))))

(declare-fun b!669680 () Bool)

(declare-fun lt!311744 () Unit!23505)

(assert (=> b!669680 (= e!382980 lt!311744)))

(declare-fun lt!311738 () Unit!23505)

(declare-fun lemmaListSubSeqRefl!0 (List!12836) Unit!23505)

(assert (=> b!669680 (= lt!311738 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!117 (List!12836 List!12836) Bool)

(assert (=> b!669680 (subseq!117 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39107 List!12836 List!12836 (_ BitVec 32)) Unit!23505)

(declare-fun $colon$colon!248 (List!12836 (_ BitVec 64)) List!12836)

(assert (=> b!669680 (= lt!311744 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!248 acc!681 (select (arr!18742 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669680 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!669681 () Bool)

(assert (=> b!669681 (= e!382979 (contains!3379 lt!311748 k0!2843))))

(declare-fun b!669682 () Bool)

(declare-fun res!436677 () Bool)

(assert (=> b!669682 (=> res!436677 e!382973)))

(assert (=> b!669682 (= res!436677 (contains!3379 lt!311748 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669683 () Bool)

(declare-fun res!436661 () Bool)

(assert (=> b!669683 (=> res!436661 e!382973)))

(assert (=> b!669683 (= res!436661 (contains!3379 lt!311748 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669684 () Bool)

(declare-fun e!382981 () Bool)

(assert (=> b!669684 (= e!382981 (not (contains!3379 acc!681 k0!2843)))))

(declare-fun b!669685 () Bool)

(declare-fun res!436675 () Bool)

(assert (=> b!669685 (=> res!436675 e!382973)))

(assert (=> b!669685 (= res!436675 (not (noDuplicate!626 lt!311748)))))

(declare-fun b!669686 () Bool)

(assert (=> b!669686 (= e!382976 e!382981)))

(declare-fun res!436666 () Bool)

(assert (=> b!669686 (=> (not res!436666) (not e!382981))))

(assert (=> b!669686 (= res!436666 (bvsle from!3004 i!1382))))

(declare-fun b!669687 () Bool)

(assert (=> b!669687 (= e!382977 (not e!382973))))

(declare-fun res!436658 () Bool)

(assert (=> b!669687 (=> res!436658 e!382973)))

(assert (=> b!669687 (= res!436658 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!669687 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311748)))

(declare-fun lt!311740 () Unit!23505)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39107 (_ BitVec 64) (_ BitVec 32) List!12836 List!12836) Unit!23505)

(assert (=> b!669687 (= lt!311740 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311748))))

(declare-fun -!115 (List!12836 (_ BitVec 64)) List!12836)

(assert (=> b!669687 (= (-!115 lt!311748 k0!2843) acc!681)))

(assert (=> b!669687 (= lt!311748 ($colon$colon!248 acc!681 k0!2843))))

(declare-fun lt!311745 () Unit!23505)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12836) Unit!23505)

(assert (=> b!669687 (= lt!311745 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!669687 (subseq!117 acc!681 acc!681)))

(declare-fun lt!311742 () Unit!23505)

(assert (=> b!669687 (= lt!311742 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!669687 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311739 () Unit!23505)

(assert (=> b!669687 (= lt!311739 e!382980)))

(declare-fun c!76871 () Bool)

(assert (=> b!669687 (= c!76871 (validKeyInArray!0 (select (arr!18742 a!3626) from!3004)))))

(declare-fun lt!311747 () Unit!23505)

(assert (=> b!669687 (= lt!311747 e!382975)))

(declare-fun c!76870 () Bool)

(assert (=> b!669687 (= c!76870 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669687 (arrayContainsKey!0 lt!311743 k0!2843 from!3004)))

(assert (=> b!669687 (= lt!311743 (array!39108 (store (arr!18742 a!3626) i!1382 k0!2843) (size!19106 a!3626)))))

(declare-fun b!669688 () Bool)

(declare-fun Unit!23509 () Unit!23505)

(assert (=> b!669688 (= e!382975 Unit!23509)))

(declare-fun lt!311741 () Unit!23505)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39107 (_ BitVec 64) (_ BitVec 32)) Unit!23505)

(assert (=> b!669688 (= lt!311741 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!669688 false))

(declare-fun b!669689 () Bool)

(declare-fun res!436660 () Bool)

(assert (=> b!669689 (=> (not res!436660) (not e!382977))))

(assert (=> b!669689 (= res!436660 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12833))))

(assert (= (and start!60104 res!436667) b!669672))

(assert (= (and b!669672 res!436662) b!669670))

(assert (= (and b!669670 res!436665) b!669677))

(assert (= (and b!669677 res!436669) b!669665))

(assert (= (and b!669665 res!436668) b!669664))

(assert (= (and b!669665 (not res!436678)) b!669686))

(assert (= (and b!669686 res!436666) b!669684))

(assert (= (and b!669665 res!436673) b!669689))

(assert (= (and b!669689 res!436660) b!669675))

(assert (= (and b!669675 res!436663) b!669676))

(assert (= (and b!669676 res!436664) b!669666))

(assert (= (and b!669666 res!436676) b!669678))

(assert (= (and b!669678 res!436672) b!669671))

(assert (= (and b!669671 res!436670) b!669687))

(assert (= (and b!669687 c!76870) b!669688))

(assert (= (and b!669687 (not c!76870)) b!669667))

(assert (= (and b!669687 c!76871) b!669680))

(assert (= (and b!669687 (not c!76871)) b!669668))

(assert (= (and b!669687 (not res!436658)) b!669685))

(assert (= (and b!669685 (not res!436675)) b!669682))

(assert (= (and b!669682 (not res!436677)) b!669683))

(assert (= (and b!669683 (not res!436661)) b!669673))

(assert (= (and b!669673 (not res!436674)) b!669674))

(assert (= (and b!669673 res!436679) b!669669))

(assert (= (and b!669669 (not res!436659)) b!669681))

(assert (= (and b!669673 (not res!436671)) b!669679))

(declare-fun m!639731 () Bool)

(assert (=> b!669687 m!639731))

(declare-fun m!639733 () Bool)

(assert (=> b!669687 m!639733))

(declare-fun m!639735 () Bool)

(assert (=> b!669687 m!639735))

(declare-fun m!639737 () Bool)

(assert (=> b!669687 m!639737))

(declare-fun m!639739 () Bool)

(assert (=> b!669687 m!639739))

(declare-fun m!639741 () Bool)

(assert (=> b!669687 m!639741))

(declare-fun m!639743 () Bool)

(assert (=> b!669687 m!639743))

(declare-fun m!639745 () Bool)

(assert (=> b!669687 m!639745))

(declare-fun m!639747 () Bool)

(assert (=> b!669687 m!639747))

(assert (=> b!669687 m!639733))

(declare-fun m!639749 () Bool)

(assert (=> b!669687 m!639749))

(declare-fun m!639751 () Bool)

(assert (=> b!669687 m!639751))

(declare-fun m!639753 () Bool)

(assert (=> b!669687 m!639753))

(declare-fun m!639755 () Bool)

(assert (=> b!669687 m!639755))

(declare-fun m!639757 () Bool)

(assert (=> start!60104 m!639757))

(declare-fun m!639759 () Bool)

(assert (=> b!669674 m!639759))

(declare-fun m!639761 () Bool)

(assert (=> b!669664 m!639761))

(declare-fun m!639763 () Bool)

(assert (=> b!669672 m!639763))

(assert (=> b!669681 m!639759))

(assert (=> b!669680 m!639753))

(assert (=> b!669680 m!639733))

(declare-fun m!639765 () Bool)

(assert (=> b!669680 m!639765))

(declare-fun m!639767 () Bool)

(assert (=> b!669680 m!639767))

(assert (=> b!669680 m!639733))

(assert (=> b!669680 m!639765))

(assert (=> b!669680 m!639743))

(assert (=> b!669680 m!639751))

(declare-fun m!639769 () Bool)

(assert (=> b!669678 m!639769))

(declare-fun m!639771 () Bool)

(assert (=> b!669679 m!639771))

(declare-fun m!639773 () Bool)

(assert (=> b!669679 m!639773))

(assert (=> b!669684 m!639761))

(declare-fun m!639775 () Bool)

(assert (=> b!669675 m!639775))

(declare-fun m!639777 () Bool)

(assert (=> b!669688 m!639777))

(declare-fun m!639779 () Bool)

(assert (=> b!669677 m!639779))

(declare-fun m!639781 () Bool)

(assert (=> b!669683 m!639781))

(declare-fun m!639783 () Bool)

(assert (=> b!669666 m!639783))

(declare-fun m!639785 () Bool)

(assert (=> b!669685 m!639785))

(declare-fun m!639787 () Bool)

(assert (=> b!669682 m!639787))

(declare-fun m!639789 () Bool)

(assert (=> b!669670 m!639789))

(declare-fun m!639791 () Bool)

(assert (=> b!669689 m!639791))

(check-sat (not b!669682) (not start!60104) (not b!669677) (not b!669678) (not b!669683) (not b!669672) (not b!669689) (not b!669688) (not b!669675) (not b!669680) (not b!669687) (not b!669681) (not b!669684) (not b!669666) (not b!669679) (not b!669685) (not b!669670) (not b!669664) (not b!669674))
(check-sat)
