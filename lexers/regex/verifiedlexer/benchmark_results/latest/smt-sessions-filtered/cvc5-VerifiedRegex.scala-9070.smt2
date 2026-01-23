; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!486382 () Bool)

(assert start!486382)

(declare-fun b!4756544 () Bool)

(declare-fun res!2017992 () Bool)

(declare-fun e!2967354 () Bool)

(assert (=> b!4756544 (=> (not res!2017992) (not e!2967354))))

(declare-fun hash!423 () (_ BitVec 64))

(declare-datatypes ((K!14753 0))(
  ( (K!14754 (val!20073 Int)) )
))
(declare-datatypes ((V!14999 0))(
  ( (V!15000 (val!20074 Int)) )
))
(declare-datatypes ((tuple2!55054 0))(
  ( (tuple2!55055 (_1!30821 K!14753) (_2!30821 V!14999)) )
))
(declare-datatypes ((List!53311 0))(
  ( (Nil!53187) (Cons!53187 (h!59596 tuple2!55054) (t!360655 List!53311)) )
))
(declare-fun l!13802 () List!53311)

(declare-datatypes ((Hashable!6467 0))(
  ( (HashableExt!6466 (__x!32170 Int)) )
))
(declare-fun hashF!1449 () Hashable!6467)

(declare-fun allKeysSameHash!1924 (List!53311 (_ BitVec 64) Hashable!6467) Bool)

(assert (=> b!4756544 (= res!2017992 (allKeysSameHash!1924 l!13802 hash!423 hashF!1449))))

(declare-fun b!4756546 () Bool)

(declare-fun key!5233 () K!14753)

(declare-fun removePairForKey!1680 (List!53311 K!14753) List!53311)

(assert (=> b!4756546 (= e!2967354 (not (allKeysSameHash!1924 (removePairForKey!1680 l!13802 key!5233) hash!423 hashF!1449)))))

(declare-datatypes ((Unit!137708 0))(
  ( (Unit!137709) )
))
(declare-fun lt!1923017 () Unit!137708)

(declare-fun lemmaRemovePairForKeyPreservesHash!249 (List!53311 K!14753 (_ BitVec 64) Hashable!6467) Unit!137708)

(assert (=> b!4756546 (= lt!1923017 (lemmaRemovePairForKeyPreservesHash!249 (t!360655 l!13802) key!5233 hash!423 hashF!1449))))

(declare-fun b!4756545 () Bool)

(declare-fun res!2017993 () Bool)

(assert (=> b!4756545 (=> (not res!2017993) (not e!2967354))))

(assert (=> b!4756545 (= res!2017993 (not (is-Nil!53187 l!13802)))))

(declare-fun tp_is_empty!32257 () Bool)

(declare-fun b!4756547 () Bool)

(declare-fun tp!1351042 () Bool)

(declare-fun tp_is_empty!32259 () Bool)

(declare-fun e!2967353 () Bool)

(assert (=> b!4756547 (= e!2967353 (and tp_is_empty!32257 tp_is_empty!32259 tp!1351042))))

(declare-fun res!2017994 () Bool)

(assert (=> start!486382 (=> (not res!2017994) (not e!2967354))))

(declare-fun noDuplicateKeys!2235 (List!53311) Bool)

(assert (=> start!486382 (= res!2017994 (noDuplicateKeys!2235 l!13802))))

(assert (=> start!486382 e!2967354))

(assert (=> start!486382 e!2967353))

(assert (=> start!486382 true))

(assert (=> start!486382 tp_is_empty!32257))

(assert (= (and start!486382 res!2017994) b!4756544))

(assert (= (and b!4756544 res!2017992) b!4756545))

(assert (= (and b!4756545 res!2017993) b!4756546))

(assert (= (and start!486382 (is-Cons!53187 l!13802)) b!4756547))

(declare-fun m!5726495 () Bool)

(assert (=> b!4756544 m!5726495))

(declare-fun m!5726497 () Bool)

(assert (=> b!4756546 m!5726497))

(assert (=> b!4756546 m!5726497))

(declare-fun m!5726499 () Bool)

(assert (=> b!4756546 m!5726499))

(declare-fun m!5726501 () Bool)

(assert (=> b!4756546 m!5726501))

(declare-fun m!5726503 () Bool)

(assert (=> start!486382 m!5726503))

