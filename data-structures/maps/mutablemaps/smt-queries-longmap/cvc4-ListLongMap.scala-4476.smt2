; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62302 () Bool)

(assert start!62302)

(declare-fun b!697730 () Bool)

(declare-fun res!461781 () Bool)

(declare-fun e!396625 () Bool)

(assert (=> b!697730 (=> (not res!461781) (not e!396625))))

(declare-fun e!396621 () Bool)

(assert (=> b!697730 (= res!461781 e!396621)))

(declare-fun res!461785 () Bool)

(assert (=> b!697730 (=> res!461785 e!396621)))

(declare-fun e!396622 () Bool)

(assert (=> b!697730 (= res!461785 e!396622)))

(declare-fun res!461788 () Bool)

(assert (=> b!697730 (=> (not res!461788) (not e!396622))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!697730 (= res!461788 (bvsgt from!3004 i!1382))))

(declare-fun b!697731 () Bool)

(declare-fun res!461780 () Bool)

(assert (=> b!697731 (=> (not res!461780) (not e!396625))))

(declare-datatypes ((array!39976 0))(
  ( (array!39977 (arr!19142 (Array (_ BitVec 32) (_ BitVec 64))) (size!19525 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39976)

(declare-datatypes ((List!13236 0))(
  ( (Nil!13233) (Cons!13232 (h!14277 (_ BitVec 64)) (t!19526 List!13236)) )
))
(declare-fun arrayNoDuplicates!0 (array!39976 (_ BitVec 32) List!13236) Bool)

(assert (=> b!697731 (= res!461780 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13233))))

(declare-fun b!697732 () Bool)

(declare-fun res!461791 () Bool)

(assert (=> b!697732 (=> (not res!461791) (not e!396625))))

(assert (=> b!697732 (= res!461791 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19525 a!3626)))))

(declare-fun b!697733 () Bool)

(declare-fun res!461782 () Bool)

(assert (=> b!697733 (=> (not res!461782) (not e!396625))))

(assert (=> b!697733 (= res!461782 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19525 a!3626))))))

(declare-fun b!697734 () Bool)

(declare-fun res!461790 () Bool)

(assert (=> b!697734 (=> (not res!461790) (not e!396625))))

(declare-fun acc!681 () List!13236)

(declare-fun contains!3779 (List!13236 (_ BitVec 64)) Bool)

