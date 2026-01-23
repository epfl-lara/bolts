; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497422 () Bool)

(assert start!497422)

(declare-fun b!4811389 () Bool)

(declare-fun b_free!130195 () Bool)

(declare-fun b_next!130985 () Bool)

(assert (=> b!4811389 (= b_free!130195 (not b_next!130985))))

(declare-fun tp!1360880 () Bool)

(declare-fun b_and!341989 () Bool)

(assert (=> b!4811389 (= tp!1360880 b_and!341989)))

(declare-fun b!4811390 () Bool)

(declare-fun b_free!130197 () Bool)

(declare-fun b_next!130987 () Bool)

(assert (=> b!4811390 (= b_free!130197 (not b_next!130987))))

(declare-fun tp!1360875 () Bool)

(declare-fun b_and!341991 () Bool)

(assert (=> b!4811390 (= tp!1360875 b_and!341991)))

(declare-fun b!4811380 () Bool)

(declare-fun e!3005767 () Bool)

(declare-fun e!3005770 () Bool)

(assert (=> b!4811380 (= e!3005767 e!3005770)))

(declare-fun b!4811381 () Bool)

(declare-fun e!3005774 () Bool)

(declare-datatypes ((K!16174 0))(
  ( (K!16175 (val!21245 Int)) )
))
(declare-datatypes ((V!16420 0))(
  ( (V!16421 (val!21246 Int)) )
))
(declare-datatypes ((tuple2!57432 0))(
  ( (tuple2!57433 (_1!32010 K!16174) (_2!32010 V!16420)) )
))
(declare-datatypes ((List!54678 0))(
  ( (Nil!54554) (Cons!54554 (h!60986 tuple2!57432) (t!362162 List!54678)) )
))
(declare-datatypes ((Option!13313 0))(
  ( (None!13312) (Some!13312 (v!48872 List!54678)) )
))
(declare-fun lt!1963033 () Option!13313)

(declare-fun lt!1963032 () List!54678)

(assert (=> b!4811381 (= e!3005774 (= lt!1963033 (Some!13312 lt!1963032)))))

(declare-fun b!4811382 () Bool)

(declare-fun e!3005773 () Bool)

(declare-fun tp!1360878 () Bool)

(declare-fun mapRes!22366 () Bool)

(assert (=> b!4811382 (= e!3005773 (and tp!1360878 mapRes!22366))))

(declare-fun condMapEmpty!22366 () Bool)

(declare-datatypes ((array!18630 0))(
  ( (array!18631 (arr!8311 (Array (_ BitVec 32) (_ BitVec 64))) (size!36557 (_ BitVec 32))) )
))
(declare-datatypes ((array!18632 0))(
  ( (array!18633 (arr!8312 (Array (_ BitVec 32) List!54678)) (size!36558 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10126 0))(
  ( (LongMapFixedSize!10127 (defaultEntry!5485 Int) (mask!15075 (_ BitVec 32)) (extraKeys!5343 (_ BitVec 32)) (zeroValue!5356 List!54678) (minValue!5356 List!54678) (_size!10151 (_ BitVec 32)) (_keys!5412 array!18630) (_values!5381 array!18632) (_vacant!5128 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20017 0))(
  ( (Cell!20018 (v!48873 LongMapFixedSize!10126)) )
))
(declare-datatypes ((MutLongMap!5063 0))(
  ( (LongMap!5063 (underlying!10333 Cell!20017)) (MutLongMapExt!5062 (__x!33287 Int)) )
))
(declare-datatypes ((Hashable!7074 0))(
  ( (HashableExt!7073 (__x!33288 Int)) )
))
(declare-datatypes ((Cell!20019 0))(
  ( (Cell!20020 (v!48874 MutLongMap!5063)) )
))
(declare-datatypes ((MutableMap!4947 0))(
  ( (MutableMapExt!4946 (__x!33289 Int)) (HashMap!4947 (underlying!10334 Cell!20019) (hashF!13349 Hashable!7074) (_size!10152 (_ BitVec 32)) (defaultValue!5118 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4947)

(declare-fun mapDefault!22366 () List!54678)

(assert (=> b!4811382 (= condMapEmpty!22366 (= (arr!8312 (_values!5381 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54678)) mapDefault!22366)))))

(declare-fun b!4811383 () Bool)

(declare-fun e!3005769 () Bool)

(declare-fun e!3005771 () Bool)

(declare-fun lt!1963029 () MutLongMap!5063)

(get-info :version)

(assert (=> b!4811383 (= e!3005769 (and e!3005771 ((_ is LongMap!5063) lt!1963029)))))

(assert (=> b!4811383 (= lt!1963029 (v!48874 (underlying!10334 thiss!41921)))))

(declare-fun res!2046590 () Bool)

(declare-fun e!3005772 () Bool)

(assert (=> start!497422 (=> (not res!2046590) (not e!3005772))))

(assert (=> start!497422 (= res!2046590 ((_ is HashMap!4947) thiss!41921))))

(assert (=> start!497422 e!3005772))

(declare-fun e!3005764 () Bool)

(assert (=> start!497422 e!3005764))

(declare-fun tp_is_empty!34005 () Bool)

(assert (=> start!497422 tp_is_empty!34005))

(declare-fun mapIsEmpty!22366 () Bool)

(assert (=> mapIsEmpty!22366 mapRes!22366))

(declare-fun b!4811384 () Bool)

(declare-fun e!3005766 () Bool)

(assert (=> b!4811384 (= e!3005766 (not e!3005774))))

(declare-fun res!2046591 () Bool)

(assert (=> b!4811384 (=> (not res!2046591) (not e!3005774))))

(declare-datatypes ((tuple2!57434 0))(
  ( (tuple2!57435 (_1!32011 (_ BitVec 64)) (_2!32011 List!54678)) )
))
(declare-datatypes ((List!54679 0))(
  ( (Nil!54555) (Cons!54555 (h!60987 tuple2!57434) (t!362163 List!54679)) )
))
(declare-datatypes ((ListLongMap!5617 0))(
  ( (ListLongMap!5618 (toList!7150 List!54679)) )
))
(declare-fun lt!1963034 () ListLongMap!5617)

(declare-fun isStrictlySorted!932 (List!54679) Bool)

(assert (=> b!4811384 (= res!2046591 (isStrictlySorted!932 (toList!7150 lt!1963034)))))

(declare-fun isDefined!10451 (Option!13313) Bool)

(assert (=> b!4811384 (isDefined!10451 lt!1963033)))

(declare-fun lt!1963030 () (_ BitVec 64))

(declare-fun getValueByKey!2492 (List!54679 (_ BitVec 64)) Option!13313)

(assert (=> b!4811384 (= lt!1963033 (getValueByKey!2492 (toList!7150 lt!1963034) lt!1963030))))

(declare-datatypes ((Unit!141572 0))(
  ( (Unit!141573) )
))
(declare-fun lt!1963031 () Unit!141572)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2279 (List!54679 (_ BitVec 64)) Unit!141572)

(assert (=> b!4811384 (= lt!1963031 (lemmaContainsKeyImpliesGetValueByKeyDefined!2279 (toList!7150 lt!1963034) lt!1963030))))

(declare-fun containsKey!4156 (List!54679 (_ BitVec 64)) Bool)

(assert (=> b!4811384 (containsKey!4156 (toList!7150 lt!1963034) lt!1963030)))

(declare-fun lt!1963028 () Unit!141572)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!276 (List!54679 (_ BitVec 64)) Unit!141572)

(assert (=> b!4811384 (= lt!1963028 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!276 (toList!7150 lt!1963034) lt!1963030))))

(declare-fun b!4811385 () Bool)

(assert (=> b!4811385 (= e!3005771 e!3005767)))

(declare-fun b!4811386 () Bool)

(declare-fun res!2046588 () Bool)

(assert (=> b!4811386 (=> (not res!2046588) (not e!3005772))))

(declare-fun valid!4091 (MutableMap!4947) Bool)

(assert (=> b!4811386 (= res!2046588 (valid!4091 thiss!41921))))

(declare-fun b!4811387 () Bool)

(declare-fun e!3005765 () Bool)

(assert (=> b!4811387 (= e!3005772 e!3005765)))

(declare-fun res!2046587 () Bool)

(assert (=> b!4811387 (=> (not res!2046587) (not e!3005765))))

(declare-fun contains!18278 (MutLongMap!5063 (_ BitVec 64)) Bool)

(assert (=> b!4811387 (= res!2046587 (contains!18278 (v!48874 (underlying!10334 thiss!41921)) lt!1963030))))

(declare-fun key!1652 () K!16174)

(declare-fun hash!5141 (Hashable!7074 K!16174) (_ BitVec 64))

(assert (=> b!4811387 (= lt!1963030 (hash!5141 (hashF!13349 thiss!41921) key!1652))))

(declare-fun b!4811388 () Bool)

(assert (=> b!4811388 (= e!3005765 e!3005766)))

(declare-fun res!2046589 () Bool)

(assert (=> b!4811388 (=> (not res!2046589) (not e!3005766))))

(declare-fun contains!18279 (List!54679 tuple2!57434) Bool)

(assert (=> b!4811388 (= res!2046589 (not (contains!18279 (toList!7150 lt!1963034) (tuple2!57435 lt!1963030 lt!1963032))))))

(declare-fun apply!13164 (MutLongMap!5063 (_ BitVec 64)) List!54678)

(assert (=> b!4811388 (= lt!1963032 (apply!13164 (v!48874 (underlying!10334 thiss!41921)) lt!1963030))))

(declare-fun map!12431 (MutLongMap!5063) ListLongMap!5617)

(assert (=> b!4811388 (= lt!1963034 (map!12431 (v!48874 (underlying!10334 thiss!41921))))))

(declare-fun tp!1360877 () Bool)

(declare-fun tp!1360879 () Bool)

(declare-fun array_inv!5999 (array!18630) Bool)

(declare-fun array_inv!6000 (array!18632) Bool)

(assert (=> b!4811389 (= e!3005770 (and tp!1360880 tp!1360877 tp!1360879 (array_inv!5999 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))) (array_inv!6000 (_values!5381 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))) e!3005773))))

(assert (=> b!4811390 (= e!3005764 (and e!3005769 tp!1360875))))

(declare-fun mapNonEmpty!22366 () Bool)

(declare-fun tp!1360881 () Bool)

(declare-fun tp!1360876 () Bool)

(assert (=> mapNonEmpty!22366 (= mapRes!22366 (and tp!1360881 tp!1360876))))

(declare-fun mapKey!22366 () (_ BitVec 32))

(declare-fun mapRest!22366 () (Array (_ BitVec 32) List!54678))

(declare-fun mapValue!22366 () List!54678)

(assert (=> mapNonEmpty!22366 (= (arr!8312 (_values!5381 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))) (store mapRest!22366 mapKey!22366 mapValue!22366))))

