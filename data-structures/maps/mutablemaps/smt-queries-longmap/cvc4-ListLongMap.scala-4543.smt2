; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63296 () Bool)

(assert start!63296)

(declare-fun b!712687 () Bool)

(declare-fun res!476024 () Bool)

(declare-fun e!400820 () Bool)

(assert (=> b!712687 (=> (not res!476024) (not e!400820))))

(declare-datatypes ((List!13437 0))(
  ( (Nil!13434) (Cons!13433 (h!14478 (_ BitVec 64)) (t!19757 List!13437)) )
))
(declare-fun lt!318567 () List!13437)

(declare-fun lt!318569 () List!13437)

(declare-fun subseq!424 (List!13437 List!13437) Bool)

(assert (=> b!712687 (= res!476024 (subseq!424 lt!318567 lt!318569))))

(declare-fun b!712688 () Bool)

(declare-fun res!476046 () Bool)

(assert (=> b!712688 (=> (not res!476046) (not e!400820))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3980 (List!13437 (_ BitVec 64)) Bool)

(assert (=> b!712688 (= res!476046 (not (contains!3980 lt!318567 k!2824)))))

(declare-fun b!712689 () Bool)

(declare-fun res!476022 () Bool)

(declare-fun e!400819 () Bool)

(assert (=> b!712689 (=> (not res!476022) (not e!400819))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40411 0))(
  ( (array!40412 (arr!19343 (Array (_ BitVec 32) (_ BitVec 64))) (size!19752 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40411)

(assert (=> b!712689 (= res!476022 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19752 a!3591)))))

(declare-fun b!712690 () Bool)

(declare-fun res!476048 () Bool)

(assert (=> b!712690 (=> (not res!476048) (not e!400820))))

(assert (=> b!712690 (= res!476048 (not (contains!3980 lt!318567 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712691 () Bool)

(declare-fun res!476039 () Bool)

(assert (=> b!712691 (=> (not res!476039) (not e!400819))))

(declare-fun arrayContainsKey!0 (array!40411 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!712691 (= res!476039 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!712692 () Bool)

(declare-fun res!476023 () Bool)

(assert (=> b!712692 (=> (not res!476023) (not e!400819))))

(declare-fun acc!652 () List!13437)

(assert (=> b!712692 (= res!476023 (not (contains!3980 acc!652 k!2824)))))

(declare-fun b!712693 () Bool)

(declare-fun res!476035 () Bool)

(assert (=> b!712693 (=> (not res!476035) (not e!400819))))

(declare-fun newAcc!49 () List!13437)

(assert (=> b!712693 (= res!476035 (subseq!424 acc!652 newAcc!49))))

(declare-fun b!712694 () Bool)

(declare-fun res!476034 () Bool)

(assert (=> b!712694 (=> (not res!476034) (not e!400819))))

(assert (=> b!712694 (= res!476034 (not (contains!3980 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712695 () Bool)

(declare-fun res!476045 () Bool)

(assert (=> b!712695 (=> (not res!476045) (not e!400820))))

(assert (=> b!712695 (= res!476045 (contains!3980 lt!318569 k!2824))))

(declare-fun b!712696 () Bool)

(declare-fun res!476031 () Bool)

(assert (=> b!712696 (=> (not res!476031) (not e!400819))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!712696 (= res!476031 (validKeyInArray!0 (select (arr!19343 a!3591) from!2969)))))

(declare-fun b!712697 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40411 (_ BitVec 32) List!13437) Bool)

(assert (=> b!712697 (= e!400820 (not (arrayNoDuplicates!0 a!3591 from!2969 newAcc!49)))))

(assert (=> b!712697 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318569)))

(declare-datatypes ((Unit!24614 0))(
  ( (Unit!24615) )
))
(declare-fun lt!318568 () Unit!24614)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40411 (_ BitVec 64) (_ BitVec 32) List!13437 List!13437) Unit!24614)

(assert (=> b!712697 (= lt!318568 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!318567 lt!318569))))

(declare-fun b!712698 () Bool)

(declare-fun res!476027 () Bool)

(assert (=> b!712698 (=> (not res!476027) (not e!400820))))

(assert (=> b!712698 (= res!476027 (not (contains!3980 lt!318569 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712699 () Bool)

(declare-fun res!476033 () Bool)

(assert (=> b!712699 (=> (not res!476033) (not e!400820))))

(declare-fun -!389 (List!13437 (_ BitVec 64)) List!13437)

(assert (=> b!712699 (= res!476033 (= (-!389 lt!318569 k!2824) lt!318567))))

(declare-fun b!712700 () Bool)

(declare-fun res!476041 () Bool)

(assert (=> b!712700 (=> (not res!476041) (not e!400819))))

(assert (=> b!712700 (= res!476041 (validKeyInArray!0 k!2824))))

(declare-fun b!712701 () Bool)

(declare-fun res!476021 () Bool)

(assert (=> b!712701 (=> (not res!476021) (not e!400819))))

(assert (=> b!712701 (= res!476021 (not (contains!3980 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712702 () Bool)

(declare-fun res!476028 () Bool)

(assert (=> b!712702 (=> (not res!476028) (not e!400820))))

(assert (=> b!712702 (= res!476028 (not (contains!3980 lt!318569 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!476044 () Bool)

(assert (=> start!63296 (=> (not res!476044) (not e!400819))))

(assert (=> start!63296 (= res!476044 (and (bvslt (size!19752 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19752 a!3591))))))

(assert (=> start!63296 e!400819))

(assert (=> start!63296 true))

(declare-fun array_inv!15117 (array!40411) Bool)

(assert (=> start!63296 (array_inv!15117 a!3591)))

(declare-fun b!712703 () Bool)

(assert (=> b!712703 (= e!400819 e!400820)))

(declare-fun res!476043 () Bool)

(assert (=> b!712703 (=> (not res!476043) (not e!400820))))

(assert (=> b!712703 (= res!476043 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!534 (List!13437 (_ BitVec 64)) List!13437)

(assert (=> b!712703 (= lt!318569 ($colon$colon!534 newAcc!49 (select (arr!19343 a!3591) from!2969)))))

(assert (=> b!712703 (= lt!318567 ($colon$colon!534 acc!652 (select (arr!19343 a!3591) from!2969)))))

(declare-fun b!712704 () Bool)

(declare-fun res!476026 () Bool)

(assert (=> b!712704 (=> (not res!476026) (not e!400819))))

(assert (=> b!712704 (= res!476026 (not (contains!3980 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712705 () Bool)

(declare-fun res!476047 () Bool)

(assert (=> b!712705 (=> (not res!476047) (not e!400820))))

(declare-fun noDuplicate!1227 (List!13437) Bool)

(assert (=> b!712705 (= res!476047 (noDuplicate!1227 lt!318567))))

(declare-fun b!712706 () Bool)

(declare-fun res!476032 () Bool)

(assert (=> b!712706 (=> (not res!476032) (not e!400819))))

(assert (=> b!712706 (= res!476032 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!712707 () Bool)

(declare-fun res!476049 () Bool)

(assert (=> b!712707 (=> (not res!476049) (not e!400820))))

(assert (=> b!712707 (= res!476049 (not (contains!3980 lt!318567 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712708 () Bool)

(declare-fun res!476025 () Bool)

(assert (=> b!712708 (=> (not res!476025) (not e!400819))))

(assert (=> b!712708 (= res!476025 (= (-!389 newAcc!49 k!2824) acc!652))))

(declare-fun b!712709 () Bool)

(declare-fun res!476040 () Bool)

(assert (=> b!712709 (=> (not res!476040) (not e!400820))))

(assert (=> b!712709 (= res!476040 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!712710 () Bool)

(declare-fun res!476042 () Bool)

(assert (=> b!712710 (=> (not res!476042) (not e!400819))))

(assert (=> b!712710 (= res!476042 (noDuplicate!1227 acc!652))))

(declare-fun b!712711 () Bool)

(declare-fun res!476030 () Bool)

(assert (=> b!712711 (=> (not res!476030) (not e!400819))))

(assert (=> b!712711 (= res!476030 (contains!3980 newAcc!49 k!2824))))

(declare-fun b!712712 () Bool)

(declare-fun res!476036 () Bool)

(assert (=> b!712712 (=> (not res!476036) (not e!400820))))

(assert (=> b!712712 (= res!476036 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318567))))

(declare-fun b!712713 () Bool)

(declare-fun res!476038 () Bool)

(assert (=> b!712713 (=> (not res!476038) (not e!400819))))

(assert (=> b!712713 (= res!476038 (noDuplicate!1227 newAcc!49))))

(declare-fun b!712714 () Bool)

(declare-fun res!476037 () Bool)

(assert (=> b!712714 (=> (not res!476037) (not e!400819))))

(assert (=> b!712714 (= res!476037 (not (contains!3980 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712715 () Bool)

(declare-fun res!476029 () Bool)

(assert (=> b!712715 (=> (not res!476029) (not e!400820))))

(assert (=> b!712715 (= res!476029 (noDuplicate!1227 lt!318569))))

(assert (= (and start!63296 res!476044) b!712710))

(assert (= (and b!712710 res!476042) b!712713))

(assert (= (and b!712713 res!476038) b!712704))

(assert (= (and b!712704 res!476026) b!712694))

(assert (= (and b!712694 res!476034) b!712691))

(assert (= (and b!712691 res!476039) b!712692))

(assert (= (and b!712692 res!476023) b!712700))

(assert (= (and b!712700 res!476041) b!712706))

(assert (= (and b!712706 res!476032) b!712693))

(assert (= (and b!712693 res!476035) b!712711))

(assert (= (and b!712711 res!476030) b!712708))

(assert (= (and b!712708 res!476025) b!712701))

(assert (= (and b!712701 res!476021) b!712714))

(assert (= (and b!712714 res!476037) b!712689))

(assert (= (and b!712689 res!476022) b!712696))

(assert (= (and b!712696 res!476031) b!712703))

(assert (= (and b!712703 res!476043) b!712705))

(assert (= (and b!712705 res!476047) b!712715))

(assert (= (and b!712715 res!476029) b!712707))

(assert (= (and b!712707 res!476049) b!712690))

(assert (= (and b!712690 res!476048) b!712709))

(assert (= (and b!712709 res!476040) b!712688))

(assert (= (and b!712688 res!476046) b!712712))

(assert (= (and b!712712 res!476036) b!712687))

(assert (= (and b!712687 res!476024) b!712695))

(assert (= (and b!712695 res!476045) b!712699))

(assert (= (and b!712699 res!476033) b!712702))

(assert (= (and b!712702 res!476028) b!712698))

(assert (= (and b!712698 res!476027) b!712697))

(declare-fun m!669591 () Bool)

(assert (=> b!712714 m!669591))

(declare-fun m!669593 () Bool)

(assert (=> b!712690 m!669593))

(declare-fun m!669595 () Bool)

(assert (=> b!712702 m!669595))

(declare-fun m!669597 () Bool)

(assert (=> b!712693 m!669597))

(declare-fun m!669599 () Bool)

(assert (=> b!712705 m!669599))

(declare-fun m!669601 () Bool)

(assert (=> b!712695 m!669601))

(declare-fun m!669603 () Bool)

(assert (=> b!712692 m!669603))

(declare-fun m!669605 () Bool)

(assert (=> b!712712 m!669605))

(declare-fun m!669607 () Bool)

(assert (=> b!712697 m!669607))

(declare-fun m!669609 () Bool)

(assert (=> b!712697 m!669609))

(declare-fun m!669611 () Bool)

(assert (=> b!712697 m!669611))

(declare-fun m!669613 () Bool)

(assert (=> b!712707 m!669613))

(declare-fun m!669615 () Bool)

(assert (=> b!712709 m!669615))

(declare-fun m!669617 () Bool)

(assert (=> b!712699 m!669617))

(declare-fun m!669619 () Bool)

(assert (=> b!712711 m!669619))

(declare-fun m!669621 () Bool)

(assert (=> b!712687 m!669621))

(declare-fun m!669623 () Bool)

(assert (=> b!712715 m!669623))

(declare-fun m!669625 () Bool)

(assert (=> b!712696 m!669625))

(assert (=> b!712696 m!669625))

(declare-fun m!669627 () Bool)

(assert (=> b!712696 m!669627))

(declare-fun m!669629 () Bool)

(assert (=> b!712704 m!669629))

(declare-fun m!669631 () Bool)

(assert (=> b!712708 m!669631))

(declare-fun m!669633 () Bool)

(assert (=> b!712713 m!669633))

(declare-fun m!669635 () Bool)

(assert (=> b!712694 m!669635))

(declare-fun m!669637 () Bool)

(assert (=> b!712691 m!669637))

(declare-fun m!669639 () Bool)

(assert (=> b!712706 m!669639))

(declare-fun m!669641 () Bool)

(assert (=> b!712700 m!669641))

(declare-fun m!669643 () Bool)

(assert (=> b!712710 m!669643))

(declare-fun m!669645 () Bool)

(assert (=> b!712698 m!669645))

(assert (=> b!712703 m!669625))

(assert (=> b!712703 m!669625))

(declare-fun m!669647 () Bool)

(assert (=> b!712703 m!669647))

(assert (=> b!712703 m!669625))

(declare-fun m!669649 () Bool)

(assert (=> b!712703 m!669649))

(declare-fun m!669651 () Bool)

(assert (=> b!712688 m!669651))

(declare-fun m!669653 () Bool)

(assert (=> start!63296 m!669653))

(declare-fun m!669655 () Bool)

(assert (=> b!712701 m!669655))

(push 1)

(assert (not b!712704))

(assert (not b!712715))

(assert (not b!712696))

(assert (not b!712697))

(assert (not start!63296))

(assert (not b!712713))

(assert (not b!712712))

(assert (not b!712701))

(assert (not b!712690))

(assert (not b!712688))

(assert (not b!712714))

(assert (not b!712703))

(assert (not b!712711))

(assert (not b!712692))

(assert (not b!712693))

(assert (not b!712706))

(assert (not b!712710))

(assert (not b!712695))

(assert (not b!712687))

(assert (not b!712699))

(assert (not b!712708))

(assert (not b!712698))

(assert (not b!712707))

(assert (not b!712705))

(assert (not b!712700))

(assert (not b!712709))

(assert (not b!712691))

(assert (not b!712702))

(assert (not b!712694))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!712799 () Bool)

(declare-fun e!400901 () Bool)

(assert (=> b!712799 (= e!400901 (subseq!424 (t!19757 acc!652) (t!19757 newAcc!49)))))

(declare-fun b!712798 () Bool)

(declare-fun e!400899 () Bool)

(declare-fun e!400898 () Bool)

(assert (=> b!712798 (= e!400899 e!400898)))

(declare-fun res!476123 () Bool)

(assert (=> b!712798 (=> res!476123 e!400898)))

(assert (=> b!712798 (= res!476123 e!400901)))

(declare-fun res!476124 () Bool)

(assert (=> b!712798 (=> (not res!476124) (not e!400901))))

(assert (=> b!712798 (= res!476124 (= (h!14478 acc!652) (h!14478 newAcc!49)))))

(declare-fun b!712800 () Bool)

(assert (=> b!712800 (= e!400898 (subseq!424 acc!652 (t!19757 newAcc!49)))))

(declare-fun b!712797 () Bool)

(declare-fun e!400900 () Bool)

(assert (=> b!712797 (= e!400900 e!400899)))

(declare-fun res!476121 () Bool)

(assert (=> b!712797 (=> (not res!476121) (not e!400899))))

(assert (=> b!712797 (= res!476121 (is-Cons!13433 newAcc!49))))

(declare-fun d!97947 () Bool)

(declare-fun res!476122 () Bool)

(assert (=> d!97947 (=> res!476122 e!400900)))

(assert (=> d!97947 (= res!476122 (is-Nil!13434 acc!652))))

(assert (=> d!97947 (= (subseq!424 acc!652 newAcc!49) e!400900)))

(assert (= (and d!97947 (not res!476122)) b!712797))

(assert (= (and b!712797 res!476121) b!712798))

(assert (= (and b!712798 res!476124) b!712799))

(assert (= (and b!712798 (not res!476123)) b!712800))

(declare-fun m!669717 () Bool)

(assert (=> b!712799 m!669717))

(declare-fun m!669721 () Bool)

(assert (=> b!712800 m!669721))

(assert (=> b!712693 d!97947))

(declare-fun d!97953 () Bool)

(declare-fun lt!318582 () Bool)

(declare-fun content!365 (List!13437) (Set (_ BitVec 64)))

(assert (=> d!97953 (= lt!318582 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!365 acc!652)))))

(declare-fun e!400915 () Bool)

(assert (=> d!97953 (= lt!318582 e!400915)))

(declare-fun res!476136 () Bool)

(assert (=> d!97953 (=> (not res!476136) (not e!400915))))

(assert (=> d!97953 (= res!476136 (is-Cons!13433 acc!652))))

(assert (=> d!97953 (= (contains!3980 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318582)))

(declare-fun b!712814 () Bool)

(declare-fun e!400914 () Bool)

(assert (=> b!712814 (= e!400915 e!400914)))

(declare-fun res!476137 () Bool)

(assert (=> b!712814 (=> res!476137 e!400914)))

(assert (=> b!712814 (= res!476137 (= (h!14478 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712815 () Bool)

(assert (=> b!712815 (= e!400914 (contains!3980 (t!19757 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97953 res!476136) b!712814))

(assert (= (and b!712814 (not res!476137)) b!712815))

(declare-fun m!669727 () Bool)

(assert (=> d!97953 m!669727))

(declare-fun m!669729 () Bool)

(assert (=> d!97953 m!669729))

(declare-fun m!669731 () Bool)

(assert (=> b!712815 m!669731))

(assert (=> b!712694 d!97953))

(declare-fun d!97961 () Bool)

(declare-fun res!476146 () Bool)

(declare-fun e!400929 () Bool)

(assert (=> d!97961 (=> res!476146 e!400929)))

(assert (=> d!97961 (= res!476146 (is-Nil!13434 lt!318569))))

(assert (=> d!97961 (= (noDuplicate!1227 lt!318569) e!400929)))

(declare-fun b!712832 () Bool)

(declare-fun e!400930 () Bool)

(assert (=> b!712832 (= e!400929 e!400930)))

(declare-fun res!476147 () Bool)

(assert (=> b!712832 (=> (not res!476147) (not e!400930))))

(assert (=> b!712832 (= res!476147 (not (contains!3980 (t!19757 lt!318569) (h!14478 lt!318569))))))

(declare-fun b!712833 () Bool)

(assert (=> b!712833 (= e!400930 (noDuplicate!1227 (t!19757 lt!318569)))))

(assert (= (and d!97961 (not res!476146)) b!712832))

(assert (= (and b!712832 res!476147) b!712833))

(declare-fun m!669737 () Bool)

(assert (=> b!712832 m!669737))

(declare-fun m!669739 () Bool)

(assert (=> b!712833 m!669739))

(assert (=> b!712715 d!97961))

(declare-fun d!97965 () Bool)

(assert (=> d!97965 (= (array_inv!15117 a!3591) (bvsge (size!19752 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63296 d!97965))

(declare-fun d!97967 () Bool)

(declare-fun lt!318585 () Bool)

(assert (=> d!97967 (= lt!318585 (member k!2824 (content!365 lt!318569)))))

(declare-fun e!400932 () Bool)

(assert (=> d!97967 (= lt!318585 e!400932)))

(declare-fun res!476148 () Bool)

(assert (=> d!97967 (=> (not res!476148) (not e!400932))))

(assert (=> d!97967 (= res!476148 (is-Cons!13433 lt!318569))))

(assert (=> d!97967 (= (contains!3980 lt!318569 k!2824) lt!318585)))

(declare-fun b!712834 () Bool)

(declare-fun e!400931 () Bool)

(assert (=> b!712834 (= e!400932 e!400931)))

(declare-fun res!476149 () Bool)

(assert (=> b!712834 (=> res!476149 e!400931)))

(assert (=> b!712834 (= res!476149 (= (h!14478 lt!318569) k!2824))))

(declare-fun b!712835 () Bool)

(assert (=> b!712835 (= e!400931 (contains!3980 (t!19757 lt!318569) k!2824))))

(assert (= (and d!97967 res!476148) b!712834))

(assert (= (and b!712834 (not res!476149)) b!712835))

(declare-fun m!669741 () Bool)

(assert (=> d!97967 m!669741))

(declare-fun m!669743 () Bool)

(assert (=> d!97967 m!669743))

(declare-fun m!669745 () Bool)

(assert (=> b!712835 m!669745))

(assert (=> b!712695 d!97967))

(declare-fun d!97969 () Bool)

(assert (=> d!97969 (= (validKeyInArray!0 (select (arr!19343 a!3591) from!2969)) (and (not (= (select (arr!19343 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19343 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!712696 d!97969))

(declare-fun b!712894 () Bool)

(declare-fun e!400978 () Bool)

(assert (=> b!712894 (= e!400978 (contains!3980 newAcc!49 (select (arr!19343 a!3591) from!2969)))))

(declare-fun b!712895 () Bool)

(declare-fun e!400977 () Bool)

(declare-fun e!400980 () Bool)

(assert (=> b!712895 (= e!400977 e!400980)))

(declare-fun c!78725 () Bool)

(assert (=> b!712895 (= c!78725 (validKeyInArray!0 (select (arr!19343 a!3591) from!2969)))))

(declare-fun b!712896 () Bool)

(declare-fun call!34579 () Bool)

(assert (=> b!712896 (= e!400980 call!34579)))

(declare-fun b!712897 () Bool)

(declare-fun e!400979 () Bool)

(assert (=> b!712897 (= e!400979 e!400977)))

(declare-fun res!476178 () Bool)

(assert (=> b!712897 (=> (not res!476178) (not e!400977))))

(assert (=> b!712897 (= res!476178 (not e!400978))))

(declare-fun res!476180 () Bool)

(assert (=> b!712897 (=> (not res!476180) (not e!400978))))

(assert (=> b!712897 (= res!476180 (validKeyInArray!0 (select (arr!19343 a!3591) from!2969)))))

(declare-fun b!712898 () Bool)

(assert (=> b!712898 (= e!400980 call!34579)))

(declare-fun d!97975 () Bool)

(declare-fun res!476179 () Bool)

(assert (=> d!97975 (=> res!476179 e!400979)))

(assert (=> d!97975 (= res!476179 (bvsge from!2969 (size!19752 a!3591)))))

(assert (=> d!97975 (= (arrayNoDuplicates!0 a!3591 from!2969 newAcc!49) e!400979)))

(declare-fun bm!34576 () Bool)

(assert (=> bm!34576 (= call!34579 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78725 (Cons!13433 (select (arr!19343 a!3591) from!2969) newAcc!49) newAcc!49)))))

(assert (= (and d!97975 (not res!476179)) b!712897))

(assert (= (and b!712897 res!476180) b!712894))

(assert (= (and b!712897 res!476178) b!712895))

(assert (= (and b!712895 c!78725) b!712896))

(assert (= (and b!712895 (not c!78725)) b!712898))

(assert (= (or b!712896 b!712898) bm!34576))

(assert (=> b!712894 m!669625))

(assert (=> b!712894 m!669625))

(declare-fun m!669817 () Bool)

(assert (=> b!712894 m!669817))

(assert (=> b!712895 m!669625))

(assert (=> b!712895 m!669625))

(assert (=> b!712895 m!669627))

(assert (=> b!712897 m!669625))

(assert (=> b!712897 m!669625))

(assert (=> b!712897 m!669627))

(assert (=> bm!34576 m!669625))

(declare-fun m!669819 () Bool)

(assert (=> bm!34576 m!669819))

(assert (=> b!712697 d!97975))

(declare-fun e!400988 () Bool)

(declare-fun b!712905 () Bool)

(assert (=> b!712905 (= e!400988 (contains!3980 lt!318569 (select (arr!19343 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!712906 () Bool)

(declare-fun e!400987 () Bool)

(declare-fun e!400990 () Bool)

(assert (=> b!712906 (= e!400987 e!400990)))

(declare-fun c!78726 () Bool)

(assert (=> b!712906 (= c!78726 (validKeyInArray!0 (select (arr!19343 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!712907 () Bool)

(declare-fun call!34580 () Bool)

(assert (=> b!712907 (= e!400990 call!34580)))

(declare-fun b!712908 () Bool)

(declare-fun e!400989 () Bool)

(assert (=> b!712908 (= e!400989 e!400987)))

(declare-fun res!476187 () Bool)

(assert (=> b!712908 (=> (not res!476187) (not e!400987))))

(assert (=> b!712908 (= res!476187 (not e!400988))))

(declare-fun res!476189 () Bool)

(assert (=> b!712908 (=> (not res!476189) (not e!400988))))

(assert (=> b!712908 (= res!476189 (validKeyInArray!0 (select (arr!19343 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!712909 () Bool)

(assert (=> b!712909 (= e!400990 call!34580)))

(declare-fun d!98005 () Bool)

(declare-fun res!476188 () Bool)

(assert (=> d!98005 (=> res!476188 e!400989)))

(assert (=> d!98005 (= res!476188 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19752 a!3591)))))

(assert (=> d!98005 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318569) e!400989)))

(declare-fun bm!34577 () Bool)

(assert (=> bm!34577 (= call!34580 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78726 (Cons!13433 (select (arr!19343 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) lt!318569) lt!318569)))))

(assert (= (and d!98005 (not res!476188)) b!712908))

(assert (= (and b!712908 res!476189) b!712905))

(assert (= (and b!712908 res!476187) b!712906))

(assert (= (and b!712906 c!78726) b!712907))

(assert (= (and b!712906 (not c!78726)) b!712909))

(assert (= (or b!712907 b!712909) bm!34577))

(declare-fun m!669829 () Bool)

(assert (=> b!712905 m!669829))

(assert (=> b!712905 m!669829))

(declare-fun m!669831 () Bool)

(assert (=> b!712905 m!669831))

(assert (=> b!712906 m!669829))

(assert (=> b!712906 m!669829))

(declare-fun m!669837 () Bool)

(assert (=> b!712906 m!669837))

(assert (=> b!712908 m!669829))

(assert (=> b!712908 m!669829))

(assert (=> b!712908 m!669837))

(assert (=> bm!34577 m!669829))

(declare-fun m!669839 () Bool)

(assert (=> bm!34577 m!669839))

(assert (=> b!712697 d!98005))

(declare-fun d!98013 () Bool)

(assert (=> d!98013 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318569)))

(declare-fun lt!318604 () Unit!24614)

(declare-fun choose!66 (array!40411 (_ BitVec 64) (_ BitVec 32) List!13437 List!13437) Unit!24614)

(assert (=> d!98013 (= lt!318604 (choose!66 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!318567 lt!318569))))

(assert (=> d!98013 (bvslt (size!19752 a!3591) #b01111111111111111111111111111111)))

(assert (=> d!98013 (= (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!318567 lt!318569) lt!318604)))

(declare-fun bs!20553 () Bool)

(assert (= bs!20553 d!98013))

(assert (=> bs!20553 m!669609))

(declare-fun m!669855 () Bool)

(assert (=> bs!20553 m!669855))

(assert (=> b!712697 d!98013))

(declare-fun d!98019 () Bool)

(declare-fun lt!318605 () Bool)

(assert (=> d!98019 (= lt!318605 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!365 lt!318569)))))

(declare-fun e!401008 () Bool)

(assert (=> d!98019 (= lt!318605 e!401008)))

(declare-fun res!476205 () Bool)

(assert (=> d!98019 (=> (not res!476205) (not e!401008))))

(assert (=> d!98019 (= res!476205 (is-Cons!13433 lt!318569))))

(assert (=> d!98019 (= (contains!3980 lt!318569 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318605)))

(declare-fun b!712927 () Bool)

(declare-fun e!401007 () Bool)

(assert (=> b!712927 (= e!401008 e!401007)))

(declare-fun res!476206 () Bool)

(assert (=> b!712927 (=> res!476206 e!401007)))

(assert (=> b!712927 (= res!476206 (= (h!14478 lt!318569) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712928 () Bool)

(assert (=> b!712928 (= e!401007 (contains!3980 (t!19757 lt!318569) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98019 res!476205) b!712927))

(assert (= (and b!712927 (not res!476206)) b!712928))

(assert (=> d!98019 m!669741))

(declare-fun m!669857 () Bool)

(assert (=> d!98019 m!669857))

(declare-fun m!669859 () Bool)

(assert (=> b!712928 m!669859))

(assert (=> b!712698 d!98019))

(declare-fun b!712967 () Bool)

(declare-fun lt!318608 () List!13437)

(declare-fun e!401042 () Bool)

(assert (=> b!712967 (= e!401042 (= (content!365 lt!318608) (setminus (content!365 lt!318569) (insert k!2824 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun b!712968 () Bool)

(declare-fun e!401043 () List!13437)

(declare-fun call!34586 () List!13437)

(assert (=> b!712968 (= e!401043 (Cons!13433 (h!14478 lt!318569) call!34586))))

(declare-fun b!712969 () Bool)

(declare-fun e!401044 () List!13437)

(assert (=> b!712969 (= e!401044 Nil!13434)))

(declare-fun d!98021 () Bool)

(assert (=> d!98021 e!401042))

(declare-fun res!476233 () Bool)

(assert (=> d!98021 (=> (not res!476233) (not e!401042))))

(declare-fun size!19755 (List!13437) Int)

(assert (=> d!98021 (= res!476233 (<= (size!19755 lt!318608) (size!19755 lt!318569)))))

(assert (=> d!98021 (= lt!318608 e!401044)))

(declare-fun c!78734 () Bool)

(assert (=> d!98021 (= c!78734 (is-Cons!13433 lt!318569))))

(assert (=> d!98021 (= (-!389 lt!318569 k!2824) lt!318608)))

(declare-fun b!712970 () Bool)

(assert (=> b!712970 (= e!401043 call!34586)))

(declare-fun bm!34583 () Bool)

(assert (=> bm!34583 (= call!34586 (-!389 (t!19757 lt!318569) k!2824))))

(declare-fun b!712971 () Bool)

(assert (=> b!712971 (= e!401044 e!401043)))

(declare-fun c!78735 () Bool)

(assert (=> b!712971 (= c!78735 (= k!2824 (h!14478 lt!318569)))))

(assert (= (and d!98021 c!78734) b!712971))

(assert (= (and d!98021 (not c!78734)) b!712969))

(assert (= (and b!712971 c!78735) b!712970))

(assert (= (and b!712971 (not c!78735)) b!712968))

(assert (= (or b!712970 b!712968) bm!34583))

(assert (= (and d!98021 res!476233) b!712967))

(declare-fun m!669871 () Bool)

(assert (=> b!712967 m!669871))

(assert (=> b!712967 m!669741))

(declare-fun m!669875 () Bool)

(assert (=> b!712967 m!669875))

(declare-fun m!669879 () Bool)

(assert (=> d!98021 m!669879))

(declare-fun m!669881 () Bool)

(assert (=> d!98021 m!669881))

(declare-fun m!669883 () Bool)

(assert (=> bm!34583 m!669883))

(assert (=> b!712699 d!98021))

(declare-fun d!98031 () Bool)

(assert (=> d!98031 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!712700 d!98031))

(declare-fun d!98033 () Bool)

(declare-fun lt!318609 () Bool)

(assert (=> d!98033 (= lt!318609 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!365 newAcc!49)))))

(declare-fun e!401046 () Bool)

(assert (=> d!98033 (= lt!318609 e!401046)))

(declare-fun res!476234 () Bool)

(assert (=> d!98033 (=> (not res!476234) (not e!401046))))

(assert (=> d!98033 (= res!476234 (is-Cons!13433 newAcc!49))))

(assert (=> d!98033 (= (contains!3980 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318609)))

(declare-fun b!712972 () Bool)

(declare-fun e!401045 () Bool)

(assert (=> b!712972 (= e!401046 e!401045)))

(declare-fun res!476235 () Bool)

(assert (=> b!712972 (=> res!476235 e!401045)))

(assert (=> b!712972 (= res!476235 (= (h!14478 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712973 () Bool)

(assert (=> b!712973 (= e!401045 (contains!3980 (t!19757 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98033 res!476234) b!712972))

(assert (= (and b!712972 (not res!476235)) b!712973))

(declare-fun m!669885 () Bool)

(assert (=> d!98033 m!669885))

(declare-fun m!669887 () Bool)

(assert (=> d!98033 m!669887))

(declare-fun m!669889 () Bool)

(assert (=> b!712973 m!669889))

(assert (=> b!712701 d!98033))

(declare-fun d!98035 () Bool)

(declare-fun lt!318610 () Bool)

(assert (=> d!98035 (= lt!318610 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!365 lt!318569)))))

(declare-fun e!401048 () Bool)

(assert (=> d!98035 (= lt!318610 e!401048)))

(declare-fun res!476236 () Bool)

(assert (=> d!98035 (=> (not res!476236) (not e!401048))))

(assert (=> d!98035 (= res!476236 (is-Cons!13433 lt!318569))))

(assert (=> d!98035 (= (contains!3980 lt!318569 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318610)))

(declare-fun b!712974 () Bool)

(declare-fun e!401047 () Bool)

(assert (=> b!712974 (= e!401048 e!401047)))

(declare-fun res!476237 () Bool)

(assert (=> b!712974 (=> res!476237 e!401047)))

(assert (=> b!712974 (= res!476237 (= (h!14478 lt!318569) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712975 () Bool)

(assert (=> b!712975 (= e!401047 (contains!3980 (t!19757 lt!318569) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98035 res!476236) b!712974))

(assert (= (and b!712974 (not res!476237)) b!712975))

(assert (=> d!98035 m!669741))

(declare-fun m!669891 () Bool)

(assert (=> d!98035 m!669891))

(declare-fun m!669893 () Bool)

(assert (=> b!712975 m!669893))

(assert (=> b!712702 d!98035))

(declare-fun d!98037 () Bool)

(assert (=> d!98037 (= ($colon$colon!534 newAcc!49 (select (arr!19343 a!3591) from!2969)) (Cons!13433 (select (arr!19343 a!3591) from!2969) newAcc!49))))

(assert (=> b!712703 d!98037))

(declare-fun d!98039 () Bool)

(assert (=> d!98039 (= ($colon$colon!534 acc!652 (select (arr!19343 a!3591) from!2969)) (Cons!13433 (select (arr!19343 a!3591) from!2969) acc!652))))

(assert (=> b!712703 d!98039))

(declare-fun d!98041 () Bool)

(declare-fun lt!318614 () Bool)

(assert (=> d!98041 (= lt!318614 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!365 acc!652)))))

(declare-fun e!401050 () Bool)

(assert (=> d!98041 (= lt!318614 e!401050)))

(declare-fun res!476238 () Bool)

(assert (=> d!98041 (=> (not res!476238) (not e!401050))))

(assert (=> d!98041 (= res!476238 (is-Cons!13433 acc!652))))

(assert (=> d!98041 (= (contains!3980 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318614)))

(declare-fun b!712976 () Bool)

(declare-fun e!401049 () Bool)

(assert (=> b!712976 (= e!401050 e!401049)))

(declare-fun res!476239 () Bool)

(assert (=> b!712976 (=> res!476239 e!401049)))

(assert (=> b!712976 (= res!476239 (= (h!14478 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712977 () Bool)

(assert (=> b!712977 (= e!401049 (contains!3980 (t!19757 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98041 res!476238) b!712976))

(assert (= (and b!712976 (not res!476239)) b!712977))

(assert (=> d!98041 m!669727))

(declare-fun m!669897 () Bool)

(assert (=> d!98041 m!669897))

(declare-fun m!669899 () Bool)

(assert (=> b!712977 m!669899))

(assert (=> b!712704 d!98041))

(declare-fun d!98045 () Bool)

(declare-fun res!476242 () Bool)

(declare-fun e!401053 () Bool)

(assert (=> d!98045 (=> res!476242 e!401053)))

(assert (=> d!98045 (= res!476242 (is-Nil!13434 lt!318567))))

(assert (=> d!98045 (= (noDuplicate!1227 lt!318567) e!401053)))