(push 1)

(assert (not b!4756546))

(assert tp_is_empty!32257)

(assert (not b!4756547))

(assert (not b!4756544))

(assert (not start!486382))

(assert tp_is_empty!32259)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1520913 () Bool)

(declare-fun res!2018008 () Bool)

(declare-fun e!2967365 () Bool)

(assert (=> d!1520913 (=> res!2018008 e!2967365)))

(assert (=> d!1520913 (= res!2018008 (not (is-Cons!53187 l!13802)))))

(assert (=> d!1520913 (= (noDuplicateKeys!2235 l!13802) e!2967365)))

(declare-fun b!4756564 () Bool)

(declare-fun e!2967366 () Bool)

(assert (=> b!4756564 (= e!2967365 e!2967366)))

(declare-fun res!2018009 () Bool)

(assert (=> b!4756564 (=> (not res!2018009) (not e!2967366))))

(declare-fun containsKey!3619 (List!53311 K!14753) Bool)

(assert (=> b!4756564 (= res!2018009 (not (containsKey!3619 (t!360655 l!13802) (_1!30821 (h!59596 l!13802)))))))

(declare-fun b!4756565 () Bool)

(assert (=> b!4756565 (= e!2967366 (noDuplicateKeys!2235 (t!360655 l!13802)))))

(assert (= (and d!1520913 (not res!2018008)) b!4756564))

(assert (= (and b!4756564 res!2018009) b!4756565))

(declare-fun m!5726515 () Bool)

(assert (=> b!4756564 m!5726515))

(declare-fun m!5726517 () Bool)

(assert (=> b!4756565 m!5726517))

(assert (=> start!486382 d!1520913))

(declare-fun d!1520915 () Bool)

(assert (=> d!1520915 true))

(assert (=> d!1520915 true))

(declare-fun lambda!223532 () Int)

(declare-fun forall!11804 (List!53311 Int) Bool)

(assert (=> d!1520915 (= (allKeysSameHash!1924 (removePairForKey!1680 l!13802 key!5233) hash!423 hashF!1449) (forall!11804 (removePairForKey!1680 l!13802 key!5233) lambda!223532))))

(declare-fun bs!1146934 () Bool)

(assert (= bs!1146934 d!1520915))

(assert (=> bs!1146934 m!5726497))

(declare-fun m!5726523 () Bool)

(assert (=> bs!1146934 m!5726523))

(assert (=> b!4756546 d!1520915))

(declare-fun b!4756587 () Bool)

(declare-fun e!2967378 () List!53311)

(assert (=> b!4756587 (= e!2967378 Nil!53187)))

(declare-fun b!4756586 () Bool)

(assert (=> b!4756586 (= e!2967378 (Cons!53187 (h!59596 l!13802) (removePairForKey!1680 (t!360655 l!13802) key!5233)))))

(declare-fun d!1520921 () Bool)

(declare-fun lt!1923023 () List!53311)

(assert (=> d!1520921 (not (containsKey!3619 lt!1923023 key!5233))))

(declare-fun e!2967377 () List!53311)

(assert (=> d!1520921 (= lt!1923023 e!2967377)))

(declare-fun c!811719 () Bool)

(assert (=> d!1520921 (= c!811719 (and (is-Cons!53187 l!13802) (= (_1!30821 (h!59596 l!13802)) key!5233)))))

(assert (=> d!1520921 (noDuplicateKeys!2235 l!13802)))

(assert (=> d!1520921 (= (removePairForKey!1680 l!13802 key!5233) lt!1923023)))

(declare-fun b!4756584 () Bool)

(assert (=> b!4756584 (= e!2967377 (t!360655 l!13802))))

(declare-fun b!4756585 () Bool)

(assert (=> b!4756585 (= e!2967377 e!2967378)))

(declare-fun c!811718 () Bool)

(assert (=> b!4756585 (= c!811718 (is-Cons!53187 l!13802))))

(assert (= (and d!1520921 c!811719) b!4756584))

(assert (= (and d!1520921 (not c!811719)) b!4756585))

(assert (= (and b!4756585 c!811718) b!4756586))

(assert (= (and b!4756585 (not c!811718)) b!4756587))

(declare-fun m!5726525 () Bool)

(assert (=> b!4756586 m!5726525))

