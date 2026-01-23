; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506192 () Bool)

(assert start!506192)

(declare-fun b!4851002 () Bool)

(declare-fun e!3032539 () Bool)

(declare-datatypes ((K!17399 0))(
  ( (K!17400 (val!22225 Int)) )
))
(declare-datatypes ((V!17645 0))(
  ( (V!17646 (val!22226 Int)) )
))
(declare-datatypes ((tuple2!59322 0))(
  ( (tuple2!59323 (_1!32955 K!17399) (_2!32955 V!17645)) )
))
(declare-datatypes ((List!55718 0))(
  ( (Nil!55594) (Cons!55594 (h!62031 tuple2!59322) (t!363214 List!55718)) )
))
(declare-datatypes ((tuple2!59324 0))(
  ( (tuple2!59325 (_1!32956 (_ BitVec 64)) (_2!32956 List!55718)) )
))
(declare-datatypes ((List!55719 0))(
  ( (Nil!55595) (Cons!55595 (h!62032 tuple2!59324) (t!363215 List!55719)) )
))
(declare-datatypes ((ListLongMap!6499 0))(
  ( (ListLongMap!6500 (toList!7878 List!55719)) )
))
(declare-fun lm!2646 () ListLongMap!6499)

(declare-fun key!6445 () K!17399)

(declare-fun containsKeyBiggerList!774 (List!55719 K!17399) Bool)

(assert (=> b!4851002 (= e!3032539 (containsKeyBiggerList!774 (toList!7878 lm!2646) key!6445))))

(declare-fun res!2070531 () Bool)

(declare-fun e!3032541 () Bool)

(assert (=> start!506192 (=> (not res!2070531) (not e!3032541))))

(declare-fun lambda!242766 () Int)

(declare-fun forall!12971 (List!55719 Int) Bool)

(assert (=> start!506192 (= res!2070531 (forall!12971 (toList!7878 lm!2646) lambda!242766))))

(assert (=> start!506192 e!3032541))

(declare-fun e!3032540 () Bool)

(declare-fun inv!71285 (ListLongMap!6499) Bool)

(assert (=> start!506192 (and (inv!71285 lm!2646) e!3032540)))

(assert (=> start!506192 true))

(declare-fun tp_is_empty!35251 () Bool)

(assert (=> start!506192 tp_is_empty!35251))

(declare-fun b!4851003 () Bool)

(declare-fun tp!1364854 () Bool)

(assert (=> b!4851003 (= e!3032540 tp!1364854)))

(declare-fun b!4851004 () Bool)

(declare-fun res!2070530 () Bool)

(assert (=> b!4851004 (=> res!2070530 e!3032539)))

(declare-fun lt!1989911 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4851004 (= res!2070530 (or (and ((_ is Cons!55595) (toList!7878 lm!2646)) (= (_1!32956 (h!62032 (toList!7878 lm!2646))) lt!1989911)) ((_ is Cons!55595) (toList!7878 lm!2646))))))

(declare-fun b!4851005 () Bool)

(declare-fun e!3032542 () Bool)

(assert (=> b!4851005 (= e!3032542 (not e!3032539))))

(declare-fun res!2070528 () Bool)

(assert (=> b!4851005 (=> res!2070528 e!3032539)))

(declare-fun lt!1989914 () List!55718)

(declare-datatypes ((Option!13703 0))(
  ( (None!13702) (Some!13702 (v!49494 tuple2!59322)) )
))
(declare-fun isDefined!10795 (Option!13703) Bool)

(declare-fun getPair!1108 (List!55718 K!17399) Option!13703)

(assert (=> b!4851005 (= res!2070528 (not (isDefined!10795 (getPair!1108 lt!1989914 key!6445))))))

(declare-fun lt!1989913 () tuple2!59324)

(declare-datatypes ((Unit!145750 0))(
  ( (Unit!145751) )
))
(declare-fun lt!1989910 () Unit!145750)

(declare-fun forallContained!4559 (List!55719 Int tuple2!59324) Unit!145750)

(assert (=> b!4851005 (= lt!1989910 (forallContained!4559 (toList!7878 lm!2646) lambda!242766 lt!1989913))))

