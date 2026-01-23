; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497536 () Bool)

(assert start!497536)

(declare-fun b!4812116 () Bool)

(declare-fun b_free!130243 () Bool)

(declare-fun b_next!131033 () Bool)

(assert (=> b!4812116 (= b_free!130243 (not b_next!131033))))

(declare-fun tp!1361172 () Bool)

(declare-fun b_and!342047 () Bool)

(assert (=> b!4812116 (= tp!1361172 b_and!342047)))

(declare-fun b!4812113 () Bool)

(declare-fun b_free!130245 () Bool)

(declare-fun b_next!131035 () Bool)

(assert (=> b!4812113 (= b_free!130245 (not b_next!131035))))

(declare-fun tp!1361173 () Bool)

(declare-fun b_and!342049 () Bool)

(assert (=> b!4812113 (= tp!1361173 b_and!342049)))

(declare-fun bs!1160165 () Bool)

(declare-fun b!4812108 () Bool)

(declare-fun b!4812109 () Bool)

(assert (= bs!1160165 (and b!4812108 b!4812109)))

(declare-fun lambda!233817 () Int)

(declare-fun lambda!233816 () Int)

(assert (=> bs!1160165 (= lambda!233817 lambda!233816)))

(declare-fun b!4812106 () Bool)

(declare-fun e!3006344 () Bool)

(declare-fun e!3006349 () Bool)

(assert (=> b!4812106 (= e!3006344 e!3006349)))

(declare-fun b!4812107 () Bool)

(declare-fun e!3006343 () Bool)

(assert (=> b!4812107 (= e!3006343 e!3006344)))

(declare-fun res!2046798 () Bool)

(declare-fun e!3006346 () Bool)

(assert (=> b!4812108 (=> (not res!2046798) (not e!3006346))))

(declare-datatypes ((K!16204 0))(
  ( (K!16205 (val!21269 Int)) )
))
(declare-datatypes ((V!16450 0))(
  ( (V!16451 (val!21270 Int)) )
))
(declare-datatypes ((tuple2!57480 0))(
  ( (tuple2!57481 (_1!32034 K!16204) (_2!32034 V!16450)) )
))
(declare-datatypes ((List!54703 0))(
  ( (Nil!54579) (Cons!54579 (h!61011 tuple2!57480) (t!362191 List!54703)) )
))
(declare-datatypes ((tuple2!57482 0))(
  ( (tuple2!57483 (_1!32035 (_ BitVec 64)) (_2!32035 List!54703)) )
))
(declare-datatypes ((List!54704 0))(
  ( (Nil!54580) (Cons!54580 (h!61012 tuple2!57482) (t!362192 List!54704)) )
))
(declare-datatypes ((ListLongMap!5641 0))(
  ( (ListLongMap!5642 (toList!7165 List!54704)) )
))
(declare-fun lt!1963527 () ListLongMap!5641)

(declare-fun forall!12400 (List!54704 Int) Bool)

(assert (=> b!4812108 (= res!2046798 (forall!12400 (toList!7165 lt!1963527) lambda!233817))))

(declare-fun mapNonEmpty!22409 () Bool)

(declare-fun mapRes!22409 () Bool)

(declare-fun tp!1361171 () Bool)

(declare-fun tp!1361169 () Bool)

(assert (=> mapNonEmpty!22409 (= mapRes!22409 (and tp!1361171 tp!1361169))))

(declare-fun mapRest!22409 () (Array (_ BitVec 32) List!54703))

(declare-fun mapKey!22409 () (_ BitVec 32))

