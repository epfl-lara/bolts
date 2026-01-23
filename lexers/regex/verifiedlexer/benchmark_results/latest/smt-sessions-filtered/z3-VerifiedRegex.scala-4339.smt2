; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231092 () Bool)

(assert start!231092)

(declare-fun b!2358001 () Bool)

(declare-fun b_free!70349 () Bool)

(declare-fun b_next!71053 () Bool)

(assert (=> b!2358001 (= b_free!70349 (not b_next!71053))))

(declare-fun tp!753935 () Bool)

(declare-fun b_and!185263 () Bool)

(assert (=> b!2358001 (= tp!753935 b_and!185263)))

(declare-fun b!2358010 () Bool)

(declare-fun b_free!70351 () Bool)

(declare-fun b_next!71055 () Bool)

(assert (=> b!2358010 (= b_free!70351 (not b_next!71055))))

(declare-fun tp!753938 () Bool)

(declare-fun b_and!185265 () Bool)

(assert (=> b!2358010 (= tp!753938 b_and!185265)))

(declare-fun b!2358000 () Bool)

(declare-fun e!1505997 () Bool)

(declare-fun e!1505995 () Bool)

(assert (=> b!2358000 (= e!1505997 e!1505995)))

(declare-fun e!1505998 () Bool)

(declare-fun tp!753933 () Bool)

(declare-fun tp!753939 () Bool)

(declare-fun e!1506002 () Bool)