(declare-fun contains!19263 (List!55719 tuple2!59324) Bool)

(assert (=> b!4851005 (contains!19263 (toList!7878 lm!2646) lt!1989913)))

(assert (=> b!4851005 (= lt!1989913 (tuple2!59325 lt!1989911 lt!1989914))))

(declare-fun lt!1989912 () Unit!145750)

(declare-fun lemmaGetValueImpliesTupleContained!785 (ListLongMap!6499 (_ BitVec 64) List!55718) Unit!145750)

(assert (=> b!4851005 (= lt!1989912 (lemmaGetValueImpliesTupleContained!785 lm!2646 lt!1989911 lt!1989914))))

(declare-fun apply!13461 (ListLongMap!6499 (_ BitVec 64)) List!55718)

(assert (=> b!4851005 (= lt!1989914 (apply!13461 lm!2646 lt!1989911))))

(declare-fun b!4851006 () Bool)

(assert (=> b!4851006 (= e!3032541 e!3032542)))

(declare-fun res!2070527 () Bool)

(assert (=> b!4851006 (=> (not res!2070527) (not e!3032542))))

(declare-fun contains!19264 (ListLongMap!6499 (_ BitVec 64)) Bool)

(assert (=> b!4851006 (= res!2070527 (contains!19264 lm!2646 lt!1989911))))

(declare-datatypes ((Hashable!7518 0))(
  ( (HashableExt!7517 (__x!33793 Int)) )
))
(declare-fun hashF!1641 () Hashable!7518)

(declare-fun hash!5644 (Hashable!7518 K!17399) (_ BitVec 64))

(assert (=> b!4851006 (= lt!1989911 (hash!5644 hashF!1641 key!6445))))

(declare-fun b!4851007 () Bool)

(declare-fun res!2070529 () Bool)

(assert (=> b!4851007 (=> (not res!2070529) (not e!3032541))))

(declare-fun allKeysSameHashInMap!2834 (ListLongMap!6499 Hashable!7518) Bool)

(assert (=> b!4851007 (= res!2070529 (allKeysSameHashInMap!2834 lm!2646 hashF!1641))))

(assert (= (and start!506192 res!2070531) b!4851007))

(assert (= (and b!4851007 res!2070529) b!4851006))

(assert (= (and b!4851006 res!2070527) b!4851005))

(assert (= (and b!4851005 (not res!2070528)) b!4851004))

(assert (= (and b!4851004 (not res!2070530)) b!4851002))

(assert (= start!506192 b!4851003))

(declare-fun m!5849600 () Bool)

(assert (=> b!4851007 m!5849600))

(declare-fun m!5849602 () Bool)

(assert (=> b!4851006 m!5849602))

(declare-fun m!5849604 () Bool)

(assert (=> b!4851006 m!5849604))

(declare-fun m!5849606 () Bool)

(assert (=> b!4851005 m!5849606))

(declare-fun m!5849608 () Bool)

(assert (=> b!4851005 m!5849608))

(declare-fun m!5849610 () Bool)

(assert (=> b!4851005 m!5849610))

(assert (=> b!4851005 m!5849606))

(declare-fun m!5849612 () Bool)

(assert (=> b!4851005 m!5849612))

(declare-fun m!5849614 () Bool)

(assert (=> b!4851005 m!5849614))

(declare-fun m!5849616 () Bool)

(assert (=> b!4851005 m!5849616))

(declare-fun m!5849618 () Bool)

(assert (=> start!506192 m!5849618))

(declare-fun m!5849620 () Bool)

(assert (=> start!506192 m!5849620))

(declare-fun m!5849622 () Bool)

(assert (=> b!4851002 m!5849622))

(check-sat (not b!4851002) (not start!506192) (not b!4851006) (not b!4851005) (not b!4851003) (not b!4851007) tp_is_empty!35251)
(check-sat)
(get-model)

(declare-fun d!1557311 () Bool)

(declare-fun e!3032563 () Bool)

(assert (=> d!1557311 e!3032563))

(declare-fun res!2070548 () Bool)

(assert (=> d!1557311 (=> res!2070548 e!3032563)))

(declare-fun e!3032560 () Bool)

(assert (=> d!1557311 (= res!2070548 e!3032560)))