(assert (= (and start!497422 res!2046590) b!4811386))

(assert (= (and b!4811386 res!2046588) b!4811387))

(assert (= (and b!4811387 res!2046587) b!4811388))

(assert (= (and b!4811388 res!2046589) b!4811384))

(assert (= (and b!4811384 res!2046591) b!4811381))

(assert (= (and b!4811382 condMapEmpty!22366) mapIsEmpty!22366))

(assert (= (and b!4811382 (not condMapEmpty!22366)) mapNonEmpty!22366))

(assert (= b!4811389 b!4811382))

(assert (= b!4811380 b!4811389))

(assert (= b!4811385 b!4811380))

(assert (= (and b!4811383 ((_ is LongMap!5063) (v!48874 (underlying!10334 thiss!41921)))) b!4811385))

(assert (= b!4811390 b!4811383))

(assert (= (and start!497422 ((_ is HashMap!4947) thiss!41921)) b!4811390))

(declare-fun m!5797106 () Bool)

(assert (=> b!4811384 m!5797106))

(declare-fun m!5797108 () Bool)

(assert (=> b!4811384 m!5797108))

(declare-fun m!5797110 () Bool)

(assert (=> b!4811384 m!5797110))

(declare-fun m!5797112 () Bool)

(assert (=> b!4811384 m!5797112))

(declare-fun m!5797114 () Bool)

(assert (=> b!4811384 m!5797114))

(declare-fun m!5797116 () Bool)

(assert (=> b!4811384 m!5797116))

(declare-fun m!5797118 () Bool)

(assert (=> b!4811387 m!5797118))

(declare-fun m!5797120 () Bool)

(assert (=> b!4811387 m!5797120))

(declare-fun m!5797122 () Bool)

(assert (=> b!4811388 m!5797122))

(declare-fun m!5797124 () Bool)

(assert (=> b!4811388 m!5797124))

(declare-fun m!5797126 () Bool)

(assert (=> b!4811388 m!5797126))

(declare-fun m!5797128 () Bool)

(assert (=> b!4811386 m!5797128))

(declare-fun m!5797130 () Bool)

(assert (=> mapNonEmpty!22366 m!5797130))

(declare-fun m!5797132 () Bool)

(assert (=> b!4811389 m!5797132))

(declare-fun m!5797134 () Bool)

(assert (=> b!4811389 m!5797134))

(check-sat (not b_next!130987) b_and!341991 tp_is_empty!34005 (not b!4811386) (not b!4811387) (not b!4811382) (not b_next!130985) (not b!4811384) (not mapNonEmpty!22366) b_and!341989 (not b!4811389) (not b!4811388))
(check-sat b_and!341989 b_and!341991 (not b_next!130985) (not b_next!130987))
(get-model)

(declare-fun lt!1963037 () Bool)

(declare-fun d!1540482 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9778 (List!54679) (InoxSet tuple2!57434))

(assert (=> d!1540482 (= lt!1963037 (select (content!9778 (toList!7150 lt!1963034)) (tuple2!57435 lt!1963030 lt!1963032)))))

(declare-fun e!3005780 () Bool)

(assert (=> d!1540482 (= lt!1963037 e!3005780)))

(declare-fun res!2046597 () Bool)

(assert (=> d!1540482 (=> (not res!2046597) (not e!3005780))))

(assert (=> d!1540482 (= res!2046597 ((_ is Cons!54555) (toList!7150 lt!1963034)))))

(assert (=> d!1540482 (= (contains!18279 (toList!7150 lt!1963034) (tuple2!57435 lt!1963030 lt!1963032)) lt!1963037)))

(declare-fun b!4811395 () Bool)

(declare-fun e!3005779 () Bool)

(assert (=> b!4811395 (= e!3005780 e!3005779)))

(declare-fun res!2046596 () Bool)

(assert (=> b!4811395 (=> res!2046596 e!3005779)))

(assert (=> b!4811395 (= res!2046596 (= (h!60987 (toList!7150 lt!1963034)) (tuple2!57435 lt!1963030 lt!1963032)))))

(declare-fun b!4811396 () Bool)

(assert (=> b!4811396 (= e!3005779 (contains!18279 (t!362163 (toList!7150 lt!1963034)) (tuple2!57435 lt!1963030 lt!1963032)))))

(assert (= (and d!1540482 res!2046597) b!4811395))

(assert (= (and b!4811395 (not res!2046596)) b!4811396))

(declare-fun m!5797136 () Bool)

(assert (=> d!1540482 m!5797136))

(declare-fun m!5797138 () Bool)

(assert (=> d!1540482 m!5797138))

(declare-fun m!5797140 () Bool)

(assert (=> b!4811396 m!5797140))

(assert (=> b!4811388 d!1540482))

(declare-fun d!1540484 () Bool)

(declare-fun e!3005783 () Bool)

(assert (=> d!1540484 e!3005783))

(declare-fun c!820031 () Bool)

(assert (=> d!1540484 (= c!820031 (contains!18278 (v!48874 (underlying!10334 thiss!41921)) lt!1963030))))

(declare-fun lt!1963040 () List!54678)

(declare-fun apply!13165 (LongMapFixedSize!10126 (_ BitVec 64)) List!54678)

(assert (=> d!1540484 (= lt!1963040 (apply!13165 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))) lt!1963030))))

(declare-fun valid!4092 (MutLongMap!5063) Bool)

(assert (=> d!1540484 (valid!4092 (v!48874 (underlying!10334 thiss!41921)))))

(assert (=> d!1540484 (= (apply!13164 (v!48874 (underlying!10334 thiss!41921)) lt!1963030) lt!1963040)))

(declare-fun b!4811401 () Bool)

(declare-fun get!18665 (Option!13313) List!54678)

(assert (=> b!4811401 (= e!3005783 (= lt!1963040 (get!18665 (getValueByKey!2492 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921)))) lt!1963030))))))

(declare-fun b!4811402 () Bool)

(declare-fun dynLambda!22139 (Int (_ BitVec 64)) List!54678)

(assert (=> b!4811402 (= e!3005783 (= lt!1963040 (dynLambda!22139 (defaultEntry!5485 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) lt!1963030)))))

(assert (=> b!4811402 ((_ is LongMap!5063) (v!48874 (underlying!10334 thiss!41921)))))

(assert (= (and d!1540484 c!820031) b!4811401))

(assert (= (and d!1540484 (not c!820031)) b!4811402))

(declare-fun b_lambda!188245 () Bool)

(assert (=> (not b_lambda!188245) (not b!4811402)))

(declare-fun t!362165 () Bool)

(declare-fun tb!257537 () Bool)

(assert (=> (and b!4811389 (= (defaultEntry!5485 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (defaultEntry!5485 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))) t!362165) tb!257537))

(assert (=> b!4811402 t!362165))

(declare-fun result!319624 () Bool)

(declare-fun b_and!341993 () Bool)

(assert (= b_and!341989 (and (=> t!362165 result!319624) b_and!341993)))

(assert (=> d!1540484 m!5797118))

(declare-fun m!5797142 () Bool)

(assert (=> d!1540484 m!5797142))

(declare-fun m!5797144 () Bool)

(assert (=> d!1540484 m!5797144))

(assert (=> b!4811401 m!5797126))

(declare-fun m!5797146 () Bool)

(assert (=> b!4811401 m!5797146))

(assert (=> b!4811401 m!5797146))

(declare-fun m!5797148 () Bool)

(assert (=> b!4811401 m!5797148))

(declare-fun m!5797150 () Bool)

(assert (=> b!4811402 m!5797150))

(assert (=> b!4811388 d!1540484))

(declare-fun d!1540486 () Bool)

(declare-fun map!12432 (LongMapFixedSize!10126) ListLongMap!5617)

(assert (=> d!1540486 (= (map!12431 (v!48874 (underlying!10334 thiss!41921))) (map!12432 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))))))

(declare-fun bs!1160126 () Bool)

(assert (= bs!1160126 d!1540486))

(declare-fun m!5797152 () Bool)

(assert (=> bs!1160126 m!5797152))

(assert (=> b!4811388 d!1540486))

(declare-fun d!1540488 () Bool)

(declare-fun res!2046602 () Bool)

(declare-fun e!3005786 () Bool)

(assert (=> d!1540488 (=> (not res!2046602) (not e!3005786))))

(assert (=> d!1540488 (= res!2046602 (valid!4092 (v!48874 (underlying!10334 thiss!41921))))))

(assert (=> d!1540488 (= (valid!4091 thiss!41921) e!3005786)))

(declare-fun b!4811407 () Bool)

(declare-fun res!2046603 () Bool)

(assert (=> b!4811407 (=> (not res!2046603) (not e!3005786))))

(declare-fun lambda!233772 () Int)

(declare-fun forall!12396 (List!54679 Int) Bool)

(assert (=> b!4811407 (= res!2046603 (forall!12396 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921)))) lambda!233772))))

(declare-fun b!4811408 () Bool)

(declare-fun allKeysSameHashInMap!2411 (ListLongMap!5617 Hashable!7074) Bool)

(assert (=> b!4811408 (= e!3005786 (allKeysSameHashInMap!2411 (map!12431 (v!48874 (underlying!10334 thiss!41921))) (hashF!13349 thiss!41921)))))

(assert (= (and d!1540488 res!2046602) b!4811407))

(assert (= (and b!4811407 res!2046603) b!4811408))

(assert (=> d!1540488 m!5797144))

(assert (=> b!4811407 m!5797126))

(declare-fun m!5797154 () Bool)

(assert (=> b!4811407 m!5797154))

(assert (=> b!4811408 m!5797126))

(assert (=> b!4811408 m!5797126))

(declare-fun m!5797156 () Bool)

(assert (=> b!4811408 m!5797156))

(assert (=> b!4811386 d!1540488))

(declare-fun d!1540490 () Bool)

(declare-fun lt!1963043 () Bool)

(declare-fun contains!18280 (ListLongMap!5617 (_ BitVec 64)) Bool)

(assert (=> d!1540490 (= lt!1963043 (contains!18280 (map!12431 (v!48874 (underlying!10334 thiss!41921))) lt!1963030))))

(declare-fun contains!18281 (LongMapFixedSize!10126 (_ BitVec 64)) Bool)

(assert (=> d!1540490 (= lt!1963043 (contains!18281 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))) lt!1963030))))

(assert (=> d!1540490 (valid!4092 (v!48874 (underlying!10334 thiss!41921)))))

(assert (=> d!1540490 (= (contains!18278 (v!48874 (underlying!10334 thiss!41921)) lt!1963030) lt!1963043)))

(declare-fun bs!1160127 () Bool)

(assert (= bs!1160127 d!1540490))

(assert (=> bs!1160127 m!5797126))

(assert (=> bs!1160127 m!5797126))

(declare-fun m!5797158 () Bool)

(assert (=> bs!1160127 m!5797158))

(declare-fun m!5797160 () Bool)

