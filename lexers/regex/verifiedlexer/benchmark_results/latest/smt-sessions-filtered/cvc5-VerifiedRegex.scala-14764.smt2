; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759210 () Bool)

(assert start!759210)

(declare-fun b!8057761 () Bool)

(assert (=> b!8057761 true))

(declare-fun bs!1973325 () Bool)

(declare-fun b!8057759 () Bool)

(assert (= bs!1973325 (and b!8057759 b!8057761)))

(declare-fun lambda!474769 () Int)

(declare-fun lambda!474768 () Int)

(declare-datatypes ((V!23205 0))(
  ( (V!23206 (val!33033 Int)) )
))
(declare-datatypes ((K!22951 0))(
  ( (K!22952 (val!33034 Int)) )
))
(declare-datatypes ((tuple2!70998 0))(
  ( (tuple2!70999 (_1!38802 K!22951) (_2!38802 V!23205)) )
))
(declare-datatypes ((List!75747 0))(
  ( (Nil!75621) (Cons!75621 (h!82069 tuple2!70998) (t!391519 List!75747)) )
))
(declare-datatypes ((ListMap!7369 0))(
  ( (ListMap!7370 (toList!11959 List!75747)) )
))
(declare-fun lt!2731393 () ListMap!7369)

(declare-fun acc!836 () ListMap!7369)

(assert (=> bs!1973325 (= (= lt!2731393 acc!836) (= lambda!474769 lambda!474768))))

(assert (=> b!8057759 true))

(declare-fun lambda!474770 () Int)

(assert (=> b!8057761 (= (= lt!2731393 acc!836) (= lambda!474770 lambda!474768))))

(assert (=> bs!1973325 (= lambda!474770 lambda!474769)))

(assert (=> b!8057761 true))

(declare-fun b!8057758 () Bool)

(declare-fun e!4748522 () Bool)

(declare-fun l!10976 () List!75747)

(assert (=> b!8057758 (= e!4748522 (= l!10976 (Cons!75621 (h!82069 l!10976) (t!391519 l!10976))))))

(declare-fun res!3187530 () Bool)

(assert (=> b!8057759 (=> (not res!3187530) (not e!4748522))))

(declare-fun lt!2731392 () ListMap!7369)

(declare-fun forall!18539 (List!75747 Int) Bool)

(assert (=> b!8057759 (= res!3187530 (forall!18539 (toList!11959 lt!2731392) lambda!474769))))

(declare-fun res!3187531 () Bool)

(declare-fun e!4748523 () Bool)

(assert (=> start!759210 (=> (not res!3187531) (not e!4748523))))

(declare-fun noDuplicateKeys!2745 (List!75747) Bool)

(assert (=> start!759210 (= res!3187531 (noDuplicateKeys!2745 l!10976))))

(assert (=> start!759210 e!4748523))

(declare-fun e!4748524 () Bool)

(assert (=> start!759210 e!4748524))

(declare-fun e!4748521 () Bool)

(declare-fun inv!97425 (ListMap!7369) Bool)

(assert (=> start!759210 (and (inv!97425 acc!836) e!4748521)))

(declare-fun b!8057760 () Bool)

(declare-fun tp!2414182 () Bool)

(assert (=> b!8057760 (= e!4748521 tp!2414182)))

(declare-fun contains!21291 (ListMap!7369 K!22951) Bool)

(assert (=> b!8057761 (= e!4748523 (not (contains!21291 lt!2731392 (_1!38802 (h!82069 l!10976)))))))

(declare-datatypes ((Unit!172621 0))(
  ( (Unit!172622) )
))
(declare-fun lt!2731394 () Unit!172621)

(declare-fun forallContained!4684 (List!75747 Int tuple2!70998) Unit!172621)

(assert (=> b!8057761 (= lt!2731394 (forallContained!4684 (toList!11959 lt!2731392) lambda!474770 (h!82069 l!10976)))))

(assert (=> b!8057761 e!4748522))

(declare-fun res!3187532 () Bool)

(assert (=> b!8057761 (=> (not res!3187532) (not e!4748522))))

(assert (=> b!8057761 (= res!3187532 (forall!18539 (toList!11959 acc!836) lambda!474768))))

(declare-fun lt!2731391 () Unit!172621)

(declare-fun lemmaContainsAllItsOwnKeys!1120 (ListMap!7369) Unit!172621)

(assert (=> b!8057761 (= lt!2731391 (lemmaContainsAllItsOwnKeys!1120 acc!836))))

(declare-fun addToMapMapFromBucket!2020 (List!75747 ListMap!7369) ListMap!7369)

(assert (=> b!8057761 (= lt!2731393 (addToMapMapFromBucket!2020 (t!391519 l!10976) lt!2731392))))

(declare-fun +!2706 (ListMap!7369 tuple2!70998) ListMap!7369)

(assert (=> b!8057761 (= lt!2731392 (+!2706 acc!836 (h!82069 l!10976)))))

(declare-fun b!8057762 () Bool)

(declare-fun res!3187528 () Bool)

(assert (=> b!8057762 (=> (not res!3187528) (not e!4748522))))

(assert (=> b!8057762 (= res!3187528 (forall!18539 (t!391519 l!10976) lambda!474769))))

(declare-fun b!8057763 () Bool)

(declare-fun res!3187529 () Bool)

(assert (=> b!8057763 (=> (not res!3187529) (not e!4748523))))

(assert (=> b!8057763 (= res!3187529 (not (is-Nil!75621 l!10976)))))

(declare-fun b!8057764 () Bool)

(declare-fun tp_is_empty!55121 () Bool)

(declare-fun tp!2414183 () Bool)

(declare-fun tp_is_empty!55119 () Bool)

(assert (=> b!8057764 (= e!4748524 (and tp_is_empty!55119 tp_is_empty!55121 tp!2414183))))

(assert (= (and start!759210 res!3187531) b!8057763))

(assert (= (and b!8057763 res!3187529) b!8057761))

(assert (= (and b!8057761 res!3187532) b!8057759))