(declare-fun res!2070547 () Bool)

(assert (=> d!1557311 (=> (not res!2070547) (not e!3032560))))

(declare-fun lt!1989920 () Option!13703)

(declare-fun isEmpty!29755 (Option!13703) Bool)

(assert (=> d!1557311 (= res!2070547 (isEmpty!29755 lt!1989920))))

(declare-fun e!3032559 () Option!13703)

(assert (=> d!1557311 (= lt!1989920 e!3032559)))

(declare-fun c!825536 () Bool)

(assert (=> d!1557311 (= c!825536 (and ((_ is Cons!55594) lt!1989914) (= (_1!32955 (h!62031 lt!1989914)) key!6445)))))

(declare-fun noDuplicateKeys!2603 (List!55718) Bool)

(assert (=> d!1557311 (noDuplicateKeys!2603 lt!1989914)))

(assert (=> d!1557311 (= (getPair!1108 lt!1989914 key!6445) lt!1989920)))

(declare-fun b!4851030 () Bool)

(declare-fun containsKey!4713 (List!55718 K!17399) Bool)

(assert (=> b!4851030 (= e!3032560 (not (containsKey!4713 lt!1989914 key!6445)))))

(declare-fun b!4851031 () Bool)

(declare-fun e!3032561 () Bool)

(declare-fun contains!19265 (List!55718 tuple2!59322) Bool)

(declare-fun get!19070 (Option!13703) tuple2!59322)

(assert (=> b!4851031 (= e!3032561 (contains!19265 lt!1989914 (get!19070 lt!1989920)))))

(declare-fun b!4851032 () Bool)

(declare-fun e!3032562 () Option!13703)

(assert (=> b!4851032 (= e!3032562 (getPair!1108 (t!363214 lt!1989914) key!6445))))

(declare-fun b!4851033 () Bool)

(assert (=> b!4851033 (= e!3032559 (Some!13702 (h!62031 lt!1989914)))))

(declare-fun b!4851034 () Bool)

(assert (=> b!4851034 (= e!3032562 None!13702)))

(declare-fun b!4851035 () Bool)

(declare-fun res!2070546 () Bool)

(assert (=> b!4851035 (=> (not res!2070546) (not e!3032561))))

(assert (=> b!4851035 (= res!2070546 (= (_1!32955 (get!19070 lt!1989920)) key!6445))))

(declare-fun b!4851036 () Bool)

(assert (=> b!4851036 (= e!3032559 e!3032562)))

(declare-fun c!825535 () Bool)

(assert (=> b!4851036 (= c!825535 ((_ is Cons!55594) lt!1989914))))

(declare-fun b!4851037 () Bool)

(assert (=> b!4851037 (= e!3032563 e!3032561)))

(declare-fun res!2070549 () Bool)

(assert (=> b!4851037 (=> (not res!2070549) (not e!3032561))))

(assert (=> b!4851037 (= res!2070549 (isDefined!10795 lt!1989920))))

(assert (= (and d!1557311 c!825536) b!4851033))

(assert (= (and d!1557311 (not c!825536)) b!4851036))

(assert (= (and b!4851036 c!825535) b!4851032))

(assert (= (and b!4851036 (not c!825535)) b!4851034))

(assert (= (and d!1557311 res!2070547) b!4851030))

(assert (= (and d!1557311 (not res!2070548)) b!4851037))

(assert (= (and b!4851037 res!2070549) b!4851035))

(assert (= (and b!4851035 res!2070546) b!4851031))

(declare-fun m!5849630 () Bool)

(assert (=> b!4851030 m!5849630))

(declare-fun m!5849632 () Bool)

(assert (=> b!4851037 m!5849632))

(declare-fun m!5849634 () Bool)

(assert (=> b!4851032 m!5849634))

(declare-fun m!5849636 () Bool)

(assert (=> b!4851035 m!5849636))

(declare-fun m!5849638 () Bool)

(assert (=> d!1557311 m!5849638))

(declare-fun m!5849640 () Bool)

(assert (=> d!1557311 m!5849640))

(assert (=> b!4851031 m!5849636))

(assert (=> b!4851031 m!5849636))

(declare-fun m!5849642 () Bool)

