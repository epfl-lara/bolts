; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62070 () Bool)

(assert start!62070)

(declare-fun b!694728 () Bool)

(declare-fun res!458927 () Bool)

(declare-fun e!395125 () Bool)

(assert (=> b!694728 (=> (not res!458927) (not e!395125))))

(declare-datatypes ((array!39867 0))(
  ( (array!39868 (arr!19092 (Array (_ BitVec 32) (_ BitVec 64))) (size!19475 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39867)

(declare-datatypes ((List!13186 0))(
  ( (Nil!13183) (Cons!13182 (h!14227 (_ BitVec 64)) (t!19473 List!13186)) )
))
(declare-fun arrayNoDuplicates!0 (array!39867 (_ BitVec 32) List!13186) Bool)

(assert (=> b!694728 (= res!458927 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13183))))

(declare-fun b!694729 () Bool)

(declare-fun res!458926 () Bool)

(assert (=> b!694729 (=> (not res!458926) (not e!395125))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!694729 (= res!458926 (validKeyInArray!0 k!2843))))

(declare-fun b!694730 () Bool)

(declare-fun res!458914 () Bool)

(assert (=> b!694730 (=> (not res!458914) (not e!395125))))

(declare-fun acc!681 () List!13186)

(declare-fun contains!3729 (List!13186 (_ BitVec 64)) Bool)

(assert (=> b!694730 (= res!458914 (not (contains!3729 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694731 () Bool)

(declare-fun e!395127 () Bool)

(declare-fun e!395131 () Bool)

(assert (=> b!694731 (= e!395127 e!395131)))

(declare-fun res!458909 () Bool)

(assert (=> b!694731 (=> (not res!458909) (not e!395131))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!694731 (= res!458909 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694732 () Bool)

(declare-fun res!458920 () Bool)

(declare-fun e!395129 () Bool)

(assert (=> b!694732 (=> (not res!458920) (not e!395129))))

(declare-fun lt!316916 () List!13186)

(assert (=> b!694732 (= res!458920 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316916))))

(declare-fun res!458907 () Bool)

(assert (=> start!62070 (=> (not res!458907) (not e!395125))))

(assert (=> start!62070 (= res!458907 (and (bvslt (size!19475 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19475 a!3626))))))

(assert (=> start!62070 e!395125))

(assert (=> start!62070 true))

(declare-fun array_inv!14866 (array!39867) Bool)

(assert (=> start!62070 (array_inv!14866 a!3626)))

(declare-fun b!694733 () Bool)

(declare-fun e!395124 () Bool)

(assert (=> b!694733 (= e!395124 (not (contains!3729 acc!681 k!2843)))))

(declare-fun b!694734 () Bool)

(declare-fun res!458906 () Bool)

(assert (=> b!694734 (=> (not res!458906) (not e!395129))))

(assert (=> b!694734 (= res!458906 (not (contains!3729 lt!316916 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694735 () Bool)

(assert (=> b!694735 (= e!395131 (not (contains!3729 lt!316916 k!2843)))))

(declare-fun b!694736 () Bool)

(declare-fun e!395130 () Bool)

(assert (=> b!694736 (= e!395130 e!395124)))

(declare-fun res!458919 () Bool)

(assert (=> b!694736 (=> (not res!458919) (not e!395124))))

(assert (=> b!694736 (= res!458919 (bvsle from!3004 i!1382))))

(declare-fun lt!316913 () array!39867)

(declare-fun b!694737 () Bool)

(assert (=> b!694737 (= e!395129 (not (arrayNoDuplicates!0 lt!316913 from!3004 acc!681)))))

(assert (=> b!694737 (arrayNoDuplicates!0 lt!316913 (bvadd #b00000000000000000000000000000001 from!3004) lt!316916)))

(assert (=> b!694737 (= lt!316913 (array!39868 (store (arr!19092 a!3626) i!1382 k!2843) (size!19475 a!3626)))))

(declare-datatypes ((Unit!24538 0))(
  ( (Unit!24539) )
))
(declare-fun lt!316917 () Unit!24538)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39867 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13186) Unit!24538)

(assert (=> b!694737 (= lt!316917 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!316916))))

(declare-fun b!694738 () Bool)

(declare-fun res!458911 () Bool)

(assert (=> b!694738 (=> (not res!458911) (not e!395129))))

(assert (=> b!694738 (= res!458911 e!395127)))

(declare-fun res!458910 () Bool)

(assert (=> b!694738 (=> res!458910 e!395127)))

(declare-fun e!395128 () Bool)

(assert (=> b!694738 (= res!458910 e!395128)))

(declare-fun res!458929 () Bool)

(assert (=> b!694738 (=> (not res!458929) (not e!395128))))

(assert (=> b!694738 (= res!458929 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694739 () Bool)

(declare-fun e!395121 () Bool)

(assert (=> b!694739 (= e!395121 (contains!3729 acc!681 k!2843))))

(declare-fun b!694740 () Bool)

(declare-fun res!458917 () Bool)

(assert (=> b!694740 (=> (not res!458917) (not e!395125))))

(assert (=> b!694740 (= res!458917 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19475 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!694741 () Bool)

(declare-fun res!458923 () Bool)

(assert (=> b!694741 (=> (not res!458923) (not e!395129))))

(declare-fun noDuplicate!976 (List!13186) Bool)

(assert (=> b!694741 (= res!458923 (noDuplicate!976 lt!316916))))

(declare-fun b!694742 () Bool)

(declare-fun res!458916 () Bool)

(assert (=> b!694742 (=> (not res!458916) (not e!395125))))

(assert (=> b!694742 (= res!458916 e!395130)))

(declare-fun res!458928 () Bool)

(assert (=> b!694742 (=> res!458928 e!395130)))

(assert (=> b!694742 (= res!458928 e!395121)))

(declare-fun res!458912 () Bool)

(assert (=> b!694742 (=> (not res!458912) (not e!395121))))

(assert (=> b!694742 (= res!458912 (bvsgt from!3004 i!1382))))

(declare-fun b!694743 () Bool)

(declare-fun res!458918 () Bool)

(assert (=> b!694743 (=> (not res!458918) (not e!395125))))

(assert (=> b!694743 (= res!458918 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19475 a!3626))))))

(declare-fun b!694744 () Bool)

(declare-fun e!395123 () Unit!24538)

(declare-fun Unit!24540 () Unit!24538)

(assert (=> b!694744 (= e!395123 Unit!24540)))

(declare-fun b!694745 () Bool)

(assert (=> b!694745 (= e!395128 (contains!3729 lt!316916 k!2843))))

(declare-fun b!694746 () Bool)

(declare-fun res!458925 () Bool)

(assert (=> b!694746 (=> (not res!458925) (not e!395129))))

(assert (=> b!694746 (= res!458925 (not (contains!3729 lt!316916 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694747 () Bool)

(declare-fun e!395122 () Bool)

(assert (=> b!694747 (= e!395125 e!395122)))

(declare-fun res!458915 () Bool)

(assert (=> b!694747 (=> (not res!458915) (not e!395122))))

(assert (=> b!694747 (= res!458915 (not (= (select (arr!19092 a!3626) from!3004) k!2843)))))

(declare-fun lt!316914 () Unit!24538)

(assert (=> b!694747 (= lt!316914 e!395123)))

(declare-fun c!78278 () Bool)

(assert (=> b!694747 (= c!78278 (= (select (arr!19092 a!3626) from!3004) k!2843))))

(declare-fun b!694748 () Bool)

(declare-fun res!458921 () Bool)

(assert (=> b!694748 (=> (not res!458921) (not e!395125))))

(assert (=> b!694748 (= res!458921 (validKeyInArray!0 (select (arr!19092 a!3626) from!3004)))))

(declare-fun b!694749 () Bool)

(declare-fun res!458913 () Bool)

(assert (=> b!694749 (=> (not res!458913) (not e!395125))))

(assert (=> b!694749 (= res!458913 (noDuplicate!976 acc!681))))

(declare-fun b!694750 () Bool)

(declare-fun res!458924 () Bool)

(assert (=> b!694750 (=> (not res!458924) (not e!395125))))

(assert (=> b!694750 (= res!458924 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!694751 () Bool)

(assert (=> b!694751 (= e!395122 e!395129)))

(declare-fun res!458922 () Bool)

(assert (=> b!694751 (=> (not res!458922) (not e!395129))))

(assert (=> b!694751 (= res!458922 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!439 (List!13186 (_ BitVec 64)) List!13186)

(assert (=> b!694751 (= lt!316916 ($colon$colon!439 acc!681 (select (arr!19092 a!3626) from!3004)))))

(declare-fun b!694752 () Bool)

(declare-fun res!458930 () Bool)

(assert (=> b!694752 (=> (not res!458930) (not e!395125))))

(assert (=> b!694752 (= res!458930 (not (contains!3729 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694753 () Bool)

(declare-fun Unit!24541 () Unit!24538)

(assert (=> b!694753 (= e!395123 Unit!24541)))

(declare-fun arrayContainsKey!0 (array!39867 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!694753 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316915 () Unit!24538)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39867 (_ BitVec 64) (_ BitVec 32)) Unit!24538)

(assert (=> b!694753 (= lt!316915 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!694753 false))

(declare-fun b!694754 () Bool)

(declare-fun res!458908 () Bool)

(assert (=> b!694754 (=> (not res!458908) (not e!395125))))

(assert (=> b!694754 (= res!458908 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!62070 res!458907) b!694749))

(assert (= (and b!694749 res!458913) b!694752))

(assert (= (and b!694752 res!458930) b!694730))

(assert (= (and b!694730 res!458914) b!694742))

(assert (= (and b!694742 res!458912) b!694739))

(assert (= (and b!694742 (not res!458928)) b!694736))

(assert (= (and b!694736 res!458919) b!694733))

(assert (= (and b!694742 res!458916) b!694728))

(assert (= (and b!694728 res!458927) b!694750))

(assert (= (and b!694750 res!458924) b!694743))

(assert (= (and b!694743 res!458918) b!694729))

(assert (= (and b!694729 res!458926) b!694754))

(assert (= (and b!694754 res!458908) b!694740))

(assert (= (and b!694740 res!458917) b!694748))

(assert (= (and b!694748 res!458921) b!694747))

(assert (= (and b!694747 c!78278) b!694753))

(assert (= (and b!694747 (not c!78278)) b!694744))

(assert (= (and b!694747 res!458915) b!694751))

(assert (= (and b!694751 res!458922) b!694741))

(assert (= (and b!694741 res!458923) b!694734))

(assert (= (and b!694734 res!458906) b!694746))

(assert (= (and b!694746 res!458925) b!694738))

(assert (= (and b!694738 res!458929) b!694745))

(assert (= (and b!694738 (not res!458910)) b!694731))

(assert (= (and b!694731 res!458909) b!694735))

(assert (= (and b!694738 res!458911) b!694732))

(assert (= (and b!694732 res!458920) b!694737))

(declare-fun m!656379 () Bool)

(assert (=> b!694745 m!656379))

(declare-fun m!656381 () Bool)

(assert (=> b!694750 m!656381))

(declare-fun m!656383 () Bool)

(assert (=> b!694754 m!656383))

(declare-fun m!656385 () Bool)

(assert (=> b!694748 m!656385))

(assert (=> b!694748 m!656385))

(declare-fun m!656387 () Bool)

(assert (=> b!694748 m!656387))

(declare-fun m!656389 () Bool)

(assert (=> b!694749 m!656389))

(assert (=> b!694751 m!656385))

(assert (=> b!694751 m!656385))

(declare-fun m!656391 () Bool)

(assert (=> b!694751 m!656391))

(declare-fun m!656393 () Bool)

(assert (=> b!694730 m!656393))

(declare-fun m!656395 () Bool)

(assert (=> b!694737 m!656395))

(declare-fun m!656397 () Bool)

(assert (=> b!694737 m!656397))

(declare-fun m!656399 () Bool)

(assert (=> b!694737 m!656399))

(declare-fun m!656401 () Bool)

(assert (=> b!694737 m!656401))

(declare-fun m!656403 () Bool)

(assert (=> b!694739 m!656403))

(declare-fun m!656405 () Bool)

(assert (=> b!694753 m!656405))

(declare-fun m!656407 () Bool)

(assert (=> b!694753 m!656407))

(declare-fun m!656409 () Bool)

(assert (=> b!694752 m!656409))

(declare-fun m!656411 () Bool)

(assert (=> b!694732 m!656411))

(assert (=> b!694747 m!656385))

(declare-fun m!656413 () Bool)

(assert (=> b!694729 m!656413))

(declare-fun m!656415 () Bool)

(assert (=> start!62070 m!656415))

(assert (=> b!694733 m!656403))

(declare-fun m!656417 () Bool)

(assert (=> b!694734 m!656417))

(assert (=> b!694735 m!656379))

(declare-fun m!656419 () Bool)

(assert (=> b!694746 m!656419))

(declare-fun m!656421 () Bool)

(assert (=> b!694728 m!656421))

(declare-fun m!656423 () Bool)

(assert (=> b!694741 m!656423))

(push 1)

(assert (not b!694746))

(assert (not b!694753))

(assert (not b!694739))

(assert (not b!694750))

(assert (not b!694730))

(assert (not b!694728))

(assert (not b!694754))

(assert (not b!694748))

(assert (not b!694751))

(assert (not b!694732))

(assert (not b!694734))

(assert (not b!694733))

(assert (not b!694745))

(assert (not b!694729))

(assert (not b!694752))

(assert (not b!694735))

(assert (not b!694741))

(assert (not start!62070))

(assert (not b!694737))

(assert (not b!694749))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!95855 () Bool)

(declare-fun res!459147 () Bool)

(declare-fun e!395273 () Bool)

(assert (=> d!95855 (=> res!459147 e!395273)))

(assert (=> d!95855 (= res!459147 (is-Nil!13183 acc!681))))

(assert (=> d!95855 (= (noDuplicate!976 acc!681) e!395273)))

(declare-fun b!695001 () Bool)

(declare-fun e!395274 () Bool)

(assert (=> b!695001 (= e!395273 e!395274)))

(declare-fun res!459148 () Bool)

(assert (=> b!695001 (=> (not res!459148) (not e!395274))))

(assert (=> b!695001 (= res!459148 (not (contains!3729 (t!19473 acc!681) (h!14227 acc!681))))))

(declare-fun b!695002 () Bool)

(assert (=> b!695002 (= e!395274 (noDuplicate!976 (t!19473 acc!681)))))

(assert (= (and d!95855 (not res!459147)) b!695001))

(assert (= (and b!695001 res!459148) b!695002))

(declare-fun m!656599 () Bool)

(assert (=> b!695001 m!656599))

(declare-fun m!656601 () Bool)

(assert (=> b!695002 m!656601))

(assert (=> b!694749 d!95855))

(declare-fun b!695022 () Bool)

(declare-fun e!395292 () Bool)

(declare-fun call!34287 () Bool)

(assert (=> b!695022 (= e!395292 call!34287)))

(declare-fun b!695023 () Bool)

(declare-fun e!395291 () Bool)

(assert (=> b!695023 (= e!395291 (contains!3729 Nil!13183 (select (arr!19092 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!695024 () Bool)

(declare-fun e!395293 () Bool)

(assert (=> b!695024 (= e!395293 e!395292)))

(declare-fun c!78297 () Bool)

(assert (=> b!695024 (= c!78297 (validKeyInArray!0 (select (arr!19092 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!695025 () Bool)

(declare-fun e!395294 () Bool)

(assert (=> b!695025 (= e!395294 e!395293)))

(declare-fun res!459164 () Bool)

(assert (=> b!695025 (=> (not res!459164) (not e!395293))))

(assert (=> b!695025 (= res!459164 (not e!395291))))

(declare-fun res!459163 () Bool)

(assert (=> b!695025 (=> (not res!459163) (not e!395291))))

(assert (=> b!695025 (= res!459163 (validKeyInArray!0 (select (arr!19092 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!695026 () Bool)

(assert (=> b!695026 (= e!395292 call!34287)))

(declare-fun d!95857 () Bool)

(declare-fun res!459162 () Bool)

(assert (=> d!95857 (=> res!459162 e!395294)))

(assert (=> d!95857 (= res!459162 (bvsge #b00000000000000000000000000000000 (size!19475 a!3626)))))

(assert (=> d!95857 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13183) e!395294)))

(declare-fun bm!34284 () Bool)

(assert (=> bm!34284 (= call!34287 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78297 (Cons!13182 (select (arr!19092 a!3626) #b00000000000000000000000000000000) Nil!13183) Nil!13183)))))

(assert (= (and d!95857 (not res!459162)) b!695025))

(assert (= (and b!695025 res!459163) b!695023))

(assert (= (and b!695025 res!459164) b!695024))

(assert (= (and b!695024 c!78297) b!695026))

(assert (= (and b!695024 (not c!78297)) b!695022))

(assert (= (or b!695026 b!695022) bm!34284))

(declare-fun m!656607 () Bool)

(assert (=> b!695023 m!656607))

(assert (=> b!695023 m!656607))

(declare-fun m!656609 () Bool)

(assert (=> b!695023 m!656609))

(assert (=> b!695024 m!656607))

(assert (=> b!695024 m!656607))

(declare-fun m!656611 () Bool)

(assert (=> b!695024 m!656611))

(assert (=> b!695025 m!656607))

(assert (=> b!695025 m!656607))

(assert (=> b!695025 m!656611))

(assert (=> bm!34284 m!656607))

(declare-fun m!656613 () Bool)

(assert (=> bm!34284 m!656613))

(assert (=> b!694728 d!95857))

(declare-fun d!95861 () Bool)

(declare-fun lt!316967 () Bool)

(declare-fun content!323 (List!13186) (Set (_ BitVec 64)))

(assert (=> d!95861 (= lt!316967 (set.member k!2843 (content!323 acc!681)))))

(declare-fun e!395305 () Bool)

(assert (=> d!95861 (= lt!316967 e!395305)))

(declare-fun res!459175 () Bool)

(assert (=> d!95861 (=> (not res!459175) (not e!395305))))

(assert (=> d!95861 (= res!459175 (is-Cons!13182 acc!681))))

(assert (=> d!95861 (= (contains!3729 acc!681 k!2843) lt!316967)))

(declare-fun b!695038 () Bool)

(declare-fun e!395306 () Bool)

(assert (=> b!695038 (= e!395305 e!395306)))

(declare-fun res!459174 () Bool)

(assert (=> b!695038 (=> res!459174 e!395306)))

(assert (=> b!695038 (= res!459174 (= (h!14227 acc!681) k!2843))))

(declare-fun b!695039 () Bool)

(assert (=> b!695039 (= e!395306 (contains!3729 (t!19473 acc!681) k!2843))))

(assert (= (and d!95861 res!459175) b!695038))

(assert (= (and b!695038 (not res!459174)) b!695039))

(declare-fun m!656629 () Bool)

(assert (=> d!95861 m!656629))

(declare-fun m!656631 () Bool)

(assert (=> d!95861 m!656631))

(declare-fun m!656633 () Bool)

(assert (=> b!695039 m!656633))

(assert (=> b!694739 d!95861))

(declare-fun d!95867 () Bool)

(assert (=> d!95867 (= (array_inv!14866 a!3626) (bvsge (size!19475 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!62070 d!95867))

(declare-fun b!695040 () Bool)

(declare-fun e!395308 () Bool)

(declare-fun call!34289 () Bool)

(assert (=> b!695040 (= e!395308 call!34289)))

(declare-fun b!695041 () Bool)

(declare-fun e!395307 () Bool)

(assert (=> b!695041 (= e!395307 (contains!3729 acc!681 (select (arr!19092 a!3626) from!3004)))))

(declare-fun b!695042 () Bool)

(declare-fun e!395309 () Bool)

(assert (=> b!695042 (= e!395309 e!395308)))

(declare-fun c!78299 () Bool)

(assert (=> b!695042 (= c!78299 (validKeyInArray!0 (select (arr!19092 a!3626) from!3004)))))

(declare-fun b!695043 () Bool)

(declare-fun e!395310 () Bool)

(assert (=> b!695043 (= e!395310 e!395309)))

(declare-fun res!459178 () Bool)

(assert (=> b!695043 (=> (not res!459178) (not e!395309))))

(assert (=> b!695043 (= res!459178 (not e!395307))))

(declare-fun res!459177 () Bool)

(assert (=> b!695043 (=> (not res!459177) (not e!395307))))

(assert (=> b!695043 (= res!459177 (validKeyInArray!0 (select (arr!19092 a!3626) from!3004)))))

(declare-fun b!695044 () Bool)

(assert (=> b!695044 (= e!395308 call!34289)))

(declare-fun d!95869 () Bool)

(declare-fun res!459176 () Bool)

(assert (=> d!95869 (=> res!459176 e!395310)))

(assert (=> d!95869 (= res!459176 (bvsge from!3004 (size!19475 a!3626)))))

(assert (=> d!95869 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!395310)))

(declare-fun bm!34286 () Bool)

(assert (=> bm!34286 (= call!34289 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78299 (Cons!13182 (select (arr!19092 a!3626) from!3004) acc!681) acc!681)))))

(assert (= (and d!95869 (not res!459176)) b!695043))

(assert (= (and b!695043 res!459177) b!695041))

(assert (= (and b!695043 res!459178) b!695042))

(assert (= (and b!695042 c!78299) b!695044))

(assert (= (and b!695042 (not c!78299)) b!695040))

(assert (= (or b!695044 b!695040) bm!34286))

(assert (=> b!695041 m!656385))

(assert (=> b!695041 m!656385))

(declare-fun m!656635 () Bool)

(assert (=> b!695041 m!656635))

(assert (=> b!695042 m!656385))

(assert (=> b!695042 m!656385))

(assert (=> b!695042 m!656387))

(assert (=> b!695043 m!656385))

(assert (=> b!695043 m!656385))

(assert (=> b!695043 m!656387))

(assert (=> bm!34286 m!656385))

(declare-fun m!656637 () Bool)

(assert (=> bm!34286 m!656637))

(assert (=> b!694750 d!95869))

(declare-fun d!95871 () Bool)

(assert (=> d!95871 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!694729 d!95871))

(declare-fun d!95873 () Bool)

(assert (=> d!95873 (= ($colon$colon!439 acc!681 (select (arr!19092 a!3626) from!3004)) (Cons!13182 (select (arr!19092 a!3626) from!3004) acc!681))))

(assert (=> b!694751 d!95873))

(declare-fun d!95875 () Bool)

(declare-fun lt!316968 () Bool)

(assert (=> d!95875 (= lt!316968 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!323 acc!681)))))

(declare-fun e!395317 () Bool)

(assert (=> d!95875 (= lt!316968 e!395317)))

(declare-fun res!459186 () Bool)

(assert (=> d!95875 (=> (not res!459186) (not e!395317))))

(assert (=> d!95875 (= res!459186 (is-Cons!13182 acc!681))))

(assert (=> d!95875 (= (contains!3729 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316968)))

(declare-fun b!695051 () Bool)

(declare-fun e!395318 () Bool)

(assert (=> b!695051 (= e!395317 e!395318)))

(declare-fun res!459185 () Bool)

(assert (=> b!695051 (=> res!459185 e!395318)))

(assert (=> b!695051 (= res!459185 (= (h!14227 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!695052 () Bool)

(assert (=> b!695052 (= e!395318 (contains!3729 (t!19473 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95875 res!459186) b!695051))

(assert (= (and b!695051 (not res!459185)) b!695052))

(assert (=> d!95875 m!656629))

(declare-fun m!656643 () Bool)

(assert (=> d!95875 m!656643))

(declare-fun m!656645 () Bool)

(assert (=> b!695052 m!656645))

(assert (=> b!694730 d!95875))

(declare-fun b!695053 () Bool)

(declare-fun e!395320 () Bool)

(declare-fun call!34290 () Bool)

(assert (=> b!695053 (= e!395320 call!34290)))

(declare-fun b!695054 () Bool)

(declare-fun e!395319 () Bool)

(assert (=> b!695054 (= e!395319 (contains!3729 acc!681 (select (arr!19092 lt!316913) from!3004)))))

(declare-fun b!695055 () Bool)

(declare-fun e!395321 () Bool)

(assert (=> b!695055 (= e!395321 e!395320)))

(declare-fun c!78300 () Bool)

(assert (=> b!695055 (= c!78300 (validKeyInArray!0 (select (arr!19092 lt!316913) from!3004)))))

(declare-fun b!695056 () Bool)

(declare-fun e!395322 () Bool)

(assert (=> b!695056 (= e!395322 e!395321)))

(declare-fun res!459189 () Bool)

(assert (=> b!695056 (=> (not res!459189) (not e!395321))))

(assert (=> b!695056 (= res!459189 (not e!395319))))

(declare-fun res!459188 () Bool)

(assert (=> b!695056 (=> (not res!459188) (not e!395319))))

(assert (=> b!695056 (= res!459188 (validKeyInArray!0 (select (arr!19092 lt!316913) from!3004)))))

(declare-fun b!695057 () Bool)

(assert (=> b!695057 (= e!395320 call!34290)))

(declare-fun d!95879 () Bool)

(declare-fun res!459187 () Bool)

(assert (=> d!95879 (=> res!459187 e!395322)))

(assert (=> d!95879 (= res!459187 (bvsge from!3004 (size!19475 lt!316913)))))

(assert (=> d!95879 (= (arrayNoDuplicates!0 lt!316913 from!3004 acc!681) e!395322)))

(declare-fun bm!34287 () Bool)

(assert (=> bm!34287 (= call!34290 (arrayNoDuplicates!0 lt!316913 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78300 (Cons!13182 (select (arr!19092 lt!316913) from!3004) acc!681) acc!681)))))

(assert (= (and d!95879 (not res!459187)) b!695056))

(assert (= (and b!695056 res!459188) b!695054))

(assert (= (and b!695056 res!459189) b!695055))

(assert (= (and b!695055 c!78300) b!695057))

(assert (= (and b!695055 (not c!78300)) b!695053))

(assert (= (or b!695057 b!695053) bm!34287))

(declare-fun m!656647 () Bool)

(assert (=> b!695054 m!656647))

(assert (=> b!695054 m!656647))

(declare-fun m!656649 () Bool)

(assert (=> b!695054 m!656649))

(assert (=> b!695055 m!656647))

(assert (=> b!695055 m!656647))

(declare-fun m!656651 () Bool)

(assert (=> b!695055 m!656651))

(assert (=> b!695056 m!656647))

(assert (=> b!695056 m!656647))

(assert (=> b!695056 m!656651))

(assert (=> bm!34287 m!656647))

(declare-fun m!656653 () Bool)

(assert (=> bm!34287 m!656653))

(assert (=> b!694737 d!95879))

(declare-fun b!695058 () Bool)

(declare-fun e!395324 () Bool)

(declare-fun call!34291 () Bool)

(assert (=> b!695058 (= e!395324 call!34291)))

(declare-fun e!395323 () Bool)

(declare-fun b!695059 () Bool)

(assert (=> b!695059 (= e!395323 (contains!3729 lt!316916 (select (arr!19092 lt!316913) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!695060 () Bool)

(declare-fun e!395325 () Bool)

(assert (=> b!695060 (= e!395325 e!395324)))

(declare-fun c!78301 () Bool)

(assert (=> b!695060 (= c!78301 (validKeyInArray!0 (select (arr!19092 lt!316913) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!695061 () Bool)

(declare-fun e!395326 () Bool)

(assert (=> b!695061 (= e!395326 e!395325)))

(declare-fun res!459192 () Bool)

(assert (=> b!695061 (=> (not res!459192) (not e!395325))))

(assert (=> b!695061 (= res!459192 (not e!395323))))

(declare-fun res!459191 () Bool)

(assert (=> b!695061 (=> (not res!459191) (not e!395323))))

(assert (=> b!695061 (= res!459191 (validKeyInArray!0 (select (arr!19092 lt!316913) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!695062 () Bool)

(assert (=> b!695062 (= e!395324 call!34291)))

(declare-fun d!95881 () Bool)

(declare-fun res!459190 () Bool)

(assert (=> d!95881 (=> res!459190 e!395326)))

(assert (=> d!95881 (= res!459190 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19475 lt!316913)))))

(assert (=> d!95881 (= (arrayNoDuplicates!0 lt!316913 (bvadd #b00000000000000000000000000000001 from!3004) lt!316916) e!395326)))

(declare-fun bm!34288 () Bool)

(assert (=> bm!34288 (= call!34291 (arrayNoDuplicates!0 lt!316913 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!78301 (Cons!13182 (select (arr!19092 lt!316913) (bvadd #b00000000000000000000000000000001 from!3004)) lt!316916) lt!316916)))))

(assert (= (and d!95881 (not res!459190)) b!695061))

(assert (= (and b!695061 res!459191) b!695059))

(assert (= (and b!695061 res!459192) b!695060))

(assert (= (and b!695060 c!78301) b!695062))

(assert (= (and b!695060 (not c!78301)) b!695058))

(assert (= (or b!695062 b!695058) bm!34288))

(declare-fun m!656655 () Bool)

(assert (=> b!695059 m!656655))

(assert (=> b!695059 m!656655))

(declare-fun m!656657 () Bool)

(assert (=> b!695059 m!656657))

(assert (=> b!695060 m!656655))

(assert (=> b!695060 m!656655))

(declare-fun m!656659 () Bool)

(assert (=> b!695060 m!656659))

(assert (=> b!695061 m!656655))

(assert (=> b!695061 m!656655))

(assert (=> b!695061 m!656659))

(assert (=> bm!34288 m!656655))

(declare-fun m!656661 () Bool)

(assert (=> bm!34288 m!656661))

(assert (=> b!694737 d!95881))

(declare-fun d!95883 () Bool)

(declare-fun e!395339 () Bool)

(assert (=> d!95883 e!395339))

(declare-fun res!459205 () Bool)

(assert (=> d!95883 (=> (not res!459205) (not e!395339))))

(assert (=> d!95883 (= res!459205 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19475 a!3626))))))

(declare-fun lt!316972 () Unit!24538)

(declare-fun choose!41 (array!39867 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13186) Unit!24538)

(assert (=> d!95883 (= lt!316972 (choose!41 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!316916))))

(assert (=> d!95883 (bvslt (size!19475 a!3626) #b01111111111111111111111111111111)))

