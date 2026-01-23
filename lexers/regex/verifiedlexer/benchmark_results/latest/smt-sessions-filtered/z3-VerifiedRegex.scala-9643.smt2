; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506588 () Bool)

(assert start!506588)

(declare-fun bs!1173110 () Bool)

(declare-fun b!4852767 () Bool)

(assert (= bs!1173110 (and b!4852767 start!506588)))

(declare-fun lambda!242915 () Int)

(declare-fun lambda!242914 () Int)

(assert (=> bs!1173110 (not (= lambda!242915 lambda!242914))))

(assert (=> b!4852767 true))

(declare-fun b!4852768 () Bool)

(assert (=> b!4852768 true))

(assert (=> b!4852768 true))

(declare-fun res!2071614 () Bool)

(declare-fun e!3033669 () Bool)

(assert (=> start!506588 (=> (not res!2071614) (not e!3033669))))

(declare-datatypes ((V!17750 0))(
  ( (V!17751 (val!22309 Int)) )
))
(declare-datatypes ((K!17504 0))(
  ( (K!17505 (val!22310 Int)) )
))
(declare-datatypes ((tuple2!59454 0))(
  ( (tuple2!59455 (_1!33021 K!17504) (_2!33021 V!17750)) )
))
(declare-datatypes ((List!55784 0))(
  ( (Nil!55660) (Cons!55660 (h!62101 tuple2!59454) (t!363280 List!55784)) )
))
(declare-datatypes ((tuple2!59456 0))(
  ( (tuple2!59457 (_1!33022 (_ BitVec 64)) (_2!33022 List!55784)) )
))
(declare-datatypes ((List!55785 0))(
  ( (Nil!55661) (Cons!55661 (h!62102 tuple2!59456) (t!363281 List!55785)) )
))
(declare-datatypes ((ListLongMap!6535 0))(
  ( (ListLongMap!6536 (toList!7896 List!55785)) )
))
(declare-fun lm!2840 () ListLongMap!6535)

(declare-fun forall!12993 (List!55785 Int) Bool)

(assert (=> start!506588 (= res!2071614 (forall!12993 (toList!7896 lm!2840) lambda!242914))))

(assert (=> start!506588 e!3033669))

(declare-fun e!3033672 () Bool)

(declare-fun inv!71366 (ListLongMap!6535) Bool)

(assert (=> start!506588 (and (inv!71366 lm!2840) e!3033672)))

(assert (=> start!506588 true))

(declare-fun tp_is_empty!35375 () Bool)

(assert (=> start!506588 tp_is_empty!35375))

(declare-fun b!4852766 () Bool)

(declare-fun res!2071611 () Bool)

(assert (=> b!4852766 (=> (not res!2071611) (not e!3033669))))

(declare-fun hash!467 () (_ BitVec 64))

(declare-fun contains!19313 (ListLongMap!6535 (_ BitVec 64)) Bool)

(assert (=> b!4852766 (= res!2071611 (contains!19313 lm!2840 hash!467))))

(declare-fun e!3033670 () Bool)

(assert (=> b!4852767 (= e!3033669 (not e!3033670))))

(declare-fun res!2071613 () Bool)

(assert (=> b!4852767 (=> res!2071613 e!3033670)))

(declare-datatypes ((Hashable!7538 0))(
  ( (HashableExt!7537 (__x!33813 Int)) )
))
(declare-fun hashF!1802 () Hashable!7538)

(declare-fun lt!1990421 () List!55784)

(declare-fun allKeysSameHash!2048 (List!55784 (_ BitVec 64) Hashable!7538) Bool)

(assert (=> b!4852767 (= res!2071613 (not (allKeysSameHash!2048 lt!1990421 hash!467 hashF!1802)))))

(declare-datatypes ((Unit!145787 0))(
  ( (Unit!145788) )
))
(declare-fun lt!1990420 () Unit!145787)

(declare-fun lt!1990418 () tuple2!59456)

(declare-fun forallContained!4571 (List!55785 Int tuple2!59456) Unit!145787)

(assert (=> b!4852767 (= lt!1990420 (forallContained!4571 (toList!7896 lm!2840) lambda!242915 lt!1990418))))

(declare-fun contains!19314 (List!55785 tuple2!59456) Bool)

(assert (=> b!4852767 (contains!19314 (toList!7896 lm!2840) lt!1990418)))

(assert (=> b!4852767 (= lt!1990418 (tuple2!59457 hash!467 lt!1990421))))

(declare-fun lt!1990422 () Unit!145787)

(declare-fun lemmaGetValueImpliesTupleContained!799 (ListLongMap!6535 (_ BitVec 64) List!55784) Unit!145787)