(assert (=> b!4851031 m!5849642))

(assert (=> b!4851005 d!1557311))

(declare-fun d!1557317 () Bool)

(assert (=> d!1557317 (contains!19263 (toList!7878 lm!2646) (tuple2!59325 lt!1989911 lt!1989914))))

(declare-fun lt!1989926 () Unit!145750)

(declare-fun choose!35515 (ListLongMap!6499 (_ BitVec 64) List!55718) Unit!145750)

(assert (=> d!1557317 (= lt!1989926 (choose!35515 lm!2646 lt!1989911 lt!1989914))))

(assert (=> d!1557317 (contains!19264 lm!2646 lt!1989911)))

(assert (=> d!1557317 (= (lemmaGetValueImpliesTupleContained!785 lm!2646 lt!1989911 lt!1989914) lt!1989926)))

(declare-fun bs!1172954 () Bool)

(assert (= bs!1172954 d!1557317))

(declare-fun m!5849650 () Bool)

(assert (=> bs!1172954 m!5849650))

(declare-fun m!5849652 () Bool)

(assert (=> bs!1172954 m!5849652))

(assert (=> bs!1172954 m!5849602))

(assert (=> b!4851005 d!1557317))

(declare-fun d!1557323 () Bool)

(declare-fun lt!1989931 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9905 (List!55719) (InoxSet tuple2!59324))

(assert (=> d!1557323 (= lt!1989931 (select (content!9905 (toList!7878 lm!2646)) lt!1989913))))

(declare-fun e!3032576 () Bool)

(assert (=> d!1557323 (= lt!1989931 e!3032576)))

(declare-fun res!2070557 () Bool)

(assert (=> d!1557323 (=> (not res!2070557) (not e!3032576))))

(assert (=> d!1557323 (= res!2070557 ((_ is Cons!55595) (toList!7878 lm!2646)))))

(assert (=> d!1557323 (= (contains!19263 (toList!7878 lm!2646) lt!1989913) lt!1989931)))

(declare-fun b!4851054 () Bool)

(declare-fun e!3032575 () Bool)

(assert (=> b!4851054 (= e!3032576 e!3032575)))

(declare-fun res!2070558 () Bool)

(assert (=> b!4851054 (=> res!2070558 e!3032575)))

(assert (=> b!4851054 (= res!2070558 (= (h!62032 (toList!7878 lm!2646)) lt!1989913))))

(declare-fun b!4851055 () Bool)

(assert (=> b!4851055 (= e!3032575 (contains!19263 (t!363215 (toList!7878 lm!2646)) lt!1989913))))

(assert (= (and d!1557323 res!2070557) b!4851054))

(assert (= (and b!4851054 (not res!2070558)) b!4851055))

(declare-fun m!5849654 () Bool)

(assert (=> d!1557323 m!5849654))

(declare-fun m!5849656 () Bool)

(assert (=> d!1557323 m!5849656))

(declare-fun m!5849658 () Bool)

(assert (=> b!4851055 m!5849658))

(assert (=> b!4851005 d!1557323))

(declare-fun d!1557325 () Bool)

(assert (=> d!1557325 (= (isDefined!10795 (getPair!1108 lt!1989914 key!6445)) (not (isEmpty!29755 (getPair!1108 lt!1989914 key!6445))))))

(declare-fun bs!1172955 () Bool)

(assert (= bs!1172955 d!1557325))

(assert (=> bs!1172955 m!5849606))

(declare-fun m!5849660 () Bool)

(assert (=> bs!1172955 m!5849660))

(assert (=> b!4851005 d!1557325))

(declare-fun d!1557327 () Bool)

(declare-fun dynLambda!22370 (Int tuple2!59324) Bool)

(assert (=> d!1557327 (dynLambda!22370 lambda!242766 lt!1989913)))

(declare-fun lt!1989935 () Unit!145750)

(declare-fun choose!35516 (List!55719 Int tuple2!59324) Unit!145750)

(assert (=> d!1557327 (= lt!1989935 (choose!35516 (toList!7878 lm!2646) lambda!242766 lt!1989913))))

(declare-fun e!3032590 () Bool)

(assert (=> d!1557327 e!3032590))