(assert (=> bs!1160127 m!5797160))

(assert (=> bs!1160127 m!5797144))

(assert (=> b!4811387 d!1540490))

(declare-fun d!1540492 () Bool)

(declare-fun hash!5142 (Hashable!7074 K!16174) (_ BitVec 64))

(assert (=> d!1540492 (= (hash!5141 (hashF!13349 thiss!41921) key!1652) (hash!5142 (hashF!13349 thiss!41921) key!1652))))

(declare-fun bs!1160128 () Bool)

(assert (= bs!1160128 d!1540492))

(declare-fun m!5797162 () Bool)

(assert (=> bs!1160128 m!5797162))

(assert (=> b!4811387 d!1540492))

(declare-fun d!1540494 () Bool)

(assert (=> d!1540494 (= (array_inv!5999 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))) (bvsge (size!36557 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4811389 d!1540494))

(declare-fun d!1540496 () Bool)

(assert (=> d!1540496 (= (array_inv!6000 (_values!5381 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))) (bvsge (size!36558 (_values!5381 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4811389 d!1540496))

(declare-fun b!4811420 () Bool)

(declare-fun e!3005792 () Option!13313)

(assert (=> b!4811420 (= e!3005792 None!13312)))

(declare-fun d!1540498 () Bool)

(declare-fun c!820036 () Bool)

(assert (=> d!1540498 (= c!820036 (and ((_ is Cons!54555) (toList!7150 lt!1963034)) (= (_1!32011 (h!60987 (toList!7150 lt!1963034))) lt!1963030)))))

(declare-fun e!3005791 () Option!13313)

(assert (=> d!1540498 (= (getValueByKey!2492 (toList!7150 lt!1963034) lt!1963030) e!3005791)))

(declare-fun b!4811418 () Bool)

(assert (=> b!4811418 (= e!3005791 e!3005792)))

(declare-fun c!820037 () Bool)

(assert (=> b!4811418 (= c!820037 (and ((_ is Cons!54555) (toList!7150 lt!1963034)) (not (= (_1!32011 (h!60987 (toList!7150 lt!1963034))) lt!1963030))))))

(declare-fun b!4811419 () Bool)

(assert (=> b!4811419 (= e!3005792 (getValueByKey!2492 (t!362163 (toList!7150 lt!1963034)) lt!1963030))))

(declare-fun b!4811417 () Bool)

(assert (=> b!4811417 (= e!3005791 (Some!13312 (_2!32011 (h!60987 (toList!7150 lt!1963034)))))))

(assert (= (and d!1540498 c!820036) b!4811417))

(assert (= (and d!1540498 (not c!820036)) b!4811418))

(assert (= (and b!4811418 c!820037) b!4811419))

(assert (= (and b!4811418 (not c!820037)) b!4811420))

(declare-fun m!5797164 () Bool)

(assert (=> b!4811419 m!5797164))

(assert (=> b!4811384 d!1540498))

(declare-fun d!1540500 () Bool)

(assert (=> d!1540500 (containsKey!4156 (toList!7150 lt!1963034) lt!1963030)))

(declare-fun lt!1963046 () Unit!141572)

(declare-fun choose!34861 (List!54679 (_ BitVec 64)) Unit!141572)

(assert (=> d!1540500 (= lt!1963046 (choose!34861 (toList!7150 lt!1963034) lt!1963030))))

(declare-fun e!3005795 () Bool)

(assert (=> d!1540500 e!3005795))

(declare-fun res!2046606 () Bool)

(assert (=> d!1540500 (=> (not res!2046606) (not e!3005795))))

(assert (=> d!1540500 (= res!2046606 (isStrictlySorted!932 (toList!7150 lt!1963034)))))

(assert (=> d!1540500 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!276 (toList!7150 lt!1963034) lt!1963030) lt!1963046)))

(declare-fun b!4811423 () Bool)

(assert (=> b!4811423 (= e!3005795 (isDefined!10451 (getValueByKey!2492 (toList!7150 lt!1963034) lt!1963030)))))

(assert (= (and d!1540500 res!2046606) b!4811423))

(assert (=> d!1540500 m!5797110))

(declare-fun m!5797166 () Bool)

(assert (=> d!1540500 m!5797166))

(assert (=> d!1540500 m!5797112))

(assert (=> b!4811423 m!5797114))

(assert (=> b!4811423 m!5797114))

(declare-fun m!5797168 () Bool)

(assert (=> b!4811423 m!5797168))

(assert (=> b!4811384 d!1540500))

(declare-fun d!1540502 () Bool)

(declare-fun isEmpty!29552 (Option!13313) Bool)

(assert (=> d!1540502 (= (isDefined!10451 lt!1963033) (not (isEmpty!29552 lt!1963033)))))

(declare-fun bs!1160129 () Bool)

(assert (= bs!1160129 d!1540502))

(declare-fun m!5797170 () Bool)

(assert (=> bs!1160129 m!5797170))

(assert (=> b!4811384 d!1540502))

(declare-fun d!1540504 () Bool)

(declare-fun res!2046611 () Bool)

(declare-fun e!3005800 () Bool)

(assert (=> d!1540504 (=> res!2046611 e!3005800)))

(assert (=> d!1540504 (= res!2046611 (and ((_ is Cons!54555) (toList!7150 lt!1963034)) (= (_1!32011 (h!60987 (toList!7150 lt!1963034))) lt!1963030)))))

(assert (=> d!1540504 (= (containsKey!4156 (toList!7150 lt!1963034) lt!1963030) e!3005800)))

(declare-fun b!4811428 () Bool)

(declare-fun e!3005801 () Bool)

(assert (=> b!4811428 (= e!3005800 e!3005801)))

(declare-fun res!2046612 () Bool)

(assert (=> b!4811428 (=> (not res!2046612) (not e!3005801))))

(assert (=> b!4811428 (= res!2046612 (and (or (not ((_ is Cons!54555) (toList!7150 lt!1963034))) (bvsle (_1!32011 (h!60987 (toList!7150 lt!1963034))) lt!1963030)) ((_ is Cons!54555) (toList!7150 lt!1963034)) (bvslt (_1!32011 (h!60987 (toList!7150 lt!1963034))) lt!1963030)))))

(declare-fun b!4811429 () Bool)

(assert (=> b!4811429 (= e!3005801 (containsKey!4156 (t!362163 (toList!7150 lt!1963034)) lt!1963030))))

(assert (= (and d!1540504 (not res!2046611)) b!4811428))

(assert (= (and b!4811428 res!2046612) b!4811429))

(declare-fun m!5797172 () Bool)

(assert (=> b!4811429 m!5797172))

(assert (=> b!4811384 d!1540504))

(declare-fun d!1540506 () Bool)

(declare-fun res!2046617 () Bool)

(declare-fun e!3005806 () Bool)

(assert (=> d!1540506 (=> res!2046617 e!3005806)))

(assert (=> d!1540506 (= res!2046617 (or ((_ is Nil!54555) (toList!7150 lt!1963034)) ((_ is Nil!54555) (t!362163 (toList!7150 lt!1963034)))))))

(assert (=> d!1540506 (= (isStrictlySorted!932 (toList!7150 lt!1963034)) e!3005806)))

(declare-fun b!4811434 () Bool)

(declare-fun e!3005807 () Bool)

(assert (=> b!4811434 (= e!3005806 e!3005807)))

(declare-fun res!2046618 () Bool)

(assert (=> b!4811434 (=> (not res!2046618) (not e!3005807))))

(assert (=> b!4811434 (= res!2046618 (bvslt (_1!32011 (h!60987 (toList!7150 lt!1963034))) (_1!32011 (h!60987 (t!362163 (toList!7150 lt!1963034))))))))

(declare-fun b!4811435 () Bool)

(assert (=> b!4811435 (= e!3005807 (isStrictlySorted!932 (t!362163 (toList!7150 lt!1963034))))))

(assert (= (and d!1540506 (not res!2046617)) b!4811434))

(assert (= (and b!4811434 res!2046618) b!4811435))

(declare-fun m!5797174 () Bool)

(assert (=> b!4811435 m!5797174))

(assert (=> b!4811384 d!1540506))

(declare-fun d!1540508 () Bool)

(assert (=> d!1540508 (isDefined!10451 (getValueByKey!2492 (toList!7150 lt!1963034) lt!1963030))))

(declare-fun lt!1963049 () Unit!141572)

(declare-fun choose!34862 (List!54679 (_ BitVec 64)) Unit!141572)

(assert (=> d!1540508 (= lt!1963049 (choose!34862 (toList!7150 lt!1963034) lt!1963030))))

(declare-fun e!3005810 () Bool)

(assert (=> d!1540508 e!3005810))

(declare-fun res!2046621 () Bool)

(assert (=> d!1540508 (=> (not res!2046621) (not e!3005810))))

(assert (=> d!1540508 (= res!2046621 (isStrictlySorted!932 (toList!7150 lt!1963034)))))

(assert (=> d!1540508 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2279 (toList!7150 lt!1963034) lt!1963030) lt!1963049)))

(declare-fun b!4811438 () Bool)

(assert (=> b!4811438 (= e!3005810 (containsKey!4156 (toList!7150 lt!1963034) lt!1963030))))

(assert (= (and d!1540508 res!2046621) b!4811438))

(assert (=> d!1540508 m!5797114))

(assert (=> d!1540508 m!5797114))

(assert (=> d!1540508 m!5797168))

(declare-fun m!5797176 () Bool)

(assert (=> d!1540508 m!5797176))

(assert (=> d!1540508 m!5797112))

(assert (=> b!4811438 m!5797110))

(assert (=> b!4811384 d!1540508))

(declare-fun tp!1360884 () Bool)

(declare-fun e!3005813 () Bool)

(declare-fun tp_is_empty!34007 () Bool)

(declare-fun b!4811443 () Bool)

(assert (=> b!4811443 (= e!3005813 (and tp_is_empty!34005 tp_is_empty!34007 tp!1360884))))

(assert (=> b!4811382 (= tp!1360878 e!3005813)))

(assert (= (and b!4811382 ((_ is Cons!54554) mapDefault!22366)) b!4811443))

(declare-fun mapNonEmpty!22369 () Bool)

(declare-fun mapRes!22369 () Bool)

(declare-fun tp!1360893 () Bool)

(declare-fun e!3005819 () Bool)

(assert (=> mapNonEmpty!22369 (= mapRes!22369 (and tp!1360893 e!3005819))))

(declare-fun mapRest!22369 () (Array (_ BitVec 32) List!54678))

(declare-fun mapKey!22369 () (_ BitVec 32))

(declare-fun mapValue!22369 () List!54678)

(assert (=> mapNonEmpty!22369 (= mapRest!22366 (store mapRest!22369 mapKey!22369 mapValue!22369))))

(declare-fun tp!1360891 () Bool)

(declare-fun b!4811450 () Bool)

