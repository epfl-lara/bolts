; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242206 () Bool)

(assert start!242206)

(declare-fun b!2481871 () Bool)

(declare-fun b_free!72305 () Bool)

(declare-fun b_next!73009 () Bool)

(assert (=> b!2481871 (= b_free!72305 (not b_next!73009))))

(declare-fun tp!794454 () Bool)

(declare-fun b_and!188553 () Bool)

(assert (=> b!2481871 (= tp!794454 b_and!188553)))

(declare-fun b!2481865 () Bool)

(declare-fun b_free!72307 () Bool)

(declare-fun b_next!73011 () Bool)

(assert (=> b!2481865 (= b_free!72307 (not b_next!73011))))

(declare-fun tp!794450 () Bool)

(declare-fun b_and!188555 () Bool)

(assert (=> b!2481865 (= tp!794450 b_and!188555)))

(declare-fun b!2481863 () Bool)

(declare-fun e!1575427 () Bool)

(declare-datatypes ((K!5490 0))(
  ( (K!5491 (val!8867 Int)) )
))
(declare-datatypes ((V!5692 0))(
  ( (V!5693 (val!8868 Int)) )
))
(declare-datatypes ((tuple2!28824 0))(
  ( (tuple2!28825 (_1!16953 K!5490) (_2!16953 V!5692)) )
))
(declare-datatypes ((List!29205 0))(
  ( (Nil!29105) (Cons!29105 (h!34511 tuple2!28824) (t!210864 List!29205)) )
))
(declare-datatypes ((ListMap!1063 0))(
  ( (ListMap!1064 (toList!1580 List!29205)) )
))
(declare-fun lt!888565 () ListMap!1063)

(declare-fun key!2246 () K!5490)

(declare-fun eq!71 (ListMap!1063 ListMap!1063) Bool)

(declare-fun -!127 (ListMap!1063 K!5490) ListMap!1063)

(assert (=> b!2481863 (= e!1575427 (not (eq!71 lt!888565 (-!127 lt!888565 key!2246))))))

