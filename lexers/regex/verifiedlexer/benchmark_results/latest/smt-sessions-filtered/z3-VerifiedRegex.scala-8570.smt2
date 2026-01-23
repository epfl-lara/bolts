; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!453524 () Bool)

(assert start!453524)

(declare-fun b!4561014 () Bool)

(declare-fun res!1903263 () Bool)

(declare-fun e!2843114 () Bool)

(assert (=> b!4561014 (=> res!1903263 e!2843114)))

(declare-datatypes ((K!12255 0))(
  ( (K!12256 (val!18075 Int)) )
))
(declare-datatypes ((V!12501 0))(
  ( (V!12502 (val!18076 Int)) )
))
(declare-datatypes ((tuple2!51418 0))(
  ( (tuple2!51419 (_1!29003 K!12255) (_2!29003 V!12501)) )
))
(declare-datatypes ((List!51000 0))(
  ( (Nil!50876) (Cons!50876 (h!56789 tuple2!51418) (t!357974 List!51000)) )
))
(declare-fun newBucket!178 () List!51000)

(declare-fun noDuplicateKeys!1246 (List!51000) Bool)

(assert (=> b!4561014 (= res!1903263 (not (noDuplicateKeys!1246 newBucket!178)))))

(declare-fun b!4561015 () Bool)

(declare-fun e!2843116 () Bool)

(declare-datatypes ((tuple2!51420 0))(
  ( (tuple2!51421 (_1!29004 (_ BitVec 64)) (_2!29004 List!51000)) )
))
(declare-datatypes ((List!51001 0))(
  ( (Nil!50877) (Cons!50877 (h!56790 tuple2!51420) (t!357975 List!51001)) )
))
(declare-datatypes ((ListLongMap!3131 0))(
  ( (ListLongMap!3132 (toList!4499 List!51001)) )
))
(declare-fun lm!1477 () ListLongMap!3131)

(declare-fun key!3287 () K!12255)

(declare-fun containsKeyBiggerList!216 (List!51001 K!12255) Bool)

(assert (=> b!4561015 (= e!2843116 (containsKeyBiggerList!216 (t!357975 (toList!4499 lm!1477)) key!3287))))

(declare-fun lt!1731781 () ListLongMap!3131)

(assert (=> b!4561015 (containsKeyBiggerList!216 (toList!4499 lt!1731781) key!3287)))

(declare-datatypes ((Hashable!5641 0))(
  ( (HashableExt!5640 (__x!31344 Int)) )
))
(declare-fun hashF!1107 () Hashable!5641)

(declare-datatypes ((Unit!102509 0))(
  ( (Unit!102510) )
))
(declare-fun lt!1731778 () Unit!102509)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!128 (ListLongMap!3131 K!12255 Hashable!5641) Unit!102509)

(assert (=> b!4561015 (= lt!1731778 (lemmaInLongMapThenContainsKeyBiggerList!128 lt!1731781 key!3287 hashF!1107))))

(declare-fun b!4561016 () Bool)

(declare-fun e!2843117 () Unit!102509)

(declare-fun Unit!102511 () Unit!102509)

(assert (=> b!4561016 (= e!2843117 Unit!102511)))

(declare-fun b!4561017 () Bool)

(declare-fun Unit!102512 () Unit!102509)

(assert (=> b!4561017 (= e!2843117 Unit!102512)))

(declare-fun lt!1731779 () Unit!102509)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!228 (ListLongMap!3131 K!12255 Hashable!5641) Unit!102509)

(assert (=> b!4561017 (= lt!1731779 (lemmaNotInItsHashBucketThenNotInMap!228 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4561017 false))

(declare-fun b!4561018 () Bool)

(declare-fun res!1903259 () Bool)

(declare-fun e!2843115 () Bool)

(assert (=> b!4561018 (=> (not res!1903259) (not e!2843115))))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun allKeysSameHash!1100 (List!51000 (_ BitVec 64) Hashable!5641) Bool)

(assert (=> b!4561018 (= res!1903259 (allKeysSameHash!1100 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4561019 () Bool)

(declare-fun res!1903258 () Bool)

(declare-fun e!2843118 () Bool)

(assert (=> b!4561019 (=> (not res!1903258) (not e!2843118))))

(declare-datatypes ((ListMap!3761 0))(
  ( (ListMap!3762 (toList!4500 List!51000)) )
))
(declare-fun contains!13733 (ListMap!3761 K!12255) Bool)

(declare-fun extractMap!1302 (List!51001) ListMap!3761)

(assert (=> b!4561019 (= res!1903258 (contains!13733 (extractMap!1302 (toList!4499 lm!1477)) key!3287))))

(declare-fun b!4561020 () Bool)

(declare-fun e!2843119 () Bool)

(assert (=> b!4561020 (= e!2843114 e!2843119)))

(declare-fun res!1903266 () Bool)

(assert (=> b!4561020 (=> res!1903266 e!2843119)))

(declare-fun contains!13734 (ListLongMap!3131 (_ BitVec 64)) Bool)

(assert (=> b!4561020 (= res!1903266 (not (contains!13734 lt!1731781 hash!344)))))

(declare-fun tail!7869 (ListLongMap!3131) ListLongMap!3131)

(assert (=> b!4561020 (= lt!1731781 (tail!7869 lm!1477))))

(declare-fun b!4561021 () Bool)

(assert (=> b!4561021 (= e!2843115 (not e!2843114))))

(declare-fun res!1903264 () Bool)

(assert (=> b!4561021 (=> res!1903264 e!2843114)))

(declare-fun lt!1731785 () List!51000)

(declare-fun removePairForKey!873 (List!51000 K!12255) List!51000)

(assert (=> b!4561021 (= res!1903264 (not (= newBucket!178 (removePairForKey!873 lt!1731785 key!3287))))))

(declare-fun lt!1731786 () tuple2!51420)

(declare-fun lambda!180021 () Int)

(declare-fun lt!1731784 () Unit!102509)

(declare-fun forallContained!2701 (List!51001 Int tuple2!51420) Unit!102509)

(assert (=> b!4561021 (= lt!1731784 (forallContained!2701 (toList!4499 lm!1477) lambda!180021 lt!1731786))))

(declare-fun contains!13735 (List!51001 tuple2!51420) Bool)

(assert (=> b!4561021 (contains!13735 (toList!4499 lm!1477) lt!1731786)))

(assert (=> b!4561021 (= lt!1731786 (tuple2!51421 hash!344 lt!1731785))))

(declare-fun lt!1731787 () Unit!102509)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!758 (List!51001 (_ BitVec 64) List!51000) Unit!102509)

(assert (=> b!4561021 (= lt!1731787 (lemmaGetValueByKeyImpliesContainsTuple!758 (toList!4499 lm!1477) hash!344 lt!1731785))))

(declare-fun apply!11983 (ListLongMap!3131 (_ BitVec 64)) List!51000)

(assert (=> b!4561021 (= lt!1731785 (apply!11983 lm!1477 hash!344))))

(declare-fun lt!1731783 () (_ BitVec 64))

(assert (=> b!4561021 (contains!13734 lm!1477 lt!1731783)))

(declare-fun lt!1731782 () Unit!102509)

(declare-fun lemmaInGenMapThenLongMapContainsHash!320 (ListLongMap!3131 K!12255 Hashable!5641) Unit!102509)

(assert (=> b!4561021 (= lt!1731782 (lemmaInGenMapThenLongMapContainsHash!320 lm!1477 key!3287 hashF!1107))))

(declare-fun res!1903260 () Bool)

(assert (=> start!453524 (=> (not res!1903260) (not e!2843118))))

(declare-fun forall!10438 (List!51001 Int) Bool)

(assert (=> start!453524 (= res!1903260 (forall!10438 (toList!4499 lm!1477) lambda!180021))))

(assert (=> start!453524 e!2843118))

(assert (=> start!453524 true))

(declare-fun e!2843121 () Bool)

(declare-fun inv!66439 (ListLongMap!3131) Bool)

(assert (=> start!453524 (and (inv!66439 lm!1477) e!2843121)))

(declare-fun tp_is_empty!28261 () Bool)

(assert (=> start!453524 tp_is_empty!28261))

(declare-fun e!2843120 () Bool)

(assert (=> start!453524 e!2843120))

(declare-fun b!4561022 () Bool)

(assert (=> b!4561022 (= e!2843118 e!2843115)))

(declare-fun res!1903267 () Bool)

(assert (=> b!4561022 (=> (not res!1903267) (not e!2843115))))

(assert (=> b!4561022 (= res!1903267 (= lt!1731783 hash!344))))

(declare-fun hash!3043 (Hashable!5641 K!12255) (_ BitVec 64))

(assert (=> b!4561022 (= lt!1731783 (hash!3043 hashF!1107 key!3287))))

(declare-fun b!4561023 () Bool)

(declare-fun res!1903268 () Bool)

(assert (=> b!4561023 (=> res!1903268 e!2843119)))

(assert (=> b!4561023 (= res!1903268 (not (contains!13735 (t!357975 (toList!4499 lm!1477)) lt!1731786)))))

(declare-fun b!4561024 () Bool)

(declare-fun res!1903261 () Bool)

(assert (=> b!4561024 (=> res!1903261 e!2843114)))

(get-info :version)

(assert (=> b!4561024 (= res!1903261 (or ((_ is Nil!50877) (toList!4499 lm!1477)) (= (_1!29004 (h!56790 (toList!4499 lm!1477))) hash!344)))))

(declare-fun b!4561025 () Bool)

(declare-fun res!1903262 () Bool)

(assert (=> b!4561025 (=> (not res!1903262) (not e!2843118))))

(declare-fun allKeysSameHashInMap!1353 (ListLongMap!3131 Hashable!5641) Bool)

(assert (=> b!4561025 (= res!1903262 (allKeysSameHashInMap!1353 lm!1477 hashF!1107))))

(declare-fun b!4561026 () Bool)

(declare-fun res!1903265 () Bool)

(assert (=> b!4561026 (=> res!1903265 e!2843119)))

(assert (=> b!4561026 (= res!1903265 (not (= (apply!11983 lt!1731781 hash!344) lt!1731785)))))

(declare-fun tp!1339286 () Bool)

(declare-fun b!4561027 () Bool)

(declare-fun tp_is_empty!28263 () Bool)

(assert (=> b!4561027 (= e!2843120 (and tp_is_empty!28261 tp_is_empty!28263 tp!1339286))))

(declare-fun b!4561028 () Bool)

(assert (=> b!4561028 (= e!2843119 e!2843116)))

(declare-fun res!1903269 () Bool)

(assert (=> b!4561028 (=> res!1903269 e!2843116)))

(declare-fun lt!1731780 () Bool)

(assert (=> b!4561028 (= res!1903269 lt!1731780)))

(declare-fun lt!1731788 () Unit!102509)

(assert (=> b!4561028 (= lt!1731788 e!2843117)))

(declare-fun c!779832 () Bool)

(assert (=> b!4561028 (= c!779832 lt!1731780)))

(declare-fun containsKey!1984 (List!51000 K!12255) Bool)

(assert (=> b!4561028 (= lt!1731780 (not (containsKey!1984 lt!1731785 key!3287)))))

(declare-fun b!4561029 () Bool)

(declare-fun tp!1339287 () Bool)

(assert (=> b!4561029 (= e!2843121 tp!1339287)))

(assert (= (and start!453524 res!1903260) b!4561025))

(assert (= (and b!4561025 res!1903262) b!4561019))

(assert (= (and b!4561019 res!1903258) b!4561022))

(assert (= (and b!4561022 res!1903267) b!4561018))

(assert (= (and b!4561018 res!1903259) b!4561021))

(assert (= (and b!4561021 (not res!1903264)) b!4561014))

(assert (= (and b!4561014 (not res!1903263)) b!4561024))

(assert (= (and b!4561024 (not res!1903261)) b!4561020))

(assert (= (and b!4561020 (not res!1903266)) b!4561026))

(assert (= (and b!4561026 (not res!1903265)) b!4561023))

(assert (= (and b!4561023 (not res!1903268)) b!4561028))

(assert (= (and b!4561028 c!779832) b!4561017))

(assert (= (and b!4561028 (not c!779832)) b!4561016))

(assert (= (and b!4561028 (not res!1903269)) b!4561015))

(assert (= start!453524 b!4561029))

(assert (= (and start!453524 ((_ is Cons!50876) newBucket!178)) b!4561027))

(declare-fun m!5351413 () Bool)

(assert (=> b!4561019 m!5351413))

(assert (=> b!4561019 m!5351413))

(declare-fun m!5351415 () Bool)

(assert (=> b!4561019 m!5351415))

(declare-fun m!5351417 () Bool)

(assert (=> b!4561015 m!5351417))

(declare-fun m!5351419 () Bool)

(assert (=> b!4561015 m!5351419))

(declare-fun m!5351421 () Bool)

(assert (=> b!4561015 m!5351421))

(declare-fun m!5351423 () Bool)

(assert (=> b!4561022 m!5351423))

(declare-fun m!5351425 () Bool)

(assert (=> b!4561014 m!5351425))

(declare-fun m!5351427 () Bool)

(assert (=> b!4561026 m!5351427))

(declare-fun m!5351429 () Bool)

(assert (=> b!4561017 m!5351429))

(declare-fun m!5351431 () Bool)

(assert (=> b!4561020 m!5351431))

(declare-fun m!5351433 () Bool)

(assert (=> b!4561020 m!5351433))

(declare-fun m!5351435 () Bool)

(assert (=> b!4561025 m!5351435))

(declare-fun m!5351437 () Bool)

(assert (=> start!453524 m!5351437))

(declare-fun m!5351439 () Bool)

(assert (=> start!453524 m!5351439))

(declare-fun m!5351441 () Bool)

(assert (=> b!4561028 m!5351441))

(declare-fun m!5351443 () Bool)

(assert (=> b!4561018 m!5351443))

(declare-fun m!5351445 () Bool)

(assert (=> b!4561021 m!5351445))

(declare-fun m!5351447 () Bool)

(assert (=> b!4561021 m!5351447))

(declare-fun m!5351449 () Bool)

(assert (=> b!4561021 m!5351449))

(declare-fun m!5351451 () Bool)

(assert (=> b!4561021 m!5351451))

(declare-fun m!5351453 () Bool)

(assert (=> b!4561021 m!5351453))

(declare-fun m!5351455 () Bool)

(assert (=> b!4561021 m!5351455))

(declare-fun m!5351457 () Bool)

(assert (=> b!4561021 m!5351457))

(declare-fun m!5351459 () Bool)

(assert (=> b!4561023 m!5351459))

(check-sat (not b!4561014) (not b!4561027) (not b!4561018) (not b!4561021) (not b!4561023) tp_is_empty!28263 (not b!4561019) (not b!4561028) (not start!453524) (not b!4561029) (not b!4561025) tp_is_empty!28261 (not b!4561020) (not b!4561015) (not b!4561026) (not b!4561017) (not b!4561022))
(check-sat)
(get-model)

(declare-fun d!1419867 () Bool)

(declare-fun res!1903274 () Bool)

(declare-fun e!2843126 () Bool)

(assert (=> d!1419867 (=> res!1903274 e!2843126)))

(assert (=> d!1419867 (= res!1903274 (not ((_ is Cons!50876) newBucket!178)))))

(assert (=> d!1419867 (= (noDuplicateKeys!1246 newBucket!178) e!2843126)))

(declare-fun b!4561034 () Bool)

(declare-fun e!2843127 () Bool)

(assert (=> b!4561034 (= e!2843126 e!2843127)))

(declare-fun res!1903275 () Bool)

(assert (=> b!4561034 (=> (not res!1903275) (not e!2843127))))

(assert (=> b!4561034 (= res!1903275 (not (containsKey!1984 (t!357974 newBucket!178) (_1!29003 (h!56789 newBucket!178)))))))

(declare-fun b!4561035 () Bool)

(assert (=> b!4561035 (= e!2843127 (noDuplicateKeys!1246 (t!357974 newBucket!178)))))

(assert (= (and d!1419867 (not res!1903274)) b!4561034))

(assert (= (and b!4561034 res!1903275) b!4561035))

(declare-fun m!5351461 () Bool)

(assert (=> b!4561034 m!5351461))

(declare-fun m!5351463 () Bool)

(assert (=> b!4561035 m!5351463))

(assert (=> b!4561014 d!1419867))

(declare-fun d!1419869 () Bool)

(declare-fun lt!1731791 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8521 (List!51001) (InoxSet tuple2!51420))

(assert (=> d!1419869 (= lt!1731791 (select (content!8521 (t!357975 (toList!4499 lm!1477))) lt!1731786))))

(declare-fun e!2843133 () Bool)

(assert (=> d!1419869 (= lt!1731791 e!2843133)))

(declare-fun res!1903281 () Bool)

(assert (=> d!1419869 (=> (not res!1903281) (not e!2843133))))

(assert (=> d!1419869 (= res!1903281 ((_ is Cons!50877) (t!357975 (toList!4499 lm!1477))))))

(assert (=> d!1419869 (= (contains!13735 (t!357975 (toList!4499 lm!1477)) lt!1731786) lt!1731791)))

(declare-fun b!4561040 () Bool)

(declare-fun e!2843132 () Bool)

(assert (=> b!4561040 (= e!2843133 e!2843132)))

(declare-fun res!1903280 () Bool)

(assert (=> b!4561040 (=> res!1903280 e!2843132)))

(assert (=> b!4561040 (= res!1903280 (= (h!56790 (t!357975 (toList!4499 lm!1477))) lt!1731786))))

(declare-fun b!4561041 () Bool)

(assert (=> b!4561041 (= e!2843132 (contains!13735 (t!357975 (t!357975 (toList!4499 lm!1477))) lt!1731786))))

(assert (= (and d!1419869 res!1903281) b!4561040))

(assert (= (and b!4561040 (not res!1903280)) b!4561041))

(declare-fun m!5351465 () Bool)

(assert (=> d!1419869 m!5351465))

(declare-fun m!5351467 () Bool)

(assert (=> d!1419869 m!5351467))

(declare-fun m!5351469 () Bool)

(assert (=> b!4561041 m!5351469))

(assert (=> b!4561023 d!1419869))

(declare-fun d!1419871 () Bool)

(declare-fun res!1903286 () Bool)

(declare-fun e!2843138 () Bool)

(assert (=> d!1419871 (=> res!1903286 e!2843138)))

(assert (=> d!1419871 (= res!1903286 ((_ is Nil!50877) (toList!4499 lm!1477)))))

(assert (=> d!1419871 (= (forall!10438 (toList!4499 lm!1477) lambda!180021) e!2843138)))

(declare-fun b!4561046 () Bool)

(declare-fun e!2843139 () Bool)

(assert (=> b!4561046 (= e!2843138 e!2843139)))

(declare-fun res!1903287 () Bool)

(assert (=> b!4561046 (=> (not res!1903287) (not e!2843139))))

(declare-fun dynLambda!21279 (Int tuple2!51420) Bool)

(assert (=> b!4561046 (= res!1903287 (dynLambda!21279 lambda!180021 (h!56790 (toList!4499 lm!1477))))))

(declare-fun b!4561047 () Bool)

(assert (=> b!4561047 (= e!2843139 (forall!10438 (t!357975 (toList!4499 lm!1477)) lambda!180021))))

(assert (= (and d!1419871 (not res!1903286)) b!4561046))

(assert (= (and b!4561046 res!1903287) b!4561047))

(declare-fun b_lambda!162167 () Bool)

(assert (=> (not b_lambda!162167) (not b!4561046)))

(declare-fun m!5351471 () Bool)

(assert (=> b!4561046 m!5351471))

(declare-fun m!5351473 () Bool)

(assert (=> b!4561047 m!5351473))

(assert (=> start!453524 d!1419871))

(declare-fun d!1419873 () Bool)

(declare-fun isStrictlySorted!489 (List!51001) Bool)

(assert (=> d!1419873 (= (inv!66439 lm!1477) (isStrictlySorted!489 (toList!4499 lm!1477)))))

(declare-fun bs!939976 () Bool)

(assert (= bs!939976 d!1419873))

(declare-fun m!5351475 () Bool)

(assert (=> bs!939976 m!5351475))

(assert (=> start!453524 d!1419873))

(declare-fun bs!939977 () Bool)

(declare-fun d!1419875 () Bool)

(assert (= bs!939977 (and d!1419875 start!453524)))

(declare-fun lambda!180024 () Int)

(assert (=> bs!939977 (not (= lambda!180024 lambda!180021))))

(assert (=> d!1419875 true))

(assert (=> d!1419875 (= (allKeysSameHashInMap!1353 lm!1477 hashF!1107) (forall!10438 (toList!4499 lm!1477) lambda!180024))))

(declare-fun bs!939978 () Bool)

(assert (= bs!939978 d!1419875))

(declare-fun m!5351477 () Bool)

(assert (=> bs!939978 m!5351477))

(assert (=> b!4561025 d!1419875))

(declare-fun d!1419877 () Bool)

(declare-datatypes ((Option!11276 0))(
  ( (None!11275) (Some!11275 (v!45075 List!51000)) )
))
(declare-fun get!16764 (Option!11276) List!51000)

(declare-fun getValueByKey!1208 (List!51001 (_ BitVec 64)) Option!11276)

(assert (=> d!1419877 (= (apply!11983 lt!1731781 hash!344) (get!16764 (getValueByKey!1208 (toList!4499 lt!1731781) hash!344)))))

(declare-fun bs!939979 () Bool)

(assert (= bs!939979 d!1419877))

(declare-fun m!5351479 () Bool)

(assert (=> bs!939979 m!5351479))

(assert (=> bs!939979 m!5351479))

(declare-fun m!5351481 () Bool)

(assert (=> bs!939979 m!5351481))

(assert (=> b!4561026 d!1419877))

(declare-fun d!1419879 () Bool)

(declare-fun res!1903295 () Bool)

(declare-fun e!2843146 () Bool)

(assert (=> d!1419879 (=> res!1903295 e!2843146)))

(declare-fun e!2843147 () Bool)

(assert (=> d!1419879 (= res!1903295 e!2843147)))

(declare-fun res!1903294 () Bool)

(assert (=> d!1419879 (=> (not res!1903294) (not e!2843147))))

(assert (=> d!1419879 (= res!1903294 ((_ is Cons!50877) (t!357975 (toList!4499 lm!1477))))))

(assert (=> d!1419879 (= (containsKeyBiggerList!216 (t!357975 (toList!4499 lm!1477)) key!3287) e!2843146)))

(declare-fun b!4561056 () Bool)

(assert (=> b!4561056 (= e!2843147 (containsKey!1984 (_2!29004 (h!56790 (t!357975 (toList!4499 lm!1477)))) key!3287))))

(declare-fun b!4561057 () Bool)

(declare-fun e!2843148 () Bool)

(assert (=> b!4561057 (= e!2843146 e!2843148)))

(declare-fun res!1903296 () Bool)

(assert (=> b!4561057 (=> (not res!1903296) (not e!2843148))))

(assert (=> b!4561057 (= res!1903296 ((_ is Cons!50877) (t!357975 (toList!4499 lm!1477))))))

(declare-fun b!4561058 () Bool)

(assert (=> b!4561058 (= e!2843148 (containsKeyBiggerList!216 (t!357975 (t!357975 (toList!4499 lm!1477))) key!3287))))

(assert (= (and d!1419879 res!1903294) b!4561056))

(assert (= (and d!1419879 (not res!1903295)) b!4561057))

(assert (= (and b!4561057 res!1903296) b!4561058))

(declare-fun m!5351483 () Bool)

(assert (=> b!4561056 m!5351483))

(declare-fun m!5351485 () Bool)

(assert (=> b!4561058 m!5351485))

(assert (=> b!4561015 d!1419879))

(declare-fun d!1419881 () Bool)

(declare-fun res!1903298 () Bool)

(declare-fun e!2843149 () Bool)

(assert (=> d!1419881 (=> res!1903298 e!2843149)))

(declare-fun e!2843150 () Bool)

(assert (=> d!1419881 (= res!1903298 e!2843150)))

(declare-fun res!1903297 () Bool)

(assert (=> d!1419881 (=> (not res!1903297) (not e!2843150))))

(assert (=> d!1419881 (= res!1903297 ((_ is Cons!50877) (toList!4499 lt!1731781)))))

(assert (=> d!1419881 (= (containsKeyBiggerList!216 (toList!4499 lt!1731781) key!3287) e!2843149)))

(declare-fun b!4561059 () Bool)

(assert (=> b!4561059 (= e!2843150 (containsKey!1984 (_2!29004 (h!56790 (toList!4499 lt!1731781))) key!3287))))

(declare-fun b!4561060 () Bool)

(declare-fun e!2843151 () Bool)

(assert (=> b!4561060 (= e!2843149 e!2843151)))

(declare-fun res!1903299 () Bool)

(assert (=> b!4561060 (=> (not res!1903299) (not e!2843151))))

(assert (=> b!4561060 (= res!1903299 ((_ is Cons!50877) (toList!4499 lt!1731781)))))

(declare-fun b!4561061 () Bool)

(assert (=> b!4561061 (= e!2843151 (containsKeyBiggerList!216 (t!357975 (toList!4499 lt!1731781)) key!3287))))

(assert (= (and d!1419881 res!1903297) b!4561059))

(assert (= (and d!1419881 (not res!1903298)) b!4561060))

(assert (= (and b!4561060 res!1903299) b!4561061))

(declare-fun m!5351487 () Bool)

(assert (=> b!4561059 m!5351487))

(declare-fun m!5351489 () Bool)

(assert (=> b!4561061 m!5351489))

(assert (=> b!4561015 d!1419881))

(declare-fun bs!939980 () Bool)

(declare-fun d!1419883 () Bool)

(assert (= bs!939980 (and d!1419883 start!453524)))

(declare-fun lambda!180027 () Int)

(assert (=> bs!939980 (= lambda!180027 lambda!180021)))

(declare-fun bs!939981 () Bool)

(assert (= bs!939981 (and d!1419883 d!1419875)))

(assert (=> bs!939981 (not (= lambda!180027 lambda!180024))))

(assert (=> d!1419883 (containsKeyBiggerList!216 (toList!4499 lt!1731781) key!3287)))

(declare-fun lt!1731794 () Unit!102509)

(declare-fun choose!30224 (ListLongMap!3131 K!12255 Hashable!5641) Unit!102509)

(assert (=> d!1419883 (= lt!1731794 (choose!30224 lt!1731781 key!3287 hashF!1107))))

(assert (=> d!1419883 (forall!10438 (toList!4499 lt!1731781) lambda!180027)))

(assert (=> d!1419883 (= (lemmaInLongMapThenContainsKeyBiggerList!128 lt!1731781 key!3287 hashF!1107) lt!1731794)))

(declare-fun bs!939982 () Bool)

(assert (= bs!939982 d!1419883))

(assert (=> bs!939982 m!5351419))

(declare-fun m!5351491 () Bool)

(assert (=> bs!939982 m!5351491))

(declare-fun m!5351493 () Bool)

(assert (=> bs!939982 m!5351493))

(assert (=> b!4561015 d!1419883))

(declare-fun bm!318266 () Bool)

(declare-fun call!318271 () Bool)

(declare-datatypes ((List!51002 0))(
  ( (Nil!50878) (Cons!50878 (h!56793 K!12255) (t!357976 List!51002)) )
))
(declare-fun e!2843180 () List!51002)

(declare-fun contains!13736 (List!51002 K!12255) Bool)

(assert (=> bm!318266 (= call!318271 (contains!13736 e!2843180 key!3287))))

(declare-fun c!779839 () Bool)

(declare-fun c!779840 () Bool)

(assert (=> bm!318266 (= c!779839 c!779840)))

(declare-fun d!1419887 () Bool)

(declare-fun e!2843176 () Bool)

(assert (=> d!1419887 e!2843176))

(declare-fun res!1903319 () Bool)

(assert (=> d!1419887 (=> res!1903319 e!2843176)))

(declare-fun e!2843179 () Bool)

(assert (=> d!1419887 (= res!1903319 e!2843179)))

(declare-fun res!1903320 () Bool)

(assert (=> d!1419887 (=> (not res!1903320) (not e!2843179))))

(declare-fun lt!1731819 () Bool)

(assert (=> d!1419887 (= res!1903320 (not lt!1731819))))

(declare-fun lt!1731818 () Bool)

(assert (=> d!1419887 (= lt!1731819 lt!1731818)))

(declare-fun lt!1731814 () Unit!102509)

(declare-fun e!2843178 () Unit!102509)

(assert (=> d!1419887 (= lt!1731814 e!2843178)))

(assert (=> d!1419887 (= c!779840 lt!1731818)))

(declare-fun containsKey!1985 (List!51000 K!12255) Bool)

(assert (=> d!1419887 (= lt!1731818 (containsKey!1985 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287))))

(assert (=> d!1419887 (= (contains!13733 (extractMap!1302 (toList!4499 lm!1477)) key!3287) lt!1731819)))

(declare-fun b!4561092 () Bool)

(declare-fun getKeysList!522 (List!51000) List!51002)

(assert (=> b!4561092 (= e!2843180 (getKeysList!522 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))))))

(declare-fun b!4561093 () Bool)

(declare-fun lt!1731820 () Unit!102509)

(assert (=> b!4561093 (= e!2843178 lt!1731820)))

(declare-fun lt!1731817 () Unit!102509)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1112 (List!51000 K!12255) Unit!102509)