(assert (=> b!4811450 (= e!3005819 (and tp_is_empty!34005 tp_is_empty!34007 tp!1360891))))

(declare-fun condMapEmpty!22369 () Bool)

(declare-fun mapDefault!22369 () List!54678)

(assert (=> mapNonEmpty!22366 (= condMapEmpty!22369 (= mapRest!22366 ((as const (Array (_ BitVec 32) List!54678)) mapDefault!22369)))))

(declare-fun e!3005818 () Bool)

(assert (=> mapNonEmpty!22366 (= tp!1360881 (and e!3005818 mapRes!22369))))

(declare-fun mapIsEmpty!22369 () Bool)

(assert (=> mapIsEmpty!22369 mapRes!22369))

(declare-fun b!4811451 () Bool)

(declare-fun tp!1360892 () Bool)

(assert (=> b!4811451 (= e!3005818 (and tp_is_empty!34005 tp_is_empty!34007 tp!1360892))))

(assert (= (and mapNonEmpty!22366 condMapEmpty!22369) mapIsEmpty!22369))

(assert (= (and mapNonEmpty!22366 (not condMapEmpty!22369)) mapNonEmpty!22369))

(assert (= (and mapNonEmpty!22369 ((_ is Cons!54554) mapValue!22369)) b!4811450))

(assert (= (and mapNonEmpty!22366 ((_ is Cons!54554) mapDefault!22369)) b!4811451))

(declare-fun m!5797178 () Bool)

(assert (=> mapNonEmpty!22369 m!5797178))

(declare-fun b!4811452 () Bool)

(declare-fun tp!1360894 () Bool)

(declare-fun e!3005820 () Bool)

(assert (=> b!4811452 (= e!3005820 (and tp_is_empty!34005 tp_is_empty!34007 tp!1360894))))

(assert (=> mapNonEmpty!22366 (= tp!1360876 e!3005820)))

(assert (= (and mapNonEmpty!22366 ((_ is Cons!54554) mapValue!22366)) b!4811452))

(declare-fun tp!1360895 () Bool)

(declare-fun b!4811453 () Bool)

(declare-fun e!3005821 () Bool)

(assert (=> b!4811453 (= e!3005821 (and tp_is_empty!34005 tp_is_empty!34007 tp!1360895))))

(assert (=> b!4811389 (= tp!1360877 e!3005821)))

(assert (= (and b!4811389 ((_ is Cons!54554) (zeroValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))))) b!4811453))

(declare-fun b!4811454 () Bool)

(declare-fun e!3005822 () Bool)

(declare-fun tp!1360896 () Bool)

(assert (=> b!4811454 (= e!3005822 (and tp_is_empty!34005 tp_is_empty!34007 tp!1360896))))

(assert (=> b!4811389 (= tp!1360879 e!3005822)))

(assert (= (and b!4811389 ((_ is Cons!54554) (minValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))))) b!4811454))

(declare-fun b_lambda!188247 () Bool)

(assert (= b_lambda!188245 (or (and b!4811389 b_free!130195) b_lambda!188247)))

(check-sat (not b_lambda!188247) (not d!1540508) (not b!4811435) (not b_next!130987) b_and!341991 (not b!4811451) (not b!4811408) (not b!4811438) (not d!1540484) (not b!4811407) (not d!1540486) (not b_next!130985) (not tb!257537) (not d!1540492) (not b!4811401) (not d!1540482) tp_is_empty!34005 (not b!4811452) (not b!4811429) (not d!1540502) (not b!4811450) (not b!4811453) (not b!4811396) (not b!4811454) b_and!341993 tp_is_empty!34007 (not d!1540500) (not d!1540488) (not b!4811419) (not d!1540490) (not b!4811423) (not mapNonEmpty!22369) (not b!4811443))
(check-sat b_and!341993 b_and!341991 (not b_next!130985) (not b_next!130987))
(get-model)

(declare-fun b!4811458 () Bool)

(declare-fun e!3005824 () Option!13313)

(assert (=> b!4811458 (= e!3005824 None!13312)))

(declare-fun d!1540510 () Bool)

(declare-fun c!820038 () Bool)

(assert (=> d!1540510 (= c!820038 (and ((_ is Cons!54555) (t!362163 (toList!7150 lt!1963034))) (= (_1!32011 (h!60987 (t!362163 (toList!7150 lt!1963034)))) lt!1963030)))))

(declare-fun e!3005823 () Option!13313)

(assert (=> d!1540510 (= (getValueByKey!2492 (t!362163 (toList!7150 lt!1963034)) lt!1963030) e!3005823)))

(declare-fun b!4811456 () Bool)

(assert (=> b!4811456 (= e!3005823 e!3005824)))

(declare-fun c!820039 () Bool)

(assert (=> b!4811456 (= c!820039 (and ((_ is Cons!54555) (t!362163 (toList!7150 lt!1963034))) (not (= (_1!32011 (h!60987 (t!362163 (toList!7150 lt!1963034)))) lt!1963030))))))

(declare-fun b!4811457 () Bool)

(assert (=> b!4811457 (= e!3005824 (getValueByKey!2492 (t!362163 (t!362163 (toList!7150 lt!1963034))) lt!1963030))))

(declare-fun b!4811455 () Bool)

(assert (=> b!4811455 (= e!3005823 (Some!13312 (_2!32011 (h!60987 (t!362163 (toList!7150 lt!1963034))))))))

(assert (= (and d!1540510 c!820038) b!4811455))

(assert (= (and d!1540510 (not c!820038)) b!4811456))

(assert (= (and b!4811456 c!820039) b!4811457))

(assert (= (and b!4811456 (not c!820039)) b!4811458))

(declare-fun m!5797180 () Bool)

(assert (=> b!4811457 m!5797180))

(assert (=> b!4811419 d!1540510))

(declare-fun d!1540512 () Bool)

(assert (=> d!1540512 (= (isDefined!10451 (getValueByKey!2492 (toList!7150 lt!1963034) lt!1963030)) (not (isEmpty!29552 (getValueByKey!2492 (toList!7150 lt!1963034) lt!1963030))))))

(declare-fun bs!1160130 () Bool)

(assert (= bs!1160130 d!1540512))

(assert (=> bs!1160130 m!5797114))

(declare-fun m!5797182 () Bool)

(assert (=> bs!1160130 m!5797182))

(assert (=> d!1540508 d!1540512))

(assert (=> d!1540508 d!1540498))

(declare-fun d!1540514 () Bool)

(assert (=> d!1540514 (isDefined!10451 (getValueByKey!2492 (toList!7150 lt!1963034) lt!1963030))))

(assert (=> d!1540514 true))

(declare-fun _$13!1639 () Unit!141572)

(assert (=> d!1540514 (= (choose!34862 (toList!7150 lt!1963034) lt!1963030) _$13!1639)))

(declare-fun bs!1160131 () Bool)

(assert (= bs!1160131 d!1540514))

(assert (=> bs!1160131 m!5797114))

(assert (=> bs!1160131 m!5797114))

(assert (=> bs!1160131 m!5797168))

(assert (=> d!1540508 d!1540514))

(assert (=> d!1540508 d!1540506))

(assert (=> b!4811423 d!1540512))

(assert (=> b!4811423 d!1540498))

(declare-fun d!1540516 () Bool)

(declare-fun lt!1963050 () Bool)

(assert (=> d!1540516 (= lt!1963050 (select (content!9778 (t!362163 (toList!7150 lt!1963034))) (tuple2!57435 lt!1963030 lt!1963032)))))

(declare-fun e!3005826 () Bool)

(assert (=> d!1540516 (= lt!1963050 e!3005826)))

(declare-fun res!2046623 () Bool)

(assert (=> d!1540516 (=> (not res!2046623) (not e!3005826))))

(assert (=> d!1540516 (= res!2046623 ((_ is Cons!54555) (t!362163 (toList!7150 lt!1963034))))))

(assert (=> d!1540516 (= (contains!18279 (t!362163 (toList!7150 lt!1963034)) (tuple2!57435 lt!1963030 lt!1963032)) lt!1963050)))

(declare-fun b!4811459 () Bool)

(declare-fun e!3005825 () Bool)

(assert (=> b!4811459 (= e!3005826 e!3005825)))

(declare-fun res!2046622 () Bool)

(assert (=> b!4811459 (=> res!2046622 e!3005825)))

(assert (=> b!4811459 (= res!2046622 (= (h!60987 (t!362163 (toList!7150 lt!1963034))) (tuple2!57435 lt!1963030 lt!1963032)))))

(declare-fun b!4811460 () Bool)

(assert (=> b!4811460 (= e!3005825 (contains!18279 (t!362163 (t!362163 (toList!7150 lt!1963034))) (tuple2!57435 lt!1963030 lt!1963032)))))

(assert (= (and d!1540516 res!2046623) b!4811459))

(assert (= (and b!4811459 (not res!2046622)) b!4811460))

(declare-fun m!5797184 () Bool)

(assert (=> d!1540516 m!5797184))

(declare-fun m!5797186 () Bool)

(assert (=> d!1540516 m!5797186))

(declare-fun m!5797188 () Bool)

(assert (=> b!4811460 m!5797188))

(assert (=> b!4811396 d!1540516))

(declare-fun d!1540518 () Bool)

(declare-fun valid!4093 (LongMapFixedSize!10126) Bool)

(assert (=> d!1540518 (= (valid!4092 (v!48874 (underlying!10334 thiss!41921))) (valid!4093 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))))))

(declare-fun bs!1160132 () Bool)

(assert (= bs!1160132 d!1540518))

(declare-fun m!5797190 () Bool)

(assert (=> bs!1160132 m!5797190))

(assert (=> d!1540488 d!1540518))

(declare-fun d!1540520 () Bool)

(declare-fun res!2046624 () Bool)

(declare-fun e!3005827 () Bool)

(assert (=> d!1540520 (=> res!2046624 e!3005827)))

(assert (=> d!1540520 (= res!2046624 (and ((_ is Cons!54555) (t!362163 (toList!7150 lt!1963034))) (= (_1!32011 (h!60987 (t!362163 (toList!7150 lt!1963034)))) lt!1963030)))))

(assert (=> d!1540520 (= (containsKey!4156 (t!362163 (toList!7150 lt!1963034)) lt!1963030) e!3005827)))

(declare-fun b!4811461 () Bool)

(declare-fun e!3005828 () Bool)

(assert (=> b!4811461 (= e!3005827 e!3005828)))

(declare-fun res!2046625 () Bool)

(assert (=> b!4811461 (=> (not res!2046625) (not e!3005828))))

(assert (=> b!4811461 (= res!2046625 (and (or (not ((_ is Cons!54555) (t!362163 (toList!7150 lt!1963034)))) (bvsle (_1!32011 (h!60987 (t!362163 (toList!7150 lt!1963034)))) lt!1963030)) ((_ is Cons!54555) (t!362163 (toList!7150 lt!1963034))) (bvslt (_1!32011 (h!60987 (t!362163 (toList!7150 lt!1963034)))) lt!1963030)))))