(declare-fun res!2070573 () Bool)

(assert (=> d!1557327 (=> (not res!2070573) (not e!3032590))))

(assert (=> d!1557327 (= res!2070573 (forall!12971 (toList!7878 lm!2646) lambda!242766))))

(assert (=> d!1557327 (= (forallContained!4559 (toList!7878 lm!2646) lambda!242766 lt!1989913) lt!1989935)))

(declare-fun b!4851074 () Bool)

(assert (=> b!4851074 (= e!3032590 (contains!19263 (toList!7878 lm!2646) lt!1989913))))

(assert (= (and d!1557327 res!2070573) b!4851074))

(declare-fun b_lambda!193013 () Bool)

(assert (=> (not b_lambda!193013) (not d!1557327)))

(declare-fun m!5849676 () Bool)

(assert (=> d!1557327 m!5849676))

(declare-fun m!5849678 () Bool)

(assert (=> d!1557327 m!5849678))

(assert (=> d!1557327 m!5849618))

(assert (=> b!4851074 m!5849610))

(assert (=> b!4851005 d!1557327))

(declare-fun d!1557331 () Bool)

(declare-datatypes ((Option!13704 0))(
  ( (None!13703) (Some!13703 (v!49497 List!55718)) )
))
(declare-fun get!19072 (Option!13704) List!55718)

(declare-fun getValueByKey!2743 (List!55719 (_ BitVec 64)) Option!13704)

(assert (=> d!1557331 (= (apply!13461 lm!2646 lt!1989911) (get!19072 (getValueByKey!2743 (toList!7878 lm!2646) lt!1989911)))))

(declare-fun bs!1172957 () Bool)

(assert (= bs!1172957 d!1557331))

(declare-fun m!5849684 () Bool)

(assert (=> bs!1172957 m!5849684))

(assert (=> bs!1172957 m!5849684))

(declare-fun m!5849686 () Bool)

(assert (=> bs!1172957 m!5849686))

(assert (=> b!4851005 d!1557331))

(declare-fun d!1557335 () Bool)

(declare-fun res!2070578 () Bool)

(declare-fun e!3032595 () Bool)

(assert (=> d!1557335 (=> res!2070578 e!3032595)))

(assert (=> d!1557335 (= res!2070578 ((_ is Nil!55595) (toList!7878 lm!2646)))))

(assert (=> d!1557335 (= (forall!12971 (toList!7878 lm!2646) lambda!242766) e!3032595)))

(declare-fun b!4851079 () Bool)

(declare-fun e!3032596 () Bool)

(assert (=> b!4851079 (= e!3032595 e!3032596)))

(declare-fun res!2070579 () Bool)

(assert (=> b!4851079 (=> (not res!2070579) (not e!3032596))))

(assert (=> b!4851079 (= res!2070579 (dynLambda!22370 lambda!242766 (h!62032 (toList!7878 lm!2646))))))

(declare-fun b!4851080 () Bool)

(assert (=> b!4851080 (= e!3032596 (forall!12971 (t!363215 (toList!7878 lm!2646)) lambda!242766))))

(assert (= (and d!1557335 (not res!2070578)) b!4851079))

(assert (= (and b!4851079 res!2070579) b!4851080))

(declare-fun b_lambda!193015 () Bool)

(assert (=> (not b_lambda!193015) (not b!4851079)))

(declare-fun m!5849688 () Bool)

(assert (=> b!4851079 m!5849688))

(declare-fun m!5849690 () Bool)

(assert (=> b!4851080 m!5849690))

(assert (=> start!506192 d!1557335))

(declare-fun d!1557337 () Bool)

(declare-fun isStrictlySorted!1092 (List!55719) Bool)

(assert (=> d!1557337 (= (inv!71285 lm!2646) (isStrictlySorted!1092 (toList!7878 lm!2646)))))

(declare-fun bs!1172959 () Bool)

(assert (= bs!1172959 d!1557337))

(declare-fun m!5849696 () Bool)

(assert (=> bs!1172959 m!5849696))

(assert (=> start!506192 d!1557337))

(declare-fun d!1557341 () Bool)

(declare-fun e!3032611 () Bool)

(assert (=> d!1557341 e!3032611))