(assert (=> b!4561093 (= lt!1731817 (lemmaContainsKeyImpliesGetValueByKeyDefined!1112 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287))))

(declare-datatypes ((Option!11277 0))(
  ( (None!11276) (Some!11276 (v!45076 V!12501)) )
))
(declare-fun isDefined!8548 (Option!11277) Bool)

(declare-fun getValueByKey!1209 (List!51000 K!12255) Option!11277)

(assert (=> b!4561093 (isDefined!8548 (getValueByKey!1209 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287))))

(declare-fun lt!1731821 () Unit!102509)

(assert (=> b!4561093 (= lt!1731821 lt!1731817)))

(declare-fun lemmaInListThenGetKeysListContains!518 (List!51000 K!12255) Unit!102509)

(assert (=> b!4561093 (= lt!1731820 (lemmaInListThenGetKeysListContains!518 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287))))

(assert (=> b!4561093 call!318271))

(declare-fun b!4561094 () Bool)

(declare-fun keys!17743 (ListMap!3761) List!51002)

(assert (=> b!4561094 (= e!2843179 (not (contains!13736 (keys!17743 (extractMap!1302 (toList!4499 lm!1477))) key!3287)))))

(declare-fun b!4561095 () Bool)

(declare-fun e!2843177 () Bool)

(assert (=> b!4561095 (= e!2843177 (contains!13736 (keys!17743 (extractMap!1302 (toList!4499 lm!1477))) key!3287))))

(declare-fun b!4561096 () Bool)

(declare-fun e!2843181 () Unit!102509)

(declare-fun Unit!102513 () Unit!102509)

(assert (=> b!4561096 (= e!2843181 Unit!102513)))

(declare-fun b!4561097 () Bool)

(assert (=> b!4561097 false))

(declare-fun lt!1731816 () Unit!102509)

(declare-fun lt!1731815 () Unit!102509)

(assert (=> b!4561097 (= lt!1731816 lt!1731815)))

