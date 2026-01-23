; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!418116 () Bool)

(assert start!418116)

(declare-fun b!4335423 () Bool)

(declare-fun res!1778092 () Bool)

(declare-fun e!2697700 () Bool)

(assert (=> b!4335423 (=> (not res!1778092) (not e!2697700))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4771 0))(
  ( (HashableExt!4770 (__x!30474 Int)) )
))
(declare-fun hashF!1247 () Hashable!4771)

(declare-datatypes ((K!10015 0))(
  ( (K!10016 (val!16283 Int)) )
))
(declare-fun key!3918 () K!10015)

(declare-fun hash!1324 (Hashable!4771 K!10015) (_ BitVec 64))

(assert (=> b!4335423 (= res!1778092 (= (hash!1324 hashF!1247 key!3918) hash!377))))

(declare-fun b!4335424 () Bool)

(declare-fun e!2697706 () Bool)

(assert (=> b!4335424 (= e!2697700 (not e!2697706))))

(declare-fun res!1778093 () Bool)

(assert (=> b!4335424 (=> res!1778093 e!2697706)))

(declare-datatypes ((V!10261 0))(
  ( (V!10262 (val!16284 Int)) )
))
(declare-datatypes ((tuple2!47886 0))(
  ( (tuple2!47887 (_1!27237 K!10015) (_2!27237 V!10261)) )
))
(declare-datatypes ((List!48783 0))(
  ( (Nil!48659) (Cons!48659 (h!54158 tuple2!47886) (t!355699 List!48783)) )
))
(declare-fun newBucket!200 () List!48783)

(declare-fun lt!1548764 () List!48783)

(assert (=> b!4335424 (= res!1778093 (not (= newBucket!200 lt!1548764)))))

(declare-fun lt!1548762 () tuple2!47886)

(declare-fun lt!1548770 () List!48783)

(assert (=> b!4335424 (= lt!1548764 (Cons!48659 lt!1548762 lt!1548770))))

(declare-fun lt!1548760 () List!48783)

(declare-fun removePairForKey!349 (List!48783 K!10015) List!48783)

(assert (=> b!4335424 (= lt!1548770 (removePairForKey!349 lt!1548760 key!3918))))

(declare-fun newValue!99 () V!10261)

(assert (=> b!4335424 (= lt!1548762 (tuple2!47887 key!3918 newValue!99))))

(declare-fun lambda!135683 () Int)

(declare-datatypes ((tuple2!47888 0))(
  ( (tuple2!47889 (_1!27238 (_ BitVec 64)) (_2!27238 List!48783)) )
))
(declare-datatypes ((List!48784 0))(
  ( (Nil!48660) (Cons!48660 (h!54159 tuple2!47888) (t!355700 List!48784)) )
))
(declare-datatypes ((ListLongMap!1391 0))(
  ( (ListLongMap!1392 (toList!2741 List!48784)) )
))
(declare-fun lm!1707 () ListLongMap!1391)

(declare-fun lt!1548761 () tuple2!47888)

(declare-datatypes ((Unit!68483 0))(
  ( (Unit!68484) )
))
(declare-fun lt!1548763 () Unit!68483)

(declare-fun forallContained!1595 (List!48784 Int tuple2!47888) Unit!68483)

(assert (=> b!4335424 (= lt!1548763 (forallContained!1595 (toList!2741 lm!1707) lambda!135683 lt!1548761))))

(declare-fun contains!10710 (List!48784 tuple2!47888) Bool)

(assert (=> b!4335424 (contains!10710 (toList!2741 lm!1707) lt!1548761)))

(assert (=> b!4335424 (= lt!1548761 (tuple2!47889 hash!377 lt!1548760))))

(declare-fun lt!1548766 () Unit!68483)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!226 (List!48784 (_ BitVec 64) List!48783) Unit!68483)

(assert (=> b!4335424 (= lt!1548766 (lemmaGetValueByKeyImpliesContainsTuple!226 (toList!2741 lm!1707) hash!377 lt!1548760))))

(declare-fun apply!11231 (ListLongMap!1391 (_ BitVec 64)) List!48783)

(assert (=> b!4335424 (= lt!1548760 (apply!11231 lm!1707 hash!377))))

(declare-fun b!4335425 () Bool)

(declare-fun res!1778091 () Bool)

(declare-fun e!2697701 () Bool)

(assert (=> b!4335425 (=> (not res!1778091) (not e!2697701))))

(declare-fun lt!1548765 () ListLongMap!1391)

(declare-fun forall!8945 (List!48784 Int) Bool)

(assert (=> b!4335425 (= res!1778091 (forall!8945 (toList!2741 lt!1548765) lambda!135683))))

(declare-fun res!1778088 () Bool)

(assert (=> start!418116 (=> (not res!1778088) (not e!2697700))))

(assert (=> start!418116 (= res!1778088 (forall!8945 (toList!2741 lm!1707) lambda!135683))))

(assert (=> start!418116 e!2697700))

(declare-fun e!2697702 () Bool)

(assert (=> start!418116 e!2697702))

(assert (=> start!418116 true))

(declare-fun e!2697705 () Bool)

(declare-fun inv!64201 (ListLongMap!1391) Bool)

(assert (=> start!418116 (and (inv!64201 lm!1707) e!2697705)))

(declare-fun tp_is_empty!24753 () Bool)

(assert (=> start!418116 tp_is_empty!24753))

(declare-fun tp_is_empty!24755 () Bool)

(assert (=> start!418116 tp_is_empty!24755))

(declare-fun b!4335426 () Bool)

(declare-fun e!2697704 () Bool)

(declare-fun noDuplicateKeys!379 (List!48783) Bool)

(assert (=> b!4335426 (= e!2697704 (noDuplicateKeys!379 lt!1548760))))

(declare-fun e!2697703 () Bool)

(assert (=> b!4335426 e!2697703))

(declare-fun res!1778085 () Bool)

(assert (=> b!4335426 (=> (not res!1778085) (not e!2697703))))

(declare-datatypes ((ListMap!1985 0))(
  ( (ListMap!1986 (toList!2742 List!48783)) )
))
(declare-fun lt!1548771 () ListMap!1985)

(declare-fun lt!1548768 () ListMap!1985)

(assert (=> b!4335426 (= res!1778085 (= lt!1548771 lt!1548768))))

(declare-fun lt!1548772 () ListMap!1985)

(declare-fun addToMapMapFromBucket!87 (List!48783 ListMap!1985) ListMap!1985)

(assert (=> b!4335426 (= lt!1548768 (addToMapMapFromBucket!87 lt!1548764 lt!1548772))))

(assert (=> b!4335426 (= lt!1548771 (addToMapMapFromBucket!87 newBucket!200 lt!1548772))))

(declare-fun extractMap!438 (List!48784) ListMap!1985)

(assert (=> b!4335426 (= lt!1548771 (extractMap!438 (toList!2741 lt!1548765)))))

(assert (=> b!4335426 (= lt!1548772 (extractMap!438 (t!355700 (toList!2741 lm!1707))))))

(declare-fun b!4335427 () Bool)

(declare-fun tp!1328937 () Bool)

(assert (=> b!4335427 (= e!2697705 tp!1328937)))

(declare-fun b!4335428 () Bool)

(declare-fun res!1778089 () Bool)

(assert (=> b!4335428 (=> (not res!1778089) (not e!2697700))))

(declare-fun allKeysSameHash!337 (List!48783 (_ BitVec 64) Hashable!4771) Bool)