(assert (= (and b!8057759 res!3187530) b!8057762))

(assert (= (and b!8057762 res!3187528) b!8057758))

(assert (= (and start!759210 (is-Cons!75621 l!10976)) b!8057764))

(assert (= start!759210 b!8057760))

(declare-fun m!8410888 () Bool)

(assert (=> b!8057759 m!8410888))

(declare-fun m!8410890 () Bool)

(assert (=> start!759210 m!8410890))

(declare-fun m!8410892 () Bool)

(assert (=> start!759210 m!8410892))

(declare-fun m!8410894 () Bool)

(assert (=> b!8057761 m!8410894))

(declare-fun m!8410896 () Bool)

(assert (=> b!8057761 m!8410896))

(declare-fun m!8410898 () Bool)

(assert (=> b!8057761 m!8410898))

(declare-fun m!8410900 () Bool)

(assert (=> b!8057761 m!8410900))

(declare-fun m!8410902 () Bool)

(assert (=> b!8057761 m!8410902))

(declare-fun m!8410904 () Bool)

(assert (=> b!8057761 m!8410904))

(declare-fun m!8410906 () Bool)

(assert (=> b!8057762 m!8410906))

(push 1)

(assert (not b!8057759))

(assert (not b!8057762))

(assert tp_is_empty!55121)

(assert (not start!759210))

(assert (not b!8057760))

(assert tp_is_empty!55119)

(assert (not b!8057764))

(assert (not b!8057761))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2398967 () Bool)

(declare-fun res!3187552 () Bool)

(declare-fun e!4748541 () Bool)

(assert (=> d!2398967 (=> res!3187552 e!4748541)))

(assert (=> d!2398967 (= res!3187552 (is-Nil!75621 (toList!11959 acc!836)))))

(assert (=> d!2398967 (= (forall!18539 (toList!11959 acc!836) lambda!474768) e!4748541)))

(declare-fun b!8057794 () Bool)

(declare-fun e!4748542 () Bool)

(assert (=> b!8057794 (= e!4748541 e!4748542)))

(declare-fun res!3187553 () Bool)

(assert (=> b!8057794 (=> (not res!3187553) (not e!4748542))))

(declare-fun dynLambda!30277 (Int tuple2!70998) Bool)

(assert (=> b!8057794 (= res!3187553 (dynLambda!30277 lambda!474768 (h!82069 (toList!11959 acc!836))))))

(declare-fun b!8057795 () Bool)

(assert (=> b!8057795 (= e!4748542 (forall!18539 (t!391519 (toList!11959 acc!836)) lambda!474768))))

(assert (= (and d!2398967 (not res!3187552)) b!8057794))

(assert (= (and b!8057794 res!3187553) b!8057795))

(declare-fun b_lambda!290579 () Bool)

(assert (=> (not b_lambda!290579) (not b!8057794)))

(declare-fun m!8410928 () Bool)

(assert (=> b!8057794 m!8410928))

(declare-fun m!8410930 () Bool)

(assert (=> b!8057795 m!8410930))

(assert (=> b!8057761 d!2398967))

(declare-fun d!2398969 () Bool)

(declare-fun e!4748545 () Bool)

(assert (=> d!2398969 e!4748545))

(declare-fun res!3187558 () Bool)

(assert (=> d!2398969 (=> (not res!3187558) (not e!4748545))))

(declare-fun lt!2731416 () ListMap!7369)

(assert (=> d!2398969 (= res!3187558 (contains!21291 lt!2731416 (_1!38802 (h!82069 l!10976))))))

(declare-fun lt!2731417 () List!75747)

(assert (=> d!2398969 (= lt!2731416 (ListMap!7370 lt!2731417))))

(declare-fun lt!2731418 () Unit!172621)

(declare-fun lt!2731415 () Unit!172621)

(assert (=> d!2398969 (= lt!2731418 lt!2731415)))

(declare-datatypes ((Option!18023 0))(
  ( (None!18022) (Some!18022 (v!55379 V!23205)) )
))
(declare-fun getValueByKey!2807 (List!75747 K!22951) Option!18023)