(assert (=> b!4561097 (containsKey!1985 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!521 (List!51000 K!12255) Unit!102509)

(assert (=> b!4561097 (= lt!1731815 (lemmaInGetKeysListThenContainsKey!521 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287))))

(declare-fun Unit!102514 () Unit!102509)

(assert (=> b!4561097 (= e!2843181 Unit!102514)))

(declare-fun b!4561098 () Bool)

(assert (=> b!4561098 (= e!2843178 e!2843181)))

(declare-fun c!779841 () Bool)

(assert (=> b!4561098 (= c!779841 call!318271)))

(declare-fun b!4561099 () Bool)

(assert (=> b!4561099 (= e!2843176 e!2843177)))

(declare-fun res!1903318 () Bool)

(assert (=> b!4561099 (=> (not res!1903318) (not e!2843177))))

(assert (=> b!4561099 (= res!1903318 (isDefined!8548 (getValueByKey!1209 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287)))))

(declare-fun b!4561100 () Bool)

(assert (=> b!4561100 (= e!2843180 (keys!17743 (extractMap!1302 (toList!4499 lm!1477))))))

(assert (= (and d!1419887 c!779840) b!4561093))

(assert (= (and d!1419887 (not c!779840)) b!4561098))

(assert (= (and b!4561098 c!779841) b!4561097))

(assert (= (and b!4561098 (not c!779841)) b!4561096))

(assert (= (or b!4561093 b!4561098) bm!318266))

(assert (= (and bm!318266 c!779839) b!4561092))

(assert (= (and bm!318266 (not c!779839)) b!4561100))

(assert (= (and d!1419887 res!1903320) b!4561094))

(assert (= (and d!1419887 (not res!1903319)) b!4561099))

(assert (= (and b!4561099 res!1903318) b!4561095))

(declare-fun m!5351507 () Bool)

(assert (=> d!1419887 m!5351507))

(assert (=> b!4561095 m!5351413))

(declare-fun m!5351509 () Bool)

(assert (=> b!4561095 m!5351509))

(assert (=> b!4561095 m!5351509))

(declare-fun m!5351511 () Bool)

(assert (=> b!4561095 m!5351511))

(assert (=> b!4561094 m!5351413))

(assert (=> b!4561094 m!5351509))

(assert (=> b!4561094 m!5351509))

(assert (=> b!4561094 m!5351511))

(declare-fun m!5351513 () Bool)

(assert (=> bm!318266 m!5351513))

(assert (=> b!4561097 m!5351507))

(declare-fun m!5351515 () Bool)

(assert (=> b!4561097 m!5351515))

(declare-fun m!5351517 () Bool)

(assert (=> b!4561099 m!5351517))

(assert (=> b!4561099 m!5351517))

(declare-fun m!5351519 () Bool)

(assert (=> b!4561099 m!5351519))

(assert (=> b!4561100 m!5351413))

(assert (=> b!4561100 m!5351509))

(declare-fun m!5351521 () Bool)

(assert (=> b!4561092 m!5351521))

(declare-fun m!5351523 () Bool)

(assert (=> b!4561093 m!5351523))

(assert (=> b!4561093 m!5351517))

(assert (=> b!4561093 m!5351517))

(assert (=> b!4561093 m!5351519))

(declare-fun m!5351525 () Bool)

(assert (=> b!4561093 m!5351525))

(assert (=> b!4561019 d!1419887))

(declare-fun bs!939985 () Bool)

(declare-fun d!1419895 () Bool)

(assert (= bs!939985 (and d!1419895 start!453524)))

(declare-fun lambda!180033 () Int)

(assert (=> bs!939985 (= lambda!180033 lambda!180021)))

(declare-fun bs!939986 () Bool)

(assert (= bs!939986 (and d!1419895 d!1419875)))

(assert (=> bs!939986 (not (= lambda!180033 lambda!180024))))

(declare-fun bs!939987 () Bool)

(assert (= bs!939987 (and d!1419895 d!1419883)))

(assert (=> bs!939987 (= lambda!180033 lambda!180027)))

(declare-fun lt!1731848 () ListMap!3761)

(declare-fun invariantList!1074 (List!51000) Bool)

(assert (=> d!1419895 (invariantList!1074 (toList!4500 lt!1731848))))

(declare-fun e!2843202 () ListMap!3761)

(assert (=> d!1419895 (= lt!1731848 e!2843202)))

(declare-fun c!779853 () Bool)

(assert (=> d!1419895 (= c!779853 ((_ is Cons!50877) (toList!4499 lm!1477)))))

(assert (=> d!1419895 (forall!10438 (toList!4499 lm!1477) lambda!180033)))

(assert (=> d!1419895 (= (extractMap!1302 (toList!4499 lm!1477)) lt!1731848)))

(declare-fun b!4561132 () Bool)

(declare-fun addToMapMapFromBucket!760 (List!51000 ListMap!3761) ListMap!3761)

(assert (=> b!4561132 (= e!2843202 (addToMapMapFromBucket!760 (_2!29004 (h!56790 (toList!4499 lm!1477))) (extractMap!1302 (t!357975 (toList!4499 lm!1477)))))))

(declare-fun b!4561133 () Bool)

(assert (=> b!4561133 (= e!2843202 (ListMap!3762 Nil!50876))))

(assert (= (and d!1419895 c!779853) b!4561132))

(assert (= (and d!1419895 (not c!779853)) b!4561133))

(declare-fun m!5351547 () Bool)

(assert (=> d!1419895 m!5351547))

(declare-fun m!5351549 () Bool)

(assert (=> d!1419895 m!5351549))

(declare-fun m!5351551 () Bool)

(assert (=> b!4561132 m!5351551))

(assert (=> b!4561132 m!5351551))

(declare-fun m!5351553 () Bool)

(assert (=> b!4561132 m!5351553))

(assert (=> b!4561019 d!1419895))

(declare-fun d!1419899 () Bool)

(declare-fun res!1903334 () Bool)

(declare-fun e!2843207 () Bool)

(assert (=> d!1419899 (=> res!1903334 e!2843207)))

(assert (=> d!1419899 (= res!1903334 (and ((_ is Cons!50876) lt!1731785) (= (_1!29003 (h!56789 lt!1731785)) key!3287)))))

(assert (=> d!1419899 (= (containsKey!1984 lt!1731785 key!3287) e!2843207)))

(declare-fun b!4561138 () Bool)

(declare-fun e!2843208 () Bool)

(assert (=> b!4561138 (= e!2843207 e!2843208)))

(declare-fun res!1903335 () Bool)

(assert (=> b!4561138 (=> (not res!1903335) (not e!2843208))))

(assert (=> b!4561138 (= res!1903335 ((_ is Cons!50876) lt!1731785))))

(declare-fun b!4561139 () Bool)

(assert (=> b!4561139 (= e!2843208 (containsKey!1984 (t!357974 lt!1731785) key!3287))))

(assert (= (and d!1419899 (not res!1903334)) b!4561138))

(assert (= (and b!4561138 res!1903335) b!4561139))

(declare-fun m!5351555 () Bool)

(assert (=> b!4561139 m!5351555))

(assert (=> b!4561028 d!1419899))

(declare-fun bs!939990 () Bool)

(declare-fun d!1419901 () Bool)

(assert (= bs!939990 (and d!1419901 start!453524)))

(declare-fun lambda!180039 () Int)

(assert (=> bs!939990 (= lambda!180039 lambda!180021)))

(declare-fun bs!939991 () Bool)

(assert (= bs!939991 (and d!1419901 d!1419875)))

(assert (=> bs!939991 (not (= lambda!180039 lambda!180024))))

(declare-fun bs!939992 () Bool)

(assert (= bs!939992 (and d!1419901 d!1419883)))

(assert (=> bs!939992 (= lambda!180039 lambda!180027)))

(declare-fun bs!939993 () Bool)

(assert (= bs!939993 (and d!1419901 d!1419895)))

(assert (=> bs!939993 (= lambda!180039 lambda!180033)))

(assert (=> d!1419901 (not (contains!13733 (extractMap!1302 (toList!4499 lm!1477)) key!3287))))

(declare-fun lt!1731854 () Unit!102509)

(declare-fun choose!30226 (ListLongMap!3131 K!12255 Hashable!5641) Unit!102509)

(assert (=> d!1419901 (= lt!1731854 (choose!30226 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1419901 (forall!10438 (toList!4499 lm!1477) lambda!180039)))

(assert (=> d!1419901 (= (lemmaNotInItsHashBucketThenNotInMap!228 lm!1477 key!3287 hashF!1107) lt!1731854)))

(declare-fun bs!939994 () Bool)

(assert (= bs!939994 d!1419901))

(assert (=> bs!939994 m!5351413))

(assert (=> bs!939994 m!5351413))

(assert (=> bs!939994 m!5351415))

(declare-fun m!5351565 () Bool)

(assert (=> bs!939994 m!5351565))

(declare-fun m!5351567 () Bool)

(assert (=> bs!939994 m!5351567))

(assert (=> b!4561017 d!1419901))

(declare-fun d!1419905 () Bool)

(assert (=> d!1419905 true))

(assert (=> d!1419905 true))

(declare-fun lambda!180044 () Int)

(declare-fun forall!10439 (List!51000 Int) Bool)

(assert (=> d!1419905 (= (allKeysSameHash!1100 newBucket!178 hash!344 hashF!1107) (forall!10439 newBucket!178 lambda!180044))))

(declare-fun bs!939995 () Bool)

(assert (= bs!939995 d!1419905))

(declare-fun m!5351569 () Bool)

(assert (=> bs!939995 m!5351569))

(assert (=> b!4561018 d!1419905))

(declare-fun bs!940000 () Bool)

(declare-fun d!1419907 () Bool)

(assert (= bs!940000 (and d!1419907 start!453524)))

(declare-fun lambda!180048 () Int)

(assert (=> bs!940000 (= lambda!180048 lambda!180021)))

(declare-fun bs!940001 () Bool)

(assert (= bs!940001 (and d!1419907 d!1419895)))

(assert (=> bs!940001 (= lambda!180048 lambda!180033)))

(declare-fun bs!940002 () Bool)

(assert (= bs!940002 (and d!1419907 d!1419901)))

(assert (=> bs!940002 (= lambda!180048 lambda!180039)))

(declare-fun bs!940003 () Bool)

(assert (= bs!940003 (and d!1419907 d!1419875)))

(assert (=> bs!940003 (not (= lambda!180048 lambda!180024))))

(declare-fun bs!940004 () Bool)

(assert (= bs!940004 (and d!1419907 d!1419883)))

(assert (=> bs!940004 (= lambda!180048 lambda!180027)))

(assert (=> d!1419907 (contains!13734 lm!1477 (hash!3043 hashF!1107 key!3287))))

(declare-fun lt!1731860 () Unit!102509)

(declare-fun choose!30228 (ListLongMap!3131 K!12255 Hashable!5641) Unit!102509)

(assert (=> d!1419907 (= lt!1731860 (choose!30228 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1419907 (forall!10438 (toList!4499 lm!1477) lambda!180048)))

(assert (=> d!1419907 (= (lemmaInGenMapThenLongMapContainsHash!320 lm!1477 key!3287 hashF!1107) lt!1731860)))

(declare-fun bs!940005 () Bool)

(assert (= bs!940005 d!1419907))

(assert (=> bs!940005 m!5351423))

(assert (=> bs!940005 m!5351423))

(declare-fun m!5351579 () Bool)

(assert (=> bs!940005 m!5351579))

(declare-fun m!5351581 () Bool)

(assert (=> bs!940005 m!5351581))

(declare-fun m!5351583 () Bool)

(assert (=> bs!940005 m!5351583))

(assert (=> b!4561021 d!1419907))

(declare-fun d!1419913 () Bool)

(assert (=> d!1419913 (= (apply!11983 lm!1477 hash!344) (get!16764 (getValueByKey!1208 (toList!4499 lm!1477) hash!344)))))

(declare-fun bs!940006 () Bool)

(assert (= bs!940006 d!1419913))

(declare-fun m!5351585 () Bool)

(assert (=> bs!940006 m!5351585))

(assert (=> bs!940006 m!5351585))

(declare-fun m!5351587 () Bool)

(assert (=> bs!940006 m!5351587))

(assert (=> b!4561021 d!1419913))

(declare-fun b!4561172 () Bool)

(declare-fun e!2843229 () List!51000)

(assert (=> b!4561172 (= e!2843229 (Cons!50876 (h!56789 lt!1731785) (removePairForKey!873 (t!357974 lt!1731785) key!3287)))))

(declare-fun b!4561171 () Bool)

(declare-fun e!2843228 () List!51000)

(assert (=> b!4561171 (= e!2843228 e!2843229)))

(declare-fun c!779862 () Bool)

(assert (=> b!4561171 (= c!779862 ((_ is Cons!50876) lt!1731785))))

(declare-fun b!4561170 () Bool)

(assert (=> b!4561170 (= e!2843228 (t!357974 lt!1731785))))

(declare-fun b!4561173 () Bool)

(assert (=> b!4561173 (= e!2843229 Nil!50876)))

(declare-fun d!1419915 () Bool)

(declare-fun lt!1731866 () List!51000)

(assert (=> d!1419915 (not (containsKey!1984 lt!1731866 key!3287))))

(assert (=> d!1419915 (= lt!1731866 e!2843228)))

(declare-fun c!779861 () Bool)

(assert (=> d!1419915 (= c!779861 (and ((_ is Cons!50876) lt!1731785) (= (_1!29003 (h!56789 lt!1731785)) key!3287)))))

(assert (=> d!1419915 (noDuplicateKeys!1246 lt!1731785)))

(assert (=> d!1419915 (= (removePairForKey!873 lt!1731785 key!3287) lt!1731866)))

(assert (= (and d!1419915 c!779861) b!4561170))

(assert (= (and d!1419915 (not c!779861)) b!4561171))

(assert (= (and b!4561171 c!779862) b!4561172))

(assert (= (and b!4561171 (not c!779862)) b!4561173))

(declare-fun m!5351597 () Bool)

(assert (=> b!4561172 m!5351597))

(declare-fun m!5351599 () Bool)

(assert (=> d!1419915 m!5351599))

(declare-fun m!5351601 () Bool)

(assert (=> d!1419915 m!5351601))

(assert (=> b!4561021 d!1419915))

(declare-fun d!1419921 () Bool)

(assert (=> d!1419921 (dynLambda!21279 lambda!180021 lt!1731786)))

(declare-fun lt!1731869 () Unit!102509)

(declare-fun choose!30229 (List!51001 Int tuple2!51420) Unit!102509)

(assert (=> d!1419921 (= lt!1731869 (choose!30229 (toList!4499 lm!1477) lambda!180021 lt!1731786))))

(declare-fun e!2843238 () Bool)

(assert (=> d!1419921 e!2843238))

(declare-fun res!1903356 () Bool)

(assert (=> d!1419921 (=> (not res!1903356) (not e!2843238))))

(assert (=> d!1419921 (= res!1903356 (forall!10438 (toList!4499 lm!1477) lambda!180021))))

(assert (=> d!1419921 (= (forallContained!2701 (toList!4499 lm!1477) lambda!180021 lt!1731786) lt!1731869)))

(declare-fun b!4561182 () Bool)

(assert (=> b!4561182 (= e!2843238 (contains!13735 (toList!4499 lm!1477) lt!1731786))))

(assert (= (and d!1419921 res!1903356) b!4561182))

(declare-fun b_lambda!162171 () Bool)

(assert (=> (not b_lambda!162171) (not d!1419921)))

(declare-fun m!5351611 () Bool)

(assert (=> d!1419921 m!5351611))

(declare-fun m!5351613 () Bool)

(assert (=> d!1419921 m!5351613))

(assert (=> d!1419921 m!5351437))

(assert (=> b!4561182 m!5351445))

(assert (=> b!4561021 d!1419921))

(declare-fun d!1419929 () Bool)

(declare-fun lt!1731870 () Bool)

(assert (=> d!1419929 (= lt!1731870 (select (content!8521 (toList!4499 lm!1477)) lt!1731786))))

(declare-fun e!2843240 () Bool)

(assert (=> d!1419929 (= lt!1731870 e!2843240)))

(declare-fun res!1903358 () Bool)

(assert (=> d!1419929 (=> (not res!1903358) (not e!2843240))))

(assert (=> d!1419929 (= res!1903358 ((_ is Cons!50877) (toList!4499 lm!1477)))))

(assert (=> d!1419929 (= (contains!13735 (toList!4499 lm!1477) lt!1731786) lt!1731870)))

(declare-fun b!4561183 () Bool)

(declare-fun e!2843239 () Bool)

(assert (=> b!4561183 (= e!2843240 e!2843239)))

(declare-fun res!1903357 () Bool)

(assert (=> b!4561183 (=> res!1903357 e!2843239)))

(assert (=> b!4561183 (= res!1903357 (= (h!56790 (toList!4499 lm!1477)) lt!1731786))))

(declare-fun b!4561184 () Bool)

(assert (=> b!4561184 (= e!2843239 (contains!13735 (t!357975 (toList!4499 lm!1477)) lt!1731786))))

(assert (= (and d!1419929 res!1903358) b!4561183))

(assert (= (and b!4561183 (not res!1903357)) b!4561184))

(declare-fun m!5351615 () Bool)

(assert (=> d!1419929 m!5351615))

(declare-fun m!5351617 () Bool)

(assert (=> d!1419929 m!5351617))

(assert (=> b!4561184 m!5351459))

(assert (=> b!4561021 d!1419929))

(declare-fun d!1419931 () Bool)

(assert (=> d!1419931 (contains!13735 (toList!4499 lm!1477) (tuple2!51421 hash!344 lt!1731785))))

(declare-fun lt!1731875 () Unit!102509)

(declare-fun choose!30230 (List!51001 (_ BitVec 64) List!51000) Unit!102509)

(assert (=> d!1419931 (= lt!1731875 (choose!30230 (toList!4499 lm!1477) hash!344 lt!1731785))))

(declare-fun e!2843243 () Bool)

(assert (=> d!1419931 e!2843243))

(declare-fun res!1903361 () Bool)

(assert (=> d!1419931 (=> (not res!1903361) (not e!2843243))))

(assert (=> d!1419931 (= res!1903361 (isStrictlySorted!489 (toList!4499 lm!1477)))))

(assert (=> d!1419931 (= (lemmaGetValueByKeyImpliesContainsTuple!758 (toList!4499 lm!1477) hash!344 lt!1731785) lt!1731875)))

(declare-fun b!4561187 () Bool)

(assert (=> b!4561187 (= e!2843243 (= (getValueByKey!1208 (toList!4499 lm!1477) hash!344) (Some!11275 lt!1731785)))))

(assert (= (and d!1419931 res!1903361) b!4561187))

(declare-fun m!5351619 () Bool)

(assert (=> d!1419931 m!5351619))

(declare-fun m!5351621 () Bool)

(assert (=> d!1419931 m!5351621))

(assert (=> d!1419931 m!5351475))

(assert (=> b!4561187 m!5351585))

(assert (=> b!4561021 d!1419931))

(declare-fun d!1419933 () Bool)

(declare-fun e!2843251 () Bool)

(assert (=> d!1419933 e!2843251))

(declare-fun res!1903367 () Bool)

(assert (=> d!1419933 (=> res!1903367 e!2843251)))

(declare-fun lt!1731890 () Bool)

(assert (=> d!1419933 (= res!1903367 (not lt!1731890))))

(declare-fun lt!1731888 () Bool)

(assert (=> d!1419933 (= lt!1731890 lt!1731888)))

(declare-fun lt!1731891 () Unit!102509)

(declare-fun e!2843252 () Unit!102509)

(assert (=> d!1419933 (= lt!1731891 e!2843252)))

(declare-fun c!779865 () Bool)

(assert (=> d!1419933 (= c!779865 lt!1731888)))

(declare-fun containsKey!1987 (List!51001 (_ BitVec 64)) Bool)

(assert (=> d!1419933 (= lt!1731888 (containsKey!1987 (toList!4499 lm!1477) lt!1731783))))

(assert (=> d!1419933 (= (contains!13734 lm!1477 lt!1731783) lt!1731890)))

(declare-fun b!4561197 () Bool)

(declare-fun lt!1731889 () Unit!102509)

(assert (=> b!4561197 (= e!2843252 lt!1731889)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1114 (List!51001 (_ BitVec 64)) Unit!102509)

(assert (=> b!4561197 (= lt!1731889 (lemmaContainsKeyImpliesGetValueByKeyDefined!1114 (toList!4499 lm!1477) lt!1731783))))

(declare-fun isDefined!8550 (Option!11276) Bool)

(assert (=> b!4561197 (isDefined!8550 (getValueByKey!1208 (toList!4499 lm!1477) lt!1731783))))

(declare-fun b!4561198 () Bool)

(declare-fun Unit!102517 () Unit!102509)

(assert (=> b!4561198 (= e!2843252 Unit!102517)))

(declare-fun b!4561199 () Bool)

(assert (=> b!4561199 (= e!2843251 (isDefined!8550 (getValueByKey!1208 (toList!4499 lm!1477) lt!1731783)))))

(assert (= (and d!1419933 c!779865) b!4561197))

(assert (= (and d!1419933 (not c!779865)) b!4561198))

(assert (= (and d!1419933 (not res!1903367)) b!4561199))

(declare-fun m!5351633 () Bool)

(assert (=> d!1419933 m!5351633))

(declare-fun m!5351635 () Bool)

(assert (=> b!4561197 m!5351635))

(declare-fun m!5351637 () Bool)

(assert (=> b!4561197 m!5351637))

(assert (=> b!4561197 m!5351637))

(declare-fun m!5351639 () Bool)

(assert (=> b!4561197 m!5351639))

(assert (=> b!4561199 m!5351637))

(assert (=> b!4561199 m!5351637))

(assert (=> b!4561199 m!5351639))

(assert (=> b!4561021 d!1419933))

(declare-fun d!1419939 () Bool)

(declare-fun hash!3045 (Hashable!5641 K!12255) (_ BitVec 64))

(assert (=> d!1419939 (= (hash!3043 hashF!1107 key!3287) (hash!3045 hashF!1107 key!3287))))

(declare-fun bs!940015 () Bool)

(assert (= bs!940015 d!1419939))

(declare-fun m!5351641 () Bool)

(assert (=> bs!940015 m!5351641))

(assert (=> b!4561022 d!1419939))

(declare-fun d!1419941 () Bool)

(declare-fun e!2843257 () Bool)

(assert (=> d!1419941 e!2843257))

(declare-fun res!1903368 () Bool)

(assert (=> d!1419941 (=> res!1903368 e!2843257)))

(declare-fun lt!1731896 () Bool)

(assert (=> d!1419941 (= res!1903368 (not lt!1731896))))

(declare-fun lt!1731894 () Bool)

(assert (=> d!1419941 (= lt!1731896 lt!1731894)))

(declare-fun lt!1731897 () Unit!102509)

(declare-fun e!2843258 () Unit!102509)

(assert (=> d!1419941 (= lt!1731897 e!2843258)))

(declare-fun c!779870 () Bool)

(assert (=> d!1419941 (= c!779870 lt!1731894)))

(assert (=> d!1419941 (= lt!1731894 (containsKey!1987 (toList!4499 lt!1731781) hash!344))))

(assert (=> d!1419941 (= (contains!13734 lt!1731781 hash!344) lt!1731896)))

(declare-fun b!4561208 () Bool)

(declare-fun lt!1731895 () Unit!102509)

(assert (=> b!4561208 (= e!2843258 lt!1731895)))

(assert (=> b!4561208 (= lt!1731895 (lemmaContainsKeyImpliesGetValueByKeyDefined!1114 (toList!4499 lt!1731781) hash!344))))

(assert (=> b!4561208 (isDefined!8550 (getValueByKey!1208 (toList!4499 lt!1731781) hash!344))))

(declare-fun b!4561209 () Bool)

(declare-fun Unit!102518 () Unit!102509)

(assert (=> b!4561209 (= e!2843258 Unit!102518)))

(declare-fun b!4561210 () Bool)

(assert (=> b!4561210 (= e!2843257 (isDefined!8550 (getValueByKey!1208 (toList!4499 lt!1731781) hash!344)))))

(assert (= (and d!1419941 c!779870) b!4561208))

(assert (= (and d!1419941 (not c!779870)) b!4561209))

(assert (= (and d!1419941 (not res!1903368)) b!4561210))

(declare-fun m!5351643 () Bool)

(assert (=> d!1419941 m!5351643))

(declare-fun m!5351645 () Bool)

(assert (=> b!4561208 m!5351645))

(assert (=> b!4561208 m!5351479))

(assert (=> b!4561208 m!5351479))

(declare-fun m!5351647 () Bool)

(assert (=> b!4561208 m!5351647))

(assert (=> b!4561210 m!5351479))

(assert (=> b!4561210 m!5351479))

(assert (=> b!4561210 m!5351647))

(assert (=> b!4561020 d!1419941))

(declare-fun d!1419943 () Bool)

(declare-fun tail!7870 (List!51001) List!51001)

(assert (=> d!1419943 (= (tail!7869 lm!1477) (ListLongMap!3132 (tail!7870 (toList!4499 lm!1477))))))

(declare-fun bs!940016 () Bool)

(assert (= bs!940016 d!1419943))

(declare-fun m!5351655 () Bool)

(assert (=> bs!940016 m!5351655))

(assert (=> b!4561020 d!1419943))

(declare-fun b!4561221 () Bool)

(declare-fun e!2843265 () Bool)

(declare-fun tp!1339292 () Bool)

(declare-fun tp!1339293 () Bool)

(assert (=> b!4561221 (= e!2843265 (and tp!1339292 tp!1339293))))

(assert (=> b!4561029 (= tp!1339287 e!2843265)))

(assert (= (and b!4561029 ((_ is Cons!50877) (toList!4499 lm!1477))) b!4561221))

(declare-fun e!2843268 () Bool)

(declare-fun b!4561226 () Bool)

(declare-fun tp!1339296 () Bool)

(assert (=> b!4561226 (= e!2843268 (and tp_is_empty!28261 tp_is_empty!28263 tp!1339296))))

(assert (=> b!4561027 (= tp!1339286 e!2843268)))

(assert (= (and b!4561027 ((_ is Cons!50876) (t!357974 newBucket!178))) b!4561226))

(declare-fun b_lambda!162175 () Bool)

(assert (= b_lambda!162167 (or start!453524 b_lambda!162175)))

(declare-fun bs!940017 () Bool)

(declare-fun d!1419949 () Bool)

(assert (= bs!940017 (and d!1419949 start!453524)))

(assert (=> bs!940017 (= (dynLambda!21279 lambda!180021 (h!56790 (toList!4499 lm!1477))) (noDuplicateKeys!1246 (_2!29004 (h!56790 (toList!4499 lm!1477)))))))

(declare-fun m!5351661 () Bool)

(assert (=> bs!940017 m!5351661))

(assert (=> b!4561046 d!1419949))

(declare-fun b_lambda!162177 () Bool)

(assert (= b_lambda!162171 (or start!453524 b_lambda!162177)))

(declare-fun bs!940018 () Bool)

(declare-fun d!1419951 () Bool)

(assert (= bs!940018 (and d!1419951 start!453524)))

(assert (=> bs!940018 (= (dynLambda!21279 lambda!180021 lt!1731786) (noDuplicateKeys!1246 (_2!29004 lt!1731786)))))

(declare-fun m!5351663 () Bool)

(assert (=> bs!940018 m!5351663))

(assert (=> d!1419921 d!1419951))

(check-sat (not bs!940018) (not b!4561093) (not b!4561061) (not b!4561226) (not b!4561172) (not d!1419875) (not d!1419873) (not b!4561221) (not b_lambda!162175) (not d!1419941) (not b!4561059) (not b!4561041) (not d!1419869) tp_is_empty!28261 (not b!4561097) (not d!1419877) (not b!4561132) (not b!4561197) (not b!4561035) (not d!1419907) (not bs!940017) (not d!1419929) (not d!1419931) (not b!4561056) (not b!4561094) (not b!4561092) (not d!1419905) (not b!4561139) (not b_lambda!162177) tp_is_empty!28263 (not d!1419933) (not b!4561100) (not d!1419943) (not d!1419921) (not d!1419895) (not b!4561058) (not d!1419913) (not d!1419901) (not b!4561187) (not b!4561210) (not b!4561095) (not d!1419883) (not d!1419939) (not d!1419887) (not b!4561099) (not bm!318266) (not b!4561182) (not b!4561199) (not b!4561034) (not b!4561208) (not d!1419915) (not b!4561047) (not b!4561184))
(check-sat)
(get-model)

(declare-fun d!1419971 () Bool)

(declare-fun lt!1731921 () Bool)

(declare-fun content!8523 (List!51002) (InoxSet K!12255))

(assert (=> d!1419971 (= lt!1731921 (select (content!8523 (keys!17743 (extractMap!1302 (toList!4499 lm!1477)))) key!3287))))

(declare-fun e!2843297 () Bool)

(assert (=> d!1419971 (= lt!1731921 e!2843297)))

(declare-fun res!1903388 () Bool)

(assert (=> d!1419971 (=> (not res!1903388) (not e!2843297))))

(assert (=> d!1419971 (= res!1903388 ((_ is Cons!50878) (keys!17743 (extractMap!1302 (toList!4499 lm!1477)))))))

(assert (=> d!1419971 (= (contains!13736 (keys!17743 (extractMap!1302 (toList!4499 lm!1477))) key!3287) lt!1731921)))

(declare-fun b!4561268 () Bool)

(declare-fun e!2843296 () Bool)

(assert (=> b!4561268 (= e!2843297 e!2843296)))

(declare-fun res!1903389 () Bool)

(assert (=> b!4561268 (=> res!1903389 e!2843296)))

(assert (=> b!4561268 (= res!1903389 (= (h!56793 (keys!17743 (extractMap!1302 (toList!4499 lm!1477)))) key!3287))))

(declare-fun b!4561269 () Bool)

(assert (=> b!4561269 (= e!2843296 (contains!13736 (t!357976 (keys!17743 (extractMap!1302 (toList!4499 lm!1477)))) key!3287))))

(assert (= (and d!1419971 res!1903388) b!4561268))

(assert (= (and b!4561268 (not res!1903389)) b!4561269))

(assert (=> d!1419971 m!5351509))

(declare-fun m!5351701 () Bool)

(assert (=> d!1419971 m!5351701))

(declare-fun m!5351703 () Bool)

(assert (=> d!1419971 m!5351703))

(declare-fun m!5351705 () Bool)

(assert (=> b!4561269 m!5351705))

(assert (=> b!4561095 d!1419971))

(declare-fun b!4561277 () Bool)

(assert (=> b!4561277 true))

(declare-fun d!1419973 () Bool)

(declare-fun e!2843300 () Bool)

(assert (=> d!1419973 e!2843300))

(declare-fun res!1903398 () Bool)

(assert (=> d!1419973 (=> (not res!1903398) (not e!2843300))))

(declare-fun lt!1731924 () List!51002)

(declare-fun noDuplicate!777 (List!51002) Bool)

(assert (=> d!1419973 (= res!1903398 (noDuplicate!777 lt!1731924))))

(assert (=> d!1419973 (= lt!1731924 (getKeysList!522 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))))))

(assert (=> d!1419973 (= (keys!17743 (extractMap!1302 (toList!4499 lm!1477))) lt!1731924)))

(declare-fun b!4561276 () Bool)

(declare-fun res!1903396 () Bool)

(assert (=> b!4561276 (=> (not res!1903396) (not e!2843300))))

(declare-fun length!410 (List!51002) Int)

(declare-fun length!411 (List!51000) Int)

(assert (=> b!4561276 (= res!1903396 (= (length!410 lt!1731924) (length!411 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))))))

(declare-fun res!1903397 () Bool)

(assert (=> b!4561277 (=> (not res!1903397) (not e!2843300))))

(declare-fun lambda!180062 () Int)

(declare-fun forall!10441 (List!51002 Int) Bool)

(assert (=> b!4561277 (= res!1903397 (forall!10441 lt!1731924 lambda!180062))))

(declare-fun b!4561278 () Bool)

(declare-fun lambda!180063 () Int)

(declare-fun map!11211 (List!51000 Int) List!51002)

(assert (=> b!4561278 (= e!2843300 (= (content!8523 lt!1731924) (content!8523 (map!11211 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) lambda!180063))))))

(assert (= (and d!1419973 res!1903398) b!4561276))

(assert (= (and b!4561276 res!1903396) b!4561277))

(assert (= (and b!4561277 res!1903397) b!4561278))

(declare-fun m!5351707 () Bool)

(assert (=> d!1419973 m!5351707))

(assert (=> d!1419973 m!5351521))

(declare-fun m!5351709 () Bool)

(assert (=> b!4561276 m!5351709))

(declare-fun m!5351711 () Bool)

(assert (=> b!4561276 m!5351711))

(declare-fun m!5351713 () Bool)

(assert (=> b!4561277 m!5351713))

(declare-fun m!5351715 () Bool)

(assert (=> b!4561278 m!5351715))

(declare-fun m!5351717 () Bool)

(assert (=> b!4561278 m!5351717))

(assert (=> b!4561278 m!5351717))

(declare-fun m!5351719 () Bool)

(assert (=> b!4561278 m!5351719))

(assert (=> b!4561095 d!1419973))

(declare-fun d!1419975 () Bool)

(assert (=> d!1419975 (= (get!16764 (getValueByKey!1208 (toList!4499 lt!1731781) hash!344)) (v!45075 (getValueByKey!1208 (toList!4499 lt!1731781) hash!344)))))

(assert (=> d!1419877 d!1419975))

(declare-fun b!4561289 () Bool)

(declare-fun e!2843305 () Option!11276)

(assert (=> b!4561289 (= e!2843305 (Some!11275 (_2!29004 (h!56790 (toList!4499 lt!1731781)))))))

(declare-fun b!4561292 () Bool)

(declare-fun e!2843306 () Option!11276)

(assert (=> b!4561292 (= e!2843306 None!11275)))

(declare-fun b!4561291 () Bool)

(assert (=> b!4561291 (= e!2843306 (getValueByKey!1208 (t!357975 (toList!4499 lt!1731781)) hash!344))))

(declare-fun d!1419977 () Bool)

(declare-fun c!779881 () Bool)

(assert (=> d!1419977 (= c!779881 (and ((_ is Cons!50877) (toList!4499 lt!1731781)) (= (_1!29004 (h!56790 (toList!4499 lt!1731781))) hash!344)))))

(assert (=> d!1419977 (= (getValueByKey!1208 (toList!4499 lt!1731781) hash!344) e!2843305)))

(declare-fun b!4561290 () Bool)

(assert (=> b!4561290 (= e!2843305 e!2843306)))

(declare-fun c!779882 () Bool)

(assert (=> b!4561290 (= c!779882 (and ((_ is Cons!50877) (toList!4499 lt!1731781)) (not (= (_1!29004 (h!56790 (toList!4499 lt!1731781))) hash!344))))))

(assert (= (and d!1419977 c!779881) b!4561289))

(assert (= (and d!1419977 (not c!779881)) b!4561290))

(assert (= (and b!4561290 c!779882) b!4561291))

(assert (= (and b!4561290 (not c!779882)) b!4561292))

(declare-fun m!5351721 () Bool)

(assert (=> b!4561291 m!5351721))

(assert (=> d!1419877 d!1419977))

(declare-fun d!1419979 () Bool)

(assert (=> d!1419979 (isDefined!8550 (getValueByKey!1208 (toList!4499 lm!1477) lt!1731783))))

(declare-fun lt!1731927 () Unit!102509)

(declare-fun choose!30234 (List!51001 (_ BitVec 64)) Unit!102509)

(assert (=> d!1419979 (= lt!1731927 (choose!30234 (toList!4499 lm!1477) lt!1731783))))

(declare-fun e!2843309 () Bool)

(assert (=> d!1419979 e!2843309))

(declare-fun res!1903401 () Bool)

(assert (=> d!1419979 (=> (not res!1903401) (not e!2843309))))

(assert (=> d!1419979 (= res!1903401 (isStrictlySorted!489 (toList!4499 lm!1477)))))

(assert (=> d!1419979 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1114 (toList!4499 lm!1477) lt!1731783) lt!1731927)))

(declare-fun b!4561295 () Bool)

(assert (=> b!4561295 (= e!2843309 (containsKey!1987 (toList!4499 lm!1477) lt!1731783))))

(assert (= (and d!1419979 res!1903401) b!4561295))

(assert (=> d!1419979 m!5351637))

(assert (=> d!1419979 m!5351637))

(assert (=> d!1419979 m!5351639))

(declare-fun m!5351723 () Bool)

(assert (=> d!1419979 m!5351723))

(assert (=> d!1419979 m!5351475))

(assert (=> b!4561295 m!5351633))

(assert (=> b!4561197 d!1419979))

(declare-fun d!1419981 () Bool)

(declare-fun isEmpty!28788 (Option!11276) Bool)

(assert (=> d!1419981 (= (isDefined!8550 (getValueByKey!1208 (toList!4499 lm!1477) lt!1731783)) (not (isEmpty!28788 (getValueByKey!1208 (toList!4499 lm!1477) lt!1731783))))))

(declare-fun bs!940030 () Bool)

(assert (= bs!940030 d!1419981))

(assert (=> bs!940030 m!5351637))

(declare-fun m!5351725 () Bool)

(assert (=> bs!940030 m!5351725))

(assert (=> b!4561197 d!1419981))

(declare-fun b!4561296 () Bool)

(declare-fun e!2843310 () Option!11276)

(assert (=> b!4561296 (= e!2843310 (Some!11275 (_2!29004 (h!56790 (toList!4499 lm!1477)))))))

(declare-fun b!4561299 () Bool)

(declare-fun e!2843311 () Option!11276)

(assert (=> b!4561299 (= e!2843311 None!11275)))

(declare-fun b!4561298 () Bool)

(assert (=> b!4561298 (= e!2843311 (getValueByKey!1208 (t!357975 (toList!4499 lm!1477)) lt!1731783))))

(declare-fun d!1419983 () Bool)

(declare-fun c!779883 () Bool)

(assert (=> d!1419983 (= c!779883 (and ((_ is Cons!50877) (toList!4499 lm!1477)) (= (_1!29004 (h!56790 (toList!4499 lm!1477))) lt!1731783)))))

(assert (=> d!1419983 (= (getValueByKey!1208 (toList!4499 lm!1477) lt!1731783) e!2843310)))

(declare-fun b!4561297 () Bool)

(assert (=> b!4561297 (= e!2843310 e!2843311)))

(declare-fun c!779884 () Bool)

(assert (=> b!4561297 (= c!779884 (and ((_ is Cons!50877) (toList!4499 lm!1477)) (not (= (_1!29004 (h!56790 (toList!4499 lm!1477))) lt!1731783))))))

(assert (= (and d!1419983 c!779883) b!4561296))

(assert (= (and d!1419983 (not c!779883)) b!4561297))

(assert (= (and b!4561297 c!779884) b!4561298))

(assert (= (and b!4561297 (not c!779884)) b!4561299))

(declare-fun m!5351727 () Bool)

(assert (=> b!4561298 m!5351727))

(assert (=> b!4561197 d!1419983))

(declare-fun d!1419985 () Bool)

(declare-fun res!1903402 () Bool)

(declare-fun e!2843312 () Bool)

(assert (=> d!1419985 (=> res!1903402 e!2843312)))

(assert (=> d!1419985 (= res!1903402 ((_ is Nil!50877) (t!357975 (toList!4499 lm!1477))))))

(assert (=> d!1419985 (= (forall!10438 (t!357975 (toList!4499 lm!1477)) lambda!180021) e!2843312)))

(declare-fun b!4561300 () Bool)

(declare-fun e!2843313 () Bool)

(assert (=> b!4561300 (= e!2843312 e!2843313)))

(declare-fun res!1903403 () Bool)

(assert (=> b!4561300 (=> (not res!1903403) (not e!2843313))))

(assert (=> b!4561300 (= res!1903403 (dynLambda!21279 lambda!180021 (h!56790 (t!357975 (toList!4499 lm!1477)))))))

(declare-fun b!4561301 () Bool)

(assert (=> b!4561301 (= e!2843313 (forall!10438 (t!357975 (t!357975 (toList!4499 lm!1477))) lambda!180021))))

(assert (= (and d!1419985 (not res!1903402)) b!4561300))

(assert (= (and b!4561300 res!1903403) b!4561301))

(declare-fun b_lambda!162183 () Bool)

(assert (=> (not b_lambda!162183) (not b!4561300)))

(declare-fun m!5351729 () Bool)

(assert (=> b!4561300 m!5351729))

(declare-fun m!5351731 () Bool)

(assert (=> b!4561301 m!5351731))

(assert (=> b!4561047 d!1419985))

(declare-fun d!1419987 () Bool)

(declare-fun res!1903408 () Bool)

(declare-fun e!2843318 () Bool)

(assert (=> d!1419987 (=> res!1903408 e!2843318)))

(assert (=> d!1419987 (= res!1903408 (and ((_ is Cons!50877) (toList!4499 lt!1731781)) (= (_1!29004 (h!56790 (toList!4499 lt!1731781))) hash!344)))))

(assert (=> d!1419987 (= (containsKey!1987 (toList!4499 lt!1731781) hash!344) e!2843318)))

(declare-fun b!4561306 () Bool)

(declare-fun e!2843319 () Bool)

(assert (=> b!4561306 (= e!2843318 e!2843319)))

(declare-fun res!1903409 () Bool)

(assert (=> b!4561306 (=> (not res!1903409) (not e!2843319))))

(assert (=> b!4561306 (= res!1903409 (and (or (not ((_ is Cons!50877) (toList!4499 lt!1731781))) (bvsle (_1!29004 (h!56790 (toList!4499 lt!1731781))) hash!344)) ((_ is Cons!50877) (toList!4499 lt!1731781)) (bvslt (_1!29004 (h!56790 (toList!4499 lt!1731781))) hash!344)))))

(declare-fun b!4561307 () Bool)

(assert (=> b!4561307 (= e!2843319 (containsKey!1987 (t!357975 (toList!4499 lt!1731781)) hash!344))))

(assert (= (and d!1419987 (not res!1903408)) b!4561306))

(assert (= (and b!4561306 res!1903409) b!4561307))

(declare-fun m!5351733 () Bool)

(assert (=> b!4561307 m!5351733))

(assert (=> d!1419941 d!1419987))

(declare-fun d!1419989 () Bool)

(assert (=> d!1419989 (= (get!16764 (getValueByKey!1208 (toList!4499 lm!1477) hash!344)) (v!45075 (getValueByKey!1208 (toList!4499 lm!1477) hash!344)))))

(assert (=> d!1419913 d!1419989))

(declare-fun b!4561308 () Bool)

(declare-fun e!2843320 () Option!11276)

(assert (=> b!4561308 (= e!2843320 (Some!11275 (_2!29004 (h!56790 (toList!4499 lm!1477)))))))

(declare-fun b!4561311 () Bool)

(declare-fun e!2843321 () Option!11276)

(assert (=> b!4561311 (= e!2843321 None!11275)))

(declare-fun b!4561310 () Bool)

(assert (=> b!4561310 (= e!2843321 (getValueByKey!1208 (t!357975 (toList!4499 lm!1477)) hash!344))))

(declare-fun d!1419991 () Bool)

(declare-fun c!779885 () Bool)

(assert (=> d!1419991 (= c!779885 (and ((_ is Cons!50877) (toList!4499 lm!1477)) (= (_1!29004 (h!56790 (toList!4499 lm!1477))) hash!344)))))

(assert (=> d!1419991 (= (getValueByKey!1208 (toList!4499 lm!1477) hash!344) e!2843320)))

(declare-fun b!4561309 () Bool)

(assert (=> b!4561309 (= e!2843320 e!2843321)))

(declare-fun c!779886 () Bool)

(assert (=> b!4561309 (= c!779886 (and ((_ is Cons!50877) (toList!4499 lm!1477)) (not (= (_1!29004 (h!56790 (toList!4499 lm!1477))) hash!344))))))

(assert (= (and d!1419991 c!779885) b!4561308))

(assert (= (and d!1419991 (not c!779885)) b!4561309))

(assert (= (and b!4561309 c!779886) b!4561310))

(assert (= (and b!4561309 (not c!779886)) b!4561311))

(declare-fun m!5351735 () Bool)

(assert (=> b!4561310 m!5351735))

(assert (=> d!1419913 d!1419991))

(declare-fun d!1419993 () Bool)

(assert (=> d!1419993 (= (tail!7870 (toList!4499 lm!1477)) (t!357975 (toList!4499 lm!1477)))))

(assert (=> d!1419943 d!1419993))

(declare-fun d!1419995 () Bool)

(declare-fun noDuplicatedKeys!292 (List!51000) Bool)

(assert (=> d!1419995 (= (invariantList!1074 (toList!4500 lt!1731848)) (noDuplicatedKeys!292 (toList!4500 lt!1731848)))))

(declare-fun bs!940031 () Bool)

(assert (= bs!940031 d!1419995))

(declare-fun m!5351737 () Bool)

(assert (=> bs!940031 m!5351737))

(assert (=> d!1419895 d!1419995))

(declare-fun d!1419997 () Bool)

(declare-fun res!1903410 () Bool)

(declare-fun e!2843322 () Bool)

(assert (=> d!1419997 (=> res!1903410 e!2843322)))

(assert (=> d!1419997 (= res!1903410 ((_ is Nil!50877) (toList!4499 lm!1477)))))

(assert (=> d!1419997 (= (forall!10438 (toList!4499 lm!1477) lambda!180033) e!2843322)))

(declare-fun b!4561312 () Bool)

(declare-fun e!2843323 () Bool)

(assert (=> b!4561312 (= e!2843322 e!2843323)))

(declare-fun res!1903411 () Bool)

(assert (=> b!4561312 (=> (not res!1903411) (not e!2843323))))

(assert (=> b!4561312 (= res!1903411 (dynLambda!21279 lambda!180033 (h!56790 (toList!4499 lm!1477))))))

(declare-fun b!4561313 () Bool)

(assert (=> b!4561313 (= e!2843323 (forall!10438 (t!357975 (toList!4499 lm!1477)) lambda!180033))))

(assert (= (and d!1419997 (not res!1903410)) b!4561312))

(assert (= (and b!4561312 res!1903411) b!4561313))

(declare-fun b_lambda!162185 () Bool)

(assert (=> (not b_lambda!162185) (not b!4561312)))

(declare-fun m!5351739 () Bool)

(assert (=> b!4561312 m!5351739))

(declare-fun m!5351741 () Bool)

(assert (=> b!4561313 m!5351741))

(assert (=> d!1419895 d!1419997))

(assert (=> b!4561094 d!1419971))

(assert (=> b!4561094 d!1419973))

(assert (=> b!4561199 d!1419981))

(assert (=> b!4561199 d!1419983))

(declare-fun d!1419999 () Bool)

(declare-fun res!1903412 () Bool)

(declare-fun e!2843324 () Bool)

(assert (=> d!1419999 (=> res!1903412 e!2843324)))

(assert (=> d!1419999 (= res!1903412 (and ((_ is Cons!50876) (t!357974 newBucket!178)) (= (_1!29003 (h!56789 (t!357974 newBucket!178))) (_1!29003 (h!56789 newBucket!178)))))))

(assert (=> d!1419999 (= (containsKey!1984 (t!357974 newBucket!178) (_1!29003 (h!56789 newBucket!178))) e!2843324)))

(declare-fun b!4561314 () Bool)

(declare-fun e!2843325 () Bool)

(assert (=> b!4561314 (= e!2843324 e!2843325)))

(declare-fun res!1903413 () Bool)

(assert (=> b!4561314 (=> (not res!1903413) (not e!2843325))))

(assert (=> b!4561314 (= res!1903413 ((_ is Cons!50876) (t!357974 newBucket!178)))))

(declare-fun b!4561315 () Bool)

(assert (=> b!4561315 (= e!2843325 (containsKey!1984 (t!357974 (t!357974 newBucket!178)) (_1!29003 (h!56789 newBucket!178))))))

(assert (= (and d!1419999 (not res!1903412)) b!4561314))

(assert (= (and b!4561314 res!1903413) b!4561315))

(declare-fun m!5351743 () Bool)

(assert (=> b!4561315 m!5351743))

(assert (=> b!4561034 d!1419999))

(assert (=> d!1419883 d!1419881))

(declare-fun d!1420001 () Bool)

(assert (=> d!1420001 (containsKeyBiggerList!216 (toList!4499 lt!1731781) key!3287)))

(assert (=> d!1420001 true))

(declare-fun _$33!715 () Unit!102509)

(assert (=> d!1420001 (= (choose!30224 lt!1731781 key!3287 hashF!1107) _$33!715)))

(declare-fun bs!940032 () Bool)

(assert (= bs!940032 d!1420001))

(assert (=> bs!940032 m!5351419))

(assert (=> d!1419883 d!1420001))

(declare-fun d!1420003 () Bool)

(declare-fun res!1903414 () Bool)

(declare-fun e!2843326 () Bool)

(assert (=> d!1420003 (=> res!1903414 e!2843326)))

(assert (=> d!1420003 (= res!1903414 ((_ is Nil!50877) (toList!4499 lt!1731781)))))

(assert (=> d!1420003 (= (forall!10438 (toList!4499 lt!1731781) lambda!180027) e!2843326)))

(declare-fun b!4561316 () Bool)

(declare-fun e!2843327 () Bool)

(assert (=> b!4561316 (= e!2843326 e!2843327)))

(declare-fun res!1903415 () Bool)

(assert (=> b!4561316 (=> (not res!1903415) (not e!2843327))))

(assert (=> b!4561316 (= res!1903415 (dynLambda!21279 lambda!180027 (h!56790 (toList!4499 lt!1731781))))))

(declare-fun b!4561317 () Bool)

(assert (=> b!4561317 (= e!2843327 (forall!10438 (t!357975 (toList!4499 lt!1731781)) lambda!180027))))

(assert (= (and d!1420003 (not res!1903414)) b!4561316))

(assert (= (and b!4561316 res!1903415) b!4561317))

(declare-fun b_lambda!162187 () Bool)

(assert (=> (not b_lambda!162187) (not b!4561316)))

(declare-fun m!5351745 () Bool)

(assert (=> b!4561316 m!5351745))

(declare-fun m!5351747 () Bool)

(assert (=> b!4561317 m!5351747))

(assert (=> d!1419883 d!1420003))

(declare-fun d!1420005 () Bool)

(declare-fun res!1903416 () Bool)

(declare-fun e!2843328 () Bool)

(assert (=> d!1420005 (=> res!1903416 e!2843328)))

(assert (=> d!1420005 (= res!1903416 (not ((_ is Cons!50876) (t!357974 newBucket!178))))))

(assert (=> d!1420005 (= (noDuplicateKeys!1246 (t!357974 newBucket!178)) e!2843328)))

(declare-fun b!4561318 () Bool)

(declare-fun e!2843329 () Bool)

(assert (=> b!4561318 (= e!2843328 e!2843329)))

(declare-fun res!1903417 () Bool)

(assert (=> b!4561318 (=> (not res!1903417) (not e!2843329))))

(assert (=> b!4561318 (= res!1903417 (not (containsKey!1984 (t!357974 (t!357974 newBucket!178)) (_1!29003 (h!56789 (t!357974 newBucket!178))))))))

(declare-fun b!4561319 () Bool)

(assert (=> b!4561319 (= e!2843329 (noDuplicateKeys!1246 (t!357974 (t!357974 newBucket!178))))))

(assert (= (and d!1420005 (not res!1903416)) b!4561318))

(assert (= (and b!4561318 res!1903417) b!4561319))

(declare-fun m!5351749 () Bool)

(assert (=> b!4561318 m!5351749))

(declare-fun m!5351751 () Bool)

(assert (=> b!4561319 m!5351751))

(assert (=> b!4561035 d!1420005))

(declare-fun d!1420007 () Bool)

(declare-fun res!1903419 () Bool)

(declare-fun e!2843330 () Bool)

(assert (=> d!1420007 (=> res!1903419 e!2843330)))

(declare-fun e!2843331 () Bool)

(assert (=> d!1420007 (= res!1903419 e!2843331)))

(declare-fun res!1903418 () Bool)

(assert (=> d!1420007 (=> (not res!1903418) (not e!2843331))))

(assert (=> d!1420007 (= res!1903418 ((_ is Cons!50877) (t!357975 (t!357975 (toList!4499 lm!1477)))))))

(assert (=> d!1420007 (= (containsKeyBiggerList!216 (t!357975 (t!357975 (toList!4499 lm!1477))) key!3287) e!2843330)))

(declare-fun b!4561320 () Bool)

(assert (=> b!4561320 (= e!2843331 (containsKey!1984 (_2!29004 (h!56790 (t!357975 (t!357975 (toList!4499 lm!1477))))) key!3287))))

(declare-fun b!4561321 () Bool)

(declare-fun e!2843332 () Bool)

(assert (=> b!4561321 (= e!2843330 e!2843332)))

(declare-fun res!1903420 () Bool)

(assert (=> b!4561321 (=> (not res!1903420) (not e!2843332))))

(assert (=> b!4561321 (= res!1903420 ((_ is Cons!50877) (t!357975 (t!357975 (toList!4499 lm!1477)))))))

(declare-fun b!4561322 () Bool)

(assert (=> b!4561322 (= e!2843332 (containsKeyBiggerList!216 (t!357975 (t!357975 (t!357975 (toList!4499 lm!1477)))) key!3287))))

(assert (= (and d!1420007 res!1903418) b!4561320))

(assert (= (and d!1420007 (not res!1903419)) b!4561321))

(assert (= (and b!4561321 res!1903420) b!4561322))

(declare-fun m!5351753 () Bool)

(assert (=> b!4561320 m!5351753))

(declare-fun m!5351755 () Bool)

(assert (=> b!4561322 m!5351755))

(assert (=> b!4561058 d!1420007))

(declare-fun d!1420009 () Bool)

(assert (=> d!1420009 (dynLambda!21279 lambda!180021 lt!1731786)))

(assert (=> d!1420009 true))

(declare-fun _$7!2004 () Unit!102509)

(assert (=> d!1420009 (= (choose!30229 (toList!4499 lm!1477) lambda!180021 lt!1731786) _$7!2004)))

(declare-fun b_lambda!162189 () Bool)

(assert (=> (not b_lambda!162189) (not d!1420009)))

(declare-fun bs!940033 () Bool)

(assert (= bs!940033 d!1420009))

(assert (=> bs!940033 m!5351611))

(assert (=> d!1419921 d!1420009))

(assert (=> d!1419921 d!1419871))

(declare-fun d!1420011 () Bool)

(declare-fun res!1903421 () Bool)

(declare-fun e!2843333 () Bool)

(assert (=> d!1420011 (=> res!1903421 e!2843333)))

(assert (=> d!1420011 (= res!1903421 (and ((_ is Cons!50876) (_2!29004 (h!56790 (t!357975 (toList!4499 lm!1477))))) (= (_1!29003 (h!56789 (_2!29004 (h!56790 (t!357975 (toList!4499 lm!1477)))))) key!3287)))))

(assert (=> d!1420011 (= (containsKey!1984 (_2!29004 (h!56790 (t!357975 (toList!4499 lm!1477)))) key!3287) e!2843333)))

(declare-fun b!4561323 () Bool)

(declare-fun e!2843334 () Bool)

(assert (=> b!4561323 (= e!2843333 e!2843334)))

(declare-fun res!1903422 () Bool)

(assert (=> b!4561323 (=> (not res!1903422) (not e!2843334))))

(assert (=> b!4561323 (= res!1903422 ((_ is Cons!50876) (_2!29004 (h!56790 (t!357975 (toList!4499 lm!1477))))))))

(declare-fun b!4561324 () Bool)

(assert (=> b!4561324 (= e!2843334 (containsKey!1984 (t!357974 (_2!29004 (h!56790 (t!357975 (toList!4499 lm!1477))))) key!3287))))

(assert (= (and d!1420011 (not res!1903421)) b!4561323))

(assert (= (and b!4561323 res!1903422) b!4561324))

(declare-fun m!5351757 () Bool)

(assert (=> b!4561324 m!5351757))

(assert (=> b!4561056 d!1420011))

(declare-fun d!1420013 () Bool)

(declare-fun res!1903427 () Bool)

(declare-fun e!2843339 () Bool)

(assert (=> d!1420013 (=> res!1903427 e!2843339)))

(assert (=> d!1420013 (= res!1903427 (and ((_ is Cons!50876) (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))) (= (_1!29003 (h!56789 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))) key!3287)))))