(declare-datatypes ((array!18682 0))(
  ( (array!18683 (arr!8335 (Array (_ BitVec 32) (_ BitVec 64))) (size!36581 (_ BitVec 32))) )
))
(declare-datatypes ((array!18684 0))(
  ( (array!18685 (arr!8336 (Array (_ BitVec 32) List!54703)) (size!36582 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10150 0))(
  ( (LongMapFixedSize!10151 (defaultEntry!5497 Int) (mask!15093 (_ BitVec 32)) (extraKeys!5355 (_ BitVec 32)) (zeroValue!5368 List!54703) (minValue!5368 List!54703) (_size!10175 (_ BitVec 32)) (_keys!5424 array!18682) (_values!5393 array!18684) (_vacant!5140 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20065 0))(
  ( (Cell!20066 (v!48909 LongMapFixedSize!10150)) )
))
(declare-datatypes ((MutLongMap!5075 0))(
  ( (LongMap!5075 (underlying!10357 Cell!20065)) (MutLongMapExt!5074 (__x!33323 Int)) )
))
(declare-datatypes ((Hashable!7086 0))(
  ( (HashableExt!7085 (__x!33324 Int)) )
))
(declare-datatypes ((Cell!20067 0))(
  ( (Cell!20068 (v!48910 MutLongMap!5075)) )
))
(declare-datatypes ((MutableMap!4959 0))(
  ( (MutableMapExt!4958 (__x!33325 Int)) (HashMap!4959 (underlying!10358 Cell!20067) (hashF!13362 Hashable!7086) (_size!10176 (_ BitVec 32)) (defaultValue!5130 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4959)

(declare-fun mapValue!22409 () List!54703)

(assert (=> mapNonEmpty!22409 (= (arr!8336 (_values!5393 (v!48909 (underlying!10357 (v!48910 (underlying!10358 thiss!41921)))))) (store mapRest!22409 mapKey!22409 mapValue!22409))))

(declare-datatypes ((Unit!141622 0))(
  ( (Unit!141623) )
))
(declare-fun e!3006345 () Unit!141622)

(declare-fun lt!1963531 () ListLongMap!5641)

(declare-fun lt!1963530 () tuple2!57482)

(declare-fun forallContained!4275 (List!54704 Int tuple2!57482) Unit!141622)

(assert (=> b!4812109 (= e!3006345 (forallContained!4275 (toList!7165 lt!1963531) lambda!233816 lt!1963530))))

(declare-fun map!12450 (MutLongMap!5075) ListLongMap!5641)

(assert (=> b!4812109 (= lt!1963531 (map!12450 (v!48910 (underlying!10358 thiss!41921))))))

(declare-fun lt!1963535 () List!54703)

(declare-fun lt!1963534 () (_ BitVec 64))

(declare-fun apply!13178 (MutLongMap!5075 (_ BitVec 64)) List!54703)

(assert (=> b!4812109 (= lt!1963535 (apply!13178 (v!48910 (underlying!10358 thiss!41921)) lt!1963534))))

(assert (=> b!4812109 (= lt!1963530 (tuple2!57483 lt!1963534 lt!1963535))))

(declare-fun c!820158 () Bool)

(declare-fun contains!18306 (List!54704 tuple2!57482) Bool)

(assert (=> b!4812109 (= c!820158 (not (contains!18306 (toList!7165 lt!1963531) lt!1963530)))))

(declare-fun lt!1963529 () Unit!141622)

(declare-fun e!3006347 () Unit!141622)

(assert (=> b!4812109 (= lt!1963529 e!3006347)))

(declare-fun b!4812110 () Bool)

(assert (=> b!4812110 false))

(declare-fun lt!1963533 () Unit!141622)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1008 (List!54704 (_ BitVec 64) List!54703) Unit!141622)

(assert (=> b!4812110 (= lt!1963533 (lemmaGetValueByKeyImpliesContainsTuple!1008 (toList!7165 lt!1963531) lt!1963534 lt!1963535))))

(declare-datatypes ((Option!13323 0))(
  ( (None!13322) (Some!13322 (v!48911 List!54703)) )
))
(declare-fun isDefined!10461 (Option!13323) Bool)

(declare-fun getValueByKey!2502 (List!54704 (_ BitVec 64)) Option!13323)

(assert (=> b!4812110 (isDefined!10461 (getValueByKey!2502 (toList!7165 lt!1963531) lt!1963534))))

(declare-fun lt!1963526 () Unit!141622)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2289 (List!54704 (_ BitVec 64)) Unit!141622)

(assert (=> b!4812110 (= lt!1963526 (lemmaContainsKeyImpliesGetValueByKeyDefined!2289 (toList!7165 lt!1963531) lt!1963534))))

(declare-fun containsKey!4166 (List!54704 (_ BitVec 64)) Bool)

(assert (=> b!4812110 (containsKey!4166 (toList!7165 lt!1963531) lt!1963534)))

(declare-fun lt!1963536 () Unit!141622)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!285 (List!54704 (_ BitVec 64)) Unit!141622)

(assert (=> b!4812110 (= lt!1963536 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!285 (toList!7165 lt!1963531) lt!1963534))))

(declare-fun Unit!141624 () Unit!141622)

(assert (=> b!4812110 (= e!3006347 Unit!141624)))

(declare-fun b!4812111 () Bool)

(declare-fun e!3006342 () Bool)

(declare-fun tp!1361167 () Bool)

(assert (=> b!4812111 (= e!3006342 (and tp!1361167 mapRes!22409))))

(declare-fun condMapEmpty!22409 () Bool)

(declare-fun mapDefault!22409 () List!54703)

(assert (=> b!4812111 (= condMapEmpty!22409 (= (arr!8336 (_values!5393 (v!48909 (underlying!10357 (v!48910 (underlying!10358 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54703)) mapDefault!22409)))))

(declare-fun b!4812112 () Bool)

(declare-fun res!2046800 () Bool)

(declare-fun e!3006341 () Bool)

(assert (=> b!4812112 (=> (not res!2046800) (not e!3006341))))

(declare-fun valid!4105 (MutableMap!4959) Bool)

(assert (=> b!4812112 (= res!2046800 (valid!4105 thiss!41921))))

(declare-fun res!2046801 () Bool)

(assert (=> start!497536 (=> (not res!2046801) (not e!3006341))))

(get-info :version)

(assert (=> start!497536 (= res!2046801 ((_ is HashMap!4959) thiss!41921))))

(assert (=> start!497536 e!3006341))

(declare-fun e!3006348 () Bool)

(assert (=> start!497536 e!3006348))

(declare-fun tp_is_empty!34033 () Bool)

(assert (=> start!497536 tp_is_empty!34033))

(declare-fun e!3006351 () Bool)

(assert (=> b!4812113 (= e!3006348 (and e!3006351 tp!1361173))))

(declare-fun b!4812114 () Bool)

(declare-fun lt!1963528 () MutLongMap!5075)

(assert (=> b!4812114 (= e!3006351 (and e!3006343 ((_ is LongMap!5075) lt!1963528)))))

(assert (=> b!4812114 (= lt!1963528 (v!48910 (underlying!10358 thiss!41921)))))

(declare-fun b!4812115 () Bool)

(declare-fun Unit!141625 () Unit!141622)

(assert (=> b!4812115 (= e!3006347 Unit!141625)))

(declare-fun tp!1361170 () Bool)

(declare-fun tp!1361168 () Bool)

(declare-fun array_inv!6021 (array!18682) Bool)

(declare-fun array_inv!6022 (array!18684) Bool)

(assert (=> b!4812116 (= e!3006349 (and tp!1361172 tp!1361170 tp!1361168 (array_inv!6021 (_keys!5424 (v!48909 (underlying!10357 (v!48910 (underlying!10358 thiss!41921)))))) (array_inv!6022 (_values!5393 (v!48909 (underlying!10357 (v!48910 (underlying!10358 thiss!41921)))))) e!3006342))))

(declare-fun mapIsEmpty!22409 () Bool)

(assert (=> mapIsEmpty!22409 mapRes!22409))

(declare-fun b!4812117 () Bool)

(declare-fun allKeysSameHashInMap!2413 (ListLongMap!5641 Hashable!7086) Bool)

(assert (=> b!4812117 (= e!3006346 (not (allKeysSameHashInMap!2413 lt!1963527 (hashF!13362 thiss!41921))))))

(declare-fun b!4812118 () Bool)

(assert (=> b!4812118 (= e!3006341 e!3006346)))

(declare-fun res!2046799 () Bool)

(assert (=> b!4812118 (=> (not res!2046799) (not e!3006346))))

(declare-fun key!1652 () K!16204)

(declare-datatypes ((ListMap!6583 0))(
  ( (ListMap!6584 (toList!7166 List!54703)) )
))
(declare-fun contains!18307 (ListMap!6583 K!16204) Bool)

(declare-fun extractMap!2543 (List!54704) ListMap!6583)

(assert (=> b!4812118 (= res!2046799 (contains!18307 (extractMap!2543 (toList!7165 lt!1963527)) key!1652))))

(assert (=> b!4812118 (= lt!1963527 (map!12450 (v!48910 (underlying!10358 thiss!41921))))))

(declare-fun lt!1963532 () Unit!141622)

(assert (=> b!4812118 (= lt!1963532 e!3006345)))

(declare-fun c!820157 () Bool)

(declare-fun contains!18308 (MutLongMap!5075 (_ BitVec 64)) Bool)

(assert (=> b!4812118 (= c!820157 (contains!18308 (v!48910 (underlying!10358 thiss!41921)) lt!1963534))))

(declare-fun hash!5152 (Hashable!7086 K!16204) (_ BitVec 64))

(assert (=> b!4812118 (= lt!1963534 (hash!5152 (hashF!13362 thiss!41921) key!1652))))

(declare-fun b!4812119 () Bool)

(declare-fun Unit!141626 () Unit!141622)

(assert (=> b!4812119 (= e!3006345 Unit!141626)))

(assert (= (and start!497536 res!2046801) b!4812112))

(assert (= (and b!4812112 res!2046800) b!4812118))

(assert (= (and b!4812118 c!820157) b!4812109))

(assert (= (and b!4812118 (not c!820157)) b!4812119))

(assert (= (and b!4812109 c!820158) b!4812110))

(assert (= (and b!4812109 (not c!820158)) b!4812115))

(assert (= (and b!4812118 res!2046799) b!4812108))

(assert (= (and b!4812108 res!2046798) b!4812117))

(assert (= (and b!4812111 condMapEmpty!22409) mapIsEmpty!22409))

(assert (= (and b!4812111 (not condMapEmpty!22409)) mapNonEmpty!22409))

(assert (= b!4812116 b!4812111))

(assert (= b!4812106 b!4812116))

(assert (= b!4812107 b!4812106))

(assert (= (and b!4812114 ((_ is LongMap!5075) (v!48910 (underlying!10358 thiss!41921)))) b!4812107))

(assert (= b!4812113 b!4812114))

(assert (= (and start!497536 ((_ is HashMap!4959) thiss!41921)) b!4812113))

(declare-fun m!5797726 () Bool)

(assert (=> b!4812117 m!5797726))

(declare-fun m!5797728 () Bool)

(assert (=> mapNonEmpty!22409 m!5797728))

(declare-fun m!5797730 () Bool)

(assert (=> b!4812108 m!5797730))

(declare-fun m!5797732 () Bool)

(assert (=> b!4812109 m!5797732))

(declare-fun m!5797734 () Bool)

(assert (=> b!4812109 m!5797734))

(declare-fun m!5797736 () Bool)

(assert (=> b!4812109 m!5797736))

(declare-fun m!5797738 () Bool)

(assert (=> b!4812109 m!5797738))

(declare-fun m!5797740 () Bool)

(assert (=> b!4812116 m!5797740))

(declare-fun m!5797742 () Bool)

(assert (=> b!4812116 m!5797742))

(declare-fun m!5797744 () Bool)

(assert (=> b!4812118 m!5797744))

(declare-fun m!5797746 () Bool)

(assert (=> b!4812118 m!5797746))

(assert (=> b!4812118 m!5797746))

(declare-fun m!5797748 () Bool)

(assert (=> b!4812118 m!5797748))

(declare-fun m!5797750 () Bool)

(assert (=> b!4812118 m!5797750))

(assert (=> b!4812118 m!5797734))

(declare-fun m!5797752 () Bool)

(assert (=> b!4812110 m!5797752))

(declare-fun m!5797754 () Bool)

(assert (=> b!4812110 m!5797754))

(declare-fun m!5797756 () Bool)

(assert (=> b!4812110 m!5797756))

(declare-fun m!5797758 () Bool)

(assert (=> b!4812110 m!5797758))

(assert (=> b!4812110 m!5797754))

(declare-fun m!5797760 () Bool)

(assert (=> b!4812110 m!5797760))

(declare-fun m!5797762 () Bool)

(assert (=> b!4812110 m!5797762))

(declare-fun m!5797764 () Bool)

(assert (=> b!4812112 m!5797764))

(check-sat (not b!4812111) tp_is_empty!34033 b_and!342047 (not b_next!131033) (not mapNonEmpty!22409) (not b_next!131035) (not b!4812117) (not b!4812108) (not b!4812109) (not b!4812110) (not b!4812112) b_and!342049 (not b!4812118) (not b!4812116))
(check-sat b_and!342047 b_and!342049 (not b_next!131033) (not b_next!131035))
(get-model)

(declare-fun d!1540596 () Bool)

(declare-fun isEmpty!29554 (Option!13323) Bool)

(assert (=> d!1540596 (= (isDefined!10461 (getValueByKey!2502 (toList!7165 lt!1963531) lt!1963534)) (not (isEmpty!29554 (getValueByKey!2502 (toList!7165 lt!1963531) lt!1963534))))))

(declare-fun bs!1160166 () Bool)

(assert (= bs!1160166 d!1540596))

(assert (=> bs!1160166 m!5797754))

(declare-fun m!5797766 () Bool)

(assert (=> bs!1160166 m!5797766))

(assert (=> b!4812110 d!1540596))

(declare-fun b!4812129 () Bool)

(declare-fun e!3006356 () Option!13323)

(declare-fun e!3006357 () Option!13323)

(assert (=> b!4812129 (= e!3006356 e!3006357)))

(declare-fun c!820164 () Bool)

(assert (=> b!4812129 (= c!820164 (and ((_ is Cons!54580) (toList!7165 lt!1963531)) (not (= (_1!32035 (h!61012 (toList!7165 lt!1963531))) lt!1963534))))))

(declare-fun b!4812131 () Bool)

(assert (=> b!4812131 (= e!3006357 None!13322)))

(declare-fun b!4812130 () Bool)

(assert (=> b!4812130 (= e!3006357 (getValueByKey!2502 (t!362192 (toList!7165 lt!1963531)) lt!1963534))))

(declare-fun b!4812128 () Bool)

(assert (=> b!4812128 (= e!3006356 (Some!13322 (_2!32035 (h!61012 (toList!7165 lt!1963531)))))))

(declare-fun d!1540598 () Bool)

(declare-fun c!820163 () Bool)

(assert (=> d!1540598 (= c!820163 (and ((_ is Cons!54580) (toList!7165 lt!1963531)) (= (_1!32035 (h!61012 (toList!7165 lt!1963531))) lt!1963534)))))

(assert (=> d!1540598 (= (getValueByKey!2502 (toList!7165 lt!1963531) lt!1963534) e!3006356)))

(assert (= (and d!1540598 c!820163) b!4812128))

(assert (= (and d!1540598 (not c!820163)) b!4812129))

(assert (= (and b!4812129 c!820164) b!4812130))

(assert (= (and b!4812129 (not c!820164)) b!4812131))

(declare-fun m!5797768 () Bool)

(assert (=> b!4812130 m!5797768))

(assert (=> b!4812110 d!1540598))

(declare-fun d!1540600 () Bool)

(assert (=> d!1540600 (contains!18306 (toList!7165 lt!1963531) (tuple2!57483 lt!1963534 lt!1963535))))

(declare-fun lt!1963539 () Unit!141622)

(declare-fun choose!34868 (List!54704 (_ BitVec 64) List!54703) Unit!141622)

(assert (=> d!1540600 (= lt!1963539 (choose!34868 (toList!7165 lt!1963531) lt!1963534 lt!1963535))))

(declare-fun e!3006360 () Bool)

(assert (=> d!1540600 e!3006360))

(declare-fun res!2046804 () Bool)

(assert (=> d!1540600 (=> (not res!2046804) (not e!3006360))))

(declare-fun isStrictlySorted!934 (List!54704) Bool)

(assert (=> d!1540600 (= res!2046804 (isStrictlySorted!934 (toList!7165 lt!1963531)))))

(assert (=> d!1540600 (= (lemmaGetValueByKeyImpliesContainsTuple!1008 (toList!7165 lt!1963531) lt!1963534 lt!1963535) lt!1963539)))

(declare-fun b!4812134 () Bool)

(assert (=> b!4812134 (= e!3006360 (= (getValueByKey!2502 (toList!7165 lt!1963531) lt!1963534) (Some!13322 lt!1963535)))))

(assert (= (and d!1540600 res!2046804) b!4812134))

(declare-fun m!5797770 () Bool)

(assert (=> d!1540600 m!5797770))

(declare-fun m!5797772 () Bool)

(assert (=> d!1540600 m!5797772))

(declare-fun m!5797774 () Bool)

(assert (=> d!1540600 m!5797774))

(assert (=> b!4812134 m!5797754))

(assert (=> b!4812110 d!1540600))

(declare-fun d!1540602 () Bool)

(declare-fun res!2046809 () Bool)

(declare-fun e!3006365 () Bool)

(assert (=> d!1540602 (=> res!2046809 e!3006365)))

(assert (=> d!1540602 (= res!2046809 (and ((_ is Cons!54580) (toList!7165 lt!1963531)) (= (_1!32035 (h!61012 (toList!7165 lt!1963531))) lt!1963534)))))

(assert (=> d!1540602 (= (containsKey!4166 (toList!7165 lt!1963531) lt!1963534) e!3006365)))

(declare-fun b!4812139 () Bool)

(declare-fun e!3006366 () Bool)

(assert (=> b!4812139 (= e!3006365 e!3006366)))

(declare-fun res!2046810 () Bool)

(assert (=> b!4812139 (=> (not res!2046810) (not e!3006366))))

(assert (=> b!4812139 (= res!2046810 (and (or (not ((_ is Cons!54580) (toList!7165 lt!1963531))) (bvsle (_1!32035 (h!61012 (toList!7165 lt!1963531))) lt!1963534)) ((_ is Cons!54580) (toList!7165 lt!1963531)) (bvslt (_1!32035 (h!61012 (toList!7165 lt!1963531))) lt!1963534)))))

(declare-fun b!4812140 () Bool)

(assert (=> b!4812140 (= e!3006366 (containsKey!4166 (t!362192 (toList!7165 lt!1963531)) lt!1963534))))

(assert (= (and d!1540602 (not res!2046809)) b!4812139))

(assert (= (and b!4812139 res!2046810) b!4812140))

(declare-fun m!5797776 () Bool)

(assert (=> b!4812140 m!5797776))

(assert (=> b!4812110 d!1540602))

(declare-fun d!1540604 () Bool)

(assert (=> d!1540604 (isDefined!10461 (getValueByKey!2502 (toList!7165 lt!1963531) lt!1963534))))

(declare-fun lt!1963542 () Unit!141622)

(declare-fun choose!34869 (List!54704 (_ BitVec 64)) Unit!141622)

(assert (=> d!1540604 (= lt!1963542 (choose!34869 (toList!7165 lt!1963531) lt!1963534))))

(declare-fun e!3006369 () Bool)

(assert (=> d!1540604 e!3006369))

(declare-fun res!2046813 () Bool)

(assert (=> d!1540604 (=> (not res!2046813) (not e!3006369))))

(assert (=> d!1540604 (= res!2046813 (isStrictlySorted!934 (toList!7165 lt!1963531)))))

(assert (=> d!1540604 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2289 (toList!7165 lt!1963531) lt!1963534) lt!1963542)))

(declare-fun b!4812143 () Bool)

(assert (=> b!4812143 (= e!3006369 (containsKey!4166 (toList!7165 lt!1963531) lt!1963534))))

(assert (= (and d!1540604 res!2046813) b!4812143))

(assert (=> d!1540604 m!5797754))

(assert (=> d!1540604 m!5797754))

(assert (=> d!1540604 m!5797760))

(declare-fun m!5797778 () Bool)

(assert (=> d!1540604 m!5797778))

(assert (=> d!1540604 m!5797774))

(assert (=> b!4812143 m!5797752))

(assert (=> b!4812110 d!1540604))

(declare-fun d!1540606 () Bool)

(assert (=> d!1540606 (containsKey!4166 (toList!7165 lt!1963531) lt!1963534)))

(declare-fun lt!1963545 () Unit!141622)

(declare-fun choose!34870 (List!54704 (_ BitVec 64)) Unit!141622)

(assert (=> d!1540606 (= lt!1963545 (choose!34870 (toList!7165 lt!1963531) lt!1963534))))

(declare-fun e!3006372 () Bool)

(assert (=> d!1540606 e!3006372))

(declare-fun res!2046816 () Bool)

(assert (=> d!1540606 (=> (not res!2046816) (not e!3006372))))

(assert (=> d!1540606 (= res!2046816 (isStrictlySorted!934 (toList!7165 lt!1963531)))))

(assert (=> d!1540606 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!285 (toList!7165 lt!1963531) lt!1963534) lt!1963545)))

(declare-fun b!4812146 () Bool)

(assert (=> b!4812146 (= e!3006372 (isDefined!10461 (getValueByKey!2502 (toList!7165 lt!1963531) lt!1963534)))))

(assert (= (and d!1540606 res!2046816) b!4812146))

(assert (=> d!1540606 m!5797752))

(declare-fun m!5797780 () Bool)

(assert (=> d!1540606 m!5797780))

(assert (=> d!1540606 m!5797774))

(assert (=> b!4812146 m!5797754))

(assert (=> b!4812146 m!5797754))

(assert (=> b!4812146 m!5797760))

(assert (=> b!4812110 d!1540606))

(declare-fun d!1540608 () Bool)

(assert (=> d!1540608 (= (array_inv!6021 (_keys!5424 (v!48909 (underlying!10357 (v!48910 (underlying!10358 thiss!41921)))))) (bvsge (size!36581 (_keys!5424 (v!48909 (underlying!10357 (v!48910 (underlying!10358 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4812116 d!1540608))

(declare-fun d!1540610 () Bool)

(assert (=> d!1540610 (= (array_inv!6022 (_values!5393 (v!48909 (underlying!10357 (v!48910 (underlying!10358 thiss!41921)))))) (bvsge (size!36582 (_values!5393 (v!48909 (underlying!10357 (v!48910 (underlying!10358 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4812116 d!1540610))

(declare-fun bs!1160167 () Bool)

(declare-fun b!4812151 () Bool)

(assert (= bs!1160167 (and b!4812151 b!4812109)))

(declare-fun lambda!233820 () Int)

(assert (=> bs!1160167 (= lambda!233820 lambda!233816)))

(declare-fun bs!1160168 () Bool)

(assert (= bs!1160168 (and b!4812151 b!4812108)))

(assert (=> bs!1160168 (= lambda!233820 lambda!233817)))

(declare-fun d!1540612 () Bool)

(declare-fun res!2046821 () Bool)

(declare-fun e!3006375 () Bool)

(assert (=> d!1540612 (=> (not res!2046821) (not e!3006375))))

(declare-fun valid!4106 (MutLongMap!5075) Bool)

(assert (=> d!1540612 (= res!2046821 (valid!4106 (v!48910 (underlying!10358 thiss!41921))))))

(assert (=> d!1540612 (= (valid!4105 thiss!41921) e!3006375)))

(declare-fun res!2046822 () Bool)

(assert (=> b!4812151 (=> (not res!2046822) (not e!3006375))))

(assert (=> b!4812151 (= res!2046822 (forall!12400 (toList!7165 (map!12450 (v!48910 (underlying!10358 thiss!41921)))) lambda!233820))))

(declare-fun b!4812152 () Bool)

(assert (=> b!4812152 (= e!3006375 (allKeysSameHashInMap!2413 (map!12450 (v!48910 (underlying!10358 thiss!41921))) (hashF!13362 thiss!41921)))))

(assert (= (and d!1540612 res!2046821) b!4812151))

(assert (= (and b!4812151 res!2046822) b!4812152))

(declare-fun m!5797782 () Bool)

(assert (=> d!1540612 m!5797782))

(assert (=> b!4812151 m!5797734))

(declare-fun m!5797784 () Bool)

(assert (=> b!4812151 m!5797784))

(assert (=> b!4812152 m!5797734))

(assert (=> b!4812152 m!5797734))

(declare-fun m!5797786 () Bool)

(assert (=> b!4812152 m!5797786))

(assert (=> b!4812112 d!1540612))

(declare-fun d!1540614 () Bool)

(declare-fun res!2046827 () Bool)

(declare-fun e!3006380 () Bool)

(assert (=> d!1540614 (=> res!2046827 e!3006380)))

(assert (=> d!1540614 (= res!2046827 ((_ is Nil!54580) (toList!7165 lt!1963527)))))

(assert (=> d!1540614 (= (forall!12400 (toList!7165 lt!1963527) lambda!233817) e!3006380)))

(declare-fun b!4812157 () Bool)

(declare-fun e!3006381 () Bool)

(assert (=> b!4812157 (= e!3006380 e!3006381)))

(declare-fun res!2046828 () Bool)

(assert (=> b!4812157 (=> (not res!2046828) (not e!3006381))))

(declare-fun dynLambda!22143 (Int tuple2!57482) Bool)

(assert (=> b!4812157 (= res!2046828 (dynLambda!22143 lambda!233817 (h!61012 (toList!7165 lt!1963527))))))

(declare-fun b!4812158 () Bool)

(assert (=> b!4812158 (= e!3006381 (forall!12400 (t!362192 (toList!7165 lt!1963527)) lambda!233817))))

(assert (= (and d!1540614 (not res!2046827)) b!4812157))

(assert (= (and b!4812157 res!2046828) b!4812158))

(declare-fun b_lambda!188277 () Bool)

(assert (=> (not b_lambda!188277) (not b!4812157)))

(declare-fun m!5797788 () Bool)

(assert (=> b!4812157 m!5797788))

(declare-fun m!5797790 () Bool)

(assert (=> b!4812158 m!5797790))

(assert (=> b!4812108 d!1540614))

(declare-fun bs!1160169 () Bool)

(declare-fun d!1540616 () Bool)

(assert (= bs!1160169 (and d!1540616 b!4812109)))

(declare-fun lambda!233823 () Int)

(assert (=> bs!1160169 (not (= lambda!233823 lambda!233816))))

(declare-fun bs!1160170 () Bool)

(assert (= bs!1160170 (and d!1540616 b!4812108)))

(assert (=> bs!1160170 (not (= lambda!233823 lambda!233817))))

(declare-fun bs!1160171 () Bool)

(assert (= bs!1160171 (and d!1540616 b!4812151)))

(assert (=> bs!1160171 (not (= lambda!233823 lambda!233820))))

(assert (=> d!1540616 true))

(assert (=> d!1540616 (= (allKeysSameHashInMap!2413 lt!1963527 (hashF!13362 thiss!41921)) (forall!12400 (toList!7165 lt!1963527) lambda!233823))))

(declare-fun bs!1160172 () Bool)

(assert (= bs!1160172 d!1540616))

(declare-fun m!5797792 () Bool)

(assert (=> bs!1160172 m!5797792))

(assert (=> b!4812117 d!1540616))

(declare-fun bm!335845 () Bool)

(declare-fun call!335850 () Bool)

(declare-datatypes ((List!54705 0))(
  ( (Nil!54581) (Cons!54581 (h!61013 K!16204) (t!362195 List!54705)) )
))
(declare-fun e!3006396 () List!54705)

(declare-fun contains!18309 (List!54705 K!16204) Bool)

(assert (=> bm!335845 (= call!335850 (contains!18309 e!3006396 key!1652))))

(declare-fun c!820172 () Bool)

(declare-fun c!820173 () Bool)

(assert (=> bm!335845 (= c!820172 c!820173)))

(declare-fun b!4812179 () Bool)

(declare-fun e!3006398 () Unit!141622)

(declare-fun Unit!141627 () Unit!141622)

(assert (=> b!4812179 (= e!3006398 Unit!141627)))

(declare-fun b!4812180 () Bool)

(declare-fun e!3006394 () Unit!141622)

(declare-fun lt!1963563 () Unit!141622)

(assert (=> b!4812180 (= e!3006394 lt!1963563)))

(declare-fun lt!1963566 () Unit!141622)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2290 (List!54703 K!16204) Unit!141622)

(assert (=> b!4812180 (= lt!1963566 (lemmaContainsKeyImpliesGetValueByKeyDefined!2290 (toList!7166 (extractMap!2543 (toList!7165 lt!1963527))) key!1652))))

(declare-datatypes ((Option!13324 0))(
  ( (None!13323) (Some!13323 (v!48914 V!16450)) )
))
(declare-fun isDefined!10462 (Option!13324) Bool)

(declare-fun getValueByKey!2503 (List!54703 K!16204) Option!13324)

(assert (=> b!4812180 (isDefined!10462 (getValueByKey!2503 (toList!7166 (extractMap!2543 (toList!7165 lt!1963527))) key!1652))))

(declare-fun lt!1963569 () Unit!141622)

(assert (=> b!4812180 (= lt!1963569 lt!1963566)))

(declare-fun lemmaInListThenGetKeysListContains!1118 (List!54703 K!16204) Unit!141622)

(assert (=> b!4812180 (= lt!1963563 (lemmaInListThenGetKeysListContains!1118 (toList!7166 (extractMap!2543 (toList!7165 lt!1963527))) key!1652))))

(assert (=> b!4812180 call!335850))

(declare-fun b!4812182 () Bool)

(declare-fun e!3006399 () Bool)

(declare-fun keys!20008 (ListMap!6583) List!54705)

(assert (=> b!4812182 (= e!3006399 (not (contains!18309 (keys!20008 (extractMap!2543 (toList!7165 lt!1963527))) key!1652)))))

(declare-fun b!4812183 () Bool)

(declare-fun getKeysList!1123 (List!54703) List!54705)

(assert (=> b!4812183 (= e!3006396 (getKeysList!1123 (toList!7166 (extractMap!2543 (toList!7165 lt!1963527)))))))

(declare-fun b!4812184 () Bool)

(assert (=> b!4812184 (= e!3006396 (keys!20008 (extractMap!2543 (toList!7165 lt!1963527))))))

(declare-fun b!4812185 () Bool)

(declare-fun e!3006397 () Bool)

(assert (=> b!4812185 (= e!3006397 (contains!18309 (keys!20008 (extractMap!2543 (toList!7165 lt!1963527))) key!1652))))

(declare-fun b!4812186 () Bool)

(declare-fun e!3006395 () Bool)

(assert (=> b!4812186 (= e!3006395 e!3006397)))

(declare-fun res!2046837 () Bool)

(assert (=> b!4812186 (=> (not res!2046837) (not e!3006397))))

(assert (=> b!4812186 (= res!2046837 (isDefined!10462 (getValueByKey!2503 (toList!7166 (extractMap!2543 (toList!7165 lt!1963527))) key!1652)))))

(declare-fun b!4812187 () Bool)

(assert (=> b!4812187 (= e!3006394 e!3006398)))

(declare-fun c!820171 () Bool)

(assert (=> b!4812187 (= c!820171 call!335850)))

(declare-fun b!4812181 () Bool)

(assert (=> b!4812181 false))

(declare-fun lt!1963567 () Unit!141622)

(declare-fun lt!1963562 () Unit!141622)

(assert (=> b!4812181 (= lt!1963567 lt!1963562)))

(declare-fun containsKey!4167 (List!54703 K!16204) Bool)

(assert (=> b!4812181 (containsKey!4167 (toList!7166 (extractMap!2543 (toList!7165 lt!1963527))) key!1652)))

(declare-fun lemmaInGetKeysListThenContainsKey!1123 (List!54703 K!16204) Unit!141622)

(assert (=> b!4812181 (= lt!1963562 (lemmaInGetKeysListThenContainsKey!1123 (toList!7166 (extractMap!2543 (toList!7165 lt!1963527))) key!1652))))

(declare-fun Unit!141628 () Unit!141622)

(assert (=> b!4812181 (= e!3006398 Unit!141628)))

(declare-fun d!1540618 () Bool)

(assert (=> d!1540618 e!3006395))

(declare-fun res!2046835 () Bool)

(assert (=> d!1540618 (=> res!2046835 e!3006395)))

(assert (=> d!1540618 (= res!2046835 e!3006399)))

(declare-fun res!2046836 () Bool)

(assert (=> d!1540618 (=> (not res!2046836) (not e!3006399))))

(declare-fun lt!1963568 () Bool)

(assert (=> d!1540618 (= res!2046836 (not lt!1963568))))

(declare-fun lt!1963564 () Bool)

(assert (=> d!1540618 (= lt!1963568 lt!1963564)))

(declare-fun lt!1963565 () Unit!141622)

(assert (=> d!1540618 (= lt!1963565 e!3006394)))

(assert (=> d!1540618 (= c!820173 lt!1963564)))

(assert (=> d!1540618 (= lt!1963564 (containsKey!4167 (toList!7166 (extractMap!2543 (toList!7165 lt!1963527))) key!1652))))

(assert (=> d!1540618 (= (contains!18307 (extractMap!2543 (toList!7165 lt!1963527)) key!1652) lt!1963568)))

(assert (= (and d!1540618 c!820173) b!4812180))

(assert (= (and d!1540618 (not c!820173)) b!4812187))

(assert (= (and b!4812187 c!820171) b!4812181))

(assert (= (and b!4812187 (not c!820171)) b!4812179))

(assert (= (or b!4812180 b!4812187) bm!335845))

(assert (= (and bm!335845 c!820172) b!4812183))

(assert (= (and bm!335845 (not c!820172)) b!4812184))

(assert (= (and d!1540618 res!2046836) b!4812182))

(assert (= (and d!1540618 (not res!2046835)) b!4812186))

(assert (= (and b!4812186 res!2046837) b!4812185))

(declare-fun m!5797794 () Bool)

(assert (=> b!4812181 m!5797794))

(declare-fun m!5797796 () Bool)

(assert (=> b!4812181 m!5797796))

(assert (=> b!4812184 m!5797746))

(declare-fun m!5797798 () Bool)

(assert (=> b!4812184 m!5797798))

(declare-fun m!5797800 () Bool)

(assert (=> b!4812183 m!5797800))

(assert (=> d!1540618 m!5797794))

(declare-fun m!5797802 () Bool)

(assert (=> b!4812180 m!5797802))

(declare-fun m!5797804 () Bool)

(assert (=> b!4812180 m!5797804))

(assert (=> b!4812180 m!5797804))

(declare-fun m!5797806 () Bool)

(assert (=> b!4812180 m!5797806))

(declare-fun m!5797808 () Bool)

(assert (=> b!4812180 m!5797808))

(assert (=> b!4812182 m!5797746))

(assert (=> b!4812182 m!5797798))

(assert (=> b!4812182 m!5797798))

(declare-fun m!5797810 () Bool)

(assert (=> b!4812182 m!5797810))

(declare-fun m!5797812 () Bool)

(assert (=> bm!335845 m!5797812))

(assert (=> b!4812186 m!5797804))

(assert (=> b!4812186 m!5797804))

(assert (=> b!4812186 m!5797806))

(assert (=> b!4812185 m!5797746))

(assert (=> b!4812185 m!5797798))

(assert (=> b!4812185 m!5797798))

(assert (=> b!4812185 m!5797810))

(assert (=> b!4812118 d!1540618))

(declare-fun d!1540620 () Bool)

(declare-fun map!12451 (LongMapFixedSize!10150) ListLongMap!5641)

(assert (=> d!1540620 (= (map!12450 (v!48910 (underlying!10358 thiss!41921))) (map!12451 (v!48909 (underlying!10357 (v!48910 (underlying!10358 thiss!41921))))))))

(declare-fun bs!1160173 () Bool)

(assert (= bs!1160173 d!1540620))

(declare-fun m!5797814 () Bool)

(assert (=> bs!1160173 m!5797814))

(assert (=> b!4812118 d!1540620))

(declare-fun d!1540622 () Bool)

(declare-fun lt!1963572 () Bool)

(declare-fun contains!18310 (ListLongMap!5641 (_ BitVec 64)) Bool)

(assert (=> d!1540622 (= lt!1963572 (contains!18310 (map!12450 (v!48910 (underlying!10358 thiss!41921))) lt!1963534))))

(declare-fun contains!18311 (LongMapFixedSize!10150 (_ BitVec 64)) Bool)

(assert (=> d!1540622 (= lt!1963572 (contains!18311 (v!48909 (underlying!10357 (v!48910 (underlying!10358 thiss!41921)))) lt!1963534))))

(assert (=> d!1540622 (valid!4106 (v!48910 (underlying!10358 thiss!41921)))))

(assert (=> d!1540622 (= (contains!18308 (v!48910 (underlying!10358 thiss!41921)) lt!1963534) lt!1963572)))

(declare-fun bs!1160174 () Bool)

(assert (= bs!1160174 d!1540622))

(assert (=> bs!1160174 m!5797734))

(assert (=> bs!1160174 m!5797734))

(declare-fun m!5797816 () Bool)

(assert (=> bs!1160174 m!5797816))

(declare-fun m!5797818 () Bool)

(assert (=> bs!1160174 m!5797818))

(assert (=> bs!1160174 m!5797782))

(assert (=> b!4812118 d!1540622))

(declare-fun d!1540624 () Bool)

(declare-fun hash!5153 (Hashable!7086 K!16204) (_ BitVec 64))

(assert (=> d!1540624 (= (hash!5152 (hashF!13362 thiss!41921) key!1652) (hash!5153 (hashF!13362 thiss!41921) key!1652))))

(declare-fun bs!1160175 () Bool)

(assert (= bs!1160175 d!1540624))

(declare-fun m!5797820 () Bool)

(assert (=> bs!1160175 m!5797820))

(assert (=> b!4812118 d!1540624))

(declare-fun bs!1160176 () Bool)

(declare-fun d!1540626 () Bool)

(assert (= bs!1160176 (and d!1540626 b!4812109)))

(declare-fun lambda!233826 () Int)

(assert (=> bs!1160176 (= lambda!233826 lambda!233816)))

(declare-fun bs!1160177 () Bool)

(assert (= bs!1160177 (and d!1540626 b!4812108)))

(assert (=> bs!1160177 (= lambda!233826 lambda!233817)))

(declare-fun bs!1160178 () Bool)

(assert (= bs!1160178 (and d!1540626 b!4812151)))

(assert (=> bs!1160178 (= lambda!233826 lambda!233820)))

(declare-fun bs!1160179 () Bool)

(assert (= bs!1160179 (and d!1540626 d!1540616)))

(assert (=> bs!1160179 (not (= lambda!233826 lambda!233823))))

(declare-fun lt!1963575 () ListMap!6583)

(declare-fun invariantList!1777 (List!54703) Bool)

(assert (=> d!1540626 (invariantList!1777 (toList!7166 lt!1963575))))

(declare-fun e!3006402 () ListMap!6583)

(assert (=> d!1540626 (= lt!1963575 e!3006402)))

(declare-fun c!820176 () Bool)

(assert (=> d!1540626 (= c!820176 ((_ is Cons!54580) (toList!7165 lt!1963527)))))

(assert (=> d!1540626 (forall!12400 (toList!7165 lt!1963527) lambda!233826)))

(assert (=> d!1540626 (= (extractMap!2543 (toList!7165 lt!1963527)) lt!1963575)))

(declare-fun b!4812192 () Bool)

(declare-fun addToMapMapFromBucket!1754 (List!54703 ListMap!6583) ListMap!6583)

(assert (=> b!4812192 (= e!3006402 (addToMapMapFromBucket!1754 (_2!32035 (h!61012 (toList!7165 lt!1963527))) (extractMap!2543 (t!362192 (toList!7165 lt!1963527)))))))

(declare-fun b!4812193 () Bool)

(assert (=> b!4812193 (= e!3006402 (ListMap!6584 Nil!54579))))

(assert (= (and d!1540626 c!820176) b!4812192))

(assert (= (and d!1540626 (not c!820176)) b!4812193))

(declare-fun m!5797822 () Bool)

(assert (=> d!1540626 m!5797822))

(declare-fun m!5797824 () Bool)

(assert (=> d!1540626 m!5797824))

(declare-fun m!5797826 () Bool)

(assert (=> b!4812192 m!5797826))

(assert (=> b!4812192 m!5797826))

(declare-fun m!5797828 () Bool)

(assert (=> b!4812192 m!5797828))

(assert (=> b!4812118 d!1540626))

(declare-fun d!1540628 () Bool)

(assert (=> d!1540628 (dynLambda!22143 lambda!233816 lt!1963530)))

(declare-fun lt!1963578 () Unit!141622)

(declare-fun choose!34871 (List!54704 Int tuple2!57482) Unit!141622)

(assert (=> d!1540628 (= lt!1963578 (choose!34871 (toList!7165 lt!1963531) lambda!233816 lt!1963530))))

(declare-fun e!3006405 () Bool)

(assert (=> d!1540628 e!3006405))

(declare-fun res!2046840 () Bool)

(assert (=> d!1540628 (=> (not res!2046840) (not e!3006405))))

(assert (=> d!1540628 (= res!2046840 (forall!12400 (toList!7165 lt!1963531) lambda!233816))))

(assert (=> d!1540628 (= (forallContained!4275 (toList!7165 lt!1963531) lambda!233816 lt!1963530) lt!1963578)))

(declare-fun b!4812196 () Bool)

(assert (=> b!4812196 (= e!3006405 (contains!18306 (toList!7165 lt!1963531) lt!1963530))))

(assert (= (and d!1540628 res!2046840) b!4812196))

(declare-fun b_lambda!188279 () Bool)

(assert (=> (not b_lambda!188279) (not d!1540628)))

(declare-fun m!5797830 () Bool)

(assert (=> d!1540628 m!5797830))

(declare-fun m!5797832 () Bool)

(assert (=> d!1540628 m!5797832))

(declare-fun m!5797834 () Bool)

(assert (=> d!1540628 m!5797834))

(assert (=> b!4812196 m!5797738))

(assert (=> b!4812109 d!1540628))

(assert (=> b!4812109 d!1540620))

(declare-fun d!1540630 () Bool)

(declare-fun e!3006408 () Bool)

(assert (=> d!1540630 e!3006408))

(declare-fun c!820179 () Bool)

(assert (=> d!1540630 (= c!820179 (contains!18308 (v!48910 (underlying!10358 thiss!41921)) lt!1963534))))

(declare-fun lt!1963581 () List!54703)

(declare-fun apply!13179 (LongMapFixedSize!10150 (_ BitVec 64)) List!54703)

(assert (=> d!1540630 (= lt!1963581 (apply!13179 (v!48909 (underlying!10357 (v!48910 (underlying!10358 thiss!41921)))) lt!1963534))))

(assert (=> d!1540630 (valid!4106 (v!48910 (underlying!10358 thiss!41921)))))

(assert (=> d!1540630 (= (apply!13178 (v!48910 (underlying!10358 thiss!41921)) lt!1963534) lt!1963581)))

(declare-fun b!4812201 () Bool)

(declare-fun get!18673 (Option!13323) List!54703)

(assert (=> b!4812201 (= e!3006408 (= lt!1963581 (get!18673 (getValueByKey!2502 (toList!7165 (map!12450 (v!48910 (underlying!10358 thiss!41921)))) lt!1963534))))))

(declare-fun b!4812202 () Bool)

(declare-fun dynLambda!22144 (Int (_ BitVec 64)) List!54703)

(assert (=> b!4812202 (= e!3006408 (= lt!1963581 (dynLambda!22144 (defaultEntry!5497 (v!48909 (underlying!10357 (v!48910 (underlying!10358 thiss!41921))))) lt!1963534)))))

(assert (=> b!4812202 ((_ is LongMap!5075) (v!48910 (underlying!10358 thiss!41921)))))

(assert (= (and d!1540630 c!820179) b!4812201))

(assert (= (and d!1540630 (not c!820179)) b!4812202))

(declare-fun b_lambda!188281 () Bool)

(assert (=> (not b_lambda!188281) (not b!4812202)))

(declare-fun t!362194 () Bool)

(declare-fun tb!257541 () Bool)

(assert (=> (and b!4812116 (= (defaultEntry!5497 (v!48909 (underlying!10357 (v!48910 (underlying!10358 thiss!41921))))) (defaultEntry!5497 (v!48909 (underlying!10357 (v!48910 (underlying!10358 thiss!41921)))))) t!362194) tb!257541))

(assert (=> b!4812202 t!362194))

(declare-fun result!319636 () Bool)

(declare-fun b_and!342051 () Bool)

(assert (= b_and!342047 (and (=> t!362194 result!319636) b_and!342051)))

(assert (=> d!1540630 m!5797744))

(declare-fun m!5797836 () Bool)

(assert (=> d!1540630 m!5797836))

(assert (=> d!1540630 m!5797782))

(assert (=> b!4812201 m!5797734))

(declare-fun m!5797838 () Bool)

(assert (=> b!4812201 m!5797838))

(assert (=> b!4812201 m!5797838))

(declare-fun m!5797840 () Bool)

(assert (=> b!4812201 m!5797840))

(declare-fun m!5797842 () Bool)

(assert (=> b!4812202 m!5797842))

(assert (=> b!4812109 d!1540630))

(declare-fun d!1540632 () Bool)

(declare-fun lt!1963584 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9780 (List!54704) (InoxSet tuple2!57482))

(assert (=> d!1540632 (= lt!1963584 (select (content!9780 (toList!7165 lt!1963531)) lt!1963530))))

(declare-fun e!3006413 () Bool)

(assert (=> d!1540632 (= lt!1963584 e!3006413)))

(declare-fun res!2046845 () Bool)

(assert (=> d!1540632 (=> (not res!2046845) (not e!3006413))))

(assert (=> d!1540632 (= res!2046845 ((_ is Cons!54580) (toList!7165 lt!1963531)))))

(assert (=> d!1540632 (= (contains!18306 (toList!7165 lt!1963531) lt!1963530) lt!1963584)))

(declare-fun b!4812207 () Bool)

(declare-fun e!3006414 () Bool)

(assert (=> b!4812207 (= e!3006413 e!3006414)))

(declare-fun res!2046846 () Bool)

(assert (=> b!4812207 (=> res!2046846 e!3006414)))

(assert (=> b!4812207 (= res!2046846 (= (h!61012 (toList!7165 lt!1963531)) lt!1963530))))

(declare-fun b!4812208 () Bool)

(assert (=> b!4812208 (= e!3006414 (contains!18306 (t!362192 (toList!7165 lt!1963531)) lt!1963530))))

(assert (= (and d!1540632 res!2046845) b!4812207))

(assert (= (and b!4812207 (not res!2046846)) b!4812208))

(declare-fun m!5797844 () Bool)

(assert (=> d!1540632 m!5797844))

(declare-fun m!5797846 () Bool)

(assert (=> d!1540632 m!5797846))

(declare-fun m!5797848 () Bool)

(assert (=> b!4812208 m!5797848))

(assert (=> b!4812109 d!1540632))

(declare-fun e!3006417 () Bool)

(declare-fun tp_is_empty!34035 () Bool)

(declare-fun b!4812213 () Bool)

(declare-fun tp!1361176 () Bool)

(assert (=> b!4812213 (= e!3006417 (and tp_is_empty!34033 tp_is_empty!34035 tp!1361176))))

(assert (=> b!4812116 (= tp!1361170 e!3006417)))

(assert (= (and b!4812116 ((_ is Cons!54579) (zeroValue!5368 (v!48909 (underlying!10357 (v!48910 (underlying!10358 thiss!41921))))))) b!4812213))

(declare-fun b!4812214 () Bool)

(declare-fun tp!1361177 () Bool)

(declare-fun e!3006418 () Bool)

(assert (=> b!4812214 (= e!3006418 (and tp_is_empty!34033 tp_is_empty!34035 tp!1361177))))

(assert (=> b!4812116 (= tp!1361168 e!3006418)))

(assert (= (and b!4812116 ((_ is Cons!54579) (minValue!5368 (v!48909 (underlying!10357 (v!48910 (underlying!10358 thiss!41921))))))) b!4812214))

(declare-fun b!4812215 () Bool)

(declare-fun e!3006419 () Bool)

(declare-fun tp!1361178 () Bool)

(assert (=> b!4812215 (= e!3006419 (and tp_is_empty!34033 tp_is_empty!34035 tp!1361178))))

(assert (=> b!4812111 (= tp!1361167 e!3006419)))

(assert (= (and b!4812111 ((_ is Cons!54579) mapDefault!22409)) b!4812215))

(declare-fun mapNonEmpty!22412 () Bool)

(declare-fun mapRes!22412 () Bool)

(declare-fun tp!1361187 () Bool)

(declare-fun e!3006425 () Bool)

(assert (=> mapNonEmpty!22412 (= mapRes!22412 (and tp!1361187 e!3006425))))

(declare-fun mapValue!22412 () List!54703)

(declare-fun mapRest!22412 () (Array (_ BitVec 32) List!54703))

(declare-fun mapKey!22412 () (_ BitVec 32))

(assert (=> mapNonEmpty!22412 (= mapRest!22409 (store mapRest!22412 mapKey!22412 mapValue!22412))))

(declare-fun mapIsEmpty!22412 () Bool)

(assert (=> mapIsEmpty!22412 mapRes!22412))

(declare-fun condMapEmpty!22412 () Bool)

(declare-fun mapDefault!22412 () List!54703)

(assert (=> mapNonEmpty!22409 (= condMapEmpty!22412 (= mapRest!22409 ((as const (Array (_ BitVec 32) List!54703)) mapDefault!22412)))))

(declare-fun e!3006424 () Bool)

(assert (=> mapNonEmpty!22409 (= tp!1361171 (and e!3006424 mapRes!22412))))

(declare-fun tp!1361186 () Bool)

(declare-fun b!4812223 () Bool)

(assert (=> b!4812223 (= e!3006424 (and tp_is_empty!34033 tp_is_empty!34035 tp!1361186))))

(declare-fun b!4812222 () Bool)

(declare-fun tp!1361185 () Bool)

(assert (=> b!4812222 (= e!3006425 (and tp_is_empty!34033 tp_is_empty!34035 tp!1361185))))

(assert (= (and mapNonEmpty!22409 condMapEmpty!22412) mapIsEmpty!22412))

(assert (= (and mapNonEmpty!22409 (not condMapEmpty!22412)) mapNonEmpty!22412))

(assert (= (and mapNonEmpty!22412 ((_ is Cons!54579) mapValue!22412)) b!4812222))

(assert (= (and mapNonEmpty!22409 ((_ is Cons!54579) mapDefault!22412)) b!4812223))

(declare-fun m!5797850 () Bool)

(assert (=> mapNonEmpty!22412 m!5797850))

(declare-fun e!3006426 () Bool)

(declare-fun tp!1361188 () Bool)

(declare-fun b!4812224 () Bool)

(assert (=> b!4812224 (= e!3006426 (and tp_is_empty!34033 tp_is_empty!34035 tp!1361188))))

(assert (=> mapNonEmpty!22409 (= tp!1361169 e!3006426)))

(assert (= (and mapNonEmpty!22409 ((_ is Cons!54579) mapValue!22409)) b!4812224))

(declare-fun b_lambda!188283 () Bool)

(assert (= b_lambda!188277 (or b!4812108 b_lambda!188283)))

(declare-fun bs!1160180 () Bool)

(declare-fun d!1540634 () Bool)

(assert (= bs!1160180 (and d!1540634 b!4812108)))

(declare-fun noDuplicateKeys!2392 (List!54703) Bool)

(assert (=> bs!1160180 (= (dynLambda!22143 lambda!233817 (h!61012 (toList!7165 lt!1963527))) (noDuplicateKeys!2392 (_2!32035 (h!61012 (toList!7165 lt!1963527)))))))

(declare-fun m!5797852 () Bool)

(assert (=> bs!1160180 m!5797852))

(assert (=> b!4812157 d!1540634))

(declare-fun b_lambda!188285 () Bool)

(assert (= b_lambda!188279 (or b!4812109 b_lambda!188285)))

(declare-fun bs!1160181 () Bool)

(declare-fun d!1540636 () Bool)

(assert (= bs!1160181 (and d!1540636 b!4812109)))

(assert (=> bs!1160181 (= (dynLambda!22143 lambda!233816 lt!1963530) (noDuplicateKeys!2392 (_2!32035 lt!1963530)))))

(declare-fun m!5797854 () Bool)

(assert (=> bs!1160181 m!5797854))

(assert (=> d!1540628 d!1540636))

(declare-fun b_lambda!188287 () Bool)

(assert (= b_lambda!188281 (or (and b!4812116 b_free!130243) b_lambda!188287)))

(check-sat (not d!1540624) (not d!1540628) tp_is_empty!34035 (not b!4812215) (not b!4812192) (not b!4812186) (not b!4812185) (not b!4812196) (not bm!335845) (not b!4812214) (not b!4812134) (not b!4812158) (not d!1540632) (not b!4812152) b_and!342051 (not d!1540604) (not b!4812183) (not b!4812180) (not d!1540616) (not d!1540622) (not d!1540630) (not b!4812208) (not b_lambda!188285) tp_is_empty!34033 (not b!4812224) (not tb!257541) (not b!4812222) (not mapNonEmpty!22412) (not d!1540626) (not d!1540620) (not b!4812143) (not bs!1160181) (not b_next!131033) (not b!4812223) (not bs!1160180) (not b_lambda!188283) (not d!1540618) (not b!4812213) (not d!1540600) b_and!342049 (not b!4812184) (not b!4812151) (not d!1540606) (not b!4812201) (not b_next!131035) (not d!1540596) (not b_lambda!188287) (not b!4812181) (not d!1540612) (not b!4812146) (not b!4812130) (not b!4812182) (not b!4812140))
(check-sat b_and!342051 b_and!342049 (not b_next!131033) (not b_next!131035))
