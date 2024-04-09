; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63228 () Bool)

(assert start!63228)

(declare-fun b!711770 () Bool)

(declare-fun res!475184 () Bool)

(declare-fun e!400474 () Bool)

(assert (=> b!711770 (=> (not res!475184) (not e!400474))))

(declare-datatypes ((array!40394 0))(
  ( (array!40395 (arr!19336 (Array (_ BitVec 32) (_ BitVec 64))) (size!19742 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40394)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!711770 (= res!475184 (validKeyInArray!0 (select (arr!19336 a!3591) from!2969)))))

(declare-fun b!711771 () Bool)

(declare-fun e!400473 () Bool)

(declare-datatypes ((List!13430 0))(
  ( (Nil!13427) (Cons!13426 (h!14471 (_ BitVec 64)) (t!19747 List!13430)) )
))
(declare-fun lt!318463 () List!13430)

(declare-fun contains!3973 (List!13430 (_ BitVec 64)) Bool)

(assert (=> b!711771 (= e!400473 (contains!3973 lt!318463 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711772 () Bool)

(declare-fun res!475198 () Bool)

(assert (=> b!711772 (=> (not res!475198) (not e!400474))))

(declare-fun acc!652 () List!13430)

(assert (=> b!711772 (= res!475198 (not (contains!3973 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711773 () Bool)

(declare-fun res!475185 () Bool)

(declare-fun e!400476 () Bool)

(assert (=> b!711773 (=> (not res!475185) (not e!400476))))

(declare-fun noDuplicate!1220 (List!13430) Bool)

(assert (=> b!711773 (= res!475185 (noDuplicate!1220 lt!318463))))

(declare-fun b!711774 () Bool)

(declare-fun res!475179 () Bool)

(assert (=> b!711774 (=> (not res!475179) (not e!400474))))

(declare-fun k0!2824 () (_ BitVec 64))

(assert (=> b!711774 (= res!475179 (not (contains!3973 acc!652 k0!2824)))))

(declare-fun b!711775 () Bool)

(declare-fun res!475192 () Bool)

(assert (=> b!711775 (=> (not res!475192) (not e!400474))))

(assert (=> b!711775 (= res!475192 (not (contains!3973 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!475200 () Bool)

(assert (=> start!63228 (=> (not res!475200) (not e!400474))))

(assert (=> start!63228 (= res!475200 (and (bvslt (size!19742 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19742 a!3591))))))

(assert (=> start!63228 e!400474))

(assert (=> start!63228 true))

(declare-fun array_inv!15110 (array!40394) Bool)

(assert (=> start!63228 (array_inv!15110 a!3591)))

(declare-fun b!711776 () Bool)

(declare-fun res!475197 () Bool)

(assert (=> b!711776 (=> (not res!475197) (not e!400474))))

(assert (=> b!711776 (= res!475197 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19742 a!3591)))))

(declare-fun b!711777 () Bool)

(declare-fun res!475196 () Bool)

(assert (=> b!711777 (=> (not res!475196) (not e!400476))))

(declare-fun lt!318464 () List!13430)

(assert (=> b!711777 (= res!475196 (not (contains!3973 lt!318464 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711778 () Bool)

(declare-fun res!475188 () Bool)

(assert (=> b!711778 (=> (not res!475188) (not e!400474))))

(assert (=> b!711778 (= res!475188 (noDuplicate!1220 acc!652))))

(declare-fun b!711779 () Bool)

(declare-fun res!475191 () Bool)

(assert (=> b!711779 (=> (not res!475191) (not e!400474))))

(declare-fun newAcc!49 () List!13430)

(declare-fun -!382 (List!13430 (_ BitVec 64)) List!13430)

(assert (=> b!711779 (= res!475191 (= (-!382 newAcc!49 k0!2824) acc!652))))

(declare-fun b!711780 () Bool)

(declare-fun res!475202 () Bool)

(assert (=> b!711780 (=> (not res!475202) (not e!400476))))

(assert (=> b!711780 (= res!475202 (= (-!382 lt!318463 k0!2824) lt!318464))))

(declare-fun b!711781 () Bool)

(declare-fun res!475181 () Bool)

(assert (=> b!711781 (=> (not res!475181) (not e!400476))))

(declare-fun arrayContainsKey!0 (array!40394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!711781 (= res!475181 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!711782 () Bool)

(declare-fun res!475194 () Bool)

(assert (=> b!711782 (=> (not res!475194) (not e!400476))))

(declare-fun subseq!417 (List!13430 List!13430) Bool)

(assert (=> b!711782 (= res!475194 (subseq!417 lt!318464 lt!318463))))

(declare-fun b!711783 () Bool)

(declare-fun res!475199 () Bool)

(assert (=> b!711783 (=> (not res!475199) (not e!400476))))

(assert (=> b!711783 (= res!475199 (not (contains!3973 lt!318464 k0!2824)))))

(declare-fun b!711784 () Bool)

(declare-fun res!475190 () Bool)

(assert (=> b!711784 (=> (not res!475190) (not e!400474))))

(assert (=> b!711784 (= res!475190 (contains!3973 newAcc!49 k0!2824))))

(declare-fun b!711785 () Bool)

(declare-fun res!475183 () Bool)

(assert (=> b!711785 (=> (not res!475183) (not e!400476))))

(assert (=> b!711785 (= res!475183 (not (contains!3973 lt!318464 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711786 () Bool)

(declare-fun res!475177 () Bool)

(assert (=> b!711786 (=> (not res!475177) (not e!400476))))

(assert (=> b!711786 (= res!475177 (contains!3973 lt!318463 k0!2824))))

(declare-fun b!711787 () Bool)

(declare-fun res!475186 () Bool)

(assert (=> b!711787 (=> (not res!475186) (not e!400476))))

(assert (=> b!711787 (= res!475186 (noDuplicate!1220 lt!318464))))

(declare-fun b!711788 () Bool)

(declare-fun res!475178 () Bool)

(assert (=> b!711788 (=> (not res!475178) (not e!400474))))

(assert (=> b!711788 (= res!475178 (noDuplicate!1220 newAcc!49))))

(declare-fun b!711789 () Bool)

(assert (=> b!711789 (= e!400474 e!400476)))

(declare-fun res!475187 () Bool)

(assert (=> b!711789 (=> (not res!475187) (not e!400476))))

(assert (=> b!711789 (= res!475187 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!527 (List!13430 (_ BitVec 64)) List!13430)

(assert (=> b!711789 (= lt!318463 ($colon$colon!527 newAcc!49 (select (arr!19336 a!3591) from!2969)))))

(assert (=> b!711789 (= lt!318464 ($colon$colon!527 acc!652 (select (arr!19336 a!3591) from!2969)))))

(declare-fun b!711790 () Bool)

(declare-fun res!475193 () Bool)

(assert (=> b!711790 (=> (not res!475193) (not e!400476))))

(declare-fun arrayNoDuplicates!0 (array!40394 (_ BitVec 32) List!13430) Bool)

(assert (=> b!711790 (= res!475193 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318464))))

(declare-fun b!711791 () Bool)

(declare-fun res!475189 () Bool)

(assert (=> b!711791 (=> (not res!475189) (not e!400474))))

(assert (=> b!711791 (= res!475189 (not (contains!3973 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711792 () Bool)

(declare-fun res!475180 () Bool)

(assert (=> b!711792 (=> (not res!475180) (not e!400474))))

(assert (=> b!711792 (= res!475180 (validKeyInArray!0 k0!2824))))

(declare-fun b!711793 () Bool)

(assert (=> b!711793 (= e!400476 e!400473)))

(declare-fun res!475201 () Bool)

(assert (=> b!711793 (=> res!475201 e!400473)))

(assert (=> b!711793 (= res!475201 (contains!3973 lt!318463 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711794 () Bool)

(declare-fun res!475195 () Bool)

(assert (=> b!711794 (=> (not res!475195) (not e!400474))))

(assert (=> b!711794 (= res!475195 (not (contains!3973 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711795 () Bool)

(declare-fun res!475176 () Bool)

(assert (=> b!711795 (=> (not res!475176) (not e!400474))))

(assert (=> b!711795 (= res!475176 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!711796 () Bool)

(declare-fun res!475182 () Bool)

(assert (=> b!711796 (=> (not res!475182) (not e!400474))))

(assert (=> b!711796 (= res!475182 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!711797 () Bool)

(declare-fun res!475203 () Bool)

(assert (=> b!711797 (=> (not res!475203) (not e!400474))))

(assert (=> b!711797 (= res!475203 (subseq!417 acc!652 newAcc!49))))

(assert (= (and start!63228 res!475200) b!711778))

(assert (= (and b!711778 res!475188) b!711788))

(assert (= (and b!711788 res!475178) b!711775))

(assert (= (and b!711775 res!475192) b!711772))

(assert (= (and b!711772 res!475198) b!711796))

(assert (= (and b!711796 res!475182) b!711774))

(assert (= (and b!711774 res!475179) b!711792))

(assert (= (and b!711792 res!475180) b!711795))

(assert (= (and b!711795 res!475176) b!711797))

(assert (= (and b!711797 res!475203) b!711784))

(assert (= (and b!711784 res!475190) b!711779))

(assert (= (and b!711779 res!475191) b!711794))

(assert (= (and b!711794 res!475195) b!711791))

(assert (= (and b!711791 res!475189) b!711776))

(assert (= (and b!711776 res!475197) b!711770))

(assert (= (and b!711770 res!475184) b!711789))

(assert (= (and b!711789 res!475187) b!711787))

(assert (= (and b!711787 res!475186) b!711773))

(assert (= (and b!711773 res!475185) b!711777))

(assert (= (and b!711777 res!475196) b!711785))

(assert (= (and b!711785 res!475183) b!711781))

(assert (= (and b!711781 res!475181) b!711783))

(assert (= (and b!711783 res!475199) b!711790))

(assert (= (and b!711790 res!475193) b!711782))

(assert (= (and b!711782 res!475194) b!711786))

(assert (= (and b!711786 res!475177) b!711780))

(assert (= (and b!711780 res!475202) b!711793))

(assert (= (and b!711793 (not res!475201)) b!711771))

(declare-fun m!668817 () Bool)

(assert (=> b!711788 m!668817))

(declare-fun m!668819 () Bool)

(assert (=> b!711791 m!668819))

(declare-fun m!668821 () Bool)

(assert (=> b!711796 m!668821))

(declare-fun m!668823 () Bool)

(assert (=> b!711781 m!668823))

(declare-fun m!668825 () Bool)

(assert (=> b!711775 m!668825))

(declare-fun m!668827 () Bool)

(assert (=> b!711770 m!668827))

(assert (=> b!711770 m!668827))

(declare-fun m!668829 () Bool)

(assert (=> b!711770 m!668829))

(declare-fun m!668831 () Bool)

(assert (=> b!711780 m!668831))

(declare-fun m!668833 () Bool)

(assert (=> b!711797 m!668833))

(declare-fun m!668835 () Bool)

(assert (=> b!711782 m!668835))

(declare-fun m!668837 () Bool)

(assert (=> b!711771 m!668837))

(declare-fun m!668839 () Bool)

(assert (=> b!711774 m!668839))

(declare-fun m!668841 () Bool)

(assert (=> b!711772 m!668841))

(declare-fun m!668843 () Bool)

(assert (=> b!711785 m!668843))

(declare-fun m!668845 () Bool)

(assert (=> b!711792 m!668845))

(declare-fun m!668847 () Bool)

(assert (=> b!711794 m!668847))

(declare-fun m!668849 () Bool)

(assert (=> b!711784 m!668849))

(declare-fun m!668851 () Bool)

(assert (=> b!711790 m!668851))

(assert (=> b!711789 m!668827))

(assert (=> b!711789 m!668827))

(declare-fun m!668853 () Bool)

(assert (=> b!711789 m!668853))

(assert (=> b!711789 m!668827))

(declare-fun m!668855 () Bool)

(assert (=> b!711789 m!668855))

(declare-fun m!668857 () Bool)

(assert (=> b!711783 m!668857))

(declare-fun m!668859 () Bool)

(assert (=> b!711773 m!668859))

(declare-fun m!668861 () Bool)

(assert (=> b!711795 m!668861))

(declare-fun m!668863 () Bool)

(assert (=> b!711787 m!668863))

(declare-fun m!668865 () Bool)

(assert (=> b!711778 m!668865))

(declare-fun m!668867 () Bool)

(assert (=> b!711777 m!668867))

(declare-fun m!668869 () Bool)

(assert (=> start!63228 m!668869))

(declare-fun m!668871 () Bool)

(assert (=> b!711793 m!668871))

(declare-fun m!668873 () Bool)

(assert (=> b!711779 m!668873))

(declare-fun m!668875 () Bool)

(assert (=> b!711786 m!668875))

(check-sat (not b!711789) (not b!711777) (not b!711784) (not b!711780) (not b!711793) (not b!711794) (not b!711770) (not b!711781) (not b!711797) (not b!711790) (not b!711792) (not b!711778) (not b!711791) (not b!711774) (not b!711779) (not start!63228) (not b!711788) (not b!711786) (not b!711775) (not b!711773) (not b!711795) (not b!711796) (not b!711771) (not b!711787) (not b!711782) (not b!711783) (not b!711785) (not b!711772))
(check-sat)
(get-model)

(declare-fun bm!34536 () Bool)

(declare-fun call!34539 () List!13430)

(assert (=> bm!34536 (= call!34539 (-!382 (t!19747 lt!318463) k0!2824))))

(declare-fun lt!318473 () List!13430)

(declare-fun b!711892 () Bool)

(declare-fun e!400496 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!361 (List!13430) (InoxSet (_ BitVec 64)))

(assert (=> b!711892 (= e!400496 (= (content!361 lt!318473) ((_ map and) (content!361 lt!318463) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun b!711893 () Bool)

(declare-fun e!400497 () List!13430)

(assert (=> b!711893 (= e!400497 Nil!13427)))

(declare-fun b!711894 () Bool)

(declare-fun e!400498 () List!13430)

(assert (=> b!711894 (= e!400498 call!34539)))

(declare-fun d!97737 () Bool)

(assert (=> d!97737 e!400496))

(declare-fun res!475290 () Bool)

(assert (=> d!97737 (=> (not res!475290) (not e!400496))))

(declare-fun size!19744 (List!13430) Int)

(assert (=> d!97737 (= res!475290 (<= (size!19744 lt!318473) (size!19744 lt!318463)))))

(assert (=> d!97737 (= lt!318473 e!400497)))

(declare-fun c!78668 () Bool)

(get-info :version)

(assert (=> d!97737 (= c!78668 ((_ is Cons!13426) lt!318463))))

(assert (=> d!97737 (= (-!382 lt!318463 k0!2824) lt!318473)))

(declare-fun b!711895 () Bool)

(assert (=> b!711895 (= e!400497 e!400498)))

(declare-fun c!78669 () Bool)

(assert (=> b!711895 (= c!78669 (= k0!2824 (h!14471 lt!318463)))))

(declare-fun b!711896 () Bool)

(assert (=> b!711896 (= e!400498 (Cons!13426 (h!14471 lt!318463) call!34539))))

(assert (= (and d!97737 c!78668) b!711895))

(assert (= (and d!97737 (not c!78668)) b!711893))

(assert (= (and b!711895 c!78669) b!711894))

(assert (= (and b!711895 (not c!78669)) b!711896))

(assert (= (or b!711894 b!711896) bm!34536))

(assert (= (and d!97737 res!475290) b!711892))

(declare-fun m!668937 () Bool)

(assert (=> bm!34536 m!668937))

(declare-fun m!668939 () Bool)

(assert (=> b!711892 m!668939))

(declare-fun m!668941 () Bool)

(assert (=> b!711892 m!668941))

(declare-fun m!668943 () Bool)

(assert (=> b!711892 m!668943))

(declare-fun m!668945 () Bool)

(assert (=> d!97737 m!668945))

(declare-fun m!668947 () Bool)

(assert (=> d!97737 m!668947))

(assert (=> b!711780 d!97737))

(declare-fun bm!34537 () Bool)

(declare-fun call!34540 () List!13430)

(assert (=> bm!34537 (= call!34540 (-!382 (t!19747 newAcc!49) k0!2824))))

(declare-fun e!400499 () Bool)

(declare-fun lt!318474 () List!13430)

(declare-fun b!711897 () Bool)

(assert (=> b!711897 (= e!400499 (= (content!361 lt!318474) ((_ map and) (content!361 newAcc!49) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun b!711898 () Bool)

(declare-fun e!400500 () List!13430)

(assert (=> b!711898 (= e!400500 Nil!13427)))

(declare-fun b!711899 () Bool)

(declare-fun e!400501 () List!13430)

(assert (=> b!711899 (= e!400501 call!34540)))

(declare-fun d!97739 () Bool)

(assert (=> d!97739 e!400499))

(declare-fun res!475291 () Bool)

(assert (=> d!97739 (=> (not res!475291) (not e!400499))))

(assert (=> d!97739 (= res!475291 (<= (size!19744 lt!318474) (size!19744 newAcc!49)))))

(assert (=> d!97739 (= lt!318474 e!400500)))

(declare-fun c!78670 () Bool)

(assert (=> d!97739 (= c!78670 ((_ is Cons!13426) newAcc!49))))

(assert (=> d!97739 (= (-!382 newAcc!49 k0!2824) lt!318474)))

(declare-fun b!711900 () Bool)

(assert (=> b!711900 (= e!400500 e!400501)))

(declare-fun c!78671 () Bool)

(assert (=> b!711900 (= c!78671 (= k0!2824 (h!14471 newAcc!49)))))

(declare-fun b!711901 () Bool)

(assert (=> b!711901 (= e!400501 (Cons!13426 (h!14471 newAcc!49) call!34540))))

(assert (= (and d!97739 c!78670) b!711900))

(assert (= (and d!97739 (not c!78670)) b!711898))

(assert (= (and b!711900 c!78671) b!711899))

(assert (= (and b!711900 (not c!78671)) b!711901))

(assert (= (or b!711899 b!711901) bm!34537))

(assert (= (and d!97739 res!475291) b!711897))

(declare-fun m!668949 () Bool)

(assert (=> bm!34537 m!668949))

(declare-fun m!668951 () Bool)

(assert (=> b!711897 m!668951))

(declare-fun m!668953 () Bool)

(assert (=> b!711897 m!668953))

(assert (=> b!711897 m!668943))

(declare-fun m!668955 () Bool)

(assert (=> d!97739 m!668955))

(declare-fun m!668957 () Bool)

(assert (=> d!97739 m!668957))

(assert (=> b!711779 d!97739))

(declare-fun d!97741 () Bool)

(declare-fun lt!318477 () Bool)

(assert (=> d!97741 (= lt!318477 (select (content!361 lt!318464) k0!2824))))

(declare-fun e!400506 () Bool)

(assert (=> d!97741 (= lt!318477 e!400506)))

(declare-fun res!475296 () Bool)

(assert (=> d!97741 (=> (not res!475296) (not e!400506))))

(assert (=> d!97741 (= res!475296 ((_ is Cons!13426) lt!318464))))

(assert (=> d!97741 (= (contains!3973 lt!318464 k0!2824) lt!318477)))

(declare-fun b!711906 () Bool)

(declare-fun e!400507 () Bool)

(assert (=> b!711906 (= e!400506 e!400507)))

(declare-fun res!475297 () Bool)

(assert (=> b!711906 (=> res!475297 e!400507)))

(assert (=> b!711906 (= res!475297 (= (h!14471 lt!318464) k0!2824))))

(declare-fun b!711907 () Bool)

(assert (=> b!711907 (= e!400507 (contains!3973 (t!19747 lt!318464) k0!2824))))

(assert (= (and d!97741 res!475296) b!711906))

(assert (= (and b!711906 (not res!475297)) b!711907))

(declare-fun m!668959 () Bool)

(assert (=> d!97741 m!668959))

(declare-fun m!668961 () Bool)

(assert (=> d!97741 m!668961))

(declare-fun m!668963 () Bool)

(assert (=> b!711907 m!668963))

(assert (=> b!711783 d!97741))

(declare-fun d!97743 () Bool)

(declare-fun res!475302 () Bool)

(declare-fun e!400512 () Bool)

(assert (=> d!97743 (=> res!475302 e!400512)))

(assert (=> d!97743 (= res!475302 (= (select (arr!19336 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k0!2824))))

(assert (=> d!97743 (= (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!400512)))

(declare-fun b!711912 () Bool)

(declare-fun e!400513 () Bool)

(assert (=> b!711912 (= e!400512 e!400513)))

(declare-fun res!475303 () Bool)

(assert (=> b!711912 (=> (not res!475303) (not e!400513))))

(assert (=> b!711912 (= res!475303 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19742 a!3591)))))

(declare-fun b!711913 () Bool)

(assert (=> b!711913 (= e!400513 (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97743 (not res!475302)) b!711912))

(assert (= (and b!711912 res!475303) b!711913))

(declare-fun m!668965 () Bool)

(assert (=> d!97743 m!668965))

(declare-fun m!668967 () Bool)

(assert (=> b!711913 m!668967))

(assert (=> b!711781 d!97743))

(declare-fun b!711930 () Bool)

(declare-fun e!400531 () Bool)

(declare-fun e!400530 () Bool)

(assert (=> b!711930 (= e!400531 e!400530)))

(declare-fun res!475321 () Bool)

(assert (=> b!711930 (=> (not res!475321) (not e!400530))))

(assert (=> b!711930 (= res!475321 ((_ is Cons!13426) lt!318463))))

(declare-fun d!97745 () Bool)

(declare-fun res!475322 () Bool)

(assert (=> d!97745 (=> res!475322 e!400531)))

(assert (=> d!97745 (= res!475322 ((_ is Nil!13427) lt!318464))))

(assert (=> d!97745 (= (subseq!417 lt!318464 lt!318463) e!400531)))

(declare-fun b!711932 () Bool)

(declare-fun e!400533 () Bool)

(assert (=> b!711932 (= e!400533 (subseq!417 (t!19747 lt!318464) (t!19747 lt!318463)))))

(declare-fun b!711931 () Bool)

(declare-fun e!400532 () Bool)

(assert (=> b!711931 (= e!400530 e!400532)))

(declare-fun res!475320 () Bool)

(assert (=> b!711931 (=> res!475320 e!400532)))

(assert (=> b!711931 (= res!475320 e!400533)))

(declare-fun res!475323 () Bool)

(assert (=> b!711931 (=> (not res!475323) (not e!400533))))

(assert (=> b!711931 (= res!475323 (= (h!14471 lt!318464) (h!14471 lt!318463)))))

(declare-fun b!711933 () Bool)

(assert (=> b!711933 (= e!400532 (subseq!417 lt!318464 (t!19747 lt!318463)))))

(assert (= (and d!97745 (not res!475322)) b!711930))

(assert (= (and b!711930 res!475321) b!711931))

(assert (= (and b!711931 res!475323) b!711932))

(assert (= (and b!711931 (not res!475320)) b!711933))

(declare-fun m!668981 () Bool)

(assert (=> b!711932 m!668981))

(declare-fun m!668983 () Bool)

(assert (=> b!711933 m!668983))

(assert (=> b!711782 d!97745))

(declare-fun d!97755 () Bool)

(assert (=> d!97755 (= (array_inv!15110 a!3591) (bvsge (size!19742 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63228 d!97755))

(declare-fun d!97761 () Bool)

(declare-fun lt!318482 () Bool)

(assert (=> d!97761 (= lt!318482 (select (content!361 lt!318464) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400534 () Bool)

(assert (=> d!97761 (= lt!318482 e!400534)))

(declare-fun res!475324 () Bool)

(assert (=> d!97761 (=> (not res!475324) (not e!400534))))

(assert (=> d!97761 (= res!475324 ((_ is Cons!13426) lt!318464))))

(assert (=> d!97761 (= (contains!3973 lt!318464 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318482)))

(declare-fun b!711934 () Bool)

(declare-fun e!400535 () Bool)

(assert (=> b!711934 (= e!400534 e!400535)))

(declare-fun res!475325 () Bool)

(assert (=> b!711934 (=> res!475325 e!400535)))

(assert (=> b!711934 (= res!475325 (= (h!14471 lt!318464) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711935 () Bool)

(assert (=> b!711935 (= e!400535 (contains!3973 (t!19747 lt!318464) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97761 res!475324) b!711934))

(assert (= (and b!711934 (not res!475325)) b!711935))

(assert (=> d!97761 m!668959))

(declare-fun m!668985 () Bool)

(assert (=> d!97761 m!668985))

(declare-fun m!668987 () Bool)

(assert (=> b!711935 m!668987))

(assert (=> b!711785 d!97761))

(declare-fun d!97763 () Bool)

(declare-fun lt!318483 () Bool)

(assert (=> d!97763 (= lt!318483 (select (content!361 lt!318463) k0!2824))))

(declare-fun e!400536 () Bool)

(assert (=> d!97763 (= lt!318483 e!400536)))

(declare-fun res!475326 () Bool)

(assert (=> d!97763 (=> (not res!475326) (not e!400536))))

(assert (=> d!97763 (= res!475326 ((_ is Cons!13426) lt!318463))))

(assert (=> d!97763 (= (contains!3973 lt!318463 k0!2824) lt!318483)))

(declare-fun b!711936 () Bool)

(declare-fun e!400537 () Bool)

(assert (=> b!711936 (= e!400536 e!400537)))

(declare-fun res!475327 () Bool)

(assert (=> b!711936 (=> res!475327 e!400537)))

(assert (=> b!711936 (= res!475327 (= (h!14471 lt!318463) k0!2824))))

(declare-fun b!711937 () Bool)

(assert (=> b!711937 (= e!400537 (contains!3973 (t!19747 lt!318463) k0!2824))))

(assert (= (and d!97763 res!475326) b!711936))

(assert (= (and b!711936 (not res!475327)) b!711937))

(assert (=> d!97763 m!668941))

(declare-fun m!668989 () Bool)

(assert (=> d!97763 m!668989))

(declare-fun m!668991 () Bool)

(assert (=> b!711937 m!668991))

(assert (=> b!711786 d!97763))

(declare-fun d!97765 () Bool)

(declare-fun lt!318484 () Bool)

(assert (=> d!97765 (= lt!318484 (select (content!361 newAcc!49) k0!2824))))

(declare-fun e!400538 () Bool)

(assert (=> d!97765 (= lt!318484 e!400538)))

(declare-fun res!475328 () Bool)

(assert (=> d!97765 (=> (not res!475328) (not e!400538))))

(assert (=> d!97765 (= res!475328 ((_ is Cons!13426) newAcc!49))))

(assert (=> d!97765 (= (contains!3973 newAcc!49 k0!2824) lt!318484)))

(declare-fun b!711938 () Bool)

(declare-fun e!400539 () Bool)

(assert (=> b!711938 (= e!400538 e!400539)))

(declare-fun res!475329 () Bool)

(assert (=> b!711938 (=> res!475329 e!400539)))

(assert (=> b!711938 (= res!475329 (= (h!14471 newAcc!49) k0!2824))))

(declare-fun b!711939 () Bool)

(assert (=> b!711939 (= e!400539 (contains!3973 (t!19747 newAcc!49) k0!2824))))

(assert (= (and d!97765 res!475328) b!711938))

(assert (= (and b!711938 (not res!475329)) b!711939))

(assert (=> d!97765 m!668953))

(declare-fun m!668993 () Bool)

(assert (=> d!97765 m!668993))

(declare-fun m!668995 () Bool)

(assert (=> b!711939 m!668995))

(assert (=> b!711784 d!97765))

(declare-fun d!97767 () Bool)

(declare-fun res!475345 () Bool)

(declare-fun e!400562 () Bool)

(assert (=> d!97767 (=> res!475345 e!400562)))

(assert (=> d!97767 (= res!475345 ((_ is Nil!13427) newAcc!49))))

(assert (=> d!97767 (= (noDuplicate!1220 newAcc!49) e!400562)))

(declare-fun b!711967 () Bool)

(declare-fun e!400563 () Bool)

(assert (=> b!711967 (= e!400562 e!400563)))

(declare-fun res!475346 () Bool)

(assert (=> b!711967 (=> (not res!475346) (not e!400563))))

(assert (=> b!711967 (= res!475346 (not (contains!3973 (t!19747 newAcc!49) (h!14471 newAcc!49))))))

(declare-fun b!711968 () Bool)

(assert (=> b!711968 (= e!400563 (noDuplicate!1220 (t!19747 newAcc!49)))))

(assert (= (and d!97767 (not res!475345)) b!711967))

(assert (= (and b!711967 res!475346) b!711968))

(declare-fun m!669019 () Bool)

(assert (=> b!711967 m!669019))

(declare-fun m!669021 () Bool)

(assert (=> b!711968 m!669021))

(assert (=> b!711788 d!97767))

(declare-fun d!97775 () Bool)

(declare-fun res!475349 () Bool)

(declare-fun e!400566 () Bool)

(assert (=> d!97775 (=> res!475349 e!400566)))

(assert (=> d!97775 (= res!475349 ((_ is Nil!13427) lt!318464))))

(assert (=> d!97775 (= (noDuplicate!1220 lt!318464) e!400566)))

(declare-fun b!711971 () Bool)

(declare-fun e!400567 () Bool)

(assert (=> b!711971 (= e!400566 e!400567)))

(declare-fun res!475350 () Bool)

(assert (=> b!711971 (=> (not res!475350) (not e!400567))))

(assert (=> b!711971 (= res!475350 (not (contains!3973 (t!19747 lt!318464) (h!14471 lt!318464))))))

(declare-fun b!711972 () Bool)

(assert (=> b!711972 (= e!400567 (noDuplicate!1220 (t!19747 lt!318464)))))

(assert (= (and d!97775 (not res!475349)) b!711971))

(assert (= (and b!711971 res!475350) b!711972))

(declare-fun m!669027 () Bool)

(assert (=> b!711971 m!669027))

(declare-fun m!669029 () Bool)

(assert (=> b!711972 m!669029))

(assert (=> b!711787 d!97775))

(declare-fun d!97779 () Bool)

(assert (=> d!97779 (= (validKeyInArray!0 (select (arr!19336 a!3591) from!2969)) (and (not (= (select (arr!19336 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19336 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!711770 d!97779))

(declare-fun d!97783 () Bool)

(declare-fun lt!318493 () Bool)

(assert (=> d!97783 (= lt!318493 (select (content!361 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400570 () Bool)

(assert (=> d!97783 (= lt!318493 e!400570)))

(declare-fun res!475353 () Bool)

(assert (=> d!97783 (=> (not res!475353) (not e!400570))))

(assert (=> d!97783 (= res!475353 ((_ is Cons!13426) newAcc!49))))

(assert (=> d!97783 (= (contains!3973 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318493)))

(declare-fun b!711975 () Bool)

(declare-fun e!400571 () Bool)

(assert (=> b!711975 (= e!400570 e!400571)))

(declare-fun res!475354 () Bool)

(assert (=> b!711975 (=> res!475354 e!400571)))

(assert (=> b!711975 (= res!475354 (= (h!14471 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711976 () Bool)

(assert (=> b!711976 (= e!400571 (contains!3973 (t!19747 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97783 res!475353) b!711975))

(assert (= (and b!711975 (not res!475354)) b!711976))

(assert (=> d!97783 m!668953))

(declare-fun m!669031 () Bool)

(assert (=> d!97783 m!669031))

(declare-fun m!669033 () Bool)

(assert (=> b!711976 m!669033))

(assert (=> b!711791 d!97783))

(declare-fun d!97785 () Bool)

(assert (=> d!97785 (= ($colon$colon!527 newAcc!49 (select (arr!19336 a!3591) from!2969)) (Cons!13426 (select (arr!19336 a!3591) from!2969) newAcc!49))))

(assert (=> b!711789 d!97785))

(declare-fun d!97787 () Bool)

(assert (=> d!97787 (= ($colon$colon!527 acc!652 (select (arr!19336 a!3591) from!2969)) (Cons!13426 (select (arr!19336 a!3591) from!2969) acc!652))))

(assert (=> b!711789 d!97787))

(declare-fun b!712041 () Bool)

(declare-fun e!400635 () Bool)

(declare-fun e!400636 () Bool)

(assert (=> b!712041 (= e!400635 e!400636)))

(declare-fun res!475417 () Bool)

(assert (=> b!712041 (=> (not res!475417) (not e!400636))))

(declare-fun e!400634 () Bool)

(assert (=> b!712041 (= res!475417 (not e!400634))))

(declare-fun res!475415 () Bool)

(assert (=> b!712041 (=> (not res!475415) (not e!400634))))

(assert (=> b!712041 (= res!475415 (validKeyInArray!0 (select (arr!19336 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!712042 () Bool)

(declare-fun e!400637 () Bool)

(declare-fun call!34546 () Bool)

(assert (=> b!712042 (= e!400637 call!34546)))

(declare-fun b!712043 () Bool)

(assert (=> b!712043 (= e!400636 e!400637)))

(declare-fun c!78680 () Bool)

(assert (=> b!712043 (= c!78680 (validKeyInArray!0 (select (arr!19336 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun d!97789 () Bool)

(declare-fun res!475416 () Bool)

(assert (=> d!97789 (=> res!475416 e!400635)))

(assert (=> d!97789 (= res!475416 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19742 a!3591)))))

(assert (=> d!97789 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318464) e!400635)))

(declare-fun b!712044 () Bool)

(assert (=> b!712044 (= e!400634 (contains!3973 lt!318464 (select (arr!19336 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!712045 () Bool)

(assert (=> b!712045 (= e!400637 call!34546)))

(declare-fun bm!34543 () Bool)

(assert (=> bm!34543 (= call!34546 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78680 (Cons!13426 (select (arr!19336 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) lt!318464) lt!318464)))))

(assert (= (and d!97789 (not res!475416)) b!712041))

(assert (= (and b!712041 res!475415) b!712044))

(assert (= (and b!712041 res!475417) b!712043))

(assert (= (and b!712043 c!78680) b!712042))

(assert (= (and b!712043 (not c!78680)) b!712045))

(assert (= (or b!712042 b!712045) bm!34543))

(assert (=> b!712041 m!668965))

(assert (=> b!712041 m!668965))

(declare-fun m!669079 () Bool)

(assert (=> b!712041 m!669079))

(assert (=> b!712043 m!668965))

(assert (=> b!712043 m!668965))

(assert (=> b!712043 m!669079))

(assert (=> b!712044 m!668965))

(assert (=> b!712044 m!668965))

(declare-fun m!669085 () Bool)

(assert (=> b!712044 m!669085))

(assert (=> bm!34543 m!668965))

(declare-fun m!669087 () Bool)

(assert (=> bm!34543 m!669087))

(assert (=> b!711790 d!97789))

(declare-fun d!97821 () Bool)

(declare-fun lt!318498 () Bool)

(assert (=> d!97821 (= lt!318498 (select (content!361 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400649 () Bool)

(assert (=> d!97821 (= lt!318498 e!400649)))

(declare-fun res!475427 () Bool)

(assert (=> d!97821 (=> (not res!475427) (not e!400649))))

(assert (=> d!97821 (= res!475427 ((_ is Cons!13426) acc!652))))

(assert (=> d!97821 (= (contains!3973 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318498)))

(declare-fun b!712059 () Bool)

(declare-fun e!400650 () Bool)

(assert (=> b!712059 (= e!400649 e!400650)))

(declare-fun res!475428 () Bool)

(assert (=> b!712059 (=> res!475428 e!400650)))

(assert (=> b!712059 (= res!475428 (= (h!14471 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712060 () Bool)

(assert (=> b!712060 (= e!400650 (contains!3973 (t!19747 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97821 res!475427) b!712059))

(assert (= (and b!712059 (not res!475428)) b!712060))

(declare-fun m!669099 () Bool)

(assert (=> d!97821 m!669099))

(declare-fun m!669101 () Bool)

(assert (=> d!97821 m!669101))

(declare-fun m!669103 () Bool)

(assert (=> b!712060 m!669103))

(assert (=> b!711772 d!97821))

(declare-fun d!97825 () Bool)

(declare-fun lt!318500 () Bool)

(assert (=> d!97825 (= lt!318500 (select (content!361 lt!318463) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400653 () Bool)

(assert (=> d!97825 (= lt!318500 e!400653)))

(declare-fun res!475431 () Bool)

(assert (=> d!97825 (=> (not res!475431) (not e!400653))))

(assert (=> d!97825 (= res!475431 ((_ is Cons!13426) lt!318463))))

(assert (=> d!97825 (= (contains!3973 lt!318463 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318500)))

(declare-fun b!712063 () Bool)

(declare-fun e!400654 () Bool)

(assert (=> b!712063 (= e!400653 e!400654)))

(declare-fun res!475432 () Bool)

(assert (=> b!712063 (=> res!475432 e!400654)))

(assert (=> b!712063 (= res!475432 (= (h!14471 lt!318463) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712064 () Bool)

(assert (=> b!712064 (= e!400654 (contains!3973 (t!19747 lt!318463) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97825 res!475431) b!712063))

(assert (= (and b!712063 (not res!475432)) b!712064))

(assert (=> d!97825 m!668941))

(declare-fun m!669113 () Bool)

(assert (=> d!97825 m!669113))

(declare-fun m!669115 () Bool)

(assert (=> b!712064 m!669115))

(assert (=> b!711793 d!97825))

(declare-fun d!97831 () Bool)

(declare-fun lt!318503 () Bool)

(assert (=> d!97831 (= lt!318503 (select (content!361 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400659 () Bool)

(assert (=> d!97831 (= lt!318503 e!400659)))

(declare-fun res!475437 () Bool)

(assert (=> d!97831 (=> (not res!475437) (not e!400659))))

(assert (=> d!97831 (= res!475437 ((_ is Cons!13426) newAcc!49))))

(assert (=> d!97831 (= (contains!3973 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318503)))

(declare-fun b!712069 () Bool)

(declare-fun e!400660 () Bool)

(assert (=> b!712069 (= e!400659 e!400660)))

(declare-fun res!475438 () Bool)

(assert (=> b!712069 (=> res!475438 e!400660)))

(assert (=> b!712069 (= res!475438 (= (h!14471 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712070 () Bool)

(assert (=> b!712070 (= e!400660 (contains!3973 (t!19747 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97831 res!475437) b!712069))

(assert (= (and b!712069 (not res!475438)) b!712070))

(assert (=> d!97831 m!668953))

(declare-fun m!669127 () Bool)

(assert (=> d!97831 m!669127))

(declare-fun m!669131 () Bool)

(assert (=> b!712070 m!669131))

(assert (=> b!711794 d!97831))

(declare-fun d!97841 () Bool)

(assert (=> d!97841 (= (validKeyInArray!0 k0!2824) (and (not (= k0!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!711792 d!97841))

(declare-fun d!97843 () Bool)

(declare-fun lt!318506 () Bool)

(assert (=> d!97843 (= lt!318506 (select (content!361 lt!318463) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400669 () Bool)

(assert (=> d!97843 (= lt!318506 e!400669)))

(declare-fun res!475447 () Bool)

(assert (=> d!97843 (=> (not res!475447) (not e!400669))))

(assert (=> d!97843 (= res!475447 ((_ is Cons!13426) lt!318463))))

(assert (=> d!97843 (= (contains!3973 lt!318463 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318506)))

(declare-fun b!712079 () Bool)

(declare-fun e!400670 () Bool)

(assert (=> b!712079 (= e!400669 e!400670)))

(declare-fun res!475448 () Bool)

(assert (=> b!712079 (=> res!475448 e!400670)))

(assert (=> b!712079 (= res!475448 (= (h!14471 lt!318463) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712080 () Bool)

(assert (=> b!712080 (= e!400670 (contains!3973 (t!19747 lt!318463) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97843 res!475447) b!712079))

(assert (= (and b!712079 (not res!475448)) b!712080))

(assert (=> d!97843 m!668941))

(declare-fun m!669145 () Bool)

(assert (=> d!97843 m!669145))

(declare-fun m!669147 () Bool)

(assert (=> b!712080 m!669147))

(assert (=> b!711771 d!97843))

(declare-fun d!97851 () Bool)

(declare-fun res!475455 () Bool)

(declare-fun e!400677 () Bool)

(assert (=> d!97851 (=> res!475455 e!400677)))

(assert (=> d!97851 (= res!475455 (= (select (arr!19336 a!3591) from!2969) k0!2824))))

(assert (=> d!97851 (= (arrayContainsKey!0 a!3591 k0!2824 from!2969) e!400677)))

(declare-fun b!712087 () Bool)

(declare-fun e!400678 () Bool)

(assert (=> b!712087 (= e!400677 e!400678)))

(declare-fun res!475456 () Bool)

(assert (=> b!712087 (=> (not res!475456) (not e!400678))))

(assert (=> b!712087 (= res!475456 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19742 a!3591)))))

(declare-fun b!712088 () Bool)

(assert (=> b!712088 (= e!400678 (arrayContainsKey!0 a!3591 k0!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97851 (not res!475455)) b!712087))

(assert (= (and b!712087 res!475456) b!712088))

(assert (=> d!97851 m!668827))

(declare-fun m!669159 () Bool)

(assert (=> b!712088 m!669159))

(assert (=> b!711796 d!97851))

(declare-fun d!97857 () Bool)

(declare-fun lt!318509 () Bool)

(assert (=> d!97857 (= lt!318509 (select (content!361 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400679 () Bool)

(assert (=> d!97857 (= lt!318509 e!400679)))

(declare-fun res!475457 () Bool)

(assert (=> d!97857 (=> (not res!475457) (not e!400679))))

(assert (=> d!97857 (= res!475457 ((_ is Cons!13426) acc!652))))

(assert (=> d!97857 (= (contains!3973 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318509)))

(declare-fun b!712089 () Bool)

(declare-fun e!400680 () Bool)

(assert (=> b!712089 (= e!400679 e!400680)))

(declare-fun res!475458 () Bool)

(assert (=> b!712089 (=> res!475458 e!400680)))

(assert (=> b!712089 (= res!475458 (= (h!14471 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712090 () Bool)

(assert (=> b!712090 (= e!400680 (contains!3973 (t!19747 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97857 res!475457) b!712089))

(assert (= (and b!712089 (not res!475458)) b!712090))

(assert (=> d!97857 m!669099))

(declare-fun m!669161 () Bool)

(assert (=> d!97857 m!669161))

(declare-fun m!669163 () Bool)

(assert (=> b!712090 m!669163))

(assert (=> b!711775 d!97857))

(declare-fun d!97859 () Bool)

(declare-fun res!475459 () Bool)

(declare-fun e!400681 () Bool)

(assert (=> d!97859 (=> res!475459 e!400681)))

(assert (=> d!97859 (= res!475459 ((_ is Nil!13427) lt!318463))))

(assert (=> d!97859 (= (noDuplicate!1220 lt!318463) e!400681)))

(declare-fun b!712091 () Bool)

(declare-fun e!400682 () Bool)

(assert (=> b!712091 (= e!400681 e!400682)))

(declare-fun res!475460 () Bool)

(assert (=> b!712091 (=> (not res!475460) (not e!400682))))

(assert (=> b!712091 (= res!475460 (not (contains!3973 (t!19747 lt!318463) (h!14471 lt!318463))))))

(declare-fun b!712092 () Bool)

(assert (=> b!712092 (= e!400682 (noDuplicate!1220 (t!19747 lt!318463)))))

(assert (= (and d!97859 (not res!475459)) b!712091))

(assert (= (and b!712091 res!475460) b!712092))

(declare-fun m!669165 () Bool)

(assert (=> b!712091 m!669165))

(declare-fun m!669167 () Bool)

(assert (=> b!712092 m!669167))

(assert (=> b!711773 d!97859))

(declare-fun d!97861 () Bool)

(declare-fun lt!318510 () Bool)

(assert (=> d!97861 (= lt!318510 (select (content!361 acc!652) k0!2824))))

(declare-fun e!400683 () Bool)

(assert (=> d!97861 (= lt!318510 e!400683)))

(declare-fun res!475461 () Bool)

(assert (=> d!97861 (=> (not res!475461) (not e!400683))))

(assert (=> d!97861 (= res!475461 ((_ is Cons!13426) acc!652))))

(assert (=> d!97861 (= (contains!3973 acc!652 k0!2824) lt!318510)))

(declare-fun b!712093 () Bool)

(declare-fun e!400684 () Bool)

(assert (=> b!712093 (= e!400683 e!400684)))

(declare-fun res!475462 () Bool)

(assert (=> b!712093 (=> res!475462 e!400684)))

(assert (=> b!712093 (= res!475462 (= (h!14471 acc!652) k0!2824))))

(declare-fun b!712094 () Bool)

(assert (=> b!712094 (= e!400684 (contains!3973 (t!19747 acc!652) k0!2824))))

(assert (= (and d!97861 res!475461) b!712093))

(assert (= (and b!712093 (not res!475462)) b!712094))

(assert (=> d!97861 m!669099))

(declare-fun m!669169 () Bool)

(assert (=> d!97861 m!669169))

(declare-fun m!669171 () Bool)

(assert (=> b!712094 m!669171))

(assert (=> b!711774 d!97861))

(declare-fun b!712095 () Bool)

(declare-fun e!400686 () Bool)

(declare-fun e!400687 () Bool)

(assert (=> b!712095 (= e!400686 e!400687)))

(declare-fun res!475465 () Bool)

(assert (=> b!712095 (=> (not res!475465) (not e!400687))))

(declare-fun e!400685 () Bool)

(assert (=> b!712095 (= res!475465 (not e!400685))))

(declare-fun res!475463 () Bool)

(assert (=> b!712095 (=> (not res!475463) (not e!400685))))

(assert (=> b!712095 (= res!475463 (validKeyInArray!0 (select (arr!19336 a!3591) from!2969)))))

(declare-fun b!712096 () Bool)

(declare-fun e!400688 () Bool)

(declare-fun call!34548 () Bool)

(assert (=> b!712096 (= e!400688 call!34548)))

(declare-fun b!712097 () Bool)

(assert (=> b!712097 (= e!400687 e!400688)))

(declare-fun c!78683 () Bool)

(assert (=> b!712097 (= c!78683 (validKeyInArray!0 (select (arr!19336 a!3591) from!2969)))))

(declare-fun d!97863 () Bool)

(declare-fun res!475464 () Bool)

(assert (=> d!97863 (=> res!475464 e!400686)))

(assert (=> d!97863 (= res!475464 (bvsge from!2969 (size!19742 a!3591)))))

(assert (=> d!97863 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!400686)))

(declare-fun b!712098 () Bool)

(assert (=> b!712098 (= e!400685 (contains!3973 acc!652 (select (arr!19336 a!3591) from!2969)))))

(declare-fun b!712099 () Bool)

(assert (=> b!712099 (= e!400688 call!34548)))

(declare-fun bm!34545 () Bool)

(assert (=> bm!34545 (= call!34548 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78683 (Cons!13426 (select (arr!19336 a!3591) from!2969) acc!652) acc!652)))))

(assert (= (and d!97863 (not res!475464)) b!712095))

(assert (= (and b!712095 res!475463) b!712098))

(assert (= (and b!712095 res!475465) b!712097))

(assert (= (and b!712097 c!78683) b!712096))

(assert (= (and b!712097 (not c!78683)) b!712099))

(assert (= (or b!712096 b!712099) bm!34545))

(assert (=> b!712095 m!668827))

(assert (=> b!712095 m!668827))

(assert (=> b!712095 m!668829))

(assert (=> b!712097 m!668827))

(assert (=> b!712097 m!668827))

(assert (=> b!712097 m!668829))

(assert (=> b!712098 m!668827))

(assert (=> b!712098 m!668827))

(declare-fun m!669173 () Bool)

(assert (=> b!712098 m!669173))

(assert (=> bm!34545 m!668827))

(declare-fun m!669175 () Bool)

(assert (=> bm!34545 m!669175))

(assert (=> b!711795 d!97863))

(declare-fun d!97865 () Bool)

(declare-fun lt!318511 () Bool)

(assert (=> d!97865 (= lt!318511 (select (content!361 lt!318464) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400697 () Bool)

(assert (=> d!97865 (= lt!318511 e!400697)))

(declare-fun res!475472 () Bool)

(assert (=> d!97865 (=> (not res!475472) (not e!400697))))

(assert (=> d!97865 (= res!475472 ((_ is Cons!13426) lt!318464))))

(assert (=> d!97865 (= (contains!3973 lt!318464 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318511)))

(declare-fun b!712110 () Bool)

(declare-fun e!400698 () Bool)

(assert (=> b!712110 (= e!400697 e!400698)))

(declare-fun res!475473 () Bool)

(assert (=> b!712110 (=> res!475473 e!400698)))

(assert (=> b!712110 (= res!475473 (= (h!14471 lt!318464) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712111 () Bool)

(assert (=> b!712111 (= e!400698 (contains!3973 (t!19747 lt!318464) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97865 res!475472) b!712110))

(assert (= (and b!712110 (not res!475473)) b!712111))

(assert (=> d!97865 m!668959))

(declare-fun m!669177 () Bool)

(assert (=> d!97865 m!669177))

(declare-fun m!669179 () Bool)

(assert (=> b!712111 m!669179))

(assert (=> b!711777 d!97865))

(declare-fun d!97867 () Bool)

(declare-fun res!475474 () Bool)

(declare-fun e!400699 () Bool)

(assert (=> d!97867 (=> res!475474 e!400699)))

(assert (=> d!97867 (= res!475474 ((_ is Nil!13427) acc!652))))

(assert (=> d!97867 (= (noDuplicate!1220 acc!652) e!400699)))

(declare-fun b!712112 () Bool)

(declare-fun e!400700 () Bool)

(assert (=> b!712112 (= e!400699 e!400700)))

(declare-fun res!475475 () Bool)

(assert (=> b!712112 (=> (not res!475475) (not e!400700))))

(assert (=> b!712112 (= res!475475 (not (contains!3973 (t!19747 acc!652) (h!14471 acc!652))))))

(declare-fun b!712113 () Bool)

(assert (=> b!712113 (= e!400700 (noDuplicate!1220 (t!19747 acc!652)))))

(assert (= (and d!97867 (not res!475474)) b!712112))

(assert (= (and b!712112 res!475475) b!712113))

(declare-fun m!669181 () Bool)

(assert (=> b!712112 m!669181))

(declare-fun m!669183 () Bool)

(assert (=> b!712113 m!669183))

(assert (=> b!711778 d!97867))

(declare-fun b!712116 () Bool)

(declare-fun e!400708 () Bool)

(declare-fun e!400707 () Bool)

(assert (=> b!712116 (= e!400708 e!400707)))

(declare-fun res!475483 () Bool)

(assert (=> b!712116 (=> (not res!475483) (not e!400707))))

(assert (=> b!712116 (= res!475483 ((_ is Cons!13426) newAcc!49))))

(declare-fun d!97869 () Bool)

(declare-fun res!475484 () Bool)

(assert (=> d!97869 (=> res!475484 e!400708)))

(assert (=> d!97869 (= res!475484 ((_ is Nil!13427) acc!652))))

(assert (=> d!97869 (= (subseq!417 acc!652 newAcc!49) e!400708)))

(declare-fun b!712118 () Bool)

(declare-fun e!400710 () Bool)

(assert (=> b!712118 (= e!400710 (subseq!417 (t!19747 acc!652) (t!19747 newAcc!49)))))

(declare-fun b!712117 () Bool)

(declare-fun e!400709 () Bool)

(assert (=> b!712117 (= e!400707 e!400709)))

(declare-fun res!475482 () Bool)

(assert (=> b!712117 (=> res!475482 e!400709)))

(assert (=> b!712117 (= res!475482 e!400710)))

(declare-fun res!475485 () Bool)

(assert (=> b!712117 (=> (not res!475485) (not e!400710))))

(assert (=> b!712117 (= res!475485 (= (h!14471 acc!652) (h!14471 newAcc!49)))))

(declare-fun b!712119 () Bool)

(assert (=> b!712119 (= e!400709 (subseq!417 acc!652 (t!19747 newAcc!49)))))

(assert (= (and d!97869 (not res!475484)) b!712116))

(assert (= (and b!712116 res!475483) b!712117))

(assert (= (and b!712117 res!475485) b!712118))

(assert (= (and b!712117 (not res!475482)) b!712119))

(declare-fun m!669185 () Bool)

(assert (=> b!712118 m!669185))

(declare-fun m!669187 () Bool)

(assert (=> b!712119 m!669187))

(assert (=> b!711797 d!97869))

(check-sat (not d!97761) (not d!97739) (not d!97783) (not b!712041) (not b!711972) (not bm!34536) (not d!97765) (not b!711892) (not b!711937) (not b!711967) (not b!711932) (not b!711907) (not d!97821) (not b!712097) (not bm!34537) (not b!712064) (not bm!34545) (not b!712043) (not b!711935) (not d!97865) (not b!712088) (not b!712119) (not b!711933) (not b!712044) (not d!97831) (not b!712080) (not b!711971) (not b!712070) (not b!711897) (not b!712112) (not d!97737) (not b!712060) (not b!712090) (not d!97825) (not b!711968) (not b!712095) (not b!711976) (not d!97861) (not b!712091) (not b!712113) (not b!712118) (not d!97843) (not bm!34543) (not d!97741) (not d!97763) (not d!97857) (not b!712111) (not b!712092) (not b!711939) (not b!712094) (not b!711913) (not b!712098))
(check-sat)