(assert (=> d!1420013 (= (containsKey!1985 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287) e!2843339)))

(declare-fun b!4561329 () Bool)

(declare-fun e!2843340 () Bool)

(assert (=> b!4561329 (= e!2843339 e!2843340)))

(declare-fun res!1903428 () Bool)

(assert (=> b!4561329 (=> (not res!1903428) (not e!2843340))))

(assert (=> b!4561329 (= res!1903428 ((_ is Cons!50876) (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))))))

(declare-fun b!4561330 () Bool)

(assert (=> b!4561330 (= e!2843340 (containsKey!1985 (t!357974 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))) key!3287))))

(assert (= (and d!1420013 (not res!1903427)) b!4561329))

(assert (= (and b!4561329 res!1903428) b!4561330))

(declare-fun m!5351759 () Bool)

(assert (=> b!4561330 m!5351759))

(assert (=> b!4561097 d!1420013))

(declare-fun d!1420015 () Bool)

(assert (=> d!1420015 (containsKey!1985 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287)))

(declare-fun lt!1731930 () Unit!102509)

(declare-fun choose!30235 (List!51000 K!12255) Unit!102509)

(assert (=> d!1420015 (= lt!1731930 (choose!30235 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287))))

(assert (=> d!1420015 (invariantList!1074 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))))

