; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241796 () Bool)

(assert start!241796)

(declare-fun b!2478409 () Bool)

(declare-fun b_free!72073 () Bool)

(declare-fun b_next!72777 () Bool)

(assert (=> b!2478409 (= b_free!72073 (not b_next!72777))))

(declare-fun tp!793109 () Bool)

(declare-fun b_and!188309 () Bool)

(assert (=> b!2478409 (= tp!793109 b_and!188309)))

(declare-fun b!2478407 () Bool)

(declare-fun b_free!72075 () Bool)

(declare-fun b_next!72779 () Bool)

(assert (=> b!2478407 (= b_free!72075 (not b_next!72779))))

(declare-fun tp!793104 () Bool)

(declare-fun b_and!188311 () Bool)

(assert (=> b!2478407 (= tp!793104 b_and!188311)))

(declare-fun b!2478400 () Bool)

(declare-fun e!1572766 () Bool)

(declare-fun e!1572771 () Bool)

(declare-datatypes ((K!5345 0))(
  ( (K!5346 (val!8751 Int)) )
))
(declare-datatypes ((V!5547 0))(
  ( (V!5548 (val!8752 Int)) )
))
(declare-datatypes ((tuple2!28470 0))(
  ( (tuple2!28471 (_1!16776 K!5345) (_2!16776 V!5547)) )
))
(declare-datatypes ((List!29100 0))(
  ( (Nil!29000) (Cons!29000 (h!34402 tuple2!28470) (t!210747 List!29100)) )
))
(declare-datatypes ((array!11663 0))(
  ( (array!11664 (arr!5198 (Array (_ BitVec 32) List!29100)) (size!22617 (_ BitVec 32))) )
))
(declare-datatypes ((array!11665 0))(
  ( (array!11666 (arr!5199 (Array (_ BitVec 32) (_ BitVec 64))) (size!22618 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6608 0))(
  ( (LongMapFixedSize!6609 (defaultEntry!3678 Int) (mask!8445 (_ BitVec 32)) (extraKeys!3552 (_ BitVec 32)) (zeroValue!3562 List!29100) (minValue!3562 List!29100) (_size!6655 (_ BitVec 32)) (_keys!3601 array!11665) (_values!3584 array!11663) (_vacant!3365 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13033 0))(
  ( (Cell!13034 (v!31294 LongMapFixedSize!6608)) )
))
(declare-datatypes ((MutLongMap!3304 0))(
  ( (LongMap!3304 (underlying!6815 Cell!13033)) (MutLongMapExt!3303 (__x!18818 Int)) )
))
(declare-fun lt!885487 () MutLongMap!3304)

(get-info :version)

(assert (=> b!2478400 (= e!1572766 (and e!1572771 ((_ is LongMap!3304) lt!885487)))))

(declare-datatypes ((Hashable!3214 0))(
  ( (HashableExt!3213 (__x!18819 Int)) )
))
(declare-datatypes ((Cell!13035 0))(
  ( (Cell!13036 (v!31295 MutLongMap!3304)) )
))
(declare-datatypes ((MutableMap!3214 0))(
  ( (MutableMapExt!3213 (__x!18820 Int)) (HashMap!3214 (underlying!6816 Cell!13035) (hashF!5152 Hashable!3214) (_size!6656 (_ BitVec 32)) (defaultValue!3376 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3214)

(assert (=> b!2478400 (= lt!885487 (v!31295 (underlying!6816 thiss!42540)))))

(declare-fun b!2478401 () Bool)

(declare-fun e!1572770 () Bool)

(declare-fun tp!793105 () Bool)

(declare-fun mapRes!15355 () Bool)

(assert (=> b!2478401 (= e!1572770 (and tp!793105 mapRes!15355))))

(declare-fun condMapEmpty!15355 () Bool)

(declare-fun mapDefault!15355 () List!29100)

(assert (=> b!2478401 (= condMapEmpty!15355 (= (arr!5198 (_values!3584 (v!31294 (underlying!6815 (v!31295 (underlying!6816 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29100)) mapDefault!15355)))))

(declare-fun mapNonEmpty!15355 () Bool)

(declare-fun tp!793106 () Bool)

(declare-fun tp!793108 () Bool)

(assert (=> mapNonEmpty!15355 (= mapRes!15355 (and tp!793106 tp!793108))))

(declare-fun mapValue!15355 () List!29100)

(declare-fun mapKey!15355 () (_ BitVec 32))

(declare-fun mapRest!15355 () (Array (_ BitVec 32) List!29100))

(assert (=> mapNonEmpty!15355 (= (arr!5198 (_values!3584 (v!31294 (underlying!6815 (v!31295 (underlying!6816 thiss!42540)))))) (store mapRest!15355 mapKey!15355 mapValue!15355))))

(declare-fun mapIsEmpty!15355 () Bool)

(assert (=> mapIsEmpty!15355 mapRes!15355))

(declare-fun b!2478402 () Bool)

(declare-fun e!1572772 () Bool)

(assert (=> b!2478402 (= e!1572771 e!1572772)))

(declare-fun b!2478403 () Bool)

(declare-fun e!1572773 () Bool)

(declare-fun valid!2518 (MutLongMap!3304) Bool)

(assert (=> b!2478403 (= e!1572773 (not (valid!2518 (v!31295 (underlying!6816 thiss!42540)))))))

(declare-fun res!1049097 () Bool)

(declare-fun e!1572765 () Bool)

(assert (=> start!241796 (=> (not res!1049097) (not e!1572765))))

(assert (=> start!241796 (= res!1049097 ((_ is HashMap!3214) thiss!42540))))

(assert (=> start!241796 e!1572765))

(declare-fun e!1572769 () Bool)

(assert (=> start!241796 e!1572769))

(declare-fun tp_is_empty!12121 () Bool)

(assert (=> start!241796 tp_is_empty!12121))

(declare-fun b!2478404 () Bool)

(declare-fun res!1049098 () Bool)

(assert (=> b!2478404 (=> (not res!1049098) (not e!1572765))))

(declare-fun valid!2519 (MutableMap!3214) Bool)

(assert (=> b!2478404 (= res!1049098 (valid!2519 thiss!42540))))

(declare-fun b!2478405 () Bool)

(declare-fun e!1572768 () Bool)

(assert (=> b!2478405 (= e!1572772 e!1572768)))

(declare-fun b!2478406 () Bool)

(assert (=> b!2478406 (= e!1572765 e!1572773)))

(declare-fun res!1049096 () Bool)

(assert (=> b!2478406 (=> (not res!1049096) (not e!1572773))))

(assert (=> b!2478406 (= res!1049096 ((_ is LongMap!3304) (v!31295 (underlying!6816 thiss!42540))))))

(declare-fun lt!885491 () List!29100)

(declare-fun lt!885488 () List!29100)

(declare-fun key!2246 () K!5345)

(declare-fun removePairForKey!38 (List!29100 K!5345) List!29100)

(assert (=> b!2478406 (= lt!885491 (removePairForKey!38 lt!885488 key!2246))))

(declare-datatypes ((ListMap!977 0))(
  ( (ListMap!978 (toList!1491 List!29100)) )
))
(declare-fun lt!885489 () ListMap!977)

(declare-fun map!6080 (MutableMap!3214) ListMap!977)

(assert (=> b!2478406 (= lt!885489 (map!6080 thiss!42540))))

(declare-fun lt!885492 () (_ BitVec 64))

(declare-fun lambda!93544 () Int)

(declare-datatypes ((Unit!42400 0))(
  ( (Unit!42401) )
))
(declare-fun lt!885490 () Unit!42400)

(declare-datatypes ((tuple2!28472 0))(
  ( (tuple2!28473 (_1!16777 (_ BitVec 64)) (_2!16777 List!29100)) )
))
(declare-datatypes ((List!29101 0))(
  ( (Nil!29001) (Cons!29001 (h!34403 tuple2!28472) (t!210748 List!29101)) )
))
(declare-fun forallContained!819 (List!29101 Int tuple2!28472) Unit!42400)

(declare-datatypes ((ListLongMap!435 0))(
  ( (ListLongMap!436 (toList!1492 List!29101)) )
))
(declare-fun map!6081 (MutLongMap!3304) ListLongMap!435)

(assert (=> b!2478406 (= lt!885490 (forallContained!819 (toList!1492 (map!6081 (v!31295 (underlying!6816 thiss!42540)))) lambda!93544 (tuple2!28473 lt!885492 lt!885488)))))

(declare-fun apply!6862 (MutLongMap!3304 (_ BitVec 64)) List!29100)

(assert (=> b!2478406 (= lt!885488 (apply!6862 (v!31295 (underlying!6816 thiss!42540)) lt!885492))))

(declare-fun hash!634 (Hashable!3214 K!5345) (_ BitVec 64))

(assert (=> b!2478406 (= lt!885492 (hash!634 (hashF!5152 thiss!42540) key!2246))))

(assert (=> b!2478407 (= e!1572769 (and e!1572766 tp!793104))))

(declare-fun b!2478408 () Bool)

(declare-fun res!1049095 () Bool)

(assert (=> b!2478408 (=> (not res!1049095) (not e!1572765))))

(declare-fun contains!5001 (MutableMap!3214 K!5345) Bool)

(assert (=> b!2478408 (= res!1049095 (contains!5001 thiss!42540 key!2246))))

(declare-fun tp!793103 () Bool)

(declare-fun tp!793107 () Bool)

(declare-fun array_inv!3731 (array!11665) Bool)

(declare-fun array_inv!3732 (array!11663) Bool)

(assert (=> b!2478409 (= e!1572768 (and tp!793109 tp!793107 tp!793103 (array_inv!3731 (_keys!3601 (v!31294 (underlying!6815 (v!31295 (underlying!6816 thiss!42540)))))) (array_inv!3732 (_values!3584 (v!31294 (underlying!6815 (v!31295 (underlying!6816 thiss!42540)))))) e!1572770))))

(assert (= (and start!241796 res!1049097) b!2478404))

(assert (= (and b!2478404 res!1049098) b!2478408))

(assert (= (and b!2478408 res!1049095) b!2478406))

(assert (= (and b!2478406 res!1049096) b!2478403))

(assert (= (and b!2478401 condMapEmpty!15355) mapIsEmpty!15355))

(assert (= (and b!2478401 (not condMapEmpty!15355)) mapNonEmpty!15355))

(assert (= b!2478409 b!2478401))

(assert (= b!2478405 b!2478409))

(assert (= b!2478402 b!2478405))

(assert (= (and b!2478400 ((_ is LongMap!3304) (v!31295 (underlying!6816 thiss!42540)))) b!2478402))

(assert (= b!2478407 b!2478400))

(assert (= (and start!241796 ((_ is HashMap!3214) thiss!42540)) b!2478407))

(declare-fun m!2846137 () Bool)

(assert (=> b!2478404 m!2846137))

(declare-fun m!2846139 () Bool)

(assert (=> b!2478408 m!2846139))

(declare-fun m!2846141 () Bool)

(assert (=> b!2478406 m!2846141))

(declare-fun m!2846143 () Bool)

(assert (=> b!2478406 m!2846143))

(declare-fun m!2846145 () Bool)

(assert (=> b!2478406 m!2846145))

(declare-fun m!2846147 () Bool)

(assert (=> b!2478406 m!2846147))

(declare-fun m!2846149 () Bool)

(assert (=> b!2478406 m!2846149))

(declare-fun m!2846151 () Bool)

(assert (=> b!2478406 m!2846151))

(declare-fun m!2846153 () Bool)

(assert (=> mapNonEmpty!15355 m!2846153))

(declare-fun m!2846155 () Bool)

(assert (=> b!2478403 m!2846155))

(declare-fun m!2846157 () Bool)

(assert (=> b!2478409 m!2846157))

(declare-fun m!2846159 () Bool)

(assert (=> b!2478409 m!2846159))

(check-sat tp_is_empty!12121 (not b!2478404) (not b!2478403) (not b!2478408) (not b!2478409) b_and!188311 (not b_next!72779) (not mapNonEmpty!15355) (not b!2478406) (not b_next!72777) b_and!188309 (not b!2478401))
(check-sat b_and!188311 b_and!188309 (not b_next!72777) (not b_next!72779))
(get-model)

(declare-fun d!712529 () Bool)

(declare-fun e!1572776 () Bool)

(assert (=> d!712529 e!1572776))

(declare-fun c!394311 () Bool)

(declare-fun contains!5002 (MutLongMap!3304 (_ BitVec 64)) Bool)

(assert (=> d!712529 (= c!394311 (contains!5002 (v!31295 (underlying!6816 thiss!42540)) lt!885492))))

(declare-fun lt!885495 () List!29100)

(declare-fun apply!6863 (LongMapFixedSize!6608 (_ BitVec 64)) List!29100)

(assert (=> d!712529 (= lt!885495 (apply!6863 (v!31294 (underlying!6815 (v!31295 (underlying!6816 thiss!42540)))) lt!885492))))

(assert (=> d!712529 (valid!2518 (v!31295 (underlying!6816 thiss!42540)))))

(assert (=> d!712529 (= (apply!6862 (v!31295 (underlying!6816 thiss!42540)) lt!885492) lt!885495)))

(declare-fun b!2478414 () Bool)

(declare-datatypes ((Option!5734 0))(
  ( (None!5733) (Some!5733 (v!31296 List!29100)) )
))
(declare-fun get!8940 (Option!5734) List!29100)

(declare-fun getValueByKey!129 (List!29101 (_ BitVec 64)) Option!5734)

(assert (=> b!2478414 (= e!1572776 (= lt!885495 (get!8940 (getValueByKey!129 (toList!1492 (map!6081 (v!31295 (underlying!6816 thiss!42540)))) lt!885492))))))

(declare-fun b!2478415 () Bool)

(declare-fun dynLambda!12440 (Int (_ BitVec 64)) List!29100)

(assert (=> b!2478415 (= e!1572776 (= lt!885495 (dynLambda!12440 (defaultEntry!3678 (v!31294 (underlying!6815 (v!31295 (underlying!6816 thiss!42540))))) lt!885492)))))

(assert (=> b!2478415 ((_ is LongMap!3304) (v!31295 (underlying!6816 thiss!42540)))))

(assert (= (and d!712529 c!394311) b!2478414))

(assert (= (and d!712529 (not c!394311)) b!2478415))

(declare-fun b_lambda!76031 () Bool)

(assert (=> (not b_lambda!76031) (not b!2478415)))

(declare-fun t!210750 () Bool)

(declare-fun tb!140365 () Bool)

(assert (=> (and b!2478409 (= (defaultEntry!3678 (v!31294 (underlying!6815 (v!31295 (underlying!6816 thiss!42540))))) (defaultEntry!3678 (v!31294 (underlying!6815 (v!31295 (underlying!6816 thiss!42540)))))) t!210750) tb!140365))

(assert (=> b!2478415 t!210750))

(declare-fun result!173282 () Bool)

(declare-fun b_and!188313 () Bool)

(assert (= b_and!188309 (and (=> t!210750 result!173282) b_and!188313)))

(declare-fun m!2846161 () Bool)

(assert (=> d!712529 m!2846161))

(declare-fun m!2846163 () Bool)

(assert (=> d!712529 m!2846163))

(assert (=> d!712529 m!2846155))

(assert (=> b!2478414 m!2846141))

(declare-fun m!2846165 () Bool)

(assert (=> b!2478414 m!2846165))

(assert (=> b!2478414 m!2846165))

(declare-fun m!2846167 () Bool)

(assert (=> b!2478414 m!2846167))

(declare-fun m!2846169 () Bool)

(assert (=> b!2478415 m!2846169))

(assert (=> b!2478406 d!712529))

(declare-fun d!712531 () Bool)

(declare-fun dynLambda!12441 (Int tuple2!28472) Bool)

(assert (=> d!712531 (dynLambda!12441 lambda!93544 (tuple2!28473 lt!885492 lt!885488))))

(declare-fun lt!885498 () Unit!42400)

(declare-fun choose!14617 (List!29101 Int tuple2!28472) Unit!42400)

(assert (=> d!712531 (= lt!885498 (choose!14617 (toList!1492 (map!6081 (v!31295 (underlying!6816 thiss!42540)))) lambda!93544 (tuple2!28473 lt!885492 lt!885488)))))

(declare-fun e!1572779 () Bool)

(assert (=> d!712531 e!1572779))

(declare-fun res!1049101 () Bool)

(assert (=> d!712531 (=> (not res!1049101) (not e!1572779))))

(declare-fun forall!5936 (List!29101 Int) Bool)

(assert (=> d!712531 (= res!1049101 (forall!5936 (toList!1492 (map!6081 (v!31295 (underlying!6816 thiss!42540)))) lambda!93544))))

(assert (=> d!712531 (= (forallContained!819 (toList!1492 (map!6081 (v!31295 (underlying!6816 thiss!42540)))) lambda!93544 (tuple2!28473 lt!885492 lt!885488)) lt!885498)))

(declare-fun b!2478418 () Bool)

(declare-fun contains!5003 (List!29101 tuple2!28472) Bool)

(assert (=> b!2478418 (= e!1572779 (contains!5003 (toList!1492 (map!6081 (v!31295 (underlying!6816 thiss!42540)))) (tuple2!28473 lt!885492 lt!885488)))))

(assert (= (and d!712531 res!1049101) b!2478418))

(declare-fun b_lambda!76033 () Bool)

(assert (=> (not b_lambda!76033) (not d!712531)))

(declare-fun m!2846171 () Bool)

(assert (=> d!712531 m!2846171))

(declare-fun m!2846173 () Bool)

(assert (=> d!712531 m!2846173))

(declare-fun m!2846175 () Bool)

(assert (=> d!712531 m!2846175))

(declare-fun m!2846177 () Bool)

(assert (=> b!2478418 m!2846177))

(assert (=> b!2478406 d!712531))

(declare-fun d!712533 () Bool)

(declare-fun map!6082 (LongMapFixedSize!6608) ListLongMap!435)

(assert (=> d!712533 (= (map!6081 (v!31295 (underlying!6816 thiss!42540))) (map!6082 (v!31294 (underlying!6815 (v!31295 (underlying!6816 thiss!42540))))))))

(declare-fun bs!467228 () Bool)

(assert (= bs!467228 d!712533))

(declare-fun m!2846179 () Bool)

(assert (=> bs!467228 m!2846179))

(assert (=> b!2478406 d!712533))

(declare-fun d!712535 () Bool)

(declare-fun lt!885501 () ListMap!977)

(declare-fun invariantList!403 (List!29100) Bool)

(assert (=> d!712535 (invariantList!403 (toList!1491 lt!885501))))

(declare-fun extractMap!150 (List!29101) ListMap!977)

(assert (=> d!712535 (= lt!885501 (extractMap!150 (toList!1492 (map!6081 (v!31295 (underlying!6816 thiss!42540))))))))

(assert (=> d!712535 (valid!2519 thiss!42540)))

(assert (=> d!712535 (= (map!6080 thiss!42540) lt!885501)))

(declare-fun bs!467229 () Bool)

(assert (= bs!467229 d!712535))

(declare-fun m!2846181 () Bool)

(assert (=> bs!467229 m!2846181))

(assert (=> bs!467229 m!2846141))

(declare-fun m!2846183 () Bool)

(assert (=> bs!467229 m!2846183))

(assert (=> bs!467229 m!2846137))

(assert (=> b!2478406 d!712535))

(declare-fun b!2478430 () Bool)

(declare-fun e!1572785 () List!29100)

(assert (=> b!2478430 (= e!1572785 Nil!29000)))

(declare-fun b!2478429 () Bool)

(assert (=> b!2478429 (= e!1572785 (Cons!29000 (h!34402 lt!885488) (removePairForKey!38 (t!210747 lt!885488) key!2246)))))

(declare-fun d!712537 () Bool)

(declare-fun lt!885504 () List!29100)

(declare-fun containsKey!121 (List!29100 K!5345) Bool)

(assert (=> d!712537 (not (containsKey!121 lt!885504 key!2246))))

(declare-fun e!1572784 () List!29100)

(assert (=> d!712537 (= lt!885504 e!1572784)))

(declare-fun c!394317 () Bool)

(assert (=> d!712537 (= c!394317 (and ((_ is Cons!29000) lt!885488) (= (_1!16776 (h!34402 lt!885488)) key!2246)))))

(declare-fun noDuplicateKeys!48 (List!29100) Bool)

(assert (=> d!712537 (noDuplicateKeys!48 lt!885488)))

(assert (=> d!712537 (= (removePairForKey!38 lt!885488 key!2246) lt!885504)))

(declare-fun b!2478428 () Bool)

(assert (=> b!2478428 (= e!1572784 e!1572785)))

(declare-fun c!394316 () Bool)

(assert (=> b!2478428 (= c!394316 ((_ is Cons!29000) lt!885488))))

(declare-fun b!2478427 () Bool)

(assert (=> b!2478427 (= e!1572784 (t!210747 lt!885488))))

(assert (= (and d!712537 c!394317) b!2478427))

(assert (= (and d!712537 (not c!394317)) b!2478428))

(assert (= (and b!2478428 c!394316) b!2478429))

(assert (= (and b!2478428 (not c!394316)) b!2478430))

(declare-fun m!2846185 () Bool)

(assert (=> b!2478429 m!2846185))

(declare-fun m!2846187 () Bool)

(assert (=> d!712537 m!2846187))

(declare-fun m!2846189 () Bool)

(assert (=> d!712537 m!2846189))

(assert (=> b!2478406 d!712537))

(declare-fun d!712539 () Bool)

(declare-fun hash!635 (Hashable!3214 K!5345) (_ BitVec 64))

(assert (=> d!712539 (= (hash!634 (hashF!5152 thiss!42540) key!2246) (hash!635 (hashF!5152 thiss!42540) key!2246))))

(declare-fun bs!467230 () Bool)

(assert (= bs!467230 d!712539))

(declare-fun m!2846191 () Bool)

(assert (=> bs!467230 m!2846191))

(assert (=> b!2478406 d!712539))

(declare-fun d!712541 () Bool)

(declare-fun valid!2520 (LongMapFixedSize!6608) Bool)

(assert (=> d!712541 (= (valid!2518 (v!31295 (underlying!6816 thiss!42540))) (valid!2520 (v!31294 (underlying!6815 (v!31295 (underlying!6816 thiss!42540))))))))

(declare-fun bs!467231 () Bool)

(assert (= bs!467231 d!712541))

(declare-fun m!2846193 () Bool)

(assert (=> bs!467231 m!2846193))

(assert (=> b!2478403 d!712541))

(declare-fun bs!467232 () Bool)

(declare-fun b!2478454 () Bool)

(assert (= bs!467232 (and b!2478454 b!2478406)))

(declare-fun lambda!93547 () Int)

(assert (=> bs!467232 (= lambda!93547 lambda!93544)))

(declare-fun d!712543 () Bool)

(declare-fun lt!885563 () Bool)

(declare-fun contains!5004 (ListMap!977 K!5345) Bool)

(assert (=> d!712543 (= lt!885563 (contains!5004 (map!6080 thiss!42540) key!2246))))

(declare-fun e!1572806 () Bool)

(assert (=> d!712543 (= lt!885563 e!1572806)))

(declare-fun res!1049108 () Bool)

(assert (=> d!712543 (=> (not res!1049108) (not e!1572806))))

(declare-fun lt!885556 () (_ BitVec 64))

(assert (=> d!712543 (= res!1049108 (contains!5002 (v!31295 (underlying!6816 thiss!42540)) lt!885556))))

(declare-fun lt!885552 () Unit!42400)

(declare-fun e!1572803 () Unit!42400)

(assert (=> d!712543 (= lt!885552 e!1572803)))

(declare-fun c!394327 () Bool)

(assert (=> d!712543 (= c!394327 (contains!5004 (extractMap!150 (toList!1492 (map!6081 (v!31295 (underlying!6816 thiss!42540))))) key!2246))))

(declare-fun lt!885554 () Unit!42400)

(declare-fun e!1572800 () Unit!42400)

(assert (=> d!712543 (= lt!885554 e!1572800)))

(declare-fun c!394328 () Bool)

(assert (=> d!712543 (= c!394328 (contains!5002 (v!31295 (underlying!6816 thiss!42540)) lt!885556))))

(assert (=> d!712543 (= lt!885556 (hash!634 (hashF!5152 thiss!42540) key!2246))))

(assert (=> d!712543 (valid!2519 thiss!42540)))

(assert (=> d!712543 (= (contains!5001 thiss!42540 key!2246) lt!885563)))

(declare-fun call!151830 () List!29100)

(declare-fun call!151829 () ListLongMap!435)

(declare-fun bm!151824 () Bool)

(declare-fun call!151832 () (_ BitVec 64))

(declare-fun lt!885557 () ListLongMap!435)

(declare-fun apply!6864 (ListLongMap!435 (_ BitVec 64)) List!29100)

(assert (=> bm!151824 (= call!151830 (apply!6864 (ite c!394327 lt!885557 call!151829) call!151832))))

(declare-fun b!2478453 () Bool)

(declare-fun lt!885551 () Unit!42400)

(assert (=> b!2478453 (= e!1572803 lt!885551)))

(assert (=> b!2478453 (= lt!885557 call!151829)))

(declare-fun lemmaInGenericMapThenInLongMap!62 (ListLongMap!435 K!5345 Hashable!3214) Unit!42400)

(assert (=> b!2478453 (= lt!885551 (lemmaInGenericMapThenInLongMap!62 lt!885557 key!2246 (hashF!5152 thiss!42540)))))

(declare-fun res!1049110 () Bool)

(declare-fun call!151833 () Bool)

(assert (=> b!2478453 (= res!1049110 call!151833)))

(declare-fun e!1572802 () Bool)

(assert (=> b!2478453 (=> (not res!1049110) (not e!1572802))))

(assert (=> b!2478453 e!1572802))

(declare-fun bm!151825 () Bool)

(assert (=> bm!151825 (= call!151829 (map!6081 (v!31295 (underlying!6816 thiss!42540))))))

(declare-fun bm!151826 () Bool)

(declare-fun call!151831 () Bool)

(declare-datatypes ((Option!5735 0))(
  ( (None!5734) (Some!5734 (v!31297 tuple2!28470)) )
))
(declare-fun call!151834 () Option!5735)

(declare-fun isDefined!4556 (Option!5735) Bool)

(assert (=> bm!151826 (= call!151831 (isDefined!4556 call!151834))))

(assert (=> b!2478454 (= e!1572800 (forallContained!819 (toList!1492 (map!6081 (v!31295 (underlying!6816 thiss!42540)))) lambda!93547 (tuple2!28473 lt!885556 (apply!6862 (v!31295 (underlying!6816 thiss!42540)) lt!885556))))))

(declare-fun c!394326 () Bool)

(assert (=> b!2478454 (= c!394326 (not (contains!5003 (toList!1492 (map!6081 (v!31295 (underlying!6816 thiss!42540)))) (tuple2!28473 lt!885556 (apply!6862 (v!31295 (underlying!6816 thiss!42540)) lt!885556)))))))

(declare-fun lt!885561 () Unit!42400)

(declare-fun e!1572804 () Unit!42400)

(assert (=> b!2478454 (= lt!885561 e!1572804)))

(declare-fun b!2478455 () Bool)

(declare-fun e!1572805 () Unit!42400)

(declare-fun Unit!42402 () Unit!42400)

(assert (=> b!2478455 (= e!1572805 Unit!42402)))

(declare-fun b!2478456 () Bool)

(assert (=> b!2478456 (= e!1572802 call!151831)))

(declare-fun bm!151827 () Bool)

(assert (=> bm!151827 (= call!151832 (hash!634 (hashF!5152 thiss!42540) key!2246))))

(declare-fun b!2478457 () Bool)

(assert (=> b!2478457 false))

(declare-fun lt!885555 () Unit!42400)

(declare-fun lt!885562 () Unit!42400)

(assert (=> b!2478457 (= lt!885555 lt!885562)))

(declare-fun lt!885564 () ListLongMap!435)

(assert (=> b!2478457 (contains!5004 (extractMap!150 (toList!1492 lt!885564)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!62 (ListLongMap!435 K!5345 Hashable!3214) Unit!42400)

(assert (=> b!2478457 (= lt!885562 (lemmaInLongMapThenInGenericMap!62 lt!885564 key!2246 (hashF!5152 thiss!42540)))))

(assert (=> b!2478457 (= lt!885564 call!151829)))

(declare-fun Unit!42403 () Unit!42400)

(assert (=> b!2478457 (= e!1572805 Unit!42403)))

(declare-fun b!2478458 () Bool)

(declare-fun Unit!42404 () Unit!42400)

(assert (=> b!2478458 (= e!1572804 Unit!42404)))

(declare-fun b!2478459 () Bool)

(assert (=> b!2478459 (= e!1572803 e!1572805)))

(declare-fun res!1049109 () Bool)

(assert (=> b!2478459 (= res!1049109 call!151833)))

(declare-fun e!1572801 () Bool)

(assert (=> b!2478459 (=> (not res!1049109) (not e!1572801))))

(declare-fun c!394329 () Bool)

(assert (=> b!2478459 (= c!394329 e!1572801)))

(declare-fun b!2478460 () Bool)

(declare-fun getPair!62 (List!29100 K!5345) Option!5735)

(assert (=> b!2478460 (= e!1572806 (isDefined!4556 (getPair!62 (apply!6862 (v!31295 (underlying!6816 thiss!42540)) lt!885556) key!2246)))))

(declare-fun b!2478461 () Bool)

(assert (=> b!2478461 (= e!1572801 call!151831)))

(declare-fun b!2478462 () Bool)

(declare-fun Unit!42405 () Unit!42400)

(assert (=> b!2478462 (= e!1572800 Unit!42405)))

(declare-fun bm!151828 () Bool)

(declare-fun contains!5005 (ListLongMap!435 (_ BitVec 64)) Bool)

(assert (=> bm!151828 (= call!151833 (contains!5005 (ite c!394327 lt!885557 call!151829) call!151832))))

(declare-fun bm!151829 () Bool)

(assert (=> bm!151829 (= call!151834 (getPair!62 call!151830 key!2246))))

(declare-fun b!2478463 () Bool)

(assert (=> b!2478463 false))

(declare-fun lt!885550 () Unit!42400)

(declare-fun lt!885560 () Unit!42400)

(assert (=> b!2478463 (= lt!885550 lt!885560)))

(declare-fun lt!885547 () List!29101)

(declare-fun lt!885558 () List!29100)

(assert (=> b!2478463 (contains!5003 lt!885547 (tuple2!28473 lt!885556 lt!885558))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!63 (List!29101 (_ BitVec 64) List!29100) Unit!42400)

(assert (=> b!2478463 (= lt!885560 (lemmaGetValueByKeyImpliesContainsTuple!63 lt!885547 lt!885556 lt!885558))))

(assert (=> b!2478463 (= lt!885558 (apply!6862 (v!31295 (underlying!6816 thiss!42540)) lt!885556))))

(assert (=> b!2478463 (= lt!885547 (toList!1492 (map!6081 (v!31295 (underlying!6816 thiss!42540)))))))

(declare-fun lt!885545 () Unit!42400)

(declare-fun lt!885553 () Unit!42400)

(assert (=> b!2478463 (= lt!885545 lt!885553)))

(declare-fun lt!885546 () List!29101)

(declare-fun isDefined!4557 (Option!5734) Bool)

(assert (=> b!2478463 (isDefined!4557 (getValueByKey!129 lt!885546 lt!885556))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!86 (List!29101 (_ BitVec 64)) Unit!42400)

(assert (=> b!2478463 (= lt!885553 (lemmaContainsKeyImpliesGetValueByKeyDefined!86 lt!885546 lt!885556))))

(assert (=> b!2478463 (= lt!885546 (toList!1492 (map!6081 (v!31295 (underlying!6816 thiss!42540)))))))

(declare-fun lt!885559 () Unit!42400)

(declare-fun lt!885548 () Unit!42400)

(assert (=> b!2478463 (= lt!885559 lt!885548)))

(declare-fun lt!885549 () List!29101)

(declare-fun containsKey!122 (List!29101 (_ BitVec 64)) Bool)

(assert (=> b!2478463 (containsKey!122 lt!885549 lt!885556)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!63 (List!29101 (_ BitVec 64)) Unit!42400)

(assert (=> b!2478463 (= lt!885548 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!63 lt!885549 lt!885556))))

(assert (=> b!2478463 (= lt!885549 (toList!1492 (map!6081 (v!31295 (underlying!6816 thiss!42540)))))))

(declare-fun Unit!42406 () Unit!42400)

(assert (=> b!2478463 (= e!1572804 Unit!42406)))

(assert (= (and d!712543 c!394328) b!2478454))

(assert (= (and d!712543 (not c!394328)) b!2478462))

(assert (= (and b!2478454 c!394326) b!2478463))

(assert (= (and b!2478454 (not c!394326)) b!2478458))

(assert (= (and d!712543 c!394327) b!2478453))

(assert (= (and d!712543 (not c!394327)) b!2478459))

(assert (= (and b!2478453 res!1049110) b!2478456))

(assert (= (and b!2478459 res!1049109) b!2478461))

(assert (= (and b!2478459 c!394329) b!2478457))

(assert (= (and b!2478459 (not c!394329)) b!2478455))

(assert (= (or b!2478453 b!2478459 b!2478461 b!2478457) bm!151825))

(assert (= (or b!2478453 b!2478456 b!2478459 b!2478461) bm!151827))

(assert (= (or b!2478453 b!2478459) bm!151828))

(assert (= (or b!2478456 b!2478461) bm!151824))

(assert (= (or b!2478456 b!2478461) bm!151829))

(assert (= (or b!2478456 b!2478461) bm!151826))

(assert (= (and d!712543 res!1049108) b!2478460))

(declare-fun m!2846195 () Bool)

(assert (=> bm!151829 m!2846195))

(declare-fun m!2846197 () Bool)

(assert (=> bm!151828 m!2846197))

(assert (=> bm!151827 m!2846149))

(assert (=> b!2478454 m!2846141))

(declare-fun m!2846199 () Bool)

(assert (=> b!2478454 m!2846199))

(declare-fun m!2846201 () Bool)

(assert (=> b!2478454 m!2846201))

(declare-fun m!2846203 () Bool)

(assert (=> b!2478454 m!2846203))

(assert (=> b!2478460 m!2846199))

(assert (=> b!2478460 m!2846199))

(declare-fun m!2846205 () Bool)

(assert (=> b!2478460 m!2846205))

(assert (=> b!2478460 m!2846205))

(declare-fun m!2846207 () Bool)

(assert (=> b!2478460 m!2846207))

(assert (=> d!712543 m!2846147))

(assert (=> d!712543 m!2846137))

(declare-fun m!2846209 () Bool)

(assert (=> d!712543 m!2846209))

(assert (=> d!712543 m!2846147))

(declare-fun m!2846211 () Bool)

(assert (=> d!712543 m!2846211))

(assert (=> d!712543 m!2846149))

(assert (=> d!712543 m!2846183))

(assert (=> d!712543 m!2846141))

(assert (=> d!712543 m!2846183))

(declare-fun m!2846213 () Bool)

(assert (=> d!712543 m!2846213))

(declare-fun m!2846215 () Bool)

(assert (=> b!2478453 m!2846215))

(declare-fun m!2846217 () Bool)

(assert (=> bm!151824 m!2846217))

(declare-fun m!2846219 () Bool)

(assert (=> b!2478463 m!2846219))

(declare-fun m!2846221 () Bool)

(assert (=> b!2478463 m!2846221))

(assert (=> b!2478463 m!2846221))

(declare-fun m!2846223 () Bool)

(assert (=> b!2478463 m!2846223))

(declare-fun m!2846225 () Bool)

(assert (=> b!2478463 m!2846225))

(declare-fun m!2846227 () Bool)

(assert (=> b!2478463 m!2846227))

(declare-fun m!2846229 () Bool)

(assert (=> b!2478463 m!2846229))

(declare-fun m!2846231 () Bool)

(assert (=> b!2478463 m!2846231))

(assert (=> b!2478463 m!2846141))

(assert (=> b!2478463 m!2846199))

(assert (=> bm!151825 m!2846141))

(declare-fun m!2846233 () Bool)

(assert (=> bm!151826 m!2846233))

(declare-fun m!2846235 () Bool)

(assert (=> b!2478457 m!2846235))

(assert (=> b!2478457 m!2846235))

(declare-fun m!2846237 () Bool)

(assert (=> b!2478457 m!2846237))

(declare-fun m!2846239 () Bool)

(assert (=> b!2478457 m!2846239))

(assert (=> b!2478408 d!712543))

(declare-fun bs!467233 () Bool)

(declare-fun b!2478468 () Bool)

(assert (= bs!467233 (and b!2478468 b!2478406)))

(declare-fun lambda!93550 () Int)

(assert (=> bs!467233 (= lambda!93550 lambda!93544)))

(declare-fun bs!467234 () Bool)

(assert (= bs!467234 (and b!2478468 b!2478454)))

(assert (=> bs!467234 (= lambda!93550 lambda!93547)))

(declare-fun d!712545 () Bool)

(declare-fun res!1049115 () Bool)

(declare-fun e!1572809 () Bool)

(assert (=> d!712545 (=> (not res!1049115) (not e!1572809))))

(assert (=> d!712545 (= res!1049115 (valid!2518 (v!31295 (underlying!6816 thiss!42540))))))

(assert (=> d!712545 (= (valid!2519 thiss!42540) e!1572809)))

(declare-fun res!1049116 () Bool)

(assert (=> b!2478468 (=> (not res!1049116) (not e!1572809))))

(assert (=> b!2478468 (= res!1049116 (forall!5936 (toList!1492 (map!6081 (v!31295 (underlying!6816 thiss!42540)))) lambda!93550))))

(declare-fun b!2478469 () Bool)

(declare-fun allKeysSameHashInMap!136 (ListLongMap!435 Hashable!3214) Bool)

(assert (=> b!2478469 (= e!1572809 (allKeysSameHashInMap!136 (map!6081 (v!31295 (underlying!6816 thiss!42540))) (hashF!5152 thiss!42540)))))

(assert (= (and d!712545 res!1049115) b!2478468))

(assert (= (and b!2478468 res!1049116) b!2478469))

(assert (=> d!712545 m!2846155))

(assert (=> b!2478468 m!2846141))

(declare-fun m!2846241 () Bool)

(assert (=> b!2478468 m!2846241))

(assert (=> b!2478469 m!2846141))

(assert (=> b!2478469 m!2846141))

(declare-fun m!2846243 () Bool)

(assert (=> b!2478469 m!2846243))

(assert (=> b!2478404 d!712545))

(declare-fun d!712547 () Bool)

(assert (=> d!712547 (= (array_inv!3731 (_keys!3601 (v!31294 (underlying!6815 (v!31295 (underlying!6816 thiss!42540)))))) (bvsge (size!22618 (_keys!3601 (v!31294 (underlying!6815 (v!31295 (underlying!6816 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2478409 d!712547))

(declare-fun d!712549 () Bool)

(assert (=> d!712549 (= (array_inv!3732 (_values!3584 (v!31294 (underlying!6815 (v!31295 (underlying!6816 thiss!42540)))))) (bvsge (size!22617 (_values!3584 (v!31294 (underlying!6815 (v!31295 (underlying!6816 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2478409 d!712549))

(declare-fun mapNonEmpty!15358 () Bool)

(declare-fun mapRes!15358 () Bool)

(declare-fun tp!793116 () Bool)

(declare-fun e!1572814 () Bool)

(assert (=> mapNonEmpty!15358 (= mapRes!15358 (and tp!793116 e!1572814))))

(declare-fun mapValue!15358 () List!29100)

(declare-fun mapKey!15358 () (_ BitVec 32))

(declare-fun mapRest!15358 () (Array (_ BitVec 32) List!29100))

(assert (=> mapNonEmpty!15358 (= mapRest!15355 (store mapRest!15358 mapKey!15358 mapValue!15358))))

(declare-fun mapIsEmpty!15358 () Bool)

(assert (=> mapIsEmpty!15358 mapRes!15358))

(declare-fun condMapEmpty!15358 () Bool)

(declare-fun mapDefault!15358 () List!29100)

(assert (=> mapNonEmpty!15355 (= condMapEmpty!15358 (= mapRest!15355 ((as const (Array (_ BitVec 32) List!29100)) mapDefault!15358)))))

(declare-fun e!1572815 () Bool)

(assert (=> mapNonEmpty!15355 (= tp!793106 (and e!1572815 mapRes!15358))))

(declare-fun tp_is_empty!12123 () Bool)

(declare-fun tp!793117 () Bool)

(declare-fun b!2478477 () Bool)

(assert (=> b!2478477 (= e!1572815 (and tp_is_empty!12121 tp_is_empty!12123 tp!793117))))

(declare-fun tp!793118 () Bool)

(declare-fun b!2478476 () Bool)

(assert (=> b!2478476 (= e!1572814 (and tp_is_empty!12121 tp_is_empty!12123 tp!793118))))

(assert (= (and mapNonEmpty!15355 condMapEmpty!15358) mapIsEmpty!15358))

(assert (= (and mapNonEmpty!15355 (not condMapEmpty!15358)) mapNonEmpty!15358))

(assert (= (and mapNonEmpty!15358 ((_ is Cons!29000) mapValue!15358)) b!2478476))

(assert (= (and mapNonEmpty!15355 ((_ is Cons!29000) mapDefault!15358)) b!2478477))

(declare-fun m!2846245 () Bool)

(assert (=> mapNonEmpty!15358 m!2846245))

(declare-fun b!2478482 () Bool)

(declare-fun tp!793121 () Bool)

(declare-fun e!1572818 () Bool)

(assert (=> b!2478482 (= e!1572818 (and tp_is_empty!12121 tp_is_empty!12123 tp!793121))))

(assert (=> mapNonEmpty!15355 (= tp!793108 e!1572818)))

(assert (= (and mapNonEmpty!15355 ((_ is Cons!29000) mapValue!15355)) b!2478482))

(declare-fun e!1572819 () Bool)

(declare-fun b!2478483 () Bool)

(declare-fun tp!793122 () Bool)

(assert (=> b!2478483 (= e!1572819 (and tp_is_empty!12121 tp_is_empty!12123 tp!793122))))

(assert (=> b!2478401 (= tp!793105 e!1572819)))

(assert (= (and b!2478401 ((_ is Cons!29000) mapDefault!15355)) b!2478483))

(declare-fun e!1572820 () Bool)

(declare-fun b!2478484 () Bool)

(declare-fun tp!793123 () Bool)

(assert (=> b!2478484 (= e!1572820 (and tp_is_empty!12121 tp_is_empty!12123 tp!793123))))

(assert (=> b!2478409 (= tp!793107 e!1572820)))

(assert (= (and b!2478409 ((_ is Cons!29000) (zeroValue!3562 (v!31294 (underlying!6815 (v!31295 (underlying!6816 thiss!42540))))))) b!2478484))

(declare-fun b!2478485 () Bool)

(declare-fun tp!793124 () Bool)

(declare-fun e!1572821 () Bool)

(assert (=> b!2478485 (= e!1572821 (and tp_is_empty!12121 tp_is_empty!12123 tp!793124))))

(assert (=> b!2478409 (= tp!793103 e!1572821)))

(assert (= (and b!2478409 ((_ is Cons!29000) (minValue!3562 (v!31294 (underlying!6815 (v!31295 (underlying!6816 thiss!42540))))))) b!2478485))

(declare-fun b_lambda!76035 () Bool)

(assert (= b_lambda!76033 (or b!2478406 b_lambda!76035)))

(declare-fun bs!467235 () Bool)

(declare-fun d!712551 () Bool)

(assert (= bs!467235 (and d!712551 b!2478406)))

(assert (=> bs!467235 (= (dynLambda!12441 lambda!93544 (tuple2!28473 lt!885492 lt!885488)) (noDuplicateKeys!48 (_2!16777 (tuple2!28473 lt!885492 lt!885488))))))

(declare-fun m!2846247 () Bool)

(assert (=> bs!467235 m!2846247))

(assert (=> d!712531 d!712551))

(declare-fun b_lambda!76037 () Bool)

(assert (= b_lambda!76031 (or (and b!2478409 b_free!72073) b_lambda!76037)))

(check-sat tp_is_empty!12123 (not b!2478468) (not b!2478460) (not d!712541) (not b!2478476) (not b_lambda!76037) (not b!2478463) (not b!2478457) (not d!712537) (not bs!467235) tp_is_empty!12121 (not b!2478482) (not d!712529) (not d!712545) (not b!2478485) (not d!712535) (not d!712539) (not bm!151825) (not b!2478418) (not b!2478429) (not b!2478484) (not b!2478454) (not bm!151826) (not bm!151828) (not b!2478469) (not d!712531) b_and!188311 (not d!712543) (not b_next!72779) (not bm!151824) (not bm!151829) (not d!712533) (not b!2478453) (not b!2478477) (not b!2478414) (not b_lambda!76035) b_and!188313 (not mapNonEmpty!15358) (not tb!140365) (not bm!151827) (not b!2478483) (not b_next!72777))
(check-sat b_and!188311 b_and!188313 (not b_next!72777) (not b_next!72779))