(assert (=> b!697734 (= res!461790 (not (contains!3779 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697735 () Bool)

(declare-fun res!461784 () Bool)

(assert (=> b!697735 (=> (not res!461784) (not e!396625))))

(declare-fun noDuplicate!1026 (List!13236) Bool)

(assert (=> b!697735 (= res!461784 (noDuplicate!1026 acc!681))))

(declare-fun b!697736 () Bool)

(declare-fun e!396623 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!697736 (= e!396623 (not (contains!3779 acc!681 k!2843)))))

(declare-fun b!697737 () Bool)

(assert (=> b!697737 (= e!396622 (contains!3779 acc!681 k!2843))))

(declare-fun b!697738 () Bool)

(declare-fun res!461786 () Bool)

(assert (=> b!697738 (=> (not res!461786) (not e!396625))))

(assert (=> b!697738 (= res!461786 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!697739 () Bool)

(declare-fun res!461787 () Bool)

(assert (=> b!697739 (=> (not res!461787) (not e!396625))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!697739 (= res!461787 (validKeyInArray!0 k!2843))))

(declare-fun b!697740 () Bool)

(declare-fun res!461792 () Bool)

(assert (=> b!697740 (=> (not res!461792) (not e!396625))))

(declare-fun arrayContainsKey!0 (array!39976 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!697740 (= res!461792 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun res!461783 () Bool)

(assert (=> start!62302 (=> (not res!461783) (not e!396625))))

(assert (=> start!62302 (= res!461783 (and (bvslt (size!19525 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19525 a!3626))))))

(assert (=> start!62302 e!396625))

(assert (=> start!62302 true))

(declare-fun array_inv!14916 (array!39976) Bool)

(assert (=> start!62302 (array_inv!14916 a!3626)))

(declare-fun b!697729 () Bool)

(declare-fun res!461779 () Bool)

(assert (=> b!697729 (=> (not res!461779) (not e!396625))))

(assert (=> b!697729 (= res!461779 (not (contains!3779 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697741 () Bool)

(assert (=> b!697741 (= e!396621 e!396623)))

(declare-fun res!461789 () Bool)

(assert (=> b!697741 (=> (not res!461789) (not e!396623))))

(assert (=> b!697741 (= res!461789 (bvsle from!3004 i!1382))))

(declare-fun b!697742 () Bool)

(assert (=> b!697742 (= e!396625 (not (arrayNoDuplicates!0 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626)) from!3004 acc!681)))))

(assert (= (and start!62302 res!461783) b!697735))

(assert (= (and b!697735 res!461784) b!697729))

(assert (= (and b!697729 res!461779) b!697734))

(assert (= (and b!697734 res!461790) b!697730))

(assert (= (and b!697730 res!461788) b!697737))

(assert (= (and b!697730 (not res!461785)) b!697741))

(assert (= (and b!697741 res!461789) b!697736))

(assert (= (and b!697730 res!461781) b!697731))

(assert (= (and b!697731 res!461780) b!697738))

(assert (= (and b!697738 res!461786) b!697733))

(assert (= (and b!697733 res!461782) b!697739))

(assert (= (and b!697739 res!461787) b!697740))

(assert (= (and b!697740 res!461792) b!697732))

(assert (= (and b!697732 res!461791) b!697742))

(declare-fun m!658061 () Bool)

(assert (=> b!697736 m!658061))

(declare-fun m!658063 () Bool)

(assert (=> b!697742 m!658063))

(declare-fun m!658065 () Bool)

(assert (=> b!697742 m!658065))

(declare-fun m!658067 () Bool)

(assert (=> b!697729 m!658067))

(declare-fun m!658069 () Bool)

(assert (=> b!697740 m!658069))

(declare-fun m!658071 () Bool)

(assert (=> b!697735 m!658071))

(declare-fun m!658073 () Bool)

(assert (=> b!697738 m!658073))

(declare-fun m!658075 () Bool)

(assert (=> b!697731 m!658075))

(declare-fun m!658077 () Bool)

(assert (=> b!697734 m!658077))

(declare-fun m!658079 () Bool)

(assert (=> b!697739 m!658079))

(assert (=> b!697737 m!658061))

(declare-fun m!658081 () Bool)

(assert (=> start!62302 m!658081))

(push 1)

(assert (not b!697738))

(assert (not b!697737))

(assert (not b!697731))

(assert (not b!697729))

(assert (not b!697734))

(assert (not b!697740))

(assert (not b!697739))

(assert (not b!697742))

(assert (not b!697736))

(assert (not b!697735))

(assert (not start!62302))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!96135 () Bool)

(assert (=> d!96135 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!697739 d!96135))

(declare-fun d!96137 () Bool)

(assert (=> d!96137 (= (array_inv!14916 a!3626) (bvsge (size!19525 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!62302 d!96137))

(declare-fun d!96139 () Bool)

(declare-fun lt!317144 () Bool)

(declare-fun content!332 (List!13236) (Set (_ BitVec 64)))

(assert (=> d!96139 (= lt!317144 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!332 acc!681)))))

(declare-fun e!396673 () Bool)

(assert (=> d!96139 (= lt!317144 e!396673)))

(declare-fun res!461834 () Bool)

(assert (=> d!96139 (=> (not res!461834) (not e!396673))))

(assert (=> d!96139 (= res!461834 (is-Cons!13232 acc!681))))

(assert (=> d!96139 (= (contains!3779 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!317144)))

(declare-fun b!697794 () Bool)

(declare-fun e!396672 () Bool)

(assert (=> b!697794 (= e!396673 e!396672)))

(declare-fun res!461835 () Bool)

(assert (=> b!697794 (=> res!461835 e!396672)))

(assert (=> b!697794 (= res!461835 (= (h!14277 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!697795 () Bool)

(assert (=> b!697795 (= e!396672 (contains!3779 (t!19526 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96139 res!461834) b!697794))

(assert (= (and b!697794 (not res!461835)) b!697795))

(declare-fun m!658127 () Bool)

(assert (=> d!96139 m!658127))

(declare-fun m!658129 () Bool)

(assert (=> d!96139 m!658129))

(declare-fun m!658131 () Bool)

(assert (=> b!697795 m!658131))

(assert (=> b!697734 d!96139))

(declare-fun d!96145 () Bool)

(declare-fun lt!317145 () Bool)

(assert (=> d!96145 (= lt!317145 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!332 acc!681)))))

(declare-fun e!396675 () Bool)

(assert (=> d!96145 (= lt!317145 e!396675)))

(declare-fun res!461836 () Bool)

(assert (=> d!96145 (=> (not res!461836) (not e!396675))))

(assert (=> d!96145 (= res!461836 (is-Cons!13232 acc!681))))

(assert (=> d!96145 (= (contains!3779 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!317145)))

(declare-fun b!697796 () Bool)

(declare-fun e!396674 () Bool)

(assert (=> b!697796 (= e!396675 e!396674)))

(declare-fun res!461837 () Bool)

(assert (=> b!697796 (=> res!461837 e!396674)))

(assert (=> b!697796 (= res!461837 (= (h!14277 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!697797 () Bool)

(assert (=> b!697797 (= e!396674 (contains!3779 (t!19526 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96145 res!461836) b!697796))

(assert (= (and b!697796 (not res!461837)) b!697797))

(assert (=> d!96145 m!658127))

(declare-fun m!658133 () Bool)

(assert (=> d!96145 m!658133))

(declare-fun m!658135 () Bool)

(assert (=> b!697797 m!658135))

(assert (=> b!697729 d!96145))

(declare-fun d!96147 () Bool)

(declare-fun res!461854 () Bool)

(declare-fun e!396694 () Bool)

(assert (=> d!96147 (=> res!461854 e!396694)))

(assert (=> d!96147 (= res!461854 (bvsge from!3004 (size!19525 a!3626)))))

(assert (=> d!96147 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!396694)))

(declare-fun b!697816 () Bool)

(declare-fun e!396695 () Bool)

(declare-fun call!34339 () Bool)

(assert (=> b!697816 (= e!396695 call!34339)))

(declare-fun e!396692 () Bool)

(declare-fun b!697817 () Bool)

(assert (=> b!697817 (= e!396692 (contains!3779 acc!681 (select (arr!19142 a!3626) from!3004)))))

(declare-fun c!78349 () Bool)

(declare-fun bm!34336 () Bool)

(assert (=> bm!34336 (= call!34339 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78349 (Cons!13232 (select (arr!19142 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!697818 () Bool)

(declare-fun e!396693 () Bool)

(assert (=> b!697818 (= e!396694 e!396693)))

(declare-fun res!461853 () Bool)

(assert (=> b!697818 (=> (not res!461853) (not e!396693))))

(assert (=> b!697818 (= res!461853 (not e!396692))))

(declare-fun res!461852 () Bool)

(assert (=> b!697818 (=> (not res!461852) (not e!396692))))

(assert (=> b!697818 (= res!461852 (validKeyInArray!0 (select (arr!19142 a!3626) from!3004)))))

(declare-fun b!697819 () Bool)

(assert (=> b!697819 (= e!396693 e!396695)))

(assert (=> b!697819 (= c!78349 (validKeyInArray!0 (select (arr!19142 a!3626) from!3004)))))

(declare-fun b!697820 () Bool)

(assert (=> b!697820 (= e!396695 call!34339)))

(assert (= (and d!96147 (not res!461854)) b!697818))

(assert (= (and b!697818 res!461852) b!697817))

(assert (= (and b!697818 res!461853) b!697819))

(assert (= (and b!697819 c!78349) b!697816))

(assert (= (and b!697819 (not c!78349)) b!697820))

(assert (= (or b!697816 b!697820) bm!34336))

(declare-fun m!658147 () Bool)

(assert (=> b!697817 m!658147))

(assert (=> b!697817 m!658147))

(declare-fun m!658149 () Bool)

(assert (=> b!697817 m!658149))

(assert (=> bm!34336 m!658147))

(declare-fun m!658151 () Bool)

(assert (=> bm!34336 m!658151))

(assert (=> b!697818 m!658147))

(assert (=> b!697818 m!658147))

(declare-fun m!658153 () Bool)

(assert (=> b!697818 m!658153))

(assert (=> b!697819 m!658147))

(assert (=> b!697819 m!658147))

(assert (=> b!697819 m!658153))

(assert (=> b!697738 d!96147))

(declare-fun d!96153 () Bool)

(declare-fun lt!317150 () Bool)

(assert (=> d!96153 (= lt!317150 (member k!2843 (content!332 acc!681)))))

(declare-fun e!396705 () Bool)

(assert (=> d!96153 (= lt!317150 e!396705)))

(declare-fun res!461861 () Bool)

(assert (=> d!96153 (=> (not res!461861) (not e!396705))))

(assert (=> d!96153 (= res!461861 (is-Cons!13232 acc!681))))

(assert (=> d!96153 (= (contains!3779 acc!681 k!2843) lt!317150)))

(declare-fun b!697831 () Bool)

(declare-fun e!396704 () Bool)

(assert (=> b!697831 (= e!396705 e!396704)))

(declare-fun res!461862 () Bool)

(assert (=> b!697831 (=> res!461862 e!396704)))

(assert (=> b!697831 (= res!461862 (= (h!14277 acc!681) k!2843))))

(declare-fun b!697832 () Bool)

(assert (=> b!697832 (= e!396704 (contains!3779 (t!19526 acc!681) k!2843))))

(assert (= (and d!96153 res!461861) b!697831))

(assert (= (and b!697831 (not res!461862)) b!697832))

(assert (=> d!96153 m!658127))

(declare-fun m!658155 () Bool)

(assert (=> d!96153 m!658155))

(declare-fun m!658157 () Bool)

(assert (=> b!697832 m!658157))

(assert (=> b!697736 d!96153))

(declare-fun d!96155 () Bool)

(declare-fun res!461865 () Bool)

(declare-fun e!396708 () Bool)

(assert (=> d!96155 (=> res!461865 e!396708)))

(assert (=> d!96155 (= res!461865 (bvsge #b00000000000000000000000000000000 (size!19525 a!3626)))))

(assert (=> d!96155 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13233) e!396708)))

(declare-fun b!697833 () Bool)

(declare-fun e!396709 () Bool)

(declare-fun call!34342 () Bool)

(assert (=> b!697833 (= e!396709 call!34342)))

(declare-fun b!697834 () Bool)

(declare-fun e!396706 () Bool)

(assert (=> b!697834 (= e!396706 (contains!3779 Nil!13233 (select (arr!19142 a!3626) #b00000000000000000000000000000000)))))

(declare-fun bm!34339 () Bool)

(declare-fun c!78352 () Bool)

(assert (=> bm!34339 (= call!34342 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78352 (Cons!13232 (select (arr!19142 a!3626) #b00000000000000000000000000000000) Nil!13233) Nil!13233)))))

(declare-fun b!697835 () Bool)

(declare-fun e!396707 () Bool)

(assert (=> b!697835 (= e!396708 e!396707)))

(declare-fun res!461864 () Bool)

(assert (=> b!697835 (=> (not res!461864) (not e!396707))))

(assert (=> b!697835 (= res!461864 (not e!396706))))

(declare-fun res!461863 () Bool)

(assert (=> b!697835 (=> (not res!461863) (not e!396706))))

(assert (=> b!697835 (= res!461863 (validKeyInArray!0 (select (arr!19142 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!697836 () Bool)

(assert (=> b!697836 (= e!396707 e!396709)))

(assert (=> b!697836 (= c!78352 (validKeyInArray!0 (select (arr!19142 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!697837 () Bool)

(assert (=> b!697837 (= e!396709 call!34342)))

(assert (= (and d!96155 (not res!461865)) b!697835))

(assert (= (and b!697835 res!461863) b!697834))

(assert (= (and b!697835 res!461864) b!697836))

(assert (= (and b!697836 c!78352) b!697833))

(assert (= (and b!697836 (not c!78352)) b!697837))

(assert (= (or b!697833 b!697837) bm!34339))

(declare-fun m!658159 () Bool)

(assert (=> b!697834 m!658159))

(assert (=> b!697834 m!658159))

(declare-fun m!658161 () Bool)

(assert (=> b!697834 m!658161))

(assert (=> bm!34339 m!658159))

(declare-fun m!658163 () Bool)

(assert (=> bm!34339 m!658163))

(assert (=> b!697835 m!658159))

(assert (=> b!697835 m!658159))

(declare-fun m!658165 () Bool)

(assert (=> b!697835 m!658165))

(assert (=> b!697836 m!658159))

(assert (=> b!697836 m!658159))

(assert (=> b!697836 m!658165))

(assert (=> b!697731 d!96155))

(declare-fun d!96157 () Bool)

(declare-fun res!461868 () Bool)

(declare-fun e!396712 () Bool)

(assert (=> d!96157 (=> res!461868 e!396712)))

(assert (=> d!96157 (= res!461868 (bvsge from!3004 (size!19525 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626)))))))

(assert (=> d!96157 (= (arrayNoDuplicates!0 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626)) from!3004 acc!681) e!396712)))

(declare-fun b!697838 () Bool)

(declare-fun e!396713 () Bool)

(declare-fun call!34343 () Bool)

(assert (=> b!697838 (= e!396713 call!34343)))

(declare-fun e!396710 () Bool)

(declare-fun b!697839 () Bool)

(assert (=> b!697839 (= e!396710 (contains!3779 acc!681 (select (arr!19142 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626))) from!3004)))))

(declare-fun bm!34340 () Bool)

(declare-fun c!78353 () Bool)

(assert (=> bm!34340 (= call!34343 (arrayNoDuplicates!0 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626)) (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78353 (Cons!13232 (select (arr!19142 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626))) from!3004) acc!681) acc!681)))))

(declare-fun b!697840 () Bool)

(declare-fun e!396711 () Bool)

(assert (=> b!697840 (= e!396712 e!396711)))

(declare-fun res!461867 () Bool)

(assert (=> b!697840 (=> (not res!461867) (not e!396711))))

(assert (=> b!697840 (= res!461867 (not e!396710))))

(declare-fun res!461866 () Bool)

(assert (=> b!697840 (=> (not res!461866) (not e!396710))))

(assert (=> b!697840 (= res!461866 (validKeyInArray!0 (select (arr!19142 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626))) from!3004)))))

(declare-fun b!697841 () Bool)

(assert (=> b!697841 (= e!396711 e!396713)))

(assert (=> b!697841 (= c!78353 (validKeyInArray!0 (select (arr!19142 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626))) from!3004)))))

(declare-fun b!697842 () Bool)

(assert (=> b!697842 (= e!396713 call!34343)))

(assert (= (and d!96157 (not res!461868)) b!697840))

(assert (= (and b!697840 res!461866) b!697839))

(assert (= (and b!697840 res!461867) b!697841))

(assert (= (and b!697841 c!78353) b!697838))

(assert (= (and b!697841 (not c!78353)) b!697842))

(assert (= (or b!697838 b!697842) bm!34340))

(declare-fun m!658167 () Bool)

(assert (=> b!697839 m!658167))

(assert (=> b!697839 m!658167))

(declare-fun m!658169 () Bool)

(assert (=> b!697839 m!658169))

(assert (=> bm!34340 m!658167))

(declare-fun m!658171 () Bool)

(assert (=> bm!34340 m!658171))

(assert (=> b!697840 m!658167))

(assert (=> b!697840 m!658167))

(declare-fun m!658173 () Bool)

(assert (=> b!697840 m!658173))

(assert (=> b!697841 m!658167))

(assert (=> b!697841 m!658167))

(assert (=> b!697841 m!658173))

(assert (=> b!697742 d!96157))

(assert (=> b!697737 d!96153))

(declare-fun d!96159 () Bool)

(declare-fun res!461880 () Bool)

(declare-fun e!396726 () Bool)

(assert (=> d!96159 (=> res!461880 e!396726)))

(assert (=> d!96159 (= res!461880 (= (select (arr!19142 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!96159 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!396726)))

(declare-fun b!697856 () Bool)

(declare-fun e!396727 () Bool)

(assert (=> b!697856 (= e!396726 e!396727)))

(declare-fun res!461881 () Bool)

(assert (=> b!697856 (=> (not res!461881) (not e!396727))))

(assert (=> b!697856 (= res!461881 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19525 a!3626)))))

(declare-fun b!697857 () Bool)

(assert (=> b!697857 (= e!396727 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!96159 (not res!461880)) b!697856))

(assert (= (and b!697856 res!461881) b!697857))

(assert (=> d!96159 m!658159))

(declare-fun m!658183 () Bool)

(assert (=> b!697857 m!658183))

(assert (=> b!697740 d!96159))

(declare-fun d!96163 () Bool)

(declare-fun res!461893 () Bool)

(declare-fun e!396740 () Bool)

(assert (=> d!96163 (=> res!461893 e!396740)))

(assert (=> d!96163 (= res!461893 (is-Nil!13233 acc!681))))

(assert (=> d!96163 (= (noDuplicate!1026 acc!681) e!396740)))

(declare-fun b!697871 () Bool)

(declare-fun e!396741 () Bool)

(assert (=> b!697871 (= e!396740 e!396741)))

(declare-fun res!461894 () Bool)

(assert (=> b!697871 (=> (not res!461894) (not e!396741))))

(assert (=> b!697871 (= res!461894 (not (contains!3779 (t!19526 acc!681) (h!14277 acc!681))))))

(declare-fun b!697872 () Bool)

(assert (=> b!697872 (= e!396741 (noDuplicate!1026 (t!19526 acc!681)))))

(assert (= (and d!96163 (not res!461893)) b!697871))

(assert (= (and b!697871 res!461894) b!697872))

(declare-fun m!658201 () Bool)

(assert (=> b!697871 m!658201))

(declare-fun m!658203 () Bool)

(assert (=> b!697872 m!658203))

(assert (=> b!697735 d!96163))

(push 1)

(assert (not b!697832))

(assert (not d!96139))

(assert (not b!697795))

(assert (not bm!34340))

(assert (not b!697857))

(assert (not b!697839))

(assert (not d!96145))

(assert (not bm!34339))

(assert (not d!96153))

(assert (not b!697834))

(assert (not b!697872))

(assert (not b!697871))

(assert (not bm!34336))

(assert (not b!697841))

(assert (not b!697835))

(assert (not b!697797))

(assert (not b!697817))

(assert (not b!697819))

(assert (not b!697836))

(assert (not b!697840))

(assert (not b!697818))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!96223 () Bool)

(declare-fun res!461945 () Bool)

(declare-fun e!396801 () Bool)

(assert (=> d!96223 (=> res!461945 e!396801)))

(assert (=> d!96223 (= res!461945 (bvsge (bvadd from!3004 #b00000000000000000000000000000001) (size!19525 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626)))))))

(assert (=> d!96223 (= (arrayNoDuplicates!0 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626)) (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78353 (Cons!13232 (select (arr!19142 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626))) from!3004) acc!681) acc!681)) e!396801)))

(declare-fun b!697939 () Bool)

(declare-fun e!396802 () Bool)

(declare-fun call!34352 () Bool)

(assert (=> b!697939 (= e!396802 call!34352)))

(declare-fun b!697940 () Bool)

(declare-fun e!396799 () Bool)

(assert (=> b!697940 (= e!396799 (contains!3779 (ite c!78353 (Cons!13232 (select (arr!19142 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626))) from!3004) acc!681) acc!681) (select (arr!19142 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626))) (bvadd from!3004 #b00000000000000000000000000000001))))))

(declare-fun c!78365 () Bool)

(declare-fun bm!34349 () Bool)

(assert (=> bm!34349 (= call!34352 (arrayNoDuplicates!0 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626)) (bvadd from!3004 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!78365 (Cons!13232 (select (arr!19142 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626))) (bvadd from!3004 #b00000000000000000000000000000001)) (ite c!78353 (Cons!13232 (select (arr!19142 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626))) from!3004) acc!681) acc!681)) (ite c!78353 (Cons!13232 (select (arr!19142 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626))) from!3004) acc!681) acc!681))))))

(declare-fun b!697941 () Bool)

(declare-fun e!396800 () Bool)

(assert (=> b!697941 (= e!396801 e!396800)))

(declare-fun res!461944 () Bool)

(assert (=> b!697941 (=> (not res!461944) (not e!396800))))

(assert (=> b!697941 (= res!461944 (not e!396799))))

(declare-fun res!461943 () Bool)

(assert (=> b!697941 (=> (not res!461943) (not e!396799))))

(assert (=> b!697941 (= res!461943 (validKeyInArray!0 (select (arr!19142 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626))) (bvadd from!3004 #b00000000000000000000000000000001))))))

(declare-fun b!697942 () Bool)

(assert (=> b!697942 (= e!396800 e!396802)))

(assert (=> b!697942 (= c!78365 (validKeyInArray!0 (select (arr!19142 (array!39977 (store (arr!19142 a!3626) i!1382 k!2843) (size!19525 a!3626))) (bvadd from!3004 #b00000000000000000000000000000001))))))

(declare-fun b!697943 () Bool)

(assert (=> b!697943 (= e!396802 call!34352)))

(assert (= (and d!96223 (not res!461945)) b!697941))

(assert (= (and b!697941 res!461943) b!697940))

(assert (= (and b!697941 res!461944) b!697942))

(assert (= (and b!697942 c!78365) b!697939))

(assert (= (and b!697942 (not c!78365)) b!697943))

(assert (= (or b!697939 b!697943) bm!34349))

(declare-fun m!658309 () Bool)

(assert (=> b!697940 m!658309))

(assert (=> b!697940 m!658309))

(declare-fun m!658311 () Bool)

(assert (=> b!697940 m!658311))

(assert (=> bm!34349 m!658309))

(declare-fun m!658313 () Bool)

(assert (=> bm!34349 m!658313))

(assert (=> b!697941 m!658309))

(assert (=> b!697941 m!658309))

(declare-fun m!658315 () Bool)

(assert (=> b!697941 m!658315))

(assert (=> b!697942 m!658309))

(assert (=> b!697942 m!658309))

(assert (=> b!697942 m!658315))

(assert (=> bm!34340 d!96223))

(declare-fun d!96225 () Bool)

(assert (=> d!96225 (= (validKeyInArray!0 (select (arr!19142 a!3626) from!3004)) (and (not (= (select (arr!19142 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19142 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!697819 d!96225))

(declare-fun d!96227 () Bool)

(declare-fun lt!317161 () Bool)

(assert (=> d!96227 (= lt!317161 (member k!2843 (content!332 (t!19526 acc!681))))))

(declare-fun e!396806 () Bool)