(assert (=> d!1420015 (= (lemmaInGetKeysListThenContainsKey!521 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287) lt!1731930)))

(declare-fun bs!940034 () Bool)

(assert (= bs!940034 d!1420015))

(assert (=> bs!940034 m!5351507))

(declare-fun m!5351761 () Bool)

(assert (=> bs!940034 m!5351761))

(declare-fun m!5351763 () Bool)

(assert (=> bs!940034 m!5351763))

(assert (=> b!4561097 d!1420015))

(declare-fun d!1420017 () Bool)

(declare-fun res!1903429 () Bool)

(declare-fun e!2843341 () Bool)

(assert (=> d!1420017 (=> res!1903429 e!2843341)))

(assert (=> d!1420017 (= res!1903429 (and ((_ is Cons!50876) (_2!29004 (h!56790 (toList!4499 lt!1731781)))) (= (_1!29003 (h!56789 (_2!29004 (h!56790 (toList!4499 lt!1731781))))) key!3287)))))

(assert (=> d!1420017 (= (containsKey!1984 (_2!29004 (h!56790 (toList!4499 lt!1731781))) key!3287) e!2843341)))

(declare-fun b!4561331 () Bool)

(declare-fun e!2843342 () Bool)

(assert (=> b!4561331 (= e!2843341 e!2843342)))

(declare-fun res!1903430 () Bool)

(assert (=> b!4561331 (=> (not res!1903430) (not e!2843342))))

(assert (=> b!4561331 (= res!1903430 ((_ is Cons!50876) (_2!29004 (h!56790 (toList!4499 lt!1731781)))))))

(declare-fun b!4561332 () Bool)

(assert (=> b!4561332 (= e!2843342 (containsKey!1984 (t!357974 (_2!29004 (h!56790 (toList!4499 lt!1731781)))) key!3287))))

(assert (= (and d!1420017 (not res!1903429)) b!4561331))

(assert (= (and b!4561331 res!1903430) b!4561332))

(declare-fun m!5351765 () Bool)

(assert (=> b!4561332 m!5351765))

(assert (=> b!4561059 d!1420017))

(declare-fun d!1420019 () Bool)

(declare-fun res!1903431 () Bool)

(declare-fun e!2843343 () Bool)

(assert (=> d!1420019 (=> res!1903431 e!2843343)))

(assert (=> d!1420019 (= res!1903431 ((_ is Nil!50877) (toList!4499 lm!1477)))))

(assert (=> d!1420019 (= (forall!10438 (toList!4499 lm!1477) lambda!180024) e!2843343)))

(declare-fun b!4561333 () Bool)

(declare-fun e!2843344 () Bool)

(assert (=> b!4561333 (= e!2843343 e!2843344)))

(declare-fun res!1903432 () Bool)

(assert (=> b!4561333 (=> (not res!1903432) (not e!2843344))))

(assert (=> b!4561333 (= res!1903432 (dynLambda!21279 lambda!180024 (h!56790 (toList!4499 lm!1477))))))

(declare-fun b!4561334 () Bool)

(assert (=> b!4561334 (= e!2843344 (forall!10438 (t!357975 (toList!4499 lm!1477)) lambda!180024))))

(assert (= (and d!1420019 (not res!1903431)) b!4561333))

(assert (= (and b!4561333 res!1903432) b!4561334))

(declare-fun b_lambda!162191 () Bool)

(assert (=> (not b_lambda!162191) (not b!4561333)))

(declare-fun m!5351767 () Bool)

(assert (=> b!4561333 m!5351767))

(declare-fun m!5351769 () Bool)

(assert (=> b!4561334 m!5351769))

(assert (=> d!1419875 d!1420019))

(assert (=> d!1419901 d!1419887))

(assert (=> d!1419901 d!1419895))

(declare-fun d!1420021 () Bool)

(assert (=> d!1420021 (not (contains!13733 (extractMap!1302 (toList!4499 lm!1477)) key!3287))))

(assert (=> d!1420021 true))

(declare-fun _$26!452 () Unit!102509)

(assert (=> d!1420021 (= (choose!30226 lm!1477 key!3287 hashF!1107) _$26!452)))

(declare-fun bs!940035 () Bool)

(assert (= bs!940035 d!1420021))

(assert (=> bs!940035 m!5351413))

(assert (=> bs!940035 m!5351413))

(assert (=> bs!940035 m!5351415))

(assert (=> d!1419901 d!1420021))

(declare-fun d!1420023 () Bool)

(declare-fun res!1903433 () Bool)

(declare-fun e!2843345 () Bool)

(assert (=> d!1420023 (=> res!1903433 e!2843345)))

(assert (=> d!1420023 (= res!1903433 ((_ is Nil!50877) (toList!4499 lm!1477)))))

(assert (=> d!1420023 (= (forall!10438 (toList!4499 lm!1477) lambda!180039) e!2843345)))

(declare-fun b!4561335 () Bool)

(declare-fun e!2843346 () Bool)

(assert (=> b!4561335 (= e!2843345 e!2843346)))

(declare-fun res!1903434 () Bool)

(assert (=> b!4561335 (=> (not res!1903434) (not e!2843346))))

(assert (=> b!4561335 (= res!1903434 (dynLambda!21279 lambda!180039 (h!56790 (toList!4499 lm!1477))))))

(declare-fun b!4561336 () Bool)

(assert (=> b!4561336 (= e!2843346 (forall!10438 (t!357975 (toList!4499 lm!1477)) lambda!180039))))

(assert (= (and d!1420023 (not res!1903433)) b!4561335))

(assert (= (and b!4561335 res!1903434) b!4561336))

(declare-fun b_lambda!162193 () Bool)

(assert (=> (not b_lambda!162193) (not b!4561335)))

(declare-fun m!5351771 () Bool)

(assert (=> b!4561335 m!5351771))

(declare-fun m!5351773 () Bool)

(assert (=> b!4561336 m!5351773))

(assert (=> d!1419901 d!1420023))

(declare-fun d!1420025 () Bool)

(declare-fun res!1903435 () Bool)

(declare-fun e!2843347 () Bool)

(assert (=> d!1420025 (=> res!1903435 e!2843347)))

(assert (=> d!1420025 (= res!1903435 (not ((_ is Cons!50876) (_2!29004 lt!1731786))))))

(assert (=> d!1420025 (= (noDuplicateKeys!1246 (_2!29004 lt!1731786)) e!2843347)))

(declare-fun b!4561337 () Bool)

(declare-fun e!2843348 () Bool)

(assert (=> b!4561337 (= e!2843347 e!2843348)))

(declare-fun res!1903436 () Bool)

(assert (=> b!4561337 (=> (not res!1903436) (not e!2843348))))

(assert (=> b!4561337 (= res!1903436 (not (containsKey!1984 (t!357974 (_2!29004 lt!1731786)) (_1!29003 (h!56789 (_2!29004 lt!1731786))))))))

(declare-fun b!4561338 () Bool)

(assert (=> b!4561338 (= e!2843348 (noDuplicateKeys!1246 (t!357974 (_2!29004 lt!1731786))))))

(assert (= (and d!1420025 (not res!1903435)) b!4561337))

(assert (= (and b!4561337 res!1903436) b!4561338))

(declare-fun m!5351775 () Bool)

(assert (=> b!4561337 m!5351775))

(declare-fun m!5351777 () Bool)

(assert (=> b!4561338 m!5351777))

(assert (=> bs!940018 d!1420025))

(declare-fun bs!940043 () Bool)

(declare-fun b!4561448 () Bool)

(assert (= bs!940043 (and b!4561448 d!1419905)))

(declare-fun lambda!180098 () Int)

(assert (=> bs!940043 (not (= lambda!180098 lambda!180044))))

(assert (=> b!4561448 true))

(declare-fun bs!940044 () Bool)

(declare-fun b!4561449 () Bool)

(assert (= bs!940044 (and b!4561449 d!1419905)))

(declare-fun lambda!180099 () Int)

(assert (=> bs!940044 (not (= lambda!180099 lambda!180044))))

(declare-fun bs!940045 () Bool)

(assert (= bs!940045 (and b!4561449 b!4561448)))

(assert (=> bs!940045 (= lambda!180099 lambda!180098)))

(assert (=> b!4561449 true))

(declare-fun lambda!180100 () Int)

(assert (=> bs!940044 (not (= lambda!180100 lambda!180044))))

(declare-fun lt!1731991 () ListMap!3761)

(assert (=> bs!940045 (= (= lt!1731991 (extractMap!1302 (t!357975 (toList!4499 lm!1477)))) (= lambda!180100 lambda!180098))))

(assert (=> b!4561449 (= (= lt!1731991 (extractMap!1302 (t!357975 (toList!4499 lm!1477)))) (= lambda!180100 lambda!180099))))

(assert (=> b!4561449 true))

(declare-fun bs!940046 () Bool)

(declare-fun d!1420027 () Bool)

(assert (= bs!940046 (and d!1420027 d!1419905)))

(declare-fun lambda!180101 () Int)

(assert (=> bs!940046 (not (= lambda!180101 lambda!180044))))

(declare-fun bs!940047 () Bool)

(assert (= bs!940047 (and d!1420027 b!4561448)))

(declare-fun lt!1731996 () ListMap!3761)

(assert (=> bs!940047 (= (= lt!1731996 (extractMap!1302 (t!357975 (toList!4499 lm!1477)))) (= lambda!180101 lambda!180098))))

(declare-fun bs!940048 () Bool)

(assert (= bs!940048 (and d!1420027 b!4561449)))

(assert (=> bs!940048 (= (= lt!1731996 (extractMap!1302 (t!357975 (toList!4499 lm!1477)))) (= lambda!180101 lambda!180099))))

(assert (=> bs!940048 (= (= lt!1731996 lt!1731991) (= lambda!180101 lambda!180100))))

(assert (=> d!1420027 true))

(declare-fun bm!318276 () Bool)

(declare-fun c!779907 () Bool)

(declare-fun lt!1731997 () ListMap!3761)

(declare-fun call!318282 () Bool)

(assert (=> bm!318276 (= call!318282 (forall!10439 (ite c!779907 (toList!4500 (extractMap!1302 (t!357975 (toList!4499 lm!1477)))) (toList!4500 lt!1731997)) (ite c!779907 lambda!180098 lambda!180100)))))

(declare-fun b!4561446 () Bool)

(declare-fun res!1903503 () Bool)

(declare-fun e!2843426 () Bool)

(assert (=> b!4561446 (=> (not res!1903503) (not e!2843426))))

(assert (=> b!4561446 (= res!1903503 (forall!10439 (toList!4500 (extractMap!1302 (t!357975 (toList!4499 lm!1477)))) lambda!180101))))

(declare-fun b!4561447 () Bool)

(declare-fun e!2843428 () Bool)

(assert (=> b!4561447 (= e!2843428 (forall!10439 (toList!4500 (extractMap!1302 (t!357975 (toList!4499 lm!1477)))) lambda!180100))))

(declare-fun e!2843427 () ListMap!3761)

(assert (=> b!4561448 (= e!2843427 (extractMap!1302 (t!357975 (toList!4499 lm!1477))))))

(declare-fun lt!1732011 () Unit!102509)

(declare-fun call!318281 () Unit!102509)

(assert (=> b!4561448 (= lt!1732011 call!318281)))

(assert (=> b!4561448 call!318282))

(declare-fun lt!1732010 () Unit!102509)

(assert (=> b!4561448 (= lt!1732010 lt!1732011)))

(declare-fun call!318283 () Bool)

(assert (=> b!4561448 call!318283))

(declare-fun lt!1732008 () Unit!102509)

(declare-fun Unit!102522 () Unit!102509)

(assert (=> b!4561448 (= lt!1732008 Unit!102522)))

(declare-fun bm!318277 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!393 (ListMap!3761) Unit!102509)

(assert (=> bm!318277 (= call!318281 (lemmaContainsAllItsOwnKeys!393 (extractMap!1302 (t!357975 (toList!4499 lm!1477)))))))

(assert (=> b!4561449 (= e!2843427 lt!1731991)))

(declare-fun +!1665 (ListMap!3761 tuple2!51418) ListMap!3761)

(assert (=> b!4561449 (= lt!1731997 (+!1665 (extractMap!1302 (t!357975 (toList!4499 lm!1477))) (h!56789 (_2!29004 (h!56790 (toList!4499 lm!1477))))))))

(assert (=> b!4561449 (= lt!1731991 (addToMapMapFromBucket!760 (t!357974 (_2!29004 (h!56790 (toList!4499 lm!1477)))) (+!1665 (extractMap!1302 (t!357975 (toList!4499 lm!1477))) (h!56789 (_2!29004 (h!56790 (toList!4499 lm!1477)))))))))

(declare-fun lt!1731999 () Unit!102509)

(assert (=> b!4561449 (= lt!1731999 call!318281)))

(assert (=> b!4561449 (forall!10439 (toList!4500 (extractMap!1302 (t!357975 (toList!4499 lm!1477)))) lambda!180099)))

(declare-fun lt!1732003 () Unit!102509)

(assert (=> b!4561449 (= lt!1732003 lt!1731999)))

(assert (=> b!4561449 (forall!10439 (toList!4500 lt!1731997) lambda!180100)))

(declare-fun lt!1731993 () Unit!102509)

(declare-fun Unit!102523 () Unit!102509)

(assert (=> b!4561449 (= lt!1731993 Unit!102523)))

(assert (=> b!4561449 (forall!10439 (t!357974 (_2!29004 (h!56790 (toList!4499 lm!1477)))) lambda!180100)))

(declare-fun lt!1732007 () Unit!102509)

(declare-fun Unit!102524 () Unit!102509)