(declare-fun m!5726527 () Bool)

(assert (=> d!1520921 m!5726527))

(assert (=> d!1520921 m!5726503))

(assert (=> b!4756546 d!1520921))

(declare-fun d!1520923 () Bool)

(assert (=> d!1520923 (allKeysSameHash!1924 (removePairForKey!1680 (t!360655 l!13802) key!5233) hash!423 hashF!1449)))

(declare-fun lt!1923026 () Unit!137708)

(declare-fun choose!33894 (List!53311 K!14753 (_ BitVec 64) Hashable!6467) Unit!137708)

(assert (=> d!1520923 (= lt!1923026 (choose!33894 (t!360655 l!13802) key!5233 hash!423 hashF!1449))))

(assert (=> d!1520923 (noDuplicateKeys!2235 (t!360655 l!13802))))

(assert (=> d!1520923 (= (lemmaRemovePairForKeyPreservesHash!249 (t!360655 l!13802) key!5233 hash!423 hashF!1449) lt!1923026)))

(declare-fun bs!1146935 () Bool)

(assert (= bs!1146935 d!1520923))

(assert (=> bs!1146935 m!5726525))

(assert (=> bs!1146935 m!5726525))

(declare-fun m!5726529 () Bool)

(assert (=> bs!1146935 m!5726529))

(declare-fun m!5726531 () Bool)

(assert (=> bs!1146935 m!5726531))

(assert (=> bs!1146935 m!5726517))

(assert (=> b!4756546 d!1520923))

(declare-fun bs!1146936 () Bool)

(declare-fun d!1520925 () Bool)

(assert (= bs!1146936 (and d!1520925 d!1520915)))

(declare-fun lambda!223533 () Int)

(assert (=> bs!1146936 (= lambda!223533 lambda!223532)))

(assert (=> d!1520925 true))

(assert (=> d!1520925 true))

(assert (=> d!1520925 (= (allKeysSameHash!1924 l!13802 hash!423 hashF!1449) (forall!11804 l!13802 lambda!223533))))

(declare-fun bs!1146937 () Bool)

(assert (= bs!1146937 d!1520925))

(declare-fun m!5726533 () Bool)

(assert (=> bs!1146937 m!5726533))

(assert (=> b!4756544 d!1520925))

(declare-fun e!2967381 () Bool)

(declare-fun tp!1351048 () Bool)

(declare-fun b!4756592 () Bool)

(assert (=> b!4756592 (= e!2967381 (and tp_is_empty!32257 tp_is_empty!32259 tp!1351048))))

(assert (=> b!4756547 (= tp!1351042 e!2967381)))

(assert (= (and b!4756547 (is-Cons!53187 (t!360655 l!13802))) b!4756592))

(push 1)

(assert (not b!4756592))

(assert (not b!4756565))

(assert tp_is_empty!32257)

(assert (not b!4756564))

(assert tp_is_empty!32259)

(assert (not d!1520923))

(assert (not b!4756586))

(assert (not d!1520925))

(assert (not d!1520921))

(assert (not d!1520915))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4756596 () Bool)

(declare-fun e!2967383 () List!53311)

(assert (=> b!4756596 (= e!2967383 Nil!53187)))

(declare-fun b!4756595 () Bool)

(assert (=> b!4756595 (= e!2967383 (Cons!53187 (h!59596 (t!360655 l!13802)) (removePairForKey!1680 (t!360655 (t!360655 l!13802)) key!5233)))))

(declare-fun d!1520927 () Bool)

(declare-fun lt!1923027 () List!53311)

(assert (=> d!1520927 (not (containsKey!3619 lt!1923027 key!5233))))

(declare-fun e!2967382 () List!53311)

(assert (=> d!1520927 (= lt!1923027 e!2967382)))

(declare-fun c!811721 () Bool)

(assert (=> d!1520927 (= c!811721 (and (is-Cons!53187 (t!360655 l!13802)) (= (_1!30821 (h!59596 (t!360655 l!13802))) key!5233)))))

(assert (=> d!1520927 (noDuplicateKeys!2235 (t!360655 l!13802))))

(assert (=> d!1520927 (= (removePairForKey!1680 (t!360655 l!13802) key!5233) lt!1923027)))

(declare-fun b!4756593 () Bool)

(assert (=> b!4756593 (= e!2967382 (t!360655 (t!360655 l!13802)))))

