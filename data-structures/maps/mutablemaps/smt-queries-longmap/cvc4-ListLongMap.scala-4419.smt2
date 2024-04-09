; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61024 () Bool)

(assert start!61024)

(declare-fun b!684467 () Bool)

(declare-fun res!450174 () Bool)

(declare-fun e!389743 () Bool)

(assert (=> b!684467 (=> (not res!450174) (not e!389743))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39589 0))(
  ( (array!39590 (arr!18971 (Array (_ BitVec 32) (_ BitVec 64))) (size!19337 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39589)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!684467 (= res!450174 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19337 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!684468 () Bool)

(declare-fun e!389749 () Bool)

(assert (=> b!684468 (= e!389743 (not e!389749))))

(declare-fun res!450167 () Bool)

(assert (=> b!684468 (=> res!450167 e!389749)))

(assert (=> b!684468 (= res!450167 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((List!13065 0))(
  ( (Nil!13062) (Cons!13061 (h!14106 (_ BitVec 64)) (t!19319 List!13065)) )
))
(declare-fun lt!314374 () List!13065)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun acc!681 () List!13065)

(declare-fun -!158 (List!13065 (_ BitVec 64)) List!13065)

(assert (=> b!684468 (= (-!158 lt!314374 k!2843) acc!681)))

(declare-fun $colon$colon!357 (List!13065 (_ BitVec 64)) List!13065)

(assert (=> b!684468 (= lt!314374 ($colon$colon!357 acc!681 k!2843))))

(declare-datatypes ((Unit!24092 0))(
  ( (Unit!24093) )
))
(declare-fun lt!314376 () Unit!24092)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13065) Unit!24092)

(assert (=> b!684468 (= lt!314376 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!193 (List!13065 List!13065) Bool)

(assert (=> b!684468 (subseq!193 acc!681 acc!681)))

(declare-fun lt!314371 () Unit!24092)

(declare-fun lemmaListSubSeqRefl!0 (List!13065) Unit!24092)

(assert (=> b!684468 (= lt!314371 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun arrayNoDuplicates!0 (array!39589 (_ BitVec 32) List!13065) Bool)

(assert (=> b!684468 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314372 () Unit!24092)

(declare-fun e!389744 () Unit!24092)

(assert (=> b!684468 (= lt!314372 e!389744)))

(declare-fun c!77521 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!684468 (= c!77521 (validKeyInArray!0 (select (arr!18971 a!3626) from!3004)))))

(declare-fun lt!314370 () Unit!24092)

(declare-fun e!389748 () Unit!24092)

(assert (=> b!684468 (= lt!314370 e!389748)))

(declare-fun c!77522 () Bool)

(declare-fun lt!314369 () Bool)

(assert (=> b!684468 (= c!77522 lt!314369)))

(declare-fun arrayContainsKey!0 (array!39589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!684468 (= lt!314369 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!684468 (arrayContainsKey!0 (array!39590 (store (arr!18971 a!3626) i!1382 k!2843) (size!19337 a!3626)) k!2843 from!3004)))

(declare-fun b!684469 () Bool)

(declare-fun Unit!24094 () Unit!24092)

(assert (=> b!684469 (= e!389744 Unit!24094)))

(declare-fun res!450171 () Bool)

(assert (=> start!61024 (=> (not res!450171) (not e!389743))))

(assert (=> start!61024 (= res!450171 (and (bvslt (size!19337 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19337 a!3626))))))

(assert (=> start!61024 e!389743))

(assert (=> start!61024 true))

(declare-fun array_inv!14745 (array!39589) Bool)

(assert (=> start!61024 (array_inv!14745 a!3626)))

(declare-fun b!684470 () Bool)

(declare-fun res!450165 () Bool)

(assert (=> b!684470 (=> (not res!450165) (not e!389743))))

(declare-fun contains!3608 (List!13065 (_ BitVec 64)) Bool)

(assert (=> b!684470 (= res!450165 (not (contains!3608 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684471 () Bool)

(declare-fun res!450160 () Bool)

(assert (=> b!684471 (=> (not res!450160) (not e!389743))))

(declare-fun e!389742 () Bool)

(assert (=> b!684471 (= res!450160 e!389742)))

(declare-fun res!450161 () Bool)

(assert (=> b!684471 (=> res!450161 e!389742)))

(declare-fun e!389746 () Bool)

(assert (=> b!684471 (= res!450161 e!389746)))

(declare-fun res!450176 () Bool)

(assert (=> b!684471 (=> (not res!450176) (not e!389746))))

(assert (=> b!684471 (= res!450176 (bvsgt from!3004 i!1382))))

(declare-fun b!684472 () Bool)

(declare-fun e!389747 () Bool)

(assert (=> b!684472 (= e!389742 e!389747)))

(declare-fun res!450170 () Bool)

(assert (=> b!684472 (=> (not res!450170) (not e!389747))))

(assert (=> b!684472 (= res!450170 (bvsle from!3004 i!1382))))

(declare-fun b!684473 () Bool)

(declare-fun lt!314375 () Unit!24092)

(assert (=> b!684473 (= e!389744 lt!314375)))

(declare-fun lt!314368 () Unit!24092)

(assert (=> b!684473 (= lt!314368 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!684473 (subseq!193 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39589 List!13065 List!13065 (_ BitVec 32)) Unit!24092)

(assert (=> b!684473 (= lt!314375 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!357 acc!681 (select (arr!18971 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!684473 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!684474 () Bool)

(declare-fun res!450173 () Bool)

(assert (=> b!684474 (=> res!450173 e!389749)))

(assert (=> b!684474 (= res!450173 lt!314369)))

(declare-fun b!684475 () Bool)

(assert (=> b!684475 (= e!389746 (contains!3608 acc!681 k!2843))))

(declare-fun b!684476 () Bool)

(declare-fun res!450162 () Bool)

(assert (=> b!684476 (=> (not res!450162) (not e!389743))))

(assert (=> b!684476 (= res!450162 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19337 a!3626))))))

(declare-fun b!684477 () Bool)

(declare-fun Unit!24095 () Unit!24092)

(assert (=> b!684477 (= e!389748 Unit!24095)))

(declare-fun lt!314373 () Unit!24092)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39589 (_ BitVec 64) (_ BitVec 32)) Unit!24092)

(assert (=> b!684477 (= lt!314373 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!684477 false))

(declare-fun b!684478 () Bool)

(declare-fun res!450163 () Bool)

(assert (=> b!684478 (=> (not res!450163) (not e!389743))))

(declare-fun noDuplicate!855 (List!13065) Bool)

(assert (=> b!684478 (= res!450163 (noDuplicate!855 acc!681))))

(declare-fun b!684479 () Bool)

(assert (=> b!684479 (= e!389747 (not (contains!3608 acc!681 k!2843)))))

(declare-fun b!684480 () Bool)

(declare-fun res!450164 () Bool)

(assert (=> b!684480 (=> (not res!450164) (not e!389743))))

(assert (=> b!684480 (= res!450164 (validKeyInArray!0 k!2843))))

(declare-fun b!684481 () Bool)

(declare-fun res!450172 () Bool)

(assert (=> b!684481 (=> (not res!450172) (not e!389743))))

(assert (=> b!684481 (= res!450172 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!684482 () Bool)

(declare-fun res!450159 () Bool)

(assert (=> b!684482 (=> res!450159 e!389749)))

(assert (=> b!684482 (= res!450159 (not (noDuplicate!855 lt!314374)))))

(declare-fun b!684483 () Bool)

(assert (=> b!684483 (= e!389749 (subseq!193 acc!681 lt!314374))))

(declare-fun b!684484 () Bool)

(declare-fun res!450175 () Bool)

(assert (=> b!684484 (=> res!450175 e!389749)))

(assert (=> b!684484 (= res!450175 (contains!3608 acc!681 k!2843))))

(declare-fun b!684485 () Bool)

(declare-fun Unit!24096 () Unit!24092)

(assert (=> b!684485 (= e!389748 Unit!24096)))

(declare-fun b!684486 () Bool)

(declare-fun res!450166 () Bool)

(assert (=> b!684486 (=> (not res!450166) (not e!389743))))

(assert (=> b!684486 (= res!450166 (not (contains!3608 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684487 () Bool)

(declare-fun res!450168 () Bool)

(assert (=> b!684487 (=> (not res!450168) (not e!389743))))

(assert (=> b!684487 (= res!450168 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13062))))

(declare-fun b!684488 () Bool)

(declare-fun res!450169 () Bool)

(assert (=> b!684488 (=> (not res!450169) (not e!389743))))

(assert (=> b!684488 (= res!450169 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!61024 res!450171) b!684478))

(assert (= (and b!684478 res!450163) b!684470))

(assert (= (and b!684470 res!450165) b!684486))

(assert (= (and b!684486 res!450166) b!684471))

(assert (= (and b!684471 res!450176) b!684475))

(assert (= (and b!684471 (not res!450161)) b!684472))

(assert (= (and b!684472 res!450170) b!684479))

(assert (= (and b!684471 res!450160) b!684487))

(assert (= (and b!684487 res!450168) b!684481))

(assert (= (and b!684481 res!450172) b!684476))

(assert (= (and b!684476 res!450162) b!684480))

(assert (= (and b!684480 res!450164) b!684488))

(assert (= (and b!684488 res!450169) b!684467))

(assert (= (and b!684467 res!450174) b!684468))

(assert (= (and b!684468 c!77522) b!684477))

(assert (= (and b!684468 (not c!77522)) b!684485))

(assert (= (and b!684468 c!77521) b!684473))

(assert (= (and b!684468 (not c!77521)) b!684469))

(assert (= (and b!684468 (not res!450167)) b!684482))

(assert (= (and b!684482 (not res!450159)) b!684474))

(assert (= (and b!684474 (not res!450173)) b!684484))

(assert (= (and b!684484 (not res!450175)) b!684483))

(declare-fun m!648835 () Bool)

(assert (=> b!684475 m!648835))

(declare-fun m!648837 () Bool)

(assert (=> b!684473 m!648837))

(declare-fun m!648839 () Bool)

(assert (=> b!684473 m!648839))

(declare-fun m!648841 () Bool)

(assert (=> b!684473 m!648841))

(declare-fun m!648843 () Bool)

(assert (=> b!684473 m!648843))

(assert (=> b!684473 m!648839))

(assert (=> b!684473 m!648841))

(declare-fun m!648845 () Bool)

(assert (=> b!684473 m!648845))

(declare-fun m!648847 () Bool)

(assert (=> b!684473 m!648847))

(declare-fun m!648849 () Bool)

(assert (=> start!61024 m!648849))

(assert (=> b!684479 m!648835))

(assert (=> b!684484 m!648835))

(declare-fun m!648851 () Bool)

(assert (=> b!684482 m!648851))

(declare-fun m!648853 () Bool)

(assert (=> b!684478 m!648853))

(declare-fun m!648855 () Bool)

(assert (=> b!684488 m!648855))

(declare-fun m!648857 () Bool)

(assert (=> b!684483 m!648857))

(declare-fun m!648859 () Bool)

(assert (=> b!684480 m!648859))

(declare-fun m!648861 () Bool)

(assert (=> b!684470 m!648861))

(declare-fun m!648863 () Bool)

(assert (=> b!684481 m!648863))

(declare-fun m!648865 () Bool)

(assert (=> b!684487 m!648865))

(declare-fun m!648867 () Bool)

(assert (=> b!684486 m!648867))

(declare-fun m!648869 () Bool)

(assert (=> b!684477 m!648869))

(assert (=> b!684468 m!648837))

(assert (=> b!684468 m!648839))

(declare-fun m!648871 () Bool)

(assert (=> b!684468 m!648871))

(declare-fun m!648873 () Bool)

(assert (=> b!684468 m!648873))

(declare-fun m!648875 () Bool)

(assert (=> b!684468 m!648875))

(assert (=> b!684468 m!648845))

(declare-fun m!648877 () Bool)

(assert (=> b!684468 m!648877))

(declare-fun m!648879 () Bool)

(assert (=> b!684468 m!648879))

(assert (=> b!684468 m!648839))

(declare-fun m!648881 () Bool)

(assert (=> b!684468 m!648881))

(declare-fun m!648883 () Bool)

(assert (=> b!684468 m!648883))

(assert (=> b!684468 m!648847))

(push 1)

(assert (not b!684486))

(assert (not b!684488))

(assert (not b!684477))

(assert (not b!684482))

(assert (not b!684473))

(assert (not b!684487))

(assert (not b!684481))

(assert (not b!684475))

(assert (not b!684470))

(assert (not b!684480))

(assert (not b!684483))

(assert (not b!684479))

(assert (not b!684468))

(assert (not start!61024))

(assert (not b!684478))

(assert (not b!684484))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!94209 () Bool)

(declare-fun res!450216 () Bool)

(declare-fun e!389792 () Bool)

(assert (=> d!94209 (=> res!450216 e!389792)))

(assert (=> d!94209 (= res!450216 (is-Nil!13062 acc!681))))

(assert (=> d!94209 (= (noDuplicate!855 acc!681) e!389792)))

(declare-fun b!684534 () Bool)

(declare-fun e!389793 () Bool)

(assert (=> b!684534 (= e!389792 e!389793)))

(declare-fun res!450217 () Bool)

(assert (=> b!684534 (=> (not res!450217) (not e!389793))))

(assert (=> b!684534 (= res!450217 (not (contains!3608 (t!19319 acc!681) (h!14106 acc!681))))))

(declare-fun b!684535 () Bool)

(assert (=> b!684535 (= e!389793 (noDuplicate!855 (t!19319 acc!681)))))

(assert (= (and d!94209 (not res!450216)) b!684534))

(assert (= (and b!684534 res!450217) b!684535))

(declare-fun m!648911 () Bool)

(assert (=> b!684534 m!648911))

(declare-fun m!648913 () Bool)

(assert (=> b!684535 m!648913))

(assert (=> b!684478 d!94209))

(declare-fun b!684553 () Bool)

(declare-fun e!389810 () Bool)

(declare-fun e!389812 () Bool)

(assert (=> b!684553 (= e!389810 e!389812)))

(declare-fun res!450236 () Bool)

(assert (=> b!684553 (=> (not res!450236) (not e!389812))))

(assert (=> b!684553 (= res!450236 (is-Cons!13061 acc!681))))

(declare-fun b!684554 () Bool)

(declare-fun e!389813 () Bool)

(assert (=> b!684554 (= e!389812 e!389813)))

(declare-fun res!450235 () Bool)

(assert (=> b!684554 (=> res!450235 e!389813)))

(declare-fun e!389811 () Bool)

(assert (=> b!684554 (= res!450235 e!389811)))

(declare-fun res!450233 () Bool)

(assert (=> b!684554 (=> (not res!450233) (not e!389811))))

(assert (=> b!684554 (= res!450233 (= (h!14106 acc!681) (h!14106 acc!681)))))

(declare-fun b!684555 () Bool)

(assert (=> b!684555 (= e!389811 (subseq!193 (t!19319 acc!681) (t!19319 acc!681)))))

(declare-fun b!684556 () Bool)

(assert (=> b!684556 (= e!389813 (subseq!193 acc!681 (t!19319 acc!681)))))

(declare-fun d!94211 () Bool)

(declare-fun res!450234 () Bool)

(assert (=> d!94211 (=> res!450234 e!389810)))

(assert (=> d!94211 (= res!450234 (is-Nil!13062 acc!681))))

(assert (=> d!94211 (= (subseq!193 acc!681 acc!681) e!389810)))

(assert (= (and d!94211 (not res!450234)) b!684553))

(assert (= (and b!684553 res!450236) b!684554))

(assert (= (and b!684554 res!450233) b!684555))

(assert (= (and b!684554 (not res!450235)) b!684556))

(declare-fun m!648935 () Bool)

(assert (=> b!684555 m!648935))

(declare-fun m!648937 () Bool)

(assert (=> b!684556 m!648937))

(assert (=> b!684468 d!94211))

(declare-fun d!94223 () Bool)

(declare-fun res!450245 () Bool)

(declare-fun e!389822 () Bool)

(assert (=> d!94223 (=> res!450245 e!389822)))

(assert (=> d!94223 (= res!450245 (= (select (arr!18971 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!94223 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!389822)))

(declare-fun b!684565 () Bool)

(declare-fun e!389823 () Bool)

(assert (=> b!684565 (= e!389822 e!389823)))

(declare-fun res!450246 () Bool)

(assert (=> b!684565 (=> (not res!450246) (not e!389823))))

(assert (=> b!684565 (= res!450246 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19337 a!3626)))))

(declare-fun b!684566 () Bool)

(assert (=> b!684566 (= e!389823 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94223 (not res!450245)) b!684565))

(assert (= (and b!684565 res!450246) b!684566))

(declare-fun m!648945 () Bool)

(assert (=> d!94223 m!648945))

(declare-fun m!648947 () Bool)

(assert (=> b!684566 m!648947))

(assert (=> b!684468 d!94223))

(declare-fun b!684604 () Bool)

(declare-fun e!389854 () Bool)

(declare-fun lt!314399 () List!13065)

(declare-fun content!288 (List!13065) (Set (_ BitVec 64)))

(assert (=> b!684604 (= e!389854 (= (content!288 lt!314399) (setminus (content!288 lt!314374) (insert k!2843 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun b!684605 () Bool)

(declare-fun e!389853 () List!13065)

(declare-fun call!34035 () List!13065)

(assert (=> b!684605 (= e!389853 (Cons!13061 (h!14106 lt!314374) call!34035))))

(declare-fun b!684606 () Bool)

(declare-fun e!389855 () List!13065)

(assert (=> b!684606 (= e!389855 e!389853)))

(declare-fun c!77538 () Bool)

(assert (=> b!684606 (= c!77538 (= k!2843 (h!14106 lt!314374)))))

(declare-fun bm!34032 () Bool)

(assert (=> bm!34032 (= call!34035 (-!158 (t!19319 lt!314374) k!2843))))

(declare-fun b!684607 () Bool)

(assert (=> b!684607 (= e!389853 call!34035)))

(declare-fun d!94231 () Bool)

(assert (=> d!94231 e!389854))

(declare-fun res!450264 () Bool)

(assert (=> d!94231 (=> (not res!450264) (not e!389854))))

(declare-fun size!19338 (List!13065) Int)

(assert (=> d!94231 (= res!450264 (<= (size!19338 lt!314399) (size!19338 lt!314374)))))

(assert (=> d!94231 (= lt!314399 e!389855)))

(declare-fun c!77537 () Bool)

(assert (=> d!94231 (= c!77537 (is-Cons!13061 lt!314374))))

(assert (=> d!94231 (= (-!158 lt!314374 k!2843) lt!314399)))

(declare-fun b!684608 () Bool)

(assert (=> b!684608 (= e!389855 Nil!13062)))

(assert (= (and d!94231 c!77537) b!684606))

(assert (= (and d!94231 (not c!77537)) b!684608))

(assert (= (and b!684606 c!77538) b!684607))

(assert (= (and b!684606 (not c!77538)) b!684605))

(assert (= (or b!684607 b!684605) bm!34032))

(assert (= (and d!94231 res!450264) b!684604))

(declare-fun m!648971 () Bool)

(assert (=> b!684604 m!648971))

(declare-fun m!648973 () Bool)

(assert (=> b!684604 m!648973))

(declare-fun m!648975 () Bool)

(assert (=> b!684604 m!648975))

(declare-fun m!648977 () Bool)

(assert (=> bm!34032 m!648977))

(declare-fun m!648979 () Bool)

(assert (=> d!94231 m!648979))

(declare-fun m!648981 () Bool)

(assert (=> d!94231 m!648981))

(assert (=> b!684468 d!94231))

(declare-fun d!94241 () Bool)

(assert (=> d!94241 (= (-!158 ($colon$colon!357 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!314402 () Unit!24092)

(declare-fun choose!16 ((_ BitVec 64) List!13065) Unit!24092)

(assert (=> d!94241 (= lt!314402 (choose!16 k!2843 acc!681))))

(assert (=> d!94241 (not (contains!3608 acc!681 k!2843))))

(assert (=> d!94241 (= (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681) lt!314402)))

(declare-fun bs!20072 () Bool)

(assert (= bs!20072 d!94241))

(assert (=> bs!20072 m!648879))

(assert (=> bs!20072 m!648879))

(declare-fun m!648985 () Bool)

(assert (=> bs!20072 m!648985))

(declare-fun m!648987 () Bool)

(assert (=> bs!20072 m!648987))

(assert (=> bs!20072 m!648835))

(assert (=> b!684468 d!94241))

(declare-fun d!94245 () Bool)

(declare-fun res!450277 () Bool)

(declare-fun e!389870 () Bool)

(assert (=> d!94245 (=> res!450277 e!389870)))

(assert (=> d!94245 (= res!450277 (= (select (arr!18971 (array!39590 (store (arr!18971 a!3626) i!1382 k!2843) (size!19337 a!3626))) from!3004) k!2843))))

(assert (=> d!94245 (= (arrayContainsKey!0 (array!39590 (store (arr!18971 a!3626) i!1382 k!2843) (size!19337 a!3626)) k!2843 from!3004) e!389870)))

(declare-fun b!684625 () Bool)

(declare-fun e!389871 () Bool)

(assert (=> b!684625 (= e!389870 e!389871)))

(declare-fun res!450278 () Bool)

(assert (=> b!684625 (=> (not res!450278) (not e!389871))))

(assert (=> b!684625 (= res!450278 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19337 (array!39590 (store (arr!18971 a!3626) i!1382 k!2843) (size!19337 a!3626)))))))

(declare-fun b!684626 () Bool)

(assert (=> b!684626 (= e!389871 (arrayContainsKey!0 (array!39590 (store (arr!18971 a!3626) i!1382 k!2843) (size!19337 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94245 (not res!450277)) b!684625))

(assert (= (and b!684625 res!450278) b!684626))

(declare-fun m!648989 () Bool)

(assert (=> d!94245 m!648989))

(declare-fun m!648991 () Bool)

(assert (=> b!684626 m!648991))

(assert (=> b!684468 d!94245))

(declare-fun d!94247 () Bool)

(assert (=> d!94247 (subseq!193 acc!681 acc!681)))

(declare-fun lt!314408 () Unit!24092)

(declare-fun choose!36 (List!13065) Unit!24092)

(assert (=> d!94247 (= lt!314408 (choose!36 acc!681))))

(assert (=> d!94247 (= (lemmaListSubSeqRefl!0 acc!681) lt!314408)))

(declare-fun bs!20074 () Bool)

(assert (= bs!20074 d!94247))

(assert (=> bs!20074 m!648847))

(declare-fun m!648997 () Bool)

(assert (=> bs!20074 m!648997))

(assert (=> b!684468 d!94247))

(declare-fun d!94251 () Bool)

(assert (=> d!94251 (= (validKeyInArray!0 (select (arr!18971 a!3626) from!3004)) (and (not (= (select (arr!18971 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18971 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!684468 d!94251))

(declare-fun d!94261 () Bool)

(assert (=> d!94261 (= ($colon$colon!357 acc!681 k!2843) (Cons!13061 k!2843 acc!681))))

(assert (=> b!684468 d!94261))

(declare-fun b!684661 () Bool)

(declare-fun e!389900 () Bool)

(declare-fun call!34044 () Bool)

(assert (=> b!684661 (= e!389900 call!34044)))

(declare-fun c!77549 () Bool)

(declare-fun bm!34041 () Bool)

(assert (=> bm!34041 (= call!34044 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77549 (Cons!13061 (select (arr!18971 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!684662 () Bool)

(declare-fun e!389899 () Bool)

(assert (=> b!684662 (= e!389899 (contains!3608 acc!681 (select (arr!18971 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!94263 () Bool)

(declare-fun res!450297 () Bool)

(declare-fun e!389901 () Bool)

(assert (=> d!94263 (=> res!450297 e!389901)))

(assert (=> d!94263 (= res!450297 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19337 a!3626)))))

(assert (=> d!94263 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!389901)))

(declare-fun b!684663 () Bool)

(declare-fun e!389902 () Bool)

(assert (=> b!684663 (= e!389901 e!389902)))

(declare-fun res!450299 () Bool)

(assert (=> b!684663 (=> (not res!450299) (not e!389902))))

(assert (=> b!684663 (= res!450299 (not e!389899))))

(declare-fun res!450298 () Bool)

(assert (=> b!684663 (=> (not res!450298) (not e!389899))))

(assert (=> b!684663 (= res!450298 (validKeyInArray!0 (select (arr!18971 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!684664 () Bool)

(assert (=> b!684664 (= e!389900 call!34044)))

(declare-fun b!684665 () Bool)

(assert (=> b!684665 (= e!389902 e!389900)))

(assert (=> b!684665 (= c!77549 (validKeyInArray!0 (select (arr!18971 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!94263 (not res!450297)) b!684663))

(assert (= (and b!684663 res!450298) b!684662))

(assert (= (and b!684663 res!450299) b!684665))

(assert (= (and b!684665 c!77549) b!684664))

(assert (= (and b!684665 (not c!77549)) b!684661))

(assert (= (or b!684664 b!684661) bm!34041))

(assert (=> bm!34041 m!648945))

(declare-fun m!649013 () Bool)

(assert (=> bm!34041 m!649013))

(assert (=> b!684662 m!648945))

(assert (=> b!684662 m!648945))

(declare-fun m!649015 () Bool)

(assert (=> b!684662 m!649015))

(assert (=> b!684663 m!648945))

(assert (=> b!684663 m!648945))

(declare-fun m!649017 () Bool)

(assert (=> b!684663 m!649017))

(assert (=> b!684665 m!648945))

(assert (=> b!684665 m!648945))

(assert (=> b!684665 m!649017))

(assert (=> b!684468 d!94263))

(declare-fun d!94267 () Bool)

(declare-fun lt!314414 () Bool)

(assert (=> d!94267 (= lt!314414 (member k!2843 (content!288 acc!681)))))

(declare-fun e!389918 () Bool)

(assert (=> d!94267 (= lt!314414 e!389918)))

(declare-fun res!450314 () Bool)

(assert (=> d!94267 (=> (not res!450314) (not e!389918))))

(assert (=> d!94267 (= res!450314 (is-Cons!13061 acc!681))))

(assert (=> d!94267 (= (contains!3608 acc!681 k!2843) lt!314414)))

(declare-fun b!684683 () Bool)

(declare-fun e!389919 () Bool)

(assert (=> b!684683 (= e!389918 e!389919)))

(declare-fun res!450313 () Bool)

(assert (=> b!684683 (=> res!450313 e!389919)))

(assert (=> b!684683 (= res!450313 (= (h!14106 acc!681) k!2843))))

(declare-fun b!684684 () Bool)

(assert (=> b!684684 (= e!389919 (contains!3608 (t!19319 acc!681) k!2843))))

(assert (= (and d!94267 res!450314) b!684683))

(assert (= (and b!684683 (not res!450313)) b!684684))

(declare-fun m!649031 () Bool)

(assert (=> d!94267 m!649031))

(declare-fun m!649033 () Bool)

(assert (=> d!94267 m!649033))

(declare-fun m!649035 () Bool)

(assert (=> b!684684 m!649035))

(assert (=> b!684479 d!94267))

(declare-fun d!94271 () Bool)

(assert (=> d!94271 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!314417 () Unit!24092)

(declare-fun choose!13 (array!39589 (_ BitVec 64) (_ BitVec 32)) Unit!24092)

(assert (=> d!94271 (= lt!314417 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!94271 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!94271 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!314417)))

(declare-fun bs!20075 () Bool)

(assert (= bs!20075 d!94271))

(assert (=> bs!20075 m!648855))

(declare-fun m!649045 () Bool)

(assert (=> bs!20075 m!649045))

(assert (=> b!684477 d!94271))

(declare-fun d!94277 () Bool)

(declare-fun res!450321 () Bool)

(declare-fun e!389926 () Bool)

(assert (=> d!94277 (=> res!450321 e!389926)))

(assert (=> d!94277 (= res!450321 (= (select (arr!18971 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!94277 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!389926)))

(declare-fun b!684691 () Bool)

(declare-fun e!389927 () Bool)

(assert (=> b!684691 (= e!389926 e!389927)))

(declare-fun res!450322 () Bool)

(assert (=> b!684691 (=> (not res!450322) (not e!389927))))

(assert (=> b!684691 (= res!450322 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19337 a!3626)))))

(declare-fun b!684692 () Bool)

(assert (=> b!684692 (= e!389927 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!94277 (not res!450321)) b!684691))

(assert (= (and b!684691 res!450322) b!684692))

(declare-fun m!649047 () Bool)

(assert (=> d!94277 m!649047))

(declare-fun m!649049 () Bool)

(assert (=> b!684692 m!649049))

(assert (=> b!684488 d!94277))

(declare-fun d!94279 () Bool)

(declare-fun lt!314418 () Bool)

(assert (=> d!94279 (= lt!314418 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!288 acc!681)))))

(declare-fun e!389928 () Bool)

(assert (=> d!94279 (= lt!314418 e!389928)))

(declare-fun res!450324 () Bool)

(assert (=> d!94279 (=> (not res!450324) (not e!389928))))

(assert (=> d!94279 (= res!450324 (is-Cons!13061 acc!681))))

(assert (=> d!94279 (= (contains!3608 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!314418)))

(declare-fun b!684693 () Bool)

(declare-fun e!389929 () Bool)

(assert (=> b!684693 (= e!389928 e!389929)))

(declare-fun res!450323 () Bool)

(assert (=> b!684693 (=> res!450323 e!389929)))

(assert (=> b!684693 (= res!450323 (= (h!14106 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!684694 () Bool)

(assert (=> b!684694 (= e!389929 (contains!3608 (t!19319 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94279 res!450324) b!684693))

(assert (= (and b!684693 (not res!450323)) b!684694))

(assert (=> d!94279 m!649031))

(declare-fun m!649051 () Bool)

(assert (=> d!94279 m!649051))

(declare-fun m!649053 () Bool)

(assert (=> b!684694 m!649053))

(assert (=> b!684470 d!94279))

(declare-fun b!684695 () Bool)

(declare-fun e!389931 () Bool)

(declare-fun call!34046 () Bool)

(assert (=> b!684695 (= e!389931 call!34046)))

(declare-fun c!77552 () Bool)

(declare-fun bm!34043 () Bool)

(assert (=> bm!34043 (= call!34046 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77552 (Cons!13061 (select (arr!18971 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!684696 () Bool)

(declare-fun e!389930 () Bool)

(assert (=> b!684696 (= e!389930 (contains!3608 acc!681 (select (arr!18971 a!3626) from!3004)))))

(declare-fun d!94281 () Bool)

(declare-fun res!450325 () Bool)

(declare-fun e!389932 () Bool)

(assert (=> d!94281 (=> res!450325 e!389932)))

(assert (=> d!94281 (= res!450325 (bvsge from!3004 (size!19337 a!3626)))))

(assert (=> d!94281 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!389932)))

(declare-fun b!684697 () Bool)

(declare-fun e!389933 () Bool)

(assert (=> b!684697 (= e!389932 e!389933)))

(declare-fun res!450327 () Bool)

(assert (=> b!684697 (=> (not res!450327) (not e!389933))))

(assert (=> b!684697 (= res!450327 (not e!389930))))

(declare-fun res!450326 () Bool)

(assert (=> b!684697 (=> (not res!450326) (not e!389930))))

(assert (=> b!684697 (= res!450326 (validKeyInArray!0 (select (arr!18971 a!3626) from!3004)))))

(declare-fun b!684698 () Bool)

(assert (=> b!684698 (= e!389931 call!34046)))

(declare-fun b!684699 () Bool)

(assert (=> b!684699 (= e!389933 e!389931)))