(assert (=> b!4561449 (= lt!1732007 Unit!102524)))

(declare-fun lt!1732000 () Unit!102509)

(declare-fun Unit!102525 () Unit!102509)

(assert (=> b!4561449 (= lt!1732000 Unit!102525)))

(declare-fun lt!1732002 () Unit!102509)

(declare-fun forallContained!2702 (List!51000 Int tuple2!51418) Unit!102509)

(assert (=> b!4561449 (= lt!1732002 (forallContained!2702 (toList!4500 lt!1731997) lambda!180100 (h!56789 (_2!29004 (h!56790 (toList!4499 lm!1477))))))))

(assert (=> b!4561449 (contains!13733 lt!1731997 (_1!29003 (h!56789 (_2!29004 (h!56790 (toList!4499 lm!1477))))))))

(declare-fun lt!1732004 () Unit!102509)

(declare-fun Unit!102526 () Unit!102509)

(assert (=> b!4561449 (= lt!1732004 Unit!102526)))

(assert (=> b!4561449 (contains!13733 lt!1731991 (_1!29003 (h!56789 (_2!29004 (h!56790 (toList!4499 lm!1477))))))))

(declare-fun lt!1732006 () Unit!102509)

(declare-fun Unit!102527 () Unit!102509)

(assert (=> b!4561449 (= lt!1732006 Unit!102527)))

(assert (=> b!4561449 call!318283))

(declare-fun lt!1731992 () Unit!102509)

(declare-fun Unit!102528 () Unit!102509)

(assert (=> b!4561449 (= lt!1731992 Unit!102528)))

(assert (=> b!4561449 call!318282))

(declare-fun lt!1732009 () Unit!102509)

(declare-fun Unit!102529 () Unit!102509)

(assert (=> b!4561449 (= lt!1732009 Unit!102529)))

(declare-fun lt!1731995 () Unit!102509)

(declare-fun Unit!102530 () Unit!102509)

(assert (=> b!4561449 (= lt!1731995 Unit!102530)))

(declare-fun lt!1731994 () Unit!102509)

(declare-fun addForallContainsKeyThenBeforeAdding!393 (ListMap!3761 ListMap!3761 K!12255 V!12501) Unit!102509)

(assert (=> b!4561449 (= lt!1731994 (addForallContainsKeyThenBeforeAdding!393 (extractMap!1302 (t!357975 (toList!4499 lm!1477))) lt!1731991 (_1!29003 (h!56789 (_2!29004 (h!56790 (toList!4499 lm!1477))))) (_2!29003 (h!56789 (_2!29004 (h!56790 (toList!4499 lm!1477)))))))))

(assert (=> b!4561449 (forall!10439 (toList!4500 (extractMap!1302 (t!357975 (toList!4499 lm!1477)))) lambda!180100)))

(declare-fun lt!1731998 () Unit!102509)

(assert (=> b!4561449 (= lt!1731998 lt!1731994)))

(assert (=> b!4561449 (forall!10439 (toList!4500 (extractMap!1302 (t!357975 (toList!4499 lm!1477)))) lambda!180100)))

(declare-fun lt!1732001 () Unit!102509)

(declare-fun Unit!102531 () Unit!102509)

(assert (=> b!4561449 (= lt!1732001 Unit!102531)))

(declare-fun res!1903504 () Bool)

(assert (=> b!4561449 (= res!1903504 (forall!10439 (_2!29004 (h!56790 (toList!4499 lm!1477))) lambda!180100))))

(assert (=> b!4561449 (=> (not res!1903504) (not e!2843428))))

(assert (=> b!4561449 e!2843428))

(declare-fun lt!1732005 () Unit!102509)

(declare-fun Unit!102532 () Unit!102509)

(assert (=> b!4561449 (= lt!1732005 Unit!102532)))

(declare-fun bm!318278 () Bool)

(assert (=> bm!318278 (= call!318283 (forall!10439 (ite c!779907 (toList!4500 (extractMap!1302 (t!357975 (toList!4499 lm!1477)))) (_2!29004 (h!56790 (toList!4499 lm!1477)))) (ite c!779907 lambda!180098 lambda!180100)))))

(assert (=> d!1420027 e!2843426))

(declare-fun res!1903502 () Bool)

(assert (=> d!1420027 (=> (not res!1903502) (not e!2843426))))

(assert (=> d!1420027 (= res!1903502 (forall!10439 (_2!29004 (h!56790 (toList!4499 lm!1477))) lambda!180101))))

(assert (=> d!1420027 (= lt!1731996 e!2843427)))

(assert (=> d!1420027 (= c!779907 ((_ is Nil!50876) (_2!29004 (h!56790 (toList!4499 lm!1477)))))))

(assert (=> d!1420027 (noDuplicateKeys!1246 (_2!29004 (h!56790 (toList!4499 lm!1477))))))

(assert (=> d!1420027 (= (addToMapMapFromBucket!760 (_2!29004 (h!56790 (toList!4499 lm!1477))) (extractMap!1302 (t!357975 (toList!4499 lm!1477)))) lt!1731996)))

(declare-fun b!4561450 () Bool)

(assert (=> b!4561450 (= e!2843426 (invariantList!1074 (toList!4500 lt!1731996)))))

(assert (= (and d!1420027 c!779907) b!4561448))

(assert (= (and d!1420027 (not c!779907)) b!4561449))

(assert (= (and b!4561449 res!1903504) b!4561447))

(assert (= (or b!4561448 b!4561449) bm!318276))

(assert (= (or b!4561448 b!4561449) bm!318278))

(assert (= (or b!4561448 b!4561449) bm!318277))

(assert (= (and d!1420027 res!1903502) b!4561446))

(assert (= (and b!4561446 res!1903503) b!4561450))

(declare-fun m!5351877 () Bool)

(assert (=> b!4561449 m!5351877))

(declare-fun m!5351879 () Bool)

(assert (=> b!4561449 m!5351879))

(assert (=> b!4561449 m!5351877))

(declare-fun m!5351881 () Bool)

(assert (=> b!4561449 m!5351881))

(declare-fun m!5351883 () Bool)

(assert (=> b!4561449 m!5351883))

(declare-fun m!5351885 () Bool)

(assert (=> b!4561449 m!5351885))

(assert (=> b!4561449 m!5351551))

(declare-fun m!5351887 () Bool)

(assert (=> b!4561449 m!5351887))

(declare-fun m!5351889 () Bool)

(assert (=> b!4561449 m!5351889))

(declare-fun m!5351891 () Bool)

(assert (=> b!4561449 m!5351891))

(declare-fun m!5351893 () Bool)

(assert (=> b!4561449 m!5351893))

(assert (=> b!4561449 m!5351551))

(assert (=> b!4561449 m!5351891))

(declare-fun m!5351895 () Bool)

(assert (=> b!4561449 m!5351895))

(declare-fun m!5351897 () Bool)

(assert (=> b!4561449 m!5351897))

(assert (=> b!4561447 m!5351877))

(declare-fun m!5351899 () Bool)

(assert (=> b!4561450 m!5351899))

(assert (=> bm!318277 m!5351551))

(declare-fun m!5351901 () Bool)

(assert (=> bm!318277 m!5351901))

(declare-fun m!5351903 () Bool)

(assert (=> d!1420027 m!5351903))

(assert (=> d!1420027 m!5351661))

(declare-fun m!5351905 () Bool)

(assert (=> b!4561446 m!5351905))

(declare-fun m!5351907 () Bool)

(assert (=> bm!318276 m!5351907))

(declare-fun m!5351909 () Bool)

(assert (=> bm!318278 m!5351909))

(assert (=> b!4561132 d!1420027))

(declare-fun bs!940049 () Bool)

(declare-fun d!1420089 () Bool)

(assert (= bs!940049 (and d!1420089 start!453524)))

(declare-fun lambda!180102 () Int)

(assert (=> bs!940049 (= lambda!180102 lambda!180021)))

(declare-fun bs!940050 () Bool)

(assert (= bs!940050 (and d!1420089 d!1419901)))

(assert (=> bs!940050 (= lambda!180102 lambda!180039)))

(declare-fun bs!940051 () Bool)

(assert (= bs!940051 (and d!1420089 d!1419875)))

(assert (=> bs!940051 (not (= lambda!180102 lambda!180024))))

(declare-fun bs!940052 () Bool)

(assert (= bs!940052 (and d!1420089 d!1419883)))

(assert (=> bs!940052 (= lambda!180102 lambda!180027)))

(declare-fun bs!940053 () Bool)

(assert (= bs!940053 (and d!1420089 d!1419895)))

(assert (=> bs!940053 (= lambda!180102 lambda!180033)))

(declare-fun bs!940054 () Bool)

(assert (= bs!940054 (and d!1420089 d!1419907)))

(assert (=> bs!940054 (= lambda!180102 lambda!180048)))

(declare-fun lt!1732012 () ListMap!3761)

(assert (=> d!1420089 (invariantList!1074 (toList!4500 lt!1732012))))

(declare-fun e!2843429 () ListMap!3761)

(assert (=> d!1420089 (= lt!1732012 e!2843429)))

(declare-fun c!779908 () Bool)

(assert (=> d!1420089 (= c!779908 ((_ is Cons!50877) (t!357975 (toList!4499 lm!1477))))))

(assert (=> d!1420089 (forall!10438 (t!357975 (toList!4499 lm!1477)) lambda!180102)))

(assert (=> d!1420089 (= (extractMap!1302 (t!357975 (toList!4499 lm!1477))) lt!1732012)))

(declare-fun b!4561453 () Bool)

(assert (=> b!4561453 (= e!2843429 (addToMapMapFromBucket!760 (_2!29004 (h!56790 (t!357975 (toList!4499 lm!1477)))) (extractMap!1302 (t!357975 (t!357975 (toList!4499 lm!1477))))))))

(declare-fun b!4561454 () Bool)

(assert (=> b!4561454 (= e!2843429 (ListMap!3762 Nil!50876))))

(assert (= (and d!1420089 c!779908) b!4561453))

(assert (= (and d!1420089 (not c!779908)) b!4561454))

(declare-fun m!5351911 () Bool)

(assert (=> d!1420089 m!5351911))

(declare-fun m!5351913 () Bool)

(assert (=> d!1420089 m!5351913))

(declare-fun m!5351915 () Bool)

(assert (=> b!4561453 m!5351915))

(assert (=> b!4561453 m!5351915))

(declare-fun m!5351917 () Bool)

(assert (=> b!4561453 m!5351917))

(assert (=> b!4561132 d!1420089))

(declare-fun d!1420091 () Bool)

(assert (=> d!1420091 (isDefined!8548 (getValueByKey!1209 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287))))

(declare-fun lt!1732015 () Unit!102509)

(declare-fun choose!30237 (List!51000 K!12255) Unit!102509)

(assert (=> d!1420091 (= lt!1732015 (choose!30237 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287))))

(assert (=> d!1420091 (invariantList!1074 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))))

(assert (=> d!1420091 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1112 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287) lt!1732015)))

(declare-fun bs!940055 () Bool)

(assert (= bs!940055 d!1420091))

(assert (=> bs!940055 m!5351517))

(assert (=> bs!940055 m!5351517))

(assert (=> bs!940055 m!5351519))

(declare-fun m!5351919 () Bool)

(assert (=> bs!940055 m!5351919))

(assert (=> bs!940055 m!5351763))

(assert (=> b!4561093 d!1420091))

(declare-fun d!1420093 () Bool)

(declare-fun isEmpty!28790 (Option!11277) Bool)

(assert (=> d!1420093 (= (isDefined!8548 (getValueByKey!1209 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287)) (not (isEmpty!28790 (getValueByKey!1209 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287))))))

(declare-fun bs!940056 () Bool)

(assert (= bs!940056 d!1420093))

(assert (=> bs!940056 m!5351517))

(declare-fun m!5351921 () Bool)

(assert (=> bs!940056 m!5351921))

(assert (=> b!4561093 d!1420093))

(declare-fun b!4561464 () Bool)

(declare-fun e!2843434 () Option!11277)

(declare-fun e!2843435 () Option!11277)

(assert (=> b!4561464 (= e!2843434 e!2843435)))

(declare-fun c!779914 () Bool)

(assert (=> b!4561464 (= c!779914 (and ((_ is Cons!50876) (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))) (not (= (_1!29003 (h!56789 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))) key!3287))))))

(declare-fun d!1420095 () Bool)

(declare-fun c!779913 () Bool)

(assert (=> d!1420095 (= c!779913 (and ((_ is Cons!50876) (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))) (= (_1!29003 (h!56789 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))) key!3287)))))

(assert (=> d!1420095 (= (getValueByKey!1209 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287) e!2843434)))

(declare-fun b!4561465 () Bool)

(assert (=> b!4561465 (= e!2843435 (getValueByKey!1209 (t!357974 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))) key!3287))))

(declare-fun b!4561463 () Bool)

(assert (=> b!4561463 (= e!2843434 (Some!11276 (_2!29003 (h!56789 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))))))))

(declare-fun b!4561466 () Bool)

(assert (=> b!4561466 (= e!2843435 None!11276)))

(assert (= (and d!1420095 c!779913) b!4561463))

(assert (= (and d!1420095 (not c!779913)) b!4561464))

(assert (= (and b!4561464 c!779914) b!4561465))

(assert (= (and b!4561464 (not c!779914)) b!4561466))

(declare-fun m!5351923 () Bool)

(assert (=> b!4561465 m!5351923))

(assert (=> b!4561093 d!1420095))

(declare-fun d!1420097 () Bool)

(assert (=> d!1420097 (contains!13736 (getKeysList!522 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))) key!3287)))

(declare-fun lt!1732018 () Unit!102509)

(declare-fun choose!30238 (List!51000 K!12255) Unit!102509)

(assert (=> d!1420097 (= lt!1732018 (choose!30238 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287))))

(assert (=> d!1420097 (invariantList!1074 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))))

(assert (=> d!1420097 (= (lemmaInListThenGetKeysListContains!518 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) key!3287) lt!1732018)))

(declare-fun bs!940057 () Bool)

(assert (= bs!940057 d!1420097))

(assert (=> bs!940057 m!5351521))

(assert (=> bs!940057 m!5351521))

(declare-fun m!5351925 () Bool)

(assert (=> bs!940057 m!5351925))

(declare-fun m!5351927 () Bool)

(assert (=> bs!940057 m!5351927))

(assert (=> bs!940057 m!5351763))

(assert (=> b!4561093 d!1420097))

(assert (=> d!1419887 d!1420013))

(declare-fun d!1420099 () Bool)

(declare-fun lt!1732019 () Bool)

(assert (=> d!1420099 (= lt!1732019 (select (content!8521 (toList!4499 lm!1477)) (tuple2!51421 hash!344 lt!1731785)))))

(declare-fun e!2843437 () Bool)

(assert (=> d!1420099 (= lt!1732019 e!2843437)))

(declare-fun res!1903506 () Bool)

(assert (=> d!1420099 (=> (not res!1903506) (not e!2843437))))

(assert (=> d!1420099 (= res!1903506 ((_ is Cons!50877) (toList!4499 lm!1477)))))

(assert (=> d!1420099 (= (contains!13735 (toList!4499 lm!1477) (tuple2!51421 hash!344 lt!1731785)) lt!1732019)))

(declare-fun b!4561467 () Bool)

(declare-fun e!2843436 () Bool)

(assert (=> b!4561467 (= e!2843437 e!2843436)))

(declare-fun res!1903505 () Bool)

(assert (=> b!4561467 (=> res!1903505 e!2843436)))

(assert (=> b!4561467 (= res!1903505 (= (h!56790 (toList!4499 lm!1477)) (tuple2!51421 hash!344 lt!1731785)))))

(declare-fun b!4561468 () Bool)

(assert (=> b!4561468 (= e!2843436 (contains!13735 (t!357975 (toList!4499 lm!1477)) (tuple2!51421 hash!344 lt!1731785)))))

(assert (= (and d!1420099 res!1903506) b!4561467))

(assert (= (and b!4561467 (not res!1903505)) b!4561468))

(assert (=> d!1420099 m!5351615))

(declare-fun m!5351929 () Bool)

(assert (=> d!1420099 m!5351929))

(declare-fun m!5351931 () Bool)

(assert (=> b!4561468 m!5351931))

(assert (=> d!1419931 d!1420099))

(declare-fun d!1420101 () Bool)

(assert (=> d!1420101 (contains!13735 (toList!4499 lm!1477) (tuple2!51421 hash!344 lt!1731785))))

(assert (=> d!1420101 true))

(declare-fun _$14!1303 () Unit!102509)

(assert (=> d!1420101 (= (choose!30230 (toList!4499 lm!1477) hash!344 lt!1731785) _$14!1303)))

(declare-fun bs!940058 () Bool)

(assert (= bs!940058 d!1420101))

(assert (=> bs!940058 m!5351619))

(assert (=> d!1419931 d!1420101))

(declare-fun d!1420103 () Bool)

(declare-fun res!1903511 () Bool)

(declare-fun e!2843442 () Bool)

(assert (=> d!1420103 (=> res!1903511 e!2843442)))

(assert (=> d!1420103 (= res!1903511 (or ((_ is Nil!50877) (toList!4499 lm!1477)) ((_ is Nil!50877) (t!357975 (toList!4499 lm!1477)))))))

(assert (=> d!1420103 (= (isStrictlySorted!489 (toList!4499 lm!1477)) e!2843442)))

(declare-fun b!4561473 () Bool)

(declare-fun e!2843443 () Bool)

(assert (=> b!4561473 (= e!2843442 e!2843443)))

(declare-fun res!1903512 () Bool)

(assert (=> b!4561473 (=> (not res!1903512) (not e!2843443))))

(assert (=> b!4561473 (= res!1903512 (bvslt (_1!29004 (h!56790 (toList!4499 lm!1477))) (_1!29004 (h!56790 (t!357975 (toList!4499 lm!1477))))))))

(declare-fun b!4561474 () Bool)

(assert (=> b!4561474 (= e!2843443 (isStrictlySorted!489 (t!357975 (toList!4499 lm!1477))))))

(assert (= (and d!1420103 (not res!1903511)) b!4561473))

(assert (= (and b!4561473 res!1903512) b!4561474))

(declare-fun m!5351933 () Bool)

(assert (=> b!4561474 m!5351933))

(assert (=> d!1419931 d!1420103))

(declare-fun d!1420105 () Bool)

(declare-fun lt!1732020 () Bool)

(assert (=> d!1420105 (= lt!1732020 (select (content!8523 e!2843180) key!3287))))

(declare-fun e!2843445 () Bool)

(assert (=> d!1420105 (= lt!1732020 e!2843445)))

(declare-fun res!1903513 () Bool)

(assert (=> d!1420105 (=> (not res!1903513) (not e!2843445))))

(assert (=> d!1420105 (= res!1903513 ((_ is Cons!50878) e!2843180))))

(assert (=> d!1420105 (= (contains!13736 e!2843180 key!3287) lt!1732020)))

(declare-fun b!4561475 () Bool)

(declare-fun e!2843444 () Bool)

(assert (=> b!4561475 (= e!2843445 e!2843444)))

(declare-fun res!1903514 () Bool)

(assert (=> b!4561475 (=> res!1903514 e!2843444)))

(assert (=> b!4561475 (= res!1903514 (= (h!56793 e!2843180) key!3287))))

(declare-fun b!4561476 () Bool)

(assert (=> b!4561476 (= e!2843444 (contains!13736 (t!357976 e!2843180) key!3287))))

(assert (= (and d!1420105 res!1903513) b!4561475))

(assert (= (and b!4561475 (not res!1903514)) b!4561476))

(declare-fun m!5351935 () Bool)

(assert (=> d!1420105 m!5351935))

(declare-fun m!5351937 () Bool)

(assert (=> d!1420105 m!5351937))

(declare-fun m!5351939 () Bool)

(assert (=> b!4561476 m!5351939))

(assert (=> bm!318266 d!1420105))

(declare-fun d!1420107 () Bool)

(declare-fun res!1903516 () Bool)

(declare-fun e!2843446 () Bool)

(assert (=> d!1420107 (=> res!1903516 e!2843446)))

(declare-fun e!2843447 () Bool)

(assert (=> d!1420107 (= res!1903516 e!2843447)))

(declare-fun res!1903515 () Bool)

(assert (=> d!1420107 (=> (not res!1903515) (not e!2843447))))

(assert (=> d!1420107 (= res!1903515 ((_ is Cons!50877) (t!357975 (toList!4499 lt!1731781))))))

(assert (=> d!1420107 (= (containsKeyBiggerList!216 (t!357975 (toList!4499 lt!1731781)) key!3287) e!2843446)))

(declare-fun b!4561477 () Bool)