(declare-fun b!4811462 () Bool)

(assert (=> b!4811462 (= e!3005828 (containsKey!4156 (t!362163 (t!362163 (toList!7150 lt!1963034))) lt!1963030))))

(assert (= (and d!1540520 (not res!2046624)) b!4811461))

(assert (= (and b!4811461 res!2046625) b!4811462))

(declare-fun m!5797192 () Bool)

(assert (=> b!4811462 m!5797192))

(assert (=> b!4811429 d!1540520))

(declare-fun d!1540522 () Bool)

(declare-fun getCurrentListMap!33 (array!18630 array!18632 (_ BitVec 32) (_ BitVec 32) List!54678 List!54678 (_ BitVec 32) Int) ListLongMap!5617)

(assert (=> d!1540522 (= (map!12432 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (getCurrentListMap!33 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (_values!5381 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (mask!15075 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (extraKeys!5343 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (zeroValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (minValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5485 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))))

(declare-fun bs!1160133 () Bool)

(assert (= bs!1160133 d!1540522))

(declare-fun m!5797194 () Bool)

(assert (=> bs!1160133 m!5797194))

(assert (=> d!1540486 d!1540522))

(declare-fun d!1540524 () Bool)

(assert (=> d!1540524 (= (isEmpty!29552 lt!1963033) (not ((_ is Some!13312) lt!1963033)))))

(assert (=> d!1540502 d!1540524))

(declare-fun d!1540526 () Bool)

(declare-fun c!820042 () Bool)

(assert (=> d!1540526 (= c!820042 ((_ is Nil!54555) (toList!7150 lt!1963034)))))

(declare-fun e!3005831 () (InoxSet tuple2!57434))

(assert (=> d!1540526 (= (content!9778 (toList!7150 lt!1963034)) e!3005831)))

(declare-fun b!4811467 () Bool)

(assert (=> b!4811467 (= e!3005831 ((as const (Array tuple2!57434 Bool)) false))))

(declare-fun b!4811468 () Bool)

(assert (=> b!4811468 (= e!3005831 ((_ map or) (store ((as const (Array tuple2!57434 Bool)) false) (h!60987 (toList!7150 lt!1963034)) true) (content!9778 (t!362163 (toList!7150 lt!1963034)))))))

(assert (= (and d!1540526 c!820042) b!4811467))

(assert (= (and d!1540526 (not c!820042)) b!4811468))

(declare-fun m!5797196 () Bool)

(assert (=> b!4811468 m!5797196))

(assert (=> b!4811468 m!5797184))

(assert (=> d!1540482 d!1540526))

(assert (=> b!4811438 d!1540504))

(declare-fun d!1540528 () Bool)

(declare-fun e!3005836 () Bool)

(assert (=> d!1540528 e!3005836))

(declare-fun res!2046628 () Bool)

(assert (=> d!1540528 (=> res!2046628 e!3005836)))

(declare-fun lt!1963062 () Bool)

(assert (=> d!1540528 (= res!2046628 (not lt!1963062))))

(declare-fun lt!1963061 () Bool)

(assert (=> d!1540528 (= lt!1963062 lt!1963061)))

(declare-fun lt!1963059 () Unit!141572)

(declare-fun e!3005837 () Unit!141572)

(assert (=> d!1540528 (= lt!1963059 e!3005837)))

(declare-fun c!820045 () Bool)

(assert (=> d!1540528 (= c!820045 lt!1963061)))

(assert (=> d!1540528 (= lt!1963061 (containsKey!4156 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921)))) lt!1963030))))

(assert (=> d!1540528 (= (contains!18280 (map!12431 (v!48874 (underlying!10334 thiss!41921))) lt!1963030) lt!1963062)))

(declare-fun b!4811475 () Bool)

(declare-fun lt!1963060 () Unit!141572)

(assert (=> b!4811475 (= e!3005837 lt!1963060)))

(assert (=> b!4811475 (= lt!1963060 (lemmaContainsKeyImpliesGetValueByKeyDefined!2279 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921)))) lt!1963030))))

(assert (=> b!4811475 (isDefined!10451 (getValueByKey!2492 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921)))) lt!1963030))))

(declare-fun b!4811476 () Bool)

(declare-fun Unit!141574 () Unit!141572)

(assert (=> b!4811476 (= e!3005837 Unit!141574)))

(declare-fun b!4811477 () Bool)

(assert (=> b!4811477 (= e!3005836 (isDefined!10451 (getValueByKey!2492 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921)))) lt!1963030)))))

(assert (= (and d!1540528 c!820045) b!4811475))

(assert (= (and d!1540528 (not c!820045)) b!4811476))

(assert (= (and d!1540528 (not res!2046628)) b!4811477))

(declare-fun m!5797198 () Bool)

(assert (=> d!1540528 m!5797198))

(declare-fun m!5797200 () Bool)

(assert (=> b!4811475 m!5797200))

(assert (=> b!4811475 m!5797146))

(assert (=> b!4811475 m!5797146))

(declare-fun m!5797202 () Bool)

(assert (=> b!4811475 m!5797202))

(assert (=> b!4811477 m!5797146))

(assert (=> b!4811477 m!5797146))

(assert (=> b!4811477 m!5797202))

(assert (=> d!1540490 d!1540528))

(assert (=> d!1540490 d!1540486))

(declare-fun bm!335825 () Bool)

(declare-fun call!335831 () Bool)

