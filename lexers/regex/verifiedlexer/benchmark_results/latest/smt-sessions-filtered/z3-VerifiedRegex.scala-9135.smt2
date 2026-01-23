; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487762 () Bool)

(assert start!487762)

(declare-fun b!4767307 () Bool)

(declare-fun b_free!129659 () Bool)

(declare-fun b_next!130449 () Bool)

(assert (=> b!4767307 (= b_free!129659 (not b_next!130449))))

(declare-fun tp!1355577 () Bool)

(declare-fun b_and!341375 () Bool)

(assert (=> b!4767307 (= tp!1355577 b_and!341375)))

(declare-fun b!4767298 () Bool)

(declare-fun b_free!129661 () Bool)

(declare-fun b_next!130451 () Bool)

(assert (=> b!4767298 (= b_free!129661 (not b_next!130451))))

(declare-fun tp!1355580 () Bool)

(declare-fun b_and!341377 () Bool)

(assert (=> b!4767298 (= tp!1355580 b_and!341377)))

(declare-fun b!4767297 () Bool)

(declare-fun e!2975656 () Bool)

(declare-fun e!2975653 () Bool)

(assert (=> b!4767297 (= e!2975656 e!2975653)))

(declare-fun e!2975649 () Bool)

(declare-fun e!2975647 () Bool)

(assert (=> b!4767298 (= e!2975649 (and e!2975647 tp!1355580))))

(declare-fun b!4767299 () Bool)

(declare-datatypes ((Unit!138264 0))(
  ( (Unit!138265) )
))
(declare-fun e!2975654 () Unit!138264)

(declare-fun Unit!138266 () Unit!138264)

(assert (=> b!4767299 (= e!2975654 Unit!138266)))

(declare-fun b!4767300 () Bool)

(declare-fun e!2975651 () Bool)