(assert (=> b!4852767 (= lt!1990422 (lemmaGetValueImpliesTupleContained!799 lm!2840 hash!467 lt!1990421))))

(declare-fun apply!13477 (ListLongMap!6535 (_ BitVec 64)) List!55784)

(assert (=> b!4852767 (= lt!1990421 (apply!13477 lm!2840 hash!467))))

(declare-fun e!3033671 () Bool)

(assert (=> b!4852768 (= e!3033670 e!3033671)))

(declare-fun res!2071615 () Bool)

(assert (=> b!4852768 (=> (not res!2071615) (not e!3033671))))

(declare-fun lambda!242916 () Int)

(declare-fun forall!12994 (List!55784 Int) Bool)

(assert (=> b!4852768 (= res!2071615 (forall!12994 lt!1990421 lambda!242916))))

(declare-datatypes ((Option!13736 0))(
  ( (None!13735) (Some!13735 (v!49537 tuple2!59454)) )
))
(declare-fun lt!1990419 () Option!13736)

(declare-fun key!6955 () K!17504)

(declare-fun getPair!1134 (List!55784 K!17504) Option!13736)

(assert (=> b!4852768 (= lt!1990419 (getPair!1134 lt!1990421 key!6955))))

(declare-fun lt!1990417 () Unit!145787)

(assert (=> b!4852768 (= lt!1990417 (forallContained!4571 (toList!7896 lm!2840) lambda!242914 lt!1990418))))

(declare-fun b!4852769 () Bool)

(declare-fun contains!19315 (List!55784 tuple2!59454) Bool)

(declare-fun get!19115 (Option!13736) tuple2!59454)

(assert (=> b!4852769 (= e!3033671 (contains!19315 lt!1990421 (tuple2!59455 key!6955 (_2!33021 (get!19115 lt!1990419)))))))

(declare-fun b!4852770 () Bool)

(declare-fun tp!1365126 () Bool)

(assert (=> b!4852770 (= e!3033672 tp!1365126)))

(declare-fun b!4852771 () Bool)

(declare-fun res!2071617 () Bool)

(assert (=> b!4852771 (=> (not res!2071617) (not e!3033669))))

(declare-fun allKeysSameHashInMap!2852 (ListLongMap!6535 Hashable!7538) Bool)

(assert (=> b!4852771 (= res!2071617 (allKeysSameHashInMap!2852 lm!2840 hashF!1802))))

(declare-fun b!4852772 () Bool)

(declare-fun res!2071612 () Bool)

(assert (=> b!4852772 (=> res!2071612 e!3033670)))

(declare-fun containsKey!4746 (List!55784 K!17504) Bool)

(assert (=> b!4852772 (= res!2071612 (not (containsKey!4746 lt!1990421 key!6955)))))

(declare-fun b!4852773 () Bool)

(declare-fun res!2071616 () Bool)

(assert (=> b!4852773 (=> (not res!2071616) (not e!3033669))))

(declare-fun hash!5666 (Hashable!7538 K!17504) (_ BitVec 64))

(assert (=> b!4852773 (= res!2071616 (not (= hash!467 (hash!5666 hashF!1802 key!6955))))))

(assert (= (and start!506588 res!2071614) b!4852771))

(assert (= (and b!4852771 res!2071617) b!4852766))

(assert (= (and b!4852766 res!2071611) b!4852773))

(assert (= (and b!4852773 res!2071616) b!4852767))

(assert (= (and b!4852767 (not res!2071613)) b!4852772))

(assert (= (and b!4852772 (not res!2071612)) b!4852768))

(assert (= (and b!4852768 res!2071615) b!4852769))

(assert (= start!506588 b!4852770))

(declare-fun m!5851008 () Bool)

(assert (=> b!4852766 m!5851008))

(declare-fun m!5851010 () Bool)

(assert (=> b!4852772 m!5851010))

(declare-fun m!5851012 () Bool)

(assert (=> b!4852767 m!5851012))

(declare-fun m!5851014 () Bool)

(assert (=> b!4852767 m!5851014))

(declare-fun m!5851016 () Bool)

(assert (=> b!4852767 m!5851016))

(declare-fun m!5851018 () Bool)

(assert (=> b!4852767 m!5851018))

(declare-fun m!5851020 () Bool)

(assert (=> b!4852767 m!5851020))

(declare-fun m!5851022 () Bool)

(assert (=> start!506588 m!5851022))

(declare-fun m!5851024 () Bool)

(assert (=> start!506588 m!5851024))

(declare-fun m!5851026 () Bool)

(assert (=> b!4852773 m!5851026))

(declare-fun m!5851028 () Bool)

(assert (=> b!4852771 m!5851028))

(declare-fun m!5851030 () Bool)

(assert (=> b!4852768 m!5851030))