(declare-fun b!4756594 () Bool)

(assert (=> b!4756594 (= e!2967382 e!2967383)))

(declare-fun c!811720 () Bool)

(assert (=> b!4756594 (= c!811720 (is-Cons!53187 (t!360655 l!13802)))))

(assert (= (and d!1520927 c!811721) b!4756593))

(assert (= (and d!1520927 (not c!811721)) b!4756594))

(assert (= (and b!4756594 c!811720) b!4756595))

(assert (= (and b!4756594 (not c!811720)) b!4756596))

(declare-fun m!5726535 () Bool)

(assert (=> b!4756595 m!5726535))

(declare-fun m!5726537 () Bool)

(assert (=> d!1520927 m!5726537))

(assert (=> d!1520927 m!5726517))

(assert (=> b!4756586 d!1520927))

(declare-fun d!1520929 () Bool)

(declare-fun res!2018020 () Bool)

(declare-fun e!2967388 () Bool)

(assert (=> d!1520929 (=> res!2018020 e!2967388)))

(assert (=> d!1520929 (= res!2018020 (is-Nil!53187 (removePairForKey!1680 l!13802 key!5233)))))

(assert (=> d!1520929 (= (forall!11804 (removePairForKey!1680 l!13802 key!5233) lambda!223532) e!2967388)))

(declare-fun b!4756601 () Bool)

(declare-fun e!2967389 () Bool)

(assert (=> b!4756601 (= e!2967388 e!2967389)))

(declare-fun res!2018021 () Bool)

(assert (=> b!4756601 (=> (not res!2018021) (not e!2967389))))

(declare-fun dynLambda!21907 (Int tuple2!55054) Bool)

(assert (=> b!4756601 (= res!2018021 (dynLambda!21907 lambda!223532 (h!59596 (removePairForKey!1680 l!13802 key!5233))))))

(declare-fun b!4756602 () Bool)

(assert (=> b!4756602 (= e!2967389 (forall!11804 (t!360655 (removePairForKey!1680 l!13802 key!5233)) lambda!223532))))

(assert (= (and d!1520929 (not res!2018020)) b!4756601))

(assert (= (and b!4756601 res!2018021) b!4756602))

(declare-fun b_lambda!183725 () Bool)

(assert (=> (not b_lambda!183725) (not b!4756601)))

(declare-fun m!5726539 () Bool)

(assert (=> b!4756601 m!5726539))

(declare-fun m!5726541 () Bool)

(assert (=> b!4756602 m!5726541))

(assert (=> d!1520915 d!1520929))

(declare-fun d!1520931 () Bool)

(declare-fun res!2018022 () Bool)

(declare-fun e!2967390 () Bool)

(assert (=> d!1520931 (=> res!2018022 e!2967390)))

(assert (=> d!1520931 (= res!2018022 (not (is-Cons!53187 (t!360655 l!13802))))))

(assert (=> d!1520931 (= (noDuplicateKeys!2235 (t!360655 l!13802)) e!2967390)))

(declare-fun b!4756603 () Bool)

(declare-fun e!2967391 () Bool)

(assert (=> b!4756603 (= e!2967390 e!2967391)))

(declare-fun res!2018023 () Bool)

(assert (=> b!4756603 (=> (not res!2018023) (not e!2967391))))

(assert (=> b!4756603 (= res!2018023 (not (containsKey!3619 (t!360655 (t!360655 l!13802)) (_1!30821 (h!59596 (t!360655 l!13802))))))))

(declare-fun b!4756604 () Bool)

(assert (=> b!4756604 (= e!2967391 (noDuplicateKeys!2235 (t!360655 (t!360655 l!13802))))))

(assert (= (and d!1520931 (not res!2018022)) b!4756603))

(assert (= (and b!4756603 res!2018023) b!4756604))

(declare-fun m!5726543 () Bool)

(assert (=> b!4756603 m!5726543))

(declare-fun m!5726545 () Bool)

(assert (=> b!4756604 m!5726545))

(assert (=> b!4756565 d!1520931))

(declare-fun d!1520933 () Bool)

(declare-fun res!2018024 () Bool)

(declare-fun e!2967392 () Bool)

(assert (=> d!1520933 (=> res!2018024 e!2967392)))

