; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!759134 () Bool)

(assert start!759134)

(declare-fun b!8057421 () Bool)

(declare-fun e!4748290 () Bool)

(declare-datatypes ((K!22933 0))(
  ( (K!22934 (val!33019 Int)) )
))
(declare-datatypes ((V!23187 0))(
  ( (V!23188 (val!33020 Int)) )
))
(declare-datatypes ((tuple2!70984 0))(
  ( (tuple2!70985 (_1!38795 K!22933) (_2!38795 V!23187)) )
))
(declare-datatypes ((List!75740 0))(
  ( (Nil!75614) (Cons!75614 (h!82062 tuple2!70984) (t!391512 List!75740)) )
))
(declare-fun l!10976 () List!75740)

(declare-fun ListPrimitiveSize!560 (List!75740) Int)

(assert (=> b!8057421 (= e!4748290 (>= (ListPrimitiveSize!560 (t!391512 l!10976)) (ListPrimitiveSize!560 l!10976)))))

(declare-datatypes ((ListMap!7355 0))(
  ( (ListMap!7356 (toList!11952 List!75740)) )
))
(declare-fun lt!2730987 () ListMap!7355)

(declare-fun acc!836 () ListMap!7355)

(declare-fun +!2699 (ListMap!7355 tuple2!70984) ListMap!7355)

(assert (=> b!8057421 (= lt!2730987 (+!2699 acc!836 (h!82062 l!10976)))))

(declare-fun b!8057420 () Bool)

(declare-fun res!3187321 () Bool)

(assert (=> b!8057420 (=> (not res!3187321) (not e!4748290))))

(get-info :version)

(assert (=> b!8057420 (= res!3187321 (not ((_ is Nil!75614) l!10976)))))

(declare-fun b!8057423 () Bool)

(declare-fun e!4748288 () Bool)

(declare-fun tp!2414117 () Bool)

(assert (=> b!8057423 (= e!4748288 tp!2414117)))

(declare-fun tp_is_empty!55093 () Bool)

(declare-fun tp!2414116 () Bool)

(declare-fun b!8057422 () Bool)

(declare-fun tp_is_empty!55091 () Bool)

(declare-fun e!4748289 () Bool)

(assert (=> b!8057422 (= e!4748289 (and tp_is_empty!55091 tp_is_empty!55093 tp!2414116))))

(declare-fun res!3187320 () Bool)

(assert (=> start!759134 (=> (not res!3187320) (not e!4748290))))

(declare-fun noDuplicateKeys!2738 (List!75740) Bool)

(assert (=> start!759134 (= res!3187320 (noDuplicateKeys!2738 l!10976))))

(assert (=> start!759134 e!4748290))

(assert (=> start!759134 e!4748289))

(declare-fun inv!97406 (ListMap!7355) Bool)

(assert (=> start!759134 (and (inv!97406 acc!836) e!4748288)))

(assert (= (and start!759134 res!3187320) b!8057420))

(assert (= (and b!8057420 res!3187321) b!8057421))

(assert (= (and start!759134 ((_ is Cons!75614) l!10976)) b!8057422))

(assert (= start!759134 b!8057423))

(declare-fun m!8410526 () Bool)

(assert (=> b!8057421 m!8410526))

(declare-fun m!8410528 () Bool)

(assert (=> b!8057421 m!8410528))

(declare-fun m!8410530 () Bool)

(assert (=> b!8057421 m!8410530))

(declare-fun m!8410532 () Bool)

(assert (=> start!759134 m!8410532))

(declare-fun m!8410534 () Bool)

(assert (=> start!759134 m!8410534))

(check-sat tp_is_empty!55093 (not start!759134) (not b!8057421) (not b!8057422) tp_is_empty!55091 (not b!8057423))
(check-sat)
(get-model)

(declare-fun d!2398871 () Bool)

(declare-fun res!3187326 () Bool)

(declare-fun e!4748295 () Bool)

(assert (=> d!2398871 (=> res!3187326 e!4748295)))

(assert (=> d!2398871 (= res!3187326 (not ((_ is Cons!75614) l!10976)))))

(assert (=> d!2398871 (= (noDuplicateKeys!2738 l!10976) e!4748295)))

(declare-fun b!8057428 () Bool)

