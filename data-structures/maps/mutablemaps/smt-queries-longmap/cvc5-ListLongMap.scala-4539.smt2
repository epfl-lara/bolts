; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63106 () Bool)

(assert start!63106)

(declare-fun b!710636 () Bool)

(declare-fun res!474190 () Bool)

(declare-fun e!399880 () Bool)

(assert (=> b!710636 (=> (not res!474190) (not e!399880))))

(declare-datatypes ((List!13423 0))(
  ( (Nil!13420) (Cons!13419 (h!14464 (_ BitVec 64)) (t!19734 List!13423)) )
))
(declare-fun newAcc!49 () List!13423)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun acc!652 () List!13423)

(declare-fun -!375 (List!13423 (_ BitVec 64)) List!13423)

(assert (=> b!710636 (= res!474190 (= (-!375 newAcc!49 k!2824) acc!652))))

(declare-fun b!710637 () Bool)

(declare-fun res!474186 () Bool)

(declare-fun e!399882 () Bool)

(assert (=> b!710637 (=> (not res!474186) (not e!399882))))

(declare-datatypes ((array!40374 0))(
  ( (array!40375 (arr!19329 (Array (_ BitVec 32) (_ BitVec 64))) (size!19730 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40374)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun lt!318329 () List!13423)

(declare-fun arrayNoDuplicates!0 (array!40374 (_ BitVec 32) List!13423) Bool)

(assert (=> b!710637 (= res!474186 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318329))))

(declare-fun b!710638 () Bool)

(declare-fun res!474192 () Bool)

(assert (=> b!710638 (=> (not res!474192) (not e!399880))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!710638 (= res!474192 (validKeyInArray!0 (select (arr!19329 a!3591) from!2969)))))

(declare-fun b!710639 () Bool)

(declare-fun res!474195 () Bool)

(assert (=> b!710639 (=> (not res!474195) (not e!399880))))

(declare-fun contains!3966 (List!13423 (_ BitVec 64)) Bool)

(assert (=> b!710639 (= res!474195 (not (contains!3966 acc!652 k!2824)))))

(declare-fun b!710640 () Bool)

(declare-fun res!474176 () Bool)

(assert (=> b!710640 (=> (not res!474176) (not e!399882))))

(declare-fun lt!318328 () List!13423)

(declare-fun noDuplicate!1213 (List!13423) Bool)

(assert (=> b!710640 (= res!474176 (noDuplicate!1213 lt!318328))))

(declare-fun b!710641 () Bool)

(declare-fun res!474185 () Bool)

(assert (=> b!710641 (=> (not res!474185) (not e!399882))))

(assert (=> b!710641 (= res!474185 (not (contains!3966 lt!318329 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710642 () Bool)

(assert (=> b!710642 (= e!399880 e!399882)))

(declare-fun res!474184 () Bool)

(assert (=> b!710642 (=> (not res!474184) (not e!399882))))

(assert (=> b!710642 (= res!474184 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!520 (List!13423 (_ BitVec 64)) List!13423)

(assert (=> b!710642 (= lt!318328 ($colon$colon!520 newAcc!49 (select (arr!19329 a!3591) from!2969)))))

(assert (=> b!710642 (= lt!318329 ($colon$colon!520 acc!652 (select (arr!19329 a!3591) from!2969)))))

(declare-fun b!710643 () Bool)

(declare-fun res!474177 () Bool)

(assert (=> b!710643 (=> (not res!474177) (not e!399880))))

(assert (=> b!710643 (= res!474177 (not (contains!3966 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710644 () Bool)

(assert (=> b!710644 (= e!399882 (not (contains!3966 lt!318328 k!2824)))))

(declare-fun res!474189 () Bool)

(assert (=> start!63106 (=> (not res!474189) (not e!399880))))

(assert (=> start!63106 (= res!474189 (and (bvslt (size!19730 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19730 a!3591))))))

(assert (=> start!63106 e!399880))

(assert (=> start!63106 true))

(declare-fun array_inv!15103 (array!40374) Bool)

(assert (=> start!63106 (array_inv!15103 a!3591)))

(declare-fun b!710645 () Bool)

(declare-fun res!474175 () Bool)

(assert (=> b!710645 (=> (not res!474175) (not e!399880))))

(declare-fun arrayContainsKey!0 (array!40374 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!710645 (= res!474175 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!710646 () Bool)

(declare-fun res!474197 () Bool)

(assert (=> b!710646 (=> (not res!474197) (not e!399880))))

(assert (=> b!710646 (= res!474197 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!710647 () Bool)

(declare-fun res!474198 () Bool)

(assert (=> b!710647 (=> (not res!474198) (not e!399880))))

(assert (=> b!710647 (= res!474198 (noDuplicate!1213 newAcc!49))))

(declare-fun b!710648 () Bool)

(declare-fun res!474196 () Bool)

(assert (=> b!710648 (=> (not res!474196) (not e!399880))))

(assert (=> b!710648 (= res!474196 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19730 a!3591)))))

(declare-fun b!710649 () Bool)

(declare-fun res!474183 () Bool)

(assert (=> b!710649 (=> (not res!474183) (not e!399882))))

(assert (=> b!710649 (= res!474183 (not (contains!3966 lt!318329 k!2824)))))

(declare-fun b!710650 () Bool)

(declare-fun res!474187 () Bool)

(assert (=> b!710650 (=> (not res!474187) (not e!399880))))

(assert (=> b!710650 (= res!474187 (contains!3966 newAcc!49 k!2824))))

(declare-fun b!710651 () Bool)

(declare-fun res!474191 () Bool)

(assert (=> b!710651 (=> (not res!474191) (not e!399882))))

(assert (=> b!710651 (= res!474191 (not (contains!3966 lt!318329 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710652 () Bool)

(declare-fun res!474174 () Bool)

(assert (=> b!710652 (=> (not res!474174) (not e!399880))))

(assert (=> b!710652 (= res!474174 (noDuplicate!1213 acc!652))))

(declare-fun b!710653 () Bool)

(declare-fun res!474188 () Bool)

(assert (=> b!710653 (=> (not res!474188) (not e!399882))))

(assert (=> b!710653 (= res!474188 (noDuplicate!1213 lt!318329))))

(declare-fun b!710654 () Bool)

(declare-fun res!474193 () Bool)

(assert (=> b!710654 (=> (not res!474193) (not e!399880))))

(assert (=> b!710654 (= res!474193 (validKeyInArray!0 k!2824))))

(declare-fun b!710655 () Bool)

(declare-fun res!474178 () Bool)

(assert (=> b!710655 (=> (not res!474178) (not e!399880))))

(assert (=> b!710655 (= res!474178 (not (contains!3966 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710656 () Bool)

(declare-fun res!474179 () Bool)

(assert (=> b!710656 (=> (not res!474179) (not e!399882))))

(assert (=> b!710656 (= res!474179 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!710657 () Bool)

(declare-fun res!474181 () Bool)

(assert (=> b!710657 (=> (not res!474181) (not e!399880))))

(declare-fun subseq!410 (List!13423 List!13423) Bool)

(assert (=> b!710657 (= res!474181 (subseq!410 acc!652 newAcc!49))))

(declare-fun b!710658 () Bool)

(declare-fun res!474180 () Bool)

(assert (=> b!710658 (=> (not res!474180) (not e!399880))))

(assert (=> b!710658 (= res!474180 (not (contains!3966 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710659 () Bool)

(declare-fun res!474182 () Bool)

(assert (=> b!710659 (=> (not res!474182) (not e!399882))))

(assert (=> b!710659 (= res!474182 (subseq!410 lt!318329 lt!318328))))

(declare-fun b!710660 () Bool)

(declare-fun res!474194 () Bool)

(assert (=> b!710660 (=> (not res!474194) (not e!399880))))

(assert (=> b!710660 (= res!474194 (not (contains!3966 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!63106 res!474189) b!710652))

(assert (= (and b!710652 res!474174) b!710647))

(assert (= (and b!710647 res!474198) b!710643))

(assert (= (and b!710643 res!474177) b!710660))

(assert (= (and b!710660 res!474194) b!710645))

(assert (= (and b!710645 res!474175) b!710639))

(assert (= (and b!710639 res!474195) b!710654))

(assert (= (and b!710654 res!474193) b!710646))

(assert (= (and b!710646 res!474197) b!710657))

(assert (= (and b!710657 res!474181) b!710650))

(assert (= (and b!710650 res!474187) b!710636))

(assert (= (and b!710636 res!474190) b!710655))

(assert (= (and b!710655 res!474178) b!710658))

(assert (= (and b!710658 res!474180) b!710648))

(assert (= (and b!710648 res!474196) b!710638))

(assert (= (and b!710638 res!474192) b!710642))

(assert (= (and b!710642 res!474184) b!710653))

(assert (= (and b!710653 res!474188) b!710640))

(assert (= (and b!710640 res!474176) b!710641))

(assert (= (and b!710641 res!474185) b!710651))

(assert (= (and b!710651 res!474191) b!710656))

(assert (= (and b!710656 res!474179) b!710649))

(assert (= (and b!710649 res!474183) b!710637))

(assert (= (and b!710637 res!474186) b!710659))

(assert (= (and b!710659 res!474182) b!710644))

(declare-fun m!667815 () Bool)

(assert (=> b!710636 m!667815))

(declare-fun m!667817 () Bool)

(assert (=> b!710659 m!667817))

(declare-fun m!667819 () Bool)

(assert (=> b!710641 m!667819))

(declare-fun m!667821 () Bool)

(assert (=> b!710643 m!667821))

(declare-fun m!667823 () Bool)

(assert (=> b!710654 m!667823))

(declare-fun m!667825 () Bool)

(assert (=> b!710644 m!667825))

(declare-fun m!667827 () Bool)

(assert (=> b!710637 m!667827))

(declare-fun m!667829 () Bool)

(assert (=> b!710655 m!667829))

(declare-fun m!667831 () Bool)

(assert (=> b!710638 m!667831))

(assert (=> b!710638 m!667831))

(declare-fun m!667833 () Bool)

(assert (=> b!710638 m!667833))

(declare-fun m!667835 () Bool)

(assert (=> b!710660 m!667835))

(declare-fun m!667837 () Bool)

(assert (=> b!710657 m!667837))

(declare-fun m!667839 () Bool)

(assert (=> b!710649 m!667839))

(declare-fun m!667841 () Bool)

(assert (=> b!710656 m!667841))

(declare-fun m!667843 () Bool)

(assert (=> b!710651 m!667843))

(declare-fun m!667845 () Bool)

(assert (=> b!710639 m!667845))

(declare-fun m!667847 () Bool)

(assert (=> b!710658 m!667847))

(declare-fun m!667849 () Bool)

(assert (=> b!710650 m!667849))

(declare-fun m!667851 () Bool)

(assert (=> b!710647 m!667851))

(declare-fun m!667853 () Bool)

(assert (=> b!710653 m!667853))

(declare-fun m!667855 () Bool)

(assert (=> b!710646 m!667855))

(assert (=> b!710642 m!667831))

(assert (=> b!710642 m!667831))

(declare-fun m!667857 () Bool)

(assert (=> b!710642 m!667857))

(assert (=> b!710642 m!667831))

(declare-fun m!667859 () Bool)

(assert (=> b!710642 m!667859))

(declare-fun m!667861 () Bool)

(assert (=> b!710645 m!667861))

(declare-fun m!667863 () Bool)

(assert (=> b!710652 m!667863))

(declare-fun m!667865 () Bool)

(assert (=> b!710640 m!667865))

(declare-fun m!667867 () Bool)

(assert (=> start!63106 m!667867))

(push 1)

(assert (not b!710636))

(assert (not b!710660))

(assert (not b!710639))

(assert (not b!710647))

(assert (not b!710640))

(assert (not b!710638))

(assert (not b!710649))

(assert (not b!710650))

(assert (not b!710652))

(assert (not b!710658))

(assert (not b!710644))

(assert (not b!710643))

(assert (not b!710637))

(assert (not b!710645))

(assert (not b!710646))

(assert (not b!710659))

(assert (not b!710642))

(assert (not b!710654))

(assert (not b!710657))

(assert (not start!63106))

(assert (not b!710651))

(assert (not b!710653))

(assert (not b!710655))

(assert (not b!710641))

(assert (not b!710656))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!97439 () Bool)

(declare-fun res!474392 () Bool)

(declare-fun e!399951 () Bool)

(assert (=> d!97439 (=> res!474392 e!399951)))

(assert (=> d!97439 (= res!474392 (= (select (arr!19329 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k!2824))))

(assert (=> d!97439 (= (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!399951)))

(declare-fun b!710866 () Bool)

(declare-fun e!399952 () Bool)

(assert (=> b!710866 (= e!399951 e!399952)))

(declare-fun res!474393 () Bool)

(assert (=> b!710866 (=> (not res!474393) (not e!399952))))

(assert (=> b!710866 (= res!474393 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19730 a!3591)))))

(declare-fun b!710867 () Bool)

(assert (=> b!710867 (= e!399952 (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97439 (not res!474392)) b!710866))

(assert (= (and b!710866 res!474393) b!710867))

(declare-fun m!668025 () Bool)

(assert (=> d!97439 m!668025))

(declare-fun m!668027 () Bool)

(assert (=> b!710867 m!668027))

(assert (=> b!710656 d!97439))

(declare-fun b!710920 () Bool)

(declare-fun e!400004 () List!13423)

(declare-fun e!400002 () List!13423)

(assert (=> b!710920 (= e!400004 e!400002)))

(declare-fun c!78608 () Bool)

(assert (=> b!710920 (= c!78608 (= k!2824 (h!14464 newAcc!49)))))

(declare-fun b!710921 () Bool)

(assert (=> b!710921 (= e!400004 Nil!13420)))

(declare-fun b!710922 () Bool)

(declare-fun call!34497 () List!13423)

(assert (=> b!710922 (= e!400002 (Cons!13419 (h!14464 newAcc!49) call!34497))))

(declare-fun e!400003 () Bool)

(declare-fun b!710923 () Bool)

(declare-fun lt!318364 () List!13423)

(declare-fun content!357 (List!13423) (Set (_ BitVec 64)))

(assert (=> b!710923 (= e!400003 (= (content!357 lt!318364) (set.minus (content!357 newAcc!49) (set.insert k!2824 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun d!97447 () Bool)

(assert (=> d!97447 e!400003))

(declare-fun res!474438 () Bool)

(assert (=> d!97447 (=> (not res!474438) (not e!400003))))

(declare-fun size!19734 (List!13423) Int)

(assert (=> d!97447 (= res!474438 (<= (size!19734 lt!318364) (size!19734 newAcc!49)))))

(assert (=> d!97447 (= lt!318364 e!400004)))

(declare-fun c!78609 () Bool)

(assert (=> d!97447 (= c!78609 (is-Cons!13419 newAcc!49))))

(assert (=> d!97447 (= (-!375 newAcc!49 k!2824) lt!318364)))

(declare-fun b!710924 () Bool)

(assert (=> b!710924 (= e!400002 call!34497)))

(declare-fun bm!34494 () Bool)

(assert (=> bm!34494 (= call!34497 (-!375 (t!19734 newAcc!49) k!2824))))

(assert (= (and d!97447 c!78609) b!710920))

(assert (= (and d!97447 (not c!78609)) b!710921))

(assert (= (and b!710920 c!78608) b!710924))

(assert (= (and b!710920 (not c!78608)) b!710922))

(assert (= (or b!710924 b!710922) bm!34494))

(assert (= (and d!97447 res!474438) b!710923))

(declare-fun m!668087 () Bool)

(assert (=> b!710923 m!668087))

(declare-fun m!668089 () Bool)

(assert (=> b!710923 m!668089))

(declare-fun m!668091 () Bool)

(assert (=> b!710923 m!668091))

(declare-fun m!668093 () Bool)

(assert (=> d!97447 m!668093))

(declare-fun m!668095 () Bool)

(assert (=> d!97447 m!668095))

(declare-fun m!668097 () Bool)

(assert (=> bm!34494 m!668097))

(assert (=> b!710636 d!97447))

(declare-fun b!710955 () Bool)

(declare-fun e!400042 () Bool)

(declare-fun e!400037 () Bool)

(assert (=> b!710955 (= e!400042 e!400037)))

(declare-fun res!474474 () Bool)

(assert (=> b!710955 (=> (not res!474474) (not e!400037))))

(assert (=> b!710955 (= res!474474 (is-Cons!13419 newAcc!49))))

(declare-fun b!710957 () Bool)

(declare-fun e!400038 () Bool)

(assert (=> b!710957 (= e!400038 (subseq!410 (t!19734 acc!652) (t!19734 newAcc!49)))))

(declare-fun b!710956 () Bool)

(declare-fun e!400041 () Bool)

(assert (=> b!710956 (= e!400037 e!400041)))

(declare-fun res!474471 () Bool)

(assert (=> b!710956 (=> res!474471 e!400041)))

(assert (=> b!710956 (= res!474471 e!400038)))

(declare-fun res!474472 () Bool)

(assert (=> b!710956 (=> (not res!474472) (not e!400038))))

(assert (=> b!710956 (= res!474472 (= (h!14464 acc!652) (h!14464 newAcc!49)))))

(declare-fun d!97479 () Bool)

(declare-fun res!474473 () Bool)

(assert (=> d!97479 (=> res!474473 e!400042)))

(assert (=> d!97479 (= res!474473 (is-Nil!13420 acc!652))))

(assert (=> d!97479 (= (subseq!410 acc!652 newAcc!49) e!400042)))

(declare-fun b!710958 () Bool)

(assert (=> b!710958 (= e!400041 (subseq!410 acc!652 (t!19734 newAcc!49)))))

(assert (= (and d!97479 (not res!474473)) b!710955))

(assert (= (and b!710955 res!474474) b!710956))

(assert (= (and b!710956 res!474472) b!710957))

(assert (= (and b!710956 (not res!474471)) b!710958))

(declare-fun m!668117 () Bool)

(assert (=> b!710957 m!668117))

(declare-fun m!668121 () Bool)

(assert (=> b!710958 m!668121))

(assert (=> b!710657 d!97479))

(declare-fun d!97495 () Bool)

(declare-fun lt!318370 () Bool)

(assert (=> d!97495 (= lt!318370 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!357 newAcc!49)))))

(declare-fun e!400062 () Bool)

(assert (=> d!97495 (= lt!318370 e!400062)))

(declare-fun res!474492 () Bool)

(assert (=> d!97495 (=> (not res!474492) (not e!400062))))

(assert (=> d!97495 (= res!474492 (is-Cons!13419 newAcc!49))))

(assert (=> d!97495 (= (contains!3966 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318370)))

(declare-fun b!710984 () Bool)

(declare-fun e!400061 () Bool)

(assert (=> b!710984 (= e!400062 e!400061)))

(declare-fun res!474493 () Bool)

(assert (=> b!710984 (=> res!474493 e!400061)))

(assert (=> b!710984 (= res!474493 (= (h!14464 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710985 () Bool)

(assert (=> b!710985 (= e!400061 (contains!3966 (t!19734 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97495 res!474492) b!710984))

(assert (= (and b!710984 (not res!474493)) b!710985))

(assert (=> d!97495 m!668089))

(declare-fun m!668137 () Bool)

(assert (=> d!97495 m!668137))

(declare-fun m!668139 () Bool)

(assert (=> b!710985 m!668139))

(assert (=> b!710658 d!97495))

(declare-fun d!97503 () Bool)

(declare-fun res!474507 () Bool)

(declare-fun e!400079 () Bool)

(assert (=> d!97503 (=> res!474507 e!400079)))

(assert (=> d!97503 (= res!474507 (is-Nil!13420 lt!318329))))

(assert (=> d!97503 (= (noDuplicate!1213 lt!318329) e!400079)))

(declare-fun b!711005 () Bool)

(declare-fun e!400080 () Bool)

(assert (=> b!711005 (= e!400079 e!400080)))

(declare-fun res!474508 () Bool)

(assert (=> b!711005 (=> (not res!474508) (not e!400080))))

(assert (=> b!711005 (= res!474508 (not (contains!3966 (t!19734 lt!318329) (h!14464 lt!318329))))))

(declare-fun b!711006 () Bool)

(assert (=> b!711006 (= e!400080 (noDuplicate!1213 (t!19734 lt!318329)))))

(assert (= (and d!97503 (not res!474507)) b!711005))

(assert (= (and b!711005 res!474508) b!711006))

(declare-fun m!668151 () Bool)

(assert (=> b!711005 m!668151))

(declare-fun m!668153 () Bool)

(assert (=> b!711006 m!668153))

(assert (=> b!710653 d!97503))

(declare-fun d!97507 () Bool)

(assert (=> d!97507 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!710654 d!97507))

(declare-fun d!97509 () Bool)

(declare-fun lt!318371 () Bool)

(assert (=> d!97509 (= lt!318371 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!357 newAcc!49)))))

(declare-fun e!400082 () Bool)

(assert (=> d!97509 (= lt!318371 e!400082)))

(declare-fun res!474509 () Bool)

(assert (=> d!97509 (=> (not res!474509) (not e!400082))))

(assert (=> d!97509 (= res!474509 (is-Cons!13419 newAcc!49))))

(assert (=> d!97509 (= (contains!3966 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318371)))

(declare-fun b!711007 () Bool)

(declare-fun e!400081 () Bool)

(assert (=> b!711007 (= e!400082 e!400081)))

(declare-fun res!474510 () Bool)

(assert (=> b!711007 (=> res!474510 e!400081)))

(assert (=> b!711007 (= res!474510 (= (h!14464 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711008 () Bool)

(assert (=> b!711008 (= e!400081 (contains!3966 (t!19734 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97509 res!474509) b!711007))

(assert (= (and b!711007 (not res!474510)) b!711008))

(assert (=> d!97509 m!668089))

(declare-fun m!668155 () Bool)

(assert (=> d!97509 m!668155))

(declare-fun m!668157 () Bool)

(assert (=> b!711008 m!668157))

(assert (=> b!710655 d!97509))

(declare-fun d!97511 () Bool)

(declare-fun res!474511 () Bool)

(declare-fun e!400083 () Bool)

(assert (=> d!97511 (=> res!474511 e!400083)))

(assert (=> d!97511 (= res!474511 (is-Nil!13420 lt!318328))))

(assert (=> d!97511 (= (noDuplicate!1213 lt!318328) e!400083)))

(declare-fun b!711009 () Bool)

(declare-fun e!400084 () Bool)

(assert (=> b!711009 (= e!400083 e!400084)))

(declare-fun res!474512 () Bool)

(assert (=> b!711009 (=> (not res!474512) (not e!400084))))

(assert (=> b!711009 (= res!474512 (not (contains!3966 (t!19734 lt!318328) (h!14464 lt!318328))))))

(declare-fun b!711010 () Bool)

(assert (=> b!711010 (= e!400084 (noDuplicate!1213 (t!19734 lt!318328)))))

(assert (= (and d!97511 (not res!474511)) b!711009))

(assert (= (and b!711009 res!474512) b!711010))

(declare-fun m!668159 () Bool)

(assert (=> b!711009 m!668159))

(declare-fun m!668161 () Bool)

(assert (=> b!711010 m!668161))

(assert (=> b!710640 d!97511))

(declare-fun d!97513 () Bool)

(declare-fun lt!318372 () Bool)

(assert (=> d!97513 (= lt!318372 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!357 lt!318329)))))

(declare-fun e!400090 () Bool)

(assert (=> d!97513 (= lt!318372 e!400090)))

(declare-fun res!474516 () Bool)

(assert (=> d!97513 (=> (not res!474516) (not e!400090))))

(assert (=> d!97513 (= res!474516 (is-Cons!13419 lt!318329))))

(assert (=> d!97513 (= (contains!3966 lt!318329 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318372)))

(declare-fun b!711016 () Bool)

(declare-fun e!400089 () Bool)

(assert (=> b!711016 (= e!400090 e!400089)))

(declare-fun res!474517 () Bool)

(assert (=> b!711016 (=> res!474517 e!400089)))

(assert (=> b!711016 (= res!474517 (= (h!14464 lt!318329) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711017 () Bool)

(assert (=> b!711017 (= e!400089 (contains!3966 (t!19734 lt!318329) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97513 res!474516) b!711016))

(assert (= (and b!711016 (not res!474517)) b!711017))

(declare-fun m!668163 () Bool)

(assert (=> d!97513 m!668163))

(declare-fun m!668165 () Bool)

(assert (=> d!97513 m!668165))

(declare-fun m!668167 () Bool)

(assert (=> b!711017 m!668167))

(assert (=> b!710641 d!97513))

(declare-fun d!97515 () Bool)

(assert (=> d!97515 (= ($colon$colon!520 newAcc!49 (select (arr!19329 a!3591) from!2969)) (Cons!13419 (select (arr!19329 a!3591) from!2969) newAcc!49))))

(assert (=> b!710642 d!97515))

(declare-fun d!97519 () Bool)

(assert (=> d!97519 (= ($colon$colon!520 acc!652 (select (arr!19329 a!3591) from!2969)) (Cons!13419 (select (arr!19329 a!3591) from!2969) acc!652))))

(assert (=> b!710642 d!97519))

(declare-fun b!711047 () Bool)

(declare-fun e!400117 () Bool)

(declare-fun e!400119 () Bool)

(assert (=> b!711047 (= e!400117 e!400119)))

(declare-fun res!474543 () Bool)

(assert (=> b!711047 (=> (not res!474543) (not e!400119))))

(declare-fun e!400120 () Bool)

(assert (=> b!711047 (= res!474543 (not e!400120))))

(declare-fun res!474542 () Bool)

(assert (=> b!711047 (=> (not res!474542) (not e!400120))))

(assert (=> b!711047 (= res!474542 (validKeyInArray!0 (select (arr!19329 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!711048 () Bool)

(declare-fun e!400118 () Bool)

(declare-fun call!34508 () Bool)

(assert (=> b!711048 (= e!400118 call!34508)))

(declare-fun d!97521 () Bool)

(declare-fun res!474541 () Bool)

(assert (=> d!97521 (=> res!474541 e!400117)))

(assert (=> d!97521 (= res!474541 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19730 a!3591)))))

(assert (=> d!97521 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318329) e!400117)))

(declare-fun bm!34505 () Bool)

(declare-fun c!78620 () Bool)

(assert (=> bm!34505 (= call!34508 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78620 (Cons!13419 (select (arr!19329 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) lt!318329) lt!318329)))))

(declare-fun b!711049 () Bool)

(assert (=> b!711049 (= e!400120 (contains!3966 lt!318329 (select (arr!19329 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!711050 () Bool)

(assert (=> b!711050 (= e!400118 call!34508)))

(declare-fun b!711051 () Bool)

(assert (=> b!711051 (= e!400119 e!400118)))

(assert (=> b!711051 (= c!78620 (validKeyInArray!0 (select (arr!19329 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(assert (= (and d!97521 (not res!474541)) b!711047))

(assert (= (and b!711047 res!474542) b!711049))

(assert (= (and b!711047 res!474543) b!711051))

(assert (= (and b!711051 c!78620) b!711048))

(assert (= (and b!711051 (not c!78620)) b!711050))

(assert (= (or b!711048 b!711050) bm!34505))

(assert (=> b!711047 m!668025))

(assert (=> b!711047 m!668025))

(declare-fun m!668205 () Bool)

(assert (=> b!711047 m!668205))

(assert (=> bm!34505 m!668025))

(declare-fun m!668207 () Bool)

(assert (=> bm!34505 m!668207))

(assert (=> b!711049 m!668025))

(assert (=> b!711049 m!668025))

(declare-fun m!668209 () Bool)

(assert (=> b!711049 m!668209))

(assert (=> b!711051 m!668025))

(assert (=> b!711051 m!668025))

(assert (=> b!711051 m!668205))

(assert (=> b!710637 d!97521))

(declare-fun d!97543 () Bool)

(assert (=> d!97543 (= (validKeyInArray!0 (select (arr!19329 a!3591) from!2969)) (and (not (= (select (arr!19329 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19329 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!710638 d!97543))

(declare-fun b!711052 () Bool)

(declare-fun e!400124 () Bool)

(declare-fun e!400121 () Bool)

(assert (=> b!711052 (= e!400124 e!400121)))

(declare-fun res!474547 () Bool)

(assert (=> b!711052 (=> (not res!474547) (not e!400121))))

(assert (=> b!711052 (= res!474547 (is-Cons!13419 lt!318328))))

(declare-fun b!711054 () Bool)

(declare-fun e!400122 () Bool)

(assert (=> b!711054 (= e!400122 (subseq!410 (t!19734 lt!318329) (t!19734 lt!318328)))))

(declare-fun b!711053 () Bool)

(declare-fun e!400123 () Bool)

(assert (=> b!711053 (= e!400121 e!400123)))

(declare-fun res!474544 () Bool)

(assert (=> b!711053 (=> res!474544 e!400123)))

(assert (=> b!711053 (= res!474544 e!400122)))

(declare-fun res!474545 () Bool)

(assert (=> b!711053 (=> (not res!474545) (not e!400122))))

(assert (=> b!711053 (= res!474545 (= (h!14464 lt!318329) (h!14464 lt!318328)))))

(declare-fun d!97545 () Bool)

(declare-fun res!474546 () Bool)

(assert (=> d!97545 (=> res!474546 e!400124)))

(assert (=> d!97545 (= res!474546 (is-Nil!13420 lt!318329))))

(assert (=> d!97545 (= (subseq!410 lt!318329 lt!318328) e!400124)))

(declare-fun b!711055 () Bool)

(assert (=> b!711055 (= e!400123 (subseq!410 lt!318329 (t!19734 lt!318328)))))

(assert (= (and d!97545 (not res!474546)) b!711052))

(assert (= (and b!711052 res!474547) b!711053))

(assert (= (and b!711053 res!474545) b!711054))

(assert (= (and b!711053 (not res!474544)) b!711055))

(declare-fun m!668211 () Bool)

(assert (=> b!711054 m!668211))

(declare-fun m!668213 () Bool)

(assert (=> b!711055 m!668213))

(assert (=> b!710659 d!97545))

(declare-fun d!97547 () Bool)

(declare-fun lt!318377 () Bool)

(assert (=> d!97547 (= lt!318377 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!357 acc!652)))))

(declare-fun e!400126 () Bool)

(assert (=> d!97547 (= lt!318377 e!400126)))

(declare-fun res!474548 () Bool)

(assert (=> d!97547 (=> (not res!474548) (not e!400126))))

(assert (=> d!97547 (= res!474548 (is-Cons!13419 acc!652))))

(assert (=> d!97547 (= (contains!3966 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318377)))

(declare-fun b!711056 () Bool)

(declare-fun e!400125 () Bool)

(assert (=> b!711056 (= e!400126 e!400125)))

(declare-fun res!474549 () Bool)

(assert (=> b!711056 (=> res!474549 e!400125)))

(assert (=> b!711056 (= res!474549 (= (h!14464 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711057 () Bool)

(assert (=> b!711057 (= e!400125 (contains!3966 (t!19734 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97547 res!474548) b!711056))

(assert (= (and b!711056 (not res!474549)) b!711057))

(declare-fun m!668215 () Bool)

(assert (=> d!97547 m!668215))

(declare-fun m!668217 () Bool)

(assert (=> d!97547 m!668217))

(declare-fun m!668219 () Bool)

(assert (=> b!711057 m!668219))

(assert (=> b!710660 d!97547))

(declare-fun d!97549 () Bool)

(declare-fun lt!318380 () Bool)

(assert (=> d!97549 (= lt!318380 (set.member k!2824 (content!357 acc!652)))))

(declare-fun e!400133 () Bool)

(assert (=> d!97549 (= lt!318380 e!400133)))

(declare-fun res!474550 () Bool)

(assert (=> d!97549 (=> (not res!474550) (not e!400133))))

(assert (=> d!97549 (= res!474550 (is-Cons!13419 acc!652))))

(assert (=> d!97549 (= (contains!3966 acc!652 k!2824) lt!318380)))

(declare-fun b!711066 () Bool)

(declare-fun e!400132 () Bool)

(assert (=> b!711066 (= e!400133 e!400132)))

(declare-fun res!474551 () Bool)

(assert (=> b!711066 (=> res!474551 e!400132)))

(assert (=> b!711066 (= res!474551 (= (h!14464 acc!652) k!2824))))

(declare-fun b!711067 () Bool)

(assert (=> b!711067 (= e!400132 (contains!3966 (t!19734 acc!652) k!2824))))

(assert (= (and d!97549 res!474550) b!711066))

(assert (= (and b!711066 (not res!474551)) b!711067))

(assert (=> d!97549 m!668215))

(declare-fun m!668221 () Bool)

(assert (=> d!97549 m!668221))

(declare-fun m!668223 () Bool)

(assert (=> b!711067 m!668223))

(assert (=> b!710639 d!97549))

(declare-fun d!97551 () Bool)

(declare-fun res!474552 () Bool)

(declare-fun e!400134 () Bool)

(assert (=> d!97551 (=> res!474552 e!400134)))

(assert (=> d!97551 (= res!474552 (= (select (arr!19329 a!3591) from!2969) k!2824))))

(assert (=> d!97551 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!400134)))

(declare-fun b!711068 () Bool)

(declare-fun e!400135 () Bool)

(assert (=> b!711068 (= e!400134 e!400135)))

(declare-fun res!474553 () Bool)

(assert (=> b!711068 (=> (not res!474553) (not e!400135))))

(assert (=> b!711068 (= res!474553 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19730 a!3591)))))

(declare-fun b!711069 () Bool)

(assert (=> b!711069 (= e!400135 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97551 (not res!474552)) b!711068))

(assert (= (and b!711068 res!474553) b!711069))

(assert (=> d!97551 m!667831))

(declare-fun m!668225 () Bool)

(assert (=> b!711069 m!668225))

(assert (=> b!710645 d!97551))

(declare-fun b!711070 () Bool)

(declare-fun e!400136 () Bool)

(declare-fun e!400138 () Bool)

(assert (=> b!711070 (= e!400136 e!400138)))

(declare-fun res!474556 () Bool)

(assert (=> b!711070 (=> (not res!474556) (not e!400138))))

(declare-fun e!400139 () Bool)

(assert (=> b!711070 (= res!474556 (not e!400139))))

(declare-fun res!474555 () Bool)

(assert (=> b!711070 (=> (not res!474555) (not e!400139))))

(assert (=> b!711070 (= res!474555 (validKeyInArray!0 (select (arr!19329 a!3591) from!2969)))))

(declare-fun b!711071 () Bool)

(declare-fun e!400137 () Bool)

(declare-fun call!34511 () Bool)

(assert (=> b!711071 (= e!400137 call!34511)))

(declare-fun d!97553 () Bool)

(declare-fun res!474554 () Bool)

(assert (=> d!97553 (=> res!474554 e!400136)))

(assert (=> d!97553 (= res!474554 (bvsge from!2969 (size!19730 a!3591)))))

(assert (=> d!97553 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!400136)))

(declare-fun bm!34508 () Bool)

(declare-fun c!78625 () Bool)

(assert (=> bm!34508 (= call!34511 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78625 (Cons!13419 (select (arr!19329 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!711072 () Bool)