(declare-datatypes ((Hashable!3272 0))(
  ( (HashableExt!3271 (__x!18992 Int)) )
))
(declare-datatypes ((array!11911 0))(
  ( (array!11912 (arr!5314 (Array (_ BitVec 32) List!29205)) (size!22733 (_ BitVec 32))) )
))
(declare-datatypes ((array!11913 0))(
  ( (array!11914 (arr!5315 (Array (_ BitVec 32) (_ BitVec 64))) (size!22734 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6724 0))(
  ( (LongMapFixedSize!6725 (defaultEntry!3736 Int) (mask!8532 (_ BitVec 32)) (extraKeys!3610 (_ BitVec 32)) (zeroValue!3620 List!29205) (minValue!3620 List!29205) (_size!6771 (_ BitVec 32)) (_keys!3659 array!11913) (_values!3642 array!11911) (_vacant!3423 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13265 0))(
  ( (Cell!13266 (v!31446 LongMapFixedSize!6724)) )
))
(declare-datatypes ((MutLongMap!3362 0))(
  ( (LongMap!3362 (underlying!6931 Cell!13265)) (MutLongMapExt!3361 (__x!18993 Int)) )
))
(declare-datatypes ((Cell!13267 0))(
  ( (Cell!13268 (v!31447 MutLongMap!3362)) )
))
(declare-datatypes ((MutableMap!3272 0))(
  ( (MutableMapExt!3271 (__x!18994 Int)) (HashMap!3272 (underlying!6932 Cell!13267) (hashF!5234 Hashable!3272) (_size!6772 (_ BitVec 32)) (defaultValue!3434 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3272)

(declare-fun map!6197 (MutableMap!3272) ListMap!1063)

(assert (=> b!2481863 (= lt!888565 (map!6197 thiss!42540))))

(declare-fun lt!888566 () ListMap!1063)

(assert (=> b!2481863 (= lt!888566 (-!127 lt!888566 key!2246))))

(declare-datatypes ((tuple2!28826 0))(
  ( (tuple2!28827 (_1!16954 (_ BitVec 64)) (_2!16954 List!29205)) )
))
(declare-datatypes ((List!29206 0))(
  ( (Nil!29106) (Cons!29106 (h!34512 tuple2!28826) (t!210865 List!29206)) )
))
(declare-datatypes ((ListLongMap!527 0))(
  ( (ListLongMap!528 (toList!1581 List!29206)) )
))
(declare-fun lt!888567 () ListLongMap!527)

(declare-fun extractMap!175 (List!29206) ListMap!1063)

(assert (=> b!2481863 (= lt!888566 (extractMap!175 (toList!1581 lt!888567)))))

(declare-datatypes ((Unit!42618 0))(
  ( (Unit!42619) )
))
(declare-fun lt!888564 () Unit!42618)

(declare-fun lemmaRemoveNotContainedDoesNotChange!27 (ListLongMap!527 K!5490 Hashable!3272) Unit!42618)

(assert (=> b!2481863 (= lt!888564 (lemmaRemoveNotContainedDoesNotChange!27 lt!888567 key!2246 (hashF!5234 thiss!42540)))))

(declare-fun map!6198 (MutLongMap!3362) ListLongMap!527)

(assert (=> b!2481863 (= lt!888567 (map!6198 (v!31447 (underlying!6932 thiss!42540))))))

(declare-fun b!2481864 () Bool)

(declare-fun e!1575424 () Bool)

(declare-fun e!1575421 () Bool)

(assert (=> b!2481864 (= e!1575424 e!1575421)))

(declare-fun e!1575426 () Bool)

(declare-fun e!1575420 () Bool)

(assert (=> b!2481865 (= e!1575426 (and e!1575420 tp!794450))))

(declare-fun b!2481866 () Bool)

(declare-fun res!1050701 () Bool)

(assert (=> b!2481866 (=> (not res!1050701) (not e!1575427))))

(declare-fun valid!2569 (MutableMap!3272) Bool)

(assert (=> b!2481866 (= res!1050701 (valid!2569 thiss!42540))))

(declare-fun b!2481867 () Bool)

(declare-fun e!1575423 () Bool)

(assert (=> b!2481867 (= e!1575423 e!1575424)))

(declare-fun mapNonEmpty!15554 () Bool)

(declare-fun mapRes!15554 () Bool)

(declare-fun tp!794456 () Bool)

(declare-fun tp!794451 () Bool)

(assert (=> mapNonEmpty!15554 (= mapRes!15554 (and tp!794456 tp!794451))))

(declare-fun mapValue!15554 () List!29205)

(declare-fun mapRest!15554 () (Array (_ BitVec 32) List!29205))

(declare-fun mapKey!15554 () (_ BitVec 32))

(assert (=> mapNonEmpty!15554 (= (arr!5314 (_values!3642 (v!31446 (underlying!6931 (v!31447 (underlying!6932 thiss!42540)))))) (store mapRest!15554 mapKey!15554 mapValue!15554))))

(declare-fun res!1050702 () Bool)

(assert (=> start!242206 (=> (not res!1050702) (not e!1575427))))

(get-info :version)

(assert (=> start!242206 (= res!1050702 ((_ is HashMap!3272) thiss!42540))))

(assert (=> start!242206 e!1575427))

(assert (=> start!242206 e!1575426))

(declare-fun tp_is_empty!12253 () Bool)

(assert (=> start!242206 tp_is_empty!12253))

(declare-fun mapIsEmpty!15554 () Bool)

(assert (=> mapIsEmpty!15554 mapRes!15554))

(declare-fun b!2481868 () Bool)

(declare-fun e!1575422 () Bool)

(declare-fun tp!794452 () Bool)

(assert (=> b!2481868 (= e!1575422 (and tp!794452 mapRes!15554))))

(declare-fun condMapEmpty!15554 () Bool)

(declare-fun mapDefault!15554 () List!29205)

(assert (=> b!2481868 (= condMapEmpty!15554 (= (arr!5314 (_values!3642 (v!31446 (underlying!6931 (v!31447 (underlying!6932 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29205)) mapDefault!15554)))))

(declare-fun b!2481869 () Bool)

(declare-fun res!1050700 () Bool)

(assert (=> b!2481869 (=> (not res!1050700) (not e!1575427))))

(declare-fun contains!5107 (MutableMap!3272 K!5490) Bool)

(assert (=> b!2481869 (= res!1050700 (not (contains!5107 thiss!42540 key!2246)))))

(declare-fun b!2481870 () Bool)

(declare-fun lt!888563 () MutLongMap!3362)

(assert (=> b!2481870 (= e!1575420 (and e!1575423 ((_ is LongMap!3362) lt!888563)))))

(assert (=> b!2481870 (= lt!888563 (v!31447 (underlying!6932 thiss!42540)))))

(declare-fun tp!794453 () Bool)

(declare-fun tp!794455 () Bool)

(declare-fun array_inv!3815 (array!11913) Bool)

(declare-fun array_inv!3816 (array!11911) Bool)

(assert (=> b!2481871 (= e!1575421 (and tp!794454 tp!794453 tp!794455 (array_inv!3815 (_keys!3659 (v!31446 (underlying!6931 (v!31447 (underlying!6932 thiss!42540)))))) (array_inv!3816 (_values!3642 (v!31446 (underlying!6931 (v!31447 (underlying!6932 thiss!42540)))))) e!1575422))))

(assert (= (and start!242206 res!1050702) b!2481866))

(assert (= (and b!2481866 res!1050701) b!2481869))

(assert (= (and b!2481869 res!1050700) b!2481863))

(assert (= (and b!2481868 condMapEmpty!15554) mapIsEmpty!15554))

(assert (= (and b!2481868 (not condMapEmpty!15554)) mapNonEmpty!15554))

(assert (= b!2481871 b!2481868))

(assert (= b!2481864 b!2481871))

(assert (= b!2481867 b!2481864))

(assert (= (and b!2481870 ((_ is LongMap!3362) (v!31447 (underlying!6932 thiss!42540)))) b!2481867))

(assert (= b!2481865 b!2481870))

(assert (= (and start!242206 ((_ is HashMap!3272) thiss!42540)) b!2481865))

(declare-fun m!2849957 () Bool)

(assert (=> b!2481863 m!2849957))

(declare-fun m!2849959 () Bool)

(assert (=> b!2481863 m!2849959))

(declare-fun m!2849961 () Bool)

(assert (=> b!2481863 m!2849961))

(declare-fun m!2849963 () Bool)

(assert (=> b!2481863 m!2849963))

(declare-fun m!2849965 () Bool)

(assert (=> b!2481863 m!2849965))

(assert (=> b!2481863 m!2849963))

(declare-fun m!2849967 () Bool)

(assert (=> b!2481863 m!2849967))

(declare-fun m!2849969 () Bool)

(assert (=> b!2481863 m!2849969))

(declare-fun m!2849971 () Bool)

(assert (=> b!2481871 m!2849971))

(declare-fun m!2849973 () Bool)

(assert (=> b!2481871 m!2849973))

(declare-fun m!2849975 () Bool)

(assert (=> b!2481869 m!2849975))

(declare-fun m!2849977 () Bool)

(assert (=> b!2481866 m!2849977))

(declare-fun m!2849979 () Bool)

(assert (=> mapNonEmpty!15554 m!2849979))

(check-sat (not b!2481869) tp_is_empty!12253 (not b!2481863) (not mapNonEmpty!15554) (not b!2481866) (not b_next!73011) (not b_next!73009) (not b!2481871) b_and!188555 (not b!2481868) b_and!188553)
(check-sat b_and!188555 b_and!188553 (not b_next!73009) (not b_next!73011))
(get-model)

(declare-fun b!2481894 () Bool)

(declare-fun e!1575443 () Unit!42618)

(declare-fun lt!888611 () Unit!42618)

(assert (=> b!2481894 (= e!1575443 lt!888611)))

(declare-fun lt!888613 () ListLongMap!527)

(declare-fun call!152017 () ListLongMap!527)

(assert (=> b!2481894 (= lt!888613 call!152017)))

(declare-fun lemmaInGenericMapThenInLongMap!70 (ListLongMap!527 K!5490 Hashable!3272) Unit!42618)

(assert (=> b!2481894 (= lt!888611 (lemmaInGenericMapThenInLongMap!70 lt!888613 key!2246 (hashF!5234 thiss!42540)))))

(declare-fun res!1050709 () Bool)

(declare-fun call!152012 () Bool)

(assert (=> b!2481894 (= res!1050709 call!152012)))

(declare-fun e!1575446 () Bool)

(assert (=> b!2481894 (=> (not res!1050709) (not e!1575446))))

(assert (=> b!2481894 e!1575446))

(declare-fun b!2481895 () Bool)

(declare-fun e!1575442 () Unit!42618)

(assert (=> b!2481895 (= e!1575443 e!1575442)))

(declare-fun res!1050711 () Bool)

(assert (=> b!2481895 (= res!1050711 call!152012)))

(declare-fun e!1575444 () Bool)

(assert (=> b!2481895 (=> (not res!1050711) (not e!1575444))))

(declare-fun c!394582 () Bool)

(assert (=> b!2481895 (= c!394582 e!1575444)))

(declare-fun b!2481896 () Bool)

(assert (=> b!2481896 false))

(declare-fun lt!888608 () Unit!42618)

(declare-fun lt!888609 () Unit!42618)

(assert (=> b!2481896 (= lt!888608 lt!888609)))

(declare-fun lt!888612 () ListLongMap!527)

(declare-fun contains!5108 (ListMap!1063 K!5490) Bool)

(assert (=> b!2481896 (contains!5108 (extractMap!175 (toList!1581 lt!888612)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!70 (ListLongMap!527 K!5490 Hashable!3272) Unit!42618)

(assert (=> b!2481896 (= lt!888609 (lemmaInLongMapThenInGenericMap!70 lt!888612 key!2246 (hashF!5234 thiss!42540)))))

(assert (=> b!2481896 (= lt!888612 call!152017)))

(declare-fun Unit!42620 () Unit!42618)

(assert (=> b!2481896 (= e!1575442 Unit!42620)))

(declare-fun b!2481897 () Bool)

(declare-fun Unit!42621 () Unit!42618)

(assert (=> b!2481897 (= e!1575442 Unit!42621)))

(declare-fun b!2481898 () Bool)

(declare-fun e!1575445 () Unit!42618)

(declare-fun Unit!42622 () Unit!42618)

(assert (=> b!2481898 (= e!1575445 Unit!42622)))

(declare-fun bm!152007 () Bool)

(assert (=> bm!152007 (= call!152017 (map!6198 (v!31447 (underlying!6932 thiss!42540))))))

(declare-fun b!2481899 () Bool)

(assert (=> b!2481899 false))

(declare-fun lt!888626 () Unit!42618)

(declare-fun lt!888618 () Unit!42618)

(assert (=> b!2481899 (= lt!888626 lt!888618)))

(declare-fun lt!888614 () List!29206)

(declare-fun lt!888622 () (_ BitVec 64))

(declare-fun lt!888619 () List!29205)

(declare-fun contains!5109 (List!29206 tuple2!28826) Bool)

(assert (=> b!2481899 (contains!5109 lt!888614 (tuple2!28827 lt!888622 lt!888619))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!75 (List!29206 (_ BitVec 64) List!29205) Unit!42618)

(assert (=> b!2481899 (= lt!888618 (lemmaGetValueByKeyImpliesContainsTuple!75 lt!888614 lt!888622 lt!888619))))

(declare-fun apply!6917 (MutLongMap!3362 (_ BitVec 64)) List!29205)

(assert (=> b!2481899 (= lt!888619 (apply!6917 (v!31447 (underlying!6932 thiss!42540)) lt!888622))))

(assert (=> b!2481899 (= lt!888614 (toList!1581 (map!6198 (v!31447 (underlying!6932 thiss!42540)))))))

(declare-fun lt!888623 () Unit!42618)

(declare-fun lt!888610 () Unit!42618)

(assert (=> b!2481899 (= lt!888623 lt!888610)))

(declare-fun lt!888624 () List!29206)

(declare-datatypes ((Option!5751 0))(
  ( (None!5750) (Some!5750 (v!31448 List!29205)) )
))
(declare-fun isDefined!4573 (Option!5751) Bool)

(declare-fun getValueByKey!138 (List!29206 (_ BitVec 64)) Option!5751)

(assert (=> b!2481899 (isDefined!4573 (getValueByKey!138 lt!888624 lt!888622))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!95 (List!29206 (_ BitVec 64)) Unit!42618)

(assert (=> b!2481899 (= lt!888610 (lemmaContainsKeyImpliesGetValueByKeyDefined!95 lt!888624 lt!888622))))

(assert (=> b!2481899 (= lt!888624 (toList!1581 (map!6198 (v!31447 (underlying!6932 thiss!42540)))))))

(declare-fun lt!888620 () Unit!42618)

(declare-fun lt!888615 () Unit!42618)

(assert (=> b!2481899 (= lt!888620 lt!888615)))

(declare-fun lt!888625 () List!29206)

(declare-fun containsKey!136 (List!29206 (_ BitVec 64)) Bool)

(assert (=> b!2481899 (containsKey!136 lt!888625 lt!888622)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!71 (List!29206 (_ BitVec 64)) Unit!42618)

(assert (=> b!2481899 (= lt!888615 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!71 lt!888625 lt!888622))))

(assert (=> b!2481899 (= lt!888625 (toList!1581 (map!6198 (v!31447 (underlying!6932 thiss!42540)))))))

(declare-fun e!1575448 () Unit!42618)

(declare-fun Unit!42623 () Unit!42618)

(assert (=> b!2481899 (= e!1575448 Unit!42623)))

(declare-fun b!2481900 () Bool)

(declare-fun Unit!42624 () Unit!42618)

(assert (=> b!2481900 (= e!1575448 Unit!42624)))

(declare-fun b!2481901 () Bool)

(declare-fun call!152013 () Bool)

(assert (=> b!2481901 (= e!1575446 call!152013)))

(declare-fun b!2481902 () Bool)

(assert (=> b!2481902 (= e!1575444 call!152013)))

(declare-fun bm!152008 () Bool)

(declare-fun call!152015 () List!29205)

(declare-fun c!394581 () Bool)

(declare-fun call!152016 () (_ BitVec 64))

(declare-fun apply!6918 (ListLongMap!527 (_ BitVec 64)) List!29205)

(assert (=> bm!152008 (= call!152015 (apply!6918 (ite c!394581 lt!888613 call!152017) call!152016))))

(declare-fun d!712936 () Bool)

(declare-fun lt!888617 () Bool)

(assert (=> d!712936 (= lt!888617 (contains!5108 (map!6197 thiss!42540) key!2246))))

(declare-fun e!1575447 () Bool)

(assert (=> d!712936 (= lt!888617 e!1575447)))

(declare-fun res!1050710 () Bool)

(assert (=> d!712936 (=> (not res!1050710) (not e!1575447))))

(declare-fun contains!5110 (MutLongMap!3362 (_ BitVec 64)) Bool)

(assert (=> d!712936 (= res!1050710 (contains!5110 (v!31447 (underlying!6932 thiss!42540)) lt!888622))))

(declare-fun lt!888616 () Unit!42618)

(assert (=> d!712936 (= lt!888616 e!1575443)))

(assert (=> d!712936 (= c!394581 (contains!5108 (extractMap!175 (toList!1581 (map!6198 (v!31447 (underlying!6932 thiss!42540))))) key!2246))))

(declare-fun lt!888627 () Unit!42618)

(assert (=> d!712936 (= lt!888627 e!1575445)))

(declare-fun c!394580 () Bool)

(assert (=> d!712936 (= c!394580 (contains!5110 (v!31447 (underlying!6932 thiss!42540)) lt!888622))))

(declare-fun hash!689 (Hashable!3272 K!5490) (_ BitVec 64))

(assert (=> d!712936 (= lt!888622 (hash!689 (hashF!5234 thiss!42540) key!2246))))

(assert (=> d!712936 (valid!2569 thiss!42540)))

(assert (=> d!712936 (= (contains!5107 thiss!42540 key!2246) lt!888617)))

(declare-fun bm!152009 () Bool)

(declare-datatypes ((Option!5752 0))(
  ( (None!5751) (Some!5751 (v!31449 tuple2!28824)) )
))
(declare-fun call!152014 () Option!5752)

(declare-fun getPair!70 (List!29205 K!5490) Option!5752)

(assert (=> bm!152009 (= call!152014 (getPair!70 call!152015 key!2246))))

(declare-fun bm!152010 () Bool)

(assert (=> bm!152010 (= call!152016 (hash!689 (hashF!5234 thiss!42540) key!2246))))

(declare-fun b!2481903 () Bool)

(declare-fun isDefined!4574 (Option!5752) Bool)

(assert (=> b!2481903 (= e!1575447 (isDefined!4574 (getPair!70 (apply!6917 (v!31447 (underlying!6932 thiss!42540)) lt!888622) key!2246)))))

(declare-fun bm!152011 () Bool)

(declare-fun contains!5111 (ListLongMap!527 (_ BitVec 64)) Bool)

(assert (=> bm!152011 (= call!152012 (contains!5111 (ite c!394581 lt!888613 call!152017) call!152016))))

(declare-fun bm!152012 () Bool)

(assert (=> bm!152012 (= call!152013 (isDefined!4574 call!152014))))

(declare-fun b!2481904 () Bool)

(declare-fun lambda!94048 () Int)

(declare-fun forallContained!858 (List!29206 Int tuple2!28826) Unit!42618)

(assert (=> b!2481904 (= e!1575445 (forallContained!858 (toList!1581 (map!6198 (v!31447 (underlying!6932 thiss!42540)))) lambda!94048 (tuple2!28827 lt!888622 (apply!6917 (v!31447 (underlying!6932 thiss!42540)) lt!888622))))))

(declare-fun c!394583 () Bool)

(assert (=> b!2481904 (= c!394583 (not (contains!5109 (toList!1581 (map!6198 (v!31447 (underlying!6932 thiss!42540)))) (tuple2!28827 lt!888622 (apply!6917 (v!31447 (underlying!6932 thiss!42540)) lt!888622)))))))

(declare-fun lt!888621 () Unit!42618)

(assert (=> b!2481904 (= lt!888621 e!1575448)))

(assert (= (and d!712936 c!394580) b!2481904))

(assert (= (and d!712936 (not c!394580)) b!2481898))

(assert (= (and b!2481904 c!394583) b!2481899))

(assert (= (and b!2481904 (not c!394583)) b!2481900))

(assert (= (and d!712936 c!394581) b!2481894))

(assert (= (and d!712936 (not c!394581)) b!2481895))

(assert (= (and b!2481894 res!1050709) b!2481901))

(assert (= (and b!2481895 res!1050711) b!2481902))

(assert (= (and b!2481895 c!394582) b!2481896))

(assert (= (and b!2481895 (not c!394582)) b!2481897))

(assert (= (or b!2481894 b!2481895 b!2481902 b!2481896) bm!152007))

(assert (= (or b!2481894 b!2481901 b!2481895 b!2481902) bm!152010))

(assert (= (or b!2481894 b!2481895) bm!152011))

(assert (= (or b!2481901 b!2481902) bm!152008))

(assert (= (or b!2481901 b!2481902) bm!152009))

(assert (= (or b!2481901 b!2481902) bm!152012))

(assert (= (and d!712936 res!1050710) b!2481903))

(declare-fun m!2849981 () Bool)

(assert (=> bm!152008 m!2849981))

(assert (=> bm!152007 m!2849957))

(declare-fun m!2849983 () Bool)

(assert (=> b!2481896 m!2849983))

(assert (=> b!2481896 m!2849983))

(declare-fun m!2849985 () Bool)

(assert (=> b!2481896 m!2849985))

(declare-fun m!2849987 () Bool)

(assert (=> b!2481896 m!2849987))

(assert (=> d!712936 m!2849957))

(assert (=> d!712936 m!2849959))

(declare-fun m!2849989 () Bool)

(assert (=> d!712936 m!2849989))

(declare-fun m!2849991 () Bool)

(assert (=> d!712936 m!2849991))

(declare-fun m!2849993 () Bool)

(assert (=> d!712936 m!2849993))

(declare-fun m!2849995 () Bool)

(assert (=> d!712936 m!2849995))

(assert (=> d!712936 m!2849959))

(assert (=> d!712936 m!2849977))

(assert (=> d!712936 m!2849991))

(declare-fun m!2849997 () Bool)

(assert (=> d!712936 m!2849997))

(declare-fun m!2849999 () Bool)

(assert (=> b!2481903 m!2849999))

(assert (=> b!2481903 m!2849999))

(declare-fun m!2850001 () Bool)

(assert (=> b!2481903 m!2850001))

(assert (=> b!2481903 m!2850001))

(declare-fun m!2850003 () Bool)

(assert (=> b!2481903 m!2850003))

(declare-fun m!2850005 () Bool)

(assert (=> b!2481894 m!2850005))

(assert (=> bm!152010 m!2849995))

(assert (=> b!2481904 m!2849957))

(assert (=> b!2481904 m!2849999))

(declare-fun m!2850007 () Bool)

(assert (=> b!2481904 m!2850007))

(declare-fun m!2850009 () Bool)

(assert (=> b!2481904 m!2850009))

(declare-fun m!2850011 () Bool)

(assert (=> bm!152012 m!2850011))

(declare-fun m!2850013 () Bool)

(assert (=> bm!152009 m!2850013))

(declare-fun m!2850015 () Bool)

(assert (=> b!2481899 m!2850015))

(assert (=> b!2481899 m!2849957))

(declare-fun m!2850017 () Bool)

(assert (=> b!2481899 m!2850017))

(declare-fun m!2850019 () Bool)

(assert (=> b!2481899 m!2850019))

(declare-fun m!2850021 () Bool)

(assert (=> b!2481899 m!2850021))

(declare-fun m!2850023 () Bool)

(assert (=> b!2481899 m!2850023))

(assert (=> b!2481899 m!2849999))

(declare-fun m!2850025 () Bool)

(assert (=> b!2481899 m!2850025))

(assert (=> b!2481899 m!2850025))

(declare-fun m!2850027 () Bool)

(assert (=> b!2481899 m!2850027))

(declare-fun m!2850029 () Bool)

(assert (=> bm!152011 m!2850029))

(assert (=> b!2481869 d!712936))

(declare-fun bs!467515 () Bool)

(declare-fun b!2481909 () Bool)

(assert (= bs!467515 (and b!2481909 b!2481904)))

(declare-fun lambda!94051 () Int)

(assert (=> bs!467515 (= lambda!94051 lambda!94048)))

(declare-fun d!712938 () Bool)

(declare-fun res!1050716 () Bool)

(declare-fun e!1575451 () Bool)

(assert (=> d!712938 (=> (not res!1050716) (not e!1575451))))

(declare-fun valid!2570 (MutLongMap!3362) Bool)

(assert (=> d!712938 (= res!1050716 (valid!2570 (v!31447 (underlying!6932 thiss!42540))))))

(assert (=> d!712938 (= (valid!2569 thiss!42540) e!1575451)))

(declare-fun res!1050717 () Bool)

(assert (=> b!2481909 (=> (not res!1050717) (not e!1575451))))

(declare-fun forall!5972 (List!29206 Int) Bool)

(assert (=> b!2481909 (= res!1050717 (forall!5972 (toList!1581 (map!6198 (v!31447 (underlying!6932 thiss!42540)))) lambda!94051))))

(declare-fun b!2481910 () Bool)

(declare-fun allKeysSameHashInMap!166 (ListLongMap!527 Hashable!3272) Bool)

(assert (=> b!2481910 (= e!1575451 (allKeysSameHashInMap!166 (map!6198 (v!31447 (underlying!6932 thiss!42540))) (hashF!5234 thiss!42540)))))

(assert (= (and d!712938 res!1050716) b!2481909))

(assert (= (and b!2481909 res!1050717) b!2481910))

(declare-fun m!2850031 () Bool)

(assert (=> d!712938 m!2850031))

(assert (=> b!2481909 m!2849957))

(declare-fun m!2850033 () Bool)

(assert (=> b!2481909 m!2850033))

(assert (=> b!2481910 m!2849957))

(assert (=> b!2481910 m!2849957))

(declare-fun m!2850035 () Bool)

(assert (=> b!2481910 m!2850035))

(assert (=> b!2481866 d!712938))

(declare-fun d!712940 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3976 (List!29205) (InoxSet tuple2!28824))

(assert (=> d!712940 (= (eq!71 lt!888565 (-!127 lt!888565 key!2246)) (= (content!3976 (toList!1580 lt!888565)) (content!3976 (toList!1580 (-!127 lt!888565 key!2246)))))))

(declare-fun bs!467516 () Bool)

(assert (= bs!467516 d!712940))

(declare-fun m!2850037 () Bool)

(assert (=> bs!467516 m!2850037))

(declare-fun m!2850039 () Bool)

(assert (=> bs!467516 m!2850039))

(assert (=> b!2481863 d!712940))

(declare-fun bs!467517 () Bool)

(declare-fun d!712942 () Bool)

(assert (= bs!467517 (and d!712942 b!2481904)))

(declare-fun lambda!94054 () Int)

(assert (=> bs!467517 (= lambda!94054 lambda!94048)))

(declare-fun bs!467518 () Bool)

(assert (= bs!467518 (and d!712942 b!2481909)))

(assert (=> bs!467518 (= lambda!94054 lambda!94051)))

(assert (=> d!712942 (= (extractMap!175 (toList!1581 lt!888567)) (-!127 (extractMap!175 (toList!1581 lt!888567)) key!2246))))

(declare-fun lt!888630 () Unit!42618)

(declare-fun choose!14647 (ListLongMap!527 K!5490 Hashable!3272) Unit!42618)

(assert (=> d!712942 (= lt!888630 (choose!14647 lt!888567 key!2246 (hashF!5234 thiss!42540)))))

(assert (=> d!712942 (forall!5972 (toList!1581 lt!888567) lambda!94054)))

(assert (=> d!712942 (= (lemmaRemoveNotContainedDoesNotChange!27 lt!888567 key!2246 (hashF!5234 thiss!42540)) lt!888630)))

(declare-fun bs!467519 () Bool)

(assert (= bs!467519 d!712942))

(assert (=> bs!467519 m!2849965))

(assert (=> bs!467519 m!2849965))

(declare-fun m!2850041 () Bool)

(assert (=> bs!467519 m!2850041))

(declare-fun m!2850043 () Bool)

(assert (=> bs!467519 m!2850043))

(declare-fun m!2850045 () Bool)

(assert (=> bs!467519 m!2850045))

(assert (=> b!2481863 d!712942))

(declare-fun d!712944 () Bool)

(declare-fun e!1575454 () Bool)

(assert (=> d!712944 e!1575454))

(declare-fun res!1050720 () Bool)

(assert (=> d!712944 (=> (not res!1050720) (not e!1575454))))

(declare-fun lt!888633 () ListMap!1063)

(assert (=> d!712944 (= res!1050720 (not (contains!5108 lt!888633 key!2246)))))

(declare-fun removePresrvNoDuplicatedKeys!22 (List!29205 K!5490) List!29205)

(assert (=> d!712944 (= lt!888633 (ListMap!1064 (removePresrvNoDuplicatedKeys!22 (toList!1580 lt!888566) key!2246)))))

(assert (=> d!712944 (= (-!127 lt!888566 key!2246) lt!888633)))

(declare-fun b!2481913 () Bool)

(declare-datatypes ((List!29207 0))(
  ( (Nil!29107) (Cons!29107 (h!34513 K!5490) (t!210866 List!29207)) )
))
(declare-fun content!3977 (List!29207) (InoxSet K!5490))

(declare-fun keys!9313 (ListMap!1063) List!29207)

(assert (=> b!2481913 (= e!1575454 (= ((_ map and) (content!3977 (keys!9313 lt!888566)) ((_ map not) (store ((as const (Array K!5490 Bool)) false) key!2246 true))) (content!3977 (keys!9313 lt!888633))))))

(assert (= (and d!712944 res!1050720) b!2481913))

(declare-fun m!2850047 () Bool)

(assert (=> d!712944 m!2850047))

(declare-fun m!2850049 () Bool)

(assert (=> d!712944 m!2850049))

(declare-fun m!2850051 () Bool)

(assert (=> b!2481913 m!2850051))

(declare-fun m!2850053 () Bool)

(assert (=> b!2481913 m!2850053))

(assert (=> b!2481913 m!2850051))

(declare-fun m!2850055 () Bool)

(assert (=> b!2481913 m!2850055))

(declare-fun m!2850057 () Bool)

(assert (=> b!2481913 m!2850057))

(declare-fun m!2850059 () Bool)

(assert (=> b!2481913 m!2850059))

(assert (=> b!2481913 m!2850057))

(assert (=> b!2481863 d!712944))

(declare-fun bs!467520 () Bool)

(declare-fun d!712946 () Bool)

(assert (= bs!467520 (and d!712946 b!2481904)))

(declare-fun lambda!94057 () Int)

(assert (=> bs!467520 (= lambda!94057 lambda!94048)))

(declare-fun bs!467521 () Bool)

(assert (= bs!467521 (and d!712946 b!2481909)))

(assert (=> bs!467521 (= lambda!94057 lambda!94051)))

(declare-fun bs!467522 () Bool)

(assert (= bs!467522 (and d!712946 d!712942)))

(assert (=> bs!467522 (= lambda!94057 lambda!94054)))

(declare-fun lt!888636 () ListMap!1063)

(declare-fun invariantList!409 (List!29205) Bool)

(assert (=> d!712946 (invariantList!409 (toList!1580 lt!888636))))

(declare-fun e!1575457 () ListMap!1063)

(assert (=> d!712946 (= lt!888636 e!1575457)))

(declare-fun c!394586 () Bool)

(assert (=> d!712946 (= c!394586 ((_ is Cons!29106) (toList!1581 lt!888567)))))

(assert (=> d!712946 (forall!5972 (toList!1581 lt!888567) lambda!94057)))

(assert (=> d!712946 (= (extractMap!175 (toList!1581 lt!888567)) lt!888636)))

(declare-fun b!2481918 () Bool)

(declare-fun addToMapMapFromBucket!15 (List!29205 ListMap!1063) ListMap!1063)

(assert (=> b!2481918 (= e!1575457 (addToMapMapFromBucket!15 (_2!16954 (h!34512 (toList!1581 lt!888567))) (extractMap!175 (t!210865 (toList!1581 lt!888567)))))))

(declare-fun b!2481919 () Bool)

(assert (=> b!2481919 (= e!1575457 (ListMap!1064 Nil!29105))))

(assert (= (and d!712946 c!394586) b!2481918))

(assert (= (and d!712946 (not c!394586)) b!2481919))

(declare-fun m!2850061 () Bool)

(assert (=> d!712946 m!2850061))

(declare-fun m!2850063 () Bool)

(assert (=> d!712946 m!2850063))

(declare-fun m!2850065 () Bool)

(assert (=> b!2481918 m!2850065))

(assert (=> b!2481918 m!2850065))

(declare-fun m!2850067 () Bool)

(assert (=> b!2481918 m!2850067))

(assert (=> b!2481863 d!712946))

(declare-fun d!712948 () Bool)

(declare-fun map!6199 (LongMapFixedSize!6724) ListLongMap!527)

(assert (=> d!712948 (= (map!6198 (v!31447 (underlying!6932 thiss!42540))) (map!6199 (v!31446 (underlying!6931 (v!31447 (underlying!6932 thiss!42540))))))))

(declare-fun bs!467523 () Bool)

(assert (= bs!467523 d!712948))

(declare-fun m!2850069 () Bool)

(assert (=> bs!467523 m!2850069))

(assert (=> b!2481863 d!712948))

(declare-fun d!712950 () Bool)

(declare-fun e!1575458 () Bool)

(assert (=> d!712950 e!1575458))

(declare-fun res!1050721 () Bool)

(assert (=> d!712950 (=> (not res!1050721) (not e!1575458))))

(declare-fun lt!888637 () ListMap!1063)

(assert (=> d!712950 (= res!1050721 (not (contains!5108 lt!888637 key!2246)))))

(assert (=> d!712950 (= lt!888637 (ListMap!1064 (removePresrvNoDuplicatedKeys!22 (toList!1580 lt!888565) key!2246)))))

(assert (=> d!712950 (= (-!127 lt!888565 key!2246) lt!888637)))

(declare-fun b!2481920 () Bool)

(assert (=> b!2481920 (= e!1575458 (= ((_ map and) (content!3977 (keys!9313 lt!888565)) ((_ map not) (store ((as const (Array K!5490 Bool)) false) key!2246 true))) (content!3977 (keys!9313 lt!888637))))))

(assert (= (and d!712950 res!1050721) b!2481920))

(declare-fun m!2850071 () Bool)

(assert (=> d!712950 m!2850071))

(declare-fun m!2850073 () Bool)

(assert (=> d!712950 m!2850073))

(declare-fun m!2850075 () Bool)

(assert (=> b!2481920 m!2850075))

(assert (=> b!2481920 m!2850053))

(assert (=> b!2481920 m!2850075))

(declare-fun m!2850077 () Bool)

(assert (=> b!2481920 m!2850077))

(declare-fun m!2850079 () Bool)

(assert (=> b!2481920 m!2850079))

(declare-fun m!2850081 () Bool)

(assert (=> b!2481920 m!2850081))

(assert (=> b!2481920 m!2850079))

(assert (=> b!2481863 d!712950))

(declare-fun d!712952 () Bool)

(declare-fun lt!888640 () ListMap!1063)

(assert (=> d!712952 (invariantList!409 (toList!1580 lt!888640))))

(assert (=> d!712952 (= lt!888640 (extractMap!175 (toList!1581 (map!6198 (v!31447 (underlying!6932 thiss!42540))))))))

(assert (=> d!712952 (valid!2569 thiss!42540)))

(assert (=> d!712952 (= (map!6197 thiss!42540) lt!888640)))

(declare-fun bs!467524 () Bool)

(assert (= bs!467524 d!712952))

(declare-fun m!2850083 () Bool)

(assert (=> bs!467524 m!2850083))

(assert (=> bs!467524 m!2849957))

(assert (=> bs!467524 m!2849991))

(assert (=> bs!467524 m!2849977))

(assert (=> b!2481863 d!712952))

(declare-fun d!712954 () Bool)

(assert (=> d!712954 (= (array_inv!3815 (_keys!3659 (v!31446 (underlying!6931 (v!31447 (underlying!6932 thiss!42540)))))) (bvsge (size!22734 (_keys!3659 (v!31446 (underlying!6931 (v!31447 (underlying!6932 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2481871 d!712954))

(declare-fun d!712956 () Bool)

(assert (=> d!712956 (= (array_inv!3816 (_values!3642 (v!31446 (underlying!6931 (v!31447 (underlying!6932 thiss!42540)))))) (bvsge (size!22733 (_values!3642 (v!31446 (underlying!6931 (v!31447 (underlying!6932 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2481871 d!712956))

(declare-fun b!2481925 () Bool)

(declare-fun e!1575461 () Bool)

(declare-fun tp!794459 () Bool)

(declare-fun tp_is_empty!12255 () Bool)

(assert (=> b!2481925 (= e!1575461 (and tp_is_empty!12253 tp_is_empty!12255 tp!794459))))

(assert (=> b!2481868 (= tp!794452 e!1575461)))

(assert (= (and b!2481868 ((_ is Cons!29105) mapDefault!15554)) b!2481925))

(declare-fun e!1575462 () Bool)

(declare-fun b!2481926 () Bool)

(declare-fun tp!794460 () Bool)

(assert (=> b!2481926 (= e!1575462 (and tp_is_empty!12253 tp_is_empty!12255 tp!794460))))

(assert (=> b!2481871 (= tp!794453 e!1575462)))

(assert (= (and b!2481871 ((_ is Cons!29105) (zeroValue!3620 (v!31446 (underlying!6931 (v!31447 (underlying!6932 thiss!42540))))))) b!2481926))

(declare-fun b!2481927 () Bool)

(declare-fun e!1575463 () Bool)

(declare-fun tp!794461 () Bool)

(assert (=> b!2481927 (= e!1575463 (and tp_is_empty!12253 tp_is_empty!12255 tp!794461))))

(assert (=> b!2481871 (= tp!794455 e!1575463)))

(assert (= (and b!2481871 ((_ is Cons!29105) (minValue!3620 (v!31446 (underlying!6931 (v!31447 (underlying!6932 thiss!42540))))))) b!2481927))

(declare-fun tp!794470 () Bool)

(declare-fun b!2481934 () Bool)

(declare-fun e!1575469 () Bool)

(assert (=> b!2481934 (= e!1575469 (and tp_is_empty!12253 tp_is_empty!12255 tp!794470))))

(declare-fun e!1575468 () Bool)

(declare-fun b!2481935 () Bool)

(declare-fun tp!794468 () Bool)

(assert (=> b!2481935 (= e!1575468 (and tp_is_empty!12253 tp_is_empty!12255 tp!794468))))

(declare-fun condMapEmpty!15557 () Bool)

(declare-fun mapDefault!15557 () List!29205)

(assert (=> mapNonEmpty!15554 (= condMapEmpty!15557 (= mapRest!15554 ((as const (Array (_ BitVec 32) List!29205)) mapDefault!15557)))))

(declare-fun mapRes!15557 () Bool)

(assert (=> mapNonEmpty!15554 (= tp!794456 (and e!1575468 mapRes!15557))))

(declare-fun mapNonEmpty!15557 () Bool)

(declare-fun tp!794469 () Bool)

(assert (=> mapNonEmpty!15557 (= mapRes!15557 (and tp!794469 e!1575469))))

(declare-fun mapValue!15557 () List!29205)

(declare-fun mapRest!15557 () (Array (_ BitVec 32) List!29205))

(declare-fun mapKey!15557 () (_ BitVec 32))

(assert (=> mapNonEmpty!15557 (= mapRest!15554 (store mapRest!15557 mapKey!15557 mapValue!15557))))

(declare-fun mapIsEmpty!15557 () Bool)

(assert (=> mapIsEmpty!15557 mapRes!15557))

(assert (= (and mapNonEmpty!15554 condMapEmpty!15557) mapIsEmpty!15557))

(assert (= (and mapNonEmpty!15554 (not condMapEmpty!15557)) mapNonEmpty!15557))

(assert (= (and mapNonEmpty!15557 ((_ is Cons!29105) mapValue!15557)) b!2481934))

(assert (= (and mapNonEmpty!15554 ((_ is Cons!29105) mapDefault!15557)) b!2481935))

(declare-fun m!2850085 () Bool)

(assert (=> mapNonEmpty!15557 m!2850085))

(declare-fun e!1575470 () Bool)

(declare-fun tp!794471 () Bool)

(declare-fun b!2481936 () Bool)

(assert (=> b!2481936 (= e!1575470 (and tp_is_empty!12253 tp_is_empty!12255 tp!794471))))

(assert (=> mapNonEmpty!15554 (= tp!794451 e!1575470)))

(assert (= (and mapNonEmpty!15554 ((_ is Cons!29105) mapValue!15554)) b!2481936))

(check-sat (not d!712950) (not b!2481910) (not d!712936) b_and!188553 (not bm!152011) (not b!2481935) (not d!712952) tp_is_empty!12253 (not bm!152008) (not d!712948) (not b!2481903) (not b!2481934) (not b!2481904) (not b!2481909) (not b!2481925) (not d!712946) (not b_next!73009) b_and!188555 (not bm!152009) (not b!2481894) (not d!712940) (not b!2481896) tp_is_empty!12255 (not b!2481920) (not d!712938) (not d!712944) (not bm!152010) (not mapNonEmpty!15557) (not b!2481913) (not d!712942) (not bm!152012) (not b!2481918) (not b!2481927) (not b_next!73011) (not b!2481936) (not b!2481926) (not b!2481899) (not bm!152007))
(check-sat b_and!188555 b_and!188553 (not b_next!73009) (not b_next!73011))