(declare-fun e!4748296 () Bool)

(assert (=> b!8057428 (= e!4748295 e!4748296)))

(declare-fun res!3187327 () Bool)

(assert (=> b!8057428 (=> (not res!3187327) (not e!4748296))))

(declare-fun containsKey!4915 (List!75740 K!22933) Bool)

(assert (=> b!8057428 (= res!3187327 (not (containsKey!4915 (t!391512 l!10976) (_1!38795 (h!82062 l!10976)))))))

(declare-fun b!8057429 () Bool)

(assert (=> b!8057429 (= e!4748296 (noDuplicateKeys!2738 (t!391512 l!10976)))))

(assert (= (and d!2398871 (not res!3187326)) b!8057428))

(assert (= (and b!8057428 res!3187327) b!8057429))

(declare-fun m!8410536 () Bool)

(assert (=> b!8057428 m!8410536))

(declare-fun m!8410538 () Bool)

(assert (=> b!8057429 m!8410538))

(assert (=> start!759134 d!2398871))

(declare-fun d!2398875 () Bool)

(declare-fun invariantList!1957 (List!75740) Bool)

(assert (=> d!2398875 (= (inv!97406 acc!836) (invariantList!1957 (toList!11952 acc!836)))))

(declare-fun bs!1973252 () Bool)

(assert (= bs!1973252 d!2398875))

(declare-fun m!8410540 () Bool)

(assert (=> bs!1973252 m!8410540))

(assert (=> start!759134 d!2398875))

(declare-fun d!2398877 () Bool)

(declare-fun lt!2730990 () Int)

(assert (=> d!2398877 (>= lt!2730990 0)))

(declare-fun e!4748305 () Int)

(assert (=> d!2398877 (= lt!2730990 e!4748305)))

(declare-fun c!1476678 () Bool)

(assert (=> d!2398877 (= c!1476678 ((_ is Nil!75614) (t!391512 l!10976)))))

(assert (=> d!2398877 (= (ListPrimitiveSize!560 (t!391512 l!10976)) lt!2730990)))

(declare-fun b!8057440 () Bool)

(assert (=> b!8057440 (= e!4748305 0)))

(declare-fun b!8057441 () Bool)

(assert (=> b!8057441 (= e!4748305 (+ 1 (ListPrimitiveSize!560 (t!391512 (t!391512 l!10976)))))))

(assert (= (and d!2398877 c!1476678) b!8057440))

(assert (= (and d!2398877 (not c!1476678)) b!8057441))

(declare-fun m!8410546 () Bool)

(assert (=> b!8057441 m!8410546))

(assert (=> b!8057421 d!2398877))

(declare-fun d!2398881 () Bool)

(declare-fun lt!2730991 () Int)

(assert (=> d!2398881 (>= lt!2730991 0)))

(declare-fun e!4748306 () Int)

(assert (=> d!2398881 (= lt!2730991 e!4748306)))

(declare-fun c!1476679 () Bool)

(assert (=> d!2398881 (= c!1476679 ((_ is Nil!75614) l!10976))))

(assert (=> d!2398881 (= (ListPrimitiveSize!560 l!10976) lt!2730991)))

(declare-fun b!8057442 () Bool)

(assert (=> b!8057442 (= e!4748306 0)))

(declare-fun b!8057443 () Bool)

(assert (=> b!8057443 (= e!4748306 (+ 1 (ListPrimitiveSize!560 (t!391512 l!10976))))))

(assert (= (and d!2398881 c!1476679) b!8057442))

(assert (= (and d!2398881 (not c!1476679)) b!8057443))

(assert (=> b!8057443 m!8410526))

(assert (=> b!8057421 d!2398881))

(declare-fun d!2398883 () Bool)

(declare-fun e!4748313 () Bool)

(assert (=> d!2398883 e!4748313))

(declare-fun res!3187338 () Bool)

(assert (=> d!2398883 (=> (not res!3187338) (not e!4748313))))

(declare-fun lt!2731006 () ListMap!7355)

(declare-fun contains!21285 (ListMap!7355 K!22933) Bool)

(assert (=> d!2398883 (= res!3187338 (contains!21285 lt!2731006 (_1!38795 (h!82062 l!10976))))))

