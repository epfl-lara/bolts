; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103158 () Bool)

(assert start!103158)

(declare-fun b!1238191 () Bool)

(declare-fun res!826041 () Bool)

(declare-fun e!701762 () Bool)

(assert (=> b!1238191 (=> res!826041 e!701762)))

(declare-datatypes ((List!27447 0))(
  ( (Nil!27444) (Cons!27443 (h!28652 (_ BitVec 64)) (t!40917 List!27447)) )
))
(declare-fun lt!561204 () List!27447)

(declare-fun contains!7362 (List!27447 (_ BitVec 64)) Bool)

(assert (=> b!1238191 (= res!826041 (contains!7362 lt!561204 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238192 () Bool)

(declare-fun res!826042 () Bool)

(declare-fun e!701760 () Bool)

(assert (=> b!1238192 (=> (not res!826042) (not e!701760))))

(declare-fun acc!846 () List!27447)

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1238192 (= res!826042 (contains!7362 acc!846 k!2925))))

(declare-fun b!1238193 () Bool)

(declare-fun res!826040 () Bool)

(assert (=> b!1238193 (=> (not res!826040) (not e!701760))))

(assert (=> b!1238193 (= res!826040 (not (contains!7362 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238194 () Bool)

(declare-fun res!826051 () Bool)

(assert (=> b!1238194 (=> (not res!826051) (not e!701760))))

(assert (=> b!1238194 (= res!826051 (not (contains!7362 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238195 () Bool)

(declare-fun res!826047 () Bool)

(assert (=> b!1238195 (=> res!826047 e!701762)))

(declare-fun noDuplicate!1969 (List!27447) Bool)

(assert (=> b!1238195 (= res!826047 (not (noDuplicate!1969 lt!561204)))))

(declare-fun res!826045 () Bool)

(assert (=> start!103158 (=> (not res!826045) (not e!701760))))

(declare-datatypes ((array!79793 0))(
  ( (array!79794 (arr!38496 (Array (_ BitVec 32) (_ BitVec 64))) (size!39033 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79793)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!103158 (= res!826045 (and (bvslt (size!39033 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39033 a!3835))))))

(assert (=> start!103158 e!701760))

(declare-fun array_inv!29272 (array!79793) Bool)

(assert (=> start!103158 (array_inv!29272 a!3835)))

(assert (=> start!103158 true))

(declare-fun b!1238196 () Bool)

(assert (=> b!1238196 (= e!701760 (not e!701762))))

(declare-fun res!826049 () Bool)

(assert (=> b!1238196 (=> res!826049 e!701762)))

(assert (=> b!1238196 (= res!826049 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!599 (List!27447 List!27447) Bool)

(assert (=> b!1238196 (subseq!599 acc!846 lt!561204)))

(declare-datatypes ((Unit!41046 0))(
  ( (Unit!41047) )
))
(declare-fun lt!561202 () Unit!41046)

(declare-fun subseqTail!86 (List!27447 List!27447) Unit!41046)

(assert (=> b!1238196 (= lt!561202 (subseqTail!86 lt!561204 lt!561204))))

(assert (=> b!1238196 (subseq!599 lt!561204 lt!561204)))

(declare-fun lt!561203 () Unit!41046)

(declare-fun lemmaListSubSeqRefl!0 (List!27447) Unit!41046)

(assert (=> b!1238196 (= lt!561203 (lemmaListSubSeqRefl!0 lt!561204))))

(assert (=> b!1238196 (= lt!561204 (Cons!27443 (select (arr!38496 a!3835) from!3213) acc!846))))

(declare-fun b!1238197 () Bool)

(declare-fun res!826050 () Bool)

(assert (=> b!1238197 (=> (not res!826050) (not e!701760))))

(declare-fun arrayNoDuplicates!0 (array!79793 (_ BitVec 32) List!27447) Bool)

(assert (=> b!1238197 (= res!826050 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238198 () Bool)

(declare-fun res!826048 () Bool)

(assert (=> b!1238198 (=> res!826048 e!701762)))

(assert (=> b!1238198 (= res!826048 (contains!7362 lt!561204 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238199 () Bool)

(declare-fun res!826044 () Bool)

(assert (=> b!1238199 (=> (not res!826044) (not e!701760))))

(assert (=> b!1238199 (= res!826044 (noDuplicate!1969 acc!846))))

(declare-fun b!1238200 () Bool)

(declare-fun res!826043 () Bool)

(assert (=> b!1238200 (=> (not res!826043) (not e!701760))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238200 (= res!826043 (validKeyInArray!0 (select (arr!38496 a!3835) from!3213)))))

(declare-fun b!1238201 () Bool)

(declare-fun res!826046 () Bool)

(assert (=> b!1238201 (=> (not res!826046) (not e!701760))))

(assert (=> b!1238201 (= res!826046 (not (= from!3213 (bvsub (size!39033 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238202 () Bool)

(assert (=> b!1238202 (= e!701762 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!561204))))

(declare-fun lt!561205 () Unit!41046)

(declare-fun noDuplicateSubseq!80 (List!27447 List!27447) Unit!41046)

(assert (=> b!1238202 (= lt!561205 (noDuplicateSubseq!80 acc!846 lt!561204))))

(assert (= (and start!103158 res!826045) b!1238199))

(assert (= (and b!1238199 res!826044) b!1238193))

(assert (= (and b!1238193 res!826040) b!1238194))

(assert (= (and b!1238194 res!826051) b!1238197))

(assert (= (and b!1238197 res!826050) b!1238192))

(assert (= (and b!1238192 res!826042) b!1238201))

(assert (= (and b!1238201 res!826046) b!1238200))

(assert (= (and b!1238200 res!826043) b!1238196))

(assert (= (and b!1238196 (not res!826049)) b!1238195))

(assert (= (and b!1238195 (not res!826047)) b!1238198))

(assert (= (and b!1238198 (not res!826048)) b!1238191))

(assert (= (and b!1238191 (not res!826041)) b!1238202))

(declare-fun m!1141781 () Bool)

(assert (=> b!1238198 m!1141781))

(declare-fun m!1141783 () Bool)

(assert (=> b!1238193 m!1141783))

(declare-fun m!1141785 () Bool)

(assert (=> start!103158 m!1141785))

(declare-fun m!1141787 () Bool)

(assert (=> b!1238197 m!1141787))

(declare-fun m!1141789 () Bool)

(assert (=> b!1238192 m!1141789))

(declare-fun m!1141791 () Bool)

(assert (=> b!1238196 m!1141791))

(declare-fun m!1141793 () Bool)

(assert (=> b!1238196 m!1141793))

(declare-fun m!1141795 () Bool)

(assert (=> b!1238196 m!1141795))

(declare-fun m!1141797 () Bool)

(assert (=> b!1238196 m!1141797))

(declare-fun m!1141799 () Bool)

(assert (=> b!1238196 m!1141799))

(declare-fun m!1141801 () Bool)

(assert (=> b!1238195 m!1141801))

(declare-fun m!1141803 () Bool)

(assert (=> b!1238194 m!1141803))

(declare-fun m!1141805 () Bool)

(assert (=> b!1238202 m!1141805))

(declare-fun m!1141807 () Bool)

(assert (=> b!1238202 m!1141807))

(declare-fun m!1141809 () Bool)

(assert (=> b!1238191 m!1141809))

(assert (=> b!1238200 m!1141799))

(assert (=> b!1238200 m!1141799))

(declare-fun m!1141811 () Bool)

(assert (=> b!1238200 m!1141811))

(declare-fun m!1141813 () Bool)

(assert (=> b!1238199 m!1141813))

(push 1)

(assert (not b!1238197))

(assert (not b!1238199))

(assert (not b!1238193))

(assert (not b!1238202))

(assert (not b!1238192))

(assert (not b!1238198))

(assert (not b!1238200))

(assert (not b!1238196))

(assert (not b!1238195))

(assert (not start!103158))

(assert (not b!1238194))

(assert (not b!1238191))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1238339 () Bool)

(declare-fun e!701839 () Bool)

(declare-fun call!61060 () Bool)

(assert (=> b!1238339 (= e!701839 call!61060)))

(declare-fun c!120947 () Bool)

(declare-fun bm!61057 () Bool)

(assert (=> bm!61057 (= call!61060 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!120947 (Cons!27443 (select (arr!38496 a!3835) from!3213) acc!846) acc!846)))))

(declare-fun e!701838 () Bool)

(declare-fun b!1238340 () Bool)

(assert (=> b!1238340 (= e!701838 (contains!7362 acc!846 (select (arr!38496 a!3835) from!3213)))))

(declare-fun b!1238341 () Bool)

(declare-fun e!701836 () Bool)

(declare-fun e!701837 () Bool)

(assert (=> b!1238341 (= e!701836 e!701837)))

(declare-fun res!826172 () Bool)

(assert (=> b!1238341 (=> (not res!826172) (not e!701837))))

(assert (=> b!1238341 (= res!826172 (not e!701838))))

(declare-fun res!826171 () Bool)

(assert (=> b!1238341 (=> (not res!826171) (not e!701838))))

(assert (=> b!1238341 (= res!826171 (validKeyInArray!0 (select (arr!38496 a!3835) from!3213)))))

(declare-fun d!135763 () Bool)

(declare-fun res!826170 () Bool)

(assert (=> d!135763 (=> res!826170 e!701836)))

(assert (=> d!135763 (= res!826170 (bvsge from!3213 (size!39033 a!3835)))))

(assert (=> d!135763 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!701836)))

(declare-fun b!1238342 () Bool)

(assert (=> b!1238342 (= e!701839 call!61060)))

(declare-fun b!1238343 () Bool)

(assert (=> b!1238343 (= e!701837 e!701839)))

(assert (=> b!1238343 (= c!120947 (validKeyInArray!0 (select (arr!38496 a!3835) from!3213)))))

(assert (= (and d!135763 (not res!826170)) b!1238341))

(assert (= (and b!1238341 res!826171) b!1238340))

(assert (= (and b!1238341 res!826172) b!1238343))

(assert (= (and b!1238343 c!120947) b!1238339))

(assert (= (and b!1238343 (not c!120947)) b!1238342))

(assert (= (or b!1238339 b!1238342) bm!61057))

(assert (=> bm!61057 m!1141799))

(declare-fun m!1141919 () Bool)

(assert (=> bm!61057 m!1141919))

(assert (=> b!1238340 m!1141799))

(assert (=> b!1238340 m!1141799))

(declare-fun m!1141921 () Bool)

(assert (=> b!1238340 m!1141921))

(assert (=> b!1238341 m!1141799))

(assert (=> b!1238341 m!1141799))

(assert (=> b!1238341 m!1141811))

(assert (=> b!1238343 m!1141799))

(assert (=> b!1238343 m!1141799))

(assert (=> b!1238343 m!1141811))

(assert (=> b!1238197 d!135763))

(declare-fun d!135777 () Bool)

(declare-fun res!826188 () Bool)

(declare-fun e!701855 () Bool)

(assert (=> d!135777 (=> res!826188 e!701855)))

(assert (=> d!135777 (= res!826188 (is-Nil!27444 lt!561204))))

(assert (=> d!135777 (= (noDuplicate!1969 lt!561204) e!701855)))

(declare-fun b!1238359 () Bool)

(declare-fun e!701856 () Bool)

(assert (=> b!1238359 (= e!701855 e!701856)))

(declare-fun res!826189 () Bool)

(assert (=> b!1238359 (=> (not res!826189) (not e!701856))))

(assert (=> b!1238359 (= res!826189 (not (contains!7362 (t!40917 lt!561204) (h!28652 lt!561204))))))

(declare-fun b!1238360 () Bool)

(assert (=> b!1238360 (= e!701856 (noDuplicate!1969 (t!40917 lt!561204)))))

(assert (= (and d!135777 (not res!826188)) b!1238359))

(assert (= (and b!1238359 res!826189) b!1238360))

(declare-fun m!1141931 () Bool)

(assert (=> b!1238359 m!1141931))

(declare-fun m!1141933 () Bool)

(assert (=> b!1238360 m!1141933))

(assert (=> b!1238195 d!135777))

(declare-fun b!1238390 () Bool)

(declare-fun e!701885 () Bool)

(assert (=> b!1238390 (= e!701885 (subseq!599 (t!40917 acc!846) (t!40917 lt!561204)))))

(declare-fun b!1238389 () Bool)

(declare-fun e!701883 () Bool)

(declare-fun e!701886 () Bool)

(assert (=> b!1238389 (= e!701883 e!701886)))

(declare-fun res!826218 () Bool)

(assert (=> b!1238389 (=> res!826218 e!701886)))

(assert (=> b!1238389 (= res!826218 e!701885)))

(declare-fun res!826216 () Bool)

(assert (=> b!1238389 (=> (not res!826216) (not e!701885))))

(assert (=> b!1238389 (= res!826216 (= (h!28652 acc!846) (h!28652 lt!561204)))))

(declare-fun b!1238391 () Bool)

(assert (=> b!1238391 (= e!701886 (subseq!599 acc!846 (t!40917 lt!561204)))))

(declare-fun d!135783 () Bool)

(declare-fun res!826217 () Bool)

(declare-fun e!701884 () Bool)

(assert (=> d!135783 (=> res!826217 e!701884)))

(assert (=> d!135783 (= res!826217 (is-Nil!27444 acc!846))))

(assert (=> d!135783 (= (subseq!599 acc!846 lt!561204) e!701884)))

(declare-fun b!1238388 () Bool)

(assert (=> b!1238388 (= e!701884 e!701883)))

(declare-fun res!826215 () Bool)

(assert (=> b!1238388 (=> (not res!826215) (not e!701883))))

(assert (=> b!1238388 (= res!826215 (is-Cons!27443 lt!561204))))

(assert (= (and d!135783 (not res!826217)) b!1238388))

(assert (= (and b!1238388 res!826215) b!1238389))

(assert (= (and b!1238389 res!826216) b!1238390))

(assert (= (and b!1238389 (not res!826218)) b!1238391))

(declare-fun m!1141971 () Bool)

(assert (=> b!1238390 m!1141971))

(declare-fun m!1141973 () Bool)

(assert (=> b!1238391 m!1141973))

(assert (=> b!1238196 d!135783))

(declare-fun b!1238458 () Bool)

(declare-fun e!701938 () Unit!41046)

(declare-fun Unit!41052 () Unit!41046)

(assert (=> b!1238458 (= e!701938 Unit!41052)))

(declare-fun b!1238459 () Bool)

(declare-fun c!120967 () Bool)

(declare-fun isEmpty!1016 (List!27447) Bool)

(assert (=> b!1238459 (= c!120967 (not (isEmpty!1016 (t!40917 lt!561204))))))

(declare-fun e!701936 () Unit!41046)

(assert (=> b!1238459 (= e!701936 e!701938)))

(declare-fun b!1238461 () Bool)

(declare-fun call!61066 () Unit!41046)

(assert (=> b!1238461 (= e!701938 call!61066)))

(declare-fun bm!61063 () Bool)

(declare-fun c!120968 () Bool)

(assert (=> bm!61063 (= call!61066 (subseqTail!86 (ite c!120968 lt!561204 (t!40917 lt!561204)) (t!40917 lt!561204)))))

(declare-fun b!1238462 () Bool)

(declare-fun e!701935 () Bool)

(assert (=> b!1238462 (= e!701935 (subseq!599 lt!561204 lt!561204))))

(declare-fun b!1238460 () Bool)

(declare-fun e!701937 () Unit!41046)

(assert (=> b!1238460 (= e!701937 e!701936)))

(assert (=> b!1238460 (= c!120968 (subseq!599 lt!561204 (t!40917 lt!561204)))))

(declare-fun d!135805 () Bool)

(declare-fun tail!165 (List!27447) List!27447)

(assert (=> d!135805 (subseq!599 (tail!165 lt!561204) lt!561204)))

(declare-fun lt!561254 () Unit!41046)

(assert (=> d!135805 (= lt!561254 e!701937)))

(declare-fun c!120969 () Bool)

(assert (=> d!135805 (= c!120969 (and (is-Cons!27443 lt!561204) (is-Cons!27443 lt!561204)))))

(assert (=> d!135805 e!701935))

(declare-fun res!826249 () Bool)

(assert (=> d!135805 (=> (not res!826249) (not e!701935))))

(assert (=> d!135805 (= res!826249 (not (isEmpty!1016 lt!561204)))))

(assert (=> d!135805 (= (subseqTail!86 lt!561204 lt!561204) lt!561254)))

(declare-fun b!1238463 () Bool)

(assert (=> b!1238463 (= e!701936 call!61066)))

(declare-fun b!1238464 () Bool)

(declare-fun Unit!41053 () Unit!41046)

(assert (=> b!1238464 (= e!701937 Unit!41053)))

(assert (= (and d!135805 res!826249) b!1238462))

(assert (= (and d!135805 c!120969) b!1238460))

(assert (= (and d!135805 (not c!120969)) b!1238464))

(assert (= (and b!1238460 c!120968) b!1238463))

(assert (= (and b!1238460 (not c!120968)) b!1238459))

(assert (= (and b!1238459 c!120967) b!1238461))

(assert (= (and b!1238459 (not c!120967)) b!1238458))

(assert (= (or b!1238463 b!1238461) bm!61063))

(declare-fun m!1141983 () Bool)

(assert (=> bm!61063 m!1141983))

(declare-fun m!1141985 () Bool)

(assert (=> b!1238459 m!1141985))

(declare-fun m!1141987 () Bool)

(assert (=> b!1238460 m!1141987))

(assert (=> b!1238462 m!1141793))

(declare-fun m!1141989 () Bool)

(assert (=> d!135805 m!1141989))

(assert (=> d!135805 m!1141989))

(declare-fun m!1141991 () Bool)

(assert (=> d!135805 m!1141991))

(declare-fun m!1141993 () Bool)

(assert (=> d!135805 m!1141993))

(assert (=> b!1238196 d!135805))

(declare-fun b!1238467 () Bool)

(declare-fun e!701941 () Bool)

(assert (=> b!1238467 (= e!701941 (subseq!599 (t!40917 lt!561204) (t!40917 lt!561204)))))

(declare-fun b!1238466 () Bool)

(declare-fun e!701939 () Bool)

(declare-fun e!701942 () Bool)

(assert (=> b!1238466 (= e!701939 e!701942)))

(declare-fun res!826253 () Bool)

(assert (=> b!1238466 (=> res!826253 e!701942)))

(assert (=> b!1238466 (= res!826253 e!701941)))

(declare-fun res!826251 () Bool)

(assert (=> b!1238466 (=> (not res!826251) (not e!701941))))

(assert (=> b!1238466 (= res!826251 (= (h!28652 lt!561204) (h!28652 lt!561204)))))

(declare-fun b!1238468 () Bool)

(assert (=> b!1238468 (= e!701942 (subseq!599 lt!561204 (t!40917 lt!561204)))))

(declare-fun d!135811 () Bool)

(declare-fun res!826252 () Bool)

(declare-fun e!701940 () Bool)

(assert (=> d!135811 (=> res!826252 e!701940)))

(assert (=> d!135811 (= res!826252 (is-Nil!27444 lt!561204))))

(assert (=> d!135811 (= (subseq!599 lt!561204 lt!561204) e!701940)))

(declare-fun b!1238465 () Bool)

(assert (=> b!1238465 (= e!701940 e!701939)))

(declare-fun res!826250 () Bool)

(assert (=> b!1238465 (=> (not res!826250) (not e!701939))))

(assert (=> b!1238465 (= res!826250 (is-Cons!27443 lt!561204))))

(assert (= (and d!135811 (not res!826252)) b!1238465))

(assert (= (and b!1238465 res!826250) b!1238466))

(assert (= (and b!1238466 res!826251) b!1238467))

(assert (= (and b!1238466 (not res!826253)) b!1238468))

(declare-fun m!1141995 () Bool)

(assert (=> b!1238467 m!1141995))

(assert (=> b!1238468 m!1141987))

(assert (=> b!1238196 d!135811))

(declare-fun d!135813 () Bool)

(assert (=> d!135813 (subseq!599 lt!561204 lt!561204)))

(declare-fun lt!561257 () Unit!41046)

(declare-fun choose!36 (List!27447) Unit!41046)

(assert (=> d!135813 (= lt!561257 (choose!36 lt!561204))))

(assert (=> d!135813 (= (lemmaListSubSeqRefl!0 lt!561204) lt!561257)))

(declare-fun bs!34813 () Bool)

(assert (= bs!34813 d!135813))

(assert (=> bs!34813 m!1141793))

(declare-fun m!1141997 () Bool)

(assert (=> bs!34813 m!1141997))

(assert (=> b!1238196 d!135813))

(declare-fun d!135815 () Bool)

(declare-fun res!826255 () Bool)

(declare-fun e!701947 () Bool)

(assert (=> d!135815 (=> res!826255 e!701947)))

(assert (=> d!135815 (= res!826255 (is-Nil!27444 acc!846))))

(assert (=> d!135815 (= (noDuplicate!1969 acc!846) e!701947)))

(declare-fun b!1238476 () Bool)

(declare-fun e!701948 () Bool)

(assert (=> b!1238476 (= e!701947 e!701948)))

(declare-fun res!826256 () Bool)

(assert (=> b!1238476 (=> (not res!826256) (not e!701948))))

(assert (=> b!1238476 (= res!826256 (not (contains!7362 (t!40917 acc!846) (h!28652 acc!846))))))

(declare-fun b!1238477 () Bool)

(assert (=> b!1238477 (= e!701948 (noDuplicate!1969 (t!40917 acc!846)))))

(assert (= (and d!135815 (not res!826255)) b!1238476))

(assert (= (and b!1238476 res!826256) b!1238477))

(declare-fun m!1141999 () Bool)

(assert (=> b!1238476 m!1141999))

(declare-fun m!1142001 () Bool)

(assert (=> b!1238477 m!1142001))

(assert (=> b!1238199 d!135815))

(declare-fun d!135817 () Bool)

(assert (=> d!135817 (= (validKeyInArray!0 (select (arr!38496 a!3835) from!3213)) (and (not (= (select (arr!38496 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38496 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1238200 d!135817))

(declare-fun d!135823 () Bool)

(declare-fun lt!561270 () Bool)

(declare-fun content!598 (List!27447) (Set (_ BitVec 64)))

(assert (=> d!135823 (= lt!561270 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!598 lt!561204)))))

(declare-fun e!701971 () Bool)

(assert (=> d!135823 (= lt!561270 e!701971)))

(declare-fun res!826276 () Bool)

(assert (=> d!135823 (=> (not res!826276) (not e!701971))))

(assert (=> d!135823 (= res!826276 (is-Cons!27443 lt!561204))))

(assert (=> d!135823 (= (contains!7362 lt!561204 #b0000000000000000000000000000000000000000000000000000000000000000) lt!561270)))

(declare-fun b!1238503 () Bool)

(declare-fun e!701972 () Bool)

(assert (=> b!1238503 (= e!701971 e!701972)))

(declare-fun res!826277 () Bool)

(assert (=> b!1238503 (=> res!826277 e!701972)))

(assert (=> b!1238503 (= res!826277 (= (h!28652 lt!561204) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238504 () Bool)

(assert (=> b!1238504 (= e!701972 (contains!7362 (t!40917 lt!561204) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135823 res!826276) b!1238503))

(assert (= (and b!1238503 (not res!826277)) b!1238504))

(declare-fun m!1142047 () Bool)

(assert (=> d!135823 m!1142047))

(declare-fun m!1142049 () Bool)

(assert (=> d!135823 m!1142049))

(declare-fun m!1142051 () Bool)

(assert (=> b!1238504 m!1142051))

(assert (=> b!1238198 d!135823))

(declare-fun d!135839 () Bool)

(declare-fun lt!561271 () Bool)

(assert (=> d!135839 (= lt!561271 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!598 lt!561204)))))

(declare-fun e!701973 () Bool)

(assert (=> d!135839 (= lt!561271 e!701973)))

(declare-fun res!826278 () Bool)

(assert (=> d!135839 (=> (not res!826278) (not e!701973))))

(assert (=> d!135839 (= res!826278 (is-Cons!27443 lt!561204))))

(assert (=> d!135839 (= (contains!7362 lt!561204 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561271)))

(declare-fun b!1238505 () Bool)

(declare-fun e!701974 () Bool)

(assert (=> b!1238505 (= e!701973 e!701974)))

(declare-fun res!826279 () Bool)

(assert (=> b!1238505 (=> res!826279 e!701974)))

(assert (=> b!1238505 (= res!826279 (= (h!28652 lt!561204) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238506 () Bool)

(assert (=> b!1238506 (= e!701974 (contains!7362 (t!40917 lt!561204) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135839 res!826278) b!1238505))

(assert (= (and b!1238505 (not res!826279)) b!1238506))

(assert (=> d!135839 m!1142047))

(declare-fun m!1142053 () Bool)

(assert (=> d!135839 m!1142053))

(declare-fun m!1142055 () Bool)

(assert (=> b!1238506 m!1142055))

(assert (=> b!1238191 d!135839))

(declare-fun b!1238507 () Bool)

(declare-fun e!701978 () Bool)

(declare-fun call!61071 () Bool)

(assert (=> b!1238507 (= e!701978 call!61071)))

(declare-fun bm!61068 () Bool)

(declare-fun c!120976 () Bool)

(assert (=> bm!61068 (= call!61071 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213 #b00000000000000000000000000000001) (ite c!120976 (Cons!27443 (select (arr!38496 a!3835) (bvadd #b00000000000000000000000000000001 from!3213)) lt!561204) lt!561204)))))

(declare-fun e!701977 () Bool)

(declare-fun b!1238508 () Bool)

(assert (=> b!1238508 (= e!701977 (contains!7362 lt!561204 (select (arr!38496 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun b!1238509 () Bool)

(declare-fun e!701975 () Bool)

(declare-fun e!701976 () Bool)

(assert (=> b!1238509 (= e!701975 e!701976)))

(declare-fun res!826282 () Bool)

(assert (=> b!1238509 (=> (not res!826282) (not e!701976))))

(assert (=> b!1238509 (= res!826282 (not e!701977))))

(declare-fun res!826281 () Bool)

(assert (=> b!1238509 (=> (not res!826281) (not e!701977))))

(assert (=> b!1238509 (= res!826281 (validKeyInArray!0 (select (arr!38496 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun d!135841 () Bool)

(declare-fun res!826280 () Bool)

(assert (=> d!135841 (=> res!826280 e!701975)))

(assert (=> d!135841 (= res!826280 (bvsge (bvadd #b00000000000000000000000000000001 from!3213) (size!39033 a!3835)))))

(assert (=> d!135841 (= (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!561204) e!701975)))

(declare-fun b!1238510 () Bool)

(assert (=> b!1238510 (= e!701978 call!61071)))

(declare-fun b!1238511 () Bool)

(assert (=> b!1238511 (= e!701976 e!701978)))

(assert (=> b!1238511 (= c!120976 (validKeyInArray!0 (select (arr!38496 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(assert (= (and d!135841 (not res!826280)) b!1238509))

(assert (= (and b!1238509 res!826281) b!1238508))

(assert (= (and b!1238509 res!826282) b!1238511))

(assert (= (and b!1238511 c!120976) b!1238507))

(assert (= (and b!1238511 (not c!120976)) b!1238510))

(assert (= (or b!1238507 b!1238510) bm!61068))

(declare-fun m!1142057 () Bool)

(assert (=> bm!61068 m!1142057))

(declare-fun m!1142059 () Bool)

(assert (=> bm!61068 m!1142059))

(assert (=> b!1238508 m!1142057))

(assert (=> b!1238508 m!1142057))

(declare-fun m!1142061 () Bool)

(assert (=> b!1238508 m!1142061))

(assert (=> b!1238509 m!1142057))

(assert (=> b!1238509 m!1142057))

(declare-fun m!1142063 () Bool)

(assert (=> b!1238509 m!1142063))

(assert (=> b!1238511 m!1142057))

(assert (=> b!1238511 m!1142057))

(assert (=> b!1238511 m!1142063))

(assert (=> b!1238202 d!135841))

(declare-fun d!135843 () Bool)

(assert (=> d!135843 (noDuplicate!1969 acc!846)))

(declare-fun lt!561274 () Unit!41046)

(declare-fun choose!1839 (List!27447 List!27447) Unit!41046)

(assert (=> d!135843 (= lt!561274 (choose!1839 acc!846 lt!561204))))

(declare-fun e!701981 () Bool)

(assert (=> d!135843 e!701981))

(declare-fun res!826285 () Bool)

(assert (=> d!135843 (=> (not res!826285) (not e!701981))))

(assert (=> d!135843 (= res!826285 (subseq!599 acc!846 lt!561204))))

(assert (=> d!135843 (= (noDuplicateSubseq!80 acc!846 lt!561204) lt!561274)))

(declare-fun b!1238514 () Bool)

(assert (=> b!1238514 (= e!701981 (noDuplicate!1969 lt!561204))))

(assert (= (and d!135843 res!826285) b!1238514))

(assert (=> d!135843 m!1141813))

(declare-fun m!1142065 () Bool)

(assert (=> d!135843 m!1142065))

(assert (=> d!135843 m!1141797))

(assert (=> b!1238514 m!1141801))

(assert (=> b!1238202 d!135843))

(declare-fun d!135845 () Bool)

(declare-fun lt!561275 () Bool)

(assert (=> d!135845 (= lt!561275 (set.member k!2925 (content!598 acc!846)))))

(declare-fun e!701982 () Bool)

(assert (=> d!135845 (= lt!561275 e!701982)))

(declare-fun res!826286 () Bool)

(assert (=> d!135845 (=> (not res!826286) (not e!701982))))

(assert (=> d!135845 (= res!826286 (is-Cons!27443 acc!846))))

(assert (=> d!135845 (= (contains!7362 acc!846 k!2925) lt!561275)))

(declare-fun b!1238515 () Bool)

(declare-fun e!701983 () Bool)

(assert (=> b!1238515 (= e!701982 e!701983)))

(declare-fun res!826287 () Bool)

(assert (=> b!1238515 (=> res!826287 e!701983)))

(assert (=> b!1238515 (= res!826287 (= (h!28652 acc!846) k!2925))))

(declare-fun b!1238516 () Bool)

(assert (=> b!1238516 (= e!701983 (contains!7362 (t!40917 acc!846) k!2925))))

(assert (= (and d!135845 res!826286) b!1238515))

(assert (= (and b!1238515 (not res!826287)) b!1238516))

(declare-fun m!1142067 () Bool)

(assert (=> d!135845 m!1142067))

(declare-fun m!1142069 () Bool)

(assert (=> d!135845 m!1142069))

(declare-fun m!1142071 () Bool)

(assert (=> b!1238516 m!1142071))

(assert (=> b!1238192 d!135845))

(declare-fun d!135847 () Bool)

(declare-fun lt!561276 () Bool)

(assert (=> d!135847 (= lt!561276 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!598 acc!846)))))