(assert (=> d!2398969 (= (getValueByKey!2807 lt!2731417 (_1!38802 (h!82069 l!10976))) (Some!18022 (_2!38802 (h!82069 l!10976))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1300 (List!75747 K!22951 V!23205) Unit!172621)

(assert (=> d!2398969 (= lt!2731415 (lemmaContainsTupThenGetReturnValue!1300 lt!2731417 (_1!38802 (h!82069 l!10976)) (_2!38802 (h!82069 l!10976))))))

(declare-fun insertNoDuplicatedKeys!808 (List!75747 K!22951 V!23205) List!75747)

(assert (=> d!2398969 (= lt!2731417 (insertNoDuplicatedKeys!808 (toList!11959 acc!836) (_1!38802 (h!82069 l!10976)) (_2!38802 (h!82069 l!10976))))))

(assert (=> d!2398969 (= (+!2706 acc!836 (h!82069 l!10976)) lt!2731416)))

(declare-fun b!8057800 () Bool)

(declare-fun res!3187559 () Bool)

(assert (=> b!8057800 (=> (not res!3187559) (not e!4748545))))

(assert (=> b!8057800 (= res!3187559 (= (getValueByKey!2807 (toList!11959 lt!2731416) (_1!38802 (h!82069 l!10976))) (Some!18022 (_2!38802 (h!82069 l!10976)))))))

(declare-fun b!8057801 () Bool)

(declare-fun contains!21293 (List!75747 tuple2!70998) Bool)

(assert (=> b!8057801 (= e!4748545 (contains!21293 (toList!11959 lt!2731416) (h!82069 l!10976)))))

(assert (= (and d!2398969 res!3187558) b!8057800))

(assert (= (and b!8057800 res!3187559) b!8057801))

(declare-fun m!8410932 () Bool)

(assert (=> d!2398969 m!8410932))

(declare-fun m!8410934 () Bool)

(assert (=> d!2398969 m!8410934))

(declare-fun m!8410936 () Bool)

(assert (=> d!2398969 m!8410936))

(declare-fun m!8410938 () Bool)

(assert (=> d!2398969 m!8410938))

(declare-fun m!8410940 () Bool)

(assert (=> b!8057800 m!8410940))

(declare-fun m!8410942 () Bool)

(assert (=> b!8057801 m!8410942))

(assert (=> b!8057761 d!2398969))

(declare-fun b!8057834 () Bool)

(declare-fun e!4748574 () Unit!172621)

(declare-fun Unit!172625 () Unit!172621)

(assert (=> b!8057834 (= e!4748574 Unit!172625)))

(declare-fun b!8057835 () Bool)

(declare-fun e!4748575 () Unit!172621)

(declare-fun lt!2731440 () Unit!172621)

(assert (=> b!8057835 (= e!4748575 lt!2731440)))

(declare-fun lt!2731439 () Unit!172621)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2574 (List!75747 K!22951) Unit!172621)

(assert (=> b!8057835 (= lt!2731439 (lemmaContainsKeyImpliesGetValueByKeyDefined!2574 (toList!11959 lt!2731392) (_1!38802 (h!82069 l!10976))))))

(declare-fun isDefined!14552 (Option!18023) Bool)

(assert (=> b!8057835 (isDefined!14552 (getValueByKey!2807 (toList!11959 lt!2731392) (_1!38802 (h!82069 l!10976))))))

(declare-fun lt!2731444 () Unit!172621)

(assert (=> b!8057835 (= lt!2731444 lt!2731439)))

(declare-fun lemmaInListThenGetKeysListContains!1257 (List!75747 K!22951) Unit!172621)

(assert (=> b!8057835 (= lt!2731440 (lemmaInListThenGetKeysListContains!1257 (toList!11959 lt!2731392) (_1!38802 (h!82069 l!10976))))))

(declare-fun call!747592 () Bool)

(assert (=> b!8057835 call!747592))

(declare-fun bm!747587 () Bool)

(declare-datatypes ((List!75749 0))(
  ( (Nil!75623) (Cons!75623 (h!82071 K!22951) (t!391521 List!75749)) )
))
(declare-fun e!4748573 () List!75749)

(declare-fun contains!21294 (List!75749 K!22951) Bool)

(assert (=> bm!747587 (= call!747592 (contains!21294 e!4748573 (_1!38802 (h!82069 l!10976))))))

(declare-fun c!1476704 () Bool)

(declare-fun c!1476702 () Bool)

(assert (=> bm!747587 (= c!1476704 c!1476702)))

(declare-fun b!8057836 () Bool)

(declare-fun keys!30913 (ListMap!7369) List!75749)

(assert (=> b!8057836 (= e!4748573 (keys!30913 lt!2731392))))

(declare-fun b!8057837 () Bool)

(declare-fun e!4748576 () Bool)

(declare-fun e!4748572 () Bool)

(assert (=> b!8057837 (= e!4748576 e!4748572)))

(declare-fun res!3187581 () Bool)

(assert (=> b!8057837 (=> (not res!3187581) (not e!4748572))))

(assert (=> b!8057837 (= res!3187581 (isDefined!14552 (getValueByKey!2807 (toList!11959 lt!2731392) (_1!38802 (h!82069 l!10976)))))))

(declare-fun b!8057838 () Bool)

(assert (=> b!8057838 (= e!4748572 (contains!21294 (keys!30913 lt!2731392) (_1!38802 (h!82069 l!10976))))))

(declare-fun b!8057839 () Bool)

(declare-fun getKeysList!1262 (List!75747) List!75749)

(assert (=> b!8057839 (= e!4748573 (getKeysList!1262 (toList!11959 lt!2731392)))))

(declare-fun b!8057840 () Bool)

(assert (=> b!8057840 false))

(declare-fun lt!2731443 () Unit!172621)

(declare-fun lt!2731442 () Unit!172621)

(assert (=> b!8057840 (= lt!2731443 lt!2731442)))

(declare-fun containsKey!4919 (List!75747 K!22951) Bool)

(assert (=> b!8057840 (containsKey!4919 (toList!11959 lt!2731392) (_1!38802 (h!82069 l!10976)))))

(declare-fun lemmaInGetKeysListThenContainsKey!1262 (List!75747 K!22951) Unit!172621)

(assert (=> b!8057840 (= lt!2731442 (lemmaInGetKeysListThenContainsKey!1262 (toList!11959 lt!2731392) (_1!38802 (h!82069 l!10976))))))

(declare-fun Unit!172626 () Unit!172621)

(assert (=> b!8057840 (= e!4748574 Unit!172626)))

(declare-fun b!8057841 () Bool)

(assert (=> b!8057841 (= e!4748575 e!4748574)))

(declare-fun c!1476703 () Bool)

(assert (=> b!8057841 (= c!1476703 call!747592)))

(declare-fun b!8057833 () Bool)

(declare-fun e!4748571 () Bool)

(assert (=> b!8057833 (= e!4748571 (not (contains!21294 (keys!30913 lt!2731392) (_1!38802 (h!82069 l!10976)))))))

(declare-fun d!2398971 () Bool)

(assert (=> d!2398971 e!4748576))

(declare-fun res!3187579 () Bool)

(assert (=> d!2398971 (=> res!3187579 e!4748576)))

(assert (=> d!2398971 (= res!3187579 e!4748571)))

(declare-fun res!3187580 () Bool)

(assert (=> d!2398971 (=> (not res!3187580) (not e!4748571))))

(declare-fun lt!2731441 () Bool)

(assert (=> d!2398971 (= res!3187580 (not lt!2731441))))

(declare-fun lt!2731437 () Bool)

(assert (=> d!2398971 (= lt!2731441 lt!2731437)))

(declare-fun lt!2731445 () Unit!172621)

(assert (=> d!2398971 (= lt!2731445 e!4748575)))

(assert (=> d!2398971 (= c!1476702 lt!2731437)))

(assert (=> d!2398971 (= lt!2731437 (containsKey!4919 (toList!11959 lt!2731392) (_1!38802 (h!82069 l!10976))))))

(assert (=> d!2398971 (= (contains!21291 lt!2731392 (_1!38802 (h!82069 l!10976))) lt!2731441)))

(assert (= (and d!2398971 c!1476702) b!8057835))

(assert (= (and d!2398971 (not c!1476702)) b!8057841))

(assert (= (and b!8057841 c!1476703) b!8057840))

(assert (= (and b!8057841 (not c!1476703)) b!8057834))

(assert (= (or b!8057835 b!8057841) bm!747587))

(assert (= (and bm!747587 c!1476704) b!8057839))

(assert (= (and bm!747587 (not c!1476704)) b!8057836))

(assert (= (and d!2398971 res!3187580) b!8057833))

(assert (= (and d!2398971 (not res!3187579)) b!8057837))

(assert (= (and b!8057837 res!3187581) b!8057838))

(declare-fun m!8410964 () Bool)

(assert (=> b!8057838 m!8410964))

(assert (=> b!8057838 m!8410964))

(declare-fun m!8410966 () Bool)

(assert (=> b!8057838 m!8410966))

(declare-fun m!8410968 () Bool)

(assert (=> b!8057839 m!8410968))

(declare-fun m!8410970 () Bool)

(assert (=> b!8057840 m!8410970))

(declare-fun m!8410972 () Bool)

(assert (=> b!8057840 m!8410972))

(assert (=> d!2398971 m!8410970))

(declare-fun m!8410974 () Bool)

(assert (=> b!8057837 m!8410974))

(assert (=> b!8057837 m!8410974))

(declare-fun m!8410976 () Bool)

(assert (=> b!8057837 m!8410976))

(declare-fun m!8410978 () Bool)

(assert (=> bm!747587 m!8410978))

(assert (=> b!8057836 m!8410964))

(declare-fun m!8410980 () Bool)

(assert (=> b!8057835 m!8410980))

(assert (=> b!8057835 m!8410974))

(assert (=> b!8057835 m!8410974))

(assert (=> b!8057835 m!8410976))

(declare-fun m!8410982 () Bool)

(assert (=> b!8057835 m!8410982))

(assert (=> b!8057833 m!8410964))

(assert (=> b!8057833 m!8410964))

(assert (=> b!8057833 m!8410966))

(assert (=> b!8057761 d!2398971))

(declare-fun d!2398983 () Bool)

(assert (=> d!2398983 (dynLambda!30277 lambda!474770 (h!82069 l!10976))))

(declare-fun lt!2731448 () Unit!172621)

(declare-fun choose!60569 (List!75747 Int tuple2!70998) Unit!172621)

(assert (=> d!2398983 (= lt!2731448 (choose!60569 (toList!11959 lt!2731392) lambda!474770 (h!82069 l!10976)))))

(declare-fun e!4748579 () Bool)

(assert (=> d!2398983 e!4748579))

(declare-fun res!3187584 () Bool)

(assert (=> d!2398983 (=> (not res!3187584) (not e!4748579))))

(assert (=> d!2398983 (= res!3187584 (forall!18539 (toList!11959 lt!2731392) lambda!474770))))

(assert (=> d!2398983 (= (forallContained!4684 (toList!11959 lt!2731392) lambda!474770 (h!82069 l!10976)) lt!2731448)))

(declare-fun b!8057844 () Bool)

(assert (=> b!8057844 (= e!4748579 (contains!21293 (toList!11959 lt!2731392) (h!82069 l!10976)))))

(assert (= (and d!2398983 res!3187584) b!8057844))

(declare-fun b_lambda!290589 () Bool)

(assert (=> (not b_lambda!290589) (not d!2398983)))

(declare-fun m!8410984 () Bool)

(assert (=> d!2398983 m!8410984))

(declare-fun m!8410986 () Bool)

(assert (=> d!2398983 m!8410986))

(declare-fun m!8410988 () Bool)

(assert (=> d!2398983 m!8410988))

(declare-fun m!8410990 () Bool)

(assert (=> b!8057844 m!8410990))

(assert (=> b!8057761 d!2398983))

(declare-fun bs!1973327 () Bool)

(declare-fun b!8057891 () Bool)

(assert (= bs!1973327 (and b!8057891 b!8057761)))

(declare-fun lambda!474810 () Int)

(assert (=> bs!1973327 (= (= lt!2731392 acc!836) (= lambda!474810 lambda!474768))))

(declare-fun bs!1973328 () Bool)

(assert (= bs!1973328 (and b!8057891 b!8057759)))

(assert (=> bs!1973328 (= (= lt!2731392 lt!2731393) (= lambda!474810 lambda!474769))))

(assert (=> bs!1973327 (= (= lt!2731392 lt!2731393) (= lambda!474810 lambda!474770))))

(assert (=> b!8057891 true))

(declare-fun bs!1973329 () Bool)

(declare-fun b!8057889 () Bool)

(assert (= bs!1973329 (and b!8057889 b!8057761)))

(declare-fun lambda!474811 () Int)

(assert (=> bs!1973329 (= (= lt!2731392 acc!836) (= lambda!474811 lambda!474768))))

(declare-fun bs!1973330 () Bool)

(assert (= bs!1973330 (and b!8057889 b!8057759)))

(assert (=> bs!1973330 (= (= lt!2731392 lt!2731393) (= lambda!474811 lambda!474769))))

(assert (=> bs!1973329 (= (= lt!2731392 lt!2731393) (= lambda!474811 lambda!474770))))

(declare-fun bs!1973331 () Bool)

(assert (= bs!1973331 (and b!8057889 b!8057891)))

(assert (=> bs!1973331 (= lambda!474811 lambda!474810)))

(assert (=> b!8057889 true))

(declare-fun lambda!474812 () Int)

(declare-fun lt!2731535 () ListMap!7369)

(assert (=> bs!1973330 (= (= lt!2731535 lt!2731393) (= lambda!474812 lambda!474769))))

(assert (=> b!8057889 (= (= lt!2731535 lt!2731392) (= lambda!474812 lambda!474811))))

(assert (=> bs!1973329 (= (= lt!2731535 acc!836) (= lambda!474812 lambda!474768))))

(assert (=> bs!1973331 (= (= lt!2731535 lt!2731392) (= lambda!474812 lambda!474810))))

(assert (=> bs!1973329 (= (= lt!2731535 lt!2731393) (= lambda!474812 lambda!474770))))

(assert (=> b!8057889 true))

(declare-fun bs!1973332 () Bool)

(declare-fun d!2398985 () Bool)

(assert (= bs!1973332 (and d!2398985 b!8057889)))

(declare-fun lt!2731534 () ListMap!7369)

(declare-fun lambda!474813 () Int)

(assert (=> bs!1973332 (= (= lt!2731534 lt!2731535) (= lambda!474813 lambda!474812))))

(declare-fun bs!1973333 () Bool)

(assert (= bs!1973333 (and d!2398985 b!8057759)))

(assert (=> bs!1973333 (= (= lt!2731534 lt!2731393) (= lambda!474813 lambda!474769))))

(assert (=> bs!1973332 (= (= lt!2731534 lt!2731392) (= lambda!474813 lambda!474811))))

(declare-fun bs!1973334 () Bool)

(assert (= bs!1973334 (and d!2398985 b!8057761)))

(assert (=> bs!1973334 (= (= lt!2731534 acc!836) (= lambda!474813 lambda!474768))))

(declare-fun bs!1973335 () Bool)

(assert (= bs!1973335 (and d!2398985 b!8057891)))

(assert (=> bs!1973335 (= (= lt!2731534 lt!2731392) (= lambda!474813 lambda!474810))))

(assert (=> bs!1973334 (= (= lt!2731534 lt!2731393) (= lambda!474813 lambda!474770))))

(assert (=> d!2398985 true))

(declare-fun b!8057888 () Bool)

(declare-fun res!3187608 () Bool)

(declare-fun e!4748607 () Bool)

(assert (=> b!8057888 (=> (not res!3187608) (not e!4748607))))

(assert (=> b!8057888 (= res!3187608 (forall!18539 (toList!11959 lt!2731392) lambda!474813))))

(declare-fun bm!747597 () Bool)

(declare-fun call!747602 () Bool)

(declare-fun c!1476716 () Bool)

(assert (=> bm!747597 (= call!747602 (forall!18539 (ite c!1476716 (toList!11959 lt!2731392) (t!391519 (t!391519 l!10976))) (ite c!1476716 lambda!474810 lambda!474812)))))

(declare-fun bm!747598 () Bool)

(declare-fun call!747603 () Unit!172621)

(assert (=> bm!747598 (= call!747603 (lemmaContainsAllItsOwnKeys!1120 lt!2731392))))

(declare-fun bm!747599 () Bool)

(declare-fun call!747604 () Bool)

(assert (=> bm!747599 (= call!747604 (forall!18539 (ite c!1476716 (toList!11959 lt!2731392) (t!391519 l!10976)) (ite c!1476716 lambda!474810 lambda!474812)))))

(assert (=> d!2398985 e!4748607))

(declare-fun res!3187606 () Bool)

(assert (=> d!2398985 (=> (not res!3187606) (not e!4748607))))

(assert (=> d!2398985 (= res!3187606 (forall!18539 (t!391519 l!10976) lambda!474813))))

(declare-fun e!4748608 () ListMap!7369)

(assert (=> d!2398985 (= lt!2731534 e!4748608)))

(assert (=> d!2398985 (= c!1476716 (is-Nil!75621 (t!391519 l!10976)))))

(assert (=> d!2398985 (noDuplicateKeys!2745 (t!391519 l!10976))))

(assert (=> d!2398985 (= (addToMapMapFromBucket!2020 (t!391519 l!10976) lt!2731392) lt!2731534)))

(assert (=> b!8057889 (= e!4748608 lt!2731535)))

(declare-fun lt!2731542 () ListMap!7369)

(assert (=> b!8057889 (= lt!2731542 (+!2706 lt!2731392 (h!82069 (t!391519 l!10976))))))

(assert (=> b!8057889 (= lt!2731535 (addToMapMapFromBucket!2020 (t!391519 (t!391519 l!10976)) (+!2706 lt!2731392 (h!82069 (t!391519 l!10976)))))))

(declare-fun lt!2731545 () Unit!172621)

(assert (=> b!8057889 (= lt!2731545 call!747603)))

(assert (=> b!8057889 (forall!18539 (toList!11959 lt!2731392) lambda!474811)))

(declare-fun lt!2731540 () Unit!172621)

(assert (=> b!8057889 (= lt!2731540 lt!2731545)))

(assert (=> b!8057889 (forall!18539 (toList!11959 lt!2731542) lambda!474812)))

(declare-fun lt!2731539 () Unit!172621)

(declare-fun Unit!172627 () Unit!172621)

(assert (=> b!8057889 (= lt!2731539 Unit!172627)))

(assert (=> b!8057889 call!747602))

(declare-fun lt!2731541 () Unit!172621)

(declare-fun Unit!172628 () Unit!172621)

(assert (=> b!8057889 (= lt!2731541 Unit!172628)))

(declare-fun lt!2731543 () Unit!172621)

(declare-fun Unit!172629 () Unit!172621)

(assert (=> b!8057889 (= lt!2731543 Unit!172629)))

(declare-fun lt!2731546 () Unit!172621)

(assert (=> b!8057889 (= lt!2731546 (forallContained!4684 (toList!11959 lt!2731542) lambda!474812 (h!82069 (t!391519 l!10976))))))

(assert (=> b!8057889 (contains!21291 lt!2731542 (_1!38802 (h!82069 (t!391519 l!10976))))))

(declare-fun lt!2731530 () Unit!172621)

(declare-fun Unit!172630 () Unit!172621)

(assert (=> b!8057889 (= lt!2731530 Unit!172630)))

(assert (=> b!8057889 (contains!21291 lt!2731535 (_1!38802 (h!82069 (t!391519 l!10976))))))

(declare-fun lt!2731544 () Unit!172621)

(declare-fun Unit!172631 () Unit!172621)

(assert (=> b!8057889 (= lt!2731544 Unit!172631)))

(assert (=> b!8057889 (forall!18539 (t!391519 l!10976) lambda!474812)))

(declare-fun lt!2731533 () Unit!172621)

(declare-fun Unit!172632 () Unit!172621)

(assert (=> b!8057889 (= lt!2731533 Unit!172632)))

(assert (=> b!8057889 (forall!18539 (toList!11959 lt!2731542) lambda!474812)))

(declare-fun lt!2731538 () Unit!172621)

(declare-fun Unit!172633 () Unit!172621)

(assert (=> b!8057889 (= lt!2731538 Unit!172633)))

(declare-fun lt!2731532 () Unit!172621)

(declare-fun Unit!172634 () Unit!172621)

(assert (=> b!8057889 (= lt!2731532 Unit!172634)))

(declare-fun lt!2731536 () Unit!172621)

(declare-fun addForallContainsKeyThenBeforeAdding!1107 (ListMap!7369 ListMap!7369 K!22951 V!23205) Unit!172621)

(assert (=> b!8057889 (= lt!2731536 (addForallContainsKeyThenBeforeAdding!1107 lt!2731392 lt!2731535 (_1!38802 (h!82069 (t!391519 l!10976))) (_2!38802 (h!82069 (t!391519 l!10976)))))))

(assert (=> b!8057889 (forall!18539 (toList!11959 lt!2731392) lambda!474812)))

(declare-fun lt!2731537 () Unit!172621)

(assert (=> b!8057889 (= lt!2731537 lt!2731536)))

(assert (=> b!8057889 (forall!18539 (toList!11959 lt!2731392) lambda!474812)))

(declare-fun lt!2731527 () Unit!172621)

(declare-fun Unit!172635 () Unit!172621)

(assert (=> b!8057889 (= lt!2731527 Unit!172635)))

(declare-fun res!3187607 () Bool)

(assert (=> b!8057889 (= res!3187607 call!747604)))

(declare-fun e!4748609 () Bool)

(assert (=> b!8057889 (=> (not res!3187607) (not e!4748609))))

(assert (=> b!8057889 e!4748609))

(declare-fun lt!2731528 () Unit!172621)

(declare-fun Unit!172636 () Unit!172621)

(assert (=> b!8057889 (= lt!2731528 Unit!172636)))

(declare-fun b!8057890 () Bool)

(declare-fun invariantList!1961 (List!75747) Bool)

(assert (=> b!8057890 (= e!4748607 (invariantList!1961 (toList!11959 lt!2731534)))))

(assert (=> b!8057891 (= e!4748608 lt!2731392)))

(declare-fun lt!2731531 () Unit!172621)

(assert (=> b!8057891 (= lt!2731531 call!747603)))

(assert (=> b!8057891 call!747602))

(declare-fun lt!2731547 () Unit!172621)

(assert (=> b!8057891 (= lt!2731547 lt!2731531)))

(assert (=> b!8057891 call!747604))

(declare-fun lt!2731529 () Unit!172621)

(declare-fun Unit!172637 () Unit!172621)

(assert (=> b!8057891 (= lt!2731529 Unit!172637)))

(declare-fun b!8057892 () Bool)

(assert (=> b!8057892 (= e!4748609 (forall!18539 (toList!11959 lt!2731392) lambda!474812))))

(assert (= (and d!2398985 c!1476716) b!8057891))

(assert (= (and d!2398985 (not c!1476716)) b!8057889))

(assert (= (and b!8057889 res!3187607) b!8057892))

(assert (= (or b!8057891 b!8057889) bm!747597))

(assert (= (or b!8057891 b!8057889) bm!747599))

(assert (= (or b!8057891 b!8057889) bm!747598))

(assert (= (and d!2398985 res!3187606) b!8057888))

(assert (= (and b!8057888 res!3187608) b!8057890))

(declare-fun m!8411024 () Bool)

(assert (=> b!8057889 m!8411024))

(declare-fun m!8411026 () Bool)

(assert (=> b!8057889 m!8411026))

(declare-fun m!8411028 () Bool)

(assert (=> b!8057889 m!8411028))

(declare-fun m!8411030 () Bool)

(assert (=> b!8057889 m!8411030))

(declare-fun m!8411032 () Bool)

(assert (=> b!8057889 m!8411032))

(declare-fun m!8411034 () Bool)

(assert (=> b!8057889 m!8411034))

(declare-fun m!8411036 () Bool)

(assert (=> b!8057889 m!8411036))

(declare-fun m!8411038 () Bool)

(assert (=> b!8057889 m!8411038))

(declare-fun m!8411040 () Bool)

(assert (=> b!8057889 m!8411040))

(assert (=> b!8057889 m!8411024))

(assert (=> b!8057889 m!8411036))

(declare-fun m!8411042 () Bool)

(assert (=> b!8057889 m!8411042))

(assert (=> b!8057889 m!8411042))

(declare-fun m!8411044 () Bool)

(assert (=> bm!747597 m!8411044))

(declare-fun m!8411046 () Bool)

(assert (=> b!8057888 m!8411046))

(declare-fun m!8411048 () Bool)

(assert (=> d!2398985 m!8411048))

(declare-fun m!8411050 () Bool)

(assert (=> d!2398985 m!8411050))

(assert (=> b!8057892 m!8411042))

(declare-fun m!8411052 () Bool)

(assert (=> bm!747598 m!8411052))

(declare-fun m!8411054 () Bool)

(assert (=> bm!747599 m!8411054))

(declare-fun m!8411056 () Bool)

(assert (=> b!8057890 m!8411056))

(assert (=> b!8057761 d!2398985))

(declare-fun bs!1973336 () Bool)

(declare-fun d!2398991 () Bool)

(assert (= bs!1973336 (and d!2398991 d!2398985)))

(declare-fun lambda!474816 () Int)

(assert (=> bs!1973336 (= (= acc!836 lt!2731534) (= lambda!474816 lambda!474813))))

(declare-fun bs!1973337 () Bool)

(assert (= bs!1973337 (and d!2398991 b!8057889)))

(assert (=> bs!1973337 (= (= acc!836 lt!2731535) (= lambda!474816 lambda!474812))))

(declare-fun bs!1973338 () Bool)

(assert (= bs!1973338 (and d!2398991 b!8057759)))

(assert (=> bs!1973338 (= (= acc!836 lt!2731393) (= lambda!474816 lambda!474769))))

(assert (=> bs!1973337 (= (= acc!836 lt!2731392) (= lambda!474816 lambda!474811))))

(declare-fun bs!1973339 () Bool)

(assert (= bs!1973339 (and d!2398991 b!8057761)))

(assert (=> bs!1973339 (= lambda!474816 lambda!474768)))

(declare-fun bs!1973340 () Bool)

(assert (= bs!1973340 (and d!2398991 b!8057891)))

(assert (=> bs!1973340 (= (= acc!836 lt!2731392) (= lambda!474816 lambda!474810))))

(assert (=> bs!1973339 (= (= acc!836 lt!2731393) (= lambda!474816 lambda!474770))))

(assert (=> d!2398991 true))

(assert (=> d!2398991 (forall!18539 (toList!11959 acc!836) lambda!474816)))

(declare-fun lt!2731550 () Unit!172621)

(declare-fun choose!60570 (ListMap!7369) Unit!172621)

(assert (=> d!2398991 (= lt!2731550 (choose!60570 acc!836))))

(assert (=> d!2398991 (= (lemmaContainsAllItsOwnKeys!1120 acc!836) lt!2731550)))

(declare-fun bs!1973341 () Bool)

(assert (= bs!1973341 d!2398991))

(declare-fun m!8411058 () Bool)

(assert (=> bs!1973341 m!8411058))

(declare-fun m!8411060 () Bool)

(assert (=> bs!1973341 m!8411060))

(assert (=> b!8057761 d!2398991))

(declare-fun d!2398993 () Bool)

(declare-fun res!3187609 () Bool)

(declare-fun e!4748610 () Bool)

(assert (=> d!2398993 (=> res!3187609 e!4748610)))

(assert (=> d!2398993 (= res!3187609 (is-Nil!75621 (toList!11959 lt!2731392)))))

(assert (=> d!2398993 (= (forall!18539 (toList!11959 lt!2731392) lambda!474769) e!4748610)))

(declare-fun b!8057893 () Bool)

(declare-fun e!4748611 () Bool)

(assert (=> b!8057893 (= e!4748610 e!4748611)))

(declare-fun res!3187610 () Bool)

(assert (=> b!8057893 (=> (not res!3187610) (not e!4748611))))

(assert (=> b!8057893 (= res!3187610 (dynLambda!30277 lambda!474769 (h!82069 (toList!11959 lt!2731392))))))

(declare-fun b!8057894 () Bool)

(assert (=> b!8057894 (= e!4748611 (forall!18539 (t!391519 (toList!11959 lt!2731392)) lambda!474769))))

(assert (= (and d!2398993 (not res!3187609)) b!8057893))

(assert (= (and b!8057893 res!3187610) b!8057894))

(declare-fun b_lambda!290591 () Bool)

(assert (=> (not b_lambda!290591) (not b!8057893)))

(declare-fun m!8411062 () Bool)

(assert (=> b!8057893 m!8411062))

(declare-fun m!8411064 () Bool)

(assert (=> b!8057894 m!8411064))

(assert (=> b!8057759 d!2398993))

(declare-fun d!2398995 () Bool)

(declare-fun res!3187611 () Bool)

(declare-fun e!4748612 () Bool)

(assert (=> d!2398995 (=> res!3187611 e!4748612)))

(assert (=> d!2398995 (= res!3187611 (is-Nil!75621 (t!391519 l!10976)))))

(assert (=> d!2398995 (= (forall!18539 (t!391519 l!10976) lambda!474769) e!4748612)))

(declare-fun b!8057895 () Bool)

(declare-fun e!4748613 () Bool)

(assert (=> b!8057895 (= e!4748612 e!4748613)))

(declare-fun res!3187612 () Bool)

(assert (=> b!8057895 (=> (not res!3187612) (not e!4748613))))

(assert (=> b!8057895 (= res!3187612 (dynLambda!30277 lambda!474769 (h!82069 (t!391519 l!10976))))))

(declare-fun b!8057896 () Bool)

(assert (=> b!8057896 (= e!4748613 (forall!18539 (t!391519 (t!391519 l!10976)) lambda!474769))))

(assert (= (and d!2398995 (not res!3187611)) b!8057895))

(assert (= (and b!8057895 res!3187612) b!8057896))

(declare-fun b_lambda!290593 () Bool)

(assert (=> (not b_lambda!290593) (not b!8057895)))

(declare-fun m!8411066 () Bool)

(assert (=> b!8057895 m!8411066))

(declare-fun m!8411068 () Bool)

(assert (=> b!8057896 m!8411068))

(assert (=> b!8057762 d!2398995))

(declare-fun d!2398997 () Bool)

(declare-fun res!3187617 () Bool)

(declare-fun e!4748618 () Bool)

(assert (=> d!2398997 (=> res!3187617 e!4748618)))

(assert (=> d!2398997 (= res!3187617 (not (is-Cons!75621 l!10976)))))

(assert (=> d!2398997 (= (noDuplicateKeys!2745 l!10976) e!4748618)))

(declare-fun b!8057901 () Bool)

(declare-fun e!4748619 () Bool)

(assert (=> b!8057901 (= e!4748618 e!4748619)))

(declare-fun res!3187618 () Bool)

(assert (=> b!8057901 (=> (not res!3187618) (not e!4748619))))

(declare-fun containsKey!4920 (List!75747 K!22951) Bool)

(assert (=> b!8057901 (= res!3187618 (not (containsKey!4920 (t!391519 l!10976) (_1!38802 (h!82069 l!10976)))))))

(declare-fun b!8057902 () Bool)

(assert (=> b!8057902 (= e!4748619 (noDuplicateKeys!2745 (t!391519 l!10976)))))

(assert (= (and d!2398997 (not res!3187617)) b!8057901))

(assert (= (and b!8057901 res!3187618) b!8057902))

(declare-fun m!8411070 () Bool)

(assert (=> b!8057901 m!8411070))

(assert (=> b!8057902 m!8411050))

(assert (=> start!759210 d!2398997))

(declare-fun d!2398999 () Bool)

(assert (=> d!2398999 (= (inv!97425 acc!836) (invariantList!1961 (toList!11959 acc!836)))))

(declare-fun bs!1973342 () Bool)

(assert (= bs!1973342 d!2398999))

(declare-fun m!8411072 () Bool)

(assert (=> bs!1973342 m!8411072))

(assert (=> start!759210 d!2398999))

(declare-fun b!8057907 () Bool)

(declare-fun e!4748622 () Bool)

(declare-fun tp!2414192 () Bool)

(assert (=> b!8057907 (= e!4748622 (and tp_is_empty!55119 tp_is_empty!55121 tp!2414192))))

(assert (=> b!8057760 (= tp!2414182 e!4748622)))

(assert (= (and b!8057760 (is-Cons!75621 (toList!11959 acc!836))) b!8057907))

(declare-fun tp!2414193 () Bool)

(declare-fun b!8057908 () Bool)

(declare-fun e!4748623 () Bool)

(assert (=> b!8057908 (= e!4748623 (and tp_is_empty!55119 tp_is_empty!55121 tp!2414193))))

(assert (=> b!8057764 (= tp!2414183 e!4748623)))

(assert (= (and b!8057764 (is-Cons!75621 (t!391519 l!10976))) b!8057908))

(declare-fun b_lambda!290595 () Bool)

(assert (= b_lambda!290589 (or b!8057761 b_lambda!290595)))

(declare-fun bs!1973343 () Bool)

(declare-fun d!2399001 () Bool)

(assert (= bs!1973343 (and d!2399001 b!8057761)))

(assert (=> bs!1973343 (= (dynLambda!30277 lambda!474770 (h!82069 l!10976)) (contains!21291 lt!2731393 (_1!38802 (h!82069 l!10976))))))

(declare-fun m!8411074 () Bool)

(assert (=> bs!1973343 m!8411074))

(assert (=> d!2398983 d!2399001))

(declare-fun b_lambda!290597 () Bool)

(assert (= b_lambda!290579 (or b!8057761 b_lambda!290597)))

(declare-fun bs!1973344 () Bool)

(declare-fun d!2399003 () Bool)

(assert (= bs!1973344 (and d!2399003 b!8057761)))

(assert (=> bs!1973344 (= (dynLambda!30277 lambda!474768 (h!82069 (toList!11959 acc!836))) (contains!21291 acc!836 (_1!38802 (h!82069 (toList!11959 acc!836)))))))

(declare-fun m!8411076 () Bool)

(assert (=> bs!1973344 m!8411076))

(assert (=> b!8057794 d!2399003))

(declare-fun b_lambda!290599 () Bool)

(assert (= b_lambda!290591 (or b!8057759 b_lambda!290599)))

(declare-fun bs!1973345 () Bool)

(declare-fun d!2399005 () Bool)

(assert (= bs!1973345 (and d!2399005 b!8057759)))

(assert (=> bs!1973345 (= (dynLambda!30277 lambda!474769 (h!82069 (toList!11959 lt!2731392))) (contains!21291 lt!2731393 (_1!38802 (h!82069 (toList!11959 lt!2731392)))))))

(declare-fun m!8411078 () Bool)

(assert (=> bs!1973345 m!8411078))

(assert (=> b!8057893 d!2399005))

(declare-fun b_lambda!290601 () Bool)

(assert (= b_lambda!290593 (or b!8057759 b_lambda!290601)))

(declare-fun bs!1973346 () Bool)

(declare-fun d!2399007 () Bool)

(assert (= bs!1973346 (and d!2399007 b!8057759)))

(assert (=> bs!1973346 (= (dynLambda!30277 lambda!474769 (h!82069 (t!391519 l!10976))) (contains!21291 lt!2731393 (_1!38802 (h!82069 (t!391519 l!10976)))))))

(declare-fun m!8411080 () Bool)

(assert (=> bs!1973346 m!8411080))

(assert (=> b!8057895 d!2399007))

(push 1)

(assert (not b!8057908))

(assert (not b!8057837))

(assert (not b!8057835))

(assert (not d!2398971))

(assert (not b!8057800))

(assert (not b!8057833))

(assert (not b!8057844))

(assert (not bm!747597))

(assert (not b!8057901))

(assert (not b!8057894))

(assert (not d!2398985))

(assert (not b!8057896))

(assert (not b!8057907))

(assert (not d!2398999))

(assert (not b!8057888))

(assert (not b!8057836))

(assert (not d!2398991))

(assert (not bs!1973346))

(assert (not bs!1973343))

(assert (not b_lambda!290601))

(assert (not b!8057902))

(assert (not b!8057889))

(assert (not b!8057890))

(assert (not b!8057795))

(assert (not b!8057801))

(assert (not bm!747587))

(assert (not bm!747599))

(assert (not bs!1973345))

(assert (not b_lambda!290599))

(assert tp_is_empty!55121)

(assert (not d!2398983))

(assert (not bs!1973344))

(assert (not b!8057838))

(assert (not b!8057840))

(assert (not d!2398969))

(assert (not b_lambda!290597))

(assert (not bm!747598))

(assert (not b!8057892))

(assert (not b_lambda!290595))

(assert (not b!8057839))

(assert tp_is_empty!55119)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

