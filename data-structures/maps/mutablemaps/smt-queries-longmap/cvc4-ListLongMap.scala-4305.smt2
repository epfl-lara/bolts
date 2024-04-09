; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59878 () Bool)

(assert start!59878)

(declare-fun b!661691 () Bool)

(declare-fun e!379999 () Bool)

(assert (=> b!661691 (= e!379999 true)))

(declare-datatypes ((List!12723 0))(
  ( (Nil!12720) (Cons!12719 (h!13764 (_ BitVec 64)) (t!18959 List!12723)) )
))
(declare-fun lt!308811 () List!12723)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!308809 () Bool)

(declare-datatypes ((array!38881 0))(
  ( (array!38882 (arr!18629 (Array (_ BitVec 32) (_ BitVec 64))) (size!18993 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38881)

(declare-fun arrayNoDuplicates!0 (array!38881 (_ BitVec 32) List!12723) Bool)

(assert (=> b!661691 (= lt!308809 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!308811))))

(declare-datatypes ((Unit!22962 0))(
  ( (Unit!22963) )
))
(declare-fun lt!308807 () Unit!22962)

(declare-fun acc!681 () List!12723)

(declare-fun noDuplicateSubseq!4 (List!12723 List!12723) Unit!22962)

(assert (=> b!661691 (= lt!308807 (noDuplicateSubseq!4 acc!681 lt!308811))))

(declare-fun b!661692 () Bool)

(declare-fun e!379997 () Bool)

(assert (=> b!661692 (= e!379997 e!379999)))

(declare-fun res!429915 () Bool)

(assert (=> b!661692 (=> res!429915 e!379999)))

(assert (=> b!661692 (= res!429915 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!135 (List!12723 (_ BitVec 64)) List!12723)

(assert (=> b!661692 (= lt!308811 ($colon$colon!135 acc!681 (select (arr!18629 a!3626) from!3004)))))

(declare-fun subseq!4 (List!12723 List!12723) Bool)

(assert (=> b!661692 (subseq!4 acc!681 acc!681)))

(declare-fun lt!308808 () Unit!22962)

(declare-fun lemmaListSubSeqRefl!0 (List!12723) Unit!22962)

(assert (=> b!661692 (= lt!308808 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!661693 () Bool)

(declare-fun e!379995 () Unit!22962)

(declare-fun Unit!22964 () Unit!22962)

(assert (=> b!661693 (= e!379995 Unit!22964)))

(declare-fun b!661694 () Bool)

(declare-fun e!379998 () Bool)

(declare-fun e!379994 () Bool)

(assert (=> b!661694 (= e!379998 e!379994)))

(declare-fun res!429918 () Bool)

(assert (=> b!661694 (=> (not res!429918) (not e!379994))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!661694 (= res!429918 (bvsle from!3004 i!1382))))

(declare-fun b!661695 () Bool)

(declare-fun res!429922 () Bool)

(declare-fun e!379996 () Bool)

(assert (=> b!661695 (=> (not res!429922) (not e!379996))))

(declare-fun contains!3266 (List!12723 (_ BitVec 64)) Bool)

(assert (=> b!661695 (= res!429922 (not (contains!3266 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661696 () Bool)

(assert (=> b!661696 (= e!379996 (not e!379997))))

(declare-fun res!429920 () Bool)

(assert (=> b!661696 (=> res!429920 e!379997)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!661696 (= res!429920 (not (validKeyInArray!0 (select (arr!18629 a!3626) from!3004))))))

(declare-fun lt!308806 () Unit!22962)

(assert (=> b!661696 (= lt!308806 e!379995)))

(declare-fun c!76256 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38881 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661696 (= c!76256 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!661696 (arrayContainsKey!0 (array!38882 (store (arr!18629 a!3626) i!1382 k!2843) (size!18993 a!3626)) k!2843 from!3004)))

(declare-fun b!661697 () Bool)

(declare-fun res!429928 () Bool)

(assert (=> b!661697 (=> (not res!429928) (not e!379996))))

(assert (=> b!661697 (= res!429928 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12720))))

(declare-fun b!661698 () Bool)

(declare-fun res!429917 () Bool)

(assert (=> b!661698 (=> res!429917 e!379999)))

(assert (=> b!661698 (= res!429917 (contains!3266 lt!308811 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!661699 () Bool)

(assert (=> b!661699 (= e!379994 (not (contains!3266 acc!681 k!2843)))))

(declare-fun b!661700 () Bool)

(declare-fun e!379992 () Bool)

(assert (=> b!661700 (= e!379992 (contains!3266 acc!681 k!2843))))

(declare-fun b!661702 () Bool)

(declare-fun Unit!22965 () Unit!22962)

(assert (=> b!661702 (= e!379995 Unit!22965)))

(declare-fun lt!308810 () Unit!22962)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38881 (_ BitVec 64) (_ BitVec 32)) Unit!22962)

(assert (=> b!661702 (= lt!308810 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!661702 false))

(declare-fun b!661703 () Bool)

(declare-fun res!429927 () Bool)

(assert (=> b!661703 (=> res!429927 e!379999)))

(assert (=> b!661703 (= res!429927 (contains!3266 lt!308811 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!661704 () Bool)

(declare-fun res!429926 () Bool)

(assert (=> b!661704 (=> res!429926 e!379999)))

(assert (=> b!661704 (= res!429926 (not (subseq!4 acc!681 lt!308811)))))

(declare-fun b!661705 () Bool)

(declare-fun res!429931 () Bool)

(assert (=> b!661705 (=> (not res!429931) (not e!379996))))

(assert (=> b!661705 (= res!429931 (not (contains!3266 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661706 () Bool)

(declare-fun res!429924 () Bool)

(assert (=> b!661706 (=> (not res!429924) (not e!379996))))

(declare-fun noDuplicate!513 (List!12723) Bool)

(assert (=> b!661706 (= res!429924 (noDuplicate!513 acc!681))))

(declare-fun b!661707 () Bool)

(declare-fun res!429925 () Bool)

(assert (=> b!661707 (=> (not res!429925) (not e!379996))))

(assert (=> b!661707 (= res!429925 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!661708 () Bool)

(declare-fun res!429923 () Bool)

(assert (=> b!661708 (=> (not res!429923) (not e!379996))))

(assert (=> b!661708 (= res!429923 (validKeyInArray!0 k!2843))))

(declare-fun b!661709 () Bool)

(declare-fun res!429921 () Bool)

(assert (=> b!661709 (=> (not res!429921) (not e!379996))))

(assert (=> b!661709 (= res!429921 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18993 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!661710 () Bool)

(declare-fun res!429914 () Bool)

(assert (=> b!661710 (=> (not res!429914) (not e!379996))))

(assert (=> b!661710 (= res!429914 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18993 a!3626))))))

(declare-fun b!661711 () Bool)

(declare-fun res!429919 () Bool)

(assert (=> b!661711 (=> res!429919 e!379999)))

(assert (=> b!661711 (= res!429919 (not (noDuplicate!513 lt!308811)))))

(declare-fun b!661712 () Bool)

(declare-fun res!429916 () Bool)

(assert (=> b!661712 (=> (not res!429916) (not e!379996))))

(assert (=> b!661712 (= res!429916 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!661701 () Bool)

(declare-fun res!429930 () Bool)

(assert (=> b!661701 (=> (not res!429930) (not e!379996))))

(assert (=> b!661701 (= res!429930 e!379998)))

(declare-fun res!429913 () Bool)

(assert (=> b!661701 (=> res!429913 e!379998)))

(assert (=> b!661701 (= res!429913 e!379992)))

(declare-fun res!429929 () Bool)

(assert (=> b!661701 (=> (not res!429929) (not e!379992))))

(assert (=> b!661701 (= res!429929 (bvsgt from!3004 i!1382))))

(declare-fun res!429932 () Bool)

(assert (=> start!59878 (=> (not res!429932) (not e!379996))))

(assert (=> start!59878 (= res!429932 (and (bvslt (size!18993 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18993 a!3626))))))

(assert (=> start!59878 e!379996))

(assert (=> start!59878 true))

(declare-fun array_inv!14403 (array!38881) Bool)

(assert (=> start!59878 (array_inv!14403 a!3626)))

(assert (= (and start!59878 res!429932) b!661706))

(assert (= (and b!661706 res!429924) b!661695))

(assert (= (and b!661695 res!429922) b!661705))

(assert (= (and b!661705 res!429931) b!661701))

(assert (= (and b!661701 res!429929) b!661700))

(assert (= (and b!661701 (not res!429913)) b!661694))

(assert (= (and b!661694 res!429918) b!661699))

(assert (= (and b!661701 res!429930) b!661697))

(assert (= (and b!661697 res!429928) b!661712))

(assert (= (and b!661712 res!429916) b!661710))

(assert (= (and b!661710 res!429914) b!661708))

(assert (= (and b!661708 res!429923) b!661707))

(assert (= (and b!661707 res!429925) b!661709))

(assert (= (and b!661709 res!429921) b!661696))

(assert (= (and b!661696 c!76256) b!661702))

(assert (= (and b!661696 (not c!76256)) b!661693))

(assert (= (and b!661696 (not res!429920)) b!661692))

(assert (= (and b!661692 (not res!429915)) b!661711))

(assert (= (and b!661711 (not res!429919)) b!661703))

(assert (= (and b!661703 (not res!429927)) b!661698))

(assert (= (and b!661698 (not res!429917)) b!661704))

(assert (= (and b!661704 (not res!429926)) b!661691))

(declare-fun m!633747 () Bool)

(assert (=> b!661691 m!633747))

(declare-fun m!633749 () Bool)

(assert (=> b!661691 m!633749))

(declare-fun m!633751 () Bool)

(assert (=> b!661705 m!633751))

(declare-fun m!633753 () Bool)

(assert (=> b!661697 m!633753))

(declare-fun m!633755 () Bool)

(assert (=> b!661702 m!633755))

(declare-fun m!633757 () Bool)

(assert (=> b!661695 m!633757))

(declare-fun m!633759 () Bool)

(assert (=> b!661707 m!633759))

(declare-fun m!633761 () Bool)

(assert (=> b!661706 m!633761))

(declare-fun m!633763 () Bool)

(assert (=> b!661712 m!633763))

(declare-fun m!633765 () Bool)

(assert (=> start!59878 m!633765))

(declare-fun m!633767 () Bool)

(assert (=> b!661711 m!633767))

(declare-fun m!633769 () Bool)

(assert (=> b!661692 m!633769))

(assert (=> b!661692 m!633769))

(declare-fun m!633771 () Bool)

(assert (=> b!661692 m!633771))

(declare-fun m!633773 () Bool)

(assert (=> b!661692 m!633773))

(declare-fun m!633775 () Bool)

(assert (=> b!661692 m!633775))

(declare-fun m!633777 () Bool)

(assert (=> b!661704 m!633777))

(declare-fun m!633779 () Bool)

(assert (=> b!661703 m!633779))

(declare-fun m!633781 () Bool)

(assert (=> b!661699 m!633781))

(assert (=> b!661700 m!633781))

(assert (=> b!661696 m!633769))

(declare-fun m!633783 () Bool)

(assert (=> b!661696 m!633783))

(declare-fun m!633785 () Bool)

(assert (=> b!661696 m!633785))

(assert (=> b!661696 m!633769))

(declare-fun m!633787 () Bool)

(assert (=> b!661696 m!633787))

(declare-fun m!633789 () Bool)

(assert (=> b!661696 m!633789))

(declare-fun m!633791 () Bool)

(assert (=> b!661708 m!633791))

(declare-fun m!633793 () Bool)

(assert (=> b!661698 m!633793))

(push 1)

