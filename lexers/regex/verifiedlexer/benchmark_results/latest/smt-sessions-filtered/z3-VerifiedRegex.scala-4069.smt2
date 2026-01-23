; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218436 () Bool)

(assert start!218436)

(declare-fun b!2241904 () Bool)

(declare-fun b_free!65129 () Bool)

(declare-fun b_next!65833 () Bool)

(assert (=> b!2241904 (= b_free!65129 (not b_next!65833))))

(declare-fun tp!706992 () Bool)

(declare-fun b_and!175157 () Bool)

(assert (=> b!2241904 (= tp!706992 b_and!175157)))

(declare-fun b!2241902 () Bool)

(declare-fun b_free!65131 () Bool)

(declare-fun b_next!65835 () Bool)

(assert (=> b!2241902 (= b_free!65131 (not b_next!65835))))

(declare-fun tp!706997 () Bool)

(declare-fun b_and!175159 () Bool)

(assert (=> b!2241902 (= tp!706997 b_and!175159)))

(declare-fun b!2241897 () Bool)

(declare-fun e!1433680 () Bool)

(declare-datatypes ((C!13204 0))(
  ( (C!13205 (val!7650 Int)) )
))
(declare-datatypes ((Regex!6529 0))(
  ( (ElementMatch!6529 (c!356936 C!13204)) (Concat!10867 (regOne!13570 Regex!6529) (regTwo!13570 Regex!6529)) (EmptyExpr!6529) (Star!6529 (reg!6858 Regex!6529)) (EmptyLang!6529) (Union!6529 (regOne!13571 Regex!6529) (regTwo!13571 Regex!6529)) )
))
(declare-datatypes ((List!26558 0))(
  ( (Nil!26464) (Cons!26464 (h!31865 Regex!6529) (t!199998 List!26558)) )
))
(declare-datatypes ((Context!4154 0))(
  ( (Context!4155 (exprs!2577 List!26558)) )
))
(declare-datatypes ((tuple2!25930 0))(
  ( (tuple2!25931 (_1!15475 Context!4154) (_2!15475 C!13204)) )
))
(declare-datatypes ((array!11090 0))(
  ( (array!11091 (arr!4921 (Array (_ BitVec 32) (_ BitVec 64))) (size!20702 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25932 0))(
  ( (tuple2!25933 (_1!15476 tuple2!25930) (_2!15476 (InoxSet Context!4154))) )
))
(declare-datatypes ((List!26559 0))(
  ( (Nil!26465) (Cons!26465 (h!31866 tuple2!25932) (t!199999 List!26559)) )
))
(declare-datatypes ((array!11092 0))(
  ( (array!11093 (arr!4922 (Array (_ BitVec 32) List!26559)) (size!20703 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6334 0))(
  ( (LongMapFixedSize!6335 (defaultEntry!3532 Int) (mask!7785 (_ BitVec 32)) (extraKeys!3415 (_ BitVec 32)) (zeroValue!3425 List!26559) (minValue!3425 List!26559) (_size!6381 (_ BitVec 32)) (_keys!3464 array!11090) (_values!3447 array!11092) (_vacant!3228 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12485 0))(
  ( (Cell!12486 (v!30104 LongMapFixedSize!6334)) )
))
(declare-datatypes ((MutLongMap!3167 0))(
  ( (LongMap!3167 (underlying!6535 Cell!12485)) (MutLongMapExt!3166 (__x!17727 Int)) )
))
(declare-datatypes ((Cell!12487 0))(
  ( (Cell!12488 (v!30105 MutLongMap!3167)) )
))
(declare-datatypes ((Hashable!3077 0))(
  ( (HashableExt!3076 (__x!17728 Int)) )
))
(declare-datatypes ((MutableMap!3077 0))(
  ( (MutableMapExt!3076 (__x!17729 Int)) (HashMap!3077 (underlying!6536 Cell!12487) (hashF!5000 Hashable!3077) (_size!6382 (_ BitVec 32)) (defaultValue!3239 Int)) )
))
(declare-datatypes ((CacheUp!2024 0))(
  ( (CacheUp!2025 (cache!3458 MutableMap!3077)) )
))
(declare-fun thiss!28603 () CacheUp!2024)

(get-info :version)

(assert (=> b!2241897 (= e!1433680 (not ((_ is HashMap!3077) (cache!3458 thiss!28603))))))

(declare-fun res!958039 () Bool)

(assert (=> start!218436 (=> (not res!958039) (not e!1433680))))

(declare-fun validCacheMapUp!308 (MutableMap!3077) Bool)

(assert (=> start!218436 (= res!958039 (validCacheMapUp!308 (cache!3458 thiss!28603)))))

(assert (=> start!218436 e!1433680))

(declare-fun e!1433685 () Bool)

(declare-fun inv!35939 (CacheUp!2024) Bool)

(assert (=> start!218436 (and (inv!35939 thiss!28603) e!1433685)))

(declare-fun ctx!36 () Context!4154)

(declare-fun e!1433688 () Bool)

(declare-fun inv!35940 (Context!4154) Bool)

(assert (=> start!218436 (and (inv!35940 ctx!36) e!1433688)))

(declare-fun tp_is_empty!10279 () Bool)

(assert (=> start!218436 tp_is_empty!10279))

(declare-fun b!2241898 () Bool)

(declare-fun e!1433679 () Bool)

(assert (=> b!2241898 (= e!1433685 e!1433679)))

(declare-fun b!2241899 () Bool)

(declare-fun res!958040 () Bool)

(assert (=> b!2241899 (=> (not res!958040) (not e!1433680))))

(declare-fun a!922 () C!13204)

(declare-fun contains!4517 (MutableMap!3077 tuple2!25930) Bool)

(assert (=> b!2241899 (= res!958040 (contains!4517 (cache!3458 thiss!28603) (tuple2!25931 ctx!36 a!922)))))

(declare-fun b!2241900 () Bool)

(declare-fun e!1433683 () Bool)

(declare-fun e!1433682 () Bool)

(assert (=> b!2241900 (= e!1433683 e!1433682)))

(declare-fun b!2241901 () Bool)

(declare-fun e!1433681 () Bool)

(declare-fun lt!834669 () MutLongMap!3167)

(assert (=> b!2241901 (= e!1433681 (and e!1433683 ((_ is LongMap!3167) lt!834669)))))

(assert (=> b!2241901 (= lt!834669 (v!30105 (underlying!6536 (cache!3458 thiss!28603))))))

(declare-fun mapIsEmpty!14834 () Bool)

(declare-fun mapRes!14834 () Bool)

(assert (=> mapIsEmpty!14834 mapRes!14834))

(declare-fun tp!706996 () Bool)

(declare-fun e!1433686 () Bool)

(declare-fun tp!706994 () Bool)

(declare-fun e!1433684 () Bool)

(declare-fun array_inv!3535 (array!11090) Bool)

(declare-fun array_inv!3536 (array!11092) Bool)

(assert (=> b!2241902 (= e!1433686 (and tp!706997 tp!706996 tp!706994 (array_inv!3535 (_keys!3464 (v!30104 (underlying!6535 (v!30105 (underlying!6536 (cache!3458 thiss!28603))))))) (array_inv!3536 (_values!3447 (v!30104 (underlying!6535 (v!30105 (underlying!6536 (cache!3458 thiss!28603))))))) e!1433684))))

(declare-fun b!2241903 () Bool)

(declare-fun tp!706998 () Bool)

(assert (=> b!2241903 (= e!1433684 (and tp!706998 mapRes!14834))))

(declare-fun condMapEmpty!14834 () Bool)

(declare-fun mapDefault!14834 () List!26559)

(assert (=> b!2241903 (= condMapEmpty!14834 (= (arr!4922 (_values!3447 (v!30104 (underlying!6535 (v!30105 (underlying!6536 (cache!3458 thiss!28603))))))) ((as const (Array (_ BitVec 32) List!26559)) mapDefault!14834)))))

(declare-fun mapNonEmpty!14834 () Bool)

(declare-fun tp!706995 () Bool)

(declare-fun tp!706993 () Bool)

(assert (=> mapNonEmpty!14834 (= mapRes!14834 (and tp!706995 tp!706993))))

(declare-fun mapValue!14834 () List!26559)

(declare-fun mapRest!14834 () (Array (_ BitVec 32) List!26559))

(declare-fun mapKey!14834 () (_ BitVec 32))

(assert (=> mapNonEmpty!14834 (= (arr!4922 (_values!3447 (v!30104 (underlying!6535 (v!30105 (underlying!6536 (cache!3458 thiss!28603))))))) (store mapRest!14834 mapKey!14834 mapValue!14834))))

(assert (=> b!2241904 (= e!1433679 (and e!1433681 tp!706992))))

(declare-fun b!2241905 () Bool)

(assert (=> b!2241905 (= e!1433682 e!1433686)))

(declare-fun b!2241906 () Bool)

(declare-fun tp!706991 () Bool)

(assert (=> b!2241906 (= e!1433688 tp!706991)))

(assert (= (and start!218436 res!958039) b!2241899))

(assert (= (and b!2241899 res!958040) b!2241897))

(assert (= (and b!2241903 condMapEmpty!14834) mapIsEmpty!14834))

(assert (= (and b!2241903 (not condMapEmpty!14834)) mapNonEmpty!14834))

(assert (= b!2241902 b!2241903))

(assert (= b!2241905 b!2241902))

(assert (= b!2241900 b!2241905))

(assert (= (and b!2241901 ((_ is LongMap!3167) (v!30105 (underlying!6536 (cache!3458 thiss!28603))))) b!2241900))

(assert (= b!2241904 b!2241901))

(assert (= (and b!2241898 ((_ is HashMap!3077) (cache!3458 thiss!28603))) b!2241904))

(assert (= start!218436 b!2241898))

(assert (= start!218436 b!2241906))

(declare-fun m!2674128 () Bool)

(assert (=> start!218436 m!2674128))

(declare-fun m!2674130 () Bool)

(assert (=> start!218436 m!2674130))

(declare-fun m!2674132 () Bool)

(assert (=> start!218436 m!2674132))

(declare-fun m!2674134 () Bool)

(assert (=> b!2241899 m!2674134))

(declare-fun m!2674136 () Bool)

(assert (=> b!2241902 m!2674136))

(declare-fun m!2674138 () Bool)

(assert (=> b!2241902 m!2674138))

(declare-fun m!2674140 () Bool)

(assert (=> mapNonEmpty!14834 m!2674140))

(check-sat (not start!218436) (not b_next!65835) b_and!175157 b_and!175159 (not b!2241902) tp_is_empty!10279 (not b!2241899) (not b!2241906) (not b!2241903) (not mapNonEmpty!14834) (not b_next!65833))
(check-sat b_and!175157 b_and!175159 (not b_next!65835) (not b_next!65833))
(get-model)

(declare-fun d!665872 () Bool)

(assert (=> d!665872 (= (array_inv!3535 (_keys!3464 (v!30104 (underlying!6535 (v!30105 (underlying!6536 (cache!3458 thiss!28603))))))) (bvsge (size!20702 (_keys!3464 (v!30104 (underlying!6535 (v!30105 (underlying!6536 (cache!3458 thiss!28603))))))) #b00000000000000000000000000000000))))

(assert (=> b!2241902 d!665872))

(declare-fun d!665874 () Bool)

(assert (=> d!665874 (= (array_inv!3536 (_values!3447 (v!30104 (underlying!6535 (v!30105 (underlying!6536 (cache!3458 thiss!28603))))))) (bvsge (size!20703 (_values!3447 (v!30104 (underlying!6535 (v!30105 (underlying!6536 (cache!3458 thiss!28603))))))) #b00000000000000000000000000000000))))

(assert (=> b!2241902 d!665874))

(declare-fun d!665876 () Bool)

(declare-fun res!958045 () Bool)

(declare-fun e!1433691 () Bool)

(assert (=> d!665876 (=> (not res!958045) (not e!1433691))))

(declare-fun valid!2380 (MutableMap!3077) Bool)

(assert (=> d!665876 (= res!958045 (valid!2380 (cache!3458 thiss!28603)))))

(assert (=> d!665876 (= (validCacheMapUp!308 (cache!3458 thiss!28603)) e!1433691)))

(declare-fun b!2241911 () Bool)

(declare-fun res!958046 () Bool)

(assert (=> b!2241911 (=> (not res!958046) (not e!1433691))))

(declare-fun invariantList!394 (List!26559) Bool)

(declare-datatypes ((ListMap!885 0))(
  ( (ListMap!886 (toList!1399 List!26559)) )
))
(declare-fun map!5485 (MutableMap!3077) ListMap!885)

(assert (=> b!2241911 (= res!958046 (invariantList!394 (toList!1399 (map!5485 (cache!3458 thiss!28603)))))))

(declare-fun b!2241912 () Bool)

(declare-fun lambda!84867 () Int)

(declare-fun forall!5455 (List!26559 Int) Bool)

(assert (=> b!2241912 (= e!1433691 (forall!5455 (toList!1399 (map!5485 (cache!3458 thiss!28603))) lambda!84867))))

(assert (= (and d!665876 res!958045) b!2241911))

(assert (= (and b!2241911 res!958046) b!2241912))

(declare-fun m!2674143 () Bool)

(assert (=> d!665876 m!2674143))

(declare-fun m!2674145 () Bool)

(assert (=> b!2241911 m!2674145))

(declare-fun m!2674147 () Bool)

(assert (=> b!2241911 m!2674147))

(assert (=> b!2241912 m!2674145))

(declare-fun m!2674149 () Bool)

(assert (=> b!2241912 m!2674149))

(assert (=> start!218436 d!665876))

(declare-fun d!665878 () Bool)

(declare-fun res!958049 () Bool)

(declare-fun e!1433694 () Bool)

(assert (=> d!665878 (=> (not res!958049) (not e!1433694))))

(assert (=> d!665878 (= res!958049 ((_ is HashMap!3077) (cache!3458 thiss!28603)))))

(assert (=> d!665878 (= (inv!35939 thiss!28603) e!1433694)))

(declare-fun b!2241915 () Bool)

(assert (=> b!2241915 (= e!1433694 (validCacheMapUp!308 (cache!3458 thiss!28603)))))

(assert (= (and d!665878 res!958049) b!2241915))

(assert (=> b!2241915 m!2674128))

(assert (=> start!218436 d!665878))

(declare-fun d!665880 () Bool)

(declare-fun lambda!84870 () Int)

(declare-fun forall!5456 (List!26558 Int) Bool)

(assert (=> d!665880 (= (inv!35940 ctx!36) (forall!5456 (exprs!2577 ctx!36) lambda!84870))))

(declare-fun bs!454348 () Bool)

(assert (= bs!454348 d!665880))

(declare-fun m!2674151 () Bool)

(assert (=> bs!454348 m!2674151))

(assert (=> start!218436 d!665880))

(declare-fun b!2241938 () Bool)

(declare-fun lt!834715 () (_ BitVec 64))

(declare-fun e!1433715 () Bool)

(declare-datatypes ((Option!5173 0))(
  ( (None!5172) (Some!5172 (v!30106 tuple2!25932)) )
))
(declare-fun isDefined!4175 (Option!5173) Bool)

(declare-fun getPair!48 (List!26559 tuple2!25930) Option!5173)

(declare-fun apply!6536 (MutLongMap!3167 (_ BitVec 64)) List!26559)

(assert (=> b!2241938 (= e!1433715 (isDefined!4175 (getPair!48 (apply!6536 (v!30105 (underlying!6536 (cache!3458 thiss!28603))) lt!834715) (tuple2!25931 ctx!36 a!922))))))

(declare-fun bm!135338 () Bool)

(declare-datatypes ((tuple2!25934 0))(
  ( (tuple2!25935 (_1!15477 (_ BitVec 64)) (_2!15477 List!26559)) )
))
(declare-datatypes ((List!26560 0))(
  ( (Nil!26466) (Cons!26466 (h!31867 tuple2!25934) (t!200000 List!26560)) )
))
(declare-datatypes ((ListLongMap!367 0))(
  ( (ListLongMap!368 (toList!1400 List!26560)) )
))
(declare-fun call!135346 () ListLongMap!367)

(declare-fun map!5486 (MutLongMap!3167) ListLongMap!367)

(assert (=> bm!135338 (= call!135346 (map!5486 (v!30105 (underlying!6536 (cache!3458 thiss!28603)))))))

(declare-fun lt!834724 () Bool)

(declare-fun d!665882 () Bool)

(declare-fun contains!4518 (ListMap!885 tuple2!25930) Bool)

(assert (=> d!665882 (= lt!834724 (contains!4518 (map!5485 (cache!3458 thiss!28603)) (tuple2!25931 ctx!36 a!922)))))

(assert (=> d!665882 (= lt!834724 e!1433715)))

(declare-fun res!958058 () Bool)

(assert (=> d!665882 (=> (not res!958058) (not e!1433715))))

(declare-fun contains!4519 (MutLongMap!3167 (_ BitVec 64)) Bool)

(assert (=> d!665882 (= res!958058 (contains!4519 (v!30105 (underlying!6536 (cache!3458 thiss!28603))) lt!834715))))

(declare-datatypes ((Unit!39453 0))(
  ( (Unit!39454) )
))
(declare-fun lt!834711 () Unit!39453)

(declare-fun e!1433711 () Unit!39453)

(assert (=> d!665882 (= lt!834711 e!1433711)))

(declare-fun c!356946 () Bool)

(declare-fun extractMap!128 (List!26560) ListMap!885)

(assert (=> d!665882 (= c!356946 (contains!4518 (extractMap!128 (toList!1400 (map!5486 (v!30105 (underlying!6536 (cache!3458 thiss!28603)))))) (tuple2!25931 ctx!36 a!922)))))

(declare-fun lt!834727 () Unit!39453)

(declare-fun e!1433709 () Unit!39453)

(assert (=> d!665882 (= lt!834727 e!1433709)))

(declare-fun c!356948 () Bool)

(assert (=> d!665882 (= c!356948 (contains!4519 (v!30105 (underlying!6536 (cache!3458 thiss!28603))) lt!834715))))

(declare-fun hash!595 (Hashable!3077 tuple2!25930) (_ BitVec 64))

(assert (=> d!665882 (= lt!834715 (hash!595 (hashF!5000 (cache!3458 thiss!28603)) (tuple2!25931 ctx!36 a!922)))))

(assert (=> d!665882 (valid!2380 (cache!3458 thiss!28603))))

(assert (=> d!665882 (= (contains!4517 (cache!3458 thiss!28603) (tuple2!25931 ctx!36 a!922)) lt!834724)))

(declare-fun bm!135339 () Bool)

(declare-fun call!135344 () Bool)

(declare-fun call!135345 () Option!5173)

(assert (=> bm!135339 (= call!135344 (isDefined!4175 call!135345))))

(declare-fun bm!135340 () Bool)

(declare-fun lt!834728 () ListLongMap!367)

(declare-fun call!135347 () List!26559)

(declare-fun call!135348 () (_ BitVec 64))

(declare-fun apply!6537 (ListLongMap!367 (_ BitVec 64)) List!26559)

(assert (=> bm!135340 (= call!135347 (apply!6537 (ite c!356946 lt!834728 call!135346) call!135348))))

(declare-fun b!2241939 () Bool)

(declare-fun e!1433710 () Bool)

(assert (=> b!2241939 (= e!1433710 call!135344)))

(declare-fun bm!135341 () Bool)

(assert (=> bm!135341 (= call!135345 (getPair!48 call!135347 (tuple2!25931 ctx!36 a!922)))))

(declare-fun b!2241940 () Bool)

(declare-fun e!1433713 () Unit!39453)

(assert (=> b!2241940 (= e!1433711 e!1433713)))

(declare-fun res!958056 () Bool)

(declare-fun call!135343 () Bool)

(assert (=> b!2241940 (= res!958056 call!135343)))

(declare-fun e!1433712 () Bool)

(assert (=> b!2241940 (=> (not res!958056) (not e!1433712))))

(declare-fun c!356945 () Bool)

(assert (=> b!2241940 (= c!356945 e!1433712)))

(declare-fun b!2241941 () Bool)

(assert (=> b!2241941 (= e!1433712 call!135344)))

(declare-fun bm!135342 () Bool)

(declare-fun contains!4520 (ListLongMap!367 (_ BitVec 64)) Bool)

(assert (=> bm!135342 (= call!135343 (contains!4520 (ite c!356946 lt!834728 call!135346) call!135348))))

(declare-fun b!2241942 () Bool)

(declare-fun Unit!39455 () Unit!39453)

(assert (=> b!2241942 (= e!1433713 Unit!39455)))

(declare-fun b!2241943 () Bool)

(assert (=> b!2241943 false))

(declare-fun lt!834712 () Unit!39453)

(declare-fun lt!834721 () Unit!39453)

(assert (=> b!2241943 (= lt!834712 lt!834721)))

(declare-fun lt!834719 () ListLongMap!367)

(assert (=> b!2241943 (contains!4518 (extractMap!128 (toList!1400 lt!834719)) (tuple2!25931 ctx!36 a!922))))

(declare-fun lemmaInLongMapThenInGenericMap!48 (ListLongMap!367 tuple2!25930 Hashable!3077) Unit!39453)

(assert (=> b!2241943 (= lt!834721 (lemmaInLongMapThenInGenericMap!48 lt!834719 (tuple2!25931 ctx!36 a!922) (hashF!5000 (cache!3458 thiss!28603))))))

(assert (=> b!2241943 (= lt!834719 call!135346)))

(declare-fun Unit!39456 () Unit!39453)

(assert (=> b!2241943 (= e!1433713 Unit!39456)))

(declare-fun b!2241944 () Bool)

(declare-fun Unit!39457 () Unit!39453)

(assert (=> b!2241944 (= e!1433709 Unit!39457)))

(declare-fun b!2241945 () Bool)

(assert (=> b!2241945 false))

(declare-fun lt!834726 () Unit!39453)

(declare-fun lt!834713 () Unit!39453)

(assert (=> b!2241945 (= lt!834726 lt!834713)))

(declare-fun lt!834717 () List!26560)

(declare-fun lt!834729 () List!26559)

(declare-fun contains!4521 (List!26560 tuple2!25934) Bool)

(assert (=> b!2241945 (contains!4521 lt!834717 (tuple2!25935 lt!834715 lt!834729))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!49 (List!26560 (_ BitVec 64) List!26559) Unit!39453)

(assert (=> b!2241945 (= lt!834713 (lemmaGetValueByKeyImpliesContainsTuple!49 lt!834717 lt!834715 lt!834729))))

(assert (=> b!2241945 (= lt!834729 (apply!6536 (v!30105 (underlying!6536 (cache!3458 thiss!28603))) lt!834715))))

(assert (=> b!2241945 (= lt!834717 (toList!1400 (map!5486 (v!30105 (underlying!6536 (cache!3458 thiss!28603))))))))

(declare-fun lt!834714 () Unit!39453)

(declare-fun lt!834722 () Unit!39453)

(assert (=> b!2241945 (= lt!834714 lt!834722)))

(declare-fun lt!834718 () List!26560)

(declare-datatypes ((Option!5174 0))(
  ( (None!5173) (Some!5173 (v!30107 List!26559)) )
))
(declare-fun isDefined!4176 (Option!5174) Bool)

(declare-fun getValueByKey!102 (List!26560 (_ BitVec 64)) Option!5174)

(assert (=> b!2241945 (isDefined!4176 (getValueByKey!102 lt!834718 lt!834715))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!66 (List!26560 (_ BitVec 64)) Unit!39453)

(assert (=> b!2241945 (= lt!834722 (lemmaContainsKeyImpliesGetValueByKeyDefined!66 lt!834718 lt!834715))))

(assert (=> b!2241945 (= lt!834718 (toList!1400 (map!5486 (v!30105 (underlying!6536 (cache!3458 thiss!28603))))))))

(declare-fun lt!834723 () Unit!39453)

(declare-fun lt!834720 () Unit!39453)

(assert (=> b!2241945 (= lt!834723 lt!834720)))

(declare-fun lt!834725 () List!26560)

(declare-fun containsKey!97 (List!26560 (_ BitVec 64)) Bool)

(assert (=> b!2241945 (containsKey!97 lt!834725 lt!834715)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!49 (List!26560 (_ BitVec 64)) Unit!39453)

(assert (=> b!2241945 (= lt!834720 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!49 lt!834725 lt!834715))))

(assert (=> b!2241945 (= lt!834725 (toList!1400 (map!5486 (v!30105 (underlying!6536 (cache!3458 thiss!28603))))))))

(declare-fun e!1433714 () Unit!39453)

(declare-fun Unit!39458 () Unit!39453)

(assert (=> b!2241945 (= e!1433714 Unit!39458)))

(declare-fun b!2241946 () Bool)

(declare-fun lt!834710 () Unit!39453)

(assert (=> b!2241946 (= e!1433711 lt!834710)))

(assert (=> b!2241946 (= lt!834728 call!135346)))

(declare-fun lemmaInGenericMapThenInLongMap!48 (ListLongMap!367 tuple2!25930 Hashable!3077) Unit!39453)

(assert (=> b!2241946 (= lt!834710 (lemmaInGenericMapThenInLongMap!48 lt!834728 (tuple2!25931 ctx!36 a!922) (hashF!5000 (cache!3458 thiss!28603))))))

(declare-fun res!958057 () Bool)

(assert (=> b!2241946 (= res!958057 call!135343)))

(assert (=> b!2241946 (=> (not res!958057) (not e!1433710))))

(assert (=> b!2241946 e!1433710))

(declare-fun lambda!84873 () Int)

(declare-fun b!2241947 () Bool)

(declare-fun forallContained!795 (List!26560 Int tuple2!25934) Unit!39453)

(assert (=> b!2241947 (= e!1433709 (forallContained!795 (toList!1400 (map!5486 (v!30105 (underlying!6536 (cache!3458 thiss!28603))))) lambda!84873 (tuple2!25935 lt!834715 (apply!6536 (v!30105 (underlying!6536 (cache!3458 thiss!28603))) lt!834715))))))

(declare-fun c!356947 () Bool)

(assert (=> b!2241947 (= c!356947 (not (contains!4521 (toList!1400 (map!5486 (v!30105 (underlying!6536 (cache!3458 thiss!28603))))) (tuple2!25935 lt!834715 (apply!6536 (v!30105 (underlying!6536 (cache!3458 thiss!28603))) lt!834715)))))))

(declare-fun lt!834716 () Unit!39453)

(assert (=> b!2241947 (= lt!834716 e!1433714)))

(declare-fun bm!135343 () Bool)

(assert (=> bm!135343 (= call!135348 (hash!595 (hashF!5000 (cache!3458 thiss!28603)) (tuple2!25931 ctx!36 a!922)))))

(declare-fun b!2241948 () Bool)

(declare-fun Unit!39459 () Unit!39453)

(assert (=> b!2241948 (= e!1433714 Unit!39459)))

(assert (= (and d!665882 c!356948) b!2241947))

(assert (= (and d!665882 (not c!356948)) b!2241944))

(assert (= (and b!2241947 c!356947) b!2241945))

(assert (= (and b!2241947 (not c!356947)) b!2241948))

(assert (= (and d!665882 c!356946) b!2241946))

(assert (= (and d!665882 (not c!356946)) b!2241940))

(assert (= (and b!2241946 res!958057) b!2241939))

(assert (= (and b!2241940 res!958056) b!2241941))

(assert (= (and b!2241940 c!356945) b!2241943))

(assert (= (and b!2241940 (not c!356945)) b!2241942))

(assert (= (or b!2241946 b!2241940 b!2241941 b!2241943) bm!135338))

(assert (= (or b!2241946 b!2241939 b!2241940 b!2241941) bm!135343))

(assert (= (or b!2241939 b!2241941) bm!135340))

(assert (= (or b!2241946 b!2241940) bm!135342))

(assert (= (or b!2241939 b!2241941) bm!135341))

(assert (= (or b!2241939 b!2241941) bm!135339))

(assert (= (and d!665882 res!958058) b!2241938))

(declare-fun m!2674153 () Bool)

(assert (=> bm!135338 m!2674153))

(declare-fun m!2674155 () Bool)

(assert (=> b!2241946 m!2674155))

(declare-fun m!2674157 () Bool)

(assert (=> b!2241943 m!2674157))

(assert (=> b!2241943 m!2674157))

(declare-fun m!2674159 () Bool)

(assert (=> b!2241943 m!2674159))

(declare-fun m!2674161 () Bool)

(assert (=> b!2241943 m!2674161))

(declare-fun m!2674163 () Bool)

(assert (=> d!665882 m!2674163))

(declare-fun m!2674165 () Bool)

(assert (=> d!665882 m!2674165))

(declare-fun m!2674167 () Bool)

(assert (=> d!665882 m!2674167))

(declare-fun m!2674169 () Bool)

(assert (=> d!665882 m!2674169))

(assert (=> d!665882 m!2674153))

(assert (=> d!665882 m!2674145))

(assert (=> d!665882 m!2674143))

(assert (=> d!665882 m!2674163))

(assert (=> d!665882 m!2674145))

(declare-fun m!2674171 () Bool)

(assert (=> d!665882 m!2674171))

(assert (=> bm!135343 m!2674169))

(declare-fun m!2674173 () Bool)

(assert (=> bm!135340 m!2674173))

(declare-fun m!2674175 () Bool)

(assert (=> bm!135339 m!2674175))

(declare-fun m!2674177 () Bool)

(assert (=> b!2241938 m!2674177))

(assert (=> b!2241938 m!2674177))

(declare-fun m!2674179 () Bool)

(assert (=> b!2241938 m!2674179))

(assert (=> b!2241938 m!2674179))

(declare-fun m!2674181 () Bool)

(assert (=> b!2241938 m!2674181))

(declare-fun m!2674183 () Bool)

(assert (=> bm!135341 m!2674183))

(assert (=> b!2241947 m!2674153))

(assert (=> b!2241947 m!2674177))

(declare-fun m!2674185 () Bool)

(assert (=> b!2241947 m!2674185))

(declare-fun m!2674187 () Bool)

(assert (=> b!2241947 m!2674187))

(declare-fun m!2674189 () Bool)

(assert (=> bm!135342 m!2674189))

(assert (=> b!2241945 m!2674177))

(assert (=> b!2241945 m!2674153))

(declare-fun m!2674191 () Bool)

(assert (=> b!2241945 m!2674191))

(declare-fun m!2674193 () Bool)

(assert (=> b!2241945 m!2674193))

(declare-fun m!2674195 () Bool)

(assert (=> b!2241945 m!2674195))

(declare-fun m!2674197 () Bool)

(assert (=> b!2241945 m!2674197))

(declare-fun m!2674199 () Bool)

(assert (=> b!2241945 m!2674199))

(declare-fun m!2674201 () Bool)

(assert (=> b!2241945 m!2674201))

(assert (=> b!2241945 m!2674199))

(declare-fun m!2674203 () Bool)

(assert (=> b!2241945 m!2674203))

(assert (=> b!2241899 d!665882))

(declare-fun b!2241957 () Bool)

(declare-fun e!1433722 () Bool)

(declare-fun tp!707007 () Bool)

(assert (=> b!2241957 (= e!1433722 tp!707007)))

(declare-fun e!1433724 () Bool)

(assert (=> b!2241902 (= tp!706996 e!1433724)))

(declare-fun setIsEmpty!20650 () Bool)

(declare-fun setRes!20650 () Bool)

(assert (=> setIsEmpty!20650 setRes!20650))

(declare-fun tp!707009 () Bool)

(declare-fun e!1433723 () Bool)

(declare-fun b!2241958 () Bool)

(assert (=> b!2241958 (= e!1433724 (and (inv!35940 (_1!15475 (_1!15476 (h!31866 (zeroValue!3425 (v!30104 (underlying!6535 (v!30105 (underlying!6536 (cache!3458 thiss!28603)))))))))) e!1433723 tp_is_empty!10279 setRes!20650 tp!707009))))

(declare-fun condSetEmpty!20650 () Bool)

(assert (=> b!2241958 (= condSetEmpty!20650 (= (_2!15476 (h!31866 (zeroValue!3425 (v!30104 (underlying!6535 (v!30105 (underlying!6536 (cache!3458 thiss!28603)))))))) ((as const (Array Context!4154 Bool)) false)))))

(declare-fun setNonEmpty!20650 () Bool)

(declare-fun tp!707008 () Bool)

(declare-fun setElem!20650 () Context!4154)

(assert (=> setNonEmpty!20650 (= setRes!20650 (and tp!707008 (inv!35940 setElem!20650) e!1433722))))

(declare-fun setRest!20650 () (InoxSet Context!4154))

(assert (=> setNonEmpty!20650 (= (_2!15476 (h!31866 (zeroValue!3425 (v!30104 (underlying!6535 (v!30105 (underlying!6536 (cache!3458 thiss!28603)))))))) ((_ map or) (store ((as const (Array Context!4154 Bool)) false) setElem!20650 true) setRest!20650))))

(declare-fun b!2241959 () Bool)

(declare-fun tp!707010 () Bool)

(assert (=> b!2241959 (= e!1433723 tp!707010)))

(assert (= b!2241958 b!2241959))

(assert (= (and b!2241958 condSetEmpty!20650) setIsEmpty!20650))

(assert (= (and b!2241958 (not condSetEmpty!20650)) setNonEmpty!20650))

(assert (= setNonEmpty!20650 b!2241957))

(assert (= (and b!2241902 ((_ is Cons!26465) (zeroValue!3425 (v!30104 (underlying!6535 (v!30105 (underlying!6536 (cache!3458 thiss!28603)))))))) b!2241958))

(declare-fun m!2674205 () Bool)

(assert (=> b!2241958 m!2674205))

(declare-fun m!2674207 () Bool)

(assert (=> setNonEmpty!20650 m!2674207))

(declare-fun b!2241960 () Bool)

(declare-fun e!1433725 () Bool)

(declare-fun tp!707011 () Bool)

(assert (=> b!2241960 (= e!1433725 tp!707011)))

(declare-fun e!1433727 () Bool)

(assert (=> b!2241902 (= tp!706994 e!1433727)))

(declare-fun setIsEmpty!20651 () Bool)

(declare-fun setRes!20651 () Bool)

(assert (=> setIsEmpty!20651 setRes!20651))

(declare-fun e!1433726 () Bool)

(declare-fun b!2241961 () Bool)

(declare-fun tp!707013 () Bool)

(assert (=> b!2241961 (= e!1433727 (and (inv!35940 (_1!15475 (_1!15476 (h!31866 (minValue!3425 (v!30104 (underlying!6535 (v!30105 (underlying!6536 (cache!3458 thiss!28603)))))))))) e!1433726 tp_is_empty!10279 setRes!20651 tp!707013))))

(declare-fun condSetEmpty!20651 () Bool)

(assert (=> b!2241961 (= condSetEmpty!20651 (= (_2!15476 (h!31866 (minValue!3425 (v!30104 (underlying!6535 (v!30105 (underlying!6536 (cache!3458 thiss!28603)))))))) ((as const (Array Context!4154 Bool)) false)))))

(declare-fun setElem!20651 () Context!4154)

(declare-fun setNonEmpty!20651 () Bool)

(declare-fun tp!707012 () Bool)

(assert (=> setNonEmpty!20651 (= setRes!20651 (and tp!707012 (inv!35940 setElem!20651) e!1433725))))

(declare-fun setRest!20651 () (InoxSet Context!4154))

(assert (=> setNonEmpty!20651 (= (_2!15476 (h!31866 (minValue!3425 (v!30104 (underlying!6535 (v!30105 (underlying!6536 (cache!3458 thiss!28603)))))))) ((_ map or) (store ((as const (Array Context!4154 Bool)) false) setElem!20651 true) setRest!20651))))

(declare-fun b!2241962 () Bool)

(declare-fun tp!707014 () Bool)

(assert (=> b!2241962 (= e!1433726 tp!707014)))

(assert (= b!2241961 b!2241962))

(assert (= (and b!2241961 condSetEmpty!20651) setIsEmpty!20651))

(assert (= (and b!2241961 (not condSetEmpty!20651)) setNonEmpty!20651))

(assert (= setNonEmpty!20651 b!2241960))

(assert (= (and b!2241902 ((_ is Cons!26465) (minValue!3425 (v!30104 (underlying!6535 (v!30105 (underlying!6536 (cache!3458 thiss!28603)))))))) b!2241961))

(declare-fun m!2674209 () Bool)

(assert (=> b!2241961 m!2674209))

(declare-fun m!2674211 () Bool)

(assert (=> setNonEmpty!20651 m!2674211))

(declare-fun b!2241967 () Bool)

(declare-fun e!1433730 () Bool)

(declare-fun tp!707019 () Bool)

(declare-fun tp!707020 () Bool)

(assert (=> b!2241967 (= e!1433730 (and tp!707019 tp!707020))))

(assert (=> b!2241906 (= tp!706991 e!1433730)))

(assert (= (and b!2241906 ((_ is Cons!26464) (exprs!2577 ctx!36))) b!2241967))

(declare-fun setIsEmpty!20656 () Bool)

(declare-fun setRes!20657 () Bool)

(assert (=> setIsEmpty!20656 setRes!20657))

(declare-fun setIsEmpty!20657 () Bool)

(declare-fun setRes!20656 () Bool)

(assert (=> setIsEmpty!20657 setRes!20656))

(declare-fun b!2241982 () Bool)

(declare-fun e!1433746 () Bool)

(declare-fun tp!707047 () Bool)

(assert (=> b!2241982 (= e!1433746 tp!707047)))

(declare-fun b!2241983 () Bool)

(declare-fun e!1433747 () Bool)

(declare-fun tp!707043 () Bool)

(assert (=> b!2241983 (= e!1433747 tp!707043)))

(declare-fun setElem!20656 () Context!4154)

(declare-fun setNonEmpty!20657 () Bool)

(declare-fun e!1433743 () Bool)

(declare-fun tp!707039 () Bool)

(assert (=> setNonEmpty!20657 (= setRes!20657 (and tp!707039 (inv!35940 setElem!20656) e!1433743))))

(declare-fun mapValue!14837 () List!26559)

(declare-fun setRest!20657 () (InoxSet Context!4154))

(assert (=> setNonEmpty!20657 (= (_2!15476 (h!31866 mapValue!14837)) ((_ map or) (store ((as const (Array Context!4154 Bool)) false) setElem!20656 true) setRest!20657))))

(declare-fun tp!707041 () Bool)

(declare-fun mapDefault!14837 () List!26559)

(declare-fun b!2241984 () Bool)

(declare-fun e!1433745 () Bool)

(assert (=> b!2241984 (= e!1433745 (and (inv!35940 (_1!15475 (_1!15476 (h!31866 mapDefault!14837)))) e!1433746 tp_is_empty!10279 setRes!20656 tp!707041))))

(declare-fun condSetEmpty!20657 () Bool)

(assert (=> b!2241984 (= condSetEmpty!20657 (= (_2!15476 (h!31866 mapDefault!14837)) ((as const (Array Context!4154 Bool)) false)))))

(declare-fun tp!707046 () Bool)

(declare-fun e!1433748 () Bool)

(declare-fun b!2241985 () Bool)

(assert (=> b!2241985 (= e!1433748 (and (inv!35940 (_1!15475 (_1!15476 (h!31866 mapValue!14837)))) e!1433747 tp_is_empty!10279 setRes!20657 tp!707046))))

(declare-fun condSetEmpty!20656 () Bool)

(assert (=> b!2241985 (= condSetEmpty!20656 (= (_2!15476 (h!31866 mapValue!14837)) ((as const (Array Context!4154 Bool)) false)))))

(declare-fun b!2241986 () Bool)

(declare-fun e!1433744 () Bool)

(declare-fun tp!707042 () Bool)

(assert (=> b!2241986 (= e!1433744 tp!707042)))

(declare-fun mapNonEmpty!14837 () Bool)

(declare-fun mapRes!14837 () Bool)

(declare-fun tp!707045 () Bool)

(assert (=> mapNonEmpty!14837 (= mapRes!14837 (and tp!707045 e!1433748))))

(declare-fun mapRest!14837 () (Array (_ BitVec 32) List!26559))

(declare-fun mapKey!14837 () (_ BitVec 32))

(assert (=> mapNonEmpty!14837 (= mapRest!14834 (store mapRest!14837 mapKey!14837 mapValue!14837))))

(declare-fun condMapEmpty!14837 () Bool)

(assert (=> mapNonEmpty!14834 (= condMapEmpty!14837 (= mapRest!14834 ((as const (Array (_ BitVec 32) List!26559)) mapDefault!14837)))))

(assert (=> mapNonEmpty!14834 (= tp!706995 (and e!1433745 mapRes!14837))))

(declare-fun tp!707040 () Bool)

(declare-fun setElem!20657 () Context!4154)

(declare-fun setNonEmpty!20656 () Bool)

(assert (=> setNonEmpty!20656 (= setRes!20656 (and tp!707040 (inv!35940 setElem!20657) e!1433744))))

(declare-fun setRest!20656 () (InoxSet Context!4154))

(assert (=> setNonEmpty!20656 (= (_2!15476 (h!31866 mapDefault!14837)) ((_ map or) (store ((as const (Array Context!4154 Bool)) false) setElem!20657 true) setRest!20656))))

(declare-fun mapIsEmpty!14837 () Bool)

(assert (=> mapIsEmpty!14837 mapRes!14837))

(declare-fun b!2241987 () Bool)

(declare-fun tp!707044 () Bool)

(assert (=> b!2241987 (= e!1433743 tp!707044)))

(assert (= (and mapNonEmpty!14834 condMapEmpty!14837) mapIsEmpty!14837))

(assert (= (and mapNonEmpty!14834 (not condMapEmpty!14837)) mapNonEmpty!14837))

(assert (= b!2241985 b!2241983))

(assert (= (and b!2241985 condSetEmpty!20656) setIsEmpty!20656))

(assert (= (and b!2241985 (not condSetEmpty!20656)) setNonEmpty!20657))

(assert (= setNonEmpty!20657 b!2241987))

(assert (= (and mapNonEmpty!14837 ((_ is Cons!26465) mapValue!14837)) b!2241985))

(assert (= b!2241984 b!2241982))

(assert (= (and b!2241984 condSetEmpty!20657) setIsEmpty!20657))

(assert (= (and b!2241984 (not condSetEmpty!20657)) setNonEmpty!20656))

(assert (= setNonEmpty!20656 b!2241986))

(assert (= (and mapNonEmpty!14834 ((_ is Cons!26465) mapDefault!14837)) b!2241984))

(declare-fun m!2674213 () Bool)

(assert (=> b!2241985 m!2674213))

(declare-fun m!2674215 () Bool)

(assert (=> setNonEmpty!20657 m!2674215))

(declare-fun m!2674217 () Bool)

(assert (=> b!2241984 m!2674217))

(declare-fun m!2674219 () Bool)

(assert (=> setNonEmpty!20656 m!2674219))

(declare-fun m!2674221 () Bool)

(assert (=> mapNonEmpty!14837 m!2674221))

(declare-fun b!2241988 () Bool)

(declare-fun e!1433749 () Bool)

(declare-fun tp!707048 () Bool)

(assert (=> b!2241988 (= e!1433749 tp!707048)))

(declare-fun e!1433751 () Bool)

(assert (=> mapNonEmpty!14834 (= tp!706993 e!1433751)))

(declare-fun setIsEmpty!20658 () Bool)

(declare-fun setRes!20658 () Bool)

(assert (=> setIsEmpty!20658 setRes!20658))

(declare-fun tp!707050 () Bool)

(declare-fun b!2241989 () Bool)

(declare-fun e!1433750 () Bool)

(assert (=> b!2241989 (= e!1433751 (and (inv!35940 (_1!15475 (_1!15476 (h!31866 mapValue!14834)))) e!1433750 tp_is_empty!10279 setRes!20658 tp!707050))))

(declare-fun condSetEmpty!20658 () Bool)

(assert (=> b!2241989 (= condSetEmpty!20658 (= (_2!15476 (h!31866 mapValue!14834)) ((as const (Array Context!4154 Bool)) false)))))

(declare-fun tp!707049 () Bool)

(declare-fun setElem!20658 () Context!4154)

(declare-fun setNonEmpty!20658 () Bool)

(assert (=> setNonEmpty!20658 (= setRes!20658 (and tp!707049 (inv!35940 setElem!20658) e!1433749))))

(declare-fun setRest!20658 () (InoxSet Context!4154))

(assert (=> setNonEmpty!20658 (= (_2!15476 (h!31866 mapValue!14834)) ((_ map or) (store ((as const (Array Context!4154 Bool)) false) setElem!20658 true) setRest!20658))))

(declare-fun b!2241990 () Bool)

(declare-fun tp!707051 () Bool)

(assert (=> b!2241990 (= e!1433750 tp!707051)))

(assert (= b!2241989 b!2241990))

(assert (= (and b!2241989 condSetEmpty!20658) setIsEmpty!20658))

(assert (= (and b!2241989 (not condSetEmpty!20658)) setNonEmpty!20658))

(assert (= setNonEmpty!20658 b!2241988))

(assert (= (and mapNonEmpty!14834 ((_ is Cons!26465) mapValue!14834)) b!2241989))

(declare-fun m!2674223 () Bool)

(assert (=> b!2241989 m!2674223))

(declare-fun m!2674225 () Bool)

(assert (=> setNonEmpty!20658 m!2674225))

(declare-fun b!2241991 () Bool)

(declare-fun e!1433752 () Bool)

(declare-fun tp!707052 () Bool)

(assert (=> b!2241991 (= e!1433752 tp!707052)))

(declare-fun e!1433754 () Bool)

(assert (=> b!2241903 (= tp!706998 e!1433754)))

(declare-fun setIsEmpty!20659 () Bool)

(declare-fun setRes!20659 () Bool)

(assert (=> setIsEmpty!20659 setRes!20659))

(declare-fun b!2241992 () Bool)

(declare-fun tp!707054 () Bool)

(declare-fun e!1433753 () Bool)

(assert (=> b!2241992 (= e!1433754 (and (inv!35940 (_1!15475 (_1!15476 (h!31866 mapDefault!14834)))) e!1433753 tp_is_empty!10279 setRes!20659 tp!707054))))

(declare-fun condSetEmpty!20659 () Bool)

(assert (=> b!2241992 (= condSetEmpty!20659 (= (_2!15476 (h!31866 mapDefault!14834)) ((as const (Array Context!4154 Bool)) false)))))

(declare-fun setElem!20659 () Context!4154)

(declare-fun tp!707053 () Bool)

(declare-fun setNonEmpty!20659 () Bool)

(assert (=> setNonEmpty!20659 (= setRes!20659 (and tp!707053 (inv!35940 setElem!20659) e!1433752))))

(declare-fun setRest!20659 () (InoxSet Context!4154))

(assert (=> setNonEmpty!20659 (= (_2!15476 (h!31866 mapDefault!14834)) ((_ map or) (store ((as const (Array Context!4154 Bool)) false) setElem!20659 true) setRest!20659))))

(declare-fun b!2241993 () Bool)

(declare-fun tp!707055 () Bool)

(assert (=> b!2241993 (= e!1433753 tp!707055)))

(assert (= b!2241992 b!2241993))

(assert (= (and b!2241992 condSetEmpty!20659) setIsEmpty!20659))

(assert (= (and b!2241992 (not condSetEmpty!20659)) setNonEmpty!20659))

(assert (= setNonEmpty!20659 b!2241991))

(assert (= (and b!2241903 ((_ is Cons!26465) mapDefault!14834)) b!2241992))

(declare-fun m!2674227 () Bool)

(assert (=> b!2241992 m!2674227))

(declare-fun m!2674229 () Bool)

(assert (=> setNonEmpty!20659 m!2674229))

(check-sat (not b!2241987) (not b!2241967) (not d!665882) (not bm!135343) (not bm!135338) (not b!2241912) (not b!2241957) (not b!2241985) (not b!2241983) (not bm!135342) (not b!2241990) (not setNonEmpty!20658) (not b!2241962) (not b!2241959) (not b!2241938) (not b_next!65835) (not b!2241961) b_and!175157 (not setNonEmpty!20651) b_and!175159 (not setNonEmpty!20659) (not b!2241946) (not bm!135341) (not b!2241958) (not b!2241947) (not b!2241982) (not b!2241986) (not setNonEmpty!20656) (not b!2241915) tp_is_empty!10279 (not bm!135339) (not b!2241911) (not mapNonEmpty!14837) (not bm!135340) (not d!665876) (not b_next!65833) (not b!2241984) (not b!2241992) (not b!2241960) (not b!2241993) (not d!665880) (not setNonEmpty!20657) (not b!2241989) (not setNonEmpty!20650) (not b!2241988) (not b!2241943) (not b!2241945) (not b!2241991))
(check-sat b_and!175157 b_and!175159 (not b_next!65835) (not b_next!65833))
