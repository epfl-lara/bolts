; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106706 () Bool)

(assert start!106706)

(declare-fun b!1266890 () Bool)

(declare-fun e!721693 () Bool)

(declare-fun tp!96513 () Bool)

(assert (=> b!1266890 (= e!721693 tp!96513)))

(declare-fun b!1266887 () Bool)

(declare-fun res!843451 () Bool)

(declare-fun e!721692 () Bool)

(assert (=> b!1266887 (=> (not res!843451) (not e!721692))))

(declare-datatypes ((B!2034 0))(
  ( (B!2035 (val!16352 Int)) )
))
(declare-datatypes ((tuple2!21372 0))(
  ( (tuple2!21373 (_1!10696 (_ BitVec 64)) (_2!10696 B!2034)) )
))
(declare-datatypes ((List!28519 0))(
  ( (Nil!28516) (Cons!28515 (h!29724 tuple2!21372) (t!42053 List!28519)) )
))
(declare-datatypes ((ListLongMap!19179 0))(
  ( (ListLongMap!19180 (toList!9605 List!28519)) )
))
(declare-fun lm!209 () ListLongMap!19179)

(declare-fun isStrictlySorted!809 (List!28519) Bool)

(assert (=> b!1266887 (= res!843451 (isStrictlySorted!809 (toList!9605 lm!209)))))

(declare-fun b!1266888 () Bool)

(declare-fun res!843450 () Bool)

(assert (=> b!1266888 (=> (not res!843450) (not e!721692))))

(declare-fun a!499 () (_ BitVec 64))

(declare-fun containsKey!670 (List!28519 (_ BitVec 64)) Bool)

(assert (=> b!1266888 (= res!843450 (not (containsKey!670 (toList!9605 lm!209) a!499)))))

(declare-fun b!1266889 () Bool)

(declare-fun -!2159 (ListLongMap!19179 (_ BitVec 64)) ListLongMap!19179)

(assert (=> b!1266889 (= e!721692 (not (= (-!2159 lm!209 a!499) lm!209)))))

(declare-fun removeStrictlySorted!164 (List!28519 (_ BitVec 64)) List!28519)

(assert (=> b!1266889 (= (removeStrictlySorted!164 (toList!9605 lm!209) a!499) (toList!9605 lm!209))))

(declare-datatypes ((Unit!42159 0))(
  ( (Unit!42160) )
))
(declare-fun lt!574184 () Unit!42159)

(declare-fun lemmaRemoveStrictlySortedNotPresentPreserves!3 (List!28519 (_ BitVec 64)) Unit!42159)

(assert (=> b!1266889 (= lt!574184 (lemmaRemoveStrictlySortedNotPresentPreserves!3 (toList!9605 lm!209) a!499))))

(declare-fun res!843449 () Bool)

(assert (=> start!106706 (=> (not res!843449) (not e!721692))))

(declare-fun contains!7677 (ListLongMap!19179 (_ BitVec 64)) Bool)

(assert (=> start!106706 (= res!843449 (not (contains!7677 lm!209 a!499)))))

(assert (=> start!106706 e!721692))

(declare-fun inv!44195 (ListLongMap!19179) Bool)

(assert (=> start!106706 (and (inv!44195 lm!209) e!721693)))

(assert (=> start!106706 true))

(assert (= (and start!106706 res!843449) b!1266887))

(assert (= (and b!1266887 res!843451) b!1266888))

(assert (= (and b!1266888 res!843450) b!1266889))

(assert (= start!106706 b!1266890))

(declare-fun m!1166485 () Bool)

(assert (=> b!1266887 m!1166485))

(declare-fun m!1166487 () Bool)

(assert (=> b!1266888 m!1166487))

(declare-fun m!1166489 () Bool)

(assert (=> b!1266889 m!1166489))

(declare-fun m!1166491 () Bool)

(assert (=> b!1266889 m!1166491))

(declare-fun m!1166493 () Bool)