(declare-fun m!5851032 () Bool)

(assert (=> b!4852768 m!5851032))

(declare-fun m!5851034 () Bool)

(assert (=> b!4852768 m!5851034))

(declare-fun m!5851036 () Bool)

(assert (=> b!4852769 m!5851036))

(declare-fun m!5851038 () Bool)

(assert (=> b!4852769 m!5851038))

(check-sat tp_is_empty!35375 (not b!4852773) (not b!4852771) (not b!4852768) (not b!4852766) (not b!4852770) (not b!4852767) (not b!4852769) (not start!506588) (not b!4852772))
(check-sat)
(get-model)

(declare-fun d!1557772 () Bool)

(declare-fun e!3033677 () Bool)

(assert (=> d!1557772 e!3033677))

(declare-fun res!2071620 () Bool)

(assert (=> d!1557772 (=> res!2071620 e!3033677)))

(declare-fun lt!1990431 () Bool)

(assert (=> d!1557772 (= res!2071620 (not lt!1990431))))

(declare-fun lt!1990432 () Bool)

(assert (=> d!1557772 (= lt!1990431 lt!1990432)))

(declare-fun lt!1990433 () Unit!145787)

(declare-fun e!3033678 () Unit!145787)

(assert (=> d!1557772 (= lt!1990433 e!3033678)))

(declare-fun c!825709 () Bool)

(assert (=> d!1557772 (= c!825709 lt!1990432)))

(declare-fun containsKey!4747 (List!55785 (_ BitVec 64)) Bool)

(assert (=> d!1557772 (= lt!1990432 (containsKey!4747 (toList!7896 lm!2840) hash!467))))

(assert (=> d!1557772 (= (contains!19313 lm!2840 hash!467) lt!1990431)))

(declare-fun b!4852786 () Bool)

(declare-fun lt!1990434 () Unit!145787)