(declare-fun res!2070591 () Bool)

(assert (=> d!1557341 (=> res!2070591 e!3032611)))

(declare-fun lt!1989949 () Bool)

(assert (=> d!1557341 (= res!2070591 (not lt!1989949))))

(declare-fun lt!1989950 () Bool)

(assert (=> d!1557341 (= lt!1989949 lt!1989950)))

(declare-fun lt!1989947 () Unit!145750)

(declare-fun e!3032610 () Unit!145750)

(assert (=> d!1557341 (= lt!1989947 e!3032610)))

(declare-fun c!825545 () Bool)

(assert (=> d!1557341 (= c!825545 lt!1989950)))

(declare-fun containsKey!4715 (List!55719 (_ BitVec 64)) Bool)

(assert (=> d!1557341 (= lt!1989950 (containsKey!4715 (toList!7878 lm!2646) lt!1989911))))

(assert (=> d!1557341 (= (contains!19264 lm!2646 lt!1989911) lt!1989949)))

(declare-fun b!4851099 () Bool)

(declare-fun lt!1989948 () Unit!145750)

(assert (=> b!4851099 (= e!3032610 lt!1989948)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2515 (List!55719 (_ BitVec 64)) Unit!145750)

(assert (=> b!4851099 (= lt!1989948 (lemmaContainsKeyImpliesGetValueByKeyDefined!2515 (toList!7878 lm!2646) lt!1989911))))

(declare-fun isDefined!10796 (Option!13704) Bool)

(assert (=> b!4851099 (isDefined!10796 (getValueByKey!2743 (toList!7878 lm!2646) lt!1989911))))

(declare-fun b!4851100 () Bool)

(declare-fun Unit!145752 () Unit!145750)

(assert (=> b!4851100 (= e!3032610 Unit!145752)))

(declare-fun b!4851101 () Bool)

(assert (=> b!4851101 (= e!3032611 (isDefined!10796 (getValueByKey!2743 (toList!7878 lm!2646) lt!1989911)))))

(assert (= (and d!1557341 c!825545) b!4851099))

(assert (= (and d!1557341 (not c!825545)) b!4851100))

(assert (= (and d!1557341 (not res!2070591)) b!4851101))

(declare-fun m!5849704 () Bool)

(assert (=> d!1557341 m!5849704))

(declare-fun m!5849706 () Bool)

(assert (=> b!4851099 m!5849706))

(assert (=> b!4851099 m!5849684))

(assert (=> b!4851099 m!5849684))

(declare-fun m!5849708 () Bool)

(assert (=> b!4851099 m!5849708))

(assert (=> b!4851101 m!5849684))

(assert (=> b!4851101 m!5849684))

(assert (=> b!4851101 m!5849708))

(assert (=> b!4851006 d!1557341))

(declare-fun d!1557347 () Bool)

(declare-fun hash!5645 (Hashable!7518 K!17399) (_ BitVec 64))

(assert (=> d!1557347 (= (hash!5644 hashF!1641 key!6445) (hash!5645 hashF!1641 key!6445))))

(declare-fun bs!1172962 () Bool)

(assert (= bs!1172962 d!1557347))

(declare-fun m!5849710 () Bool)

(assert (=> bs!1172962 m!5849710))

(assert (=> b!4851006 d!1557347))

(declare-fun bs!1172963 () Bool)

(declare-fun d!1557349 () Bool)

(assert (= bs!1172963 (and d!1557349 start!506192)))

(declare-fun lambda!242772 () Int)

(assert (=> bs!1172963 (not (= lambda!242772 lambda!242766))))

(assert (=> d!1557349 true))

(assert (=> d!1557349 (= (allKeysSameHashInMap!2834 lm!2646 hashF!1641) (forall!12971 (toList!7878 lm!2646) lambda!242772))))

(declare-fun bs!1172964 () Bool)

(assert (= bs!1172964 d!1557349))

(declare-fun m!5849712 () Bool)

(assert (=> bs!1172964 m!5849712))

(assert (=> b!4851007 d!1557349))

(declare-fun d!1557351 () Bool)

(declare-fun res!2070602 () Bool)

(declare-fun e!3032624 () Bool)

(assert (=> d!1557351 (=> res!2070602 e!3032624)))

(declare-fun e!3032626 () Bool)

(assert (=> d!1557351 (= res!2070602 e!3032626)))

(declare-fun res!2070603 () Bool)

(assert (=> d!1557351 (=> (not res!2070603) (not e!3032626))))

(assert (=> d!1557351 (= res!2070603 ((_ is Cons!55595) (toList!7878 lm!2646)))))

(assert (=> d!1557351 (= (containsKeyBiggerList!774 (toList!7878 lm!2646) key!6445) e!3032624)))

(declare-fun b!4851119 () Bool)

(assert (=> b!4851119 (= e!3032626 (containsKey!4713 (_2!32956 (h!62032 (toList!7878 lm!2646))) key!6445))))

(declare-fun b!4851120 () Bool)

(declare-fun e!3032625 () Bool)

(assert (=> b!4851120 (= e!3032624 e!3032625)))

(declare-fun res!2070601 () Bool)

(assert (=> b!4851120 (=> (not res!2070601) (not e!3032625))))

(assert (=> b!4851120 (= res!2070601 ((_ is Cons!55595) (toList!7878 lm!2646)))))

(declare-fun b!4851121 () Bool)

(assert (=> b!4851121 (= e!3032625 (containsKeyBiggerList!774 (t!363215 (toList!7878 lm!2646)) key!6445))))

(assert (= (and d!1557351 res!2070603) b!4851119))

(assert (= (and d!1557351 (not res!2070602)) b!4851120))

(assert (= (and b!4851120 res!2070601) b!4851121))

(declare-fun m!5849722 () Bool)

(assert (=> b!4851119 m!5849722))

(declare-fun m!5849724 () Bool)

(assert (=> b!4851121 m!5849724))

(assert (=> b!4851002 d!1557351))

(declare-fun b!4851126 () Bool)

(declare-fun e!3032629 () Bool)

(declare-fun tp!1364859 () Bool)

(declare-fun tp!1364860 () Bool)

(assert (=> b!4851126 (= e!3032629 (and tp!1364859 tp!1364860))))

(assert (=> b!4851003 (= tp!1364854 e!3032629)))

(assert (= (and b!4851003 ((_ is Cons!55595) (toList!7878 lm!2646))) b!4851126))

(declare-fun b_lambda!193017 () Bool)

(assert (= b_lambda!193013 (or start!506192 b_lambda!193017)))

(declare-fun bs!1172966 () Bool)

(declare-fun d!1557357 () Bool)

(assert (= bs!1172966 (and d!1557357 start!506192)))

(assert (=> bs!1172966 (= (dynLambda!22370 lambda!242766 lt!1989913) (noDuplicateKeys!2603 (_2!32956 lt!1989913)))))

(declare-fun m!5849726 () Bool)

(assert (=> bs!1172966 m!5849726))

(assert (=> d!1557327 d!1557357))

(declare-fun b_lambda!193019 () Bool)

(assert (= b_lambda!193015 (or start!506192 b_lambda!193019)))

(declare-fun bs!1172967 () Bool)

(declare-fun d!1557359 () Bool)

(assert (= bs!1172967 (and d!1557359 start!506192)))

(assert (=> bs!1172967 (= (dynLambda!22370 lambda!242766 (h!62032 (toList!7878 lm!2646))) (noDuplicateKeys!2603 (_2!32956 (h!62032 (toList!7878 lm!2646)))))))

(declare-fun m!5849728 () Bool)

(assert (=> bs!1172967 m!5849728))

(assert (=> b!4851079 d!1557359))

(check-sat (not b!4851032) (not b!4851035) (not b!4851074) (not d!1557327) (not b!4851080) (not bs!1172967) (not b!4851099) (not b!4851126) (not b!4851037) (not b!4851121) (not d!1557337) (not d!1557323) (not b_lambda!193019) (not b!4851119) (not b_lambda!193017) (not d!1557325) (not d!1557311) (not d!1557331) (not d!1557341) (not d!1557347) (not b!4851055) (not b!4851031) (not b!4851030) (not bs!1172966) (not b!4851101) (not d!1557317) (not d!1557349) tp_is_empty!35251)
(check-sat)
