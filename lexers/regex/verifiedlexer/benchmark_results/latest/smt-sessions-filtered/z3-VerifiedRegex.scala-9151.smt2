; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488196 () Bool)

(assert start!488196)

(declare-fun b!4769877 () Bool)

(declare-fun b_free!129787 () Bool)

(declare-fun b_next!130577 () Bool)

(assert (=> b!4769877 (= b_free!129787 (not b_next!130577))))

(declare-fun tp!1356367 () Bool)

(declare-fun b_and!341525 () Bool)

(assert (=> b!4769877 (= tp!1356367 b_and!341525)))

(declare-fun b!4769871 () Bool)

(declare-fun b_free!129789 () Bool)

(declare-fun b_next!130579 () Bool)

(assert (=> b!4769871 (= b_free!129789 (not b_next!130579))))

(declare-fun tp!1356362 () Bool)

(declare-fun b_and!341527 () Bool)

(assert (=> b!4769871 (= tp!1356362 b_and!341527)))

(declare-fun mapIsEmpty!21988 () Bool)

(declare-fun mapRes!21988 () Bool)

(assert (=> mapIsEmpty!21988 mapRes!21988))

(declare-fun b!4769868 () Bool)

(declare-fun e!2977540 () Bool)

(declare-fun e!2977538 () Bool)

(assert (=> b!4769868 (= e!2977540 e!2977538)))

(declare-fun b!4769869 () Bool)

(declare-fun e!2977536 () Bool)

