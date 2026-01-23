; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241830 () Bool)

(assert start!241830)

(declare-fun b!2478754 () Bool)

(declare-fun b_free!72097 () Bool)

(declare-fun b_next!72801 () Bool)

(assert (=> b!2478754 (= b_free!72097 (not b_next!72801))))

(declare-fun tp!793245 () Bool)

(declare-fun b_and!188335 () Bool)

(assert (=> b!2478754 (= tp!793245 b_and!188335)))

(declare-fun b!2478748 () Bool)

(declare-fun b_free!72099 () Bool)

(declare-fun b_next!72803 () Bool)

(assert (=> b!2478748 (= b_free!72099 (not b_next!72803))))

(declare-fun tp!793247 () Bool)

(declare-fun b_and!188337 () Bool)

(assert (=> b!2478748 (= tp!793247 b_and!188337)))

(declare-fun bs!467245 () Bool)

(declare-fun b!2478757 () Bool)

(declare-fun b!2478749 () Bool)

(assert (= bs!467245 (and b!2478757 b!2478749)))

(declare-fun lambda!93584 () Int)

(declare-fun lambda!93583 () Int)

(assert (=> bs!467245 (not (= lambda!93584 lambda!93583))))

(declare-fun b!2478770 () Bool)

(declare-fun e!1573052 () Bool)

(assert (=> b!2478770 (= e!1573052 true)))

(declare-fun b!2478769 () Bool)

(declare-fun e!1573051 () Bool)

(assert (=> b!2478769 (= e!1573051 e!1573052)))

(declare-fun b!2478768 () Bool)

(declare-fun e!1573050 () Bool)

(assert (=> b!2478768 (= e!1573050 e!1573051)))

(assert (=> b!2478757 e!1573050))

(assert (= b!2478769 b!2478770))

(assert (= b!2478768 b!2478769))