(declare-fun arrayContainsKey!0 (array!18630 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!335825 (= call!335831 (arrayContainsKey!0 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) lt!1963030 #b00000000000000000000000000000000))))

(declare-fun b!4811498 () Bool)

(declare-fun e!3005848 () Unit!141572)

(declare-fun Unit!141575 () Unit!141572)

(assert (=> b!4811498 (= e!3005848 Unit!141575)))

(declare-fun b!4811499 () Bool)

(declare-fun e!3005851 () Bool)

(declare-fun e!3005849 () Bool)

(assert (=> b!4811499 (= e!3005851 e!3005849)))

(declare-fun c!820060 () Bool)

(assert (=> b!4811499 (= c!820060 (= lt!1963030 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!335832 () ListLongMap!5617)

(declare-fun bm!335826 () Bool)

(declare-fun call!335830 () Bool)

(declare-datatypes ((SeekEntryResult!30 0))(
  ( (Found!30 (index!1502 (_ BitVec 32))) (Undefined!30) (MissingZero!30 (index!1503 (_ BitVec 32))) (MissingVacant!30 (index!1504 (_ BitVec 32))) (Intermediate!30 (undefined!111 Bool) (index!1505 (_ BitVec 32)) (x!826924 (_ BitVec 32))) )
))
(declare-fun lt!1963095 () SeekEntryResult!30)

(declare-fun c!820059 () Bool)

(assert (=> bm!335826 (= call!335830 (contains!18280 call!335832 (ite c!820059 (select (arr!8311 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))) (index!1502 lt!1963095)) lt!1963030)))))

(declare-fun b!4811500 () Bool)

(declare-fun e!3005850 () Bool)

(assert (=> b!4811500 (= e!3005850 false)))

(declare-fun c!820057 () Bool)

(assert (=> b!4811500 (= c!820057 call!335830)))

(declare-fun lt!1963102 () Unit!141572)

(assert (=> b!4811500 (= lt!1963102 e!3005848)))

(declare-fun b!4811501 () Bool)

(declare-fun e!3005852 () Bool)

(assert (=> b!4811501 (= e!3005852 call!335831)))

(declare-fun b!4811502 () Bool)

(assert (=> b!4811502 (= e!3005849 (not (= (bvand (extraKeys!5343 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!1540530 () Bool)

(declare-fun lt!1963097 () Bool)

(assert (=> d!1540530 (= lt!1963097 (contains!18280 (map!12432 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) lt!1963030))))

(assert (=> d!1540530 (= lt!1963097 e!3005851)))

(declare-fun c!820058 () Bool)

(assert (=> d!1540530 (= c!820058 (= lt!1963030 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!1540530 (valid!4093 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))

(assert (=> d!1540530 (= (contains!18281 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))) lt!1963030) lt!1963097)))

(declare-fun b!4811503 () Bool)

(assert (=> b!4811503 (= e!3005851 (not (= (bvand (extraKeys!5343 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4811504 () Bool)

(assert (=> b!4811504 false))

(declare-fun lt!1963099 () Unit!141572)

(declare-fun lt!1963093 () Unit!141572)

(assert (=> b!4811504 (= lt!1963099 lt!1963093)))

(declare-fun lt!1963098 () SeekEntryResult!30)

(declare-fun lt!1963101 () (_ BitVec 32))

(assert (=> b!4811504 (and ((_ is Found!30) lt!1963098) (= (index!1502 lt!1963098) lt!1963101))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!18630 (_ BitVec 32)) SeekEntryResult!30)

(assert (=> b!4811504 (= lt!1963098 (seekEntry!0 lt!1963030 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (mask!15075 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!18630 (_ BitVec 32)) Unit!141572)

(assert (=> b!4811504 (= lt!1963093 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 lt!1963030 lt!1963101 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (mask!15075 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))))

(declare-fun lt!1963103 () Unit!141572)

(declare-fun lt!1963105 () Unit!141572)

(assert (=> b!4811504 (= lt!1963103 lt!1963105)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18630 (_ BitVec 32)) Bool)

(assert (=> b!4811504 (arrayForallSeekEntryOrOpenFound!0 lt!1963101 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (mask!15075 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!18630 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!141572)

(assert (=> b!4811504 (= lt!1963105 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (mask!15075 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) #b00000000000000000000000000000000 lt!1963101))))

(declare-fun arrayScanForKey!0 (array!18630 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!4811504 (= lt!1963101 (arrayScanForKey!0 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) lt!1963030 #b00000000000000000000000000000000))))

(declare-fun lt!1963100 () Unit!141572)

(declare-fun lt!1963104 () Unit!141572)

(assert (=> b!4811504 (= lt!1963100 lt!1963104)))

(assert (=> b!4811504 e!3005852))

(declare-fun c!820056 () Bool)

(assert (=> b!4811504 (= c!820056 (and (not (= lt!1963030 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1963030 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!23 (array!18630 array!18632 (_ BitVec 32) (_ BitVec 32) List!54678 List!54678 (_ BitVec 64) Int) Unit!141572)

(assert (=> b!4811504 (= lt!1963104 (lemmaKeyInListMapIsInArray!23 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (_values!5381 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (mask!15075 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (extraKeys!5343 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (zeroValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (minValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) lt!1963030 (defaultEntry!5485 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))))

(declare-fun Unit!141576 () Unit!141572)

(assert (=> b!4811504 (= e!3005848 Unit!141576)))

(declare-fun b!4811505 () Bool)

(assert (=> b!4811505 (= e!3005852 (ite (= lt!1963030 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5343 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5343 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4811506 () Bool)

(assert (=> b!4811506 (= e!3005850 true)))

(declare-fun lt!1963096 () Unit!141572)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18630 (_ BitVec 64) (_ BitVec 32)) Unit!141572)

(assert (=> b!4811506 (= lt!1963096 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) lt!1963030 (index!1502 lt!1963095)))))

(assert (=> b!4811506 call!335831))

(declare-fun lt!1963094 () Unit!141572)

(assert (=> b!4811506 (= lt!1963094 lt!1963096)))

(declare-fun lt!1963107 () Unit!141572)

(declare-fun lemmaValidKeyInArrayIsInListMap!23 (array!18630 array!18632 (_ BitVec 32) (_ BitVec 32) List!54678 List!54678 (_ BitVec 32) Int) Unit!141572)

(assert (=> b!4811506 (= lt!1963107 (lemmaValidKeyInArrayIsInListMap!23 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (_values!5381 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (mask!15075 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (extraKeys!5343 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (zeroValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (minValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (index!1502 lt!1963095) (defaultEntry!5485 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))))

(assert (=> b!4811506 call!335830))

(declare-fun lt!1963106 () Unit!141572)

(assert (=> b!4811506 (= lt!1963106 lt!1963107)))

(declare-fun bm!335827 () Bool)

(assert (=> bm!335827 (= call!335832 (getCurrentListMap!33 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (_values!5381 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (mask!15075 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (extraKeys!5343 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (zeroValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (minValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5485 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))))

(declare-fun b!4811507 () Bool)

(assert (=> b!4811507 (= c!820059 ((_ is Found!30) lt!1963095))))

(assert (=> b!4811507 (= lt!1963095 (seekEntry!0 lt!1963030 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (mask!15075 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))))

(assert (=> b!4811507 (= e!3005849 e!3005850)))

(assert (= (and d!1540530 c!820058) b!4811503))

(assert (= (and d!1540530 (not c!820058)) b!4811499))

(assert (= (and b!4811499 c!820060) b!4811502))

(assert (= (and b!4811499 (not c!820060)) b!4811507))

(assert (= (and b!4811507 c!820059) b!4811506))

(assert (= (and b!4811507 (not c!820059)) b!4811500))

(assert (= (and b!4811500 c!820057) b!4811504))

(assert (= (and b!4811500 (not c!820057)) b!4811498))

(assert (= (and b!4811504 c!820056) b!4811501))

(assert (= (and b!4811504 (not c!820056)) b!4811505))

(assert (= (or b!4811506 b!4811501) bm!335825))

(assert (= (or b!4811506 b!4811500) bm!335827))

(assert (= (or b!4811506 b!4811500) bm!335826))

(assert (=> d!1540530 m!5797152))

(assert (=> d!1540530 m!5797152))

(declare-fun m!5797204 () Bool)

(assert (=> d!1540530 m!5797204))

(assert (=> d!1540530 m!5797190))

(assert (=> bm!335827 m!5797194))

(declare-fun m!5797206 () Bool)

(assert (=> bm!335825 m!5797206))

(declare-fun m!5797208 () Bool)

(assert (=> b!4811507 m!5797208))

(declare-fun m!5797210 () Bool)

(assert (=> bm!335826 m!5797210))

(declare-fun m!5797212 () Bool)

(assert (=> bm!335826 m!5797212))

(declare-fun m!5797214 () Bool)

(assert (=> b!4811506 m!5797214))

(declare-fun m!5797216 () Bool)

(assert (=> b!4811506 m!5797216))

(declare-fun m!5797218 () Bool)

(assert (=> b!4811504 m!5797218))

(assert (=> b!4811504 m!5797208))

(declare-fun m!5797220 () Bool)

(assert (=> b!4811504 m!5797220))

(declare-fun m!5797222 () Bool)

(assert (=> b!4811504 m!5797222))

(declare-fun m!5797224 () Bool)

(assert (=> b!4811504 m!5797224))

(declare-fun m!5797226 () Bool)

(assert (=> b!4811504 m!5797226))

(assert (=> d!1540490 d!1540530))

(assert (=> d!1540490 d!1540518))

(declare-fun d!1540532 () Bool)

(assert (=> d!1540532 (= (get!18665 (getValueByKey!2492 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921)))) lt!1963030)) (v!48872 (getValueByKey!2492 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921)))) lt!1963030)))))

(assert (=> b!4811401 d!1540532))

(declare-fun b!4811511 () Bool)

(declare-fun e!3005854 () Option!13313)

(assert (=> b!4811511 (= e!3005854 None!13312)))

(declare-fun d!1540534 () Bool)

(declare-fun c!820061 () Bool)

(assert (=> d!1540534 (= c!820061 (and ((_ is Cons!54555) (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921))))) (= (_1!32011 (h!60987 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921)))))) lt!1963030)))))

(declare-fun e!3005853 () Option!13313)

(assert (=> d!1540534 (= (getValueByKey!2492 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921)))) lt!1963030) e!3005853)))

(declare-fun b!4811509 () Bool)

(assert (=> b!4811509 (= e!3005853 e!3005854)))

(declare-fun c!820062 () Bool)

(assert (=> b!4811509 (= c!820062 (and ((_ is Cons!54555) (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921))))) (not (= (_1!32011 (h!60987 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921)))))) lt!1963030))))))

(declare-fun b!4811510 () Bool)

(assert (=> b!4811510 (= e!3005854 (getValueByKey!2492 (t!362163 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921))))) lt!1963030))))

(declare-fun b!4811508 () Bool)

(assert (=> b!4811508 (= e!3005853 (Some!13312 (_2!32011 (h!60987 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921))))))))))

(assert (= (and d!1540534 c!820061) b!4811508))

(assert (= (and d!1540534 (not c!820061)) b!4811509))

(assert (= (and b!4811509 c!820062) b!4811510))

(assert (= (and b!4811509 (not c!820062)) b!4811511))

(declare-fun m!5797228 () Bool)

(assert (=> b!4811510 m!5797228))

(assert (=> b!4811401 d!1540534))

(assert (=> b!4811401 d!1540486))

(assert (=> d!1540500 d!1540504))

(declare-fun d!1540536 () Bool)

(assert (=> d!1540536 (containsKey!4156 (toList!7150 lt!1963034) lt!1963030)))

(assert (=> d!1540536 true))

(declare-fun _$12!1238 () Unit!141572)

(assert (=> d!1540536 (= (choose!34861 (toList!7150 lt!1963034) lt!1963030) _$12!1238)))

(declare-fun bs!1160134 () Bool)

(assert (= bs!1160134 d!1540536))

(assert (=> bs!1160134 m!5797110))

(assert (=> d!1540500 d!1540536))

(assert (=> d!1540500 d!1540506))

(declare-fun d!1540538 () Bool)

(declare-fun res!2046633 () Bool)

(declare-fun e!3005859 () Bool)

(assert (=> d!1540538 (=> res!2046633 e!3005859)))

(assert (=> d!1540538 (= res!2046633 ((_ is Nil!54555) (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921))))))))

(assert (=> d!1540538 (= (forall!12396 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921)))) lambda!233772) e!3005859)))

(declare-fun b!4811516 () Bool)

(declare-fun e!3005860 () Bool)

(assert (=> b!4811516 (= e!3005859 e!3005860)))

(declare-fun res!2046634 () Bool)

(assert (=> b!4811516 (=> (not res!2046634) (not e!3005860))))

(declare-fun dynLambda!22140 (Int tuple2!57434) Bool)

(assert (=> b!4811516 (= res!2046634 (dynLambda!22140 lambda!233772 (h!60987 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921)))))))))

(declare-fun b!4811517 () Bool)

(assert (=> b!4811517 (= e!3005860 (forall!12396 (t!362163 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921))))) lambda!233772))))

(assert (= (and d!1540538 (not res!2046633)) b!4811516))

(assert (= (and b!4811516 res!2046634) b!4811517))

(declare-fun b_lambda!188249 () Bool)

(assert (=> (not b_lambda!188249) (not b!4811516)))

(declare-fun m!5797230 () Bool)

(assert (=> b!4811516 m!5797230))

(declare-fun m!5797232 () Bool)

(assert (=> b!4811517 m!5797232))

(assert (=> b!4811407 d!1540538))

(assert (=> b!4811407 d!1540486))

(declare-fun bs!1160135 () Bool)

(declare-fun d!1540540 () Bool)

(assert (= bs!1160135 (and d!1540540 b!4811407)))

(declare-fun lambda!233775 () Int)

(assert (=> bs!1160135 (not (= lambda!233775 lambda!233772))))

(assert (=> d!1540540 true))

(assert (=> d!1540540 (= (allKeysSameHashInMap!2411 (map!12431 (v!48874 (underlying!10334 thiss!41921))) (hashF!13349 thiss!41921)) (forall!12396 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921)))) lambda!233775))))

(declare-fun bs!1160136 () Bool)

(assert (= bs!1160136 d!1540540))

(declare-fun m!5797234 () Bool)

(assert (=> bs!1160136 m!5797234))

(assert (=> b!4811408 d!1540540))

(assert (=> b!4811408 d!1540486))

(declare-fun d!1540542 () Bool)

(declare-fun choose!34863 (Hashable!7074 K!16174) (_ BitVec 64))

(assert (=> d!1540542 (= (hash!5142 (hashF!13349 thiss!41921) key!1652) (choose!34863 (hashF!13349 thiss!41921) key!1652))))

(declare-fun bs!1160137 () Bool)

(assert (= bs!1160137 d!1540542))

(declare-fun m!5797236 () Bool)

(assert (=> bs!1160137 m!5797236))

(assert (=> d!1540492 d!1540542))

(assert (=> d!1540484 d!1540490))

(declare-fun b!4811556 () Bool)

(declare-fun e!3005893 () List!54678)

(declare-fun e!3005886 () List!54678)

(assert (=> b!4811556 (= e!3005893 e!3005886)))

(declare-fun lt!1963136 () SeekEntryResult!30)