(assert (=> b!4561477 (= e!2843447 (containsKey!1984 (_2!29004 (h!56790 (t!357975 (toList!4499 lt!1731781)))) key!3287))))

(declare-fun b!4561478 () Bool)

(declare-fun e!2843448 () Bool)

(assert (=> b!4561478 (= e!2843446 e!2843448)))

(declare-fun res!1903517 () Bool)

(assert (=> b!4561478 (=> (not res!1903517) (not e!2843448))))

(assert (=> b!4561478 (= res!1903517 ((_ is Cons!50877) (t!357975 (toList!4499 lt!1731781))))))

(declare-fun b!4561479 () Bool)

(assert (=> b!4561479 (= e!2843448 (containsKeyBiggerList!216 (t!357975 (t!357975 (toList!4499 lt!1731781))) key!3287))))

(assert (= (and d!1420107 res!1903515) b!4561477))

(assert (= (and d!1420107 (not res!1903516)) b!4561478))

(assert (= (and b!4561478 res!1903517) b!4561479))

(declare-fun m!5351941 () Bool)

(assert (=> b!4561477 m!5351941))

(declare-fun m!5351943 () Bool)

(assert (=> b!4561479 m!5351943))

(assert (=> b!4561061 d!1420107))

(declare-fun bs!940059 () Bool)

(declare-fun b!4561502 () Bool)

(assert (= bs!940059 (and b!4561502 b!4561277)))

(declare-fun lambda!180111 () Int)

(assert (=> bs!940059 (= (= (t!357974 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))) (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))) (= lambda!180111 lambda!180062))))

(assert (=> b!4561502 true))

(declare-fun bs!940060 () Bool)

(declare-fun b!4561503 () Bool)

(assert (= bs!940060 (and b!4561503 b!4561277)))

(declare-fun lambda!180112 () Int)

(assert (=> bs!940060 (= (= (Cons!50876 (h!56789 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))) (t!357974 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))) (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))) (= lambda!180112 lambda!180062))))

(declare-fun bs!940061 () Bool)

(assert (= bs!940061 (and b!4561503 b!4561502)))

(assert (=> bs!940061 (= (= (Cons!50876 (h!56789 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))) (t!357974 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))) (t!357974 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))) (= lambda!180112 lambda!180111))))

(assert (=> b!4561503 true))

(declare-fun bs!940062 () Bool)

(declare-fun b!4561501 () Bool)

(assert (= bs!940062 (and b!4561501 b!4561277)))

(declare-fun lambda!180113 () Int)

(assert (=> bs!940062 (= lambda!180113 lambda!180062)))

(declare-fun bs!940063 () Bool)

(assert (= bs!940063 (and b!4561501 b!4561502)))

(assert (=> bs!940063 (= (= (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) (t!357974 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))) (= lambda!180113 lambda!180111))))

(declare-fun bs!940064 () Bool)

(assert (= bs!940064 (and b!4561501 b!4561503)))

(assert (=> bs!940064 (= (= (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) (Cons!50876 (h!56789 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))) (t!357974 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))))) (= lambda!180113 lambda!180112))))

(assert (=> b!4561501 true))

(declare-fun bs!940065 () Bool)

(declare-fun b!4561500 () Bool)

(assert (= bs!940065 (and b!4561500 b!4561278)))

(declare-fun lambda!180114 () Int)

(assert (=> bs!940065 (= lambda!180114 lambda!180063)))

(declare-fun b!4561498 () Bool)

(declare-fun e!2843460 () Unit!102509)

(declare-fun Unit!102533 () Unit!102509)

(assert (=> b!4561498 (= e!2843460 Unit!102533)))

(declare-fun d!1420109 () Bool)

(declare-fun e!2843457 () Bool)

(assert (=> d!1420109 e!2843457))

(declare-fun res!1903524 () Bool)

(assert (=> d!1420109 (=> (not res!1903524) (not e!2843457))))

(declare-fun lt!1732037 () List!51002)

(assert (=> d!1420109 (= res!1903524 (noDuplicate!777 lt!1732037))))

(declare-fun e!2843458 () List!51002)

(assert (=> d!1420109 (= lt!1732037 e!2843458)))

(declare-fun c!779923 () Bool)

(assert (=> d!1420109 (= c!779923 ((_ is Cons!50876) (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))))))

(assert (=> d!1420109 (invariantList!1074 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))))

(assert (=> d!1420109 (= (getKeysList!522 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))) lt!1732037)))

(declare-fun b!4561499 () Bool)

(declare-fun res!1903526 () Bool)

(assert (=> b!4561499 (=> (not res!1903526) (not e!2843457))))

(assert (=> b!4561499 (= res!1903526 (= (length!410 lt!1732037) (length!411 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))))))

(assert (=> b!4561500 (= e!2843457 (= (content!8523 lt!1732037) (content!8523 (map!11211 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))) lambda!180114))))))

(declare-fun res!1903525 () Bool)

(assert (=> b!4561501 (=> (not res!1903525) (not e!2843457))))

(assert (=> b!4561501 (= res!1903525 (forall!10441 lt!1732037 lambda!180113))))

(assert (=> b!4561502 false))

(declare-fun lt!1732040 () Unit!102509)

(declare-fun forallContained!2703 (List!51002 Int K!12255) Unit!102509)

(assert (=> b!4561502 (= lt!1732040 (forallContained!2703 (getKeysList!522 (t!357974 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))) lambda!180111 (_1!29003 (h!56789 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))))))))

(declare-fun Unit!102534 () Unit!102509)

(assert (=> b!4561502 (= e!2843460 Unit!102534)))

(assert (=> b!4561503 (= e!2843458 (Cons!50878 (_1!29003 (h!56789 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))) (getKeysList!522 (t!357974 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))))))))

(declare-fun c!779921 () Bool)

(assert (=> b!4561503 (= c!779921 (containsKey!1985 (t!357974 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))) (_1!29003 (h!56789 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))))))))

(declare-fun lt!1732038 () Unit!102509)

(declare-fun e!2843459 () Unit!102509)

(assert (=> b!4561503 (= lt!1732038 e!2843459)))

(declare-fun c!779922 () Bool)

(assert (=> b!4561503 (= c!779922 (contains!13736 (getKeysList!522 (t!357974 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))) (_1!29003 (h!56789 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))))))))

(declare-fun lt!1732041 () Unit!102509)

(assert (=> b!4561503 (= lt!1732041 e!2843460)))

(declare-fun lt!1732039 () List!51002)

(assert (=> b!4561503 (= lt!1732039 (getKeysList!522 (t!357974 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))))))

(declare-fun lt!1732035 () Unit!102509)

(declare-fun lemmaForallContainsAddHeadPreserves!198 (List!51000 List!51002 tuple2!51418) Unit!102509)

(assert (=> b!4561503 (= lt!1732035 (lemmaForallContainsAddHeadPreserves!198 (t!357974 (toList!4500 (extractMap!1302 (toList!4499 lm!1477)))) lt!1732039 (h!56789 (toList!4500 (extractMap!1302 (toList!4499 lm!1477))))))))

(assert (=> b!4561503 (forall!10441 lt!1732039 lambda!180112)))

(declare-fun lt!1732036 () Unit!102509)

(assert (=> b!4561503 (= lt!1732036 lt!1732035)))

(declare-fun b!4561504 () Bool)

(assert (=> b!4561504 (= e!2843458 Nil!50878)))

(declare-fun b!4561505 () Bool)

(declare-fun Unit!102535 () Unit!102509)

(assert (=> b!4561505 (= e!2843459 Unit!102535)))

(declare-fun b!4561506 () Bool)

(assert (=> b!4561506 false))

(declare-fun Unit!102536 () Unit!102509)

(assert (=> b!4561506 (= e!2843459 Unit!102536)))

(assert (= (and d!1420109 c!779923) b!4561503))

(assert (= (and d!1420109 (not c!779923)) b!4561504))

(assert (= (and b!4561503 c!779921) b!4561506))

(assert (= (and b!4561503 (not c!779921)) b!4561505))

(assert (= (and b!4561503 c!779922) b!4561502))

(assert (= (and b!4561503 (not c!779922)) b!4561498))

(assert (= (and d!1420109 res!1903524) b!4561499))

(assert (= (and b!4561499 res!1903526) b!4561501))

(assert (= (and b!4561501 res!1903525) b!4561500))

(declare-fun m!5351945 () Bool)

(assert (=> b!4561503 m!5351945))

(declare-fun m!5351947 () Bool)

(assert (=> b!4561503 m!5351947))

(declare-fun m!5351949 () Bool)

(assert (=> b!4561503 m!5351949))

(assert (=> b!4561503 m!5351949))

(declare-fun m!5351951 () Bool)

(assert (=> b!4561503 m!5351951))

(declare-fun m!5351953 () Bool)

(assert (=> b!4561503 m!5351953))

(assert (=> b!4561502 m!5351949))

(assert (=> b!4561502 m!5351949))

(declare-fun m!5351955 () Bool)

(assert (=> b!4561502 m!5351955))

(declare-fun m!5351957 () Bool)

(assert (=> d!1420109 m!5351957))

(assert (=> d!1420109 m!5351763))

(declare-fun m!5351959 () Bool)

(assert (=> b!4561499 m!5351959))

(assert (=> b!4561499 m!5351711))

(declare-fun m!5351961 () Bool)

(assert (=> b!4561500 m!5351961))

(declare-fun m!5351963 () Bool)

(assert (=> b!4561500 m!5351963))

(assert (=> b!4561500 m!5351963))

(declare-fun m!5351965 () Bool)

(assert (=> b!4561500 m!5351965))

(declare-fun m!5351967 () Bool)

(assert (=> b!4561501 m!5351967))

(assert (=> b!4561092 d!1420109))

(declare-fun d!1420111 () Bool)

(declare-fun res!1903527 () Bool)

(declare-fun e!2843461 () Bool)

(assert (=> d!1420111 (=> res!1903527 e!2843461)))

(assert (=> d!1420111 (= res!1903527 (not ((_ is Cons!50876) (_2!29004 (h!56790 (toList!4499 lm!1477))))))))

(assert (=> d!1420111 (= (noDuplicateKeys!1246 (_2!29004 (h!56790 (toList!4499 lm!1477)))) e!2843461)))

(declare-fun b!4561509 () Bool)

(declare-fun e!2843462 () Bool)

(assert (=> b!4561509 (= e!2843461 e!2843462)))

(declare-fun res!1903528 () Bool)

(assert (=> b!4561509 (=> (not res!1903528) (not e!2843462))))

(assert (=> b!4561509 (= res!1903528 (not (containsKey!1984 (t!357974 (_2!29004 (h!56790 (toList!4499 lm!1477)))) (_1!29003 (h!56789 (_2!29004 (h!56790 (toList!4499 lm!1477))))))))))

(declare-fun b!4561510 () Bool)

(assert (=> b!4561510 (= e!2843462 (noDuplicateKeys!1246 (t!357974 (_2!29004 (h!56790 (toList!4499 lm!1477))))))))

(assert (= (and d!1420111 (not res!1903527)) b!4561509))

(assert (= (and b!4561509 res!1903528) b!4561510))

(declare-fun m!5351969 () Bool)

(assert (=> b!4561509 m!5351969))

(declare-fun m!5351971 () Bool)

(assert (=> b!4561510 m!5351971))

(assert (=> bs!940017 d!1420111))

(assert (=> b!4561182 d!1419929))

(declare-fun d!1420113 () Bool)

(declare-fun c!779926 () Bool)

(assert (=> d!1420113 (= c!779926 ((_ is Nil!50877) (t!357975 (toList!4499 lm!1477))))))

(declare-fun e!2843465 () (InoxSet tuple2!51420))

(assert (=> d!1420113 (= (content!8521 (t!357975 (toList!4499 lm!1477))) e!2843465)))

(declare-fun b!4561515 () Bool)

(assert (=> b!4561515 (= e!2843465 ((as const (Array tuple2!51420 Bool)) false))))

(declare-fun b!4561516 () Bool)

(assert (=> b!4561516 (= e!2843465 ((_ map or) (store ((as const (Array tuple2!51420 Bool)) false) (h!56790 (t!357975 (toList!4499 lm!1477))) true) (content!8521 (t!357975 (t!357975 (toList!4499 lm!1477))))))))

(assert (= (and d!1420113 c!779926) b!4561515))

(assert (= (and d!1420113 (not c!779926)) b!4561516))

(declare-fun m!5351973 () Bool)

(assert (=> b!4561516 m!5351973))

(declare-fun m!5351975 () Bool)

(assert (=> b!4561516 m!5351975))

(assert (=> d!1419869 d!1420113))

(declare-fun d!1420115 () Bool)

(assert (=> d!1420115 (isDefined!8550 (getValueByKey!1208 (toList!4499 lt!1731781) hash!344))))

(declare-fun lt!1732042 () Unit!102509)

(assert (=> d!1420115 (= lt!1732042 (choose!30234 (toList!4499 lt!1731781) hash!344))))

(declare-fun e!2843466 () Bool)

(assert (=> d!1420115 e!2843466))

(declare-fun res!1903529 () Bool)

(assert (=> d!1420115 (=> (not res!1903529) (not e!2843466))))

(assert (=> d!1420115 (= res!1903529 (isStrictlySorted!489 (toList!4499 lt!1731781)))))

(assert (=> d!1420115 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1114 (toList!4499 lt!1731781) hash!344) lt!1732042)))

(declare-fun b!4561517 () Bool)

(assert (=> b!4561517 (= e!2843466 (containsKey!1987 (toList!4499 lt!1731781) hash!344))))

(assert (= (and d!1420115 res!1903529) b!4561517))

(assert (=> d!1420115 m!5351479))

(assert (=> d!1420115 m!5351479))

(assert (=> d!1420115 m!5351647))

(declare-fun m!5351977 () Bool)

(assert (=> d!1420115 m!5351977))

(declare-fun m!5351979 () Bool)

(assert (=> d!1420115 m!5351979))

(assert (=> b!4561517 m!5351643))

(assert (=> b!4561208 d!1420115))

(declare-fun d!1420117 () Bool)

(assert (=> d!1420117 (= (isDefined!8550 (getValueByKey!1208 (toList!4499 lt!1731781) hash!344)) (not (isEmpty!28788 (getValueByKey!1208 (toList!4499 lt!1731781) hash!344))))))

(declare-fun bs!940066 () Bool)

(assert (= bs!940066 d!1420117))

(assert (=> bs!940066 m!5351479))

(declare-fun m!5351981 () Bool)

(assert (=> bs!940066 m!5351981))

(assert (=> b!4561208 d!1420117))

(assert (=> b!4561208 d!1419977))

(declare-fun d!1420119 () Bool)

(declare-fun res!1903530 () Bool)

(declare-fun e!2843467 () Bool)

(assert (=> d!1420119 (=> res!1903530 e!2843467)))

(assert (=> d!1420119 (= res!1903530 (and ((_ is Cons!50876) lt!1731866) (= (_1!29003 (h!56789 lt!1731866)) key!3287)))))

(assert (=> d!1420119 (= (containsKey!1984 lt!1731866 key!3287) e!2843467)))

(declare-fun b!4561518 () Bool)

(declare-fun e!2843468 () Bool)

(assert (=> b!4561518 (= e!2843467 e!2843468)))

(declare-fun res!1903531 () Bool)

(assert (=> b!4561518 (=> (not res!1903531) (not e!2843468))))

(assert (=> b!4561518 (= res!1903531 ((_ is Cons!50876) lt!1731866))))

(declare-fun b!4561519 () Bool)

(assert (=> b!4561519 (= e!2843468 (containsKey!1984 (t!357974 lt!1731866) key!3287))))

(assert (= (and d!1420119 (not res!1903530)) b!4561518))

(assert (= (and b!4561518 res!1903531) b!4561519))

(declare-fun m!5351983 () Bool)

(assert (=> b!4561519 m!5351983))

(assert (=> d!1419915 d!1420119))

(declare-fun d!1420121 () Bool)

(declare-fun res!1903532 () Bool)

(declare-fun e!2843469 () Bool)

(assert (=> d!1420121 (=> res!1903532 e!2843469)))

(assert (=> d!1420121 (= res!1903532 (not ((_ is Cons!50876) lt!1731785)))))

(assert (=> d!1420121 (= (noDuplicateKeys!1246 lt!1731785) e!2843469)))

(declare-fun b!4561520 () Bool)

(declare-fun e!2843470 () Bool)

(assert (=> b!4561520 (= e!2843469 e!2843470)))

(declare-fun res!1903533 () Bool)

(assert (=> b!4561520 (=> (not res!1903533) (not e!2843470))))

(assert (=> b!4561520 (= res!1903533 (not (containsKey!1984 (t!357974 lt!1731785) (_1!29003 (h!56789 lt!1731785)))))))

(declare-fun b!4561521 () Bool)

(assert (=> b!4561521 (= e!2843470 (noDuplicateKeys!1246 (t!357974 lt!1731785)))))

(assert (= (and d!1420121 (not res!1903532)) b!4561520))

(assert (= (and b!4561520 res!1903533) b!4561521))

(declare-fun m!5351985 () Bool)

(assert (=> b!4561520 m!5351985))

(declare-fun m!5351987 () Bool)

(assert (=> b!4561521 m!5351987))

(assert (=> d!1419915 d!1420121))

(declare-fun d!1420123 () Bool)

(declare-fun choose!30241 (Hashable!5641 K!12255) (_ BitVec 64))

(assert (=> d!1420123 (= (hash!3045 hashF!1107 key!3287) (choose!30241 hashF!1107 key!3287))))

(declare-fun bs!940067 () Bool)

(assert (= bs!940067 d!1420123))

(declare-fun m!5351989 () Bool)

(assert (=> bs!940067 m!5351989))

(assert (=> d!1419939 d!1420123))

(declare-fun d!1420125 () Bool)

(declare-fun lt!1732043 () Bool)

(assert (=> d!1420125 (= lt!1732043 (select (content!8521 (t!357975 (t!357975 (toList!4499 lm!1477)))) lt!1731786))))

(declare-fun e!2843472 () Bool)

(assert (=> d!1420125 (= lt!1732043 e!2843472)))

(declare-fun res!1903535 () Bool)

(assert (=> d!1420125 (=> (not res!1903535) (not e!2843472))))

(assert (=> d!1420125 (= res!1903535 ((_ is Cons!50877) (t!357975 (t!357975 (toList!4499 lm!1477)))))))

(assert (=> d!1420125 (= (contains!13735 (t!357975 (t!357975 (toList!4499 lm!1477))) lt!1731786) lt!1732043)))

(declare-fun b!4561522 () Bool)

(declare-fun e!2843471 () Bool)

(assert (=> b!4561522 (= e!2843472 e!2843471)))

(declare-fun res!1903534 () Bool)

(assert (=> b!4561522 (=> res!1903534 e!2843471)))

(assert (=> b!4561522 (= res!1903534 (= (h!56790 (t!357975 (t!357975 (toList!4499 lm!1477)))) lt!1731786))))

(declare-fun b!4561523 () Bool)

(assert (=> b!4561523 (= e!2843471 (contains!13735 (t!357975 (t!357975 (t!357975 (toList!4499 lm!1477)))) lt!1731786))))

(assert (= (and d!1420125 res!1903535) b!4561522))

(assert (= (and b!4561522 (not res!1903534)) b!4561523))

(assert (=> d!1420125 m!5351975))

(declare-fun m!5351991 () Bool)

(assert (=> d!1420125 m!5351991))

(declare-fun m!5351993 () Bool)

(assert (=> b!4561523 m!5351993))

(assert (=> b!4561041 d!1420125))

(assert (=> b!4561184 d!1419869))

(declare-fun d!1420127 () Bool)

(declare-fun e!2843473 () Bool)

(assert (=> d!1420127 e!2843473))

(declare-fun res!1903536 () Bool)

(assert (=> d!1420127 (=> res!1903536 e!2843473)))

(declare-fun lt!1732046 () Bool)

(assert (=> d!1420127 (= res!1903536 (not lt!1732046))))

(declare-fun lt!1732044 () Bool)

(assert (=> d!1420127 (= lt!1732046 lt!1732044)))

(declare-fun lt!1732047 () Unit!102509)

(declare-fun e!2843474 () Unit!102509)

(assert (=> d!1420127 (= lt!1732047 e!2843474)))

(declare-fun c!779927 () Bool)

(assert (=> d!1420127 (= c!779927 lt!1732044)))

(assert (=> d!1420127 (= lt!1732044 (containsKey!1987 (toList!4499 lm!1477) (hash!3043 hashF!1107 key!3287)))))

(assert (=> d!1420127 (= (contains!13734 lm!1477 (hash!3043 hashF!1107 key!3287)) lt!1732046)))