(declare-datatypes ((K!5360 0))(
  ( (K!5361 (val!8763 Int)) )
))
(declare-datatypes ((V!5562 0))(
  ( (V!5563 (val!8764 Int)) )
))
(declare-datatypes ((tuple2!28502 0))(
  ( (tuple2!28503 (_1!16792 K!5360) (_2!16792 V!5562)) )
))
(declare-datatypes ((List!29110 0))(
  ( (Nil!29010) (Cons!29010 (h!34412 tuple2!28502) (t!210759 List!29110)) )
))
(declare-datatypes ((array!11689 0))(
  ( (array!11690 (arr!5210 (Array (_ BitVec 32) List!29110)) (size!22629 (_ BitVec 32))) )
))
(declare-datatypes ((array!11691 0))(
  ( (array!11692 (arr!5211 (Array (_ BitVec 32) (_ BitVec 64))) (size!22630 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6620 0))(
  ( (LongMapFixedSize!6621 (defaultEntry!3684 Int) (mask!8454 (_ BitVec 32)) (extraKeys!3558 (_ BitVec 32)) (zeroValue!3568 List!29110) (minValue!3568 List!29110) (_size!6667 (_ BitVec 32)) (_keys!3607 array!11691) (_values!3590 array!11689) (_vacant!3371 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13057 0))(
  ( (Cell!13058 (v!31308 LongMapFixedSize!6620)) )
))
(declare-datatypes ((MutLongMap!3310 0))(
  ( (LongMap!3310 (underlying!6827 Cell!13057)) (MutLongMapExt!3309 (__x!18836 Int)) )
))
(declare-datatypes ((tuple2!28504 0))(
  ( (tuple2!28505 (_1!16793 Bool) (_2!16793 MutLongMap!3310)) )
))
(declare-fun lt!885752 () tuple2!28504)

(get-info :version)

(assert (= (and b!2478757 ((_ is LongMap!3310) (_2!16793 lt!885752))) b!2478768))

(declare-fun order!15721 () Int)

(declare-fun order!15719 () Int)

(declare-fun dynLambda!12451 (Int Int) Int)

(declare-fun dynLambda!12452 (Int Int) Int)

(assert (=> b!2478770 (< (dynLambda!12451 order!15719 (defaultEntry!3684 (v!31308 (underlying!6827 (_2!16793 lt!885752))))) (dynLambda!12452 order!15721 lambda!93584))))

(declare-fun b!2478782 () Bool)

(declare-fun e!1573062 () Bool)

(declare-fun e!1573063 () Bool)

(assert (=> b!2478782 (= e!1573062 e!1573063)))

(declare-fun b!2478781 () Bool)

(declare-fun e!1573061 () Bool)

(assert (=> b!2478781 (= e!1573061 e!1573062)))

(assert (=> b!2478757 e!1573061))

(declare-fun b!2478783 () Bool)

(declare-fun e!1573064 () Bool)

(assert (=> b!2478783 (= e!1573063 e!1573064)))

(declare-fun b!2478784 () Bool)

(assert (=> b!2478784 (= e!1573064 true)))

(assert (= b!2478783 b!2478784))

(assert (= b!2478782 b!2478783))

(declare-datatypes ((Cell!13059 0))(
  ( (Cell!13060 (v!31309 MutLongMap!3310)) )
))
(declare-fun lt!885750 () Cell!13059)

(assert (= (and b!2478781 ((_ is LongMap!3310) (v!31309 lt!885750))) b!2478782))

(assert (= b!2478757 b!2478781))

(assert (=> b!2478784 (< (dynLambda!12451 order!15719 (defaultEntry!3684 (v!31308 (underlying!6827 (v!31309 lt!885750))))) (dynLambda!12452 order!15721 lambda!93584))))

(declare-fun b!2478797 () Bool)

(declare-fun e!1573075 () Bool)

(declare-fun e!1573076 () Bool)

(assert (=> b!2478797 (= e!1573075 e!1573076)))

(declare-fun b!2478798 () Bool)

(declare-fun e!1573077 () Bool)

(assert (=> b!2478798 (= e!1573076 e!1573077)))

(declare-fun b!2478799 () Bool)

(declare-fun e!1573078 () Bool)

(declare-fun e!1573079 () Bool)

(assert (=> b!2478799 (= e!1573078 e!1573079)))

(declare-fun b!2478800 () Bool)

(declare-fun lt!885756 () MutLongMap!3310)

(assert (=> b!2478800 (= e!1573079 (and e!1573075 ((_ is LongMap!3310) lt!885756)))))

(declare-datatypes ((Hashable!3220 0))(
  ( (HashableExt!3219 (__x!18837 Int)) )
))
(declare-datatypes ((MutableMap!3220 0))(
  ( (MutableMapExt!3219 (__x!18838 Int)) (HashMap!3220 (underlying!6828 Cell!13059) (hashF!5158 Hashable!3220) (_size!6668 (_ BitVec 32)) (defaultValue!3382 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3220)

(assert (=> b!2478800 (= lt!885756 (v!31309 (underlying!6828 thiss!42540)))))

(declare-fun b!2478801 () Bool)

(assert (=> b!2478801 (= e!1573077 true)))

(assert (=> b!2478757 e!1573078))

(assert (= b!2478798 b!2478801))

(assert (= b!2478797 b!2478798))

(assert (= (and b!2478800 ((_ is LongMap!3310) (v!31309 (underlying!6828 thiss!42540)))) b!2478797))

(assert (= b!2478799 b!2478800))

(assert (= (and b!2478757 ((_ is HashMap!3220) thiss!42540)) b!2478799))

(assert (=> b!2478801 (< (dynLambda!12451 order!15719 (defaultEntry!3684 (v!31308 (underlying!6827 (v!31309 (underlying!6828 thiss!42540)))))) (dynLambda!12452 order!15721 lambda!93584))))

(declare-fun order!15723 () Int)

(declare-fun dynLambda!12453 (Int Int) Int)

(assert (=> b!2478799 (< (dynLambda!12453 order!15723 (defaultValue!3382 thiss!42540)) (dynLambda!12452 order!15721 lambda!93584))))

(declare-fun res!1049204 () Bool)

(declare-fun e!1573037 () Bool)

(assert (=> start!241830 (=> (not res!1049204) (not e!1573037))))

(assert (=> start!241830 (= res!1049204 ((_ is HashMap!3220) thiss!42540))))

(assert (=> start!241830 e!1573037))

(declare-fun e!1573042 () Bool)

(assert (=> start!241830 e!1573042))

(declare-fun tp_is_empty!12135 () Bool)

(assert (=> start!241830 tp_is_empty!12135))

(declare-fun mapNonEmpty!15376 () Bool)

(declare-fun mapRes!15376 () Bool)

(declare-fun tp!793249 () Bool)

(declare-fun tp!793244 () Bool)

(assert (=> mapNonEmpty!15376 (= mapRes!15376 (and tp!793249 tp!793244))))

(declare-fun mapValue!15376 () List!29110)

(declare-fun mapKey!15376 () (_ BitVec 32))

(declare-fun mapRest!15376 () (Array (_ BitVec 32) List!29110))

(assert (=> mapNonEmpty!15376 (= (arr!5210 (_values!3590 (v!31308 (underlying!6827 (v!31309 (underlying!6828 thiss!42540)))))) (store mapRest!15376 mapKey!15376 mapValue!15376))))

(declare-fun e!1573036 () Bool)

(assert (=> b!2478748 (= e!1573042 (and e!1573036 tp!793247))))

(declare-fun e!1573039 () Bool)

(assert (=> b!2478749 (= e!1573037 (not e!1573039))))

(declare-fun res!1049201 () Bool)

(assert (=> b!2478749 (=> res!1049201 e!1573039)))

(assert (=> b!2478749 (= res!1049201 (not (_1!16793 lt!885752)))))

(declare-fun lt!885747 () List!29110)

(declare-fun noDuplicateKeys!52 (List!29110) Bool)

(assert (=> b!2478749 (noDuplicateKeys!52 lt!885747)))

(declare-datatypes ((Unit!42417 0))(
  ( (Unit!42418) )
))
(declare-fun lt!885751 () Unit!42417)

(declare-fun lt!885749 () List!29110)

(declare-fun key!2246 () K!5360)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!38 (List!29110 K!5360) Unit!42417)

(assert (=> b!2478749 (= lt!885751 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!38 lt!885749 key!2246))))

(assert (=> b!2478749 (= lt!885750 (Cell!13060 (_2!16793 lt!885752)))))

(declare-fun lt!885744 () (_ BitVec 64))

(declare-fun update!155 (MutLongMap!3310 (_ BitVec 64) List!29110) tuple2!28504)

(assert (=> b!2478749 (= lt!885752 (update!155 (v!31309 (underlying!6828 thiss!42540)) lt!885744 lt!885747))))

(declare-fun removePairForKey!42 (List!29110 K!5360) List!29110)

(assert (=> b!2478749 (= lt!885747 (removePairForKey!42 lt!885749 key!2246))))

(declare-datatypes ((ListMap!985 0))(
  ( (ListMap!986 (toList!1499 List!29110)) )
))
(declare-fun lt!885743 () ListMap!985)

(declare-fun map!6092 (MutableMap!3220) ListMap!985)

(assert (=> b!2478749 (= lt!885743 (map!6092 thiss!42540))))

(declare-datatypes ((tuple2!28506 0))(
  ( (tuple2!28507 (_1!16794 (_ BitVec 64)) (_2!16794 List!29110)) )
))
(declare-fun lt!885746 () tuple2!28506)

(declare-datatypes ((List!29111 0))(
  ( (Nil!29011) (Cons!29011 (h!34413 tuple2!28506) (t!210760 List!29111)) )
))
(declare-datatypes ((ListLongMap!443 0))(
  ( (ListLongMap!444 (toList!1500 List!29111)) )
))
(declare-fun lt!885745 () ListLongMap!443)

(declare-fun lt!885753 () Unit!42417)

(declare-fun forallContained!823 (List!29111 Int tuple2!28506) Unit!42417)

(assert (=> b!2478749 (= lt!885753 (forallContained!823 (toList!1500 lt!885745) lambda!93583 lt!885746))))

(assert (=> b!2478749 (= lt!885746 (tuple2!28507 lt!885744 lt!885749))))

(declare-fun map!6093 (MutLongMap!3310) ListLongMap!443)

(assert (=> b!2478749 (= lt!885745 (map!6093 (v!31309 (underlying!6828 thiss!42540))))))

(declare-fun apply!6868 (MutLongMap!3310 (_ BitVec 64)) List!29110)

(assert (=> b!2478749 (= lt!885749 (apply!6868 (v!31309 (underlying!6828 thiss!42540)) lt!885744))))

(declare-fun hash!639 (Hashable!3220 K!5360) (_ BitVec 64))

(assert (=> b!2478749 (= lt!885744 (hash!639 (hashF!5158 thiss!42540) key!2246))))

(declare-fun b!2478750 () Bool)

(declare-fun e!1573038 () Bool)

(declare-fun e!1573041 () Bool)

(assert (=> b!2478750 (= e!1573038 e!1573041)))

(declare-fun b!2478751 () Bool)

(declare-fun e!1573040 () Bool)

(declare-fun lt!885748 () MutLongMap!3310)

(assert (=> b!2478751 (= e!1573036 (and e!1573040 ((_ is LongMap!3310) lt!885748)))))

(assert (=> b!2478751 (= lt!885748 (v!31309 (underlying!6828 thiss!42540)))))

(declare-fun b!2478752 () Bool)

(declare-fun e!1573043 () Bool)

(declare-fun tp!793246 () Bool)

(assert (=> b!2478752 (= e!1573043 (and tp!793246 mapRes!15376))))

(declare-fun condMapEmpty!15376 () Bool)

(declare-fun mapDefault!15376 () List!29110)

(assert (=> b!2478752 (= condMapEmpty!15376 (= (arr!5210 (_values!3590 (v!31308 (underlying!6827 (v!31309 (underlying!6828 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29110)) mapDefault!15376)))))

(declare-fun b!2478753 () Bool)

(declare-fun res!1049205 () Bool)

(assert (=> b!2478753 (=> (not res!1049205) (not e!1573037))))

(declare-fun valid!2523 (MutableMap!3220) Bool)

(assert (=> b!2478753 (= res!1049205 (valid!2523 thiss!42540))))

(declare-fun tp!793250 () Bool)

(declare-fun tp!793248 () Bool)

(declare-fun array_inv!3739 (array!11691) Bool)

(declare-fun array_inv!3740 (array!11689) Bool)

(assert (=> b!2478754 (= e!1573041 (and tp!793245 tp!793250 tp!793248 (array_inv!3739 (_keys!3607 (v!31308 (underlying!6827 (v!31309 (underlying!6828 thiss!42540)))))) (array_inv!3740 (_values!3590 (v!31308 (underlying!6827 (v!31309 (underlying!6828 thiss!42540)))))) e!1573043))))

(declare-fun mapIsEmpty!15376 () Bool)

(assert (=> mapIsEmpty!15376 mapRes!15376))

(declare-fun b!2478755 () Bool)

(assert (=> b!2478755 (= e!1573040 e!1573038)))

(declare-fun b!2478756 () Bool)

(assert (=> b!2478756 (= e!1573039 true)))

(declare-fun res!1049206 () Bool)

(assert (=> b!2478757 (=> res!1049206 e!1573039)))

(declare-fun forall!5939 (List!29111 Int) Bool)

(assert (=> b!2478757 (= res!1049206 (not (forall!5939 (toList!1500 lt!885745) lambda!93584)))))

(declare-fun b!2478758 () Bool)

(declare-fun res!1049203 () Bool)

(assert (=> b!2478758 (=> (not res!1049203) (not e!1573037))))

(declare-fun contains!5011 (MutableMap!3220 K!5360) Bool)

(assert (=> b!2478758 (= res!1049203 (contains!5011 thiss!42540 key!2246))))

(declare-fun b!2478759 () Bool)

(declare-fun res!1049202 () Bool)

(assert (=> b!2478759 (=> res!1049202 e!1573039)))

(declare-fun contains!5012 (List!29111 tuple2!28506) Bool)

(assert (=> b!2478759 (= res!1049202 (not (contains!5012 (toList!1500 lt!885745) lt!885746)))))

(assert (= (and start!241830 res!1049204) b!2478753))

(assert (= (and b!2478753 res!1049205) b!2478758))

(assert (= (and b!2478758 res!1049203) b!2478749))

(assert (= (and b!2478749 (not res!1049201)) b!2478757))

(assert (= (and b!2478757 (not res!1049206)) b!2478759))

(assert (= (and b!2478759 (not res!1049202)) b!2478756))

(assert (= (and b!2478752 condMapEmpty!15376) mapIsEmpty!15376))

(assert (= (and b!2478752 (not condMapEmpty!15376)) mapNonEmpty!15376))

(assert (= b!2478754 b!2478752))

(assert (= b!2478750 b!2478754))

(assert (= b!2478755 b!2478750))

(assert (= (and b!2478751 ((_ is LongMap!3310) (v!31309 (underlying!6828 thiss!42540)))) b!2478755))

(assert (= b!2478748 b!2478751))

(assert (= (and start!241830 ((_ is HashMap!3220) thiss!42540)) b!2478748))

(declare-fun m!2846397 () Bool)

(assert (=> mapNonEmpty!15376 m!2846397))

(declare-fun m!2846399 () Bool)

(assert (=> b!2478757 m!2846399))

(declare-fun m!2846401 () Bool)

(assert (=> b!2478754 m!2846401))

(declare-fun m!2846403 () Bool)

(assert (=> b!2478754 m!2846403))

(declare-fun m!2846405 () Bool)

(assert (=> b!2478759 m!2846405))

(declare-fun m!2846407 () Bool)

(assert (=> b!2478758 m!2846407))

(declare-fun m!2846409 () Bool)

(assert (=> b!2478749 m!2846409))

(declare-fun m!2846411 () Bool)

(assert (=> b!2478749 m!2846411))

(declare-fun m!2846413 () Bool)

(assert (=> b!2478749 m!2846413))

(declare-fun m!2846415 () Bool)

(assert (=> b!2478749 m!2846415))

(declare-fun m!2846417 () Bool)

(assert (=> b!2478749 m!2846417))

(declare-fun m!2846419 () Bool)

(assert (=> b!2478749 m!2846419))

(declare-fun m!2846421 () Bool)

(assert (=> b!2478749 m!2846421))

(declare-fun m!2846423 () Bool)

(assert (=> b!2478749 m!2846423))

(declare-fun m!2846425 () Bool)

(assert (=> b!2478749 m!2846425))

(declare-fun m!2846427 () Bool)

(assert (=> b!2478753 m!2846427))

(check-sat b_and!188335 (not b!2478759) (not b!2478758) (not mapNonEmpty!15376) (not b!2478749) (not b!2478752) (not b_next!72803) b_and!188337 (not b!2478754) (not b!2478757) (not b!2478753) (not b_next!72801) tp_is_empty!12135)
(check-sat b_and!188337 b_and!188335 (not b_next!72801) (not b_next!72803))