(assert (=> b!4811556 (= lt!1963136 (seekEntry!0 lt!1963030 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (mask!15075 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))))

(declare-fun lt!1963132 () Unit!141572)

(declare-fun lemmaSeekEntryGivesInRangeIndex!18 (array!18630 array!18632 (_ BitVec 32) (_ BitVec 32) List!54678 List!54678 (_ BitVec 64)) Unit!141572)

(assert (=> b!4811556 (= lt!1963132 (lemmaSeekEntryGivesInRangeIndex!18 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (_values!5381 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (mask!15075 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (extraKeys!5343 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (zeroValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (minValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) lt!1963030))))

(declare-fun lt!1963139 () SeekEntryResult!30)

(assert (=> b!4811556 (= lt!1963139 (seekEntry!0 lt!1963030 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (mask!15075 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))))

(declare-fun res!2046644 () Bool)

(assert (=> b!4811556 (= res!2046644 (not ((_ is Found!30) lt!1963139)))))

(declare-fun e!3005885 () Bool)

(assert (=> b!4811556 (=> res!2046644 e!3005885)))

(assert (=> b!4811556 e!3005885))

(declare-fun lt!1963130 () Unit!141572)

(assert (=> b!4811556 (= lt!1963130 lt!1963132)))

(declare-fun c!820078 () Bool)

(assert (=> b!4811556 (= c!820078 ((_ is Found!30) lt!1963136))))

(declare-fun lt!1963138 () List!54678)

(declare-fun b!4811557 () Bool)

(declare-fun e!3005883 () Bool)

(assert (=> b!4811557 (= e!3005883 (= lt!1963138 (dynLambda!22139 (defaultEntry!5485 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) lt!1963030)))))

(declare-fun call!335841 () List!54678)

(declare-fun call!335843 () ListLongMap!5617)

(declare-fun bm!335836 () Bool)

(declare-fun call!335842 () ListLongMap!5617)

(declare-fun c!820082 () Bool)

(declare-fun apply!13166 (ListLongMap!5617 (_ BitVec 64)) List!54678)

(assert (=> bm!335836 (= call!335841 (apply!13166 (ite c!820082 call!335842 call!335843) lt!1963030))))

(declare-fun b!4811558 () Bool)

(declare-fun c!820077 () Bool)

(assert (=> b!4811558 (= c!820077 (and (= lt!1963030 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5343 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!3005887 () List!54678)

(declare-fun e!3005892 () List!54678)

(assert (=> b!4811558 (= e!3005887 e!3005892)))

(declare-fun b!4811559 () Bool)

(declare-fun e!3005889 () Bool)

(declare-fun call!335844 () List!54678)

(assert (=> b!4811559 (= e!3005889 (= call!335844 (minValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))))

(declare-fun e!3005890 () Bool)

(declare-fun b!4811560 () Bool)

(assert (=> b!4811560 (= e!3005890 (= call!335844 (select (arr!8312 (_values!5381 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))) (index!1502 lt!1963136))))))

(declare-fun b!4811561 () Bool)

(declare-fun res!2046643 () Bool)

(assert (=> b!4811561 (=> (not res!2046643) (not e!3005890))))

(assert (=> b!4811561 (= res!2046643 (arrayContainsKey!0 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) lt!1963030 #b00000000000000000000000000000000))))

(declare-fun e!3005891 () Bool)

(assert (=> b!4811561 (= e!3005891 e!3005890)))

(declare-fun bm!335837 () Bool)

(assert (=> bm!335837 (= call!335842 (getCurrentListMap!33 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (_values!5381 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (mask!15075 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (extraKeys!5343 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (zeroValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (minValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5485 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))))

(declare-fun b!4811562 () Bool)

(assert (=> b!4811562 (= e!3005887 (zeroValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))))))

(declare-fun b!4811563 () Bool)

(assert (=> b!4811563 (= e!3005883 (= lt!1963138 (get!18665 (getValueByKey!2492 (toList!7150 (map!12432 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))) lt!1963030))))))

(declare-fun b!4811564 () Bool)

(assert (=> b!4811564 (= e!3005886 (dynLambda!22139 (defaultEntry!5485 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) lt!1963030))))

(declare-fun bm!335838 () Bool)

(assert (=> bm!335838 (= call!335844 call!335841)))

(declare-fun b!4811565 () Bool)

(declare-fun e!3005884 () Bool)

(declare-fun e!3005888 () Bool)

(assert (=> b!4811565 (= e!3005884 e!3005888)))

(declare-fun res!2046646 () Bool)

(assert (=> b!4811565 (= res!2046646 (not (= (bvand (extraKeys!5343 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4811565 (=> (not res!2046646) (not e!3005888))))

(declare-fun d!1540544 () Bool)

(assert (=> d!1540544 e!3005883))

(declare-fun c!820083 () Bool)

(assert (=> d!1540544 (= c!820083 (contains!18281 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))) lt!1963030))))

(assert (=> d!1540544 (= lt!1963138 e!3005893)))

(declare-fun c!820081 () Bool)

(assert (=> d!1540544 (= c!820081 (= lt!1963030 (bvneg lt!1963030)))))

(assert (=> d!1540544 (valid!4093 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))

(assert (=> d!1540544 (= (apply!13165 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))) lt!1963030) lt!1963138)))

(declare-fun b!4811566 () Bool)

(assert (=> b!4811566 (= e!3005892 (dynLambda!22139 (defaultEntry!5485 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) lt!1963030))))

(declare-fun b!4811567 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!4811567 (= e!3005885 (inRange!0 (index!1502 lt!1963139) (mask!15075 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))))

(declare-fun b!4811568 () Bool)

(assert (=> b!4811568 (= e!3005892 (minValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))))))

(declare-fun b!4811569 () Bool)

(assert (=> b!4811569 (= e!3005893 e!3005887)))

(declare-fun c!820079 () Bool)

(assert (=> b!4811569 (= c!820079 (and (= lt!1963030 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5343 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!4811570 () Bool)

(assert (=> b!4811570 (= e!3005888 (= call!335841 (zeroValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))))

(declare-fun b!4811571 () Bool)

(declare-fun res!2046645 () Bool)

(assert (=> b!4811571 (=> (not res!2046645) (not e!3005889))))

(assert (=> b!4811571 (= res!2046645 (not (= (bvand (extraKeys!5343 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!4811571 (= e!3005891 e!3005889)))

(declare-fun b!4811572 () Bool)

(declare-fun lt!1963133 () Unit!141572)

(declare-fun lt!1963134 () Unit!141572)

(assert (=> b!4811572 (= lt!1963133 lt!1963134)))

(assert (=> b!4811572 e!3005884))

(assert (=> b!4811572 (= c!820082 (= lt!1963030 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lemmaKeyInListMapThenSameValueInArray!18 (array!18630 array!18632 (_ BitVec 32) (_ BitVec 32) List!54678 List!54678 (_ BitVec 64) (_ BitVec 32) Int) Unit!141572)

(assert (=> b!4811572 (= lt!1963134 (lemmaKeyInListMapThenSameValueInArray!18 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (_values!5381 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (mask!15075 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (extraKeys!5343 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (zeroValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (minValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) lt!1963030 (index!1502 lt!1963136) (defaultEntry!5485 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))))

(declare-fun lt!1963131 () Unit!141572)

(declare-fun lt!1963137 () Unit!141572)

(assert (=> b!4811572 (= lt!1963131 lt!1963137)))

(assert (=> b!4811572 (contains!18280 (getCurrentListMap!33 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (_values!5381 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (mask!15075 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (extraKeys!5343 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (zeroValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (minValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5485 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))) (select (arr!8311 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))) (index!1502 lt!1963136)))))

(assert (=> b!4811572 (= lt!1963137 (lemmaValidKeyInArrayIsInListMap!23 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (_values!5381 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (mask!15075 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (extraKeys!5343 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (zeroValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (minValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) (index!1502 lt!1963136) (defaultEntry!5485 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))))

(declare-fun lt!1963135 () Unit!141572)

(declare-fun lt!1963140 () Unit!141572)

(assert (=> b!4811572 (= lt!1963135 lt!1963140)))

(assert (=> b!4811572 (arrayContainsKey!0 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) lt!1963030 #b00000000000000000000000000000000)))

(assert (=> b!4811572 (= lt!1963140 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5412 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) lt!1963030 (index!1502 lt!1963136)))))

(assert (=> b!4811572 (= e!3005886 (select (arr!8312 (_values!5381 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))) (index!1502 lt!1963136)))))

(declare-fun b!4811573 () Bool)

(assert (=> b!4811573 (= e!3005884 e!3005891)))

(declare-fun c!820080 () Bool)

(assert (=> b!4811573 (= c!820080 (= lt!1963030 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!335839 () Bool)

(assert (=> bm!335839 (= call!335843 call!335842)))

(assert (= (and d!1540544 c!820081) b!4811569))

(assert (= (and d!1540544 (not c!820081)) b!4811556))

(assert (= (and b!4811569 c!820079) b!4811562))

(assert (= (and b!4811569 (not c!820079)) b!4811558))

(assert (= (and b!4811558 c!820077) b!4811568))

(assert (= (and b!4811558 (not c!820077)) b!4811566))

(assert (= (and b!4811556 (not res!2046644)) b!4811567))

(assert (= (and b!4811556 c!820078) b!4811572))

(assert (= (and b!4811556 (not c!820078)) b!4811564))

(assert (= (and b!4811572 c!820082) b!4811565))

(assert (= (and b!4811572 (not c!820082)) b!4811573))

(assert (= (and b!4811565 res!2046646) b!4811570))

(assert (= (and b!4811573 c!820080) b!4811571))

(assert (= (and b!4811573 (not c!820080)) b!4811561))

(assert (= (and b!4811571 res!2046645) b!4811559))

(assert (= (and b!4811561 res!2046643) b!4811560))

(assert (= (or b!4811559 b!4811560) bm!335839))

(assert (= (or b!4811559 b!4811560) bm!335838))

(assert (= (or b!4811570 bm!335839) bm!335837))

(assert (= (or b!4811570 bm!335838) bm!335836))

(assert (= (and d!1540544 c!820083) b!4811563))

(assert (= (and d!1540544 (not c!820083)) b!4811557))

(declare-fun b_lambda!188251 () Bool)

(assert (=> (not b_lambda!188251) (not b!4811557)))

(assert (=> b!4811557 t!362165))

(declare-fun b_and!341995 () Bool)

(assert (= b_and!341993 (and (=> t!362165 result!319624) b_and!341995)))

(declare-fun b_lambda!188253 () Bool)

(assert (=> (not b_lambda!188253) (not b!4811564)))

(assert (=> b!4811564 t!362165))

(declare-fun b_and!341997 () Bool)

(assert (= b_and!341995 (and (=> t!362165 result!319624) b_and!341997)))

(declare-fun b_lambda!188255 () Bool)

(assert (=> (not b_lambda!188255) (not b!4811566)))

(assert (=> b!4811566 t!362165))

(declare-fun b_and!341999 () Bool)

(assert (= b_and!341997 (and (=> t!362165 result!319624) b_and!341999)))

(assert (=> b!4811557 m!5797150))

(declare-fun m!5797238 () Bool)

(assert (=> b!4811567 m!5797238))

(assert (=> b!4811561 m!5797206))

(assert (=> b!4811556 m!5797208))

(declare-fun m!5797240 () Bool)

(assert (=> b!4811556 m!5797240))

(assert (=> b!4811566 m!5797150))

(declare-fun m!5797242 () Bool)

(assert (=> b!4811560 m!5797242))

(assert (=> b!4811563 m!5797152))

(declare-fun m!5797244 () Bool)

(assert (=> b!4811563 m!5797244))

(assert (=> b!4811563 m!5797244))

(declare-fun m!5797246 () Bool)

(assert (=> b!4811563 m!5797246))

(assert (=> d!1540544 m!5797160))

(assert (=> d!1540544 m!5797190))

(declare-fun m!5797248 () Bool)

(assert (=> bm!335836 m!5797248))

(assert (=> b!4811564 m!5797150))

(assert (=> bm!335837 m!5797194))

(assert (=> b!4811572 m!5797194))

(declare-fun m!5797250 () Bool)

(assert (=> b!4811572 m!5797250))

(declare-fun m!5797252 () Bool)

(assert (=> b!4811572 m!5797252))

(declare-fun m!5797254 () Bool)

(assert (=> b!4811572 m!5797254))

(assert (=> b!4811572 m!5797206))

(assert (=> b!4811572 m!5797194))

(assert (=> b!4811572 m!5797242))

(declare-fun m!5797256 () Bool)

(assert (=> b!4811572 m!5797256))

(assert (=> b!4811572 m!5797250))

(declare-fun m!5797258 () Bool)

(assert (=> b!4811572 m!5797258))

(assert (=> d!1540484 d!1540544))

(assert (=> d!1540484 d!1540518))

(declare-fun d!1540546 () Bool)

(declare-fun res!2046647 () Bool)

(declare-fun e!3005894 () Bool)

(assert (=> d!1540546 (=> res!2046647 e!3005894)))

(assert (=> d!1540546 (= res!2046647 (or ((_ is Nil!54555) (t!362163 (toList!7150 lt!1963034))) ((_ is Nil!54555) (t!362163 (t!362163 (toList!7150 lt!1963034))))))))

(assert (=> d!1540546 (= (isStrictlySorted!932 (t!362163 (toList!7150 lt!1963034))) e!3005894)))

(declare-fun b!4811574 () Bool)

(declare-fun e!3005895 () Bool)

(assert (=> b!4811574 (= e!3005894 e!3005895)))

(declare-fun res!2046648 () Bool)

(assert (=> b!4811574 (=> (not res!2046648) (not e!3005895))))

(assert (=> b!4811574 (= res!2046648 (bvslt (_1!32011 (h!60987 (t!362163 (toList!7150 lt!1963034)))) (_1!32011 (h!60987 (t!362163 (t!362163 (toList!7150 lt!1963034)))))))))

(declare-fun b!4811575 () Bool)

(assert (=> b!4811575 (= e!3005895 (isStrictlySorted!932 (t!362163 (t!362163 (toList!7150 lt!1963034)))))))

(assert (= (and d!1540546 (not res!2046647)) b!4811574))

(assert (= (and b!4811574 res!2046648) b!4811575))

(declare-fun m!5797260 () Bool)

(assert (=> b!4811575 m!5797260))

(assert (=> b!4811435 d!1540546))

(declare-fun tp!1360897 () Bool)

(declare-fun b!4811576 () Bool)

(declare-fun e!3005896 () Bool)

(assert (=> b!4811576 (= e!3005896 (and tp_is_empty!34005 tp_is_empty!34007 tp!1360897))))

(assert (=> tb!257537 (= result!319624 e!3005896)))

(assert (= (and tb!257537 ((_ is Cons!54554) (dynLambda!22139 (defaultEntry!5485 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921))))) lt!1963030))) b!4811576))

(declare-fun b!4811577 () Bool)

(declare-fun tp!1360898 () Bool)

(declare-fun e!3005897 () Bool)

(assert (=> b!4811577 (= e!3005897 (and tp_is_empty!34005 tp_is_empty!34007 tp!1360898))))

(assert (=> b!4811450 (= tp!1360891 e!3005897)))

(assert (= (and b!4811450 ((_ is Cons!54554) (t!362162 mapValue!22369))) b!4811577))

(declare-fun tp!1360899 () Bool)

(declare-fun b!4811578 () Bool)

(declare-fun e!3005898 () Bool)

(assert (=> b!4811578 (= e!3005898 (and tp_is_empty!34005 tp_is_empty!34007 tp!1360899))))

(assert (=> b!4811452 (= tp!1360894 e!3005898)))

(assert (= (and b!4811452 ((_ is Cons!54554) (t!362162 mapValue!22366))) b!4811578))

(declare-fun b!4811579 () Bool)

(declare-fun e!3005899 () Bool)

(declare-fun tp!1360900 () Bool)

(assert (=> b!4811579 (= e!3005899 (and tp_is_empty!34005 tp_is_empty!34007 tp!1360900))))

(assert (=> b!4811453 (= tp!1360895 e!3005899)))

(assert (= (and b!4811453 ((_ is Cons!54554) (t!362162 (zeroValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))) b!4811579))

(declare-fun mapNonEmpty!22370 () Bool)

(declare-fun mapRes!22370 () Bool)

(declare-fun tp!1360903 () Bool)

(declare-fun e!3005901 () Bool)

(assert (=> mapNonEmpty!22370 (= mapRes!22370 (and tp!1360903 e!3005901))))

(declare-fun mapValue!22370 () List!54678)

(declare-fun mapRest!22370 () (Array (_ BitVec 32) List!54678))

(declare-fun mapKey!22370 () (_ BitVec 32))

(assert (=> mapNonEmpty!22370 (= mapRest!22369 (store mapRest!22370 mapKey!22370 mapValue!22370))))

(declare-fun b!4811580 () Bool)

(declare-fun tp!1360901 () Bool)

(assert (=> b!4811580 (= e!3005901 (and tp_is_empty!34005 tp_is_empty!34007 tp!1360901))))

(declare-fun condMapEmpty!22370 () Bool)

(declare-fun mapDefault!22370 () List!54678)

(assert (=> mapNonEmpty!22369 (= condMapEmpty!22370 (= mapRest!22369 ((as const (Array (_ BitVec 32) List!54678)) mapDefault!22370)))))

(declare-fun e!3005900 () Bool)

(assert (=> mapNonEmpty!22369 (= tp!1360893 (and e!3005900 mapRes!22370))))

(declare-fun mapIsEmpty!22370 () Bool)

(assert (=> mapIsEmpty!22370 mapRes!22370))

(declare-fun b!4811581 () Bool)

(declare-fun tp!1360902 () Bool)

(assert (=> b!4811581 (= e!3005900 (and tp_is_empty!34005 tp_is_empty!34007 tp!1360902))))

(assert (= (and mapNonEmpty!22369 condMapEmpty!22370) mapIsEmpty!22370))

(assert (= (and mapNonEmpty!22369 (not condMapEmpty!22370)) mapNonEmpty!22370))

(assert (= (and mapNonEmpty!22370 ((_ is Cons!54554) mapValue!22370)) b!4811580))

(assert (= (and mapNonEmpty!22369 ((_ is Cons!54554) mapDefault!22370)) b!4811581))

(declare-fun m!5797262 () Bool)

(assert (=> mapNonEmpty!22370 m!5797262))

(declare-fun b!4811582 () Bool)

(declare-fun e!3005902 () Bool)

(declare-fun tp!1360904 () Bool)

(assert (=> b!4811582 (= e!3005902 (and tp_is_empty!34005 tp_is_empty!34007 tp!1360904))))

(assert (=> b!4811443 (= tp!1360884 e!3005902)))

(assert (= (and b!4811443 ((_ is Cons!54554) (t!362162 mapDefault!22366))) b!4811582))

(declare-fun b!4811583 () Bool)

(declare-fun e!3005903 () Bool)

(declare-fun tp!1360905 () Bool)

(assert (=> b!4811583 (= e!3005903 (and tp_is_empty!34005 tp_is_empty!34007 tp!1360905))))

(assert (=> b!4811454 (= tp!1360896 e!3005903)))

(assert (= (and b!4811454 ((_ is Cons!54554) (t!362162 (minValue!5356 (v!48873 (underlying!10333 (v!48874 (underlying!10334 thiss!41921)))))))) b!4811583))

(declare-fun b!4811584 () Bool)

(declare-fun e!3005904 () Bool)

(declare-fun tp!1360906 () Bool)

(assert (=> b!4811584 (= e!3005904 (and tp_is_empty!34005 tp_is_empty!34007 tp!1360906))))

(assert (=> b!4811451 (= tp!1360892 e!3005904)))

(assert (= (and b!4811451 ((_ is Cons!54554) (t!362162 mapDefault!22369))) b!4811584))

(declare-fun b_lambda!188257 () Bool)

(assert (= b_lambda!188253 (or (and b!4811389 b_free!130195) b_lambda!188257)))

(declare-fun b_lambda!188259 () Bool)

(assert (= b_lambda!188255 (or (and b!4811389 b_free!130195) b_lambda!188259)))

(declare-fun b_lambda!188261 () Bool)

(assert (= b_lambda!188251 (or (and b!4811389 b_free!130195) b_lambda!188261)))

(declare-fun b_lambda!188263 () Bool)

(assert (= b_lambda!188249 (or b!4811407 b_lambda!188263)))

(declare-fun bs!1160138 () Bool)

(declare-fun d!1540548 () Bool)

(assert (= bs!1160138 (and d!1540548 b!4811407)))

(declare-fun noDuplicateKeys!2390 (List!54678) Bool)

(assert (=> bs!1160138 (= (dynLambda!22140 lambda!233772 (h!60987 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921)))))) (noDuplicateKeys!2390 (_2!32011 (h!60987 (toList!7150 (map!12431 (v!48874 (underlying!10334 thiss!41921))))))))))

(declare-fun m!5797264 () Bool)

(assert (=> bs!1160138 m!5797264))

(assert (=> b!4811516 d!1540548))

(check-sat (not b!4811583) (not b_next!130987) tp_is_empty!34005 (not d!1540518) (not b!4811468) (not b!4811477) (not d!1540544) (not bm!335837) (not b!4811581) (not b!4811504) (not b!4811460) (not b_lambda!188247) (not b!4811577) (not d!1540542) (not b!4811561) (not b!4811517) (not b!4811556) b_and!341991 (not b!4811457) (not b!4811576) (not d!1540516) (not b!4811579) (not d!1540512) (not d!1540528) (not b!4811572) (not bs!1160138) (not mapNonEmpty!22370) b_and!341999 (not b!4811580) (not b!4811507) (not b!4811462) (not b!4811506) (not bm!335836) (not b_lambda!188263) (not bm!335827) (not b_lambda!188261) (not b!4811578) (not b!4811584) (not d!1540540) (not b!4811567) (not bm!335826) (not d!1540514) (not d!1540536) (not b!4811582) (not b!4811575) (not d!1540530) tp_is_empty!34007 (not b!4811475) (not b!4811563) (not b_lambda!188259) (not b_next!130985) (not d!1540522) (not b_lambda!188257) (not bm!335825) (not b!4811510))
(check-sat b_and!341999 b_and!341991 (not b_next!130985) (not b_next!130987))