(assert (=> d!1520933 (= res!2018024 (is-Nil!53187 l!13802))))

(assert (=> d!1520933 (= (forall!11804 l!13802 lambda!223533) e!2967392)))

(declare-fun b!4756605 () Bool)

(declare-fun e!2967393 () Bool)

(assert (=> b!4756605 (= e!2967392 e!2967393)))

(declare-fun res!2018025 () Bool)

(assert (=> b!4756605 (=> (not res!2018025) (not e!2967393))))

(assert (=> b!4756605 (= res!2018025 (dynLambda!21907 lambda!223533 (h!59596 l!13802)))))

(declare-fun b!4756606 () Bool)

(assert (=> b!4756606 (= e!2967393 (forall!11804 (t!360655 l!13802) lambda!223533))))

(assert (= (and d!1520933 (not res!2018024)) b!4756605))

(assert (= (and b!4756605 res!2018025) b!4756606))

(declare-fun b_lambda!183727 () Bool)

(assert (=> (not b_lambda!183727) (not b!4756605)))

(declare-fun m!5726547 () Bool)

(assert (=> b!4756605 m!5726547))

(declare-fun m!5726549 () Bool)

(assert (=> b!4756606 m!5726549))

(assert (=> d!1520925 d!1520933))

(declare-fun bs!1146938 () Bool)

(declare-fun d!1520935 () Bool)

(assert (= bs!1146938 (and d!1520935 d!1520915)))

(declare-fun lambda!223534 () Int)

(assert (=> bs!1146938 (= lambda!223534 lambda!223532)))

(declare-fun bs!1146939 () Bool)

(assert (= bs!1146939 (and d!1520935 d!1520925)))

(assert (=> bs!1146939 (= lambda!223534 lambda!223533)))

(assert (=> d!1520935 true))

(assert (=> d!1520935 true))

(assert (=> d!1520935 (= (allKeysSameHash!1924 (removePairForKey!1680 (t!360655 l!13802) key!5233) hash!423 hashF!1449) (forall!11804 (removePairForKey!1680 (t!360655 l!13802) key!5233) lambda!223534))))

(declare-fun bs!1146940 () Bool)

(assert (= bs!1146940 d!1520935))

(assert (=> bs!1146940 m!5726525))

(declare-fun m!5726551 () Bool)

(assert (=> bs!1146940 m!5726551))

(assert (=> d!1520923 d!1520935))

(assert (=> d!1520923 d!1520927))

(declare-fun d!1520937 () Bool)

(assert (=> d!1520937 (allKeysSameHash!1924 (removePairForKey!1680 (t!360655 l!13802) key!5233) hash!423 hashF!1449)))

(assert (=> d!1520937 true))

(declare-fun _$20!137 () Unit!137708)

(assert (=> d!1520937 (= (choose!33894 (t!360655 l!13802) key!5233 hash!423 hashF!1449) _$20!137)))

(declare-fun bs!1146941 () Bool)

(assert (= bs!1146941 d!1520937))

(assert (=> bs!1146941 m!5726525))

(assert (=> bs!1146941 m!5726525))

(assert (=> bs!1146941 m!5726529))

(assert (=> d!1520923 d!1520937))

(assert (=> d!1520923 d!1520931))

(declare-fun d!1520939 () Bool)

(declare-fun res!2018030 () Bool)

(declare-fun e!2967398 () Bool)

(assert (=> d!1520939 (=> res!2018030 e!2967398)))

(assert (=> d!1520939 (= res!2018030 (and (is-Cons!53187 (t!360655 l!13802)) (= (_1!30821 (h!59596 (t!360655 l!13802))) (_1!30821 (h!59596 l!13802)))))))

(assert (=> d!1520939 (= (containsKey!3619 (t!360655 l!13802) (_1!30821 (h!59596 l!13802))) e!2967398)))

(declare-fun b!4756611 () Bool)

(declare-fun e!2967399 () Bool)

(assert (=> b!4756611 (= e!2967398 e!2967399)))

(declare-fun res!2018031 () Bool)

(assert (=> b!4756611 (=> (not res!2018031) (not e!2967399))))

(assert (=> b!4756611 (= res!2018031 (is-Cons!53187 (t!360655 l!13802)))))

(declare-fun b!4756612 () Bool)