(declare-fun b!4561524 () Bool)

(declare-fun lt!1732045 () Unit!102509)

(assert (=> b!4561524 (= e!2843474 lt!1732045)))

(assert (=> b!4561524 (= lt!1732045 (lemmaContainsKeyImpliesGetValueByKeyDefined!1114 (toList!4499 lm!1477) (hash!3043 hashF!1107 key!3287)))))

(assert (=> b!4561524 (isDefined!8550 (getValueByKey!1208 (toList!4499 lm!1477) (hash!3043 hashF!1107 key!3287)))))

(declare-fun b!4561525 () Bool)

(declare-fun Unit!102537 () Unit!102509)

(assert (=> b!4561525 (= e!2843474 Unit!102537)))

(declare-fun b!4561526 () Bool)

(assert (=> b!4561526 (= e!2843473 (isDefined!8550 (getValueByKey!1208 (toList!4499 lm!1477) (hash!3043 hashF!1107 key!3287))))))

(assert (= (and d!1420127 c!779927) b!4561524))

(assert (= (and d!1420127 (not c!779927)) b!4561525))

(assert (= (and d!1420127 (not res!1903536)) b!4561526))

(assert (=> d!1420127 m!5351423))

(declare-fun m!5351995 () Bool)

(assert (=> d!1420127 m!5351995))

(assert (=> b!4561524 m!5351423))

(declare-fun m!5351997 () Bool)

(assert (=> b!4561524 m!5351997))

(assert (=> b!4561524 m!5351423))

(declare-fun m!5351999 () Bool)

(assert (=> b!4561524 m!5351999))

(assert (=> b!4561524 m!5351999))

(declare-fun m!5352001 () Bool)

(assert (=> b!4561524 m!5352001))

(assert (=> b!4561526 m!5351423))

(assert (=> b!4561526 m!5351999))

(assert (=> b!4561526 m!5351999))

(assert (=> b!4561526 m!5352001))

(assert (=> d!1419907 d!1420127))

(assert (=> d!1419907 d!1419939))

(declare-fun d!1420129 () Bool)

(assert (=> d!1420129 (contains!13734 lm!1477 (hash!3043 hashF!1107 key!3287))))

(assert (=> d!1420129 true))

(declare-fun _$27!1330 () Unit!102509)

(assert (=> d!1420129 (= (choose!30228 lm!1477 key!3287 hashF!1107) _$27!1330)))

(declare-fun bs!940068 () Bool)

(assert (= bs!940068 d!1420129))

(assert (=> bs!940068 m!5351423))

(assert (=> bs!940068 m!5351423))

(assert (=> bs!940068 m!5351579))

(assert (=> d!1419907 d!1420129))

(declare-fun d!1420131 () Bool)

(declare-fun res!1903537 () Bool)

(declare-fun e!2843475 () Bool)

(assert (=> d!1420131 (=> res!1903537 e!2843475)))

(assert (=> d!1420131 (= res!1903537 ((_ is Nil!50877) (toList!4499 lm!1477)))))

(assert (=> d!1420131 (= (forall!10438 (toList!4499 lm!1477) lambda!180048) e!2843475)))

(declare-fun b!4561527 () Bool)

(declare-fun e!2843476 () Bool)

(assert (=> b!4561527 (= e!2843475 e!2843476)))

(declare-fun res!1903538 () Bool)

(assert (=> b!4561527 (=> (not res!1903538) (not e!2843476))))

(assert (=> b!4561527 (= res!1903538 (dynLambda!21279 lambda!180048 (h!56790 (toList!4499 lm!1477))))))

(declare-fun b!4561528 () Bool)

(assert (=> b!4561528 (= e!2843476 (forall!10438 (t!357975 (toList!4499 lm!1477)) lambda!180048))))

(assert (= (and d!1420131 (not res!1903537)) b!4561527))

(assert (= (and b!4561527 res!1903538) b!4561528))

(declare-fun b_lambda!162205 () Bool)

(assert (=> (not b_lambda!162205) (not b!4561527)))

(declare-fun m!5352003 () Bool)

(assert (=> b!4561527 m!5352003))

(declare-fun m!5352005 () Bool)

(assert (=> b!4561528 m!5352005))

(assert (=> d!1419907 d!1420131))

(declare-fun d!1420133 () Bool)

(declare-fun res!1903539 () Bool)

(declare-fun e!2843477 () Bool)

(assert (=> d!1420133 (=> res!1903539 e!2843477)))

(assert (=> d!1420133 (= res!1903539 (and ((_ is Cons!50877) (toList!4499 lm!1477)) (= (_1!29004 (h!56790 (toList!4499 lm!1477))) lt!1731783)))))

(assert (=> d!1420133 (= (containsKey!1987 (toList!4499 lm!1477) lt!1731783) e!2843477)))

(declare-fun b!4561529 () Bool)

(declare-fun e!2843478 () Bool)

(assert (=> b!4561529 (= e!2843477 e!2843478)))

(declare-fun res!1903540 () Bool)

(assert (=> b!4561529 (=> (not res!1903540) (not e!2843478))))

(assert (=> b!4561529 (= res!1903540 (and (or (not ((_ is Cons!50877) (toList!4499 lm!1477))) (bvsle (_1!29004 (h!56790 (toList!4499 lm!1477))) lt!1731783)) ((_ is Cons!50877) (toList!4499 lm!1477)) (bvslt (_1!29004 (h!56790 (toList!4499 lm!1477))) lt!1731783)))))

(declare-fun b!4561530 () Bool)

(assert (=> b!4561530 (= e!2843478 (containsKey!1987 (t!357975 (toList!4499 lm!1477)) lt!1731783))))

(assert (= (and d!1420133 (not res!1903539)) b!4561529))

(assert (= (and b!4561529 res!1903540) b!4561530))

(declare-fun m!5352007 () Bool)

(assert (=> b!4561530 m!5352007))

(assert (=> d!1419933 d!1420133))

(assert (=> b!4561210 d!1420117))

(assert (=> b!4561210 d!1419977))

(declare-fun b!4561533 () Bool)

(declare-fun e!2843480 () List!51000)

(assert (=> b!4561533 (= e!2843480 (Cons!50876 (h!56789 (t!357974 lt!1731785)) (removePairForKey!873 (t!357974 (t!357974 lt!1731785)) key!3287)))))

(declare-fun b!4561532 () Bool)

(declare-fun e!2843479 () List!51000)

(assert (=> b!4561532 (= e!2843479 e!2843480)))

(declare-fun c!779929 () Bool)

(assert (=> b!4561532 (= c!779929 ((_ is Cons!50876) (t!357974 lt!1731785)))))

(declare-fun b!4561531 () Bool)

(assert (=> b!4561531 (= e!2843479 (t!357974 (t!357974 lt!1731785)))))

(declare-fun b!4561534 () Bool)

(assert (=> b!4561534 (= e!2843480 Nil!50876)))

(declare-fun d!1420135 () Bool)

(declare-fun lt!1732048 () List!51000)

(assert (=> d!1420135 (not (containsKey!1984 lt!1732048 key!3287))))

(assert (=> d!1420135 (= lt!1732048 e!2843479)))

(declare-fun c!779928 () Bool)

(assert (=> d!1420135 (= c!779928 (and ((_ is Cons!50876) (t!357974 lt!1731785)) (= (_1!29003 (h!56789 (t!357974 lt!1731785))) key!3287)))))

(assert (=> d!1420135 (noDuplicateKeys!1246 (t!357974 lt!1731785))))

(assert (=> d!1420135 (= (removePairForKey!873 (t!357974 lt!1731785) key!3287) lt!1732048)))

(assert (= (and d!1420135 c!779928) b!4561531))

(assert (= (and d!1420135 (not c!779928)) b!4561532))

(assert (= (and b!4561532 c!779929) b!4561533))

(assert (= (and b!4561532 (not c!779929)) b!4561534))

(declare-fun m!5352009 () Bool)

(assert (=> b!4561533 m!5352009))

(declare-fun m!5352011 () Bool)

(assert (=> d!1420135 m!5352011))

(assert (=> d!1420135 m!5351987))

(assert (=> b!4561172 d!1420135))

(declare-fun d!1420137 () Bool)

(declare-fun res!1903545 () Bool)

(declare-fun e!2843487 () Bool)

(assert (=> d!1420137 (=> res!1903545 e!2843487)))

(assert (=> d!1420137 (= res!1903545 ((_ is Nil!50876) newBucket!178))))

(assert (=> d!1420137 (= (forall!10439 newBucket!178 lambda!180044) e!2843487)))

(declare-fun b!4561543 () Bool)

(declare-fun e!2843488 () Bool)

(assert (=> b!4561543 (= e!2843487 e!2843488)))

(declare-fun res!1903546 () Bool)

(assert (=> b!4561543 (=> (not res!1903546) (not e!2843488))))

(declare-fun dynLambda!21282 (Int tuple2!51418) Bool)

(assert (=> b!4561543 (= res!1903546 (dynLambda!21282 lambda!180044 (h!56789 newBucket!178)))))

(declare-fun b!4561544 () Bool)

(assert (=> b!4561544 (= e!2843488 (forall!10439 (t!357974 newBucket!178) lambda!180044))))

(assert (= (and d!1420137 (not res!1903545)) b!4561543))

(assert (= (and b!4561543 res!1903546) b!4561544))

(declare-fun b_lambda!162207 () Bool)

(assert (=> (not b_lambda!162207) (not b!4561543)))

(declare-fun m!5352013 () Bool)

(assert (=> b!4561543 m!5352013))

(declare-fun m!5352015 () Bool)

(assert (=> b!4561544 m!5352015))

(assert (=> d!1419905 d!1420137))

(declare-fun d!1420139 () Bool)

(declare-fun res!1903547 () Bool)

(declare-fun e!2843489 () Bool)

(assert (=> d!1420139 (=> res!1903547 e!2843489)))

(assert (=> d!1420139 (= res!1903547 (and ((_ is Cons!50876) (t!357974 lt!1731785)) (= (_1!29003 (h!56789 (t!357974 lt!1731785))) key!3287)))))

(assert (=> d!1420139 (= (containsKey!1984 (t!357974 lt!1731785) key!3287) e!2843489)))

(declare-fun b!4561545 () Bool)

(declare-fun e!2843490 () Bool)

(assert (=> b!4561545 (= e!2843489 e!2843490)))

(declare-fun res!1903548 () Bool)

(assert (=> b!4561545 (=> (not res!1903548) (not e!2843490))))

(assert (=> b!4561545 (= res!1903548 ((_ is Cons!50876) (t!357974 lt!1731785)))))

(declare-fun b!4561546 () Bool)

(assert (=> b!4561546 (= e!2843490 (containsKey!1984 (t!357974 (t!357974 lt!1731785)) key!3287))))

(assert (= (and d!1420139 (not res!1903547)) b!4561545))

(assert (= (and b!4561545 res!1903548) b!4561546))

(declare-fun m!5352017 () Bool)

(assert (=> b!4561546 m!5352017))

(assert (=> b!4561139 d!1420139))

(assert (=> b!4561099 d!1420093))

(assert (=> b!4561099 d!1420095))

(assert (=> b!4561100 d!1419973))

(assert (=> b!4561187 d!1419991))

(assert (=> d!1419873 d!1420103))

(declare-fun d!1420141 () Bool)

(declare-fun c!779932 () Bool)

(assert (=> d!1420141 (= c!779932 ((_ is Nil!50877) (toList!4499 lm!1477)))))

(declare-fun e!2843491 () (InoxSet tuple2!51420))

(assert (=> d!1420141 (= (content!8521 (toList!4499 lm!1477)) e!2843491)))

(declare-fun b!4561547 () Bool)

(assert (=> b!4561547 (= e!2843491 ((as const (Array tuple2!51420 Bool)) false))))

(declare-fun b!4561548 () Bool)

(assert (=> b!4561548 (= e!2843491 ((_ map or) (store ((as const (Array tuple2!51420 Bool)) false) (h!56790 (toList!4499 lm!1477)) true) (content!8521 (t!357975 (toList!4499 lm!1477)))))))

(assert (= (and d!1420141 c!779932) b!4561547))

(assert (= (and d!1420141 (not c!779932)) b!4561548))

(declare-fun m!5352019 () Bool)

(assert (=> b!4561548 m!5352019))

(assert (=> b!4561548 m!5351465))

(assert (=> d!1419929 d!1420141))

(declare-fun b!4561549 () Bool)

(declare-fun tp!1339306 () Bool)

(declare-fun e!2843492 () Bool)

(assert (=> b!4561549 (= e!2843492 (and tp_is_empty!28261 tp_is_empty!28263 tp!1339306))))

(assert (=> b!4561221 (= tp!1339292 e!2843492)))

(assert (= (and b!4561221 ((_ is Cons!50876) (_2!29004 (h!56790 (toList!4499 lm!1477))))) b!4561549))

(declare-fun b!4561550 () Bool)

(declare-fun e!2843493 () Bool)

(declare-fun tp!1339307 () Bool)

(declare-fun tp!1339308 () Bool)

(assert (=> b!4561550 (= e!2843493 (and tp!1339307 tp!1339308))))

(assert (=> b!4561221 (= tp!1339293 e!2843493)))

(assert (= (and b!4561221 ((_ is Cons!50877) (t!357975 (toList!4499 lm!1477)))) b!4561550))

(declare-fun tp!1339309 () Bool)

(declare-fun e!2843494 () Bool)

(declare-fun b!4561551 () Bool)

(assert (=> b!4561551 (= e!2843494 (and tp_is_empty!28261 tp_is_empty!28263 tp!1339309))))

(assert (=> b!4561226 (= tp!1339296 e!2843494)))

(assert (= (and b!4561226 ((_ is Cons!50876) (t!357974 (t!357974 newBucket!178)))) b!4561551))

(declare-fun b_lambda!162209 () Bool)

(assert (= b_lambda!162185 (or d!1419895 b_lambda!162209)))

(declare-fun bs!940069 () Bool)

(declare-fun d!1420143 () Bool)

(assert (= bs!940069 (and d!1420143 d!1419895)))

(assert (=> bs!940069 (= (dynLambda!21279 lambda!180033 (h!56790 (toList!4499 lm!1477))) (noDuplicateKeys!1246 (_2!29004 (h!56790 (toList!4499 lm!1477)))))))

(assert (=> bs!940069 m!5351661))

(assert (=> b!4561312 d!1420143))

(declare-fun b_lambda!162211 () Bool)

(assert (= b_lambda!162187 (or d!1419883 b_lambda!162211)))

(declare-fun bs!940070 () Bool)

(declare-fun d!1420145 () Bool)

(assert (= bs!940070 (and d!1420145 d!1419883)))

(assert (=> bs!940070 (= (dynLambda!21279 lambda!180027 (h!56790 (toList!4499 lt!1731781))) (noDuplicateKeys!1246 (_2!29004 (h!56790 (toList!4499 lt!1731781)))))))

(declare-fun m!5352021 () Bool)

(assert (=> bs!940070 m!5352021))

(assert (=> b!4561316 d!1420145))

(declare-fun b_lambda!162213 () Bool)

(assert (= b_lambda!162207 (or d!1419905 b_lambda!162213)))

(declare-fun bs!940071 () Bool)

(declare-fun d!1420147 () Bool)

(assert (= bs!940071 (and d!1420147 d!1419905)))

(assert (=> bs!940071 (= (dynLambda!21282 lambda!180044 (h!56789 newBucket!178)) (= (hash!3043 hashF!1107 (_1!29003 (h!56789 newBucket!178))) hash!344))))

(declare-fun m!5352023 () Bool)

(assert (=> bs!940071 m!5352023))

(assert (=> b!4561543 d!1420147))

(declare-fun b_lambda!162215 () Bool)

(assert (= b_lambda!162191 (or d!1419875 b_lambda!162215)))

(declare-fun bs!940072 () Bool)

(declare-fun d!1420149 () Bool)

(assert (= bs!940072 (and d!1420149 d!1419875)))

(assert (=> bs!940072 (= (dynLambda!21279 lambda!180024 (h!56790 (toList!4499 lm!1477))) (allKeysSameHash!1100 (_2!29004 (h!56790 (toList!4499 lm!1477))) (_1!29004 (h!56790 (toList!4499 lm!1477))) hashF!1107))))

(declare-fun m!5352025 () Bool)

(assert (=> bs!940072 m!5352025))

(assert (=> b!4561333 d!1420149))

(declare-fun b_lambda!162217 () Bool)

(assert (= b_lambda!162205 (or d!1419907 b_lambda!162217)))

(declare-fun bs!940073 () Bool)

(declare-fun d!1420151 () Bool)

(assert (= bs!940073 (and d!1420151 d!1419907)))

(assert (=> bs!940073 (= (dynLambda!21279 lambda!180048 (h!56790 (toList!4499 lm!1477))) (noDuplicateKeys!1246 (_2!29004 (h!56790 (toList!4499 lm!1477)))))))

(assert (=> bs!940073 m!5351661))

(assert (=> b!4561527 d!1420151))

(declare-fun b_lambda!162219 () Bool)

(assert (= b_lambda!162183 (or start!453524 b_lambda!162219)))

(declare-fun bs!940074 () Bool)

(declare-fun d!1420153 () Bool)

(assert (= bs!940074 (and d!1420153 start!453524)))

(assert (=> bs!940074 (= (dynLambda!21279 lambda!180021 (h!56790 (t!357975 (toList!4499 lm!1477)))) (noDuplicateKeys!1246 (_2!29004 (h!56790 (t!357975 (toList!4499 lm!1477))))))))

(declare-fun m!5352027 () Bool)

(assert (=> bs!940074 m!5352027))

(assert (=> b!4561300 d!1420153))

(declare-fun b_lambda!162221 () Bool)

(assert (= b_lambda!162193 (or d!1419901 b_lambda!162221)))

(declare-fun bs!940075 () Bool)

(declare-fun d!1420155 () Bool)

(assert (= bs!940075 (and d!1420155 d!1419901)))

(assert (=> bs!940075 (= (dynLambda!21279 lambda!180039 (h!56790 (toList!4499 lm!1477))) (noDuplicateKeys!1246 (_2!29004 (h!56790 (toList!4499 lm!1477)))))))

(assert (=> bs!940075 m!5351661))

(assert (=> b!4561335 d!1420155))

(declare-fun b_lambda!162223 () Bool)

(assert (= b_lambda!162189 (or start!453524 b_lambda!162223)))

(assert (=> d!1420009 d!1419951))

(check-sat (not b!4561295) (not b!4561337) (not b!4561520) (not d!1420135) (not b!4561278) (not d!1420117) (not b!4561551) (not bs!940069) (not d!1420093) (not b!4561313) (not b!4561322) (not b_lambda!162175) (not d!1420115) (not bm!318277) (not d!1420027) (not b!4561474) (not b!4561276) (not b!4561468) (not b!4561519) tp_is_empty!28261 (not b!4561453) (not b!4561528) (not b!4561521) (not b_lambda!162213) (not b!4561301) (not d!1420099) (not b!4561315) (not b!4561479) (not d!1419979) (not d!1420091) (not b_lambda!162221) (not d!1420127) (not d!1420125) (not b!4561526) (not b!4561544) (not b!4561501) (not bm!318278) (not b!4561449) (not b!4561310) (not b!4561446) (not bs!940075) (not d!1420105) (not b!4561465) (not b!4561503) (not d!1419981) (not b!4561319) (not b!4561307) (not b_lambda!162177) tp_is_empty!28263 (not d!1420097) (not b!4561548) (not b_lambda!162223) (not b!4561533) (not b!4561517) (not d!1419971) (not d!1420123) (not b!4561298) (not bm!318276) (not d!1420101) (not b_lambda!162209) (not b!4561338) (not d!1420089) (not d!1420015) (not b!4561334) (not b!4561524) (not b_lambda!162215) (not b!4561523) (not b!4561549) (not b!4561336) (not b!4561447) (not bs!940071) (not b!4561550) (not b!4561277) (not b!4561546) (not bs!940070) (not b!4561500) (not b!4561509) (not bs!940073) (not d!1420109) (not d!1419973) (not b!4561318) (not b!4561477) (not bs!940072) (not b!4561530) (not b!4561317) (not b_lambda!162219) (not b_lambda!162217) (not d!1420001) (not b!4561510) (not d!1420129) (not b_lambda!162211) (not d!1419995) (not b!4561291) (not b!4561320) (not b!4561516) (not b!4561269) (not d!1420021) (not b!4561502) (not b!4561332) (not b!4561324) (not b!4561330) (not b!4561476) (not b!4561499) (not bs!940074) (not b!4561450))
(check-sat)