(declare-fun lt!2731007 () List!75740)

(assert (=> d!2398883 (= lt!2731006 (ListMap!7356 lt!2731007))))

(declare-datatypes ((Unit!172585 0))(
  ( (Unit!172586) )
))
(declare-fun lt!2731005 () Unit!172585)

(declare-fun lt!2731004 () Unit!172585)

(assert (=> d!2398883 (= lt!2731005 lt!2731004)))

(declare-datatypes ((Option!18020 0))(
  ( (None!18019) (Some!18019 (v!55376 V!23187)) )
))
(declare-fun getValueByKey!2804 (List!75740 K!22933) Option!18020)

(assert (=> d!2398883 (= (getValueByKey!2804 lt!2731007 (_1!38795 (h!82062 l!10976))) (Some!18019 (_2!38795 (h!82062 l!10976))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1297 (List!75740 K!22933 V!23187) Unit!172585)

(assert (=> d!2398883 (= lt!2731004 (lemmaContainsTupThenGetReturnValue!1297 lt!2731007 (_1!38795 (h!82062 l!10976)) (_2!38795 (h!82062 l!10976))))))

(declare-fun insertNoDuplicatedKeys!805 (List!75740 K!22933 V!23187) List!75740)

(assert (=> d!2398883 (= lt!2731007 (insertNoDuplicatedKeys!805 (toList!11952 acc!836) (_1!38795 (h!82062 l!10976)) (_2!38795 (h!82062 l!10976))))))

(assert (=> d!2398883 (= (+!2699 acc!836 (h!82062 l!10976)) lt!2731006)))

(declare-fun b!8057456 () Bool)

(declare-fun res!3187339 () Bool)

(assert (=> b!8057456 (=> (not res!3187339) (not e!4748313))))

(assert (=> b!8057456 (= res!3187339 (= (getValueByKey!2804 (toList!11952 lt!2731006) (_1!38795 (h!82062 l!10976))) (Some!18019 (_2!38795 (h!82062 l!10976)))))))

(declare-fun b!8057457 () Bool)

(declare-fun contains!21286 (List!75740 tuple2!70984) Bool)

(assert (=> b!8057457 (= e!4748313 (contains!21286 (toList!11952 lt!2731006) (h!82062 l!10976)))))

(assert (= (and d!2398883 res!3187338) b!8057456))

(assert (= (and b!8057456 res!3187339) b!8057457))

(declare-fun m!8410552 () Bool)

(assert (=> d!2398883 m!8410552))

(declare-fun m!8410554 () Bool)

(assert (=> d!2398883 m!8410554))

(declare-fun m!8410556 () Bool)

(assert (=> d!2398883 m!8410556))

(declare-fun m!8410558 () Bool)

(assert (=> d!2398883 m!8410558))

(declare-fun m!8410560 () Bool)

(assert (=> b!8057456 m!8410560))

(declare-fun m!8410562 () Bool)

(assert (=> b!8057457 m!8410562))

(assert (=> b!8057421 d!2398883))

(declare-fun tp!2414120 () Bool)

(declare-fun b!8057462 () Bool)

(declare-fun e!4748316 () Bool)

(assert (=> b!8057462 (= e!4748316 (and tp_is_empty!55091 tp_is_empty!55093 tp!2414120))))

(assert (=> b!8057422 (= tp!2414116 e!4748316)))

(assert (= (and b!8057422 ((_ is Cons!75614) (t!391512 l!10976))) b!8057462))

(declare-fun tp!2414121 () Bool)

(declare-fun e!4748317 () Bool)

(declare-fun b!8057463 () Bool)

(assert (=> b!8057463 (= e!4748317 (and tp_is_empty!55091 tp_is_empty!55093 tp!2414121))))

(assert (=> b!8057423 (= tp!2414117 e!4748317)))

(assert (= (and b!8057423 ((_ is Cons!75614) (toList!11952 acc!836))) b!8057463))

(check-sat (not b!8057429) tp_is_empty!55093 (not b!8057443) tp_is_empty!55091 (not b!8057456) (not b!8057462) (not d!2398875) (not b!8057463) (not d!2398883) (not b!8057441) (not b!8057457) (not b!8057428))
(check-sat)