(assert (=> b!4335428 (= res!1778089 (allKeysSameHash!337 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4335429 () Bool)

(declare-fun res!1778083 () Bool)

(assert (=> b!4335429 (=> (not res!1778083) (not e!2697700))))

(declare-fun contains!10711 (ListMap!1985 K!10015) Bool)

(assert (=> b!4335429 (= res!1778083 (contains!10711 (extractMap!438 (toList!2741 lm!1707)) key!3918))))

(declare-fun b!4335430 () Bool)

(declare-fun lt!1548769 () tuple2!47888)

(get-info :version)

(assert (=> b!4335430 (= e!2697701 (or (not ((_ is Cons!48660) (toList!2741 lm!1707))) (not (= (_1!27238 (h!54159 (toList!2741 lm!1707))) hash!377)) (= lt!1548765 (ListLongMap!1392 (Cons!48660 lt!1548769 (t!355700 (toList!2741 lm!1707)))))))))

(declare-fun tp!1328938 () Bool)

(declare-fun b!4335431 () Bool)

(assert (=> b!4335431 (= e!2697702 (and tp_is_empty!24753 tp_is_empty!24755 tp!1328938))))

(declare-fun b!4335432 () Bool)

(declare-fun +!429 (ListMap!1985 tuple2!47886) ListMap!1985)

(assert (=> b!4335432 (= e!2697703 (= lt!1548768 (addToMapMapFromBucket!87 lt!1548770 (+!429 lt!1548772 lt!1548762))))))

(declare-fun b!4335433 () Bool)

(assert (=> b!4335433 (= e!2697706 e!2697704)))

(declare-fun res!1778084 () Bool)

(assert (=> b!4335433 (=> res!1778084 e!2697704)))

(assert (=> b!4335433 (= res!1778084 (or (not ((_ is Cons!48660) (toList!2741 lm!1707))) (not (= (_1!27238 (h!54159 (toList!2741 lm!1707))) hash!377))))))

(assert (=> b!4335433 e!2697701))

(declare-fun res!1778087 () Bool)

(assert (=> b!4335433 (=> (not res!1778087) (not e!2697701))))

(assert (=> b!4335433 (= res!1778087 (forall!8945 (toList!2741 lt!1548765) lambda!135683))))

(declare-fun +!430 (ListLongMap!1391 tuple2!47888) ListLongMap!1391)

(assert (=> b!4335433 (= lt!1548765 (+!430 lm!1707 lt!1548769))))

(assert (=> b!4335433 (= lt!1548769 (tuple2!47889 hash!377 newBucket!200))))

(declare-fun lt!1548767 () Unit!68483)

(declare-fun addValidProp!33 (ListLongMap!1391 Int (_ BitVec 64) List!48783) Unit!68483)

(assert (=> b!4335433 (= lt!1548767 (addValidProp!33 lm!1707 lambda!135683 hash!377 newBucket!200))))

(assert (=> b!4335433 (forall!8945 (toList!2741 lm!1707) lambda!135683)))

(declare-fun b!4335434 () Bool)

(declare-fun res!1778082 () Bool)

(assert (=> b!4335434 (=> (not res!1778082) (not e!2697700))))

(declare-fun allKeysSameHashInMap!483 (ListLongMap!1391 Hashable!4771) Bool)

(assert (=> b!4335434 (= res!1778082 (allKeysSameHashInMap!483 lm!1707 hashF!1247))))

(declare-fun b!4335435 () Bool)

(declare-fun res!1778086 () Bool)

(assert (=> b!4335435 (=> (not res!1778086) (not e!2697700))))

(declare-fun contains!10712 (ListLongMap!1391 (_ BitVec 64)) Bool)

(assert (=> b!4335435 (= res!1778086 (contains!10712 lm!1707 hash!377))))

(declare-fun b!4335436 () Bool)

(declare-fun res!1778090 () Bool)

(assert (=> b!4335436 (=> res!1778090 e!2697706)))

(assert (=> b!4335436 (= res!1778090 (not (noDuplicateKeys!379 newBucket!200)))))

(assert (= (and start!418116 res!1778088) b!4335434))

(assert (= (and b!4335434 res!1778082) b!4335423))

(assert (= (and b!4335423 res!1778092) b!4335428))

(assert (= (and b!4335428 res!1778089) b!4335429))

(assert (= (and b!4335429 res!1778083) b!4335435))

(assert (= (and b!4335435 res!1778086) b!4335424))

(assert (= (and b!4335424 (not res!1778093)) b!4335436))

(assert (= (and b!4335436 (not res!1778090)) b!4335433))

(assert (= (and b!4335433 res!1778087) b!4335425))

(assert (= (and b!4335425 res!1778091) b!4335430))

(assert (= (and b!4335433 (not res!1778084)) b!4335426))

(assert (= (and b!4335426 res!1778085) b!4335432))

(assert (= (and start!418116 ((_ is Cons!48659) newBucket!200)) b!4335431))

(assert (= start!418116 b!4335427))

(declare-fun m!4930279 () Bool)

(assert (=> b!4335432 m!4930279))

(assert (=> b!4335432 m!4930279))

(declare-fun m!4930281 () Bool)

(assert (=> b!4335432 m!4930281))

(declare-fun m!4930283 () Bool)

(assert (=> start!418116 m!4930283))

(declare-fun m!4930285 () Bool)

(assert (=> start!418116 m!4930285))

(declare-fun m!4930287 () Bool)

(assert (=> b!4335433 m!4930287))

(declare-fun m!4930289 () Bool)

(assert (=> b!4335433 m!4930289))

(declare-fun m!4930291 () Bool)

(assert (=> b!4335433 m!4930291))

(assert (=> b!4335433 m!4930283))

(declare-fun m!4930293 () Bool)

(assert (=> b!4335426 m!4930293))

(declare-fun m!4930295 () Bool)

(assert (=> b!4335426 m!4930295))

(declare-fun m!4930297 () Bool)

(assert (=> b!4335426 m!4930297))

(declare-fun m!4930299 () Bool)

(assert (=> b!4335426 m!4930299))

(declare-fun m!4930301 () Bool)

(assert (=> b!4335426 m!4930301))

(declare-fun m!4930303 () Bool)

(assert (=> b!4335428 m!4930303))

(declare-fun m!4930305 () Bool)

(assert (=> b!4335429 m!4930305))

(assert (=> b!4335429 m!4930305))

(declare-fun m!4930307 () Bool)

(assert (=> b!4335429 m!4930307))

(assert (=> b!4335425 m!4930287))

(declare-fun m!4930309 () Bool)

(assert (=> b!4335424 m!4930309))

(declare-fun m!4930311 () Bool)

(assert (=> b!4335424 m!4930311))

(declare-fun m!4930313 () Bool)

(assert (=> b!4335424 m!4930313))

(declare-fun m!4930315 () Bool)

(assert (=> b!4335424 m!4930315))

(declare-fun m!4930317 () Bool)

(assert (=> b!4335424 m!4930317))

(declare-fun m!4930319 () Bool)

(assert (=> b!4335436 m!4930319))

(declare-fun m!4930321 () Bool)

(assert (=> b!4335435 m!4930321))

(declare-fun m!4930323 () Bool)

(assert (=> b!4335423 m!4930323))

(declare-fun m!4930325 () Bool)

(assert (=> b!4335434 m!4930325))

(check-sat (not b!4335423) (not b!4335427) (not b!4335432) (not b!4335436) (not b!4335433) tp_is_empty!24755 (not b!4335428) (not b!4335434) (not b!4335435) (not b!4335425) (not b!4335426) tp_is_empty!24753 (not b!4335429) (not b!4335424) (not start!418116) (not b!4335431))
(check-sat)
(get-model)

(declare-fun d!1274377 () Bool)

(assert (=> d!1274377 true))

(assert (=> d!1274377 true))

(declare-fun lambda!135686 () Int)

(declare-fun forall!8947 (List!48783 Int) Bool)

(assert (=> d!1274377 (= (allKeysSameHash!337 newBucket!200 hash!377 hashF!1247) (forall!8947 newBucket!200 lambda!135686))))

(declare-fun bs!608526 () Bool)

(assert (= bs!608526 d!1274377))

(declare-fun m!4930327 () Bool)

(assert (=> bs!608526 m!4930327))

(assert (=> b!4335428 d!1274377))

(declare-fun bs!608536 () Bool)

(declare-fun b!4335566 () Bool)

(assert (= bs!608536 (and b!4335566 d!1274377)))

(declare-fun lambda!135753 () Int)

(assert (=> bs!608536 (not (= lambda!135753 lambda!135686))))

(assert (=> b!4335566 true))

(declare-fun bs!608537 () Bool)

(declare-fun b!4335567 () Bool)

(assert (= bs!608537 (and b!4335567 d!1274377)))

(declare-fun lambda!135754 () Int)

(assert (=> bs!608537 (not (= lambda!135754 lambda!135686))))

(declare-fun bs!608538 () Bool)

(assert (= bs!608538 (and b!4335567 b!4335566)))

(assert (=> bs!608538 (= lambda!135754 lambda!135753)))

(assert (=> b!4335567 true))

(declare-fun lambda!135755 () Int)

(assert (=> bs!608537 (not (= lambda!135755 lambda!135686))))

(declare-fun lt!1548976 () ListMap!1985)

(assert (=> bs!608538 (= (= lt!1548976 lt!1548772) (= lambda!135755 lambda!135753))))

(assert (=> b!4335567 (= (= lt!1548976 lt!1548772) (= lambda!135755 lambda!135754))))

(assert (=> b!4335567 true))

(declare-fun bs!608542 () Bool)

(declare-fun d!1274379 () Bool)

(assert (= bs!608542 (and d!1274379 d!1274377)))

(declare-fun lambda!135759 () Int)

(assert (=> bs!608542 (not (= lambda!135759 lambda!135686))))

(declare-fun bs!608543 () Bool)

(assert (= bs!608543 (and d!1274379 b!4335566)))

(declare-fun lt!1548959 () ListMap!1985)

(assert (=> bs!608543 (= (= lt!1548959 lt!1548772) (= lambda!135759 lambda!135753))))

(declare-fun bs!608544 () Bool)

(assert (= bs!608544 (and d!1274379 b!4335567)))

(assert (=> bs!608544 (= (= lt!1548959 lt!1548772) (= lambda!135759 lambda!135754))))

(assert (=> bs!608544 (= (= lt!1548959 lt!1548976) (= lambda!135759 lambda!135755))))

(assert (=> d!1274379 true))

(declare-fun e!2697791 () ListMap!1985)

(assert (=> b!4335566 (= e!2697791 lt!1548772)))

(declare-fun lt!1548956 () Unit!68483)

(declare-fun call!301288 () Unit!68483)

(assert (=> b!4335566 (= lt!1548956 call!301288)))

(declare-fun call!301286 () Bool)

(assert (=> b!4335566 call!301286))

(declare-fun lt!1548955 () Unit!68483)

(assert (=> b!4335566 (= lt!1548955 lt!1548956)))

(declare-fun call!301287 () Bool)

(assert (=> b!4335566 call!301287))

(declare-fun lt!1548971 () Unit!68483)

(declare-fun Unit!68498 () Unit!68483)

(assert (=> b!4335566 (= lt!1548971 Unit!68498)))

(assert (=> b!4335567 (= e!2697791 lt!1548976)))

(declare-fun lt!1548961 () ListMap!1985)

(assert (=> b!4335567 (= lt!1548961 (+!429 lt!1548772 (h!54158 newBucket!200)))))

(assert (=> b!4335567 (= lt!1548976 (addToMapMapFromBucket!87 (t!355699 newBucket!200) (+!429 lt!1548772 (h!54158 newBucket!200))))))

(declare-fun lt!1548954 () Unit!68483)

(assert (=> b!4335567 (= lt!1548954 call!301288)))

(assert (=> b!4335567 call!301287))

(declare-fun lt!1548952 () Unit!68483)

(assert (=> b!4335567 (= lt!1548952 lt!1548954)))

(assert (=> b!4335567 call!301286))

(declare-fun lt!1548975 () Unit!68483)

(declare-fun Unit!68500 () Unit!68483)

(assert (=> b!4335567 (= lt!1548975 Unit!68500)))

(assert (=> b!4335567 (forall!8947 (t!355699 newBucket!200) lambda!135755)))

(declare-fun lt!1548966 () Unit!68483)

(declare-fun Unit!68501 () Unit!68483)

(assert (=> b!4335567 (= lt!1548966 Unit!68501)))

(declare-fun lt!1548957 () Unit!68483)

(declare-fun Unit!68502 () Unit!68483)

(assert (=> b!4335567 (= lt!1548957 Unit!68502)))

(declare-fun lt!1548958 () Unit!68483)

(declare-fun forallContained!1597 (List!48783 Int tuple2!47886) Unit!68483)

(assert (=> b!4335567 (= lt!1548958 (forallContained!1597 (toList!2742 lt!1548961) lambda!135755 (h!54158 newBucket!200)))))

(assert (=> b!4335567 (contains!10711 lt!1548961 (_1!27237 (h!54158 newBucket!200)))))

(declare-fun lt!1548953 () Unit!68483)

(declare-fun Unit!68503 () Unit!68483)

(assert (=> b!4335567 (= lt!1548953 Unit!68503)))

(assert (=> b!4335567 (contains!10711 lt!1548976 (_1!27237 (h!54158 newBucket!200)))))

(declare-fun lt!1548972 () Unit!68483)

(declare-fun Unit!68504 () Unit!68483)

(assert (=> b!4335567 (= lt!1548972 Unit!68504)))

(assert (=> b!4335567 (forall!8947 newBucket!200 lambda!135755)))

(declare-fun lt!1548962 () Unit!68483)

(declare-fun Unit!68505 () Unit!68483)

(assert (=> b!4335567 (= lt!1548962 Unit!68505)))

(assert (=> b!4335567 (forall!8947 (toList!2742 lt!1548961) lambda!135755)))

(declare-fun lt!1548974 () Unit!68483)

(declare-fun Unit!68506 () Unit!68483)

(assert (=> b!4335567 (= lt!1548974 Unit!68506)))

(declare-fun lt!1548965 () Unit!68483)

(declare-fun Unit!68507 () Unit!68483)

(assert (=> b!4335567 (= lt!1548965 Unit!68507)))

(declare-fun lt!1548968 () Unit!68483)

(declare-fun addForallContainsKeyThenBeforeAdding!19 (ListMap!1985 ListMap!1985 K!10015 V!10261) Unit!68483)

(assert (=> b!4335567 (= lt!1548968 (addForallContainsKeyThenBeforeAdding!19 lt!1548772 lt!1548976 (_1!27237 (h!54158 newBucket!200)) (_2!27237 (h!54158 newBucket!200))))))

(assert (=> b!4335567 (forall!8947 (toList!2742 lt!1548772) lambda!135755)))

(declare-fun lt!1548969 () Unit!68483)

(assert (=> b!4335567 (= lt!1548969 lt!1548968)))

(assert (=> b!4335567 (forall!8947 (toList!2742 lt!1548772) lambda!135755)))

(declare-fun lt!1548973 () Unit!68483)

(declare-fun Unit!68508 () Unit!68483)

(assert (=> b!4335567 (= lt!1548973 Unit!68508)))

(declare-fun res!1778162 () Bool)

(assert (=> b!4335567 (= res!1778162 (forall!8947 newBucket!200 lambda!135755))))

(declare-fun e!2697790 () Bool)

(assert (=> b!4335567 (=> (not res!1778162) (not e!2697790))))

(assert (=> b!4335567 e!2697790))

(declare-fun lt!1548970 () Unit!68483)

(declare-fun Unit!68509 () Unit!68483)

(assert (=> b!4335567 (= lt!1548970 Unit!68509)))

(declare-fun b!4335568 () Bool)

(declare-fun e!2697788 () Bool)

(declare-fun invariantList!626 (List!48783) Bool)

(assert (=> b!4335568 (= e!2697788 (invariantList!626 (toList!2742 lt!1548959)))))

(declare-fun b!4335569 () Bool)

(declare-fun res!1778161 () Bool)

(assert (=> b!4335569 (=> (not res!1778161) (not e!2697788))))

(assert (=> b!4335569 (= res!1778161 (forall!8947 (toList!2742 lt!1548772) lambda!135759))))

(declare-fun c!737270 () Bool)

(declare-fun bm!301282 () Bool)

(assert (=> bm!301282 (= call!301286 (forall!8947 (ite c!737270 (toList!2742 lt!1548772) (toList!2742 lt!1548961)) (ite c!737270 lambda!135753 lambda!135755)))))

(declare-fun b!4335570 () Bool)

(assert (=> b!4335570 (= e!2697790 (forall!8947 (toList!2742 lt!1548772) lambda!135755))))

(declare-fun bm!301283 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!19 (ListMap!1985) Unit!68483)

(assert (=> bm!301283 (= call!301288 (lemmaContainsAllItsOwnKeys!19 lt!1548772))))

(assert (=> d!1274379 e!2697788))

(declare-fun res!1778164 () Bool)

(assert (=> d!1274379 (=> (not res!1778164) (not e!2697788))))

(assert (=> d!1274379 (= res!1778164 (forall!8947 newBucket!200 lambda!135759))))

(assert (=> d!1274379 (= lt!1548959 e!2697791)))

(assert (=> d!1274379 (= c!737270 ((_ is Nil!48659) newBucket!200))))

(assert (=> d!1274379 (noDuplicateKeys!379 newBucket!200)))

(assert (=> d!1274379 (= (addToMapMapFromBucket!87 newBucket!200 lt!1548772) lt!1548959)))

(declare-fun bm!301281 () Bool)

(assert (=> bm!301281 (= call!301287 (forall!8947 (toList!2742 lt!1548772) (ite c!737270 lambda!135753 lambda!135754)))))

(assert (= (and d!1274379 c!737270) b!4335566))

(assert (= (and d!1274379 (not c!737270)) b!4335567))

(assert (= (and b!4335567 res!1778162) b!4335570))

(assert (= (or b!4335566 b!4335567) bm!301283))

(assert (= (or b!4335566 b!4335567) bm!301282))

(assert (= (or b!4335566 b!4335567) bm!301281))

(assert (= (and d!1274379 res!1778164) b!4335569))

(assert (= (and b!4335569 res!1778161) b!4335568))

(declare-fun m!4930467 () Bool)

(assert (=> bm!301282 m!4930467))

(declare-fun m!4930469 () Bool)

(assert (=> bm!301281 m!4930469))

(declare-fun m!4930471 () Bool)

(assert (=> d!1274379 m!4930471))

(assert (=> d!1274379 m!4930319))

(declare-fun m!4930473 () Bool)

(assert (=> b!4335568 m!4930473))

(declare-fun m!4930475 () Bool)

(assert (=> bm!301283 m!4930475))

(declare-fun m!4930477 () Bool)

(assert (=> b!4335569 m!4930477))

(declare-fun m!4930479 () Bool)

(assert (=> b!4335567 m!4930479))

(declare-fun m!4930481 () Bool)

(assert (=> b!4335567 m!4930481))

(declare-fun m!4930483 () Bool)

(assert (=> b!4335567 m!4930483))

(declare-fun m!4930485 () Bool)

(assert (=> b!4335567 m!4930485))

(declare-fun m!4930487 () Bool)

(assert (=> b!4335567 m!4930487))

(declare-fun m!4930489 () Bool)

(assert (=> b!4335567 m!4930489))

(declare-fun m!4930491 () Bool)

(assert (=> b!4335567 m!4930491))

(assert (=> b!4335567 m!4930485))

(declare-fun m!4930493 () Bool)

(assert (=> b!4335567 m!4930493))

(declare-fun m!4930495 () Bool)

(assert (=> b!4335567 m!4930495))

(assert (=> b!4335567 m!4930493))

(assert (=> b!4335567 m!4930489))

(declare-fun m!4930497 () Bool)

(assert (=> b!4335567 m!4930497))

(assert (=> b!4335570 m!4930493))

(assert (=> b!4335426 d!1274379))

(declare-fun bs!608592 () Bool)

(declare-fun d!1274417 () Bool)

(assert (= bs!608592 (and d!1274417 start!418116)))

(declare-fun lambda!135772 () Int)

(assert (=> bs!608592 (= lambda!135772 lambda!135683)))

(declare-fun lt!1549023 () ListMap!1985)

(assert (=> d!1274417 (invariantList!626 (toList!2742 lt!1549023))))

(declare-fun e!2697805 () ListMap!1985)

(assert (=> d!1274417 (= lt!1549023 e!2697805)))

(declare-fun c!737278 () Bool)

(assert (=> d!1274417 (= c!737278 ((_ is Cons!48660) (toList!2741 lt!1548765)))))

(assert (=> d!1274417 (forall!8945 (toList!2741 lt!1548765) lambda!135772)))

(assert (=> d!1274417 (= (extractMap!438 (toList!2741 lt!1548765)) lt!1549023)))

(declare-fun b!4335597 () Bool)

(assert (=> b!4335597 (= e!2697805 (addToMapMapFromBucket!87 (_2!27238 (h!54159 (toList!2741 lt!1548765))) (extractMap!438 (t!355700 (toList!2741 lt!1548765)))))))

(declare-fun b!4335598 () Bool)

(assert (=> b!4335598 (= e!2697805 (ListMap!1986 Nil!48659))))

(assert (= (and d!1274417 c!737278) b!4335597))

(assert (= (and d!1274417 (not c!737278)) b!4335598))

(declare-fun m!4930551 () Bool)

(assert (=> d!1274417 m!4930551))

(declare-fun m!4930553 () Bool)

(assert (=> d!1274417 m!4930553))

(declare-fun m!4930555 () Bool)

(assert (=> b!4335597 m!4930555))

(assert (=> b!4335597 m!4930555))

(declare-fun m!4930557 () Bool)

(assert (=> b!4335597 m!4930557))

(assert (=> b!4335426 d!1274417))

(declare-fun d!1274427 () Bool)

(declare-fun res!1778177 () Bool)

(declare-fun e!2697812 () Bool)

(assert (=> d!1274427 (=> res!1778177 e!2697812)))

(assert (=> d!1274427 (= res!1778177 (not ((_ is Cons!48659) lt!1548760)))))

(assert (=> d!1274427 (= (noDuplicateKeys!379 lt!1548760) e!2697812)))

(declare-fun b!4335607 () Bool)

(declare-fun e!2697813 () Bool)

(assert (=> b!4335607 (= e!2697812 e!2697813)))

(declare-fun res!1778178 () Bool)

(assert (=> b!4335607 (=> (not res!1778178) (not e!2697813))))

(declare-fun containsKey!526 (List!48783 K!10015) Bool)

(assert (=> b!4335607 (= res!1778178 (not (containsKey!526 (t!355699 lt!1548760) (_1!27237 (h!54158 lt!1548760)))))))

(declare-fun b!4335608 () Bool)

(assert (=> b!4335608 (= e!2697813 (noDuplicateKeys!379 (t!355699 lt!1548760)))))

(assert (= (and d!1274427 (not res!1778177)) b!4335607))

(assert (= (and b!4335607 res!1778178) b!4335608))

(declare-fun m!4930593 () Bool)

(assert (=> b!4335607 m!4930593))

(declare-fun m!4930595 () Bool)

(assert (=> b!4335608 m!4930595))

(assert (=> b!4335426 d!1274427))

(declare-fun bs!608594 () Bool)

(declare-fun d!1274431 () Bool)

(assert (= bs!608594 (and d!1274431 start!418116)))

(declare-fun lambda!135773 () Int)

(assert (=> bs!608594 (= lambda!135773 lambda!135683)))

(declare-fun bs!608595 () Bool)

(assert (= bs!608595 (and d!1274431 d!1274417)))

(assert (=> bs!608595 (= lambda!135773 lambda!135772)))

(declare-fun lt!1549024 () ListMap!1985)

(assert (=> d!1274431 (invariantList!626 (toList!2742 lt!1549024))))

(declare-fun e!2697817 () ListMap!1985)

(assert (=> d!1274431 (= lt!1549024 e!2697817)))

(declare-fun c!737279 () Bool)

(assert (=> d!1274431 (= c!737279 ((_ is Cons!48660) (t!355700 (toList!2741 lm!1707))))))

(assert (=> d!1274431 (forall!8945 (t!355700 (toList!2741 lm!1707)) lambda!135773)))

(assert (=> d!1274431 (= (extractMap!438 (t!355700 (toList!2741 lm!1707))) lt!1549024)))

(declare-fun b!4335614 () Bool)

(assert (=> b!4335614 (= e!2697817 (addToMapMapFromBucket!87 (_2!27238 (h!54159 (t!355700 (toList!2741 lm!1707)))) (extractMap!438 (t!355700 (t!355700 (toList!2741 lm!1707))))))))

(declare-fun b!4335615 () Bool)

(assert (=> b!4335615 (= e!2697817 (ListMap!1986 Nil!48659))))

(assert (= (and d!1274431 c!737279) b!4335614))

(assert (= (and d!1274431 (not c!737279)) b!4335615))

(declare-fun m!4930597 () Bool)

(assert (=> d!1274431 m!4930597))

(declare-fun m!4930599 () Bool)

(assert (=> d!1274431 m!4930599))

(declare-fun m!4930603 () Bool)

(assert (=> b!4335614 m!4930603))

(assert (=> b!4335614 m!4930603))

(declare-fun m!4930605 () Bool)

(assert (=> b!4335614 m!4930605))

(assert (=> b!4335426 d!1274431))

(declare-fun bs!608600 () Bool)

(declare-fun b!4335617 () Bool)

(assert (= bs!608600 (and b!4335617 d!1274379)))

(declare-fun lambda!135774 () Int)

(assert (=> bs!608600 (= (= lt!1548772 lt!1548959) (= lambda!135774 lambda!135759))))

(declare-fun bs!608601 () Bool)

(assert (= bs!608601 (and b!4335617 b!4335566)))

(assert (=> bs!608601 (= lambda!135774 lambda!135753)))

(declare-fun bs!608602 () Bool)

(assert (= bs!608602 (and b!4335617 d!1274377)))

(assert (=> bs!608602 (not (= lambda!135774 lambda!135686))))

(declare-fun bs!608603 () Bool)

(assert (= bs!608603 (and b!4335617 b!4335567)))

(assert (=> bs!608603 (= lambda!135774 lambda!135754)))

(assert (=> bs!608603 (= (= lt!1548772 lt!1548976) (= lambda!135774 lambda!135755))))

(assert (=> b!4335617 true))

(declare-fun bs!608604 () Bool)

(declare-fun b!4335618 () Bool)

(assert (= bs!608604 (and b!4335618 d!1274379)))

(declare-fun lambda!135775 () Int)

(assert (=> bs!608604 (= (= lt!1548772 lt!1548959) (= lambda!135775 lambda!135759))))

(declare-fun bs!608605 () Bool)

(assert (= bs!608605 (and b!4335618 b!4335617)))

(assert (=> bs!608605 (= lambda!135775 lambda!135774)))

(declare-fun bs!608606 () Bool)

(assert (= bs!608606 (and b!4335618 b!4335566)))

(assert (=> bs!608606 (= lambda!135775 lambda!135753)))

(declare-fun bs!608607 () Bool)

(assert (= bs!608607 (and b!4335618 d!1274377)))

(assert (=> bs!608607 (not (= lambda!135775 lambda!135686))))

(declare-fun bs!608608 () Bool)

(assert (= bs!608608 (and b!4335618 b!4335567)))

(assert (=> bs!608608 (= lambda!135775 lambda!135754)))

(assert (=> bs!608608 (= (= lt!1548772 lt!1548976) (= lambda!135775 lambda!135755))))

(assert (=> b!4335618 true))

(declare-fun lt!1549045 () ListMap!1985)

(declare-fun lambda!135776 () Int)

(assert (=> b!4335618 (= (= lt!1549045 lt!1548772) (= lambda!135776 lambda!135775))))

(assert (=> bs!608604 (= (= lt!1549045 lt!1548959) (= lambda!135776 lambda!135759))))

(assert (=> bs!608605 (= (= lt!1549045 lt!1548772) (= lambda!135776 lambda!135774))))

(assert (=> bs!608606 (= (= lt!1549045 lt!1548772) (= lambda!135776 lambda!135753))))

(assert (=> bs!608607 (not (= lambda!135776 lambda!135686))))

(assert (=> bs!608608 (= (= lt!1549045 lt!1548772) (= lambda!135776 lambda!135754))))

(assert (=> bs!608608 (= (= lt!1549045 lt!1548976) (= lambda!135776 lambda!135755))))

(assert (=> b!4335618 true))

(declare-fun bs!608609 () Bool)

(declare-fun d!1274437 () Bool)

(assert (= bs!608609 (and d!1274437 b!4335618)))

(declare-fun lt!1549032 () ListMap!1985)

(declare-fun lambda!135777 () Int)

(assert (=> bs!608609 (= (= lt!1549032 lt!1548772) (= lambda!135777 lambda!135775))))

(declare-fun bs!608610 () Bool)

(assert (= bs!608610 (and d!1274437 d!1274379)))

(assert (=> bs!608610 (= (= lt!1549032 lt!1548959) (= lambda!135777 lambda!135759))))

(declare-fun bs!608611 () Bool)

(assert (= bs!608611 (and d!1274437 b!4335617)))

(assert (=> bs!608611 (= (= lt!1549032 lt!1548772) (= lambda!135777 lambda!135774))))

(declare-fun bs!608612 () Bool)

(assert (= bs!608612 (and d!1274437 b!4335566)))

(assert (=> bs!608612 (= (= lt!1549032 lt!1548772) (= lambda!135777 lambda!135753))))

(assert (=> bs!608609 (= (= lt!1549032 lt!1549045) (= lambda!135777 lambda!135776))))

(declare-fun bs!608613 () Bool)

(assert (= bs!608613 (and d!1274437 d!1274377)))

(assert (=> bs!608613 (not (= lambda!135777 lambda!135686))))

(declare-fun bs!608614 () Bool)

(assert (= bs!608614 (and d!1274437 b!4335567)))

(assert (=> bs!608614 (= (= lt!1549032 lt!1548772) (= lambda!135777 lambda!135754))))

(assert (=> bs!608614 (= (= lt!1549032 lt!1548976) (= lambda!135777 lambda!135755))))

(assert (=> d!1274437 true))

(declare-fun e!2697821 () ListMap!1985)

(assert (=> b!4335617 (= e!2697821 lt!1548772)))

(declare-fun lt!1549029 () Unit!68483)

(declare-fun call!301297 () Unit!68483)

(assert (=> b!4335617 (= lt!1549029 call!301297)))

(declare-fun call!301295 () Bool)

(assert (=> b!4335617 call!301295))

(declare-fun lt!1549028 () Unit!68483)

(assert (=> b!4335617 (= lt!1549028 lt!1549029)))

(declare-fun call!301296 () Bool)

(assert (=> b!4335617 call!301296))

(declare-fun lt!1549040 () Unit!68483)

(declare-fun Unit!68521 () Unit!68483)

(assert (=> b!4335617 (= lt!1549040 Unit!68521)))

(assert (=> b!4335618 (= e!2697821 lt!1549045)))

(declare-fun lt!1549033 () ListMap!1985)

(assert (=> b!4335618 (= lt!1549033 (+!429 lt!1548772 (h!54158 lt!1548764)))))

(assert (=> b!4335618 (= lt!1549045 (addToMapMapFromBucket!87 (t!355699 lt!1548764) (+!429 lt!1548772 (h!54158 lt!1548764))))))

(declare-fun lt!1549027 () Unit!68483)

(assert (=> b!4335618 (= lt!1549027 call!301297)))

(assert (=> b!4335618 call!301296))

(declare-fun lt!1549025 () Unit!68483)

(assert (=> b!4335618 (= lt!1549025 lt!1549027)))

(assert (=> b!4335618 call!301295))

(declare-fun lt!1549044 () Unit!68483)

(declare-fun Unit!68522 () Unit!68483)

(assert (=> b!4335618 (= lt!1549044 Unit!68522)))

(assert (=> b!4335618 (forall!8947 (t!355699 lt!1548764) lambda!135776)))

(declare-fun lt!1549036 () Unit!68483)

(declare-fun Unit!68523 () Unit!68483)

(assert (=> b!4335618 (= lt!1549036 Unit!68523)))

(declare-fun lt!1549030 () Unit!68483)

(declare-fun Unit!68524 () Unit!68483)

(assert (=> b!4335618 (= lt!1549030 Unit!68524)))

(declare-fun lt!1549031 () Unit!68483)

(assert (=> b!4335618 (= lt!1549031 (forallContained!1597 (toList!2742 lt!1549033) lambda!135776 (h!54158 lt!1548764)))))

(assert (=> b!4335618 (contains!10711 lt!1549033 (_1!27237 (h!54158 lt!1548764)))))

(declare-fun lt!1549026 () Unit!68483)

(declare-fun Unit!68525 () Unit!68483)

(assert (=> b!4335618 (= lt!1549026 Unit!68525)))

(assert (=> b!4335618 (contains!10711 lt!1549045 (_1!27237 (h!54158 lt!1548764)))))

(declare-fun lt!1549041 () Unit!68483)

(declare-fun Unit!68526 () Unit!68483)

(assert (=> b!4335618 (= lt!1549041 Unit!68526)))

(assert (=> b!4335618 (forall!8947 lt!1548764 lambda!135776)))

(declare-fun lt!1549034 () Unit!68483)

(declare-fun Unit!68527 () Unit!68483)

(assert (=> b!4335618 (= lt!1549034 Unit!68527)))

(assert (=> b!4335618 (forall!8947 (toList!2742 lt!1549033) lambda!135776)))

(declare-fun lt!1549043 () Unit!68483)

(declare-fun Unit!68528 () Unit!68483)

(assert (=> b!4335618 (= lt!1549043 Unit!68528)))

(declare-fun lt!1549035 () Unit!68483)

(declare-fun Unit!68529 () Unit!68483)

(assert (=> b!4335618 (= lt!1549035 Unit!68529)))

(declare-fun lt!1549037 () Unit!68483)

(assert (=> b!4335618 (= lt!1549037 (addForallContainsKeyThenBeforeAdding!19 lt!1548772 lt!1549045 (_1!27237 (h!54158 lt!1548764)) (_2!27237 (h!54158 lt!1548764))))))

(assert (=> b!4335618 (forall!8947 (toList!2742 lt!1548772) lambda!135776)))

(declare-fun lt!1549038 () Unit!68483)

(assert (=> b!4335618 (= lt!1549038 lt!1549037)))

(assert (=> b!4335618 (forall!8947 (toList!2742 lt!1548772) lambda!135776)))

(declare-fun lt!1549042 () Unit!68483)

(declare-fun Unit!68530 () Unit!68483)

(assert (=> b!4335618 (= lt!1549042 Unit!68530)))

(declare-fun res!1778180 () Bool)

(assert (=> b!4335618 (= res!1778180 (forall!8947 lt!1548764 lambda!135776))))

(declare-fun e!2697820 () Bool)

(assert (=> b!4335618 (=> (not res!1778180) (not e!2697820))))

(assert (=> b!4335618 e!2697820))

(declare-fun lt!1549039 () Unit!68483)

(declare-fun Unit!68531 () Unit!68483)

(assert (=> b!4335618 (= lt!1549039 Unit!68531)))

(declare-fun b!4335619 () Bool)

(declare-fun e!2697819 () Bool)

(assert (=> b!4335619 (= e!2697819 (invariantList!626 (toList!2742 lt!1549032)))))

(declare-fun b!4335620 () Bool)

(declare-fun res!1778179 () Bool)

(assert (=> b!4335620 (=> (not res!1778179) (not e!2697819))))

(assert (=> b!4335620 (= res!1778179 (forall!8947 (toList!2742 lt!1548772) lambda!135777))))

(declare-fun bm!301291 () Bool)

(declare-fun c!737280 () Bool)

(assert (=> bm!301291 (= call!301295 (forall!8947 (ite c!737280 (toList!2742 lt!1548772) (toList!2742 lt!1549033)) (ite c!737280 lambda!135774 lambda!135776)))))

(declare-fun b!4335621 () Bool)

(assert (=> b!4335621 (= e!2697820 (forall!8947 (toList!2742 lt!1548772) lambda!135776))))

(declare-fun bm!301292 () Bool)

(assert (=> bm!301292 (= call!301297 (lemmaContainsAllItsOwnKeys!19 lt!1548772))))

(assert (=> d!1274437 e!2697819))

(declare-fun res!1778181 () Bool)

(assert (=> d!1274437 (=> (not res!1778181) (not e!2697819))))

(assert (=> d!1274437 (= res!1778181 (forall!8947 lt!1548764 lambda!135777))))

(assert (=> d!1274437 (= lt!1549032 e!2697821)))

(assert (=> d!1274437 (= c!737280 ((_ is Nil!48659) lt!1548764))))

(assert (=> d!1274437 (noDuplicateKeys!379 lt!1548764)))

(assert (=> d!1274437 (= (addToMapMapFromBucket!87 lt!1548764 lt!1548772) lt!1549032)))

(declare-fun bm!301290 () Bool)

(assert (=> bm!301290 (= call!301296 (forall!8947 (toList!2742 lt!1548772) (ite c!737280 lambda!135774 lambda!135775)))))

(assert (= (and d!1274437 c!737280) b!4335617))

(assert (= (and d!1274437 (not c!737280)) b!4335618))

(assert (= (and b!4335618 res!1778180) b!4335621))

(assert (= (or b!4335617 b!4335618) bm!301292))

(assert (= (or b!4335617 b!4335618) bm!301291))

(assert (= (or b!4335617 b!4335618) bm!301290))

(assert (= (and d!1274437 res!1778181) b!4335620))

(assert (= (and b!4335620 res!1778179) b!4335619))

(declare-fun m!4930613 () Bool)

(assert (=> bm!301291 m!4930613))

(declare-fun m!4930615 () Bool)

(assert (=> bm!301290 m!4930615))

(declare-fun m!4930617 () Bool)

(assert (=> d!1274437 m!4930617))

(declare-fun m!4930619 () Bool)

(assert (=> d!1274437 m!4930619))

(declare-fun m!4930621 () Bool)

(assert (=> b!4335619 m!4930621))

(assert (=> bm!301292 m!4930475))

(declare-fun m!4930623 () Bool)

(assert (=> b!4335620 m!4930623))

(declare-fun m!4930625 () Bool)

(assert (=> b!4335618 m!4930625))

(declare-fun m!4930627 () Bool)

(assert (=> b!4335618 m!4930627))

(declare-fun m!4930629 () Bool)

(assert (=> b!4335618 m!4930629))

(declare-fun m!4930631 () Bool)

(assert (=> b!4335618 m!4930631))

(declare-fun m!4930633 () Bool)

(assert (=> b!4335618 m!4930633))

(declare-fun m!4930635 () Bool)

(assert (=> b!4335618 m!4930635))

(declare-fun m!4930637 () Bool)

(assert (=> b!4335618 m!4930637))

(assert (=> b!4335618 m!4930631))

(declare-fun m!4930639 () Bool)

(assert (=> b!4335618 m!4930639))

(declare-fun m!4930641 () Bool)

(assert (=> b!4335618 m!4930641))

(assert (=> b!4335618 m!4930639))

(assert (=> b!4335618 m!4930635))

(declare-fun m!4930643 () Bool)

(assert (=> b!4335618 m!4930643))

(assert (=> b!4335621 m!4930639))

(assert (=> b!4335426 d!1274437))

(declare-fun d!1274443 () Bool)

(declare-fun res!1778182 () Bool)

(declare-fun e!2697822 () Bool)

(assert (=> d!1274443 (=> res!1778182 e!2697822)))

(assert (=> d!1274443 (= res!1778182 (not ((_ is Cons!48659) newBucket!200)))))

(assert (=> d!1274443 (= (noDuplicateKeys!379 newBucket!200) e!2697822)))

(declare-fun b!4335622 () Bool)

(declare-fun e!2697823 () Bool)

(assert (=> b!4335622 (= e!2697822 e!2697823)))

(declare-fun res!1778183 () Bool)

(assert (=> b!4335622 (=> (not res!1778183) (not e!2697823))))

(assert (=> b!4335622 (= res!1778183 (not (containsKey!526 (t!355699 newBucket!200) (_1!27237 (h!54158 newBucket!200)))))))

(declare-fun b!4335623 () Bool)

(assert (=> b!4335623 (= e!2697823 (noDuplicateKeys!379 (t!355699 newBucket!200)))))

(assert (= (and d!1274443 (not res!1778182)) b!4335622))

(assert (= (and b!4335622 res!1778183) b!4335623))

(declare-fun m!4930645 () Bool)

(assert (=> b!4335622 m!4930645))

(declare-fun m!4930647 () Bool)

(assert (=> b!4335623 m!4930647))

(assert (=> b!4335436 d!1274443))

(declare-fun d!1274445 () Bool)

(declare-fun res!1778188 () Bool)

(declare-fun e!2697828 () Bool)

(assert (=> d!1274445 (=> res!1778188 e!2697828)))

(assert (=> d!1274445 (= res!1778188 ((_ is Nil!48660) (toList!2741 lt!1548765)))))

(assert (=> d!1274445 (= (forall!8945 (toList!2741 lt!1548765) lambda!135683) e!2697828)))

(declare-fun b!4335628 () Bool)

(declare-fun e!2697829 () Bool)

(assert (=> b!4335628 (= e!2697828 e!2697829)))

(declare-fun res!1778189 () Bool)

(assert (=> b!4335628 (=> (not res!1778189) (not e!2697829))))

(declare-fun dynLambda!20565 (Int tuple2!47888) Bool)

(assert (=> b!4335628 (= res!1778189 (dynLambda!20565 lambda!135683 (h!54159 (toList!2741 lt!1548765))))))

(declare-fun b!4335629 () Bool)

(assert (=> b!4335629 (= e!2697829 (forall!8945 (t!355700 (toList!2741 lt!1548765)) lambda!135683))))

(assert (= (and d!1274445 (not res!1778188)) b!4335628))

(assert (= (and b!4335628 res!1778189) b!4335629))

(declare-fun b_lambda!128275 () Bool)

(assert (=> (not b_lambda!128275) (not b!4335628)))

(declare-fun m!4930649 () Bool)

(assert (=> b!4335628 m!4930649))

(declare-fun m!4930651 () Bool)

(assert (=> b!4335629 m!4930651))

(assert (=> b!4335425 d!1274445))

(declare-fun d!1274447 () Bool)

(declare-fun e!2697835 () Bool)

(assert (=> d!1274447 e!2697835))

(declare-fun res!1778192 () Bool)

(assert (=> d!1274447 (=> res!1778192 e!2697835)))

(declare-fun lt!1549057 () Bool)

(assert (=> d!1274447 (= res!1778192 (not lt!1549057))))

(declare-fun lt!1549056 () Bool)

(assert (=> d!1274447 (= lt!1549057 lt!1549056)))

(declare-fun lt!1549055 () Unit!68483)

(declare-fun e!2697834 () Unit!68483)

(assert (=> d!1274447 (= lt!1549055 e!2697834)))

(declare-fun c!737283 () Bool)

(assert (=> d!1274447 (= c!737283 lt!1549056)))

(declare-fun containsKey!527 (List!48784 (_ BitVec 64)) Bool)

(assert (=> d!1274447 (= lt!1549056 (containsKey!527 (toList!2741 lm!1707) hash!377))))

(assert (=> d!1274447 (= (contains!10712 lm!1707 hash!377) lt!1549057)))

(declare-fun b!4335636 () Bool)

(declare-fun lt!1549054 () Unit!68483)

(assert (=> b!4335636 (= e!2697834 lt!1549054)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!263 (List!48784 (_ BitVec 64)) Unit!68483)

(assert (=> b!4335636 (= lt!1549054 (lemmaContainsKeyImpliesGetValueByKeyDefined!263 (toList!2741 lm!1707) hash!377))))

(declare-datatypes ((Option!10364 0))(
  ( (None!10363) (Some!10363 (v!43099 List!48783)) )
))
(declare-fun isDefined!7660 (Option!10364) Bool)

(declare-fun getValueByKey!350 (List!48784 (_ BitVec 64)) Option!10364)

(assert (=> b!4335636 (isDefined!7660 (getValueByKey!350 (toList!2741 lm!1707) hash!377))))

(declare-fun b!4335637 () Bool)

(declare-fun Unit!68532 () Unit!68483)

(assert (=> b!4335637 (= e!2697834 Unit!68532)))

(declare-fun b!4335638 () Bool)

(assert (=> b!4335638 (= e!2697835 (isDefined!7660 (getValueByKey!350 (toList!2741 lm!1707) hash!377)))))

(assert (= (and d!1274447 c!737283) b!4335636))

(assert (= (and d!1274447 (not c!737283)) b!4335637))

(assert (= (and d!1274447 (not res!1778192)) b!4335638))

(declare-fun m!4930653 () Bool)

(assert (=> d!1274447 m!4930653))

(declare-fun m!4930655 () Bool)

(assert (=> b!4335636 m!4930655))

(declare-fun m!4930657 () Bool)

(assert (=> b!4335636 m!4930657))

(assert (=> b!4335636 m!4930657))

(declare-fun m!4930659 () Bool)

(assert (=> b!4335636 m!4930659))

(assert (=> b!4335638 m!4930657))

(assert (=> b!4335638 m!4930657))

(assert (=> b!4335638 m!4930659))

(assert (=> b!4335435 d!1274447))

(declare-fun d!1274449 () Bool)

(assert (=> d!1274449 (dynLambda!20565 lambda!135683 lt!1548761)))

(declare-fun lt!1549060 () Unit!68483)

(declare-fun choose!26532 (List!48784 Int tuple2!47888) Unit!68483)

(assert (=> d!1274449 (= lt!1549060 (choose!26532 (toList!2741 lm!1707) lambda!135683 lt!1548761))))

(declare-fun e!2697838 () Bool)

(assert (=> d!1274449 e!2697838))

(declare-fun res!1778195 () Bool)

(assert (=> d!1274449 (=> (not res!1778195) (not e!2697838))))

(assert (=> d!1274449 (= res!1778195 (forall!8945 (toList!2741 lm!1707) lambda!135683))))

(assert (=> d!1274449 (= (forallContained!1595 (toList!2741 lm!1707) lambda!135683 lt!1548761) lt!1549060)))

(declare-fun b!4335641 () Bool)

(assert (=> b!4335641 (= e!2697838 (contains!10710 (toList!2741 lm!1707) lt!1548761))))

(assert (= (and d!1274449 res!1778195) b!4335641))

(declare-fun b_lambda!128277 () Bool)

(assert (=> (not b_lambda!128277) (not d!1274449)))

(declare-fun m!4930661 () Bool)

(assert (=> d!1274449 m!4930661))

(declare-fun m!4930663 () Bool)

(assert (=> d!1274449 m!4930663))

(assert (=> d!1274449 m!4930283))

(assert (=> b!4335641 m!4930309))

(assert (=> b!4335424 d!1274449))

(declare-fun d!1274451 () Bool)

(assert (=> d!1274451 (contains!10710 (toList!2741 lm!1707) (tuple2!47889 hash!377 lt!1548760))))

(declare-fun lt!1549063 () Unit!68483)

(declare-fun choose!26533 (List!48784 (_ BitVec 64) List!48783) Unit!68483)

(assert (=> d!1274451 (= lt!1549063 (choose!26533 (toList!2741 lm!1707) hash!377 lt!1548760))))

(declare-fun e!2697841 () Bool)

(assert (=> d!1274451 e!2697841))

(declare-fun res!1778198 () Bool)

(assert (=> d!1274451 (=> (not res!1778198) (not e!2697841))))

(declare-fun isStrictlySorted!52 (List!48784) Bool)

(assert (=> d!1274451 (= res!1778198 (isStrictlySorted!52 (toList!2741 lm!1707)))))

(assert (=> d!1274451 (= (lemmaGetValueByKeyImpliesContainsTuple!226 (toList!2741 lm!1707) hash!377 lt!1548760) lt!1549063)))

(declare-fun b!4335644 () Bool)

(assert (=> b!4335644 (= e!2697841 (= (getValueByKey!350 (toList!2741 lm!1707) hash!377) (Some!10363 lt!1548760)))))

(assert (= (and d!1274451 res!1778198) b!4335644))

(declare-fun m!4930665 () Bool)

(assert (=> d!1274451 m!4930665))

(declare-fun m!4930667 () Bool)

(assert (=> d!1274451 m!4930667))

(declare-fun m!4930669 () Bool)

(assert (=> d!1274451 m!4930669))

(assert (=> b!4335644 m!4930657))

(assert (=> b!4335424 d!1274451))

(declare-fun d!1274453 () Bool)

(declare-fun lt!1549066 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7602 (List!48784) (InoxSet tuple2!47888))

(assert (=> d!1274453 (= lt!1549066 (select (content!7602 (toList!2741 lm!1707)) lt!1548761))))

(declare-fun e!2697847 () Bool)

(assert (=> d!1274453 (= lt!1549066 e!2697847)))

(declare-fun res!1778203 () Bool)

(assert (=> d!1274453 (=> (not res!1778203) (not e!2697847))))

(assert (=> d!1274453 (= res!1778203 ((_ is Cons!48660) (toList!2741 lm!1707)))))

(assert (=> d!1274453 (= (contains!10710 (toList!2741 lm!1707) lt!1548761) lt!1549066)))

(declare-fun b!4335649 () Bool)

(declare-fun e!2697846 () Bool)

(assert (=> b!4335649 (= e!2697847 e!2697846)))

(declare-fun res!1778204 () Bool)

(assert (=> b!4335649 (=> res!1778204 e!2697846)))

(assert (=> b!4335649 (= res!1778204 (= (h!54159 (toList!2741 lm!1707)) lt!1548761))))

(declare-fun b!4335650 () Bool)

(assert (=> b!4335650 (= e!2697846 (contains!10710 (t!355700 (toList!2741 lm!1707)) lt!1548761))))

(assert (= (and d!1274453 res!1778203) b!4335649))

(assert (= (and b!4335649 (not res!1778204)) b!4335650))

(declare-fun m!4930671 () Bool)

(assert (=> d!1274453 m!4930671))

(declare-fun m!4930673 () Bool)

(assert (=> d!1274453 m!4930673))

(declare-fun m!4930675 () Bool)

(assert (=> b!4335650 m!4930675))

(assert (=> b!4335424 d!1274453))

(declare-fun b!4335659 () Bool)

(declare-fun e!2697852 () List!48783)

(assert (=> b!4335659 (= e!2697852 (t!355699 lt!1548760))))

(declare-fun b!4335661 () Bool)

(declare-fun e!2697853 () List!48783)

(assert (=> b!4335661 (= e!2697853 (Cons!48659 (h!54158 lt!1548760) (removePairForKey!349 (t!355699 lt!1548760) key!3918)))))

(declare-fun b!4335660 () Bool)

(assert (=> b!4335660 (= e!2697852 e!2697853)))

(declare-fun c!737289 () Bool)

(assert (=> b!4335660 (= c!737289 ((_ is Cons!48659) lt!1548760))))

(declare-fun d!1274455 () Bool)

(declare-fun lt!1549069 () List!48783)

(assert (=> d!1274455 (not (containsKey!526 lt!1549069 key!3918))))

(assert (=> d!1274455 (= lt!1549069 e!2697852)))

(declare-fun c!737288 () Bool)

(assert (=> d!1274455 (= c!737288 (and ((_ is Cons!48659) lt!1548760) (= (_1!27237 (h!54158 lt!1548760)) key!3918)))))

(assert (=> d!1274455 (noDuplicateKeys!379 lt!1548760)))

(assert (=> d!1274455 (= (removePairForKey!349 lt!1548760 key!3918) lt!1549069)))

(declare-fun b!4335662 () Bool)

(assert (=> b!4335662 (= e!2697853 Nil!48659)))

(assert (= (and d!1274455 c!737288) b!4335659))

(assert (= (and d!1274455 (not c!737288)) b!4335660))

(assert (= (and b!4335660 c!737289) b!4335661))

(assert (= (and b!4335660 (not c!737289)) b!4335662))

(declare-fun m!4930677 () Bool)

(assert (=> b!4335661 m!4930677))

(declare-fun m!4930679 () Bool)

(assert (=> d!1274455 m!4930679))

(assert (=> d!1274455 m!4930301))

(assert (=> b!4335424 d!1274455))

(declare-fun d!1274457 () Bool)

(declare-fun get!15788 (Option!10364) List!48783)

(assert (=> d!1274457 (= (apply!11231 lm!1707 hash!377) (get!15788 (getValueByKey!350 (toList!2741 lm!1707) hash!377)))))

(declare-fun bs!608615 () Bool)

(assert (= bs!608615 d!1274457))

(assert (=> bs!608615 m!4930657))

(assert (=> bs!608615 m!4930657))

(declare-fun m!4930681 () Bool)

(assert (=> bs!608615 m!4930681))

(assert (=> b!4335424 d!1274457))

(declare-fun bs!608616 () Bool)

(declare-fun d!1274459 () Bool)

(assert (= bs!608616 (and d!1274459 start!418116)))

(declare-fun lambda!135780 () Int)

(assert (=> bs!608616 (not (= lambda!135780 lambda!135683))))

(declare-fun bs!608617 () Bool)

(assert (= bs!608617 (and d!1274459 d!1274417)))

(assert (=> bs!608617 (not (= lambda!135780 lambda!135772))))

(declare-fun bs!608618 () Bool)

(assert (= bs!608618 (and d!1274459 d!1274431)))

(assert (=> bs!608618 (not (= lambda!135780 lambda!135773))))

(assert (=> d!1274459 true))

(assert (=> d!1274459 (= (allKeysSameHashInMap!483 lm!1707 hashF!1247) (forall!8945 (toList!2741 lm!1707) lambda!135780))))

(declare-fun bs!608619 () Bool)

(assert (= bs!608619 d!1274459))

(declare-fun m!4930683 () Bool)

(assert (=> bs!608619 m!4930683))

(assert (=> b!4335434 d!1274459))

(declare-fun d!1274461 () Bool)

(declare-fun hash!1326 (Hashable!4771 K!10015) (_ BitVec 64))

(assert (=> d!1274461 (= (hash!1324 hashF!1247 key!3918) (hash!1326 hashF!1247 key!3918))))

(declare-fun bs!608620 () Bool)

(assert (= bs!608620 d!1274461))

(declare-fun m!4930685 () Bool)

(assert (=> bs!608620 m!4930685))

(assert (=> b!4335423 d!1274461))

(declare-fun d!1274463 () Bool)

(declare-fun res!1778205 () Bool)

(declare-fun e!2697854 () Bool)

(assert (=> d!1274463 (=> res!1778205 e!2697854)))

(assert (=> d!1274463 (= res!1778205 ((_ is Nil!48660) (toList!2741 lm!1707)))))

(assert (=> d!1274463 (= (forall!8945 (toList!2741 lm!1707) lambda!135683) e!2697854)))

(declare-fun b!4335665 () Bool)

(declare-fun e!2697855 () Bool)

(assert (=> b!4335665 (= e!2697854 e!2697855)))

(declare-fun res!1778206 () Bool)

(assert (=> b!4335665 (=> (not res!1778206) (not e!2697855))))

(assert (=> b!4335665 (= res!1778206 (dynLambda!20565 lambda!135683 (h!54159 (toList!2741 lm!1707))))))

(declare-fun b!4335666 () Bool)

(assert (=> b!4335666 (= e!2697855 (forall!8945 (t!355700 (toList!2741 lm!1707)) lambda!135683))))

(assert (= (and d!1274463 (not res!1778205)) b!4335665))

(assert (= (and b!4335665 res!1778206) b!4335666))

(declare-fun b_lambda!128279 () Bool)

(assert (=> (not b_lambda!128279) (not b!4335665)))

(declare-fun m!4930687 () Bool)

(assert (=> b!4335665 m!4930687))

(declare-fun m!4930689 () Bool)

(assert (=> b!4335666 m!4930689))

(assert (=> start!418116 d!1274463))

(declare-fun d!1274465 () Bool)

(assert (=> d!1274465 (= (inv!64201 lm!1707) (isStrictlySorted!52 (toList!2741 lm!1707)))))

(declare-fun bs!608621 () Bool)

(assert (= bs!608621 d!1274465))

(assert (=> bs!608621 m!4930669))

(assert (=> start!418116 d!1274465))

(assert (=> b!4335433 d!1274445))

(declare-fun d!1274467 () Bool)

(declare-fun e!2697858 () Bool)

(assert (=> d!1274467 e!2697858))

(declare-fun res!1778211 () Bool)

(assert (=> d!1274467 (=> (not res!1778211) (not e!2697858))))

(declare-fun lt!1549080 () ListLongMap!1391)

(assert (=> d!1274467 (= res!1778211 (contains!10712 lt!1549080 (_1!27238 lt!1548769)))))

(declare-fun lt!1549078 () List!48784)

(assert (=> d!1274467 (= lt!1549080 (ListLongMap!1392 lt!1549078))))

(declare-fun lt!1549081 () Unit!68483)

(declare-fun lt!1549079 () Unit!68483)

(assert (=> d!1274467 (= lt!1549081 lt!1549079)))

(assert (=> d!1274467 (= (getValueByKey!350 lt!1549078 (_1!27238 lt!1548769)) (Some!10363 (_2!27238 lt!1548769)))))

(declare-fun lemmaContainsTupThenGetReturnValue!133 (List!48784 (_ BitVec 64) List!48783) Unit!68483)

(assert (=> d!1274467 (= lt!1549079 (lemmaContainsTupThenGetReturnValue!133 lt!1549078 (_1!27238 lt!1548769) (_2!27238 lt!1548769)))))

(declare-fun insertStrictlySorted!83 (List!48784 (_ BitVec 64) List!48783) List!48784)

(assert (=> d!1274467 (= lt!1549078 (insertStrictlySorted!83 (toList!2741 lm!1707) (_1!27238 lt!1548769) (_2!27238 lt!1548769)))))

(assert (=> d!1274467 (= (+!430 lm!1707 lt!1548769) lt!1549080)))

(declare-fun b!4335671 () Bool)

(declare-fun res!1778212 () Bool)

(assert (=> b!4335671 (=> (not res!1778212) (not e!2697858))))

(assert (=> b!4335671 (= res!1778212 (= (getValueByKey!350 (toList!2741 lt!1549080) (_1!27238 lt!1548769)) (Some!10363 (_2!27238 lt!1548769))))))

(declare-fun b!4335672 () Bool)

(assert (=> b!4335672 (= e!2697858 (contains!10710 (toList!2741 lt!1549080) lt!1548769))))

(assert (= (and d!1274467 res!1778211) b!4335671))

(assert (= (and b!4335671 res!1778212) b!4335672))

(declare-fun m!4930691 () Bool)

(assert (=> d!1274467 m!4930691))

(declare-fun m!4930693 () Bool)

(assert (=> d!1274467 m!4930693))

(declare-fun m!4930695 () Bool)

(assert (=> d!1274467 m!4930695))

(declare-fun m!4930697 () Bool)

(assert (=> d!1274467 m!4930697))

(declare-fun m!4930699 () Bool)

(assert (=> b!4335671 m!4930699))

(declare-fun m!4930701 () Bool)

(assert (=> b!4335672 m!4930701))

(assert (=> b!4335433 d!1274467))

(declare-fun d!1274469 () Bool)

(assert (=> d!1274469 (forall!8945 (toList!2741 (+!430 lm!1707 (tuple2!47889 hash!377 newBucket!200))) lambda!135683)))

(declare-fun lt!1549084 () Unit!68483)

(declare-fun choose!26534 (ListLongMap!1391 Int (_ BitVec 64) List!48783) Unit!68483)

(assert (=> d!1274469 (= lt!1549084 (choose!26534 lm!1707 lambda!135683 hash!377 newBucket!200))))

(declare-fun e!2697861 () Bool)

(assert (=> d!1274469 e!2697861))

(declare-fun res!1778215 () Bool)

(assert (=> d!1274469 (=> (not res!1778215) (not e!2697861))))

(assert (=> d!1274469 (= res!1778215 (forall!8945 (toList!2741 lm!1707) lambda!135683))))

(assert (=> d!1274469 (= (addValidProp!33 lm!1707 lambda!135683 hash!377 newBucket!200) lt!1549084)))

(declare-fun b!4335676 () Bool)

(assert (=> b!4335676 (= e!2697861 (dynLambda!20565 lambda!135683 (tuple2!47889 hash!377 newBucket!200)))))

(assert (= (and d!1274469 res!1778215) b!4335676))

(declare-fun b_lambda!128281 () Bool)

(assert (=> (not b_lambda!128281) (not b!4335676)))

(declare-fun m!4930703 () Bool)

(assert (=> d!1274469 m!4930703))

(declare-fun m!4930705 () Bool)

(assert (=> d!1274469 m!4930705))

(declare-fun m!4930707 () Bool)

(assert (=> d!1274469 m!4930707))

(assert (=> d!1274469 m!4930283))

(declare-fun m!4930709 () Bool)

(assert (=> b!4335676 m!4930709))

(assert (=> b!4335433 d!1274469))

(assert (=> b!4335433 d!1274463))

(declare-fun bs!608622 () Bool)

(declare-fun b!4335677 () Bool)

(assert (= bs!608622 (and b!4335677 b!4335618)))

(declare-fun lambda!135781 () Int)

(assert (=> bs!608622 (= (= (+!429 lt!1548772 lt!1548762) lt!1548772) (= lambda!135781 lambda!135775))))

(declare-fun bs!608623 () Bool)

(assert (= bs!608623 (and b!4335677 d!1274379)))

(assert (=> bs!608623 (= (= (+!429 lt!1548772 lt!1548762) lt!1548959) (= lambda!135781 lambda!135759))))

(declare-fun bs!608624 () Bool)

(assert (= bs!608624 (and b!4335677 b!4335617)))

(assert (=> bs!608624 (= (= (+!429 lt!1548772 lt!1548762) lt!1548772) (= lambda!135781 lambda!135774))))

(declare-fun bs!608625 () Bool)

(assert (= bs!608625 (and b!4335677 b!4335566)))

(assert (=> bs!608625 (= (= (+!429 lt!1548772 lt!1548762) lt!1548772) (= lambda!135781 lambda!135753))))

(assert (=> bs!608622 (= (= (+!429 lt!1548772 lt!1548762) lt!1549045) (= lambda!135781 lambda!135776))))

(declare-fun bs!608626 () Bool)

(assert (= bs!608626 (and b!4335677 d!1274377)))

(assert (=> bs!608626 (not (= lambda!135781 lambda!135686))))

(declare-fun bs!608627 () Bool)

(assert (= bs!608627 (and b!4335677 d!1274437)))

(assert (=> bs!608627 (= (= (+!429 lt!1548772 lt!1548762) lt!1549032) (= lambda!135781 lambda!135777))))

(declare-fun bs!608628 () Bool)

(assert (= bs!608628 (and b!4335677 b!4335567)))

(assert (=> bs!608628 (= (= (+!429 lt!1548772 lt!1548762) lt!1548772) (= lambda!135781 lambda!135754))))

(assert (=> bs!608628 (= (= (+!429 lt!1548772 lt!1548762) lt!1548976) (= lambda!135781 lambda!135755))))

(assert (=> b!4335677 true))

(declare-fun bs!608629 () Bool)

(declare-fun b!4335678 () Bool)

(assert (= bs!608629 (and b!4335678 b!4335618)))

(declare-fun lambda!135782 () Int)

(assert (=> bs!608629 (= (= (+!429 lt!1548772 lt!1548762) lt!1548772) (= lambda!135782 lambda!135775))))

(declare-fun bs!608630 () Bool)

(assert (= bs!608630 (and b!4335678 d!1274379)))

(assert (=> bs!608630 (= (= (+!429 lt!1548772 lt!1548762) lt!1548959) (= lambda!135782 lambda!135759))))

(declare-fun bs!608631 () Bool)

(assert (= bs!608631 (and b!4335678 b!4335617)))

(assert (=> bs!608631 (= (= (+!429 lt!1548772 lt!1548762) lt!1548772) (= lambda!135782 lambda!135774))))

(declare-fun bs!608632 () Bool)

(assert (= bs!608632 (and b!4335678 b!4335566)))

(assert (=> bs!608632 (= (= (+!429 lt!1548772 lt!1548762) lt!1548772) (= lambda!135782 lambda!135753))))

(assert (=> bs!608629 (= (= (+!429 lt!1548772 lt!1548762) lt!1549045) (= lambda!135782 lambda!135776))))

(declare-fun bs!608633 () Bool)

(assert (= bs!608633 (and b!4335678 d!1274377)))

(assert (=> bs!608633 (not (= lambda!135782 lambda!135686))))

(declare-fun bs!608634 () Bool)

(assert (= bs!608634 (and b!4335678 b!4335677)))

(assert (=> bs!608634 (= lambda!135782 lambda!135781)))

(declare-fun bs!608635 () Bool)

(assert (= bs!608635 (and b!4335678 d!1274437)))

(assert (=> bs!608635 (= (= (+!429 lt!1548772 lt!1548762) lt!1549032) (= lambda!135782 lambda!135777))))

(declare-fun bs!608636 () Bool)

(assert (= bs!608636 (and b!4335678 b!4335567)))

(assert (=> bs!608636 (= (= (+!429 lt!1548772 lt!1548762) lt!1548772) (= lambda!135782 lambda!135754))))

(assert (=> bs!608636 (= (= (+!429 lt!1548772 lt!1548762) lt!1548976) (= lambda!135782 lambda!135755))))

(assert (=> b!4335678 true))

(declare-fun lambda!135783 () Int)

(declare-fun lt!1549105 () ListMap!1985)

(assert (=> bs!608629 (= (= lt!1549105 lt!1548772) (= lambda!135783 lambda!135775))))

(assert (=> bs!608630 (= (= lt!1549105 lt!1548959) (= lambda!135783 lambda!135759))))

(assert (=> bs!608631 (= (= lt!1549105 lt!1548772) (= lambda!135783 lambda!135774))))

(assert (=> bs!608632 (= (= lt!1549105 lt!1548772) (= lambda!135783 lambda!135753))))

(assert (=> bs!608629 (= (= lt!1549105 lt!1549045) (= lambda!135783 lambda!135776))))

(assert (=> bs!608633 (not (= lambda!135783 lambda!135686))))

(assert (=> b!4335678 (= (= lt!1549105 (+!429 lt!1548772 lt!1548762)) (= lambda!135783 lambda!135782))))

(assert (=> bs!608634 (= (= lt!1549105 (+!429 lt!1548772 lt!1548762)) (= lambda!135783 lambda!135781))))

(assert (=> bs!608635 (= (= lt!1549105 lt!1549032) (= lambda!135783 lambda!135777))))

(assert (=> bs!608636 (= (= lt!1549105 lt!1548772) (= lambda!135783 lambda!135754))))

(assert (=> bs!608636 (= (= lt!1549105 lt!1548976) (= lambda!135783 lambda!135755))))

(assert (=> b!4335678 true))

(declare-fun bs!608637 () Bool)

(declare-fun d!1274471 () Bool)

(assert (= bs!608637 (and d!1274471 b!4335618)))

(declare-fun lambda!135784 () Int)

(declare-fun lt!1549092 () ListMap!1985)

(assert (=> bs!608637 (= (= lt!1549092 lt!1548772) (= lambda!135784 lambda!135775))))

(declare-fun bs!608638 () Bool)

(assert (= bs!608638 (and d!1274471 b!4335678)))

(assert (=> bs!608638 (= (= lt!1549092 lt!1549105) (= lambda!135784 lambda!135783))))

(declare-fun bs!608639 () Bool)

(assert (= bs!608639 (and d!1274471 d!1274379)))

(assert (=> bs!608639 (= (= lt!1549092 lt!1548959) (= lambda!135784 lambda!135759))))

(declare-fun bs!608640 () Bool)

(assert (= bs!608640 (and d!1274471 b!4335617)))

(assert (=> bs!608640 (= (= lt!1549092 lt!1548772) (= lambda!135784 lambda!135774))))

(declare-fun bs!608641 () Bool)

(assert (= bs!608641 (and d!1274471 b!4335566)))

(assert (=> bs!608641 (= (= lt!1549092 lt!1548772) (= lambda!135784 lambda!135753))))

(assert (=> bs!608637 (= (= lt!1549092 lt!1549045) (= lambda!135784 lambda!135776))))

(declare-fun bs!608642 () Bool)

(assert (= bs!608642 (and d!1274471 d!1274377)))

(assert (=> bs!608642 (not (= lambda!135784 lambda!135686))))

(assert (=> bs!608638 (= (= lt!1549092 (+!429 lt!1548772 lt!1548762)) (= lambda!135784 lambda!135782))))

(declare-fun bs!608643 () Bool)

(assert (= bs!608643 (and d!1274471 b!4335677)))

(assert (=> bs!608643 (= (= lt!1549092 (+!429 lt!1548772 lt!1548762)) (= lambda!135784 lambda!135781))))

(declare-fun bs!608644 () Bool)

(assert (= bs!608644 (and d!1274471 d!1274437)))

(assert (=> bs!608644 (= (= lt!1549092 lt!1549032) (= lambda!135784 lambda!135777))))

(declare-fun bs!608645 () Bool)

(assert (= bs!608645 (and d!1274471 b!4335567)))

(assert (=> bs!608645 (= (= lt!1549092 lt!1548772) (= lambda!135784 lambda!135754))))

(assert (=> bs!608645 (= (= lt!1549092 lt!1548976) (= lambda!135784 lambda!135755))))

(assert (=> d!1274471 true))

(declare-fun e!2697864 () ListMap!1985)

(assert (=> b!4335677 (= e!2697864 (+!429 lt!1548772 lt!1548762))))

(declare-fun lt!1549089 () Unit!68483)

(declare-fun call!301300 () Unit!68483)

(assert (=> b!4335677 (= lt!1549089 call!301300)))

(declare-fun call!301298 () Bool)

(assert (=> b!4335677 call!301298))

(declare-fun lt!1549088 () Unit!68483)

(assert (=> b!4335677 (= lt!1549088 lt!1549089)))

(declare-fun call!301299 () Bool)

(assert (=> b!4335677 call!301299))

(declare-fun lt!1549100 () Unit!68483)

(declare-fun Unit!68544 () Unit!68483)

(assert (=> b!4335677 (= lt!1549100 Unit!68544)))

(assert (=> b!4335678 (= e!2697864 lt!1549105)))

(declare-fun lt!1549093 () ListMap!1985)

(assert (=> b!4335678 (= lt!1549093 (+!429 (+!429 lt!1548772 lt!1548762) (h!54158 lt!1548770)))))

(assert (=> b!4335678 (= lt!1549105 (addToMapMapFromBucket!87 (t!355699 lt!1548770) (+!429 (+!429 lt!1548772 lt!1548762) (h!54158 lt!1548770))))))

(declare-fun lt!1549087 () Unit!68483)

(assert (=> b!4335678 (= lt!1549087 call!301300)))

(assert (=> b!4335678 call!301299))

(declare-fun lt!1549085 () Unit!68483)

(assert (=> b!4335678 (= lt!1549085 lt!1549087)))

(assert (=> b!4335678 call!301298))

(declare-fun lt!1549104 () Unit!68483)

(declare-fun Unit!68545 () Unit!68483)

(assert (=> b!4335678 (= lt!1549104 Unit!68545)))

(assert (=> b!4335678 (forall!8947 (t!355699 lt!1548770) lambda!135783)))

(declare-fun lt!1549096 () Unit!68483)

(declare-fun Unit!68546 () Unit!68483)

(assert (=> b!4335678 (= lt!1549096 Unit!68546)))

(declare-fun lt!1549090 () Unit!68483)

(declare-fun Unit!68547 () Unit!68483)

(assert (=> b!4335678 (= lt!1549090 Unit!68547)))

(declare-fun lt!1549091 () Unit!68483)

(assert (=> b!4335678 (= lt!1549091 (forallContained!1597 (toList!2742 lt!1549093) lambda!135783 (h!54158 lt!1548770)))))

(assert (=> b!4335678 (contains!10711 lt!1549093 (_1!27237 (h!54158 lt!1548770)))))

(declare-fun lt!1549086 () Unit!68483)

(declare-fun Unit!68548 () Unit!68483)

(assert (=> b!4335678 (= lt!1549086 Unit!68548)))

(assert (=> b!4335678 (contains!10711 lt!1549105 (_1!27237 (h!54158 lt!1548770)))))

(declare-fun lt!1549101 () Unit!68483)

(declare-fun Unit!68549 () Unit!68483)

(assert (=> b!4335678 (= lt!1549101 Unit!68549)))

(assert (=> b!4335678 (forall!8947 lt!1548770 lambda!135783)))

(declare-fun lt!1549094 () Unit!68483)

(declare-fun Unit!68550 () Unit!68483)

(assert (=> b!4335678 (= lt!1549094 Unit!68550)))

(assert (=> b!4335678 (forall!8947 (toList!2742 lt!1549093) lambda!135783)))

(declare-fun lt!1549103 () Unit!68483)

(declare-fun Unit!68551 () Unit!68483)

(assert (=> b!4335678 (= lt!1549103 Unit!68551)))

(declare-fun lt!1549095 () Unit!68483)

(declare-fun Unit!68552 () Unit!68483)

(assert (=> b!4335678 (= lt!1549095 Unit!68552)))

(declare-fun lt!1549097 () Unit!68483)

(assert (=> b!4335678 (= lt!1549097 (addForallContainsKeyThenBeforeAdding!19 (+!429 lt!1548772 lt!1548762) lt!1549105 (_1!27237 (h!54158 lt!1548770)) (_2!27237 (h!54158 lt!1548770))))))

(assert (=> b!4335678 (forall!8947 (toList!2742 (+!429 lt!1548772 lt!1548762)) lambda!135783)))

(declare-fun lt!1549098 () Unit!68483)

(assert (=> b!4335678 (= lt!1549098 lt!1549097)))

(assert (=> b!4335678 (forall!8947 (toList!2742 (+!429 lt!1548772 lt!1548762)) lambda!135783)))

(declare-fun lt!1549102 () Unit!68483)

(declare-fun Unit!68553 () Unit!68483)

(assert (=> b!4335678 (= lt!1549102 Unit!68553)))

(declare-fun res!1778217 () Bool)

(assert (=> b!4335678 (= res!1778217 (forall!8947 lt!1548770 lambda!135783))))

(declare-fun e!2697863 () Bool)

(assert (=> b!4335678 (=> (not res!1778217) (not e!2697863))))

(assert (=> b!4335678 e!2697863))

(declare-fun lt!1549099 () Unit!68483)

(declare-fun Unit!68554 () Unit!68483)

(assert (=> b!4335678 (= lt!1549099 Unit!68554)))

(declare-fun b!4335679 () Bool)

(declare-fun e!2697862 () Bool)

(assert (=> b!4335679 (= e!2697862 (invariantList!626 (toList!2742 lt!1549092)))))

(declare-fun b!4335680 () Bool)

(declare-fun res!1778216 () Bool)

(assert (=> b!4335680 (=> (not res!1778216) (not e!2697862))))

(assert (=> b!4335680 (= res!1778216 (forall!8947 (toList!2742 (+!429 lt!1548772 lt!1548762)) lambda!135784))))

(declare-fun bm!301294 () Bool)

(declare-fun c!737290 () Bool)

(assert (=> bm!301294 (= call!301298 (forall!8947 (ite c!737290 (toList!2742 (+!429 lt!1548772 lt!1548762)) (toList!2742 lt!1549093)) (ite c!737290 lambda!135781 lambda!135783)))))

(declare-fun b!4335681 () Bool)

(assert (=> b!4335681 (= e!2697863 (forall!8947 (toList!2742 (+!429 lt!1548772 lt!1548762)) lambda!135783))))

(declare-fun bm!301295 () Bool)

(assert (=> bm!301295 (= call!301300 (lemmaContainsAllItsOwnKeys!19 (+!429 lt!1548772 lt!1548762)))))

(assert (=> d!1274471 e!2697862))

(declare-fun res!1778218 () Bool)

(assert (=> d!1274471 (=> (not res!1778218) (not e!2697862))))

(assert (=> d!1274471 (= res!1778218 (forall!8947 lt!1548770 lambda!135784))))

(assert (=> d!1274471 (= lt!1549092 e!2697864)))

(assert (=> d!1274471 (= c!737290 ((_ is Nil!48659) lt!1548770))))

(assert (=> d!1274471 (noDuplicateKeys!379 lt!1548770)))

(assert (=> d!1274471 (= (addToMapMapFromBucket!87 lt!1548770 (+!429 lt!1548772 lt!1548762)) lt!1549092)))

(declare-fun bm!301293 () Bool)

(assert (=> bm!301293 (= call!301299 (forall!8947 (toList!2742 (+!429 lt!1548772 lt!1548762)) (ite c!737290 lambda!135781 lambda!135782)))))

(assert (= (and d!1274471 c!737290) b!4335677))

(assert (= (and d!1274471 (not c!737290)) b!4335678))

(assert (= (and b!4335678 res!1778217) b!4335681))

(assert (= (or b!4335677 b!4335678) bm!301295))

(assert (= (or b!4335677 b!4335678) bm!301294))

(assert (= (or b!4335677 b!4335678) bm!301293))

(assert (= (and d!1274471 res!1778218) b!4335680))

(assert (= (and b!4335680 res!1778216) b!4335679))

(declare-fun m!4930711 () Bool)

(assert (=> bm!301294 m!4930711))

(declare-fun m!4930713 () Bool)

(assert (=> bm!301293 m!4930713))

(declare-fun m!4930715 () Bool)

(assert (=> d!1274471 m!4930715))

(declare-fun m!4930717 () Bool)

(assert (=> d!1274471 m!4930717))

(declare-fun m!4930719 () Bool)

(assert (=> b!4335679 m!4930719))

(assert (=> bm!301295 m!4930279))

(declare-fun m!4930721 () Bool)

(assert (=> bm!301295 m!4930721))

(declare-fun m!4930723 () Bool)

(assert (=> b!4335680 m!4930723))

(declare-fun m!4930725 () Bool)

(assert (=> b!4335678 m!4930725))

(declare-fun m!4930727 () Bool)

(assert (=> b!4335678 m!4930727))

(assert (=> b!4335678 m!4930279))

(declare-fun m!4930729 () Bool)

(assert (=> b!4335678 m!4930729))

(declare-fun m!4930731 () Bool)

(assert (=> b!4335678 m!4930731))

(declare-fun m!4930733 () Bool)

(assert (=> b!4335678 m!4930733))

(declare-fun m!4930735 () Bool)

(assert (=> b!4335678 m!4930735))

(declare-fun m!4930737 () Bool)

(assert (=> b!4335678 m!4930737))

(assert (=> b!4335678 m!4930731))

(declare-fun m!4930739 () Bool)

(assert (=> b!4335678 m!4930739))

(declare-fun m!4930741 () Bool)

(assert (=> b!4335678 m!4930741))

(assert (=> b!4335678 m!4930739))

(assert (=> b!4335678 m!4930279))

(assert (=> b!4335678 m!4930735))

(declare-fun m!4930743 () Bool)

(assert (=> b!4335678 m!4930743))

(assert (=> b!4335681 m!4930739))

(assert (=> b!4335432 d!1274471))

(declare-fun d!1274473 () Bool)

(declare-fun e!2697867 () Bool)

(assert (=> d!1274473 e!2697867))

(declare-fun res!1778223 () Bool)

(assert (=> d!1274473 (=> (not res!1778223) (not e!2697867))))

(declare-fun lt!1549116 () ListMap!1985)

(assert (=> d!1274473 (= res!1778223 (contains!10711 lt!1549116 (_1!27237 lt!1548762)))))

(declare-fun lt!1549115 () List!48783)

(assert (=> d!1274473 (= lt!1549116 (ListMap!1986 lt!1549115))))

(declare-fun lt!1549117 () Unit!68483)

(declare-fun lt!1549114 () Unit!68483)

(assert (=> d!1274473 (= lt!1549117 lt!1549114)))

(declare-datatypes ((Option!10365 0))(
  ( (None!10364) (Some!10364 (v!43100 V!10261)) )
))
(declare-fun getValueByKey!351 (List!48783 K!10015) Option!10365)

(assert (=> d!1274473 (= (getValueByKey!351 lt!1549115 (_1!27237 lt!1548762)) (Some!10364 (_2!27237 lt!1548762)))))

(declare-fun lemmaContainsTupThenGetReturnValue!134 (List!48783 K!10015 V!10261) Unit!68483)

(assert (=> d!1274473 (= lt!1549114 (lemmaContainsTupThenGetReturnValue!134 lt!1549115 (_1!27237 lt!1548762) (_2!27237 lt!1548762)))))

(declare-fun insertNoDuplicatedKeys!59 (List!48783 K!10015 V!10261) List!48783)

(assert (=> d!1274473 (= lt!1549115 (insertNoDuplicatedKeys!59 (toList!2742 lt!1548772) (_1!27237 lt!1548762) (_2!27237 lt!1548762)))))

(assert (=> d!1274473 (= (+!429 lt!1548772 lt!1548762) lt!1549116)))

(declare-fun b!4335686 () Bool)

(declare-fun res!1778224 () Bool)

(assert (=> b!4335686 (=> (not res!1778224) (not e!2697867))))

(assert (=> b!4335686 (= res!1778224 (= (getValueByKey!351 (toList!2742 lt!1549116) (_1!27237 lt!1548762)) (Some!10364 (_2!27237 lt!1548762))))))

(declare-fun b!4335687 () Bool)

(declare-fun contains!10715 (List!48783 tuple2!47886) Bool)

(assert (=> b!4335687 (= e!2697867 (contains!10715 (toList!2742 lt!1549116) lt!1548762))))

(assert (= (and d!1274473 res!1778223) b!4335686))

(assert (= (and b!4335686 res!1778224) b!4335687))

(declare-fun m!4930745 () Bool)

(assert (=> d!1274473 m!4930745))

(declare-fun m!4930747 () Bool)

(assert (=> d!1274473 m!4930747))

(declare-fun m!4930749 () Bool)

(assert (=> d!1274473 m!4930749))

(declare-fun m!4930751 () Bool)

(assert (=> d!1274473 m!4930751))

(declare-fun m!4930753 () Bool)

(assert (=> b!4335686 m!4930753))

(declare-fun m!4930755 () Bool)

(assert (=> b!4335687 m!4930755))

(assert (=> b!4335432 d!1274473))

(declare-fun b!4335706 () Bool)

(declare-datatypes ((List!48786 0))(
  ( (Nil!48662) (Cons!48662 (h!54163 K!10015) (t!355702 List!48786)) )
))
(declare-fun e!2697883 () List!48786)

(declare-fun keys!16364 (ListMap!1985) List!48786)

(assert (=> b!4335706 (= e!2697883 (keys!16364 (extractMap!438 (toList!2741 lm!1707))))))

(declare-fun b!4335707 () Bool)

(declare-fun e!2697885 () Bool)

(declare-fun e!2697880 () Bool)

(assert (=> b!4335707 (= e!2697885 e!2697880)))

(declare-fun res!1778231 () Bool)

(assert (=> b!4335707 (=> (not res!1778231) (not e!2697880))))

(declare-fun isDefined!7661 (Option!10365) Bool)

(assert (=> b!4335707 (= res!1778231 (isDefined!7661 (getValueByKey!351 (toList!2742 (extractMap!438 (toList!2741 lm!1707))) key!3918)))))

(declare-fun b!4335709 () Bool)

(declare-fun e!2697881 () Unit!68483)

(declare-fun e!2697882 () Unit!68483)

(assert (=> b!4335709 (= e!2697881 e!2697882)))

(declare-fun c!737298 () Bool)

(declare-fun call!301303 () Bool)

(assert (=> b!4335709 (= c!737298 call!301303)))

(declare-fun b!4335710 () Bool)

(declare-fun lt!1549136 () Unit!68483)

(assert (=> b!4335710 (= e!2697881 lt!1549136)))

(declare-fun lt!1549134 () Unit!68483)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!264 (List!48783 K!10015) Unit!68483)

(assert (=> b!4335710 (= lt!1549134 (lemmaContainsKeyImpliesGetValueByKeyDefined!264 (toList!2742 (extractMap!438 (toList!2741 lm!1707))) key!3918))))

(assert (=> b!4335710 (isDefined!7661 (getValueByKey!351 (toList!2742 (extractMap!438 (toList!2741 lm!1707))) key!3918))))

(declare-fun lt!1549139 () Unit!68483)

(assert (=> b!4335710 (= lt!1549139 lt!1549134)))

(declare-fun lemmaInListThenGetKeysListContains!71 (List!48783 K!10015) Unit!68483)

(assert (=> b!4335710 (= lt!1549136 (lemmaInListThenGetKeysListContains!71 (toList!2742 (extractMap!438 (toList!2741 lm!1707))) key!3918))))

(assert (=> b!4335710 call!301303))

(declare-fun b!4335711 () Bool)

(assert (=> b!4335711 false))

(declare-fun lt!1549135 () Unit!68483)

(declare-fun lt!1549140 () Unit!68483)

(assert (=> b!4335711 (= lt!1549135 lt!1549140)))

(declare-fun containsKey!528 (List!48783 K!10015) Bool)

(assert (=> b!4335711 (containsKey!528 (toList!2742 (extractMap!438 (toList!2741 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!72 (List!48783 K!10015) Unit!68483)

(assert (=> b!4335711 (= lt!1549140 (lemmaInGetKeysListThenContainsKey!72 (toList!2742 (extractMap!438 (toList!2741 lm!1707))) key!3918))))

(declare-fun Unit!68555 () Unit!68483)

(assert (=> b!4335711 (= e!2697882 Unit!68555)))

(declare-fun b!4335712 () Bool)

(declare-fun getKeysList!74 (List!48783) List!48786)

(assert (=> b!4335712 (= e!2697883 (getKeysList!74 (toList!2742 (extractMap!438 (toList!2741 lm!1707)))))))

(declare-fun b!4335713 () Bool)

(declare-fun contains!10716 (List!48786 K!10015) Bool)

(assert (=> b!4335713 (= e!2697880 (contains!10716 (keys!16364 (extractMap!438 (toList!2741 lm!1707))) key!3918))))

(declare-fun d!1274475 () Bool)

(assert (=> d!1274475 e!2697885))

(declare-fun res!1778232 () Bool)

(assert (=> d!1274475 (=> res!1778232 e!2697885)))

(declare-fun e!2697884 () Bool)

(assert (=> d!1274475 (= res!1778232 e!2697884)))

(declare-fun res!1778233 () Bool)

(assert (=> d!1274475 (=> (not res!1778233) (not e!2697884))))

(declare-fun lt!1549137 () Bool)

(assert (=> d!1274475 (= res!1778233 (not lt!1549137))))

(declare-fun lt!1549138 () Bool)

(assert (=> d!1274475 (= lt!1549137 lt!1549138)))

(declare-fun lt!1549141 () Unit!68483)

(assert (=> d!1274475 (= lt!1549141 e!2697881)))

(declare-fun c!737297 () Bool)

(assert (=> d!1274475 (= c!737297 lt!1549138)))

(assert (=> d!1274475 (= lt!1549138 (containsKey!528 (toList!2742 (extractMap!438 (toList!2741 lm!1707))) key!3918))))

(assert (=> d!1274475 (= (contains!10711 (extractMap!438 (toList!2741 lm!1707)) key!3918) lt!1549137)))

(declare-fun b!4335708 () Bool)

(declare-fun Unit!68556 () Unit!68483)

(assert (=> b!4335708 (= e!2697882 Unit!68556)))

(declare-fun bm!301298 () Bool)

(assert (=> bm!301298 (= call!301303 (contains!10716 e!2697883 key!3918))))

(declare-fun c!737299 () Bool)

(assert (=> bm!301298 (= c!737299 c!737297)))

(declare-fun b!4335714 () Bool)

(assert (=> b!4335714 (= e!2697884 (not (contains!10716 (keys!16364 (extractMap!438 (toList!2741 lm!1707))) key!3918)))))

(assert (= (and d!1274475 c!737297) b!4335710))

(assert (= (and d!1274475 (not c!737297)) b!4335709))

(assert (= (and b!4335709 c!737298) b!4335711))

(assert (= (and b!4335709 (not c!737298)) b!4335708))

(assert (= (or b!4335710 b!4335709) bm!301298))

(assert (= (and bm!301298 c!737299) b!4335712))

(assert (= (and bm!301298 (not c!737299)) b!4335706))

(assert (= (and d!1274475 res!1778233) b!4335714))

(assert (= (and d!1274475 (not res!1778232)) b!4335707))

(assert (= (and b!4335707 res!1778231) b!4335713))

(assert (=> b!4335713 m!4930305))

(declare-fun m!4930757 () Bool)

(assert (=> b!4335713 m!4930757))

(assert (=> b!4335713 m!4930757))

(declare-fun m!4930759 () Bool)

(assert (=> b!4335713 m!4930759))

(assert (=> b!4335714 m!4930305))

(assert (=> b!4335714 m!4930757))

(assert (=> b!4335714 m!4930757))

(assert (=> b!4335714 m!4930759))

(declare-fun m!4930761 () Bool)

(assert (=> b!4335710 m!4930761))

(declare-fun m!4930763 () Bool)

(assert (=> b!4335710 m!4930763))

(assert (=> b!4335710 m!4930763))

(declare-fun m!4930765 () Bool)

(assert (=> b!4335710 m!4930765))

(declare-fun m!4930767 () Bool)

(assert (=> b!4335710 m!4930767))

(assert (=> b!4335706 m!4930305))

(assert (=> b!4335706 m!4930757))

(declare-fun m!4930769 () Bool)

(assert (=> b!4335712 m!4930769))

(declare-fun m!4930771 () Bool)

(assert (=> b!4335711 m!4930771))

(declare-fun m!4930773 () Bool)

(assert (=> b!4335711 m!4930773))

(declare-fun m!4930775 () Bool)

(assert (=> bm!301298 m!4930775))

(assert (=> b!4335707 m!4930763))

(assert (=> b!4335707 m!4930763))

(assert (=> b!4335707 m!4930765))

(assert (=> d!1274475 m!4930771))

(assert (=> b!4335429 d!1274475))

(declare-fun bs!608646 () Bool)

(declare-fun d!1274477 () Bool)

(assert (= bs!608646 (and d!1274477 start!418116)))

(declare-fun lambda!135785 () Int)

(assert (=> bs!608646 (= lambda!135785 lambda!135683)))

(declare-fun bs!608647 () Bool)

(assert (= bs!608647 (and d!1274477 d!1274417)))

(assert (=> bs!608647 (= lambda!135785 lambda!135772)))

(declare-fun bs!608648 () Bool)

(assert (= bs!608648 (and d!1274477 d!1274431)))

(assert (=> bs!608648 (= lambda!135785 lambda!135773)))

(declare-fun bs!608649 () Bool)

(assert (= bs!608649 (and d!1274477 d!1274459)))

(assert (=> bs!608649 (not (= lambda!135785 lambda!135780))))

(declare-fun lt!1549142 () ListMap!1985)

(assert (=> d!1274477 (invariantList!626 (toList!2742 lt!1549142))))

(declare-fun e!2697886 () ListMap!1985)

(assert (=> d!1274477 (= lt!1549142 e!2697886)))

(declare-fun c!737300 () Bool)

(assert (=> d!1274477 (= c!737300 ((_ is Cons!48660) (toList!2741 lm!1707)))))

(assert (=> d!1274477 (forall!8945 (toList!2741 lm!1707) lambda!135785)))

(assert (=> d!1274477 (= (extractMap!438 (toList!2741 lm!1707)) lt!1549142)))

(declare-fun b!4335715 () Bool)

(assert (=> b!4335715 (= e!2697886 (addToMapMapFromBucket!87 (_2!27238 (h!54159 (toList!2741 lm!1707))) (extractMap!438 (t!355700 (toList!2741 lm!1707)))))))

(declare-fun b!4335716 () Bool)

(assert (=> b!4335716 (= e!2697886 (ListMap!1986 Nil!48659))))

(assert (= (and d!1274477 c!737300) b!4335715))

(assert (= (and d!1274477 (not c!737300)) b!4335716))

(declare-fun m!4930777 () Bool)

(assert (=> d!1274477 m!4930777))

(declare-fun m!4930779 () Bool)

(assert (=> d!1274477 m!4930779))

(assert (=> b!4335715 m!4930299))

(assert (=> b!4335715 m!4930299))

(declare-fun m!4930781 () Bool)

(assert (=> b!4335715 m!4930781))

(assert (=> b!4335429 d!1274477))

(declare-fun b!4335721 () Bool)

(declare-fun e!2697889 () Bool)

(declare-fun tp!1328952 () Bool)

(declare-fun tp!1328953 () Bool)

(assert (=> b!4335721 (= e!2697889 (and tp!1328952 tp!1328953))))

(assert (=> b!4335427 (= tp!1328937 e!2697889)))

(assert (= (and b!4335427 ((_ is Cons!48660) (toList!2741 lm!1707))) b!4335721))

(declare-fun e!2697892 () Bool)

(declare-fun tp!1328956 () Bool)

(declare-fun b!4335726 () Bool)

(assert (=> b!4335726 (= e!2697892 (and tp_is_empty!24753 tp_is_empty!24755 tp!1328956))))

(assert (=> b!4335431 (= tp!1328938 e!2697892)))

(assert (= (and b!4335431 ((_ is Cons!48659) (t!355699 newBucket!200))) b!4335726))

(declare-fun b_lambda!128283 () Bool)

(assert (= b_lambda!128279 (or start!418116 b_lambda!128283)))

(declare-fun bs!608650 () Bool)

(declare-fun d!1274479 () Bool)

(assert (= bs!608650 (and d!1274479 start!418116)))

(assert (=> bs!608650 (= (dynLambda!20565 lambda!135683 (h!54159 (toList!2741 lm!1707))) (noDuplicateKeys!379 (_2!27238 (h!54159 (toList!2741 lm!1707)))))))

(declare-fun m!4930783 () Bool)

(assert (=> bs!608650 m!4930783))

(assert (=> b!4335665 d!1274479))

(declare-fun b_lambda!128285 () Bool)

(assert (= b_lambda!128277 (or start!418116 b_lambda!128285)))

(declare-fun bs!608651 () Bool)

(declare-fun d!1274481 () Bool)

(assert (= bs!608651 (and d!1274481 start!418116)))

(assert (=> bs!608651 (= (dynLambda!20565 lambda!135683 lt!1548761) (noDuplicateKeys!379 (_2!27238 lt!1548761)))))

(declare-fun m!4930785 () Bool)

(assert (=> bs!608651 m!4930785))

(assert (=> d!1274449 d!1274481))

(declare-fun b_lambda!128287 () Bool)

(assert (= b_lambda!128275 (or start!418116 b_lambda!128287)))

(declare-fun bs!608652 () Bool)

(declare-fun d!1274483 () Bool)

(assert (= bs!608652 (and d!1274483 start!418116)))

(assert (=> bs!608652 (= (dynLambda!20565 lambda!135683 (h!54159 (toList!2741 lt!1548765))) (noDuplicateKeys!379 (_2!27238 (h!54159 (toList!2741 lt!1548765)))))))

(declare-fun m!4930787 () Bool)

(assert (=> bs!608652 m!4930787))

(assert (=> b!4335628 d!1274483))

(declare-fun b_lambda!128289 () Bool)

(assert (= b_lambda!128281 (or start!418116 b_lambda!128289)))

(declare-fun bs!608653 () Bool)

(declare-fun d!1274485 () Bool)

(assert (= bs!608653 (and d!1274485 start!418116)))

(assert (=> bs!608653 (= (dynLambda!20565 lambda!135683 (tuple2!47889 hash!377 newBucket!200)) (noDuplicateKeys!379 (_2!27238 (tuple2!47889 hash!377 newBucket!200))))))

(declare-fun m!4930789 () Bool)

(assert (=> bs!608653 m!4930789))

(assert (=> b!4335676 d!1274485))

(check-sat (not b!4335644) (not d!1274447) (not b!4335678) (not b!4335620) (not d!1274417) (not b!4335569) (not b!4335726) (not b!4335713) (not b!4335672) (not b!4335681) (not b_lambda!128289) (not b!4335706) (not bs!608650) (not d!1274453) (not b_lambda!128283) (not d!1274379) (not d!1274377) (not b!4335679) (not b!4335629) (not bm!301281) (not b!4335567) (not b!4335666) (not bm!301292) (not b!4335607) (not b!4335710) (not d!1274465) (not b!4335680) (not d!1274461) (not bm!301298) (not bm!301282) (not b!4335661) (not d!1274471) (not b!4335619) (not b!4335568) (not b!4335707) (not bs!608652) (not b!4335614) (not b!4335687) tp_is_empty!24753 (not d!1274467) (not b!4335638) (not b!4335641) (not d!1274473) tp_is_empty!24755 (not d!1274459) (not b!4335636) (not b!4335608) (not bm!301290) (not b!4335650) (not d!1274431) (not b_lambda!128287) (not bs!608653) (not b!4335711) (not b!4335721) (not b!4335686) (not bm!301294) (not bm!301295) (not b!4335714) (not b!4335597) (not bm!301293) (not d!1274437) (not b!4335623) (not d!1274451) (not d!1274477) (not b!4335621) (not b!4335622) (not d!1274475) (not d!1274455) (not b!4335715) (not b!4335618) (not bs!608651) (not d!1274457) (not b_lambda!128285) (not bm!301291) (not bm!301283) (not d!1274449) (not d!1274469) (not b!4335570) (not b!4335671) (not b!4335712))
(check-sat)