(declare-datatypes ((K!14964 0))(
  ( (K!14965 (val!20277 Int)) )
))
(declare-datatypes ((V!15210 0))(
  ( (V!15211 (val!20278 Int)) )
))
(declare-datatypes ((tuple2!55538 0))(
  ( (tuple2!55539 (_1!31063 K!14964) (_2!31063 V!15210)) )
))
(declare-datatypes ((array!18034 0))(
  ( (array!18035 (arr!8043 (Array (_ BitVec 32) (_ BitVec 64))) (size!36273 (_ BitVec 32))) )
))
(declare-datatypes ((List!53614 0))(
  ( (Nil!53490) (Cons!53490 (h!59902 tuple2!55538) (t!361038 List!53614)) )
))
(declare-datatypes ((array!18036 0))(
  ( (array!18037 (arr!8044 (Array (_ BitVec 32) List!53614)) (size!36274 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6590 0))(
  ( (HashableExt!6589 (__x!32535 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9858 0))(
  ( (LongMapFixedSize!9859 (defaultEntry!5347 Int) (mask!14689 (_ BitVec 32)) (extraKeys!5204 (_ BitVec 32)) (zeroValue!5217 List!53614) (minValue!5217 List!53614) (_size!9883 (_ BitVec 32)) (_keys!5271 array!18034) (_values!5242 array!18036) (_vacant!4994 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19481 0))(
  ( (Cell!19482 (v!47675 LongMapFixedSize!9858)) )
))
(declare-datatypes ((MutLongMap!4929 0))(
  ( (LongMap!4929 (underlying!10065 Cell!19481)) (MutLongMapExt!4928 (__x!32536 Int)) )
))
(declare-datatypes ((Cell!19483 0))(
  ( (Cell!19484 (v!47676 MutLongMap!4929)) )
))
(declare-datatypes ((MutableMap!4813 0))(
  ( (MutableMapExt!4812 (__x!32537 Int)) (HashMap!4813 (underlying!10066 Cell!19483) (hashF!12445 Hashable!6590) (_size!9884 (_ BitVec 32)) (defaultValue!4984 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4813)

(get-info :version)

(assert (=> b!4767300 (= e!2975651 ((_ is LongMap!4929) (v!47676 (underlying!10066 thiss!42052))))))

(declare-fun res!2021912 () Bool)

(declare-fun e!2975648 () Bool)

(assert (=> start!487762 (=> (not res!2021912) (not e!2975648))))

(assert (=> start!487762 (= res!2021912 ((_ is HashMap!4813) thiss!42052))))

(assert (=> start!487762 e!2975648))

(assert (=> start!487762 e!2975649))

(declare-fun tp_is_empty!32453 () Bool)

(assert (=> start!487762 tp_is_empty!32453))

(declare-fun b!4767301 () Bool)

(declare-fun res!2021915 () Bool)

(assert (=> b!4767301 (=> (not res!2021915) (not e!2975648))))

(declare-fun key!1776 () K!14964)

(declare-fun contains!16840 (MutableMap!4813 K!14964) Bool)

(assert (=> b!4767301 (= res!2021915 (contains!16840 thiss!42052 key!1776))))

(declare-fun b!4767302 () Bool)

(declare-fun e!2975652 () Bool)

(declare-fun tp!1355579 () Bool)

(declare-fun mapRes!21870 () Bool)

(assert (=> b!4767302 (= e!2975652 (and tp!1355579 mapRes!21870))))

(declare-fun condMapEmpty!21870 () Bool)

(declare-fun mapDefault!21870 () List!53614)

(assert (=> b!4767302 (= condMapEmpty!21870 (= (arr!8044 (_values!5242 (v!47675 (underlying!10065 (v!47676 (underlying!10066 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53614)) mapDefault!21870)))))

(declare-fun b!4767303 () Bool)

(declare-fun res!2021913 () Bool)

(assert (=> b!4767303 (=> (not res!2021913) (not e!2975648))))

(declare-fun valid!3931 (MutableMap!4813) Bool)

(assert (=> b!4767303 (= res!2021913 (valid!3931 thiss!42052))))

(declare-fun b!4767304 () Bool)

(declare-fun Unit!138267 () Unit!138264)

(assert (=> b!4767304 (= e!2975654 Unit!138267)))

(declare-fun lt!1930124 () Unit!138264)

(declare-datatypes ((tuple2!55540 0))(
  ( (tuple2!55541 (_1!31064 (_ BitVec 64)) (_2!31064 List!53614)) )
))
(declare-datatypes ((List!53615 0))(
  ( (Nil!53491) (Cons!53491 (h!59903 tuple2!55540) (t!361039 List!53615)) )
))
(declare-datatypes ((ListLongMap!4691 0))(
  ( (ListLongMap!4692 (toList!6293 List!53615)) )
))
(declare-fun lt!1930127 () ListLongMap!4691)

(declare-fun lt!1930111 () (_ BitVec 64))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1989 (List!53615 (_ BitVec 64)) Unit!138264)

(assert (=> b!4767304 (= lt!1930124 (lemmaContainsKeyImpliesGetValueByKeyDefined!1989 (toList!6293 lt!1930127) lt!1930111))))

(declare-datatypes ((Option!12678 0))(
  ( (None!12677) (Some!12677 (v!47677 List!53614)) )
))
(declare-fun isDefined!9842 (Option!12678) Bool)

(declare-fun getValueByKey!2183 (List!53615 (_ BitVec 64)) Option!12678)

(assert (=> b!4767304 (isDefined!9842 (getValueByKey!2183 (toList!6293 lt!1930127) lt!1930111))))

(declare-fun lt!1930117 () Unit!138264)

(declare-fun lt!1930118 () List!53614)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!932 (List!53615 (_ BitVec 64) List!53614) Unit!138264)

(assert (=> b!4767304 (= lt!1930117 (lemmaGetValueByKeyImpliesContainsTuple!932 (toList!6293 lt!1930127) lt!1930111 lt!1930118))))

(assert (=> b!4767304 false))

(declare-fun b!4767305 () Bool)

(declare-fun e!2975655 () Bool)

(declare-datatypes ((Option!12679 0))(
  ( (None!12678) (Some!12678 (v!47678 tuple2!55538)) )
))
(declare-fun lt!1930126 () Option!12679)

(declare-fun get!18039 (Option!12679) tuple2!55538)

(declare-datatypes ((Option!12680 0))(
  ( (None!12679) (Some!12679 (v!47679 V!15210)) )
))
(declare-fun get!18040 (Option!12680) V!15210)

(declare-fun getValueByKey!2184 (List!53614 K!14964) Option!12680)

(declare-datatypes ((ListMap!5789 0))(
  ( (ListMap!5790 (toList!6294 List!53614)) )
))
(declare-fun extractMap!2146 (List!53615) ListMap!5789)

(assert (=> b!4767305 (= e!2975655 (= (_2!31063 (get!18039 lt!1930126)) (get!18040 (getValueByKey!2184 (toList!6294 (extractMap!2146 (toList!6293 lt!1930127))) key!1776))))))

(declare-fun mapNonEmpty!21870 () Bool)

(declare-fun tp!1355578 () Bool)

(declare-fun tp!1355581 () Bool)

(assert (=> mapNonEmpty!21870 (= mapRes!21870 (and tp!1355578 tp!1355581))))

(declare-fun mapKey!21870 () (_ BitVec 32))

(declare-fun mapRest!21870 () (Array (_ BitVec 32) List!53614))

(declare-fun mapValue!21870 () List!53614)

(assert (=> mapNonEmpty!21870 (= (arr!8044 (_values!5242 (v!47675 (underlying!10065 (v!47676 (underlying!10066 thiss!42052)))))) (store mapRest!21870 mapKey!21870 mapValue!21870))))

(declare-fun b!4767306 () Bool)

(declare-fun e!2975650 () Bool)

(assert (=> b!4767306 (= e!2975653 e!2975650)))

(declare-fun mapIsEmpty!21870 () Bool)

(assert (=> mapIsEmpty!21870 mapRes!21870))

(declare-fun tp!1355576 () Bool)

(declare-fun tp!1355575 () Bool)

(declare-fun array_inv!5789 (array!18034) Bool)

(declare-fun array_inv!5790 (array!18036) Bool)

(assert (=> b!4767307 (= e!2975650 (and tp!1355577 tp!1355575 tp!1355576 (array_inv!5789 (_keys!5271 (v!47675 (underlying!10065 (v!47676 (underlying!10066 thiss!42052)))))) (array_inv!5790 (_values!5242 (v!47675 (underlying!10065 (v!47676 (underlying!10066 thiss!42052)))))) e!2975652))))

(declare-fun b!4767308 () Bool)

(declare-fun lt!1930123 () MutLongMap!4929)

(assert (=> b!4767308 (= e!2975647 (and e!2975656 ((_ is LongMap!4929) lt!1930123)))))

(assert (=> b!4767308 (= lt!1930123 (v!47676 (underlying!10066 thiss!42052)))))

(declare-fun b!4767309 () Bool)

(assert (=> b!4767309 (= e!2975648 (not e!2975651))))

(declare-fun res!2021916 () Bool)

(assert (=> b!4767309 (=> res!2021916 e!2975651)))

(declare-fun lt!1930113 () tuple2!55538)

(declare-fun map!11991 (MutableMap!4813) ListMap!5789)

(assert (=> b!4767309 (= res!2021916 (not (= (_2!31063 lt!1930113) (get!18040 (getValueByKey!2184 (toList!6294 (map!11991 thiss!42052)) key!1776)))))))

(assert (=> b!4767309 e!2975655))

(declare-fun res!2021914 () Bool)

(assert (=> b!4767309 (=> (not res!2021914) (not e!2975655))))

(declare-fun isDefined!9843 (Option!12679) Bool)

(assert (=> b!4767309 (= res!2021914 (isDefined!9843 lt!1930126))))

(declare-fun lt!1930119 () List!53614)

(declare-fun getPair!647 (List!53614 K!14964) Option!12679)

(assert (=> b!4767309 (= lt!1930126 (getPair!647 lt!1930119 key!1776))))

(declare-fun lt!1930121 () tuple2!55540)

(declare-fun lt!1930112 () Unit!138264)

(declare-fun lambda!224472 () Int)

(declare-fun forallContained!3864 (List!53615 Int tuple2!55540) Unit!138264)

(assert (=> b!4767309 (= lt!1930112 (forallContained!3864 (toList!6293 lt!1930127) lambda!224472 lt!1930121))))

(declare-fun lt!1930125 () Unit!138264)

(declare-fun lemmaInGenMapThenGetPairDefined!430 (ListLongMap!4691 K!14964 Hashable!6590) Unit!138264)

(assert (=> b!4767309 (= lt!1930125 (lemmaInGenMapThenGetPairDefined!430 lt!1930127 key!1776 (hashF!12445 thiss!42052)))))

(declare-fun lt!1930110 () Unit!138264)

(assert (=> b!4767309 (= lt!1930110 (forallContained!3864 (toList!6293 lt!1930127) lambda!224472 lt!1930121))))

(declare-fun contains!16841 (List!53615 tuple2!55540) Bool)

(assert (=> b!4767309 (contains!16841 (toList!6293 lt!1930127) lt!1930121)))

(assert (=> b!4767309 (= lt!1930121 (tuple2!55541 lt!1930111 lt!1930119))))

(declare-fun lt!1930122 () Unit!138264)

(declare-fun lemmaGetValueImpliesTupleContained!439 (ListLongMap!4691 (_ BitVec 64) List!53614) Unit!138264)

(assert (=> b!4767309 (= lt!1930122 (lemmaGetValueImpliesTupleContained!439 lt!1930127 lt!1930111 lt!1930119))))

(declare-fun apply!12631 (ListLongMap!4691 (_ BitVec 64)) List!53614)

(assert (=> b!4767309 (= lt!1930119 (apply!12631 lt!1930127 lt!1930111))))

(declare-fun contains!16842 (ListLongMap!4691 (_ BitVec 64)) Bool)

(assert (=> b!4767309 (contains!16842 lt!1930127 lt!1930111)))

(declare-fun lt!1930115 () Unit!138264)

(declare-fun lemmaInGenMapThenLongMapContainsHash!840 (ListLongMap!4691 K!14964 Hashable!6590) Unit!138264)

(assert (=> b!4767309 (= lt!1930115 (lemmaInGenMapThenLongMapContainsHash!840 lt!1930127 key!1776 (hashF!12445 thiss!42052)))))

(declare-fun lt!1930114 () Unit!138264)

(declare-fun lemmaGetPairGetSameValueAsMap!62 (ListLongMap!4691 K!14964 V!15210 Hashable!6590) Unit!138264)

(assert (=> b!4767309 (= lt!1930114 (lemmaGetPairGetSameValueAsMap!62 lt!1930127 key!1776 (_2!31063 lt!1930113) (hashF!12445 thiss!42052)))))

(assert (=> b!4767309 (= lt!1930113 (get!18039 (getPair!647 lt!1930118 key!1776)))))

(declare-fun lt!1930116 () Unit!138264)

(declare-fun lt!1930120 () tuple2!55540)

(assert (=> b!4767309 (= lt!1930116 (forallContained!3864 (toList!6293 lt!1930127) lambda!224472 lt!1930120))))

(declare-fun lt!1930109 () Unit!138264)

(assert (=> b!4767309 (= lt!1930109 e!2975654)))

(declare-fun c!813199 () Bool)

(assert (=> b!4767309 (= c!813199 (not (contains!16841 (toList!6293 lt!1930127) lt!1930120)))))

(assert (=> b!4767309 (= lt!1930120 (tuple2!55541 lt!1930111 lt!1930118))))

(declare-fun apply!12632 (MutLongMap!4929 (_ BitVec 64)) List!53614)

(assert (=> b!4767309 (= lt!1930118 (apply!12632 (v!47676 (underlying!10066 thiss!42052)) lt!1930111))))

(declare-fun map!11992 (MutLongMap!4929) ListLongMap!4691)

(assert (=> b!4767309 (= lt!1930127 (map!11992 (v!47676 (underlying!10066 thiss!42052))))))

(declare-fun hash!4572 (Hashable!6590 K!14964) (_ BitVec 64))

(assert (=> b!4767309 (= lt!1930111 (hash!4572 (hashF!12445 thiss!42052) key!1776))))

(assert (= (and start!487762 res!2021912) b!4767303))

(assert (= (and b!4767303 res!2021913) b!4767301))

(assert (= (and b!4767301 res!2021915) b!4767309))

(assert (= (and b!4767309 c!813199) b!4767304))

(assert (= (and b!4767309 (not c!813199)) b!4767299))

(assert (= (and b!4767309 res!2021914) b!4767305))

(assert (= (and b!4767309 (not res!2021916)) b!4767300))

(assert (= (and b!4767302 condMapEmpty!21870) mapIsEmpty!21870))

(assert (= (and b!4767302 (not condMapEmpty!21870)) mapNonEmpty!21870))

(assert (= b!4767307 b!4767302))

(assert (= b!4767306 b!4767307))

(assert (= b!4767297 b!4767306))

(assert (= (and b!4767308 ((_ is LongMap!4929) (v!47676 (underlying!10066 thiss!42052)))) b!4767297))

(assert (= b!4767298 b!4767308))

(assert (= (and start!487762 ((_ is HashMap!4813) thiss!42052)) b!4767298))

(declare-fun m!5738414 () Bool)

(assert (=> b!4767307 m!5738414))

(declare-fun m!5738416 () Bool)

(assert (=> b!4767307 m!5738416))

(declare-fun m!5738418 () Bool)

(assert (=> mapNonEmpty!21870 m!5738418))

(declare-fun m!5738420 () Bool)

(assert (=> b!4767301 m!5738420))

(declare-fun m!5738422 () Bool)

(assert (=> b!4767305 m!5738422))

(declare-fun m!5738424 () Bool)

(assert (=> b!4767305 m!5738424))

(declare-fun m!5738426 () Bool)

(assert (=> b!4767305 m!5738426))

(assert (=> b!4767305 m!5738426))

(declare-fun m!5738428 () Bool)

(assert (=> b!4767305 m!5738428))

(declare-fun m!5738430 () Bool)

(assert (=> b!4767304 m!5738430))

(declare-fun m!5738432 () Bool)

(assert (=> b!4767304 m!5738432))

(assert (=> b!4767304 m!5738432))

(declare-fun m!5738434 () Bool)

(assert (=> b!4767304 m!5738434))

(declare-fun m!5738436 () Bool)

(assert (=> b!4767304 m!5738436))

(declare-fun m!5738438 () Bool)

(assert (=> b!4767303 m!5738438))

(declare-fun m!5738440 () Bool)

(assert (=> b!4767309 m!5738440))

(declare-fun m!5738442 () Bool)

(assert (=> b!4767309 m!5738442))

(declare-fun m!5738444 () Bool)

(assert (=> b!4767309 m!5738444))

(declare-fun m!5738446 () Bool)

(assert (=> b!4767309 m!5738446))

(declare-fun m!5738448 () Bool)

(assert (=> b!4767309 m!5738448))

(declare-fun m!5738450 () Bool)

(assert (=> b!4767309 m!5738450))

(declare-fun m!5738452 () Bool)

(assert (=> b!4767309 m!5738452))

(assert (=> b!4767309 m!5738450))

(declare-fun m!5738454 () Bool)

(assert (=> b!4767309 m!5738454))

(declare-fun m!5738456 () Bool)

(assert (=> b!4767309 m!5738456))

(declare-fun m!5738458 () Bool)

(assert (=> b!4767309 m!5738458))

(declare-fun m!5738460 () Bool)

(assert (=> b!4767309 m!5738460))

(declare-fun m!5738462 () Bool)

(assert (=> b!4767309 m!5738462))

(assert (=> b!4767309 m!5738460))

(declare-fun m!5738464 () Bool)

(assert (=> b!4767309 m!5738464))

(declare-fun m!5738466 () Bool)

(assert (=> b!4767309 m!5738466))

(declare-fun m!5738468 () Bool)

(assert (=> b!4767309 m!5738468))

(assert (=> b!4767309 m!5738462))

(declare-fun m!5738470 () Bool)

(assert (=> b!4767309 m!5738470))

(declare-fun m!5738472 () Bool)

(assert (=> b!4767309 m!5738472))

(declare-fun m!5738474 () Bool)

(assert (=> b!4767309 m!5738474))

(declare-fun m!5738476 () Bool)

(assert (=> b!4767309 m!5738476))

(declare-fun m!5738478 () Bool)

(assert (=> b!4767309 m!5738478))

(check-sat (not b!4767303) (not b!4767304) (not mapNonEmpty!21870) (not b!4767307) (not b!4767305) b_and!341377 (not b!4767309) tp_is_empty!32453 (not b_next!130451) b_and!341375 (not b_next!130449) (not b!4767301) (not b!4767302))
(check-sat b_and!341377 b_and!341375 (not b_next!130451) (not b_next!130449))