(assert (=> b!4756612 (= e!2967399 (containsKey!3619 (t!360655 (t!360655 l!13802)) (_1!30821 (h!59596 l!13802))))))

(assert (= (and d!1520939 (not res!2018030)) b!4756611))

(assert (= (and b!4756611 res!2018031) b!4756612))

(declare-fun m!5726553 () Bool)

(assert (=> b!4756612 m!5726553))

(assert (=> b!4756564 d!1520939))

(declare-fun d!1520941 () Bool)

(declare-fun res!2018032 () Bool)

(declare-fun e!2967400 () Bool)

(assert (=> d!1520941 (=> res!2018032 e!2967400)))

(assert (=> d!1520941 (= res!2018032 (and (is-Cons!53187 lt!1923023) (= (_1!30821 (h!59596 lt!1923023)) key!5233)))))

(assert (=> d!1520941 (= (containsKey!3619 lt!1923023 key!5233) e!2967400)))

(declare-fun b!4756613 () Bool)

(declare-fun e!2967401 () Bool)

(assert (=> b!4756613 (= e!2967400 e!2967401)))

(declare-fun res!2018033 () Bool)

(assert (=> b!4756613 (=> (not res!2018033) (not e!2967401))))

(assert (=> b!4756613 (= res!2018033 (is-Cons!53187 lt!1923023))))

(declare-fun b!4756614 () Bool)

(assert (=> b!4756614 (= e!2967401 (containsKey!3619 (t!360655 lt!1923023) key!5233))))

(assert (= (and d!1520941 (not res!2018032)) b!4756613))

(assert (= (and b!4756613 res!2018033) b!4756614))

(declare-fun m!5726555 () Bool)

(assert (=> b!4756614 m!5726555))

(assert (=> d!1520921 d!1520941))

(assert (=> d!1520921 d!1520913))

(declare-fun b!4756615 () Bool)

(declare-fun tp!1351049 () Bool)

(declare-fun e!2967402 () Bool)

(assert (=> b!4756615 (= e!2967402 (and tp_is_empty!32257 tp_is_empty!32259 tp!1351049))))

(assert (=> b!4756592 (= tp!1351048 e!2967402)))

(assert (= (and b!4756592 (is-Cons!53187 (t!360655 (t!360655 l!13802)))) b!4756615))

(declare-fun b_lambda!183729 () Bool)

(assert (= b_lambda!183727 (or d!1520925 b_lambda!183729)))

(declare-fun bs!1146942 () Bool)

(declare-fun d!1520943 () Bool)

(assert (= bs!1146942 (and d!1520943 d!1520925)))

(declare-fun hash!4509 (Hashable!6467 K!14753) (_ BitVec 64))

(assert (=> bs!1146942 (= (dynLambda!21907 lambda!223533 (h!59596 l!13802)) (= (hash!4509 hashF!1449 (_1!30821 (h!59596 l!13802))) hash!423))))

(declare-fun m!5726557 () Bool)

(assert (=> bs!1146942 m!5726557))

(assert (=> b!4756605 d!1520943))

(declare-fun b_lambda!183731 () Bool)

(assert (= b_lambda!183725 (or d!1520915 b_lambda!183731)))

(declare-fun bs!1146943 () Bool)

(declare-fun d!1520945 () Bool)

(assert (= bs!1146943 (and d!1520945 d!1520915)))

(assert (=> bs!1146943 (= (dynLambda!21907 lambda!223532 (h!59596 (removePairForKey!1680 l!13802 key!5233))) (= (hash!4509 hashF!1449 (_1!30821 (h!59596 (removePairForKey!1680 l!13802 key!5233)))) hash!423))))

(declare-fun m!5726559 () Bool)

(assert (=> bs!1146943 m!5726559))

(assert (=> b!4756601 d!1520945))

(push 1)

(assert (not bs!1146942))

(assert (not b_lambda!183731))

(assert (not b!4756595))

(assert (not d!1520927))

(assert tp_is_empty!32257)

(assert (not b!4756606))

(assert (not bs!1146943))

(assert tp_is_empty!32259)

(assert (not b!4756604))

(assert (not b!4756602))

(assert (not b!4756603))

(assert (not d!1520937))

(assert (not b!4756612))

(assert (not d!1520935))

(assert (not b!4756615))

(assert (not b_lambda!183729))

(assert (not b!4756614))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

