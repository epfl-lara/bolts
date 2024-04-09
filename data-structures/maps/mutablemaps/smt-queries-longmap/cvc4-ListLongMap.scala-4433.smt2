; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61594 () Bool)

(assert start!61594)

(declare-fun b!688874 () Bool)

(declare-datatypes ((Unit!24302 0))(
  ( (Unit!24303) )
))
(declare-fun e!392277 () Unit!24302)

(declare-fun lt!315976 () Unit!24302)

(assert (=> b!688874 (= e!392277 lt!315976)))

(declare-fun lt!315973 () Unit!24302)

(declare-datatypes ((List!13107 0))(
  ( (Nil!13104) (Cons!13103 (h!14148 (_ BitVec 64)) (t!19379 List!13107)) )
))
(declare-fun acc!681 () List!13107)

(declare-fun lemmaListSubSeqRefl!0 (List!13107) Unit!24302)

(assert (=> b!688874 (= lt!315973 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!235 (List!13107 List!13107) Bool)

(assert (=> b!688874 (subseq!235 acc!681 acc!681)))

(declare-datatypes ((array!39691 0))(
  ( (array!39692 (arr!19013 (Array (_ BitVec 32) (_ BitVec 64))) (size!19394 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39691)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39691 List!13107 List!13107 (_ BitVec 32)) Unit!24302)

(declare-fun $colon$colon!399 (List!13107 (_ BitVec 64)) List!13107)

(assert (=> b!688874 (= lt!315976 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!399 acc!681 (select (arr!19013 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39691 (_ BitVec 32) List!13107) Bool)

(assert (=> b!688874 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!688875 () Bool)

(declare-fun res!453668 () Bool)

(declare-fun e!392278 () Bool)

(assert (=> b!688875 (=> res!453668 e!392278)))

(declare-fun lt!315975 () List!13107)

(declare-fun contains!3650 (List!13107 (_ BitVec 64)) Bool)

(assert (=> b!688875 (= res!453668 (contains!3650 lt!315975 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688876 () Bool)

(declare-fun e!392279 () Unit!24302)

(declare-fun Unit!24304 () Unit!24302)

(assert (=> b!688876 (= e!392279 Unit!24304)))

(declare-fun lt!315977 () Unit!24302)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39691 (_ BitVec 64) (_ BitVec 32)) Unit!24302)

(assert (=> b!688876 (= lt!315977 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!688876 false))

(declare-fun b!688877 () Bool)

(declare-fun res!453652 () Bool)

(declare-fun e!392286 () Bool)

(assert (=> b!688877 (=> (not res!453652) (not e!392286))))

(assert (=> b!688877 (= res!453652 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!688878 () Bool)

(declare-fun Unit!24305 () Unit!24302)

(assert (=> b!688878 (= e!392277 Unit!24305)))

(declare-fun b!688879 () Bool)

(declare-fun e!392282 () Bool)

(assert (=> b!688879 (= e!392282 (contains!3650 acc!681 k!2843))))

(declare-fun b!688880 () Bool)

(declare-fun res!453667 () Bool)

(assert (=> b!688880 (=> (not res!453667) (not e!392286))))

(declare-fun noDuplicate!897 (List!13107) Bool)

(assert (=> b!688880 (= res!453667 (noDuplicate!897 acc!681))))

(declare-fun b!688881 () Bool)

(declare-fun e!392284 () Bool)

(assert (=> b!688881 (= e!392284 (not (contains!3650 acc!681 k!2843)))))

(declare-fun b!688882 () Bool)

(declare-fun res!453656 () Bool)

(assert (=> b!688882 (=> (not res!453656) (not e!392286))))

(assert (=> b!688882 (= res!453656 (not (contains!3650 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688883 () Bool)

(declare-fun res!453648 () Bool)

(assert (=> b!688883 (=> (not res!453648) (not e!392286))))

(assert (=> b!688883 (= res!453648 (not (contains!3650 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688885 () Bool)

(declare-fun e!392285 () Bool)

(assert (=> b!688885 (= e!392285 e!392284)))

(declare-fun res!453653 () Bool)

(assert (=> b!688885 (=> (not res!453653) (not e!392284))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!688885 (= res!453653 (bvsle from!3004 i!1382))))

(declare-fun b!688886 () Bool)

(declare-fun res!453655 () Bool)

(assert (=> b!688886 (=> (not res!453655) (not e!392286))))

(assert (=> b!688886 (= res!453655 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19394 a!3626))))))

(declare-fun b!688887 () Bool)

(declare-fun e!392287 () Bool)

(assert (=> b!688887 (= e!392287 (contains!3650 lt!315975 k!2843))))

(declare-fun b!688888 () Bool)

(declare-fun res!453651 () Bool)

(assert (=> b!688888 (=> (not res!453651) (not e!392286))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!688888 (= res!453651 (validKeyInArray!0 k!2843))))

(declare-fun b!688889 () Bool)

(declare-fun res!453654 () Bool)

(assert (=> b!688889 (=> res!453654 e!392278)))

(assert (=> b!688889 (= res!453654 (contains!3650 lt!315975 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688890 () Bool)

(declare-fun res!453659 () Bool)

(assert (=> b!688890 (=> (not res!453659) (not e!392286))))

(assert (=> b!688890 (= res!453659 e!392285)))

(declare-fun res!453664 () Bool)

(assert (=> b!688890 (=> res!453664 e!392285)))

(assert (=> b!688890 (= res!453664 e!392282)))

(declare-fun res!453658 () Bool)

(assert (=> b!688890 (=> (not res!453658) (not e!392282))))

(assert (=> b!688890 (= res!453658 (bvsgt from!3004 i!1382))))

(declare-fun b!688891 () Bool)

(declare-fun Unit!24306 () Unit!24302)

(assert (=> b!688891 (= e!392279 Unit!24306)))

(declare-fun b!688892 () Bool)

(declare-fun res!453660 () Bool)

(assert (=> b!688892 (=> (not res!453660) (not e!392286))))

(assert (=> b!688892 (= res!453660 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13104))))

(declare-fun b!688893 () Bool)

(declare-fun res!453657 () Bool)

(assert (=> b!688893 (=> res!453657 e!392278)))

(assert (=> b!688893 (= res!453657 (not (noDuplicate!897 lt!315975)))))

(declare-fun b!688894 () Bool)

(declare-fun e!392281 () Bool)

(assert (=> b!688894 (= e!392281 (not (contains!3650 lt!315975 k!2843)))))

(declare-fun b!688895 () Bool)

(declare-fun res!453649 () Bool)

(assert (=> b!688895 (=> (not res!453649) (not e!392286))))

(assert (=> b!688895 (= res!453649 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19394 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!688896 () Bool)

(declare-fun e!392280 () Bool)

(assert (=> b!688896 (= e!392280 e!392281)))

(declare-fun res!453661 () Bool)

(assert (=> b!688896 (=> (not res!453661) (not e!392281))))

(assert (=> b!688896 (= res!453661 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688897 () Bool)

(assert (=> b!688897 (= e!392278 true)))

(declare-fun lt!315978 () Bool)

(assert (=> b!688897 (= lt!315978 e!392280)))

(declare-fun res!453650 () Bool)

(assert (=> b!688897 (=> res!453650 e!392280)))

(assert (=> b!688897 (= res!453650 e!392287)))

(declare-fun res!453662 () Bool)

(assert (=> b!688897 (=> (not res!453662) (not e!392287))))

(assert (=> b!688897 (= res!453662 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688898 () Bool)

(declare-fun res!453663 () Bool)

(assert (=> b!688898 (=> (not res!453663) (not e!392286))))

(declare-fun arrayContainsKey!0 (array!39691 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!688898 (= res!453663 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun res!453666 () Bool)

(assert (=> start!61594 (=> (not res!453666) (not e!392286))))

(assert (=> start!61594 (= res!453666 (and (bvslt (size!19394 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19394 a!3626))))))

(assert (=> start!61594 e!392286))

(assert (=> start!61594 true))

(declare-fun array_inv!14787 (array!39691) Bool)

(assert (=> start!61594 (array_inv!14787 a!3626)))

(declare-fun b!688884 () Bool)

(assert (=> b!688884 (= e!392286 (not e!392278))))

(declare-fun res!453665 () Bool)

(assert (=> b!688884 (=> res!453665 e!392278)))

(assert (=> b!688884 (= res!453665 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!688884 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315975)))

(declare-fun lt!315972 () Unit!24302)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39691 (_ BitVec 64) (_ BitVec 32) List!13107 List!13107) Unit!24302)

(assert (=> b!688884 (= lt!315972 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315975))))

(declare-fun -!200 (List!13107 (_ BitVec 64)) List!13107)

(assert (=> b!688884 (= (-!200 lt!315975 k!2843) acc!681)))

(assert (=> b!688884 (= lt!315975 ($colon$colon!399 acc!681 k!2843))))

(declare-fun lt!315971 () Unit!24302)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13107) Unit!24302)

(assert (=> b!688884 (= lt!315971 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!688884 (subseq!235 acc!681 acc!681)))

(declare-fun lt!315970 () Unit!24302)

(assert (=> b!688884 (= lt!315970 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688884 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315974 () Unit!24302)

(assert (=> b!688884 (= lt!315974 e!392277)))

(declare-fun c!77981 () Bool)

(assert (=> b!688884 (= c!77981 (validKeyInArray!0 (select (arr!19013 a!3626) from!3004)))))

(declare-fun lt!315969 () Unit!24302)

(assert (=> b!688884 (= lt!315969 e!392279)))

(declare-fun c!77980 () Bool)

(assert (=> b!688884 (= c!77980 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688884 (arrayContainsKey!0 (array!39692 (store (arr!19013 a!3626) i!1382 k!2843) (size!19394 a!3626)) k!2843 from!3004)))

(assert (= (and start!61594 res!453666) b!688880))

(assert (= (and b!688880 res!453667) b!688883))

(assert (= (and b!688883 res!453648) b!688882))

(assert (= (and b!688882 res!453656) b!688890))

(assert (= (and b!688890 res!453658) b!688879))

(assert (= (and b!688890 (not res!453664)) b!688885))

(assert (= (and b!688885 res!453653) b!688881))

(assert (= (and b!688890 res!453659) b!688892))

(assert (= (and b!688892 res!453660) b!688877))

(assert (= (and b!688877 res!453652) b!688886))

(assert (= (and b!688886 res!453655) b!688888))

(assert (= (and b!688888 res!453651) b!688898))

(assert (= (and b!688898 res!453663) b!688895))

(assert (= (and b!688895 res!453649) b!688884))

(assert (= (and b!688884 c!77980) b!688876))

(assert (= (and b!688884 (not c!77980)) b!688891))

(assert (= (and b!688884 c!77981) b!688874))

(assert (= (and b!688884 (not c!77981)) b!688878))

(assert (= (and b!688884 (not res!453665)) b!688893))

(assert (= (and b!688893 (not res!453657)) b!688889))

(assert (= (and b!688889 (not res!453654)) b!688875))

(assert (= (and b!688875 (not res!453668)) b!688897))

(assert (= (and b!688897 res!453662) b!688887))

(assert (= (and b!688897 (not res!453650)) b!688896))

(assert (= (and b!688896 res!453661) b!688894))

(declare-fun m!652691 () Bool)

(assert (=> start!61594 m!652691))

(declare-fun m!652693 () Bool)

(assert (=> b!688880 m!652693))

(declare-fun m!652695 () Bool)

(assert (=> b!688876 m!652695))

(declare-fun m!652697 () Bool)

(assert (=> b!688889 m!652697))

(declare-fun m!652699 () Bool)

(assert (=> b!688893 m!652699))

(declare-fun m!652701 () Bool)

(assert (=> b!688883 m!652701))

(declare-fun m!652703 () Bool)

(assert (=> b!688877 m!652703))

(declare-fun m!652705 () Bool)

(assert (=> b!688874 m!652705))

(declare-fun m!652707 () Bool)

(assert (=> b!688874 m!652707))

(declare-fun m!652709 () Bool)

(assert (=> b!688874 m!652709))

(declare-fun m!652711 () Bool)

(assert (=> b!688874 m!652711))

(assert (=> b!688874 m!652707))

(assert (=> b!688874 m!652709))

(declare-fun m!652713 () Bool)

(assert (=> b!688874 m!652713))

(declare-fun m!652715 () Bool)

(assert (=> b!688874 m!652715))

(declare-fun m!652717 () Bool)

(assert (=> b!688881 m!652717))

(declare-fun m!652719 () Bool)

(assert (=> b!688875 m!652719))

(assert (=> b!688879 m!652717))

(declare-fun m!652721 () Bool)

(assert (=> b!688887 m!652721))

(declare-fun m!652723 () Bool)

(assert (=> b!688898 m!652723))

(declare-fun m!652725 () Bool)

(assert (=> b!688892 m!652725))

(declare-fun m!652727 () Bool)

(assert (=> b!688888 m!652727))

(declare-fun m!652729 () Bool)

(assert (=> b!688884 m!652729))

(declare-fun m!652731 () Bool)

(assert (=> b!688884 m!652731))

(assert (=> b!688884 m!652705))

(assert (=> b!688884 m!652707))

(declare-fun m!652733 () Bool)

(assert (=> b!688884 m!652733))

(declare-fun m!652735 () Bool)

(assert (=> b!688884 m!652735))

(declare-fun m!652737 () Bool)

(assert (=> b!688884 m!652737))

(assert (=> b!688884 m!652713))

(declare-fun m!652739 () Bool)

(assert (=> b!688884 m!652739))

(declare-fun m!652741 () Bool)

(assert (=> b!688884 m!652741))

(assert (=> b!688884 m!652707))

(declare-fun m!652743 () Bool)

(assert (=> b!688884 m!652743))

(declare-fun m!652745 () Bool)

(assert (=> b!688884 m!652745))

(assert (=> b!688884 m!652715))

(declare-fun m!652747 () Bool)

(assert (=> b!688882 m!652747))

(assert (=> b!688894 m!652721))

(push 1)

(assert (not b!688888))

(assert (not b!688880))

(assert (not b!688874))

(assert (not b!688883))

(assert (not b!688876))

(assert (not b!688893))

(assert (not b!688887))

(assert (not b!688889))

(assert (not b!688875))

(assert (not b!688884))

(assert (not start!61594))

(assert (not b!688898))

(assert (not b!688892))

(assert (not b!688882))

(assert (not b!688894))

(assert (not b!688881))

(assert (not b!688877))

(assert (not b!688879))

(check-sat)