(declare-datatypes ((K!15044 0))(
  ( (K!15045 (val!20341 Int)) )
))
(declare-datatypes ((V!15290 0))(
  ( (V!15291 (val!20342 Int)) )
))
(declare-datatypes ((tuple2!55656 0))(
  ( (tuple2!55657 (_1!31122 K!15044) (_2!31122 V!15290)) )
))
(declare-datatypes ((List!53674 0))(
  ( (Nil!53550) (Cons!53550 (h!59962 tuple2!55656) (t!361114 List!53674)) )
))
(declare-datatypes ((array!18176 0))(
  ( (array!18177 (arr!8107 (Array (_ BitVec 32) (_ BitVec 64))) (size!36337 (_ BitVec 32))) )
))
(declare-datatypes ((array!18178 0))(
  ( (array!18179 (arr!8108 (Array (_ BitVec 32) List!53674)) (size!36338 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9922 0))(
  ( (LongMapFixedSize!9923 (defaultEntry!5379 Int) (mask!14737 (_ BitVec 32)) (extraKeys!5236 (_ BitVec 32)) (zeroValue!5249 List!53674) (minValue!5249 List!53674) (_size!9947 (_ BitVec 32)) (_keys!5303 array!18176) (_values!5274 array!18178) (_vacant!5026 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19609 0))(
  ( (Cell!19610 (v!47822 LongMapFixedSize!9922)) )
))
(declare-datatypes ((MutLongMap!4961 0))(
  ( (LongMap!4961 (underlying!10129 Cell!19609)) (MutLongMapExt!4960 (__x!32631 Int)) )
))
(declare-fun lt!1932491 () MutLongMap!4961)

(get-info :version)

(assert (=> b!4769869 (= e!2977536 (and e!2977540 ((_ is LongMap!4961) lt!1932491)))))

(declare-datatypes ((Hashable!6622 0))(
  ( (HashableExt!6621 (__x!32632 Int)) )
))
(declare-datatypes ((Cell!19611 0))(
  ( (Cell!19612 (v!47823 MutLongMap!4961)) )
))
(declare-datatypes ((MutableMap!4845 0))(
  ( (MutableMapExt!4844 (__x!32633 Int)) (HashMap!4845 (underlying!10130 Cell!19611) (hashF!12513 Hashable!6622) (_size!9948 (_ BitVec 32)) (defaultValue!5016 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4845)

(assert (=> b!4769869 (= lt!1932491 (v!47823 (underlying!10130 thiss!42052)))))

(declare-fun b!4769870 () Bool)

(declare-datatypes ((Unit!138399 0))(
  ( (Unit!138400) )
))
(declare-fun e!2977537 () Unit!138399)

(declare-fun Unit!138401 () Unit!138399)

(assert (=> b!4769870 (= e!2977537 Unit!138401)))

(declare-fun e!2977534 () Bool)

(assert (=> b!4769871 (= e!2977534 (and e!2977536 tp!1356362))))

(declare-fun b!4769872 () Bool)

(declare-fun e!2977541 () Bool)

(declare-datatypes ((tuple2!55658 0))(
  ( (tuple2!55659 (_1!31123 (_ BitVec 64)) (_2!31123 List!53674)) )
))
(declare-datatypes ((List!53675 0))(
  ( (Nil!53551) (Cons!53551 (h!59963 tuple2!55658) (t!361115 List!53675)) )
))
(declare-datatypes ((ListLongMap!4745 0))(
  ( (ListLongMap!4746 (toList!6333 List!53675)) )
))
(declare-fun lt!1932485 () ListLongMap!4745)

(declare-fun lambda!224803 () Int)

(declare-fun forall!11886 (List!53675 Int) Bool)

(assert (=> b!4769872 (= e!2977541 (not (forall!11886 (toList!6333 lt!1932485) lambda!224803)))))

(declare-datatypes ((Option!12726 0))(
  ( (None!12725) (Some!12725 (v!47824 tuple2!55656)) )
))
(declare-fun lt!1932490 () Option!12726)

(declare-fun lt!1932489 () List!53674)

(declare-fun key!1776 () K!15044)

(declare-fun getPair!659 (List!53674 K!15044) Option!12726)

(assert (=> b!4769872 (= lt!1932490 (getPair!659 lt!1932489 key!1776))))

(declare-fun lt!1932487 () tuple2!55658)

(declare-fun lt!1932488 () Unit!138399)

(declare-fun forallContained!3878 (List!53675 Int tuple2!55658) Unit!138399)

(assert (=> b!4769872 (= lt!1932488 (forallContained!3878 (toList!6333 lt!1932485) lambda!224803 lt!1932487))))

(declare-fun lt!1932494 () Unit!138399)

(assert (=> b!4769872 (= lt!1932494 e!2977537)))

(declare-fun c!813590 () Bool)

(declare-fun contains!16912 (List!53675 tuple2!55658) Bool)

(assert (=> b!4769872 (= c!813590 (not (contains!16912 (toList!6333 lt!1932485) lt!1932487)))))

(declare-fun lt!1932486 () (_ BitVec 64))

(assert (=> b!4769872 (= lt!1932487 (tuple2!55659 lt!1932486 lt!1932489))))

(declare-fun apply!12666 (MutLongMap!4961 (_ BitVec 64)) List!53674)

(assert (=> b!4769872 (= lt!1932489 (apply!12666 (v!47823 (underlying!10130 thiss!42052)) lt!1932486))))

(declare-fun map!12044 (MutLongMap!4961) ListLongMap!4745)

(assert (=> b!4769872 (= lt!1932485 (map!12044 (v!47823 (underlying!10130 thiss!42052))))))

(declare-fun hash!4598 (Hashable!6622 K!15044) (_ BitVec 64))

(assert (=> b!4769872 (= lt!1932486 (hash!4598 (hashF!12513 thiss!42052) key!1776))))

(declare-fun b!4769873 () Bool)

(declare-fun Unit!138402 () Unit!138399)

(assert (=> b!4769873 (= e!2977537 Unit!138402)))

(declare-fun lt!1932492 () Unit!138399)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2011 (List!53675 (_ BitVec 64)) Unit!138399)

(assert (=> b!4769873 (= lt!1932492 (lemmaContainsKeyImpliesGetValueByKeyDefined!2011 (toList!6333 lt!1932485) lt!1932486))))

(declare-datatypes ((Option!12727 0))(
  ( (None!12726) (Some!12726 (v!47825 List!53674)) )
))
(declare-fun isDefined!9873 (Option!12727) Bool)

(declare-fun getValueByKey!2215 (List!53675 (_ BitVec 64)) Option!12727)

(assert (=> b!4769873 (isDefined!9873 (getValueByKey!2215 (toList!6333 lt!1932485) lt!1932486))))

(declare-fun lt!1932493 () Unit!138399)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!950 (List!53675 (_ BitVec 64) List!53674) Unit!138399)

(assert (=> b!4769873 (= lt!1932493 (lemmaGetValueByKeyImpliesContainsTuple!950 (toList!6333 lt!1932485) lt!1932486 lt!1932489))))

(assert (=> b!4769873 false))

(declare-fun b!4769874 () Bool)

(declare-fun e!2977533 () Bool)

(assert (=> b!4769874 (= e!2977538 e!2977533)))

(declare-fun b!4769875 () Bool)

(declare-fun e!2977539 () Bool)

(declare-fun tp!1356365 () Bool)

(assert (=> b!4769875 (= e!2977539 (and tp!1356365 mapRes!21988))))

(declare-fun condMapEmpty!21988 () Bool)

(declare-fun mapDefault!21988 () List!53674)

(assert (=> b!4769875 (= condMapEmpty!21988 (= (arr!8108 (_values!5274 (v!47822 (underlying!10129 (v!47823 (underlying!10130 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53674)) mapDefault!21988)))))

(declare-fun b!4769876 () Bool)

(declare-fun res!2022994 () Bool)

(assert (=> b!4769876 (=> (not res!2022994) (not e!2977541))))

(declare-fun valid!3967 (MutableMap!4845) Bool)

(assert (=> b!4769876 (= res!2022994 (valid!3967 thiss!42052))))

(declare-fun res!2022995 () Bool)

(assert (=> start!488196 (=> (not res!2022995) (not e!2977541))))

(assert (=> start!488196 (= res!2022995 ((_ is HashMap!4845) thiss!42052))))

(assert (=> start!488196 e!2977541))

(assert (=> start!488196 e!2977534))

(declare-fun tp_is_empty!32531 () Bool)

(assert (=> start!488196 tp_is_empty!32531))

(declare-fun mapNonEmpty!21988 () Bool)

(declare-fun tp!1356364 () Bool)

(declare-fun tp!1356363 () Bool)

(assert (=> mapNonEmpty!21988 (= mapRes!21988 (and tp!1356364 tp!1356363))))

(declare-fun mapValue!21988 () List!53674)

(declare-fun mapRest!21988 () (Array (_ BitVec 32) List!53674))

(declare-fun mapKey!21988 () (_ BitVec 32))

(assert (=> mapNonEmpty!21988 (= (arr!8108 (_values!5274 (v!47822 (underlying!10129 (v!47823 (underlying!10130 thiss!42052)))))) (store mapRest!21988 mapKey!21988 mapValue!21988))))

(declare-fun tp!1356366 () Bool)

(declare-fun tp!1356368 () Bool)

(declare-fun array_inv!5839 (array!18176) Bool)

(declare-fun array_inv!5840 (array!18178) Bool)

(assert (=> b!4769877 (= e!2977533 (and tp!1356367 tp!1356368 tp!1356366 (array_inv!5839 (_keys!5303 (v!47822 (underlying!10129 (v!47823 (underlying!10130 thiss!42052)))))) (array_inv!5840 (_values!5274 (v!47822 (underlying!10129 (v!47823 (underlying!10130 thiss!42052)))))) e!2977539))))

(declare-fun b!4769878 () Bool)

(declare-fun res!2022996 () Bool)

(assert (=> b!4769878 (=> (not res!2022996) (not e!2977541))))

(declare-fun contains!16913 (MutableMap!4845 K!15044) Bool)

(assert (=> b!4769878 (= res!2022996 (contains!16913 thiss!42052 key!1776))))

(assert (= (and start!488196 res!2022995) b!4769876))

(assert (= (and b!4769876 res!2022994) b!4769878))

(assert (= (and b!4769878 res!2022996) b!4769872))

(assert (= (and b!4769872 c!813590) b!4769873))

(assert (= (and b!4769872 (not c!813590)) b!4769870))

(assert (= (and b!4769875 condMapEmpty!21988) mapIsEmpty!21988))

(assert (= (and b!4769875 (not condMapEmpty!21988)) mapNonEmpty!21988))

(assert (= b!4769877 b!4769875))

(assert (= b!4769874 b!4769877))

(assert (= b!4769868 b!4769874))

(assert (= (and b!4769869 ((_ is LongMap!4961) (v!47823 (underlying!10130 thiss!42052)))) b!4769868))

(assert (= b!4769871 b!4769869))

(assert (= (and start!488196 ((_ is HashMap!4845) thiss!42052)) b!4769871))

(declare-fun m!5741482 () Bool)

(assert (=> b!4769876 m!5741482))

(declare-fun m!5741484 () Bool)

(assert (=> b!4769873 m!5741484))

(declare-fun m!5741486 () Bool)

(assert (=> b!4769873 m!5741486))

(assert (=> b!4769873 m!5741486))

(declare-fun m!5741488 () Bool)

(assert (=> b!4769873 m!5741488))

(declare-fun m!5741490 () Bool)

(assert (=> b!4769873 m!5741490))

(declare-fun m!5741492 () Bool)

(assert (=> b!4769877 m!5741492))

(declare-fun m!5741494 () Bool)

(assert (=> b!4769877 m!5741494))

(declare-fun m!5741496 () Bool)

(assert (=> b!4769878 m!5741496))

(declare-fun m!5741498 () Bool)

(assert (=> b!4769872 m!5741498))

(declare-fun m!5741500 () Bool)

(assert (=> b!4769872 m!5741500))

(declare-fun m!5741502 () Bool)

(assert (=> b!4769872 m!5741502))

(declare-fun m!5741504 () Bool)

(assert (=> b!4769872 m!5741504))

(declare-fun m!5741506 () Bool)

(assert (=> b!4769872 m!5741506))

(declare-fun m!5741508 () Bool)

(assert (=> b!4769872 m!5741508))

(declare-fun m!5741510 () Bool)

(assert (=> b!4769872 m!5741510))

(declare-fun m!5741512 () Bool)

(assert (=> mapNonEmpty!21988 m!5741512))

(check-sat (not b!4769872) (not b!4769877) (not b_next!130577) b_and!341525 b_and!341527 (not b!4769875) (not b!4769878) (not mapNonEmpty!21988) (not b!4769876) tp_is_empty!32531 (not b_next!130579) (not b!4769873))
(check-sat b_and!341527 b_and!341525 (not b_next!130579) (not b_next!130577))
(get-model)

(declare-fun d!1524526 () Bool)

(assert (=> d!1524526 (isDefined!9873 (getValueByKey!2215 (toList!6333 lt!1932485) lt!1932486))))

(declare-fun lt!1932497 () Unit!138399)

(declare-fun choose!34015 (List!53675 (_ BitVec 64)) Unit!138399)

(assert (=> d!1524526 (= lt!1932497 (choose!34015 (toList!6333 lt!1932485) lt!1932486))))

(declare-fun e!2977544 () Bool)

(assert (=> d!1524526 e!2977544))

(declare-fun res!2022999 () Bool)

(assert (=> d!1524526 (=> (not res!2022999) (not e!2977544))))

(declare-fun isStrictlySorted!816 (List!53675) Bool)

(assert (=> d!1524526 (= res!2022999 (isStrictlySorted!816 (toList!6333 lt!1932485)))))

(assert (=> d!1524526 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2011 (toList!6333 lt!1932485) lt!1932486) lt!1932497)))

(declare-fun b!4769881 () Bool)

(declare-fun containsKey!3679 (List!53675 (_ BitVec 64)) Bool)

(assert (=> b!4769881 (= e!2977544 (containsKey!3679 (toList!6333 lt!1932485) lt!1932486))))

(assert (= (and d!1524526 res!2022999) b!4769881))

(assert (=> d!1524526 m!5741486))

(assert (=> d!1524526 m!5741486))

(assert (=> d!1524526 m!5741488))

(declare-fun m!5741514 () Bool)

(assert (=> d!1524526 m!5741514))

(declare-fun m!5741516 () Bool)

(assert (=> d!1524526 m!5741516))

(declare-fun m!5741518 () Bool)

(assert (=> b!4769881 m!5741518))

(assert (=> b!4769873 d!1524526))

(declare-fun d!1524528 () Bool)

(declare-fun isEmpty!29293 (Option!12727) Bool)

(assert (=> d!1524528 (= (isDefined!9873 (getValueByKey!2215 (toList!6333 lt!1932485) lt!1932486)) (not (isEmpty!29293 (getValueByKey!2215 (toList!6333 lt!1932485) lt!1932486))))))

(declare-fun bs!1149392 () Bool)

(assert (= bs!1149392 d!1524528))

(assert (=> bs!1149392 m!5741486))

(declare-fun m!5741520 () Bool)

(assert (=> bs!1149392 m!5741520))

(assert (=> b!4769873 d!1524528))

(declare-fun b!4769892 () Bool)

(declare-fun e!2977550 () Option!12727)

(assert (=> b!4769892 (= e!2977550 (getValueByKey!2215 (t!361115 (toList!6333 lt!1932485)) lt!1932486))))

(declare-fun b!4769893 () Bool)

(assert (=> b!4769893 (= e!2977550 None!12726)))

(declare-fun b!4769890 () Bool)

(declare-fun e!2977549 () Option!12727)

(assert (=> b!4769890 (= e!2977549 (Some!12726 (_2!31123 (h!59963 (toList!6333 lt!1932485)))))))

(declare-fun b!4769891 () Bool)

(assert (=> b!4769891 (= e!2977549 e!2977550)))

(declare-fun c!813596 () Bool)

(assert (=> b!4769891 (= c!813596 (and ((_ is Cons!53551) (toList!6333 lt!1932485)) (not (= (_1!31123 (h!59963 (toList!6333 lt!1932485))) lt!1932486))))))

(declare-fun d!1524530 () Bool)

(declare-fun c!813595 () Bool)

(assert (=> d!1524530 (= c!813595 (and ((_ is Cons!53551) (toList!6333 lt!1932485)) (= (_1!31123 (h!59963 (toList!6333 lt!1932485))) lt!1932486)))))

(assert (=> d!1524530 (= (getValueByKey!2215 (toList!6333 lt!1932485) lt!1932486) e!2977549)))

(assert (= (and d!1524530 c!813595) b!4769890))

(assert (= (and d!1524530 (not c!813595)) b!4769891))

(assert (= (and b!4769891 c!813596) b!4769892))

(assert (= (and b!4769891 (not c!813596)) b!4769893))

(declare-fun m!5741522 () Bool)

(assert (=> b!4769892 m!5741522))

(assert (=> b!4769873 d!1524530))

(declare-fun d!1524532 () Bool)

(assert (=> d!1524532 (contains!16912 (toList!6333 lt!1932485) (tuple2!55659 lt!1932486 lt!1932489))))

(declare-fun lt!1932500 () Unit!138399)

(declare-fun choose!34016 (List!53675 (_ BitVec 64) List!53674) Unit!138399)

(assert (=> d!1524532 (= lt!1932500 (choose!34016 (toList!6333 lt!1932485) lt!1932486 lt!1932489))))

(declare-fun e!2977553 () Bool)

(assert (=> d!1524532 e!2977553))

(declare-fun res!2023002 () Bool)

(assert (=> d!1524532 (=> (not res!2023002) (not e!2977553))))

(assert (=> d!1524532 (= res!2023002 (isStrictlySorted!816 (toList!6333 lt!1932485)))))

(assert (=> d!1524532 (= (lemmaGetValueByKeyImpliesContainsTuple!950 (toList!6333 lt!1932485) lt!1932486 lt!1932489) lt!1932500)))

(declare-fun b!4769896 () Bool)

(assert (=> b!4769896 (= e!2977553 (= (getValueByKey!2215 (toList!6333 lt!1932485) lt!1932486) (Some!12726 lt!1932489)))))

(assert (= (and d!1524532 res!2023002) b!4769896))

(declare-fun m!5741524 () Bool)

(assert (=> d!1524532 m!5741524))

(declare-fun m!5741526 () Bool)

(assert (=> d!1524532 m!5741526))

(assert (=> d!1524532 m!5741516))

(assert (=> b!4769896 m!5741486))

(assert (=> b!4769873 d!1524532))

(declare-fun d!1524534 () Bool)

(assert (=> d!1524534 (= (array_inv!5839 (_keys!5303 (v!47822 (underlying!10129 (v!47823 (underlying!10130 thiss!42052)))))) (bvsge (size!36337 (_keys!5303 (v!47822 (underlying!10129 (v!47823 (underlying!10130 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4769877 d!1524534))

(declare-fun d!1524536 () Bool)

(assert (=> d!1524536 (= (array_inv!5840 (_values!5274 (v!47822 (underlying!10129 (v!47823 (underlying!10130 thiss!42052)))))) (bvsge (size!36338 (_values!5274 (v!47822 (underlying!10129 (v!47823 (underlying!10130 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4769877 d!1524536))

(declare-fun d!1524538 () Bool)

(declare-fun lt!1932503 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9596 (List!53675) (InoxSet tuple2!55658))

(assert (=> d!1524538 (= lt!1932503 (select (content!9596 (toList!6333 lt!1932485)) lt!1932487))))

(declare-fun e!2977559 () Bool)

(assert (=> d!1524538 (= lt!1932503 e!2977559)))

(declare-fun res!2023008 () Bool)

(assert (=> d!1524538 (=> (not res!2023008) (not e!2977559))))

(assert (=> d!1524538 (= res!2023008 ((_ is Cons!53551) (toList!6333 lt!1932485)))))

(assert (=> d!1524538 (= (contains!16912 (toList!6333 lt!1932485) lt!1932487) lt!1932503)))

(declare-fun b!4769901 () Bool)

(declare-fun e!2977558 () Bool)

(assert (=> b!4769901 (= e!2977559 e!2977558)))

(declare-fun res!2023007 () Bool)

(assert (=> b!4769901 (=> res!2023007 e!2977558)))

(assert (=> b!4769901 (= res!2023007 (= (h!59963 (toList!6333 lt!1932485)) lt!1932487))))

(declare-fun b!4769902 () Bool)

(assert (=> b!4769902 (= e!2977558 (contains!16912 (t!361115 (toList!6333 lt!1932485)) lt!1932487))))

(assert (= (and d!1524538 res!2023008) b!4769901))

(assert (= (and b!4769901 (not res!2023007)) b!4769902))

(declare-fun m!5741528 () Bool)

(assert (=> d!1524538 m!5741528))

(declare-fun m!5741530 () Bool)

(assert (=> d!1524538 m!5741530))

(declare-fun m!5741532 () Bool)

(assert (=> b!4769902 m!5741532))

(assert (=> b!4769872 d!1524538))

(declare-fun d!1524540 () Bool)

(declare-fun map!12045 (LongMapFixedSize!9922) ListLongMap!4745)

(assert (=> d!1524540 (= (map!12044 (v!47823 (underlying!10130 thiss!42052))) (map!12045 (v!47822 (underlying!10129 (v!47823 (underlying!10130 thiss!42052))))))))

(declare-fun bs!1149393 () Bool)

(assert (= bs!1149393 d!1524540))

(declare-fun m!5741534 () Bool)

(assert (=> bs!1149393 m!5741534))

(assert (=> b!4769872 d!1524540))

(declare-fun b!4769919 () Bool)

(declare-fun res!2023019 () Bool)

(declare-fun e!2977574 () Bool)

(assert (=> b!4769919 (=> (not res!2023019) (not e!2977574))))

(declare-fun lt!1932506 () Option!12726)

(declare-fun get!18084 (Option!12726) tuple2!55656)

(assert (=> b!4769919 (= res!2023019 (= (_1!31122 (get!18084 lt!1932506)) key!1776))))

(declare-fun b!4769920 () Bool)

(declare-fun e!2977572 () Option!12726)

(declare-fun e!2977573 () Option!12726)

(assert (=> b!4769920 (= e!2977572 e!2977573)))

(declare-fun c!813601 () Bool)

(assert (=> b!4769920 (= c!813601 ((_ is Cons!53550) lt!1932489))))

(declare-fun d!1524542 () Bool)

(declare-fun e!2977570 () Bool)

(assert (=> d!1524542 e!2977570))

(declare-fun res!2023018 () Bool)

(assert (=> d!1524542 (=> res!2023018 e!2977570)))

(declare-fun e!2977571 () Bool)

(assert (=> d!1524542 (= res!2023018 e!2977571)))

(declare-fun res!2023020 () Bool)

(assert (=> d!1524542 (=> (not res!2023020) (not e!2977571))))

(declare-fun isEmpty!29294 (Option!12726) Bool)

(assert (=> d!1524542 (= res!2023020 (isEmpty!29294 lt!1932506))))

(assert (=> d!1524542 (= lt!1932506 e!2977572)))

(declare-fun c!813602 () Bool)

(assert (=> d!1524542 (= c!813602 (and ((_ is Cons!53550) lt!1932489) (= (_1!31122 (h!59962 lt!1932489)) key!1776)))))

(declare-fun noDuplicateKeys!2260 (List!53674) Bool)

(assert (=> d!1524542 (noDuplicateKeys!2260 lt!1932489)))

(assert (=> d!1524542 (= (getPair!659 lt!1932489 key!1776) lt!1932506)))

(declare-fun b!4769921 () Bool)

(declare-fun containsKey!3680 (List!53674 K!15044) Bool)

(assert (=> b!4769921 (= e!2977571 (not (containsKey!3680 lt!1932489 key!1776)))))

(declare-fun b!4769922 () Bool)

(assert (=> b!4769922 (= e!2977570 e!2977574)))

(declare-fun res!2023017 () Bool)

(assert (=> b!4769922 (=> (not res!2023017) (not e!2977574))))

(declare-fun isDefined!9874 (Option!12726) Bool)

(assert (=> b!4769922 (= res!2023017 (isDefined!9874 lt!1932506))))

(declare-fun b!4769923 () Bool)

(declare-fun contains!16914 (List!53674 tuple2!55656) Bool)

(assert (=> b!4769923 (= e!2977574 (contains!16914 lt!1932489 (get!18084 lt!1932506)))))

(declare-fun b!4769924 () Bool)

(assert (=> b!4769924 (= e!2977573 None!12725)))

(declare-fun b!4769925 () Bool)

(assert (=> b!4769925 (= e!2977572 (Some!12725 (h!59962 lt!1932489)))))

(declare-fun b!4769926 () Bool)

(assert (=> b!4769926 (= e!2977573 (getPair!659 (t!361114 lt!1932489) key!1776))))

(assert (= (and d!1524542 c!813602) b!4769925))

(assert (= (and d!1524542 (not c!813602)) b!4769920))

(assert (= (and b!4769920 c!813601) b!4769926))

(assert (= (and b!4769920 (not c!813601)) b!4769924))

(assert (= (and d!1524542 res!2023020) b!4769921))

(assert (= (and d!1524542 (not res!2023018)) b!4769922))

(assert (= (and b!4769922 res!2023017) b!4769919))

(assert (= (and b!4769919 res!2023019) b!4769923))

(declare-fun m!5741536 () Bool)

(assert (=> d!1524542 m!5741536))

(declare-fun m!5741538 () Bool)

(assert (=> d!1524542 m!5741538))

(declare-fun m!5741540 () Bool)

(assert (=> b!4769919 m!5741540))

(declare-fun m!5741542 () Bool)

(assert (=> b!4769921 m!5741542))

(declare-fun m!5741544 () Bool)

(assert (=> b!4769926 m!5741544))

(assert (=> b!4769923 m!5741540))

(assert (=> b!4769923 m!5741540))

(declare-fun m!5741546 () Bool)

(assert (=> b!4769923 m!5741546))

(declare-fun m!5741548 () Bool)

(assert (=> b!4769922 m!5741548))

(assert (=> b!4769872 d!1524542))

(declare-fun d!1524544 () Bool)

(declare-fun dynLambda!21964 (Int tuple2!55658) Bool)

(assert (=> d!1524544 (dynLambda!21964 lambda!224803 lt!1932487)))

(declare-fun lt!1932509 () Unit!138399)

(declare-fun choose!34017 (List!53675 Int tuple2!55658) Unit!138399)

(assert (=> d!1524544 (= lt!1932509 (choose!34017 (toList!6333 lt!1932485) lambda!224803 lt!1932487))))

(declare-fun e!2977577 () Bool)

(assert (=> d!1524544 e!2977577))

(declare-fun res!2023023 () Bool)

(assert (=> d!1524544 (=> (not res!2023023) (not e!2977577))))

(assert (=> d!1524544 (= res!2023023 (forall!11886 (toList!6333 lt!1932485) lambda!224803))))

(assert (=> d!1524544 (= (forallContained!3878 (toList!6333 lt!1932485) lambda!224803 lt!1932487) lt!1932509)))

(declare-fun b!4769929 () Bool)

(assert (=> b!4769929 (= e!2977577 (contains!16912 (toList!6333 lt!1932485) lt!1932487))))

(assert (= (and d!1524544 res!2023023) b!4769929))

(declare-fun b_lambda!184543 () Bool)

(assert (=> (not b_lambda!184543) (not d!1524544)))

(declare-fun m!5741550 () Bool)

(assert (=> d!1524544 m!5741550))

(declare-fun m!5741552 () Bool)

(assert (=> d!1524544 m!5741552))

(assert (=> d!1524544 m!5741508))

(assert (=> b!4769929 m!5741498))

(assert (=> b!4769872 d!1524544))

(declare-fun d!1524546 () Bool)

(declare-fun e!2977580 () Bool)

(assert (=> d!1524546 e!2977580))

(declare-fun c!813605 () Bool)

(declare-fun contains!16915 (MutLongMap!4961 (_ BitVec 64)) Bool)

(assert (=> d!1524546 (= c!813605 (contains!16915 (v!47823 (underlying!10130 thiss!42052)) lt!1932486))))

(declare-fun lt!1932512 () List!53674)

(declare-fun apply!12667 (LongMapFixedSize!9922 (_ BitVec 64)) List!53674)

(assert (=> d!1524546 (= lt!1932512 (apply!12667 (v!47822 (underlying!10129 (v!47823 (underlying!10130 thiss!42052)))) lt!1932486))))

(declare-fun valid!3968 (MutLongMap!4961) Bool)

(assert (=> d!1524546 (valid!3968 (v!47823 (underlying!10130 thiss!42052)))))

(assert (=> d!1524546 (= (apply!12666 (v!47823 (underlying!10130 thiss!42052)) lt!1932486) lt!1932512)))

(declare-fun b!4769934 () Bool)

(declare-fun get!18085 (Option!12727) List!53674)

(assert (=> b!4769934 (= e!2977580 (= lt!1932512 (get!18085 (getValueByKey!2215 (toList!6333 (map!12044 (v!47823 (underlying!10130 thiss!42052)))) lt!1932486))))))

(declare-fun b!4769935 () Bool)

(declare-fun dynLambda!21965 (Int (_ BitVec 64)) List!53674)

(assert (=> b!4769935 (= e!2977580 (= lt!1932512 (dynLambda!21965 (defaultEntry!5379 (v!47822 (underlying!10129 (v!47823 (underlying!10130 thiss!42052))))) lt!1932486)))))

(assert (=> b!4769935 ((_ is LongMap!4961) (v!47823 (underlying!10130 thiss!42052)))))

(assert (= (and d!1524546 c!813605) b!4769934))

(assert (= (and d!1524546 (not c!813605)) b!4769935))

(declare-fun b_lambda!184545 () Bool)

(assert (=> (not b_lambda!184545) (not b!4769935)))

(declare-fun t!361117 () Bool)

(declare-fun tb!257493 () Bool)

(assert (=> (and b!4769877 (= (defaultEntry!5379 (v!47822 (underlying!10129 (v!47823 (underlying!10130 thiss!42052))))) (defaultEntry!5379 (v!47822 (underlying!10129 (v!47823 (underlying!10130 thiss!42052)))))) t!361117) tb!257493))

(assert (=> b!4769935 t!361117))

(declare-fun result!319160 () Bool)

(declare-fun b_and!341529 () Bool)

(assert (= b_and!341525 (and (=> t!361117 result!319160) b_and!341529)))

(declare-fun m!5741554 () Bool)

(assert (=> d!1524546 m!5741554))

(declare-fun m!5741556 () Bool)

(assert (=> d!1524546 m!5741556))

(declare-fun m!5741558 () Bool)

(assert (=> d!1524546 m!5741558))

(assert (=> b!4769934 m!5741506))

(declare-fun m!5741560 () Bool)

(assert (=> b!4769934 m!5741560))

(assert (=> b!4769934 m!5741560))

(declare-fun m!5741562 () Bool)

(assert (=> b!4769934 m!5741562))

(declare-fun m!5741564 () Bool)

(assert (=> b!4769935 m!5741564))

(assert (=> b!4769872 d!1524546))

(declare-fun d!1524548 () Bool)

(declare-fun res!2023028 () Bool)

(declare-fun e!2977585 () Bool)

(assert (=> d!1524548 (=> res!2023028 e!2977585)))

(assert (=> d!1524548 (= res!2023028 ((_ is Nil!53551) (toList!6333 lt!1932485)))))

(assert (=> d!1524548 (= (forall!11886 (toList!6333 lt!1932485) lambda!224803) e!2977585)))

(declare-fun b!4769940 () Bool)

(declare-fun e!2977586 () Bool)

(assert (=> b!4769940 (= e!2977585 e!2977586)))

(declare-fun res!2023029 () Bool)

(assert (=> b!4769940 (=> (not res!2023029) (not e!2977586))))

(assert (=> b!4769940 (= res!2023029 (dynLambda!21964 lambda!224803 (h!59963 (toList!6333 lt!1932485))))))

(declare-fun b!4769941 () Bool)

(assert (=> b!4769941 (= e!2977586 (forall!11886 (t!361115 (toList!6333 lt!1932485)) lambda!224803))))

(assert (= (and d!1524548 (not res!2023028)) b!4769940))

(assert (= (and b!4769940 res!2023029) b!4769941))

(declare-fun b_lambda!184547 () Bool)

(assert (=> (not b_lambda!184547) (not b!4769940)))

(declare-fun m!5741566 () Bool)

(assert (=> b!4769940 m!5741566))

(declare-fun m!5741568 () Bool)

(assert (=> b!4769941 m!5741568))

(assert (=> b!4769872 d!1524548))

(declare-fun d!1524550 () Bool)

(declare-fun hash!4599 (Hashable!6622 K!15044) (_ BitVec 64))

(assert (=> d!1524550 (= (hash!4598 (hashF!12513 thiss!42052) key!1776) (hash!4599 (hashF!12513 thiss!42052) key!1776))))

(declare-fun bs!1149394 () Bool)

(assert (= bs!1149394 d!1524550))

(declare-fun m!5741570 () Bool)

(assert (=> bs!1149394 m!5741570))

(assert (=> b!4769872 d!1524550))

(declare-fun bs!1149395 () Bool)

(declare-fun b!4769946 () Bool)

(assert (= bs!1149395 (and b!4769946 b!4769872)))

(declare-fun lambda!224806 () Int)

(assert (=> bs!1149395 (= lambda!224806 lambda!224803)))

(declare-fun d!1524552 () Bool)

(declare-fun res!2023034 () Bool)

(declare-fun e!2977589 () Bool)

(assert (=> d!1524552 (=> (not res!2023034) (not e!2977589))))

(assert (=> d!1524552 (= res!2023034 (valid!3968 (v!47823 (underlying!10130 thiss!42052))))))

(assert (=> d!1524552 (= (valid!3967 thiss!42052) e!2977589)))

(declare-fun res!2023035 () Bool)

(assert (=> b!4769946 (=> (not res!2023035) (not e!2977589))))

(assert (=> b!4769946 (= res!2023035 (forall!11886 (toList!6333 (map!12044 (v!47823 (underlying!10130 thiss!42052)))) lambda!224806))))

(declare-fun b!4769947 () Bool)

(declare-fun allKeysSameHashInMap!2029 (ListLongMap!4745 Hashable!6622) Bool)

(assert (=> b!4769947 (= e!2977589 (allKeysSameHashInMap!2029 (map!12044 (v!47823 (underlying!10130 thiss!42052))) (hashF!12513 thiss!42052)))))

(assert (= (and d!1524552 res!2023034) b!4769946))

(assert (= (and b!4769946 res!2023035) b!4769947))

(assert (=> d!1524552 m!5741558))

(assert (=> b!4769946 m!5741506))

(declare-fun m!5741572 () Bool)

(assert (=> b!4769946 m!5741572))

(assert (=> b!4769947 m!5741506))

(assert (=> b!4769947 m!5741506))

(declare-fun m!5741574 () Bool)

(assert (=> b!4769947 m!5741574))

(assert (=> b!4769876 d!1524552))

(declare-fun bs!1149396 () Bool)

(declare-fun b!4769977 () Bool)

(assert (= bs!1149396 (and b!4769977 b!4769872)))

(declare-fun lambda!224809 () Int)

(assert (=> bs!1149396 (= lambda!224809 lambda!224803)))

(declare-fun bs!1149397 () Bool)

(assert (= bs!1149397 (and b!4769977 b!4769946)))

(assert (=> bs!1149397 (= lambda!224809 lambda!224806)))

(declare-fun bm!334388 () Bool)

(declare-fun call!334396 () Option!12726)

(declare-fun call!334395 () List!53674)

(assert (=> bm!334388 (= call!334396 (getPair!659 call!334395 key!1776))))

(declare-fun b!4769970 () Bool)

(declare-fun e!2977607 () Bool)

(declare-fun call!334394 () Bool)

(assert (=> b!4769970 (= e!2977607 call!334394)))

(declare-fun call!334398 () Bool)

(declare-fun bm!334389 () Bool)

(declare-fun lt!1932570 () ListLongMap!4745)

(declare-fun c!813615 () Bool)

(declare-fun call!334393 () ListLongMap!4745)

(declare-fun call!334397 () (_ BitVec 64))

(declare-fun contains!16916 (ListLongMap!4745 (_ BitVec 64)) Bool)

(assert (=> bm!334389 (= call!334398 (contains!16916 (ite c!813615 lt!1932570 call!334393) call!334397))))

(declare-fun b!4769971 () Bool)

(declare-fun e!2977610 () Unit!138399)

(declare-fun e!2977604 () Unit!138399)

(assert (=> b!4769971 (= e!2977610 e!2977604)))

(declare-fun res!2023042 () Bool)

(assert (=> b!4769971 (= res!2023042 call!334398)))

(declare-fun e!2977606 () Bool)

(assert (=> b!4769971 (=> (not res!2023042) (not e!2977606))))

(declare-fun c!813617 () Bool)

(assert (=> b!4769971 (= c!813617 e!2977606)))

(declare-fun bm!334390 () Bool)

(assert (=> bm!334390 (= call!334393 (map!12044 (v!47823 (underlying!10130 thiss!42052))))))

(declare-fun b!4769972 () Bool)

(assert (=> b!4769972 (= e!2977606 call!334394)))

(declare-fun b!4769973 () Bool)

(declare-fun lt!1932566 () (_ BitVec 64))

(declare-fun e!2977609 () Bool)

(assert (=> b!4769973 (= e!2977609 (isDefined!9874 (getPair!659 (apply!12666 (v!47823 (underlying!10130 thiss!42052)) lt!1932566) key!1776)))))

(declare-fun bm!334391 () Bool)

(declare-fun apply!12668 (ListLongMap!4745 (_ BitVec 64)) List!53674)

(assert (=> bm!334391 (= call!334395 (apply!12668 (ite c!813615 lt!1932570 call!334393) call!334397))))

(declare-fun d!1524554 () Bool)

(declare-fun lt!1932558 () Bool)

(declare-datatypes ((ListMap!5815 0))(
  ( (ListMap!5816 (toList!6334 List!53674)) )
))
(declare-fun contains!16917 (ListMap!5815 K!15044) Bool)

(declare-fun map!12046 (MutableMap!4845) ListMap!5815)

(assert (=> d!1524554 (= lt!1932558 (contains!16917 (map!12046 thiss!42052) key!1776))))

(assert (=> d!1524554 (= lt!1932558 e!2977609)))

(declare-fun res!2023044 () Bool)

(assert (=> d!1524554 (=> (not res!2023044) (not e!2977609))))

(assert (=> d!1524554 (= res!2023044 (contains!16915 (v!47823 (underlying!10130 thiss!42052)) lt!1932566))))

(declare-fun lt!1932568 () Unit!138399)

(assert (=> d!1524554 (= lt!1932568 e!2977610)))

(declare-fun extractMap!2159 (List!53675) ListMap!5815)

(assert (=> d!1524554 (= c!813615 (contains!16917 (extractMap!2159 (toList!6333 (map!12044 (v!47823 (underlying!10130 thiss!42052))))) key!1776))))

(declare-fun lt!1932567 () Unit!138399)

(declare-fun e!2977605 () Unit!138399)

(assert (=> d!1524554 (= lt!1932567 e!2977605)))

(declare-fun c!813614 () Bool)

(assert (=> d!1524554 (= c!813614 (contains!16915 (v!47823 (underlying!10130 thiss!42052)) lt!1932566))))

(assert (=> d!1524554 (= lt!1932566 (hash!4598 (hashF!12513 thiss!42052) key!1776))))

(assert (=> d!1524554 (valid!3967 thiss!42052)))

(assert (=> d!1524554 (= (contains!16913 thiss!42052 key!1776) lt!1932558)))

(declare-fun b!4769974 () Bool)

(assert (=> b!4769974 false))

(declare-fun lt!1932556 () Unit!138399)

(declare-fun lt!1932564 () Unit!138399)

(assert (=> b!4769974 (= lt!1932556 lt!1932564)))

(declare-fun lt!1932553 () ListLongMap!4745)

(assert (=> b!4769974 (contains!16917 (extractMap!2159 (toList!6333 lt!1932553)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!209 (ListLongMap!4745 K!15044 Hashable!6622) Unit!138399)

(assert (=> b!4769974 (= lt!1932564 (lemmaInLongMapThenInGenericMap!209 lt!1932553 key!1776 (hashF!12513 thiss!42052)))))

(assert (=> b!4769974 (= lt!1932553 call!334393)))

(declare-fun Unit!138403 () Unit!138399)

(assert (=> b!4769974 (= e!2977604 Unit!138403)))

(declare-fun b!4769975 () Bool)

(declare-fun lt!1932569 () Unit!138399)

(assert (=> b!4769975 (= e!2977610 lt!1932569)))

(assert (=> b!4769975 (= lt!1932570 call!334393)))

(declare-fun lemmaInGenericMapThenInLongMap!209 (ListLongMap!4745 K!15044 Hashable!6622) Unit!138399)

(assert (=> b!4769975 (= lt!1932569 (lemmaInGenericMapThenInLongMap!209 lt!1932570 key!1776 (hashF!12513 thiss!42052)))))

(declare-fun res!2023043 () Bool)

(assert (=> b!4769975 (= res!2023043 call!334398)))

(assert (=> b!4769975 (=> (not res!2023043) (not e!2977607))))

(assert (=> b!4769975 e!2977607))

(declare-fun b!4769976 () Bool)

(declare-fun Unit!138404 () Unit!138399)

(assert (=> b!4769976 (= e!2977605 Unit!138404)))

(assert (=> b!4769977 (= e!2977605 (forallContained!3878 (toList!6333 (map!12044 (v!47823 (underlying!10130 thiss!42052)))) lambda!224809 (tuple2!55659 lt!1932566 (apply!12666 (v!47823 (underlying!10130 thiss!42052)) lt!1932566))))))

(declare-fun c!813616 () Bool)

(assert (=> b!4769977 (= c!813616 (not (contains!16912 (toList!6333 (map!12044 (v!47823 (underlying!10130 thiss!42052)))) (tuple2!55659 lt!1932566 (apply!12666 (v!47823 (underlying!10130 thiss!42052)) lt!1932566)))))))

(declare-fun lt!1932571 () Unit!138399)

(declare-fun e!2977608 () Unit!138399)

(assert (=> b!4769977 (= lt!1932571 e!2977608)))

(declare-fun b!4769978 () Bool)

(declare-fun Unit!138405 () Unit!138399)

(assert (=> b!4769978 (= e!2977604 Unit!138405)))

(declare-fun b!4769979 () Bool)

(assert (=> b!4769979 false))

(declare-fun lt!1932565 () Unit!138399)

(declare-fun lt!1932559 () Unit!138399)

(assert (=> b!4769979 (= lt!1932565 lt!1932559)))

(declare-fun lt!1932561 () List!53675)

(declare-fun lt!1932555 () List!53674)

(assert (=> b!4769979 (contains!16912 lt!1932561 (tuple2!55659 lt!1932566 lt!1932555))))

(assert (=> b!4769979 (= lt!1932559 (lemmaGetValueByKeyImpliesContainsTuple!950 lt!1932561 lt!1932566 lt!1932555))))

(assert (=> b!4769979 (= lt!1932555 (apply!12666 (v!47823 (underlying!10130 thiss!42052)) lt!1932566))))

(assert (=> b!4769979 (= lt!1932561 (toList!6333 (map!12044 (v!47823 (underlying!10130 thiss!42052)))))))

(declare-fun lt!1932557 () Unit!138399)

(declare-fun lt!1932560 () Unit!138399)

(assert (=> b!4769979 (= lt!1932557 lt!1932560)))

(declare-fun lt!1932572 () List!53675)

(assert (=> b!4769979 (isDefined!9873 (getValueByKey!2215 lt!1932572 lt!1932566))))

(assert (=> b!4769979 (= lt!1932560 (lemmaContainsKeyImpliesGetValueByKeyDefined!2011 lt!1932572 lt!1932566))))

(assert (=> b!4769979 (= lt!1932572 (toList!6333 (map!12044 (v!47823 (underlying!10130 thiss!42052)))))))

(declare-fun lt!1932563 () Unit!138399)

(declare-fun lt!1932554 () Unit!138399)

(assert (=> b!4769979 (= lt!1932563 lt!1932554)))

(declare-fun lt!1932562 () List!53675)

(assert (=> b!4769979 (containsKey!3679 lt!1932562 lt!1932566)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!210 (List!53675 (_ BitVec 64)) Unit!138399)

(assert (=> b!4769979 (= lt!1932554 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!210 lt!1932562 lt!1932566))))

(assert (=> b!4769979 (= lt!1932562 (toList!6333 (map!12044 (v!47823 (underlying!10130 thiss!42052)))))))

(declare-fun Unit!138406 () Unit!138399)

(assert (=> b!4769979 (= e!2977608 Unit!138406)))

(declare-fun bm!334392 () Bool)

(assert (=> bm!334392 (= call!334394 (isDefined!9874 call!334396))))

(declare-fun bm!334393 () Bool)

(assert (=> bm!334393 (= call!334397 (hash!4598 (hashF!12513 thiss!42052) key!1776))))

(declare-fun b!4769980 () Bool)

(declare-fun Unit!138407 () Unit!138399)

(assert (=> b!4769980 (= e!2977608 Unit!138407)))

(assert (= (and d!1524554 c!813614) b!4769977))

(assert (= (and d!1524554 (not c!813614)) b!4769976))

(assert (= (and b!4769977 c!813616) b!4769979))

(assert (= (and b!4769977 (not c!813616)) b!4769980))

(assert (= (and d!1524554 c!813615) b!4769975))

(assert (= (and d!1524554 (not c!813615)) b!4769971))

(assert (= (and b!4769975 res!2023043) b!4769970))

(assert (= (and b!4769971 res!2023042) b!4769972))

(assert (= (and b!4769971 c!813617) b!4769974))

(assert (= (and b!4769971 (not c!813617)) b!4769978))

(assert (= (or b!4769975 b!4769970 b!4769971 b!4769972) bm!334393))

(assert (= (or b!4769975 b!4769971 b!4769972 b!4769974) bm!334390))

(assert (= (or b!4769975 b!4769971) bm!334389))

(assert (= (or b!4769970 b!4769972) bm!334391))

(assert (= (or b!4769970 b!4769972) bm!334388))

(assert (= (or b!4769970 b!4769972) bm!334392))

(assert (= (and d!1524554 res!2023044) b!4769973))

(declare-fun m!5741576 () Bool)

(assert (=> bm!334392 m!5741576))

(declare-fun m!5741578 () Bool)

(assert (=> b!4769979 m!5741578))

(assert (=> b!4769979 m!5741506))

(declare-fun m!5741580 () Bool)

(assert (=> b!4769979 m!5741580))

(declare-fun m!5741582 () Bool)

(assert (=> b!4769979 m!5741582))

(declare-fun m!5741584 () Bool)

(assert (=> b!4769979 m!5741584))

(declare-fun m!5741586 () Bool)

(assert (=> b!4769979 m!5741586))

(assert (=> b!4769979 m!5741580))

(declare-fun m!5741588 () Bool)

(assert (=> b!4769979 m!5741588))

(declare-fun m!5741590 () Bool)

(assert (=> b!4769979 m!5741590))

(declare-fun m!5741592 () Bool)

(assert (=> b!4769979 m!5741592))

(declare-fun m!5741594 () Bool)

(assert (=> b!4769975 m!5741594))

(assert (=> bm!334393 m!5741500))

(declare-fun m!5741596 () Bool)

(assert (=> d!1524554 m!5741596))

(declare-fun m!5741598 () Bool)

(assert (=> d!1524554 m!5741598))

(declare-fun m!5741600 () Bool)

(assert (=> d!1524554 m!5741600))

(assert (=> d!1524554 m!5741500))

(declare-fun m!5741602 () Bool)

(assert (=> d!1524554 m!5741602))

(declare-fun m!5741604 () Bool)

(assert (=> d!1524554 m!5741604))

(assert (=> d!1524554 m!5741482))

(assert (=> d!1524554 m!5741598))

(assert (=> d!1524554 m!5741602))

(assert (=> d!1524554 m!5741506))

(assert (=> b!4769973 m!5741584))

(assert (=> b!4769973 m!5741584))

(declare-fun m!5741606 () Bool)

(assert (=> b!4769973 m!5741606))

(assert (=> b!4769973 m!5741606))

(declare-fun m!5741608 () Bool)

(assert (=> b!4769973 m!5741608))

(declare-fun m!5741610 () Bool)

(assert (=> bm!334389 m!5741610))

(assert (=> b!4769977 m!5741506))

(assert (=> b!4769977 m!5741584))

(declare-fun m!5741612 () Bool)

(assert (=> b!4769977 m!5741612))

(declare-fun m!5741614 () Bool)

(assert (=> b!4769977 m!5741614))

(declare-fun m!5741616 () Bool)

(assert (=> b!4769974 m!5741616))

(assert (=> b!4769974 m!5741616))

(declare-fun m!5741618 () Bool)

(assert (=> b!4769974 m!5741618))

(declare-fun m!5741620 () Bool)

(assert (=> b!4769974 m!5741620))

(declare-fun m!5741622 () Bool)

(assert (=> bm!334391 m!5741622))

(declare-fun m!5741624 () Bool)

(assert (=> bm!334388 m!5741624))

(assert (=> bm!334390 m!5741506))

(assert (=> b!4769878 d!1524554))

(declare-fun e!2977613 () Bool)

(declare-fun b!4769985 () Bool)

(declare-fun tp!1356371 () Bool)

(declare-fun tp_is_empty!32533 () Bool)

(assert (=> b!4769985 (= e!2977613 (and tp_is_empty!32531 tp_is_empty!32533 tp!1356371))))

(assert (=> b!4769877 (= tp!1356368 e!2977613)))

(assert (= (and b!4769877 ((_ is Cons!53550) (zeroValue!5249 (v!47822 (underlying!10129 (v!47823 (underlying!10130 thiss!42052))))))) b!4769985))

(declare-fun tp!1356372 () Bool)

(declare-fun e!2977614 () Bool)

(declare-fun b!4769986 () Bool)

(assert (=> b!4769986 (= e!2977614 (and tp_is_empty!32531 tp_is_empty!32533 tp!1356372))))

(assert (=> b!4769877 (= tp!1356366 e!2977614)))

(assert (= (and b!4769877 ((_ is Cons!53550) (minValue!5249 (v!47822 (underlying!10129 (v!47823 (underlying!10130 thiss!42052))))))) b!4769986))

(declare-fun tp!1356373 () Bool)

(declare-fun b!4769987 () Bool)

(declare-fun e!2977615 () Bool)

(assert (=> b!4769987 (= e!2977615 (and tp_is_empty!32531 tp_is_empty!32533 tp!1356373))))

(assert (=> b!4769875 (= tp!1356365 e!2977615)))

(assert (= (and b!4769875 ((_ is Cons!53550) mapDefault!21988)) b!4769987))

(declare-fun b!4769995 () Bool)

(declare-fun e!2977620 () Bool)

(declare-fun tp!1356381 () Bool)

(assert (=> b!4769995 (= e!2977620 (and tp_is_empty!32531 tp_is_empty!32533 tp!1356381))))

(declare-fun condMapEmpty!21991 () Bool)

(declare-fun mapDefault!21991 () List!53674)

(assert (=> mapNonEmpty!21988 (= condMapEmpty!21991 (= mapRest!21988 ((as const (Array (_ BitVec 32) List!53674)) mapDefault!21991)))))

(declare-fun mapRes!21991 () Bool)

(assert (=> mapNonEmpty!21988 (= tp!1356364 (and e!2977620 mapRes!21991))))

(declare-fun mapNonEmpty!21991 () Bool)

(declare-fun tp!1356382 () Bool)

(declare-fun e!2977621 () Bool)

(assert (=> mapNonEmpty!21991 (= mapRes!21991 (and tp!1356382 e!2977621))))

(declare-fun mapRest!21991 () (Array (_ BitVec 32) List!53674))

(declare-fun mapValue!21991 () List!53674)

(declare-fun mapKey!21991 () (_ BitVec 32))

(assert (=> mapNonEmpty!21991 (= mapRest!21988 (store mapRest!21991 mapKey!21991 mapValue!21991))))

(declare-fun mapIsEmpty!21991 () Bool)

(assert (=> mapIsEmpty!21991 mapRes!21991))

(declare-fun b!4769994 () Bool)

(declare-fun tp!1356380 () Bool)

(assert (=> b!4769994 (= e!2977621 (and tp_is_empty!32531 tp_is_empty!32533 tp!1356380))))

(assert (= (and mapNonEmpty!21988 condMapEmpty!21991) mapIsEmpty!21991))

(assert (= (and mapNonEmpty!21988 (not condMapEmpty!21991)) mapNonEmpty!21991))

(assert (= (and mapNonEmpty!21991 ((_ is Cons!53550) mapValue!21991)) b!4769994))

(assert (= (and mapNonEmpty!21988 ((_ is Cons!53550) mapDefault!21991)) b!4769995))

(declare-fun m!5741626 () Bool)

(assert (=> mapNonEmpty!21991 m!5741626))

(declare-fun e!2977622 () Bool)

(declare-fun b!4769996 () Bool)

(declare-fun tp!1356383 () Bool)

(assert (=> b!4769996 (= e!2977622 (and tp_is_empty!32531 tp_is_empty!32533 tp!1356383))))

(assert (=> mapNonEmpty!21988 (= tp!1356363 e!2977622)))

(assert (= (and mapNonEmpty!21988 ((_ is Cons!53550) mapValue!21988)) b!4769996))

(declare-fun b_lambda!184549 () Bool)

(assert (= b_lambda!184543 (or b!4769872 b_lambda!184549)))

(declare-fun bs!1149398 () Bool)

(declare-fun d!1524556 () Bool)

(assert (= bs!1149398 (and d!1524556 b!4769872)))

(assert (=> bs!1149398 (= (dynLambda!21964 lambda!224803 lt!1932487) (noDuplicateKeys!2260 (_2!31123 lt!1932487)))))

(declare-fun m!5741628 () Bool)

(assert (=> bs!1149398 m!5741628))

(assert (=> d!1524544 d!1524556))

(declare-fun b_lambda!184551 () Bool)

(assert (= b_lambda!184545 (or (and b!4769877 b_free!129787) b_lambda!184551)))

(declare-fun b_lambda!184553 () Bool)

(assert (= b_lambda!184547 (or b!4769872 b_lambda!184553)))

(declare-fun bs!1149399 () Bool)

(declare-fun d!1524558 () Bool)

(assert (= bs!1149399 (and d!1524558 b!4769872)))

(assert (=> bs!1149399 (= (dynLambda!21964 lambda!224803 (h!59963 (toList!6333 lt!1932485))) (noDuplicateKeys!2260 (_2!31123 (h!59963 (toList!6333 lt!1932485)))))))

(declare-fun m!5741630 () Bool)

(assert (=> bs!1149399 m!5741630))

(assert (=> b!4769940 d!1524558))

(check-sat (not b!4769896) (not b!4769986) (not bm!334393) (not b!4769929) tp_is_empty!32531 (not d!1524550) (not b!4769987) (not d!1524540) b_and!341529 (not b!4769902) (not b!4769996) (not b!4769985) (not b!4769947) (not bs!1149398) (not b!4769892) (not b!4769973) (not b_lambda!184551) (not d!1524546) (not d!1524544) (not b!4769923) (not d!1524542) (not b!4769934) (not d!1524528) (not bm!334391) (not bm!334390) (not bm!334392) (not d!1524554) (not mapNonEmpty!21991) (not d!1524532) (not b!4769995) (not b_next!130577) (not b!4769975) (not b!4769979) b_and!341527 (not b_lambda!184553) (not bs!1149399) (not b!4769941) (not d!1524526) (not d!1524552) (not b_next!130579) (not b!4769881) (not b!4769994) (not b_lambda!184549) (not b!4769974) (not b!4769946) (not b!4769977) (not b!4769922) (not tb!257493) (not b!4769921) (not b!4769926) (not bm!334389) (not d!1524538) (not bm!334388) (not b!4769919) tp_is_empty!32533)
(check-sat b_and!341527 b_and!341529 (not b_next!130579) (not b_next!130577))