(assert (=> b!1266889 m!1166493))

(declare-fun m!1166495 () Bool)

(assert (=> start!106706 m!1166495))

(declare-fun m!1166497 () Bool)

(assert (=> start!106706 m!1166497))

(push 1)

(assert (not start!106706))

(assert (not b!1266888))

(assert (not b!1266889))

(assert (not b!1266890))

(assert (not b!1266887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139287 () Bool)

(declare-fun res!843462 () Bool)

(declare-fun e!721704 () Bool)

(assert (=> d!139287 (=> res!843462 e!721704)))

(assert (=> d!139287 (= res!843462 (and (is-Cons!28515 (toList!9605 lm!209)) (= (_1!10696 (h!29724 (toList!9605 lm!209))) a!499)))))

(assert (=> d!139287 (= (containsKey!670 (toList!9605 lm!209) a!499) e!721704)))

(declare-fun b!1266901 () Bool)

(declare-fun e!721705 () Bool)

(assert (=> b!1266901 (= e!721704 e!721705)))

(declare-fun res!843463 () Bool)

(assert (=> b!1266901 (=> (not res!843463) (not e!721705))))

(assert (=> b!1266901 (= res!843463 (and (or (not (is-Cons!28515 (toList!9605 lm!209))) (bvsle (_1!10696 (h!29724 (toList!9605 lm!209))) a!499)) (is-Cons!28515 (toList!9605 lm!209)) (bvslt (_1!10696 (h!29724 (toList!9605 lm!209))) a!499)))))

(declare-fun b!1266902 () Bool)

(assert (=> b!1266902 (= e!721705 (containsKey!670 (t!42053 (toList!9605 lm!209)) a!499))))

(assert (= (and d!139287 (not res!843462)) b!1266901))

(assert (= (and b!1266901 res!843463) b!1266902))

(declare-fun m!1166501 () Bool)

(assert (=> b!1266902 m!1166501))

(assert (=> b!1266888 d!139287))

(declare-fun d!139293 () Bool)

(declare-fun res!843476 () Bool)

(declare-fun e!721720 () Bool)

(assert (=> d!139293 (=> res!843476 e!721720)))

(assert (=> d!139293 (= res!843476 (or (is-Nil!28516 (toList!9605 lm!209)) (is-Nil!28516 (t!42053 (toList!9605 lm!209)))))))

(assert (=> d!139293 (= (isStrictlySorted!809 (toList!9605 lm!209)) e!721720)))

(declare-fun b!1266919 () Bool)

(declare-fun e!721721 () Bool)

(assert (=> b!1266919 (= e!721720 e!721721)))

(declare-fun res!843477 () Bool)

(assert (=> b!1266919 (=> (not res!843477) (not e!721721))))

(assert (=> b!1266919 (= res!843477 (bvslt (_1!10696 (h!29724 (toList!9605 lm!209))) (_1!10696 (h!29724 (t!42053 (toList!9605 lm!209))))))))

(declare-fun b!1266920 () Bool)

(assert (=> b!1266920 (= e!721721 (isStrictlySorted!809 (t!42053 (toList!9605 lm!209))))))

(assert (= (and d!139293 (not res!843476)) b!1266919))

(assert (= (and b!1266919 res!843477) b!1266920))

(declare-fun m!1166505 () Bool)

(assert (=> b!1266920 m!1166505))

(assert (=> b!1266887 d!139293))

(declare-fun d!139297 () Bool)

(declare-fun e!721735 () Bool)

(assert (=> d!139297 e!721735))

(declare-fun res!843484 () Bool)

(assert (=> d!139297 (=> res!843484 e!721735)))

(declare-fun lt!574222 () Bool)

(assert (=> d!139297 (= res!843484 (not lt!574222))))

(declare-fun lt!574220 () Bool)

(assert (=> d!139297 (= lt!574222 lt!574220)))

(declare-fun lt!574223 () Unit!42159)

(declare-fun e!721734 () Unit!42159)

(assert (=> d!139297 (= lt!574223 e!721734)))

(declare-fun c!123478 () Bool)

(assert (=> d!139297 (= c!123478 lt!574220)))

(assert (=> d!139297 (= lt!574220 (containsKey!670 (toList!9605 lm!209) a!499))))

(assert (=> d!139297 (= (contains!7677 lm!209 a!499) lt!574222)))

(declare-fun b!1266939 () Bool)

(declare-fun lt!574221 () Unit!42159)

(assert (=> b!1266939 (= e!721734 lt!574221)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!451 (List!28519 (_ BitVec 64)) Unit!42159)

(assert (=> b!1266939 (= lt!574221 (lemmaContainsKeyImpliesGetValueByKeyDefined!451 (toList!9605 lm!209) a!499))))

(declare-datatypes ((Option!739 0))(
  ( (Some!738 (v!19019 B!2034)) (None!737) )
))
(declare-fun isDefined!491 (Option!739) Bool)

(declare-fun getValueByKey!688 (List!28519 (_ BitVec 64)) Option!739)

(assert (=> b!1266939 (isDefined!491 (getValueByKey!688 (toList!9605 lm!209) a!499))))

(declare-fun b!1266940 () Bool)

(declare-fun Unit!42163 () Unit!42159)

(assert (=> b!1266940 (= e!721734 Unit!42163)))

(declare-fun b!1266941 () Bool)

(assert (=> b!1266941 (= e!721735 (isDefined!491 (getValueByKey!688 (toList!9605 lm!209) a!499)))))

(assert (= (and d!139297 c!123478) b!1266939))

(assert (= (and d!139297 (not c!123478)) b!1266940))

(assert (= (and d!139297 (not res!843484)) b!1266941))

(assert (=> d!139297 m!1166487))

(declare-fun m!1166519 () Bool)

(assert (=> b!1266939 m!1166519))

(declare-fun m!1166521 () Bool)

(assert (=> b!1266939 m!1166521))

(assert (=> b!1266939 m!1166521))

(declare-fun m!1166525 () Bool)

(assert (=> b!1266939 m!1166525))

(assert (=> b!1266941 m!1166521))

(assert (=> b!1266941 m!1166521))

(assert (=> b!1266941 m!1166525))

(assert (=> start!106706 d!139297))

(declare-fun d!139307 () Bool)

(assert (=> d!139307 (= (inv!44195 lm!209) (isStrictlySorted!809 (toList!9605 lm!209)))))

(declare-fun bs!35860 () Bool)

(assert (= bs!35860 d!139307))

(assert (=> bs!35860 m!1166485))

(assert (=> start!106706 d!139307))

(declare-fun d!139311 () Bool)

(declare-fun lt!574231 () ListLongMap!19179)

(assert (=> d!139311 (not (contains!7677 lt!574231 a!499))))

(assert (=> d!139311 (= lt!574231 (ListLongMap!19180 (removeStrictlySorted!164 (toList!9605 lm!209) a!499)))))

(assert (=> d!139311 (= (-!2159 lm!209 a!499) lt!574231)))

(declare-fun bs!35862 () Bool)

(assert (= bs!35862 d!139311))

(declare-fun m!1166529 () Bool)

(assert (=> bs!35862 m!1166529))

(assert (=> bs!35862 m!1166491))

(assert (=> b!1266889 d!139311))

(declare-fun b!1266988 () Bool)

(declare-fun e!721767 () List!28519)

(assert (=> b!1266988 (= e!721767 Nil!28516)))

(declare-fun b!1266989 () Bool)

(declare-fun e!721766 () List!28519)

(assert (=> b!1266989 (= e!721766 (t!42053 (toList!9605 lm!209)))))

(declare-fun b!1266990 () Bool)

(declare-fun $colon$colon!649 (List!28519 tuple2!21372) List!28519)

(assert (=> b!1266990 (= e!721767 ($colon$colon!649 (removeStrictlySorted!164 (t!42053 (toList!9605 lm!209)) a!499) (h!29724 (toList!9605 lm!209))))))

(declare-fun b!1266991 () Bool)

(declare-fun e!721768 () Bool)

(declare-fun lt!574241 () List!28519)

(assert (=> b!1266991 (= e!721768 (not (containsKey!670 lt!574241 a!499)))))

(declare-fun b!1266992 () Bool)

(assert (=> b!1266992 (= e!721766 e!721767)))

(declare-fun c!123496 () Bool)

(assert (=> b!1266992 (= c!123496 (and (is-Cons!28515 (toList!9605 lm!209)) (not (= (_1!10696 (h!29724 (toList!9605 lm!209))) a!499))))))

(declare-fun d!139315 () Bool)

(assert (=> d!139315 e!721768))

(declare-fun res!843499 () Bool)

(assert (=> d!139315 (=> (not res!843499) (not e!721768))))

(assert (=> d!139315 (= res!843499 (isStrictlySorted!809 lt!574241))))

(assert (=> d!139315 (= lt!574241 e!721766)))

(declare-fun c!123495 () Bool)

(assert (=> d!139315 (= c!123495 (and (is-Cons!28515 (toList!9605 lm!209)) (= (_1!10696 (h!29724 (toList!9605 lm!209))) a!499)))))

(assert (=> d!139315 (isStrictlySorted!809 (toList!9605 lm!209))))

(assert (=> d!139315 (= (removeStrictlySorted!164 (toList!9605 lm!209) a!499) lt!574241)))

(assert (= (and d!139315 c!123495) b!1266989))

(assert (= (and d!139315 (not c!123495)) b!1266992))

(assert (= (and b!1266992 c!123496) b!1266990))

(assert (= (and b!1266992 (not c!123496)) b!1266988))

(assert (= (and d!139315 res!843499) b!1266991))

(declare-fun m!1166547 () Bool)

(assert (=> b!1266990 m!1166547))

(assert (=> b!1266990 m!1166547))

(declare-fun m!1166551 () Bool)

(assert (=> b!1266990 m!1166551))

(declare-fun m!1166555 () Bool)

(assert (=> b!1266991 m!1166555))

(declare-fun m!1166557 () Bool)

(assert (=> d!139315 m!1166557))

(assert (=> d!139315 m!1166485))

(assert (=> b!1266889 d!139315))

(declare-fun d!139325 () Bool)

(assert (=> d!139325 (= (removeStrictlySorted!164 (toList!9605 lm!209) a!499) (toList!9605 lm!209))))

(declare-fun lt!574247 () Unit!42159)

(declare-fun choose!1900 (List!28519 (_ BitVec 64)) Unit!42159)

(assert (=> d!139325 (= lt!574247 (choose!1900 (toList!9605 lm!209) a!499))))

(assert (=> d!139325 (isStrictlySorted!809 (toList!9605 lm!209))))

(assert (=> d!139325 (= (lemmaRemoveStrictlySortedNotPresentPreserves!3 (toList!9605 lm!209) a!499) lt!574247)))

(declare-fun bs!35865 () Bool)

(assert (= bs!35865 d!139325))

(assert (=> bs!35865 m!1166491))

(declare-fun m!1166563 () Bool)

(assert (=> bs!35865 m!1166563))

(assert (=> bs!35865 m!1166485))

(assert (=> b!1266889 d!139325))

(declare-fun b!1267013 () Bool)

(declare-fun e!721783 () Bool)

(declare-fun tp_is_empty!32555 () Bool)

(declare-fun tp!96522 () Bool)

(assert (=> b!1267013 (= e!721783 (and tp_is_empty!32555 tp!96522))))

(assert (=> b!1266890 (= tp!96513 e!721783)))

(assert (= (and b!1266890 (is-Cons!28515 (toList!9605 lm!209))) b!1267013))

(push 1)