(assert (=> b!4852786 (= e!3033678 lt!1990434)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2521 (List!55785 (_ BitVec 64)) Unit!145787)

(assert (=> b!4852786 (= lt!1990434 (lemmaContainsKeyImpliesGetValueByKeyDefined!2521 (toList!7896 lm!2840) hash!467))))

(declare-datatypes ((Option!13737 0))(
  ( (None!13736) (Some!13736 (v!49541 List!55784)) )
))
(declare-fun isDefined!10822 (Option!13737) Bool)

(declare-fun getValueByKey!2749 (List!55785 (_ BitVec 64)) Option!13737)

(assert (=> b!4852786 (isDefined!10822 (getValueByKey!2749 (toList!7896 lm!2840) hash!467))))

(declare-fun b!4852787 () Bool)

(declare-fun Unit!145789 () Unit!145787)

(assert (=> b!4852787 (= e!3033678 Unit!145789)))

(declare-fun b!4852788 () Bool)

(assert (=> b!4852788 (= e!3033677 (isDefined!10822 (getValueByKey!2749 (toList!7896 lm!2840) hash!467)))))

(assert (= (and d!1557772 c!825709) b!4852786))

(assert (= (and d!1557772 (not c!825709)) b!4852787))

(assert (= (and d!1557772 (not res!2071620)) b!4852788))

(declare-fun m!5851040 () Bool)

(assert (=> d!1557772 m!5851040))

(declare-fun m!5851042 () Bool)

(assert (=> b!4852786 m!5851042))

(declare-fun m!5851044 () Bool)

(assert (=> b!4852786 m!5851044))

(assert (=> b!4852786 m!5851044))

(declare-fun m!5851046 () Bool)

(assert (=> b!4852786 m!5851046))

(assert (=> b!4852788 m!5851044))

(assert (=> b!4852788 m!5851044))

(assert (=> b!4852788 m!5851046))

(assert (=> b!4852766 d!1557772))

(declare-fun bs!1173111 () Bool)

(declare-fun d!1557774 () Bool)

(assert (= bs!1173111 (and d!1557774 start!506588)))

(declare-fun lambda!242919 () Int)

(assert (=> bs!1173111 (not (= lambda!242919 lambda!242914))))

(declare-fun bs!1173112 () Bool)

(assert (= bs!1173112 (and d!1557774 b!4852767)))

(assert (=> bs!1173112 (= lambda!242919 lambda!242915)))

(assert (=> d!1557774 true))

(assert (=> d!1557774 (= (allKeysSameHashInMap!2852 lm!2840 hashF!1802) (forall!12993 (toList!7896 lm!2840) lambda!242919))))

(declare-fun bs!1173113 () Bool)

(assert (= bs!1173113 d!1557774))

(declare-fun m!5851048 () Bool)

(assert (=> bs!1173113 m!5851048))

(assert (=> b!4852771 d!1557774))

(declare-fun d!1557776 () Bool)

(declare-fun lt!1990440 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9913 (List!55784) (InoxSet tuple2!59454))

(assert (=> d!1557776 (= lt!1990440 (select (content!9913 lt!1990421) (tuple2!59455 key!6955 (_2!33021 (get!19115 lt!1990419)))))))

(declare-fun e!3033689 () Bool)

(assert (=> d!1557776 (= lt!1990440 e!3033689)))

(declare-fun res!2071631 () Bool)

(assert (=> d!1557776 (=> (not res!2071631) (not e!3033689))))

(get-info :version)

(assert (=> d!1557776 (= res!2071631 ((_ is Cons!55660) lt!1990421))))

(assert (=> d!1557776 (= (contains!19315 lt!1990421 (tuple2!59455 key!6955 (_2!33021 (get!19115 lt!1990419)))) lt!1990440)))

(declare-fun b!4852799 () Bool)

(declare-fun e!3033690 () Bool)

(assert (=> b!4852799 (= e!3033689 e!3033690)))

(declare-fun res!2071632 () Bool)

(assert (=> b!4852799 (=> res!2071632 e!3033690)))

(assert (=> b!4852799 (= res!2071632 (= (h!62101 lt!1990421) (tuple2!59455 key!6955 (_2!33021 (get!19115 lt!1990419)))))))

(declare-fun b!4852800 () Bool)

(assert (=> b!4852800 (= e!3033690 (contains!19315 (t!363280 lt!1990421) (tuple2!59455 key!6955 (_2!33021 (get!19115 lt!1990419)))))))

(assert (= (and d!1557776 res!2071631) b!4852799))

(assert (= (and b!4852799 (not res!2071632)) b!4852800))

(declare-fun m!5851052 () Bool)

(assert (=> d!1557776 m!5851052))

(declare-fun m!5851056 () Bool)

(assert (=> d!1557776 m!5851056))

(declare-fun m!5851060 () Bool)

(assert (=> b!4852800 m!5851060))

(assert (=> b!4852769 d!1557776))

(declare-fun d!1557782 () Bool)

(assert (=> d!1557782 (= (get!19115 lt!1990419) (v!49537 lt!1990419))))

(assert (=> b!4852769 d!1557782))

(declare-fun d!1557786 () Bool)

(declare-fun res!2071643 () Bool)

(declare-fun e!3033701 () Bool)

(assert (=> d!1557786 (=> res!2071643 e!3033701)))

(assert (=> d!1557786 (= res!2071643 ((_ is Nil!55660) lt!1990421))))

(assert (=> d!1557786 (= (forall!12994 lt!1990421 lambda!242916) e!3033701)))

(declare-fun b!4852811 () Bool)

(declare-fun e!3033702 () Bool)

(assert (=> b!4852811 (= e!3033701 e!3033702)))

(declare-fun res!2071644 () Bool)

(assert (=> b!4852811 (=> (not res!2071644) (not e!3033702))))

(declare-fun dynLambda!22376 (Int tuple2!59454) Bool)

(assert (=> b!4852811 (= res!2071644 (dynLambda!22376 lambda!242916 (h!62101 lt!1990421)))))

(declare-fun b!4852812 () Bool)

(assert (=> b!4852812 (= e!3033702 (forall!12994 (t!363280 lt!1990421) lambda!242916))))

(assert (= (and d!1557786 (not res!2071643)) b!4852811))

(assert (= (and b!4852811 res!2071644) b!4852812))

(declare-fun b_lambda!193091 () Bool)

(assert (=> (not b_lambda!193091) (not b!4852811)))

(declare-fun m!5851064 () Bool)

(assert (=> b!4852811 m!5851064))

(declare-fun m!5851066 () Bool)

(assert (=> b!4852812 m!5851066))

(assert (=> b!4852768 d!1557786))

(declare-fun b!4852851 () Bool)

(declare-fun e!3033730 () Option!13736)

(assert (=> b!4852851 (= e!3033730 (Some!13735 (h!62101 lt!1990421)))))

(declare-fun b!4852852 () Bool)

(declare-fun e!3033729 () Bool)

(declare-fun lt!1990445 () Option!13736)

(assert (=> b!4852852 (= e!3033729 (contains!19315 lt!1990421 (get!19115 lt!1990445)))))

(declare-fun b!4852854 () Bool)

(declare-fun e!3033731 () Bool)

(assert (=> b!4852854 (= e!3033731 e!3033729)))

(declare-fun res!2071670 () Bool)

(assert (=> b!4852854 (=> (not res!2071670) (not e!3033729))))

(declare-fun isDefined!10824 (Option!13736) Bool)

(assert (=> b!4852854 (= res!2071670 (isDefined!10824 lt!1990445))))

(declare-fun b!4852855 () Bool)

(declare-fun e!3033733 () Option!13736)

(assert (=> b!4852855 (= e!3033733 None!13735)))

(declare-fun b!4852856 () Bool)

(declare-fun res!2071668 () Bool)

(assert (=> b!4852856 (=> (not res!2071668) (not e!3033729))))

(assert (=> b!4852856 (= res!2071668 (= (_1!33021 (get!19115 lt!1990445)) key!6955))))

(declare-fun d!1557790 () Bool)

(assert (=> d!1557790 e!3033731))

(declare-fun res!2071669 () Bool)

(assert (=> d!1557790 (=> res!2071669 e!3033731)))

(declare-fun e!3033732 () Bool)

(assert (=> d!1557790 (= res!2071669 e!3033732)))

(declare-fun res!2071667 () Bool)

(assert (=> d!1557790 (=> (not res!2071667) (not e!3033732))))

(declare-fun isEmpty!29774 (Option!13736) Bool)

(assert (=> d!1557790 (= res!2071667 (isEmpty!29774 lt!1990445))))

(assert (=> d!1557790 (= lt!1990445 e!3033730)))

(declare-fun c!825719 () Bool)

(assert (=> d!1557790 (= c!825719 (and ((_ is Cons!55660) lt!1990421) (= (_1!33021 (h!62101 lt!1990421)) key!6955)))))

(declare-fun noDuplicateKeys!2629 (List!55784) Bool)

(assert (=> d!1557790 (noDuplicateKeys!2629 lt!1990421)))

(assert (=> d!1557790 (= (getPair!1134 lt!1990421 key!6955) lt!1990445)))

(declare-fun b!4852853 () Bool)

(assert (=> b!4852853 (= e!3033733 (getPair!1134 (t!363280 lt!1990421) key!6955))))

(declare-fun b!4852857 () Bool)

(assert (=> b!4852857 (= e!3033732 (not (containsKey!4746 lt!1990421 key!6955)))))

(declare-fun b!4852858 () Bool)

(assert (=> b!4852858 (= e!3033730 e!3033733)))

(declare-fun c!825718 () Bool)

(assert (=> b!4852858 (= c!825718 ((_ is Cons!55660) lt!1990421))))

(assert (= (and d!1557790 c!825719) b!4852851))

(assert (= (and d!1557790 (not c!825719)) b!4852858))

(assert (= (and b!4852858 c!825718) b!4852853))

(assert (= (and b!4852858 (not c!825718)) b!4852855))

(assert (= (and d!1557790 res!2071667) b!4852857))

(assert (= (and d!1557790 (not res!2071669)) b!4852854))

(assert (= (and b!4852854 res!2071670) b!4852856))

(assert (= (and b!4852856 res!2071668) b!4852852))

(declare-fun m!5851072 () Bool)

(assert (=> b!4852852 m!5851072))

(assert (=> b!4852852 m!5851072))

(declare-fun m!5851074 () Bool)

(assert (=> b!4852852 m!5851074))

(assert (=> b!4852857 m!5851010))

(declare-fun m!5851076 () Bool)

(assert (=> d!1557790 m!5851076))

(declare-fun m!5851078 () Bool)

(assert (=> d!1557790 m!5851078))

(declare-fun m!5851080 () Bool)

(assert (=> b!4852854 m!5851080))

(assert (=> b!4852856 m!5851072))

(declare-fun m!5851082 () Bool)

(assert (=> b!4852853 m!5851082))

(assert (=> b!4852768 d!1557790))

(declare-fun d!1557794 () Bool)

(declare-fun dynLambda!22378 (Int tuple2!59456) Bool)

(assert (=> d!1557794 (dynLambda!22378 lambda!242914 lt!1990418)))

(declare-fun lt!1990449 () Unit!145787)

(declare-fun choose!35528 (List!55785 Int tuple2!59456) Unit!145787)

(assert (=> d!1557794 (= lt!1990449 (choose!35528 (toList!7896 lm!2840) lambda!242914 lt!1990418))))

(declare-fun e!3033741 () Bool)

(assert (=> d!1557794 e!3033741))

(declare-fun res!2071677 () Bool)

(assert (=> d!1557794 (=> (not res!2071677) (not e!3033741))))

(assert (=> d!1557794 (= res!2071677 (forall!12993 (toList!7896 lm!2840) lambda!242914))))

(assert (=> d!1557794 (= (forallContained!4571 (toList!7896 lm!2840) lambda!242914 lt!1990418) lt!1990449)))

(declare-fun b!4852869 () Bool)

(assert (=> b!4852869 (= e!3033741 (contains!19314 (toList!7896 lm!2840) lt!1990418))))

(assert (= (and d!1557794 res!2071677) b!4852869))

(declare-fun b_lambda!193095 () Bool)

(assert (=> (not b_lambda!193095) (not d!1557794)))

(declare-fun m!5851096 () Bool)

(assert (=> d!1557794 m!5851096))

(declare-fun m!5851098 () Bool)

(assert (=> d!1557794 m!5851098))

(assert (=> d!1557794 m!5851022))

(assert (=> b!4852869 m!5851014))

(assert (=> b!4852768 d!1557794))

(declare-fun d!1557798 () Bool)

(declare-fun res!2071685 () Bool)

(declare-fun e!3033749 () Bool)

(assert (=> d!1557798 (=> res!2071685 e!3033749)))

(assert (=> d!1557798 (= res!2071685 ((_ is Nil!55661) (toList!7896 lm!2840)))))

(assert (=> d!1557798 (= (forall!12993 (toList!7896 lm!2840) lambda!242914) e!3033749)))

(declare-fun b!4852877 () Bool)

(declare-fun e!3033750 () Bool)

(assert (=> b!4852877 (= e!3033749 e!3033750)))

(declare-fun res!2071686 () Bool)

(assert (=> b!4852877 (=> (not res!2071686) (not e!3033750))))

(assert (=> b!4852877 (= res!2071686 (dynLambda!22378 lambda!242914 (h!62102 (toList!7896 lm!2840))))))

(declare-fun b!4852878 () Bool)

(assert (=> b!4852878 (= e!3033750 (forall!12993 (t!363281 (toList!7896 lm!2840)) lambda!242914))))

(assert (= (and d!1557798 (not res!2071685)) b!4852877))

(assert (= (and b!4852877 res!2071686) b!4852878))

(declare-fun b_lambda!193099 () Bool)

(assert (=> (not b_lambda!193099) (not b!4852877)))

(declare-fun m!5851104 () Bool)

(assert (=> b!4852877 m!5851104))

(declare-fun m!5851106 () Bool)

(assert (=> b!4852878 m!5851106))

(assert (=> start!506588 d!1557798))

(declare-fun d!1557802 () Bool)

(declare-fun isStrictlySorted!1098 (List!55785) Bool)

(assert (=> d!1557802 (= (inv!71366 lm!2840) (isStrictlySorted!1098 (toList!7896 lm!2840)))))

(declare-fun bs!1173114 () Bool)

(assert (= bs!1173114 d!1557802))

(declare-fun m!5851108 () Bool)

(assert (=> bs!1173114 m!5851108))

(assert (=> start!506588 d!1557802))

(declare-fun d!1557804 () Bool)

(declare-fun hash!5667 (Hashable!7538 K!17504) (_ BitVec 64))

(assert (=> d!1557804 (= (hash!5666 hashF!1802 key!6955) (hash!5667 hashF!1802 key!6955))))

(declare-fun bs!1173115 () Bool)

(assert (= bs!1173115 d!1557804))

(declare-fun m!5851110 () Bool)

(assert (=> bs!1173115 m!5851110))

(assert (=> b!4852773 d!1557804))

(declare-fun d!1557806 () Bool)

(declare-fun res!2071697 () Bool)

(declare-fun e!3033761 () Bool)

(assert (=> d!1557806 (=> res!2071697 e!3033761)))

(assert (=> d!1557806 (= res!2071697 (and ((_ is Cons!55660) lt!1990421) (= (_1!33021 (h!62101 lt!1990421)) key!6955)))))

(assert (=> d!1557806 (= (containsKey!4746 lt!1990421 key!6955) e!3033761)))

(declare-fun b!4852889 () Bool)

(declare-fun e!3033762 () Bool)

(assert (=> b!4852889 (= e!3033761 e!3033762)))

(declare-fun res!2071698 () Bool)

(assert (=> b!4852889 (=> (not res!2071698) (not e!3033762))))

(assert (=> b!4852889 (= res!2071698 ((_ is Cons!55660) lt!1990421))))

(declare-fun b!4852890 () Bool)

(assert (=> b!4852890 (= e!3033762 (containsKey!4746 (t!363280 lt!1990421) key!6955))))

(assert (= (and d!1557806 (not res!2071697)) b!4852889))

(assert (= (and b!4852889 res!2071698) b!4852890))

(declare-fun m!5851118 () Bool)

(assert (=> b!4852890 m!5851118))

(assert (=> b!4852772 d!1557806))

(declare-fun d!1557812 () Bool)

(assert (=> d!1557812 (contains!19314 (toList!7896 lm!2840) (tuple2!59457 hash!467 lt!1990421))))

(declare-fun lt!1990455 () Unit!145787)

(declare-fun choose!35530 (ListLongMap!6535 (_ BitVec 64) List!55784) Unit!145787)

(assert (=> d!1557812 (= lt!1990455 (choose!35530 lm!2840 hash!467 lt!1990421))))

(assert (=> d!1557812 (contains!19313 lm!2840 hash!467)))

(assert (=> d!1557812 (= (lemmaGetValueImpliesTupleContained!799 lm!2840 hash!467 lt!1990421) lt!1990455)))

(declare-fun bs!1173117 () Bool)

(assert (= bs!1173117 d!1557812))

(declare-fun m!5851120 () Bool)

(assert (=> bs!1173117 m!5851120))

(declare-fun m!5851122 () Bool)

(assert (=> bs!1173117 m!5851122))

(assert (=> bs!1173117 m!5851008))

(assert (=> b!4852767 d!1557812))

(declare-fun d!1557814 () Bool)

(declare-fun lt!1990470 () Bool)

(declare-fun content!9915 (List!55785) (InoxSet tuple2!59456))

(assert (=> d!1557814 (= lt!1990470 (select (content!9915 (toList!7896 lm!2840)) lt!1990418))))

(declare-fun e!3033774 () Bool)

(assert (=> d!1557814 (= lt!1990470 e!3033774)))

(declare-fun res!2071707 () Bool)

(assert (=> d!1557814 (=> (not res!2071707) (not e!3033774))))

(assert (=> d!1557814 (= res!2071707 ((_ is Cons!55661) (toList!7896 lm!2840)))))

(assert (=> d!1557814 (= (contains!19314 (toList!7896 lm!2840) lt!1990418) lt!1990470)))

(declare-fun b!4852905 () Bool)

(declare-fun e!3033773 () Bool)

(assert (=> b!4852905 (= e!3033774 e!3033773)))

(declare-fun res!2071706 () Bool)

(assert (=> b!4852905 (=> res!2071706 e!3033773)))

(assert (=> b!4852905 (= res!2071706 (= (h!62102 (toList!7896 lm!2840)) lt!1990418))))

(declare-fun b!4852906 () Bool)

(assert (=> b!4852906 (= e!3033773 (contains!19314 (t!363281 (toList!7896 lm!2840)) lt!1990418))))

(assert (= (and d!1557814 res!2071707) b!4852905))

(assert (= (and b!4852905 (not res!2071706)) b!4852906))

(declare-fun m!5851124 () Bool)

(assert (=> d!1557814 m!5851124))

(declare-fun m!5851126 () Bool)

(assert (=> d!1557814 m!5851126))

(declare-fun m!5851130 () Bool)

(assert (=> b!4852906 m!5851130))

(assert (=> b!4852767 d!1557814))

(declare-fun d!1557816 () Bool)

(assert (=> d!1557816 (dynLambda!22378 lambda!242915 lt!1990418)))

(declare-fun lt!1990471 () Unit!145787)

(assert (=> d!1557816 (= lt!1990471 (choose!35528 (toList!7896 lm!2840) lambda!242915 lt!1990418))))

(declare-fun e!3033775 () Bool)

(assert (=> d!1557816 e!3033775))

(declare-fun res!2071708 () Bool)

(assert (=> d!1557816 (=> (not res!2071708) (not e!3033775))))

(assert (=> d!1557816 (= res!2071708 (forall!12993 (toList!7896 lm!2840) lambda!242915))))

(assert (=> d!1557816 (= (forallContained!4571 (toList!7896 lm!2840) lambda!242915 lt!1990418) lt!1990471)))

(declare-fun b!4852907 () Bool)

(assert (=> b!4852907 (= e!3033775 (contains!19314 (toList!7896 lm!2840) lt!1990418))))

(assert (= (and d!1557816 res!2071708) b!4852907))

(declare-fun b_lambda!193103 () Bool)

(assert (=> (not b_lambda!193103) (not d!1557816)))

(declare-fun m!5851138 () Bool)

(assert (=> d!1557816 m!5851138))

(declare-fun m!5851140 () Bool)

(assert (=> d!1557816 m!5851140))

(declare-fun m!5851142 () Bool)

(assert (=> d!1557816 m!5851142))

(assert (=> b!4852907 m!5851014))

(assert (=> b!4852767 d!1557816))

(declare-fun d!1557820 () Bool)

(declare-fun get!19117 (Option!13737) List!55784)

(assert (=> d!1557820 (= (apply!13477 lm!2840 hash!467) (get!19117 (getValueByKey!2749 (toList!7896 lm!2840) hash!467)))))

(declare-fun bs!1173118 () Bool)

(assert (= bs!1173118 d!1557820))

(assert (=> bs!1173118 m!5851044))

(assert (=> bs!1173118 m!5851044))

(declare-fun m!5851144 () Bool)

(assert (=> bs!1173118 m!5851144))

(assert (=> b!4852767 d!1557820))

(declare-fun bs!1173122 () Bool)

(declare-fun d!1557822 () Bool)

(assert (= bs!1173122 (and d!1557822 b!4852768)))

(declare-fun lambda!242925 () Int)

(assert (=> bs!1173122 (= lambda!242925 lambda!242916)))

(assert (=> d!1557822 true))

(assert (=> d!1557822 true))

(assert (=> d!1557822 (= (allKeysSameHash!2048 lt!1990421 hash!467 hashF!1802) (forall!12994 lt!1990421 lambda!242925))))

(declare-fun bs!1173123 () Bool)

(assert (= bs!1173123 d!1557822))

(declare-fun m!5851148 () Bool)

(assert (=> bs!1173123 m!5851148))

(assert (=> b!4852767 d!1557822))

(declare-fun b!4852912 () Bool)

(declare-fun e!3033778 () Bool)

(declare-fun tp!1365131 () Bool)

(declare-fun tp!1365132 () Bool)

(assert (=> b!4852912 (= e!3033778 (and tp!1365131 tp!1365132))))

(assert (=> b!4852770 (= tp!1365126 e!3033778)))

(assert (= (and b!4852770 ((_ is Cons!55661) (toList!7896 lm!2840))) b!4852912))

(declare-fun b_lambda!193105 () Bool)

(assert (= b_lambda!193095 (or start!506588 b_lambda!193105)))

(declare-fun bs!1173124 () Bool)

(declare-fun d!1557826 () Bool)

(assert (= bs!1173124 (and d!1557826 start!506588)))

(assert (=> bs!1173124 (= (dynLambda!22378 lambda!242914 lt!1990418) (noDuplicateKeys!2629 (_2!33022 lt!1990418)))))

(declare-fun m!5851150 () Bool)

(assert (=> bs!1173124 m!5851150))

(assert (=> d!1557794 d!1557826))

(declare-fun b_lambda!193107 () Bool)

(assert (= b_lambda!193099 (or start!506588 b_lambda!193107)))

(declare-fun bs!1173125 () Bool)

(declare-fun d!1557828 () Bool)

(assert (= bs!1173125 (and d!1557828 start!506588)))

(assert (=> bs!1173125 (= (dynLambda!22378 lambda!242914 (h!62102 (toList!7896 lm!2840))) (noDuplicateKeys!2629 (_2!33022 (h!62102 (toList!7896 lm!2840)))))))

(declare-fun m!5851152 () Bool)

(assert (=> bs!1173125 m!5851152))

(assert (=> b!4852877 d!1557828))

(declare-fun b_lambda!193109 () Bool)

(assert (= b_lambda!193091 (or b!4852768 b_lambda!193109)))

(declare-fun bs!1173126 () Bool)

(declare-fun d!1557830 () Bool)

(assert (= bs!1173126 (and d!1557830 b!4852768)))

(assert (=> bs!1173126 (= (dynLambda!22376 lambda!242916 (h!62101 lt!1990421)) (= (hash!5666 hashF!1802 (_1!33021 (h!62101 lt!1990421))) hash!467))))

(declare-fun m!5851154 () Bool)

(assert (=> bs!1173126 m!5851154))

(assert (=> b!4852811 d!1557830))

(declare-fun b_lambda!193111 () Bool)

(assert (= b_lambda!193103 (or b!4852767 b_lambda!193111)))

(declare-fun bs!1173127 () Bool)

(declare-fun d!1557832 () Bool)

(assert (= bs!1173127 (and d!1557832 b!4852767)))

(assert (=> bs!1173127 (= (dynLambda!22378 lambda!242915 lt!1990418) (allKeysSameHash!2048 (_2!33022 lt!1990418) (_1!33022 lt!1990418) hashF!1802))))

(declare-fun m!5851156 () Bool)

(assert (=> bs!1173127 m!5851156))

(assert (=> d!1557816 d!1557832))

(check-sat (not b!4852912) (not b!4852857) (not bs!1173126) (not b!4852856) (not b!4852788) (not b!4852890) (not b!4852786) (not d!1557774) (not b_lambda!193109) (not d!1557812) (not b!4852869) (not b!4852906) (not bs!1173127) (not bs!1173125) tp_is_empty!35375 (not b_lambda!193105) (not b!4852854) (not b!4852878) (not d!1557794) (not b!4852812) (not b_lambda!193107) (not d!1557804) (not d!1557814) (not d!1557790) (not bs!1173124) (not d!1557822) (not d!1557802) (not d!1557776) (not b!4852800) (not b!4852907) (not d!1557816) (not d!1557820) (not d!1557772) (not b!4852852) (not b_lambda!193111) (not b!4852853))
(check-sat)