(declare-datatypes ((V!5134 0))(
  ( (V!5135 (val!8169 Int)) )
))
(declare-datatypes ((K!4932 0))(
  ( (K!4933 (val!8170 Int)) )
))
(declare-datatypes ((Hashable!3134 0))(
  ( (HashableExt!3133 (__x!18430 Int)) )
))
(declare-datatypes ((tuple2!27598 0))(
  ( (tuple2!27599 (_1!16340 K!4932) (_2!16340 V!5134)) )
))
(declare-datatypes ((List!27968 0))(
  ( (Nil!27870) (Cons!27870 (h!33271 tuple2!27598) (t!207831 List!27968)) )
))
(declare-datatypes ((array!11309 0))(
  ( (array!11310 (arr!5038 (Array (_ BitVec 32) List!27968)) (size!22062 (_ BitVec 32))) )
))
(declare-datatypes ((array!11311 0))(
  ( (array!11312 (arr!5039 (Array (_ BitVec 32) (_ BitVec 64))) (size!22063 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6448 0))(
  ( (LongMapFixedSize!6449 (defaultEntry!3589 Int) (mask!8112 (_ BitVec 32)) (extraKeys!3472 (_ BitVec 32)) (zeroValue!3482 List!27968) (minValue!3482 List!27968) (_size!6495 (_ BitVec 32)) (_keys!3521 array!11311) (_values!3504 array!11309) (_vacant!3285 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12713 0))(
  ( (Cell!12714 (v!30776 LongMapFixedSize!6448)) )
))
(declare-datatypes ((MutLongMap!3224 0))(
  ( (LongMap!3224 (underlying!6653 Cell!12713)) (MutLongMapExt!3223 (__x!18431 Int)) )
))
(declare-datatypes ((Cell!12715 0))(
  ( (Cell!12716 (v!30777 MutLongMap!3224)) )
))
(declare-datatypes ((MutableMap!3134 0))(
  ( (MutableMapExt!3133 (__x!18432 Int)) (HashMap!3134 (underlying!6654 Cell!12715) (hashF!5057 Hashable!3134) (_size!6496 (_ BitVec 32)) (defaultValue!3296 Int)) )
))
(declare-fun thiss!47746 () MutableMap!3134)

(declare-fun array_inv!3611 (array!11311) Bool)

(declare-fun array_inv!3612 (array!11309) Bool)

(assert (=> b!2358001 (= e!1505998 (and tp!753935 tp!753933 tp!753939 (array_inv!3611 (_keys!3521 (v!30776 (underlying!6653 (v!30777 (underlying!6654 thiss!47746)))))) (array_inv!3612 (_values!3504 (v!30776 (underlying!6653 (v!30777 (underlying!6654 thiss!47746)))))) e!1506002))))

(declare-fun b!2358002 () Bool)

(declare-fun e!1506000 () Bool)

(declare-fun e!1506004 () Bool)

(assert (=> b!2358002 (= e!1506000 e!1506004)))

(declare-fun c!374811 () Bool)

(declare-fun key!7176 () K!4932)

(declare-fun contains!4832 (MutableMap!3134 K!4932) Bool)

(assert (=> b!2358002 (= c!374811 (contains!4832 thiss!47746 key!7176))))

(declare-fun lt!863237 () V!5134)

(declare-fun apply!6699 (MutableMap!3134 K!4932) V!5134)

(assert (=> b!2358002 (= lt!863237 (apply!6699 thiss!47746 key!7176))))

(declare-fun b!2358003 () Bool)

(declare-fun e!1505996 () Bool)

(assert (=> b!2358003 (= e!1506004 e!1505996)))

(declare-datatypes ((Option!5431 0))(
  ( (None!5430) (Some!5430 (v!30778 V!5134)) )
))
(declare-fun lt!863238 () Option!5431)

(declare-fun getValueByKey!107 (List!27968 K!4932) Option!5431)

(declare-datatypes ((ListMap!897 0))(
  ( (ListMap!898 (toList!1416 List!27968)) )
))
(declare-fun abstractMap!86 (MutableMap!3134) ListMap!897)

(assert (=> b!2358003 (= lt!863238 (getValueByKey!107 (toList!1416 (abstractMap!86 thiss!47746)) key!7176))))

(declare-fun res!1000895 () Bool)

(declare-fun isDefined!4263 (Option!5431) Bool)

(assert (=> b!2358003 (= res!1000895 (not (isDefined!4263 lt!863238)))))

(assert (=> b!2358003 (=> res!1000895 e!1505996)))

(declare-fun b!2358004 () Bool)

(declare-fun e!1505999 () Bool)

(declare-fun lt!863239 () MutLongMap!3224)

(get-info :version)

(assert (=> b!2358004 (= e!1505999 (and e!1505997 ((_ is LongMap!3224) lt!863239)))))

(assert (=> b!2358004 (= lt!863239 (v!30777 (underlying!6654 thiss!47746)))))

(declare-fun mapIsEmpty!15059 () Bool)

(declare-fun mapRes!15059 () Bool)

(assert (=> mapIsEmpty!15059 mapRes!15059))

(declare-fun b!2358005 () Bool)

(declare-fun res!1000896 () Bool)

(assert (=> b!2358005 (=> (not res!1000896) (not e!1506000))))

(assert (=> b!2358005 (= res!1000896 ((_ is MutableMapExt!3133) thiss!47746))))

(declare-fun b!2358006 () Bool)

(declare-fun dynLambda!12004 (Int K!4932) V!5134)

(declare-fun defaultEntry!3590 (MutableMap!3134) Int)

(assert (=> b!2358006 (= e!1506004 (not (= lt!863237 (dynLambda!12004 (defaultEntry!3590 thiss!47746) key!7176))))))

(declare-fun b!2358007 () Bool)

(declare-fun get!8449 (Option!5431) V!5134)

(assert (=> b!2358007 (= e!1505996 (not (= lt!863237 (get!8449 lt!863238))))))

(declare-fun res!1000897 () Bool)

(assert (=> start!231092 (=> (not res!1000897) (not e!1506000))))

(declare-fun valid!2413 (MutableMap!3134) Bool)

(assert (=> start!231092 (= res!1000897 (valid!2413 thiss!47746))))

(assert (=> start!231092 e!1506000))

(declare-fun e!1506001 () Bool)

(assert (=> start!231092 e!1506001))

(declare-fun tp_is_empty!11147 () Bool)

(assert (=> start!231092 tp_is_empty!11147))

(declare-fun b!2358008 () Bool)

(assert (=> b!2358008 (= e!1505995 e!1505998)))

(declare-fun b!2358009 () Bool)

(declare-fun tp!753936 () Bool)

(assert (=> b!2358009 (= e!1506002 (and tp!753936 mapRes!15059))))

(declare-fun condMapEmpty!15059 () Bool)

(declare-fun mapDefault!15059 () List!27968)

(assert (=> b!2358009 (= condMapEmpty!15059 (= (arr!5038 (_values!3504 (v!30776 (underlying!6653 (v!30777 (underlying!6654 thiss!47746)))))) ((as const (Array (_ BitVec 32) List!27968)) mapDefault!15059)))))

(declare-fun mapNonEmpty!15059 () Bool)

(declare-fun tp!753937 () Bool)

(declare-fun tp!753934 () Bool)

(assert (=> mapNonEmpty!15059 (= mapRes!15059 (and tp!753937 tp!753934))))

(declare-fun mapValue!15059 () List!27968)

(declare-fun mapRest!15059 () (Array (_ BitVec 32) List!27968))

(declare-fun mapKey!15059 () (_ BitVec 32))

(assert (=> mapNonEmpty!15059 (= (arr!5038 (_values!3504 (v!30776 (underlying!6653 (v!30777 (underlying!6654 thiss!47746)))))) (store mapRest!15059 mapKey!15059 mapValue!15059))))

(assert (=> b!2358010 (= e!1506001 (and e!1505999 tp!753938))))

(assert (= (and start!231092 res!1000897) b!2358005))

(assert (= (and b!2358005 res!1000896) b!2358002))

(assert (= (and b!2358002 c!374811) b!2358003))

(assert (= (and b!2358002 (not c!374811)) b!2358006))

(assert (= (and b!2358003 (not res!1000895)) b!2358007))

(assert (= (and b!2358009 condMapEmpty!15059) mapIsEmpty!15059))

(assert (= (and b!2358009 (not condMapEmpty!15059)) mapNonEmpty!15059))

(assert (= b!2358001 b!2358009))

(assert (= b!2358008 b!2358001))

(assert (= b!2358000 b!2358008))

(assert (= (and b!2358004 ((_ is LongMap!3224) (v!30777 (underlying!6654 thiss!47746)))) b!2358000))

(assert (= b!2358010 b!2358004))

(assert (= (and start!231092 ((_ is HashMap!3134) thiss!47746)) b!2358010))

(declare-fun b_lambda!73707 () Bool)

(assert (=> (not b_lambda!73707) (not b!2358006)))

(declare-fun t!207830 () Bool)

(declare-fun tb!138725 () Bool)

(assert (=> (and b!2358010 (= (defaultValue!3296 thiss!47746) (defaultEntry!3590 thiss!47746)) t!207830) tb!138725))

(declare-fun result!169590 () Bool)

(declare-fun tp_is_empty!11149 () Bool)

(assert (=> tb!138725 (= result!169590 tp_is_empty!11149)))

(assert (=> b!2358006 t!207830))

(declare-fun b_and!185267 () Bool)

(assert (= b_and!185265 (and (=> t!207830 result!169590) b_and!185267)))

(declare-fun m!2770791 () Bool)

(assert (=> b!2358007 m!2770791))

(declare-fun m!2770793 () Bool)

(assert (=> start!231092 m!2770793))

(declare-fun m!2770795 () Bool)

(assert (=> b!2358001 m!2770795))

(declare-fun m!2770797 () Bool)

(assert (=> b!2358001 m!2770797))

(declare-fun m!2770799 () Bool)

(assert (=> mapNonEmpty!15059 m!2770799))

(declare-fun m!2770801 () Bool)

(assert (=> b!2358006 m!2770801))

(declare-fun m!2770803 () Bool)

(assert (=> b!2358006 m!2770803))

(declare-fun m!2770805 () Bool)

(assert (=> b!2358003 m!2770805))

(declare-fun m!2770807 () Bool)

(assert (=> b!2358003 m!2770807))

(declare-fun m!2770809 () Bool)

(assert (=> b!2358003 m!2770809))

(declare-fun m!2770811 () Bool)

(assert (=> b!2358002 m!2770811))

(declare-fun m!2770813 () Bool)

(assert (=> b!2358002 m!2770813))

(check-sat (not start!231092) tp_is_empty!11149 (not b_next!71055) (not b!2358006) b_and!185263 (not mapNonEmpty!15059) (not b!2358001) (not b!2358003) b_and!185267 (not b_lambda!73707) (not b!2358009) tp_is_empty!11147 (not b!2358007) (not b!2358002) (not b_next!71053))
(check-sat b_and!185267 b_and!185263 (not b_next!71053) (not b_next!71055))
(get-model)

(declare-fun d!693266 () Bool)

(assert (=> d!693266 (= (get!8449 lt!863238) (v!30778 lt!863238))))

(assert (=> b!2358007 d!693266))

(declare-fun b!2358023 () Bool)

(declare-fun e!1506010 () Option!5431)

(assert (=> b!2358023 (= e!1506010 (getValueByKey!107 (t!207831 (toList!1416 (abstractMap!86 thiss!47746))) key!7176))))

(declare-fun b!2358021 () Bool)

(declare-fun e!1506009 () Option!5431)

(assert (=> b!2358021 (= e!1506009 (Some!5430 (_2!16340 (h!33271 (toList!1416 (abstractMap!86 thiss!47746))))))))

(declare-fun b!2358024 () Bool)

(assert (=> b!2358024 (= e!1506010 None!5430)))

(declare-fun d!693268 () Bool)

(declare-fun c!374816 () Bool)

(assert (=> d!693268 (= c!374816 (and ((_ is Cons!27870) (toList!1416 (abstractMap!86 thiss!47746))) (= (_1!16340 (h!33271 (toList!1416 (abstractMap!86 thiss!47746)))) key!7176)))))

(assert (=> d!693268 (= (getValueByKey!107 (toList!1416 (abstractMap!86 thiss!47746)) key!7176) e!1506009)))

(declare-fun b!2358022 () Bool)

(assert (=> b!2358022 (= e!1506009 e!1506010)))

(declare-fun c!374817 () Bool)

(assert (=> b!2358022 (= c!374817 (and ((_ is Cons!27870) (toList!1416 (abstractMap!86 thiss!47746))) (not (= (_1!16340 (h!33271 (toList!1416 (abstractMap!86 thiss!47746)))) key!7176))))))

(assert (= (and d!693268 c!374816) b!2358021))

(assert (= (and d!693268 (not c!374816)) b!2358022))

(assert (= (and b!2358022 c!374817) b!2358023))

(assert (= (and b!2358022 (not c!374817)) b!2358024))

(declare-fun m!2770815 () Bool)

(assert (=> b!2358023 m!2770815))

(assert (=> b!2358003 d!693268))

(declare-fun d!693270 () Bool)

(declare-fun c!374820 () Bool)

(assert (=> d!693270 (= c!374820 ((_ is MutableMapExt!3133) thiss!47746))))

(declare-fun e!1506013 () ListMap!897)

(assert (=> d!693270 (= (abstractMap!86 thiss!47746) e!1506013)))

(declare-fun b!2358029 () Bool)

(declare-fun abstractMap!87 (MutableMap!3134) ListMap!897)

(assert (=> b!2358029 (= e!1506013 (abstractMap!87 thiss!47746))))

(declare-fun b!2358030 () Bool)

(declare-fun abstractMap!88 (MutableMap!3134) ListMap!897)

(assert (=> b!2358030 (= e!1506013 (abstractMap!88 thiss!47746))))

(assert (= (and d!693270 c!374820) b!2358029))

(assert (= (and d!693270 (not c!374820)) b!2358030))

(declare-fun m!2770817 () Bool)

(assert (=> b!2358029 m!2770817))

(declare-fun m!2770819 () Bool)

(assert (=> b!2358030 m!2770819))

(assert (=> b!2358003 d!693270))

(declare-fun d!693272 () Bool)

(declare-fun isEmpty!15845 (Option!5431) Bool)

(assert (=> d!693272 (= (isDefined!4263 lt!863238) (not (isEmpty!15845 lt!863238)))))

(declare-fun bs!460361 () Bool)

(assert (= bs!460361 d!693272))

(declare-fun m!2770821 () Bool)

(assert (=> bs!460361 m!2770821))

(assert (=> b!2358003 d!693272))

(declare-fun d!693274 () Bool)

(declare-fun c!374823 () Bool)

(assert (=> d!693274 (= c!374823 ((_ is MutableMapExt!3133) thiss!47746))))

(declare-fun e!1506016 () Bool)

(assert (=> d!693274 (= (valid!2413 thiss!47746) e!1506016)))

(declare-fun b!2358035 () Bool)

(declare-fun valid!2414 (MutableMap!3134) Bool)

(assert (=> b!2358035 (= e!1506016 (valid!2414 thiss!47746))))

(declare-fun b!2358036 () Bool)

(declare-fun valid!2415 (MutableMap!3134) Bool)

(assert (=> b!2358036 (= e!1506016 (valid!2415 thiss!47746))))

(assert (= (and d!693274 c!374823) b!2358035))

(assert (= (and d!693274 (not c!374823)) b!2358036))

(declare-fun m!2770823 () Bool)

(assert (=> b!2358035 m!2770823))

(declare-fun m!2770825 () Bool)

(assert (=> b!2358036 m!2770825))

(assert (=> start!231092 d!693274))

(declare-fun d!693276 () Bool)

(declare-fun c!374826 () Bool)

(assert (=> d!693276 (= c!374826 ((_ is MutableMapExt!3133) thiss!47746))))

(declare-fun e!1506019 () Int)

(assert (=> d!693276 (= (defaultEntry!3590 thiss!47746) e!1506019)))

(declare-fun b!2358041 () Bool)

(declare-fun defaultEntry!3591 (MutableMap!3134) Int)

(assert (=> b!2358041 (= e!1506019 (defaultEntry!3591 thiss!47746))))

(declare-fun b!2358042 () Bool)

(declare-fun defaultEntry!3592 (MutableMap!3134) Int)

(assert (=> b!2358042 (= e!1506019 (defaultEntry!3592 thiss!47746))))

(assert (= (and d!693276 c!374826) b!2358041))

(assert (= (and d!693276 (not c!374826)) b!2358042))

(declare-fun m!2770827 () Bool)

(assert (=> b!2358041 m!2770827))

(declare-fun m!2770829 () Bool)

(assert (=> b!2358042 m!2770829))

(assert (=> b!2358006 d!693276))

(declare-fun d!693278 () Bool)

(declare-fun lt!863242 () Bool)

(declare-fun contains!4833 (ListMap!897 K!4932) Bool)

(assert (=> d!693278 (= lt!863242 (contains!4833 (abstractMap!86 thiss!47746) key!7176))))

(declare-fun e!1506022 () Bool)

(assert (=> d!693278 (= lt!863242 e!1506022)))

(declare-fun c!374829 () Bool)

(assert (=> d!693278 (= c!374829 ((_ is MutableMapExt!3133) thiss!47746))))

(assert (=> d!693278 (valid!2413 thiss!47746)))

(assert (=> d!693278 (= (contains!4832 thiss!47746 key!7176) lt!863242)))

(declare-fun b!2358047 () Bool)

(declare-fun contains!4834 (MutableMap!3134 K!4932) Bool)

(assert (=> b!2358047 (= e!1506022 (contains!4834 thiss!47746 key!7176))))

(declare-fun b!2358048 () Bool)

(declare-fun contains!4835 (MutableMap!3134 K!4932) Bool)

(assert (=> b!2358048 (= e!1506022 (contains!4835 thiss!47746 key!7176))))

(assert (= (and d!693278 c!374829) b!2358047))

(assert (= (and d!693278 (not c!374829)) b!2358048))

(assert (=> d!693278 m!2770805))

(assert (=> d!693278 m!2770805))

(declare-fun m!2770831 () Bool)

(assert (=> d!693278 m!2770831))

(assert (=> d!693278 m!2770793))

(declare-fun m!2770833 () Bool)

(assert (=> b!2358047 m!2770833))

(declare-fun m!2770835 () Bool)

(assert (=> b!2358048 m!2770835))

(assert (=> b!2358002 d!693278))

(declare-fun d!693280 () Bool)

(declare-fun e!1506028 () Bool)

(assert (=> d!693280 e!1506028))

(declare-fun c!374832 () Bool)

(assert (=> d!693280 (= c!374832 (contains!4832 thiss!47746 key!7176))))

(declare-fun lt!863245 () V!5134)

(declare-fun choose!13645 (MutableMap!3134 K!4932) V!5134)

(assert (=> d!693280 (= lt!863245 (choose!13645 thiss!47746 key!7176))))

(assert (=> d!693280 (valid!2413 thiss!47746)))

(assert (=> d!693280 (= (apply!6699 thiss!47746 key!7176) lt!863245)))

(declare-fun b!2358055 () Bool)

(declare-fun e!1506027 () Bool)

(assert (=> b!2358055 (= e!1506028 e!1506027)))

(declare-fun res!1000900 () Bool)

(assert (=> b!2358055 (= res!1000900 (isDefined!4263 (getValueByKey!107 (toList!1416 (abstractMap!86 thiss!47746)) key!7176)))))

(assert (=> b!2358055 (=> (not res!1000900) (not e!1506027))))

(declare-fun b!2358057 () Bool)

(assert (=> b!2358057 (= e!1506027 (= lt!863245 (get!8449 (getValueByKey!107 (toList!1416 (abstractMap!86 thiss!47746)) key!7176))))))

(declare-fun b!2358056 () Bool)

(assert (=> b!2358056 (= e!1506028 (= lt!863245 (dynLambda!12004 (defaultEntry!3590 thiss!47746) key!7176)))))

(assert (= (and d!693280 c!374832) b!2358055))

(assert (= (and d!693280 (not c!374832)) b!2358056))

(assert (= (and b!2358055 res!1000900) b!2358057))

(declare-fun b_lambda!73709 () Bool)

(assert (=> (not b_lambda!73709) (not b!2358056)))

(assert (=> b!2358056 t!207830))

(declare-fun b_and!185269 () Bool)

(assert (= b_and!185267 (and (=> t!207830 result!169590) b_and!185269)))

(assert (=> d!693280 m!2770811))

(declare-fun m!2770837 () Bool)

(assert (=> d!693280 m!2770837))

(assert (=> d!693280 m!2770793))

(assert (=> b!2358055 m!2770805))

(assert (=> b!2358055 m!2770807))

(assert (=> b!2358055 m!2770807))

(declare-fun m!2770839 () Bool)

(assert (=> b!2358055 m!2770839))

(assert (=> b!2358057 m!2770805))

(assert (=> b!2358057 m!2770807))

(assert (=> b!2358057 m!2770807))

(declare-fun m!2770841 () Bool)

(assert (=> b!2358057 m!2770841))

(assert (=> b!2358056 m!2770801))

(assert (=> b!2358056 m!2770803))

(assert (=> b!2358002 d!693280))

(declare-fun d!693282 () Bool)

(assert (=> d!693282 (= (array_inv!3611 (_keys!3521 (v!30776 (underlying!6653 (v!30777 (underlying!6654 thiss!47746)))))) (bvsge (size!22063 (_keys!3521 (v!30776 (underlying!6653 (v!30777 (underlying!6654 thiss!47746)))))) #b00000000000000000000000000000000))))

(assert (=> b!2358001 d!693282))

(declare-fun d!693284 () Bool)

(assert (=> d!693284 (= (array_inv!3612 (_values!3504 (v!30776 (underlying!6653 (v!30777 (underlying!6654 thiss!47746)))))) (bvsge (size!22062 (_values!3504 (v!30776 (underlying!6653 (v!30777 (underlying!6654 thiss!47746)))))) #b00000000000000000000000000000000))))

(assert (=> b!2358001 d!693284))

(declare-fun tp!753942 () Bool)

(declare-fun b!2358062 () Bool)

(declare-fun e!1506031 () Bool)

(assert (=> b!2358062 (= e!1506031 (and tp_is_empty!11147 tp_is_empty!11149 tp!753942))))

(assert (=> b!2358009 (= tp!753936 e!1506031)))

(assert (= (and b!2358009 ((_ is Cons!27870) mapDefault!15059)) b!2358062))

(declare-fun mapIsEmpty!15062 () Bool)

(declare-fun mapRes!15062 () Bool)

(assert (=> mapIsEmpty!15062 mapRes!15062))

(declare-fun mapNonEmpty!15062 () Bool)

(declare-fun tp!753950 () Bool)

(declare-fun e!1506036 () Bool)

(assert (=> mapNonEmpty!15062 (= mapRes!15062 (and tp!753950 e!1506036))))

(declare-fun mapKey!15062 () (_ BitVec 32))

(declare-fun mapRest!15062 () (Array (_ BitVec 32) List!27968))

(declare-fun mapValue!15062 () List!27968)

(assert (=> mapNonEmpty!15062 (= mapRest!15059 (store mapRest!15062 mapKey!15062 mapValue!15062))))

(declare-fun b!2358069 () Bool)

(declare-fun tp!753951 () Bool)

(assert (=> b!2358069 (= e!1506036 (and tp_is_empty!11147 tp_is_empty!11149 tp!753951))))

(declare-fun tp!753949 () Bool)

(declare-fun b!2358070 () Bool)

(declare-fun e!1506037 () Bool)

(assert (=> b!2358070 (= e!1506037 (and tp_is_empty!11147 tp_is_empty!11149 tp!753949))))

(declare-fun condMapEmpty!15062 () Bool)

(declare-fun mapDefault!15062 () List!27968)

(assert (=> mapNonEmpty!15059 (= condMapEmpty!15062 (= mapRest!15059 ((as const (Array (_ BitVec 32) List!27968)) mapDefault!15062)))))

(assert (=> mapNonEmpty!15059 (= tp!753937 (and e!1506037 mapRes!15062))))

(assert (= (and mapNonEmpty!15059 condMapEmpty!15062) mapIsEmpty!15062))

(assert (= (and mapNonEmpty!15059 (not condMapEmpty!15062)) mapNonEmpty!15062))

(assert (= (and mapNonEmpty!15062 ((_ is Cons!27870) mapValue!15062)) b!2358069))

(assert (= (and mapNonEmpty!15059 ((_ is Cons!27870) mapDefault!15062)) b!2358070))

(declare-fun m!2770843 () Bool)

(assert (=> mapNonEmpty!15062 m!2770843))

(declare-fun b!2358071 () Bool)

(declare-fun tp!753952 () Bool)

(declare-fun e!1506038 () Bool)

(assert (=> b!2358071 (= e!1506038 (and tp_is_empty!11147 tp_is_empty!11149 tp!753952))))

(assert (=> mapNonEmpty!15059 (= tp!753934 e!1506038)))

(assert (= (and mapNonEmpty!15059 ((_ is Cons!27870) mapValue!15059)) b!2358071))

(declare-fun b!2358072 () Bool)

(declare-fun e!1506039 () Bool)

(declare-fun tp!753953 () Bool)

(assert (=> b!2358072 (= e!1506039 (and tp_is_empty!11147 tp_is_empty!11149 tp!753953))))

(assert (=> b!2358001 (= tp!753933 e!1506039)))

(assert (= (and b!2358001 ((_ is Cons!27870) (zeroValue!3482 (v!30776 (underlying!6653 (v!30777 (underlying!6654 thiss!47746))))))) b!2358072))

(declare-fun tp!753954 () Bool)

(declare-fun b!2358073 () Bool)

(declare-fun e!1506040 () Bool)

(assert (=> b!2358073 (= e!1506040 (and tp_is_empty!11147 tp_is_empty!11149 tp!753954))))

(assert (=> b!2358001 (= tp!753939 e!1506040)))

(assert (= (and b!2358001 ((_ is Cons!27870) (minValue!3482 (v!30776 (underlying!6653 (v!30777 (underlying!6654 thiss!47746))))))) b!2358073))

(declare-fun b_lambda!73711 () Bool)

(assert (= b_lambda!73707 (or (and b!2358010 b_free!70351 (= (defaultValue!3296 thiss!47746) (defaultEntry!3590 thiss!47746))) b_lambda!73711)))

(check-sat tp_is_empty!11149 (not b!2358036) (not mapNonEmpty!15062) (not b!2358048) tp_is_empty!11147 (not b!2358069) (not b!2358073) b_and!185269 (not b!2358041) (not b!2358055) (not b!2358071) (not d!693272) (not b!2358056) (not b!2358062) (not b!2358035) (not b_lambda!73709) (not b_next!71055) (not b!2358029) (not d!693278) (not b!2358070) (not b!2358042) b_and!185263 (not b_lambda!73711) (not d!693280) (not b!2358023) (not b!2358057) (not b!2358072) (not b!2358047) (not b!2358030) (not b_next!71053))
(check-sat b_and!185269 b_and!185263 (not b_next!71053) (not b_next!71055))
