; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487474 () Bool)

(assert start!487474)

(declare-fun b!4765826 () Bool)

(declare-fun b_free!129619 () Bool)

(declare-fun b_next!130409 () Bool)

(assert (=> b!4765826 (= b_free!129619 (not b_next!130409))))

(declare-fun tp!1355298 () Bool)

(declare-fun b_and!341319 () Bool)

(assert (=> b!4765826 (= tp!1355298 b_and!341319)))

(declare-fun b!4765834 () Bool)

(declare-fun b_free!129621 () Bool)

(declare-fun b_next!130411 () Bool)

(assert (=> b!4765834 (= b_free!129621 (not b_next!130411))))

(declare-fun tp!1355300 () Bool)

(declare-fun b_and!341321 () Bool)

(assert (=> b!4765834 (= tp!1355300 b_and!341321)))

(declare-fun b!4765824 () Bool)

(declare-datatypes ((Unit!138186 0))(
  ( (Unit!138187) )
))
(declare-fun e!2974633 () Unit!138186)

(declare-fun Unit!138188 () Unit!138186)

(assert (=> b!4765824 (= e!2974633 Unit!138188)))

(declare-fun lt!1928576 () Unit!138186)

(declare-datatypes ((K!14939 0))(
  ( (K!14940 (val!20257 Int)) )
))
(declare-datatypes ((V!15185 0))(
  ( (V!15186 (val!20258 Int)) )
))
(declare-datatypes ((tuple2!55502 0))(
  ( (tuple2!55503 (_1!31045 K!14939) (_2!31045 V!15185)) )
))
(declare-datatypes ((List!53595 0))(
  ( (Nil!53471) (Cons!53471 (h!59883 tuple2!55502) (t!361009 List!53595)) )
))
(declare-datatypes ((tuple2!55504 0))(
  ( (tuple2!55505 (_1!31046 (_ BitVec 64)) (_2!31046 List!53595)) )
))
(declare-datatypes ((List!53596 0))(
  ( (Nil!53472) (Cons!53472 (h!59884 tuple2!55504) (t!361010 List!53596)) )
))
(declare-datatypes ((ListLongMap!4675 0))(
  ( (ListLongMap!4676 (toList!6277 List!53596)) )
))
(declare-fun lt!1928580 () ListLongMap!4675)

(declare-fun lt!1928586 () (_ BitVec 64))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1980 (List!53596 (_ BitVec 64)) Unit!138186)

(assert (=> b!4765824 (= lt!1928576 (lemmaContainsKeyImpliesGetValueByKeyDefined!1980 (toList!6277 lt!1928580) lt!1928586))))

(declare-datatypes ((Option!12654 0))(
  ( (None!12653) (Some!12653 (v!47604 List!53595)) )
))
(declare-fun isDefined!9826 (Option!12654) Bool)

(declare-fun getValueByKey!2167 (List!53596 (_ BitVec 64)) Option!12654)

(assert (=> b!4765824 (isDefined!9826 (getValueByKey!2167 (toList!6277 lt!1928580) lt!1928586))))

(declare-fun lt!1928587 () List!53595)

(declare-fun lt!1928573 () Unit!138186)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!924 (List!53596 (_ BitVec 64) List!53595) Unit!138186)

(assert (=> b!4765824 (= lt!1928573 (lemmaGetValueByKeyImpliesContainsTuple!924 (toList!6277 lt!1928580) lt!1928586 lt!1928587))))

(assert (=> b!4765824 false))

(declare-fun b!4765825 () Bool)

(declare-fun res!2021253 () Bool)

(declare-fun e!2974627 () Bool)

(assert (=> b!4765825 (=> (not res!2021253) (not e!2974627))))

(declare-datatypes ((array!17986 0))(
  ( (array!17987 (arr!8023 (Array (_ BitVec 32) (_ BitVec 64))) (size!36253 (_ BitVec 32))) )
))
(declare-datatypes ((array!17988 0))(
  ( (array!17989 (arr!8024 (Array (_ BitVec 32) List!53595)) (size!36254 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6580 0))(
  ( (HashableExt!6579 (__x!32505 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9838 0))(
  ( (LongMapFixedSize!9839 (defaultEntry!5337 Int) (mask!14674 (_ BitVec 32)) (extraKeys!5194 (_ BitVec 32)) (zeroValue!5207 List!53595) (minValue!5207 List!53595) (_size!9863 (_ BitVec 32)) (_keys!5261 array!17986) (_values!5232 array!17988) (_vacant!4984 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19441 0))(
  ( (Cell!19442 (v!47605 LongMapFixedSize!9838)) )
))
(declare-datatypes ((MutLongMap!4919 0))(
  ( (LongMap!4919 (underlying!10045 Cell!19441)) (MutLongMapExt!4918 (__x!32506 Int)) )
))
(declare-datatypes ((Cell!19443 0))(
  ( (Cell!19444 (v!47606 MutLongMap!4919)) )
))
(declare-datatypes ((MutableMap!4803 0))(
  ( (MutableMapExt!4802 (__x!32507 Int)) (HashMap!4803 (underlying!10046 Cell!19443) (hashF!12405 Hashable!6580) (_size!9864 (_ BitVec 32)) (defaultValue!4974 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4803)

(declare-fun key!1776 () K!14939)

(declare-fun contains!16805 (MutableMap!4803 K!14939) Bool)

(assert (=> b!4765825 (= res!2021253 (contains!16805 thiss!42052 key!1776))))

(declare-fun tp!1355301 () Bool)

(declare-fun tp!1355297 () Bool)

(declare-fun e!2974634 () Bool)

(declare-fun e!2974632 () Bool)

(declare-fun array_inv!5773 (array!17986) Bool)

(declare-fun array_inv!5774 (array!17988) Bool)

(assert (=> b!4765826 (= e!2974634 (and tp!1355298 tp!1355301 tp!1355297 (array_inv!5773 (_keys!5261 (v!47605 (underlying!10045 (v!47606 (underlying!10046 thiss!42052)))))) (array_inv!5774 (_values!5232 (v!47605 (underlying!10045 (v!47606 (underlying!10046 thiss!42052)))))) e!2974632))))

(declare-fun b!4765827 () Bool)

(declare-fun e!2974628 () Bool)

(assert (=> b!4765827 (= e!2974628 e!2974634)))

(declare-fun res!2021254 () Bool)

(assert (=> start!487474 (=> (not res!2021254) (not e!2974627))))

(get-info :version)

(assert (=> start!487474 (= res!2021254 ((_ is HashMap!4803) thiss!42052))))

(assert (=> start!487474 e!2974627))

(declare-fun e!2974629 () Bool)

(assert (=> start!487474 e!2974629))

(declare-fun tp_is_empty!32425 () Bool)

(assert (=> start!487474 tp_is_empty!32425))

(declare-fun b!4765828 () Bool)

(declare-fun e!2974626 () Bool)

(declare-fun valid!3917 (MutLongMap!4919) Bool)

(assert (=> b!4765828 (= e!2974626 (valid!3917 (v!47606 (underlying!10046 thiss!42052))))))

(declare-fun mapNonEmpty!21827 () Bool)

(declare-fun mapRes!21827 () Bool)

(declare-fun tp!1355296 () Bool)

(declare-fun tp!1355295 () Bool)

(assert (=> mapNonEmpty!21827 (= mapRes!21827 (and tp!1355296 tp!1355295))))

(declare-fun mapRest!21827 () (Array (_ BitVec 32) List!53595))

(declare-fun mapValue!21827 () List!53595)

(declare-fun mapKey!21827 () (_ BitVec 32))

(assert (=> mapNonEmpty!21827 (= (arr!8024 (_values!5232 (v!47605 (underlying!10045 (v!47606 (underlying!10046 thiss!42052)))))) (store mapRest!21827 mapKey!21827 mapValue!21827))))

(declare-fun b!4765829 () Bool)

(declare-fun res!2021256 () Bool)

(assert (=> b!4765829 (=> (not res!2021256) (not e!2974627))))

(declare-fun valid!3918 (MutableMap!4803) Bool)

(assert (=> b!4765829 (= res!2021256 (valid!3918 thiss!42052))))

(declare-fun b!4765830 () Bool)

(declare-fun e!2974635 () Bool)

(declare-fun e!2974631 () Bool)

(declare-fun lt!1928575 () MutLongMap!4919)

(assert (=> b!4765830 (= e!2974635 (and e!2974631 ((_ is LongMap!4919) lt!1928575)))))

(assert (=> b!4765830 (= lt!1928575 (v!47606 (underlying!10046 thiss!42052)))))

(declare-fun b!4765831 () Bool)

(assert (=> b!4765831 (= e!2974631 e!2974628)))

(declare-fun b!4765832 () Bool)

(declare-fun tp!1355299 () Bool)

(assert (=> b!4765832 (= e!2974632 (and tp!1355299 mapRes!21827))))

(declare-fun condMapEmpty!21827 () Bool)

(declare-fun mapDefault!21827 () List!53595)

(assert (=> b!4765832 (= condMapEmpty!21827 (= (arr!8024 (_values!5232 (v!47605 (underlying!10045 (v!47606 (underlying!10046 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53595)) mapDefault!21827)))))

(declare-fun b!4765833 () Bool)

(declare-fun Unit!138189 () Unit!138186)

(assert (=> b!4765833 (= e!2974633 Unit!138189)))

(assert (=> b!4765834 (= e!2974629 (and e!2974635 tp!1355300))))

(declare-fun b!4765835 () Bool)

(assert (=> b!4765835 (= e!2974627 (not e!2974626))))

(declare-fun res!2021255 () Bool)

(assert (=> b!4765835 (=> res!2021255 e!2974626)))

(assert (=> b!4765835 (= res!2021255 (not ((_ is LongMap!4919) (v!47606 (underlying!10046 thiss!42052)))))))

(declare-fun e!2974630 () Bool)

(assert (=> b!4765835 e!2974630))

(declare-fun res!2021257 () Bool)

(assert (=> b!4765835 (=> (not res!2021257) (not e!2974630))))

(declare-datatypes ((Option!12655 0))(
  ( (None!12654) (Some!12654 (v!47607 tuple2!55502)) )
))
(declare-fun lt!1928572 () Option!12655)

(declare-fun isDefined!9827 (Option!12655) Bool)

(assert (=> b!4765835 (= res!2021257 (isDefined!9827 lt!1928572))))

(declare-fun lt!1928577 () List!53595)

(declare-fun getPair!640 (List!53595 K!14939) Option!12655)

(assert (=> b!4765835 (= lt!1928572 (getPair!640 lt!1928577 key!1776))))

(declare-fun lt!1928584 () Unit!138186)

(declare-fun lt!1928571 () tuple2!55504)

(declare-fun lambda!224221 () Int)

(declare-fun forallContained!3856 (List!53596 Int tuple2!55504) Unit!138186)

(assert (=> b!4765835 (= lt!1928584 (forallContained!3856 (toList!6277 lt!1928580) lambda!224221 lt!1928571))))

(declare-fun lt!1928578 () Unit!138186)

(declare-fun lemmaInGenMapThenGetPairDefined!423 (ListLongMap!4675 K!14939 Hashable!6580) Unit!138186)

(assert (=> b!4765835 (= lt!1928578 (lemmaInGenMapThenGetPairDefined!423 lt!1928580 key!1776 (hashF!12405 thiss!42052)))))

(declare-fun lt!1928585 () Unit!138186)

(assert (=> b!4765835 (= lt!1928585 (forallContained!3856 (toList!6277 lt!1928580) lambda!224221 lt!1928571))))

(declare-fun contains!16806 (List!53596 tuple2!55504) Bool)

(assert (=> b!4765835 (contains!16806 (toList!6277 lt!1928580) lt!1928571)))

(assert (=> b!4765835 (= lt!1928571 (tuple2!55505 lt!1928586 lt!1928577))))

(declare-fun lt!1928583 () Unit!138186)

(declare-fun lemmaGetValueImpliesTupleContained!432 (ListLongMap!4675 (_ BitVec 64) List!53595) Unit!138186)

(assert (=> b!4765835 (= lt!1928583 (lemmaGetValueImpliesTupleContained!432 lt!1928580 lt!1928586 lt!1928577))))

(declare-fun apply!12613 (ListLongMap!4675 (_ BitVec 64)) List!53595)

(assert (=> b!4765835 (= lt!1928577 (apply!12613 lt!1928580 lt!1928586))))

(declare-fun contains!16807 (ListLongMap!4675 (_ BitVec 64)) Bool)

(assert (=> b!4765835 (contains!16807 lt!1928580 lt!1928586)))

(declare-fun lt!1928579 () Unit!138186)

(declare-fun lemmaInGenMapThenLongMapContainsHash!833 (ListLongMap!4675 K!14939 Hashable!6580) Unit!138186)

(assert (=> b!4765835 (= lt!1928579 (lemmaInGenMapThenLongMapContainsHash!833 lt!1928580 key!1776 (hashF!12405 thiss!42052)))))

(declare-fun lt!1928582 () Unit!138186)

(declare-fun lemmaGetPairGetSameValueAsMap!55 (ListLongMap!4675 K!14939 V!15185 Hashable!6580) Unit!138186)

(declare-fun get!18014 (Option!12655) tuple2!55502)

(assert (=> b!4765835 (= lt!1928582 (lemmaGetPairGetSameValueAsMap!55 lt!1928580 key!1776 (_2!31045 (get!18014 (getPair!640 lt!1928587 key!1776))) (hashF!12405 thiss!42052)))))

(declare-fun lt!1928581 () Unit!138186)

(declare-fun lt!1928574 () tuple2!55504)

(assert (=> b!4765835 (= lt!1928581 (forallContained!3856 (toList!6277 lt!1928580) lambda!224221 lt!1928574))))

(declare-fun lt!1928588 () Unit!138186)

(assert (=> b!4765835 (= lt!1928588 e!2974633)))

(declare-fun c!812923 () Bool)

(assert (=> b!4765835 (= c!812923 (not (contains!16806 (toList!6277 lt!1928580) lt!1928574)))))

(assert (=> b!4765835 (= lt!1928574 (tuple2!55505 lt!1928586 lt!1928587))))

(declare-fun apply!12614 (MutLongMap!4919 (_ BitVec 64)) List!53595)

(assert (=> b!4765835 (= lt!1928587 (apply!12614 (v!47606 (underlying!10046 thiss!42052)) lt!1928586))))

(declare-fun map!11970 (MutLongMap!4919) ListLongMap!4675)

(assert (=> b!4765835 (= lt!1928580 (map!11970 (v!47606 (underlying!10046 thiss!42052))))))

(declare-fun hash!4561 (Hashable!6580 K!14939) (_ BitVec 64))

(assert (=> b!4765835 (= lt!1928586 (hash!4561 (hashF!12405 thiss!42052) key!1776))))

(declare-fun mapIsEmpty!21827 () Bool)

(assert (=> mapIsEmpty!21827 mapRes!21827))

(declare-fun b!4765836 () Bool)

(declare-datatypes ((Option!12656 0))(
  ( (None!12655) (Some!12655 (v!47608 V!15185)) )
))
(declare-fun get!18015 (Option!12656) V!15185)

(declare-fun getValueByKey!2168 (List!53595 K!14939) Option!12656)

(declare-datatypes ((ListMap!5773 0))(
  ( (ListMap!5774 (toList!6278 List!53595)) )
))
(declare-fun extractMap!2139 (List!53596) ListMap!5773)

(assert (=> b!4765836 (= e!2974630 (= (_2!31045 (get!18014 lt!1928572)) (get!18015 (getValueByKey!2168 (toList!6278 (extractMap!2139 (toList!6277 lt!1928580))) key!1776))))))

(assert (= (and start!487474 res!2021254) b!4765829))

(assert (= (and b!4765829 res!2021256) b!4765825))

(assert (= (and b!4765825 res!2021253) b!4765835))

(assert (= (and b!4765835 c!812923) b!4765824))

(assert (= (and b!4765835 (not c!812923)) b!4765833))

(assert (= (and b!4765835 res!2021257) b!4765836))

(assert (= (and b!4765835 (not res!2021255)) b!4765828))

(assert (= (and b!4765832 condMapEmpty!21827) mapIsEmpty!21827))

(assert (= (and b!4765832 (not condMapEmpty!21827)) mapNonEmpty!21827))

(assert (= b!4765826 b!4765832))

(assert (= b!4765827 b!4765826))

(assert (= b!4765831 b!4765827))

(assert (= (and b!4765830 ((_ is LongMap!4919) (v!47606 (underlying!10046 thiss!42052)))) b!4765831))

(assert (= b!4765834 b!4765830))

(assert (= (and start!487474 ((_ is HashMap!4803) thiss!42052)) b!4765834))

(declare-fun m!5736436 () Bool)

(assert (=> b!4765826 m!5736436))

(declare-fun m!5736438 () Bool)

(assert (=> b!4765826 m!5736438))

(declare-fun m!5736440 () Bool)

(assert (=> b!4765825 m!5736440))

(declare-fun m!5736442 () Bool)

(assert (=> mapNonEmpty!21827 m!5736442))

(declare-fun m!5736444 () Bool)

(assert (=> b!4765835 m!5736444))

(declare-fun m!5736446 () Bool)

(assert (=> b!4765835 m!5736446))

(declare-fun m!5736448 () Bool)

(assert (=> b!4765835 m!5736448))

(declare-fun m!5736450 () Bool)

(assert (=> b!4765835 m!5736450))

(declare-fun m!5736452 () Bool)

(assert (=> b!4765835 m!5736452))

(declare-fun m!5736454 () Bool)

(assert (=> b!4765835 m!5736454))

(declare-fun m!5736456 () Bool)

(assert (=> b!4765835 m!5736456))

(declare-fun m!5736458 () Bool)

(assert (=> b!4765835 m!5736458))

(declare-fun m!5736460 () Bool)

(assert (=> b!4765835 m!5736460))

(declare-fun m!5736462 () Bool)

(assert (=> b!4765835 m!5736462))

(declare-fun m!5736464 () Bool)

(assert (=> b!4765835 m!5736464))

(declare-fun m!5736466 () Bool)

(assert (=> b!4765835 m!5736466))

(declare-fun m!5736468 () Bool)

(assert (=> b!4765835 m!5736468))

(assert (=> b!4765835 m!5736456))

(declare-fun m!5736470 () Bool)

(assert (=> b!4765835 m!5736470))

(declare-fun m!5736472 () Bool)

(assert (=> b!4765835 m!5736472))

(declare-fun m!5736474 () Bool)

(assert (=> b!4765835 m!5736474))

(assert (=> b!4765835 m!5736454))

(declare-fun m!5736476 () Bool)

(assert (=> b!4765835 m!5736476))

(declare-fun m!5736478 () Bool)

(assert (=> b!4765828 m!5736478))

(declare-fun m!5736480 () Bool)

(assert (=> b!4765824 m!5736480))

(declare-fun m!5736482 () Bool)

(assert (=> b!4765824 m!5736482))

(assert (=> b!4765824 m!5736482))

(declare-fun m!5736484 () Bool)

(assert (=> b!4765824 m!5736484))

(declare-fun m!5736486 () Bool)

(assert (=> b!4765824 m!5736486))

(declare-fun m!5736488 () Bool)

(assert (=> b!4765836 m!5736488))

(declare-fun m!5736490 () Bool)

(assert (=> b!4765836 m!5736490))

(declare-fun m!5736492 () Bool)

(assert (=> b!4765836 m!5736492))

(assert (=> b!4765836 m!5736492))

(declare-fun m!5736494 () Bool)

(assert (=> b!4765836 m!5736494))

(declare-fun m!5736496 () Bool)

(assert (=> b!4765829 m!5736496))

(check-sat (not b!4765835) (not b!4765826) (not b!4765824) (not b!4765836) (not mapNonEmpty!21827) (not b!4765829) (not b_next!130411) tp_is_empty!32425 (not b_next!130409) b_and!341319 (not b!4765825) (not b!4765832) b_and!341321 (not b!4765828))
(check-sat b_and!341321 b_and!341319 (not b_next!130411) (not b_next!130409))
(get-model)

(declare-fun d!1523413 () Bool)

(assert (=> d!1523413 (= (array_inv!5773 (_keys!5261 (v!47605 (underlying!10045 (v!47606 (underlying!10046 thiss!42052)))))) (bvsge (size!36253 (_keys!5261 (v!47605 (underlying!10045 (v!47606 (underlying!10046 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4765826 d!1523413))

(declare-fun d!1523415 () Bool)

(assert (=> d!1523415 (= (array_inv!5774 (_values!5232 (v!47605 (underlying!10045 (v!47606 (underlying!10046 thiss!42052)))))) (bvsge (size!36254 (_values!5232 (v!47605 (underlying!10045 (v!47606 (underlying!10046 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4765826 d!1523415))

(declare-fun bs!1148781 () Bool)

(declare-fun b!4765868 () Bool)

(assert (= bs!1148781 (and b!4765868 b!4765835)))

(declare-fun lambda!224224 () Int)

(assert (=> bs!1148781 (= lambda!224224 lambda!224221)))

(declare-fun b!4765859 () Bool)

(declare-fun e!2974651 () Unit!138186)

(declare-fun lt!1928635 () Unit!138186)

(assert (=> b!4765859 (= e!2974651 lt!1928635)))

(declare-fun lt!1928634 () ListLongMap!4675)

(declare-fun call!334143 () ListLongMap!4675)

(assert (=> b!4765859 (= lt!1928634 call!334143)))

(declare-fun lemmaInGenericMapThenInLongMap!198 (ListLongMap!4675 K!14939 Hashable!6580) Unit!138186)

(assert (=> b!4765859 (= lt!1928635 (lemmaInGenericMapThenInLongMap!198 lt!1928634 key!1776 (hashF!12405 thiss!42052)))))

(declare-fun res!2021265 () Bool)

(declare-fun call!334145 () Bool)

(assert (=> b!4765859 (= res!2021265 call!334145)))

(declare-fun e!2974653 () Bool)

(assert (=> b!4765859 (=> (not res!2021265) (not e!2974653))))

(assert (=> b!4765859 e!2974653))

(declare-fun b!4765860 () Bool)

(assert (=> b!4765860 false))

(declare-fun lt!1928636 () Unit!138186)

(declare-fun lt!1928637 () Unit!138186)

(assert (=> b!4765860 (= lt!1928636 lt!1928637)))

(declare-fun lt!1928646 () ListLongMap!4675)

(declare-fun contains!16808 (ListMap!5773 K!14939) Bool)

(assert (=> b!4765860 (contains!16808 (extractMap!2139 (toList!6277 lt!1928646)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!198 (ListLongMap!4675 K!14939 Hashable!6580) Unit!138186)

(assert (=> b!4765860 (= lt!1928637 (lemmaInLongMapThenInGenericMap!198 lt!1928646 key!1776 (hashF!12405 thiss!42052)))))

(assert (=> b!4765860 (= lt!1928646 call!334143)))

(declare-fun e!2974650 () Unit!138186)

(declare-fun Unit!138190 () Unit!138186)

(assert (=> b!4765860 (= e!2974650 Unit!138190)))

(declare-fun bm!334136 () Bool)

(declare-fun call!334141 () Option!12655)

(declare-fun call!334144 () List!53595)

(assert (=> bm!334136 (= call!334141 (getPair!640 call!334144 key!1776))))

(declare-fun b!4765861 () Bool)

(declare-fun call!334142 () Bool)

(assert (=> b!4765861 (= e!2974653 call!334142)))

(declare-fun b!4765863 () Bool)

(assert (=> b!4765863 (= e!2974651 e!2974650)))

(declare-fun res!2021264 () Bool)

(assert (=> b!4765863 (= res!2021264 call!334145)))

(declare-fun e!2974654 () Bool)

(assert (=> b!4765863 (=> (not res!2021264) (not e!2974654))))

(declare-fun c!812933 () Bool)

(assert (=> b!4765863 (= c!812933 e!2974654)))

(declare-fun e!2974655 () Bool)

(declare-fun b!4765864 () Bool)

(declare-fun lt!1928631 () (_ BitVec 64))

(assert (=> b!4765864 (= e!2974655 (isDefined!9827 (getPair!640 (apply!12614 (v!47606 (underlying!10046 thiss!42052)) lt!1928631) key!1776)))))

(declare-fun c!812934 () Bool)

(declare-fun call!334146 () (_ BitVec 64))

(declare-fun bm!334137 () Bool)

(assert (=> bm!334137 (= call!334145 (contains!16807 (ite c!812934 lt!1928634 call!334143) call!334146))))

(declare-fun b!4765865 () Bool)

(declare-fun Unit!138191 () Unit!138186)

(assert (=> b!4765865 (= e!2974650 Unit!138191)))

(declare-fun b!4765866 () Bool)

(assert (=> b!4765866 false))

(declare-fun lt!1928643 () Unit!138186)

(declare-fun lt!1928629 () Unit!138186)

(assert (=> b!4765866 (= lt!1928643 lt!1928629)))

(declare-fun lt!1928648 () List!53596)

(declare-fun lt!1928644 () List!53595)

(assert (=> b!4765866 (contains!16806 lt!1928648 (tuple2!55505 lt!1928631 lt!1928644))))

(assert (=> b!4765866 (= lt!1928629 (lemmaGetValueByKeyImpliesContainsTuple!924 lt!1928648 lt!1928631 lt!1928644))))

(assert (=> b!4765866 (= lt!1928644 (apply!12614 (v!47606 (underlying!10046 thiss!42052)) lt!1928631))))

(assert (=> b!4765866 (= lt!1928648 (toList!6277 (map!11970 (v!47606 (underlying!10046 thiss!42052)))))))

(declare-fun lt!1928639 () Unit!138186)

(declare-fun lt!1928647 () Unit!138186)

(assert (=> b!4765866 (= lt!1928639 lt!1928647)))

(declare-fun lt!1928632 () List!53596)

(assert (=> b!4765866 (isDefined!9826 (getValueByKey!2167 lt!1928632 lt!1928631))))

(assert (=> b!4765866 (= lt!1928647 (lemmaContainsKeyImpliesGetValueByKeyDefined!1980 lt!1928632 lt!1928631))))

(assert (=> b!4765866 (= lt!1928632 (toList!6277 (map!11970 (v!47606 (underlying!10046 thiss!42052)))))))

(declare-fun lt!1928645 () Unit!138186)

(declare-fun lt!1928633 () Unit!138186)

(assert (=> b!4765866 (= lt!1928645 lt!1928633)))

(declare-fun lt!1928630 () List!53596)

(declare-fun containsKey!3657 (List!53596 (_ BitVec 64)) Bool)

(assert (=> b!4765866 (containsKey!3657 lt!1928630 lt!1928631)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!199 (List!53596 (_ BitVec 64)) Unit!138186)

(assert (=> b!4765866 (= lt!1928633 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!199 lt!1928630 lt!1928631))))

(assert (=> b!4765866 (= lt!1928630 (toList!6277 (map!11970 (v!47606 (underlying!10046 thiss!42052)))))))

(declare-fun e!2974652 () Unit!138186)

(declare-fun Unit!138192 () Unit!138186)

(assert (=> b!4765866 (= e!2974652 Unit!138192)))

(declare-fun b!4765867 () Bool)

(assert (=> b!4765867 (= e!2974654 call!334142)))

(declare-fun bm!334138 () Bool)

(assert (=> bm!334138 (= call!334142 (isDefined!9827 call!334141))))

(declare-fun bm!334139 () Bool)

(assert (=> bm!334139 (= call!334143 (map!11970 (v!47606 (underlying!10046 thiss!42052))))))

(declare-fun e!2974656 () Unit!138186)

(assert (=> b!4765868 (= e!2974656 (forallContained!3856 (toList!6277 (map!11970 (v!47606 (underlying!10046 thiss!42052)))) lambda!224224 (tuple2!55505 lt!1928631 (apply!12614 (v!47606 (underlying!10046 thiss!42052)) lt!1928631))))))

(declare-fun c!812935 () Bool)

(assert (=> b!4765868 (= c!812935 (not (contains!16806 (toList!6277 (map!11970 (v!47606 (underlying!10046 thiss!42052)))) (tuple2!55505 lt!1928631 (apply!12614 (v!47606 (underlying!10046 thiss!42052)) lt!1928631)))))))

(declare-fun lt!1928640 () Unit!138186)

(assert (=> b!4765868 (= lt!1928640 e!2974652)))

(declare-fun b!4765869 () Bool)

(declare-fun Unit!138193 () Unit!138186)

(assert (=> b!4765869 (= e!2974652 Unit!138193)))

(declare-fun bm!334140 () Bool)

(assert (=> bm!334140 (= call!334146 (hash!4561 (hashF!12405 thiss!42052) key!1776))))

(declare-fun bm!334141 () Bool)

(assert (=> bm!334141 (= call!334144 (apply!12613 (ite c!812934 lt!1928634 call!334143) call!334146))))

(declare-fun b!4765862 () Bool)

(declare-fun Unit!138194 () Unit!138186)

(assert (=> b!4765862 (= e!2974656 Unit!138194)))

(declare-fun d!1523417 () Bool)

(declare-fun lt!1928641 () Bool)

(declare-fun map!11971 (MutableMap!4803) ListMap!5773)

(assert (=> d!1523417 (= lt!1928641 (contains!16808 (map!11971 thiss!42052) key!1776))))

(assert (=> d!1523417 (= lt!1928641 e!2974655)))

(declare-fun res!2021266 () Bool)

(assert (=> d!1523417 (=> (not res!2021266) (not e!2974655))))

(declare-fun contains!16809 (MutLongMap!4919 (_ BitVec 64)) Bool)

(assert (=> d!1523417 (= res!2021266 (contains!16809 (v!47606 (underlying!10046 thiss!42052)) lt!1928631))))

(declare-fun lt!1928638 () Unit!138186)

(assert (=> d!1523417 (= lt!1928638 e!2974651)))

(assert (=> d!1523417 (= c!812934 (contains!16808 (extractMap!2139 (toList!6277 (map!11970 (v!47606 (underlying!10046 thiss!42052))))) key!1776))))

(declare-fun lt!1928642 () Unit!138186)

(assert (=> d!1523417 (= lt!1928642 e!2974656)))

(declare-fun c!812932 () Bool)

(assert (=> d!1523417 (= c!812932 (contains!16809 (v!47606 (underlying!10046 thiss!42052)) lt!1928631))))

(assert (=> d!1523417 (= lt!1928631 (hash!4561 (hashF!12405 thiss!42052) key!1776))))

(assert (=> d!1523417 (valid!3918 thiss!42052)))

(assert (=> d!1523417 (= (contains!16805 thiss!42052 key!1776) lt!1928641)))

(assert (= (and d!1523417 c!812932) b!4765868))

(assert (= (and d!1523417 (not c!812932)) b!4765862))

(assert (= (and b!4765868 c!812935) b!4765866))

(assert (= (and b!4765868 (not c!812935)) b!4765869))

(assert (= (and d!1523417 c!812934) b!4765859))

(assert (= (and d!1523417 (not c!812934)) b!4765863))

(assert (= (and b!4765859 res!2021265) b!4765861))

(assert (= (and b!4765863 res!2021264) b!4765867))

(assert (= (and b!4765863 c!812933) b!4765860))

(assert (= (and b!4765863 (not c!812933)) b!4765865))

(assert (= (or b!4765859 b!4765863 b!4765867 b!4765860) bm!334139))

(assert (= (or b!4765859 b!4765861 b!4765863 b!4765867) bm!334140))

(assert (= (or b!4765859 b!4765863) bm!334137))

(assert (= (or b!4765861 b!4765867) bm!334141))

(assert (= (or b!4765861 b!4765867) bm!334136))

(assert (= (or b!4765861 b!4765867) bm!334138))

(assert (= (and d!1523417 res!2021266) b!4765864))

(assert (=> bm!334140 m!5736462))

(declare-fun m!5736498 () Bool)

(assert (=> d!1523417 m!5736498))

(declare-fun m!5736500 () Bool)

(assert (=> d!1523417 m!5736500))

(declare-fun m!5736502 () Bool)

(assert (=> d!1523417 m!5736502))

(assert (=> d!1523417 m!5736462))

(assert (=> d!1523417 m!5736496))

(declare-fun m!5736504 () Bool)

(assert (=> d!1523417 m!5736504))

(declare-fun m!5736506 () Bool)

(assert (=> d!1523417 m!5736506))

(assert (=> d!1523417 m!5736500))

(assert (=> d!1523417 m!5736472))

(assert (=> d!1523417 m!5736504))

(declare-fun m!5736508 () Bool)

(assert (=> bm!334141 m!5736508))

(declare-fun m!5736510 () Bool)

(assert (=> bm!334137 m!5736510))

(assert (=> bm!334139 m!5736472))

(declare-fun m!5736512 () Bool)

(assert (=> b!4765866 m!5736512))

(declare-fun m!5736514 () Bool)

(assert (=> b!4765866 m!5736514))

(declare-fun m!5736516 () Bool)

(assert (=> b!4765866 m!5736516))

(declare-fun m!5736518 () Bool)

(assert (=> b!4765866 m!5736518))

(declare-fun m!5736520 () Bool)

(assert (=> b!4765866 m!5736520))

(declare-fun m!5736522 () Bool)

(assert (=> b!4765866 m!5736522))

(assert (=> b!4765866 m!5736472))

(declare-fun m!5736524 () Bool)

(assert (=> b!4765866 m!5736524))

(assert (=> b!4765866 m!5736512))

(declare-fun m!5736526 () Bool)

(assert (=> b!4765866 m!5736526))

(declare-fun m!5736528 () Bool)

(assert (=> b!4765859 m!5736528))

(declare-fun m!5736530 () Bool)

(assert (=> bm!334136 m!5736530))

(assert (=> b!4765864 m!5736518))

(assert (=> b!4765864 m!5736518))

(declare-fun m!5736532 () Bool)

(assert (=> b!4765864 m!5736532))

(assert (=> b!4765864 m!5736532))

(declare-fun m!5736534 () Bool)

(assert (=> b!4765864 m!5736534))

(assert (=> b!4765868 m!5736472))

(assert (=> b!4765868 m!5736518))

(declare-fun m!5736536 () Bool)

(assert (=> b!4765868 m!5736536))

(declare-fun m!5736538 () Bool)

(assert (=> b!4765868 m!5736538))

(declare-fun m!5736540 () Bool)

(assert (=> b!4765860 m!5736540))

(assert (=> b!4765860 m!5736540))

(declare-fun m!5736542 () Bool)

(assert (=> b!4765860 m!5736542))

(declare-fun m!5736544 () Bool)

(assert (=> b!4765860 m!5736544))

(declare-fun m!5736546 () Bool)

(assert (=> bm!334138 m!5736546))

(assert (=> b!4765825 d!1523417))

(declare-fun d!1523419 () Bool)

(assert (=> d!1523419 (= (get!18014 (getPair!640 lt!1928587 key!1776)) (v!47607 (getPair!640 lt!1928587 key!1776)))))

(assert (=> b!4765835 d!1523419))

(declare-fun d!1523421 () Bool)

(declare-fun lt!1928651 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9583 (List!53596) (InoxSet tuple2!55504))

(assert (=> d!1523421 (= lt!1928651 (select (content!9583 (toList!6277 lt!1928580)) lt!1928571))))

(declare-fun e!2974661 () Bool)

(assert (=> d!1523421 (= lt!1928651 e!2974661)))

(declare-fun res!2021271 () Bool)

(assert (=> d!1523421 (=> (not res!2021271) (not e!2974661))))

(assert (=> d!1523421 (= res!2021271 ((_ is Cons!53472) (toList!6277 lt!1928580)))))

(assert (=> d!1523421 (= (contains!16806 (toList!6277 lt!1928580) lt!1928571) lt!1928651)))

(declare-fun b!4765874 () Bool)

(declare-fun e!2974662 () Bool)

(assert (=> b!4765874 (= e!2974661 e!2974662)))

(declare-fun res!2021272 () Bool)

(assert (=> b!4765874 (=> res!2021272 e!2974662)))

(assert (=> b!4765874 (= res!2021272 (= (h!59884 (toList!6277 lt!1928580)) lt!1928571))))

(declare-fun b!4765875 () Bool)

(assert (=> b!4765875 (= e!2974662 (contains!16806 (t!361010 (toList!6277 lt!1928580)) lt!1928571))))

(assert (= (and d!1523421 res!2021271) b!4765874))

(assert (= (and b!4765874 (not res!2021272)) b!4765875))

(declare-fun m!5736548 () Bool)

(assert (=> d!1523421 m!5736548))

(declare-fun m!5736550 () Bool)

(assert (=> d!1523421 m!5736550))

(declare-fun m!5736552 () Bool)

(assert (=> b!4765875 m!5736552))

(assert (=> b!4765835 d!1523421))

(declare-fun d!1523423 () Bool)

(assert (=> d!1523423 (contains!16806 (toList!6277 lt!1928580) (tuple2!55505 lt!1928586 lt!1928577))))

(declare-fun lt!1928654 () Unit!138186)

(declare-fun choose!33943 (ListLongMap!4675 (_ BitVec 64) List!53595) Unit!138186)

(assert (=> d!1523423 (= lt!1928654 (choose!33943 lt!1928580 lt!1928586 lt!1928577))))

(assert (=> d!1523423 (contains!16807 lt!1928580 lt!1928586)))

(assert (=> d!1523423 (= (lemmaGetValueImpliesTupleContained!432 lt!1928580 lt!1928586 lt!1928577) lt!1928654)))

(declare-fun bs!1148782 () Bool)

(assert (= bs!1148782 d!1523423))

(declare-fun m!5736554 () Bool)

(assert (=> bs!1148782 m!5736554))

(declare-fun m!5736556 () Bool)

(assert (=> bs!1148782 m!5736556))

(assert (=> bs!1148782 m!5736464))

(assert (=> b!4765835 d!1523423))

(declare-fun d!1523425 () Bool)

(declare-fun e!2974667 () Bool)

(assert (=> d!1523425 e!2974667))

(declare-fun res!2021275 () Bool)

(assert (=> d!1523425 (=> res!2021275 e!2974667)))

(declare-fun lt!1928665 () Bool)

(assert (=> d!1523425 (= res!2021275 (not lt!1928665))))

(declare-fun lt!1928663 () Bool)

(assert (=> d!1523425 (= lt!1928665 lt!1928663)))

(declare-fun lt!1928666 () Unit!138186)

(declare-fun e!2974668 () Unit!138186)

(assert (=> d!1523425 (= lt!1928666 e!2974668)))

(declare-fun c!812938 () Bool)

(assert (=> d!1523425 (= c!812938 lt!1928663)))

(assert (=> d!1523425 (= lt!1928663 (containsKey!3657 (toList!6277 lt!1928580) lt!1928586))))

(assert (=> d!1523425 (= (contains!16807 lt!1928580 lt!1928586) lt!1928665)))

(declare-fun b!4765883 () Bool)

(declare-fun lt!1928664 () Unit!138186)

(assert (=> b!4765883 (= e!2974668 lt!1928664)))

(assert (=> b!4765883 (= lt!1928664 (lemmaContainsKeyImpliesGetValueByKeyDefined!1980 (toList!6277 lt!1928580) lt!1928586))))

(assert (=> b!4765883 (isDefined!9826 (getValueByKey!2167 (toList!6277 lt!1928580) lt!1928586))))

(declare-fun b!4765884 () Bool)

(declare-fun Unit!138195 () Unit!138186)

(assert (=> b!4765884 (= e!2974668 Unit!138195)))

(declare-fun b!4765885 () Bool)

(assert (=> b!4765885 (= e!2974667 (isDefined!9826 (getValueByKey!2167 (toList!6277 lt!1928580) lt!1928586)))))

(assert (= (and d!1523425 c!812938) b!4765883))

(assert (= (and d!1523425 (not c!812938)) b!4765884))

(assert (= (and d!1523425 (not res!2021275)) b!4765885))

(declare-fun m!5736558 () Bool)

(assert (=> d!1523425 m!5736558))

(assert (=> b!4765883 m!5736480))

(assert (=> b!4765883 m!5736482))

(assert (=> b!4765883 m!5736482))

(assert (=> b!4765883 m!5736484))

(assert (=> b!4765885 m!5736482))

(assert (=> b!4765885 m!5736482))

(assert (=> b!4765885 m!5736484))

(assert (=> b!4765835 d!1523425))

(declare-fun d!1523427 () Bool)

(declare-fun map!11972 (LongMapFixedSize!9838) ListLongMap!4675)

(assert (=> d!1523427 (= (map!11970 (v!47606 (underlying!10046 thiss!42052))) (map!11972 (v!47605 (underlying!10045 (v!47606 (underlying!10046 thiss!42052))))))))

(declare-fun bs!1148783 () Bool)

(assert (= bs!1148783 d!1523427))

(declare-fun m!5736560 () Bool)

(assert (=> bs!1148783 m!5736560))

(assert (=> b!4765835 d!1523427))

(declare-fun bs!1148784 () Bool)

(declare-fun d!1523429 () Bool)

(assert (= bs!1148784 (and d!1523429 b!4765835)))

(declare-fun lambda!224231 () Int)

(assert (=> bs!1148784 (= lambda!224231 lambda!224221)))

(declare-fun bs!1148785 () Bool)

(assert (= bs!1148785 (and d!1523429 b!4765868)))

(assert (=> bs!1148785 (= lambda!224231 lambda!224224)))

(declare-fun b!4765894 () Bool)

(declare-fun res!2021285 () Bool)

(declare-fun e!2974673 () Bool)

(assert (=> b!4765894 (=> (not res!2021285) (not e!2974673))))

(declare-fun allKeysSameHashInMap!2018 (ListLongMap!4675 Hashable!6580) Bool)

(assert (=> b!4765894 (= res!2021285 (allKeysSameHashInMap!2018 lt!1928580 (hashF!12405 thiss!42052)))))

(assert (=> d!1523429 e!2974673))

(declare-fun res!2021287 () Bool)

(assert (=> d!1523429 (=> (not res!2021287) (not e!2974673))))

(declare-fun forall!11872 (List!53596 Int) Bool)

(assert (=> d!1523429 (= res!2021287 (forall!11872 (toList!6277 lt!1928580) lambda!224231))))

(declare-fun lt!1928687 () Unit!138186)

(declare-fun choose!33944 (ListLongMap!4675 K!14939 Hashable!6580) Unit!138186)

(assert (=> d!1523429 (= lt!1928687 (choose!33944 lt!1928580 key!1776 (hashF!12405 thiss!42052)))))

(assert (=> d!1523429 (forall!11872 (toList!6277 lt!1928580) lambda!224231)))

(assert (=> d!1523429 (= (lemmaInGenMapThenGetPairDefined!423 lt!1928580 key!1776 (hashF!12405 thiss!42052)) lt!1928687)))

(declare-fun b!4765896 () Bool)

(assert (=> b!4765896 (= e!2974673 (isDefined!9827 (getPair!640 (apply!12613 lt!1928580 (hash!4561 (hashF!12405 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1928688 () Unit!138186)

(assert (=> b!4765896 (= lt!1928688 (forallContained!3856 (toList!6277 lt!1928580) lambda!224231 (tuple2!55505 (hash!4561 (hashF!12405 thiss!42052) key!1776) (apply!12613 lt!1928580 (hash!4561 (hashF!12405 thiss!42052) key!1776)))))))

(declare-fun lt!1928686 () Unit!138186)

(declare-fun lt!1928685 () Unit!138186)

(assert (=> b!4765896 (= lt!1928686 lt!1928685)))

(declare-fun lt!1928683 () (_ BitVec 64))

(declare-fun lt!1928689 () List!53595)

(assert (=> b!4765896 (contains!16806 (toList!6277 lt!1928580) (tuple2!55505 lt!1928683 lt!1928689))))

(assert (=> b!4765896 (= lt!1928685 (lemmaGetValueImpliesTupleContained!432 lt!1928580 lt!1928683 lt!1928689))))

(declare-fun e!2974674 () Bool)

(assert (=> b!4765896 e!2974674))

(declare-fun res!2021284 () Bool)

(assert (=> b!4765896 (=> (not res!2021284) (not e!2974674))))

(assert (=> b!4765896 (= res!2021284 (contains!16807 lt!1928580 lt!1928683))))

(assert (=> b!4765896 (= lt!1928689 (apply!12613 lt!1928580 (hash!4561 (hashF!12405 thiss!42052) key!1776)))))

(assert (=> b!4765896 (= lt!1928683 (hash!4561 (hashF!12405 thiss!42052) key!1776))))

(declare-fun lt!1928684 () Unit!138186)

(declare-fun lt!1928690 () Unit!138186)

(assert (=> b!4765896 (= lt!1928684 lt!1928690)))

(assert (=> b!4765896 (contains!16807 lt!1928580 (hash!4561 (hashF!12405 thiss!42052) key!1776))))

(assert (=> b!4765896 (= lt!1928690 (lemmaInGenMapThenLongMapContainsHash!833 lt!1928580 key!1776 (hashF!12405 thiss!42052)))))

(declare-fun b!4765897 () Bool)

(assert (=> b!4765897 (= e!2974674 (= (getValueByKey!2167 (toList!6277 lt!1928580) lt!1928683) (Some!12653 lt!1928689)))))

(declare-fun b!4765895 () Bool)

(declare-fun res!2021286 () Bool)

(assert (=> b!4765895 (=> (not res!2021286) (not e!2974673))))

(assert (=> b!4765895 (= res!2021286 (contains!16808 (extractMap!2139 (toList!6277 lt!1928580)) key!1776))))

(assert (= (and d!1523429 res!2021287) b!4765894))

(assert (= (and b!4765894 res!2021285) b!4765895))

(assert (= (and b!4765895 res!2021286) b!4765896))

(assert (= (and b!4765896 res!2021284) b!4765897))

(assert (=> b!4765895 m!5736490))

(assert (=> b!4765895 m!5736490))

(declare-fun m!5736562 () Bool)

(assert (=> b!4765895 m!5736562))

(declare-fun m!5736564 () Bool)

(assert (=> b!4765894 m!5736564))

(declare-fun m!5736566 () Bool)

(assert (=> d!1523429 m!5736566))

(declare-fun m!5736568 () Bool)

(assert (=> d!1523429 m!5736568))

(assert (=> d!1523429 m!5736566))

(declare-fun m!5736570 () Bool)

(assert (=> b!4765897 m!5736570))

(assert (=> b!4765896 m!5736446))

(assert (=> b!4765896 m!5736462))

(declare-fun m!5736572 () Bool)

(assert (=> b!4765896 m!5736572))

(declare-fun m!5736574 () Bool)

(assert (=> b!4765896 m!5736574))

(declare-fun m!5736576 () Bool)

(assert (=> b!4765896 m!5736576))

(declare-fun m!5736578 () Bool)

(assert (=> b!4765896 m!5736578))

(declare-fun m!5736580 () Bool)

(assert (=> b!4765896 m!5736580))

(declare-fun m!5736582 () Bool)

(assert (=> b!4765896 m!5736582))

(declare-fun m!5736584 () Bool)

(assert (=> b!4765896 m!5736584))

(assert (=> b!4765896 m!5736462))

(assert (=> b!4765896 m!5736582))

(assert (=> b!4765896 m!5736462))

(assert (=> b!4765896 m!5736584))

(declare-fun m!5736586 () Bool)

(assert (=> b!4765896 m!5736586))

(assert (=> b!4765835 d!1523429))

(declare-fun d!1523431 () Bool)

(declare-fun isEmpty!29272 (Option!12655) Bool)

(assert (=> d!1523431 (= (isDefined!9827 lt!1928572) (not (isEmpty!29272 lt!1928572)))))

(declare-fun bs!1148786 () Bool)

(assert (= bs!1148786 d!1523431))

(declare-fun m!5736588 () Bool)

(assert (=> bs!1148786 m!5736588))

(assert (=> b!4765835 d!1523431))

(declare-fun d!1523433 () Bool)

(declare-fun get!18016 (Option!12654) List!53595)

(assert (=> d!1523433 (= (apply!12613 lt!1928580 lt!1928586) (get!18016 (getValueByKey!2167 (toList!6277 lt!1928580) lt!1928586)))))

(declare-fun bs!1148787 () Bool)

(assert (= bs!1148787 d!1523433))

(assert (=> bs!1148787 m!5736482))

(assert (=> bs!1148787 m!5736482))

(declare-fun m!5736590 () Bool)

(assert (=> bs!1148787 m!5736590))

(assert (=> b!4765835 d!1523433))

(declare-fun b!4765914 () Bool)

(declare-fun e!2974687 () Option!12655)

(assert (=> b!4765914 (= e!2974687 (Some!12654 (h!59883 lt!1928577)))))

(declare-fun b!4765915 () Bool)

(declare-fun e!2974689 () Option!12655)

(assert (=> b!4765915 (= e!2974689 None!12654)))

(declare-fun b!4765916 () Bool)

(assert (=> b!4765916 (= e!2974689 (getPair!640 (t!361009 lt!1928577) key!1776))))

(declare-fun b!4765917 () Bool)

(declare-fun e!2974685 () Bool)

(declare-fun e!2974688 () Bool)

(assert (=> b!4765917 (= e!2974685 e!2974688)))

(declare-fun res!2021297 () Bool)

(assert (=> b!4765917 (=> (not res!2021297) (not e!2974688))))

(declare-fun lt!1928693 () Option!12655)

(assert (=> b!4765917 (= res!2021297 (isDefined!9827 lt!1928693))))

(declare-fun b!4765918 () Bool)

(declare-fun contains!16810 (List!53595 tuple2!55502) Bool)

(assert (=> b!4765918 (= e!2974688 (contains!16810 lt!1928577 (get!18014 lt!1928693)))))

(declare-fun d!1523435 () Bool)

(assert (=> d!1523435 e!2974685))

(declare-fun res!2021296 () Bool)

(assert (=> d!1523435 (=> res!2021296 e!2974685)))

(declare-fun e!2974686 () Bool)

(assert (=> d!1523435 (= res!2021296 e!2974686)))

(declare-fun res!2021298 () Bool)

(assert (=> d!1523435 (=> (not res!2021298) (not e!2974686))))

(assert (=> d!1523435 (= res!2021298 (isEmpty!29272 lt!1928693))))

(assert (=> d!1523435 (= lt!1928693 e!2974687)))

(declare-fun c!812943 () Bool)

(assert (=> d!1523435 (= c!812943 (and ((_ is Cons!53471) lt!1928577) (= (_1!31045 (h!59883 lt!1928577)) key!1776)))))

(declare-fun noDuplicateKeys!2250 (List!53595) Bool)

(assert (=> d!1523435 (noDuplicateKeys!2250 lt!1928577)))

(assert (=> d!1523435 (= (getPair!640 lt!1928577 key!1776) lt!1928693)))

(declare-fun b!4765919 () Bool)

(declare-fun containsKey!3658 (List!53595 K!14939) Bool)

(assert (=> b!4765919 (= e!2974686 (not (containsKey!3658 lt!1928577 key!1776)))))

(declare-fun b!4765920 () Bool)

(declare-fun res!2021299 () Bool)

(assert (=> b!4765920 (=> (not res!2021299) (not e!2974688))))

(assert (=> b!4765920 (= res!2021299 (= (_1!31045 (get!18014 lt!1928693)) key!1776))))

(declare-fun b!4765921 () Bool)

(assert (=> b!4765921 (= e!2974687 e!2974689)))

(declare-fun c!812944 () Bool)

(assert (=> b!4765921 (= c!812944 ((_ is Cons!53471) lt!1928577))))

(assert (= (and d!1523435 c!812943) b!4765914))

(assert (= (and d!1523435 (not c!812943)) b!4765921))

(assert (= (and b!4765921 c!812944) b!4765916))

(assert (= (and b!4765921 (not c!812944)) b!4765915))

(assert (= (and d!1523435 res!2021298) b!4765919))

(assert (= (and d!1523435 (not res!2021296)) b!4765917))

(assert (= (and b!4765917 res!2021297) b!4765920))

(assert (= (and b!4765920 res!2021299) b!4765918))

(declare-fun m!5736592 () Bool)

(assert (=> b!4765919 m!5736592))

(declare-fun m!5736594 () Bool)

(assert (=> b!4765917 m!5736594))

(declare-fun m!5736596 () Bool)

(assert (=> b!4765916 m!5736596))

(declare-fun m!5736598 () Bool)

(assert (=> d!1523435 m!5736598))

(declare-fun m!5736600 () Bool)

(assert (=> d!1523435 m!5736600))

(declare-fun m!5736602 () Bool)

(assert (=> b!4765918 m!5736602))

(assert (=> b!4765918 m!5736602))

(declare-fun m!5736604 () Bool)

(assert (=> b!4765918 m!5736604))

(assert (=> b!4765920 m!5736602))

(assert (=> b!4765835 d!1523435))

(declare-fun d!1523437 () Bool)

(declare-fun dynLambda!21944 (Int tuple2!55504) Bool)

(assert (=> d!1523437 (dynLambda!21944 lambda!224221 lt!1928574)))

(declare-fun lt!1928696 () Unit!138186)

(declare-fun choose!33945 (List!53596 Int tuple2!55504) Unit!138186)

(assert (=> d!1523437 (= lt!1928696 (choose!33945 (toList!6277 lt!1928580) lambda!224221 lt!1928574))))

(declare-fun e!2974692 () Bool)

(assert (=> d!1523437 e!2974692))

(declare-fun res!2021302 () Bool)

(assert (=> d!1523437 (=> (not res!2021302) (not e!2974692))))

(assert (=> d!1523437 (= res!2021302 (forall!11872 (toList!6277 lt!1928580) lambda!224221))))

(assert (=> d!1523437 (= (forallContained!3856 (toList!6277 lt!1928580) lambda!224221 lt!1928574) lt!1928696)))

(declare-fun b!4765924 () Bool)

(assert (=> b!4765924 (= e!2974692 (contains!16806 (toList!6277 lt!1928580) lt!1928574))))

(assert (= (and d!1523437 res!2021302) b!4765924))

(declare-fun b_lambda!184307 () Bool)

(assert (=> (not b_lambda!184307) (not d!1523437)))

(declare-fun m!5736606 () Bool)

(assert (=> d!1523437 m!5736606))

(declare-fun m!5736608 () Bool)

(assert (=> d!1523437 m!5736608))

(declare-fun m!5736610 () Bool)

(assert (=> d!1523437 m!5736610))

(assert (=> b!4765924 m!5736452))

(assert (=> b!4765835 d!1523437))

(declare-fun d!1523439 () Bool)

(declare-fun e!2974695 () Bool)

(assert (=> d!1523439 e!2974695))

(declare-fun c!812947 () Bool)

(assert (=> d!1523439 (= c!812947 (contains!16809 (v!47606 (underlying!10046 thiss!42052)) lt!1928586))))

(declare-fun lt!1928699 () List!53595)

(declare-fun apply!12615 (LongMapFixedSize!9838 (_ BitVec 64)) List!53595)

(assert (=> d!1523439 (= lt!1928699 (apply!12615 (v!47605 (underlying!10045 (v!47606 (underlying!10046 thiss!42052)))) lt!1928586))))

(assert (=> d!1523439 (valid!3917 (v!47606 (underlying!10046 thiss!42052)))))

(assert (=> d!1523439 (= (apply!12614 (v!47606 (underlying!10046 thiss!42052)) lt!1928586) lt!1928699)))

(declare-fun b!4765929 () Bool)

(assert (=> b!4765929 (= e!2974695 (= lt!1928699 (get!18016 (getValueByKey!2167 (toList!6277 (map!11970 (v!47606 (underlying!10046 thiss!42052)))) lt!1928586))))))

(declare-fun b!4765930 () Bool)

(declare-fun dynLambda!21945 (Int (_ BitVec 64)) List!53595)

(assert (=> b!4765930 (= e!2974695 (= lt!1928699 (dynLambda!21945 (defaultEntry!5337 (v!47605 (underlying!10045 (v!47606 (underlying!10046 thiss!42052))))) lt!1928586)))))

(assert (=> b!4765930 ((_ is LongMap!4919) (v!47606 (underlying!10046 thiss!42052)))))

(assert (= (and d!1523439 c!812947) b!4765929))

(assert (= (and d!1523439 (not c!812947)) b!4765930))

(declare-fun b_lambda!184309 () Bool)

(assert (=> (not b_lambda!184309) (not b!4765930)))

(declare-fun t!361012 () Bool)

(declare-fun tb!257467 () Bool)

(assert (=> (and b!4765826 (= (defaultEntry!5337 (v!47605 (underlying!10045 (v!47606 (underlying!10046 thiss!42052))))) (defaultEntry!5337 (v!47605 (underlying!10045 (v!47606 (underlying!10046 thiss!42052)))))) t!361012) tb!257467))

(assert (=> b!4765930 t!361012))

(declare-fun result!319090 () Bool)

(declare-fun b_and!341323 () Bool)

(assert (= b_and!341319 (and (=> t!361012 result!319090) b_and!341323)))

(declare-fun m!5736612 () Bool)

(assert (=> d!1523439 m!5736612))

(declare-fun m!5736614 () Bool)

(assert (=> d!1523439 m!5736614))

(assert (=> d!1523439 m!5736478))

(assert (=> b!4765929 m!5736472))

(declare-fun m!5736616 () Bool)

(assert (=> b!4765929 m!5736616))

(assert (=> b!4765929 m!5736616))

(declare-fun m!5736618 () Bool)

(assert (=> b!4765929 m!5736618))

(declare-fun m!5736620 () Bool)

(assert (=> b!4765930 m!5736620))

(assert (=> b!4765835 d!1523439))

(declare-fun bs!1148788 () Bool)

(declare-fun d!1523441 () Bool)

(assert (= bs!1148788 (and d!1523441 b!4765835)))

(declare-fun lambda!224244 () Int)

(assert (=> bs!1148788 (= lambda!224244 lambda!224221)))

(declare-fun bs!1148789 () Bool)

(assert (= bs!1148789 (and d!1523441 b!4765868)))

(assert (=> bs!1148789 (= lambda!224244 lambda!224224)))

(declare-fun bs!1148790 () Bool)

(assert (= bs!1148790 (and d!1523441 d!1523429)))

(assert (=> bs!1148790 (= lambda!224244 lambda!224231)))

(declare-fun lt!1928746 () List!53595)

(declare-fun b!4765951 () Bool)

(declare-fun e!2974706 () Bool)

(declare-fun lt!1928744 () (_ BitVec 64))

(assert (=> b!4765951 (= e!2974706 (= (getValueByKey!2167 (toList!6277 lt!1928580) lt!1928744) (Some!12653 lt!1928746)))))

(declare-fun b!4765952 () Bool)

(declare-fun e!2974707 () Bool)

(assert (=> b!4765952 (= e!2974707 (contains!16808 (extractMap!2139 (toList!6277 lt!1928580)) key!1776))))

(declare-fun lt!1928734 () List!53595)

(declare-fun e!2974708 () Bool)

(declare-fun lt!1928750 () (_ BitVec 64))

(declare-fun b!4765953 () Bool)

(assert (=> b!4765953 (= e!2974708 (= (getValueByKey!2167 (toList!6277 lt!1928580) lt!1928750) (Some!12653 lt!1928734)))))

(declare-fun e!2974710 () Bool)

(assert (=> d!1523441 e!2974710))

(declare-fun res!2021326 () Bool)

(assert (=> d!1523441 (=> (not res!2021326) (not e!2974710))))

(assert (=> d!1523441 (= res!2021326 (forall!11872 (toList!6277 lt!1928580) lambda!224244))))

(declare-fun lt!1928737 () Unit!138186)

(declare-fun choose!33946 (ListLongMap!4675 K!14939 V!15185 Hashable!6580) Unit!138186)

(assert (=> d!1523441 (= lt!1928737 (choose!33946 lt!1928580 key!1776 (_2!31045 (get!18014 (getPair!640 lt!1928587 key!1776))) (hashF!12405 thiss!42052)))))

(assert (=> d!1523441 (forall!11872 (toList!6277 lt!1928580) lambda!224244)))

(assert (=> d!1523441 (= (lemmaGetPairGetSameValueAsMap!55 lt!1928580 key!1776 (_2!31045 (get!18014 (getPair!640 lt!1928587 key!1776))) (hashF!12405 thiss!42052)) lt!1928737)))

(declare-fun b!4765954 () Bool)

(declare-fun res!2021329 () Bool)

(declare-fun e!2974709 () Bool)

(assert (=> b!4765954 (=> (not res!2021329) (not e!2974709))))

(assert (=> b!4765954 (= res!2021329 (allKeysSameHashInMap!2018 lt!1928580 (hashF!12405 thiss!42052)))))

(declare-fun b!4765955 () Bool)

(assert (=> b!4765955 (= e!2974709 (isDefined!9827 (getPair!640 (apply!12613 lt!1928580 (hash!4561 (hashF!12405 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1928736 () Unit!138186)

(assert (=> b!4765955 (= lt!1928736 (forallContained!3856 (toList!6277 lt!1928580) lambda!224244 (tuple2!55505 (hash!4561 (hashF!12405 thiss!42052) key!1776) (apply!12613 lt!1928580 (hash!4561 (hashF!12405 thiss!42052) key!1776)))))))

(declare-fun lt!1928747 () Unit!138186)

(declare-fun lt!1928749 () Unit!138186)

(assert (=> b!4765955 (= lt!1928747 lt!1928749)))

(assert (=> b!4765955 (contains!16806 (toList!6277 lt!1928580) (tuple2!55505 lt!1928750 lt!1928734))))

(assert (=> b!4765955 (= lt!1928749 (lemmaGetValueImpliesTupleContained!432 lt!1928580 lt!1928750 lt!1928734))))

(assert (=> b!4765955 e!2974708))

(declare-fun res!2021325 () Bool)

(assert (=> b!4765955 (=> (not res!2021325) (not e!2974708))))

(assert (=> b!4765955 (= res!2021325 (contains!16807 lt!1928580 lt!1928750))))

(assert (=> b!4765955 (= lt!1928734 (apply!12613 lt!1928580 (hash!4561 (hashF!12405 thiss!42052) key!1776)))))

(assert (=> b!4765955 (= lt!1928750 (hash!4561 (hashF!12405 thiss!42052) key!1776))))

(declare-fun lt!1928745 () Unit!138186)

(declare-fun lt!1928739 () Unit!138186)

(assert (=> b!4765955 (= lt!1928745 lt!1928739)))

(assert (=> b!4765955 (contains!16807 lt!1928580 (hash!4561 (hashF!12405 thiss!42052) key!1776))))

(assert (=> b!4765955 (= lt!1928739 (lemmaInGenMapThenLongMapContainsHash!833 lt!1928580 key!1776 (hashF!12405 thiss!42052)))))

(declare-fun b!4765956 () Bool)

(declare-fun res!2021332 () Bool)

(assert (=> b!4765956 (=> (not res!2021332) (not e!2974710))))

(assert (=> b!4765956 (= res!2021332 (allKeysSameHashInMap!2018 lt!1928580 (hashF!12405 thiss!42052)))))

(declare-fun b!4765957 () Bool)

(declare-fun res!2021324 () Bool)

(assert (=> b!4765957 (=> (not res!2021324) (not e!2974707))))

(assert (=> b!4765957 (= res!2021324 (allKeysSameHashInMap!2018 lt!1928580 (hashF!12405 thiss!42052)))))

(declare-fun b!4765958 () Bool)

(assert (=> b!4765958 (= e!2974710 (= (_2!31045 (get!18014 (getPair!640 (apply!12613 lt!1928580 (hash!4561 (hashF!12405 thiss!42052) key!1776)) key!1776))) (get!18015 (getValueByKey!2168 (toList!6278 (extractMap!2139 (toList!6277 lt!1928580))) key!1776))))))

(declare-fun lt!1928738 () Unit!138186)

(declare-fun lt!1928741 () Unit!138186)

(assert (=> b!4765958 (= lt!1928738 lt!1928741)))

(assert (=> b!4765958 e!2974709))

(declare-fun res!2021330 () Bool)

(assert (=> b!4765958 (=> (not res!2021330) (not e!2974709))))

(assert (=> b!4765958 (= res!2021330 (forall!11872 (toList!6277 lt!1928580) lambda!224244))))

(assert (=> b!4765958 (= lt!1928741 (lemmaInGenMapThenGetPairDefined!423 lt!1928580 key!1776 (hashF!12405 thiss!42052)))))

(assert (=> b!4765958 e!2974707))

(declare-fun res!2021327 () Bool)

(assert (=> b!4765958 (=> (not res!2021327) (not e!2974707))))

(assert (=> b!4765958 (= res!2021327 (forall!11872 (toList!6277 lt!1928580) lambda!224244))))

(declare-fun lt!1928748 () Unit!138186)

(assert (=> b!4765958 (= lt!1928748 (forallContained!3856 (toList!6277 lt!1928580) lambda!224244 (tuple2!55505 (hash!4561 (hashF!12405 thiss!42052) key!1776) (apply!12613 lt!1928580 (hash!4561 (hashF!12405 thiss!42052) key!1776)))))))

(declare-fun lt!1928735 () Unit!138186)

(declare-fun lt!1928743 () Unit!138186)

(assert (=> b!4765958 (= lt!1928735 lt!1928743)))

(assert (=> b!4765958 (contains!16806 (toList!6277 lt!1928580) (tuple2!55505 lt!1928744 lt!1928746))))

(assert (=> b!4765958 (= lt!1928743 (lemmaGetValueImpliesTupleContained!432 lt!1928580 lt!1928744 lt!1928746))))

(assert (=> b!4765958 e!2974706))

(declare-fun res!2021328 () Bool)

(assert (=> b!4765958 (=> (not res!2021328) (not e!2974706))))

(assert (=> b!4765958 (= res!2021328 (contains!16807 lt!1928580 lt!1928744))))

(assert (=> b!4765958 (= lt!1928746 (apply!12613 lt!1928580 (hash!4561 (hashF!12405 thiss!42052) key!1776)))))

(assert (=> b!4765958 (= lt!1928744 (hash!4561 (hashF!12405 thiss!42052) key!1776))))

(declare-fun lt!1928742 () Unit!138186)

(declare-fun lt!1928740 () Unit!138186)

(assert (=> b!4765958 (= lt!1928742 lt!1928740)))

(assert (=> b!4765958 (contains!16807 lt!1928580 (hash!4561 (hashF!12405 thiss!42052) key!1776))))

(assert (=> b!4765958 (= lt!1928740 (lemmaInGenMapThenLongMapContainsHash!833 lt!1928580 key!1776 (hashF!12405 thiss!42052)))))

(declare-fun b!4765959 () Bool)

(declare-fun res!2021331 () Bool)

(assert (=> b!4765959 (=> (not res!2021331) (not e!2974710))))

(assert (=> b!4765959 (= res!2021331 (contains!16808 (extractMap!2139 (toList!6277 lt!1928580)) key!1776))))

(declare-fun b!4765960 () Bool)

(declare-fun res!2021323 () Bool)

(assert (=> b!4765960 (=> (not res!2021323) (not e!2974709))))

(assert (=> b!4765960 (= res!2021323 (contains!16808 (extractMap!2139 (toList!6277 lt!1928580)) key!1776))))

(assert (= (and d!1523441 res!2021326) b!4765956))

(assert (= (and b!4765956 res!2021332) b!4765959))

(assert (= (and b!4765959 res!2021331) b!4765958))

(assert (= (and b!4765958 res!2021328) b!4765951))

(assert (= (and b!4765958 res!2021327) b!4765957))

(assert (= (and b!4765957 res!2021324) b!4765952))

(assert (= (and b!4765958 res!2021330) b!4765954))

(assert (= (and b!4765954 res!2021329) b!4765960))

(assert (= (and b!4765960 res!2021323) b!4765955))

(assert (= (and b!4765955 res!2021325) b!4765953))

(assert (=> b!4765954 m!5736564))

(declare-fun m!5736622 () Bool)

(assert (=> b!4765953 m!5736622))

(assert (=> b!4765952 m!5736490))

(assert (=> b!4765952 m!5736490))

(assert (=> b!4765952 m!5736562))

(assert (=> b!4765959 m!5736490))

(assert (=> b!4765959 m!5736490))

(assert (=> b!4765959 m!5736562))

(assert (=> b!4765955 m!5736462))

(assert (=> b!4765955 m!5736582))

(assert (=> b!4765955 m!5736582))

(assert (=> b!4765955 m!5736584))

(declare-fun m!5736624 () Bool)

(assert (=> b!4765955 m!5736624))

(assert (=> b!4765955 m!5736462))

(assert (=> b!4765955 m!5736572))

(declare-fun m!5736626 () Bool)

(assert (=> b!4765955 m!5736626))

(declare-fun m!5736628 () Bool)

(assert (=> b!4765955 m!5736628))

(assert (=> b!4765955 m!5736462))

(assert (=> b!4765955 m!5736584))

(assert (=> b!4765955 m!5736586))

(assert (=> b!4765955 m!5736446))

(declare-fun m!5736630 () Bool)

(assert (=> b!4765955 m!5736630))

(assert (=> b!4765956 m!5736564))

(assert (=> b!4765960 m!5736490))

(assert (=> b!4765960 m!5736490))

(assert (=> b!4765960 m!5736562))

(assert (=> b!4765958 m!5736462))

(assert (=> b!4765958 m!5736582))

(assert (=> b!4765958 m!5736582))

(assert (=> b!4765958 m!5736584))

(declare-fun m!5736632 () Bool)

(assert (=> b!4765958 m!5736632))

(assert (=> b!4765958 m!5736462))

(assert (=> b!4765958 m!5736630))

(assert (=> b!4765958 m!5736462))

(assert (=> b!4765958 m!5736572))

(assert (=> b!4765958 m!5736492))

(declare-fun m!5736634 () Bool)

(assert (=> b!4765958 m!5736634))

(assert (=> b!4765958 m!5736490))

(assert (=> b!4765958 m!5736446))

(assert (=> b!4765958 m!5736584))

(declare-fun m!5736636 () Bool)

(assert (=> b!4765958 m!5736636))

(assert (=> b!4765958 m!5736460))

(assert (=> b!4765958 m!5736492))

(assert (=> b!4765958 m!5736494))

(assert (=> b!4765958 m!5736632))

(declare-fun m!5736638 () Bool)

(assert (=> b!4765958 m!5736638))

(declare-fun m!5736640 () Bool)

(assert (=> b!4765958 m!5736640))

(assert (=> b!4765957 m!5736564))

(declare-fun m!5736642 () Bool)

(assert (=> b!4765951 m!5736642))

(assert (=> d!1523441 m!5736632))

(declare-fun m!5736644 () Bool)

(assert (=> d!1523441 m!5736644))

(assert (=> d!1523441 m!5736632))

(assert (=> b!4765835 d!1523441))

(declare-fun d!1523443 () Bool)

(declare-fun lt!1928751 () Bool)

(assert (=> d!1523443 (= lt!1928751 (select (content!9583 (toList!6277 lt!1928580)) lt!1928574))))

(declare-fun e!2974711 () Bool)

(assert (=> d!1523443 (= lt!1928751 e!2974711)))

(declare-fun res!2021333 () Bool)

(assert (=> d!1523443 (=> (not res!2021333) (not e!2974711))))

(assert (=> d!1523443 (= res!2021333 ((_ is Cons!53472) (toList!6277 lt!1928580)))))

(assert (=> d!1523443 (= (contains!16806 (toList!6277 lt!1928580) lt!1928574) lt!1928751)))

(declare-fun b!4765961 () Bool)

(declare-fun e!2974712 () Bool)

(assert (=> b!4765961 (= e!2974711 e!2974712)))

(declare-fun res!2021334 () Bool)

(assert (=> b!4765961 (=> res!2021334 e!2974712)))

(assert (=> b!4765961 (= res!2021334 (= (h!59884 (toList!6277 lt!1928580)) lt!1928574))))

(declare-fun b!4765962 () Bool)

(assert (=> b!4765962 (= e!2974712 (contains!16806 (t!361010 (toList!6277 lt!1928580)) lt!1928574))))

(assert (= (and d!1523443 res!2021333) b!4765961))

(assert (= (and b!4765961 (not res!2021334)) b!4765962))

(assert (=> d!1523443 m!5736548))

(declare-fun m!5736646 () Bool)

(assert (=> d!1523443 m!5736646))

(declare-fun m!5736648 () Bool)

(assert (=> b!4765962 m!5736648))

(assert (=> b!4765835 d!1523443))

(declare-fun d!1523445 () Bool)

(assert (=> d!1523445 (dynLambda!21944 lambda!224221 lt!1928571)))

(declare-fun lt!1928752 () Unit!138186)

(assert (=> d!1523445 (= lt!1928752 (choose!33945 (toList!6277 lt!1928580) lambda!224221 lt!1928571))))

(declare-fun e!2974713 () Bool)

(assert (=> d!1523445 e!2974713))

(declare-fun res!2021335 () Bool)

(assert (=> d!1523445 (=> (not res!2021335) (not e!2974713))))

(assert (=> d!1523445 (= res!2021335 (forall!11872 (toList!6277 lt!1928580) lambda!224221))))

(assert (=> d!1523445 (= (forallContained!3856 (toList!6277 lt!1928580) lambda!224221 lt!1928571) lt!1928752)))

(declare-fun b!4765963 () Bool)

(assert (=> b!4765963 (= e!2974713 (contains!16806 (toList!6277 lt!1928580) lt!1928571))))

(assert (= (and d!1523445 res!2021335) b!4765963))

(declare-fun b_lambda!184311 () Bool)

(assert (=> (not b_lambda!184311) (not d!1523445)))

(declare-fun m!5736650 () Bool)

(assert (=> d!1523445 m!5736650))

(declare-fun m!5736652 () Bool)

(assert (=> d!1523445 m!5736652))

(assert (=> d!1523445 m!5736610))

(assert (=> b!4765963 m!5736444))

(assert (=> b!4765835 d!1523445))

(declare-fun b!4765964 () Bool)

(declare-fun e!2974716 () Option!12655)

(assert (=> b!4765964 (= e!2974716 (Some!12654 (h!59883 lt!1928587)))))

(declare-fun b!4765965 () Bool)

(declare-fun e!2974718 () Option!12655)

(assert (=> b!4765965 (= e!2974718 None!12654)))

(declare-fun b!4765966 () Bool)

(assert (=> b!4765966 (= e!2974718 (getPair!640 (t!361009 lt!1928587) key!1776))))

(declare-fun b!4765967 () Bool)

(declare-fun e!2974714 () Bool)

(declare-fun e!2974717 () Bool)

(assert (=> b!4765967 (= e!2974714 e!2974717)))

(declare-fun res!2021337 () Bool)

(assert (=> b!4765967 (=> (not res!2021337) (not e!2974717))))

(declare-fun lt!1928753 () Option!12655)

(assert (=> b!4765967 (= res!2021337 (isDefined!9827 lt!1928753))))

(declare-fun b!4765968 () Bool)

(assert (=> b!4765968 (= e!2974717 (contains!16810 lt!1928587 (get!18014 lt!1928753)))))

(declare-fun d!1523447 () Bool)

(assert (=> d!1523447 e!2974714))

(declare-fun res!2021336 () Bool)

(assert (=> d!1523447 (=> res!2021336 e!2974714)))

(declare-fun e!2974715 () Bool)

(assert (=> d!1523447 (= res!2021336 e!2974715)))

(declare-fun res!2021338 () Bool)

(assert (=> d!1523447 (=> (not res!2021338) (not e!2974715))))

(assert (=> d!1523447 (= res!2021338 (isEmpty!29272 lt!1928753))))

(assert (=> d!1523447 (= lt!1928753 e!2974716)))

(declare-fun c!812948 () Bool)

(assert (=> d!1523447 (= c!812948 (and ((_ is Cons!53471) lt!1928587) (= (_1!31045 (h!59883 lt!1928587)) key!1776)))))

(assert (=> d!1523447 (noDuplicateKeys!2250 lt!1928587)))

(assert (=> d!1523447 (= (getPair!640 lt!1928587 key!1776) lt!1928753)))

(declare-fun b!4765969 () Bool)

(assert (=> b!4765969 (= e!2974715 (not (containsKey!3658 lt!1928587 key!1776)))))

(declare-fun b!4765970 () Bool)

(declare-fun res!2021339 () Bool)

(assert (=> b!4765970 (=> (not res!2021339) (not e!2974717))))

(assert (=> b!4765970 (= res!2021339 (= (_1!31045 (get!18014 lt!1928753)) key!1776))))

(declare-fun b!4765971 () Bool)

(assert (=> b!4765971 (= e!2974716 e!2974718)))

(declare-fun c!812949 () Bool)

(assert (=> b!4765971 (= c!812949 ((_ is Cons!53471) lt!1928587))))

(assert (= (and d!1523447 c!812948) b!4765964))

(assert (= (and d!1523447 (not c!812948)) b!4765971))

(assert (= (and b!4765971 c!812949) b!4765966))

(assert (= (and b!4765971 (not c!812949)) b!4765965))

(assert (= (and d!1523447 res!2021338) b!4765969))

(assert (= (and d!1523447 (not res!2021336)) b!4765967))

(assert (= (and b!4765967 res!2021337) b!4765970))

(assert (= (and b!4765970 res!2021339) b!4765968))

(declare-fun m!5736654 () Bool)

(assert (=> b!4765969 m!5736654))

(declare-fun m!5736656 () Bool)

(assert (=> b!4765967 m!5736656))

(declare-fun m!5736658 () Bool)

(assert (=> b!4765966 m!5736658))

(declare-fun m!5736660 () Bool)

(assert (=> d!1523447 m!5736660))

(declare-fun m!5736662 () Bool)

(assert (=> d!1523447 m!5736662))

(declare-fun m!5736664 () Bool)

(assert (=> b!4765968 m!5736664))

(assert (=> b!4765968 m!5736664))

(declare-fun m!5736666 () Bool)

(assert (=> b!4765968 m!5736666))

(assert (=> b!4765970 m!5736664))

(assert (=> b!4765835 d!1523447))

(declare-fun bs!1148791 () Bool)

(declare-fun d!1523449 () Bool)

(assert (= bs!1148791 (and d!1523449 b!4765835)))

(declare-fun lambda!224247 () Int)

(assert (=> bs!1148791 (= lambda!224247 lambda!224221)))

(declare-fun bs!1148792 () Bool)

(assert (= bs!1148792 (and d!1523449 b!4765868)))

(assert (=> bs!1148792 (= lambda!224247 lambda!224224)))

(declare-fun bs!1148793 () Bool)

(assert (= bs!1148793 (and d!1523449 d!1523429)))

(assert (=> bs!1148793 (= lambda!224247 lambda!224231)))

(declare-fun bs!1148794 () Bool)

(assert (= bs!1148794 (and d!1523449 d!1523441)))

(assert (=> bs!1148794 (= lambda!224247 lambda!224244)))

(assert (=> d!1523449 (contains!16807 lt!1928580 (hash!4561 (hashF!12405 thiss!42052) key!1776))))

(declare-fun lt!1928756 () Unit!138186)

(declare-fun choose!33947 (ListLongMap!4675 K!14939 Hashable!6580) Unit!138186)

(assert (=> d!1523449 (= lt!1928756 (choose!33947 lt!1928580 key!1776 (hashF!12405 thiss!42052)))))

(assert (=> d!1523449 (forall!11872 (toList!6277 lt!1928580) lambda!224247)))

(assert (=> d!1523449 (= (lemmaInGenMapThenLongMapContainsHash!833 lt!1928580 key!1776 (hashF!12405 thiss!42052)) lt!1928756)))

(declare-fun bs!1148795 () Bool)

(assert (= bs!1148795 d!1523449))

(assert (=> bs!1148795 m!5736462))

(assert (=> bs!1148795 m!5736462))

(assert (=> bs!1148795 m!5736572))

(declare-fun m!5736668 () Bool)

(assert (=> bs!1148795 m!5736668))

(declare-fun m!5736670 () Bool)

(assert (=> bs!1148795 m!5736670))

(assert (=> b!4765835 d!1523449))

(declare-fun d!1523451 () Bool)

(declare-fun hash!4562 (Hashable!6580 K!14939) (_ BitVec 64))

(assert (=> d!1523451 (= (hash!4561 (hashF!12405 thiss!42052) key!1776) (hash!4562 (hashF!12405 thiss!42052) key!1776))))

(declare-fun bs!1148796 () Bool)

(assert (= bs!1148796 d!1523451))

(declare-fun m!5736672 () Bool)

(assert (=> bs!1148796 m!5736672))

(assert (=> b!4765835 d!1523451))

(declare-fun bs!1148797 () Bool)

(declare-fun b!4765976 () Bool)

(assert (= bs!1148797 (and b!4765976 d!1523429)))

(declare-fun lambda!224250 () Int)

(assert (=> bs!1148797 (= lambda!224250 lambda!224231)))

(declare-fun bs!1148798 () Bool)

(assert (= bs!1148798 (and b!4765976 d!1523449)))

(assert (=> bs!1148798 (= lambda!224250 lambda!224247)))

(declare-fun bs!1148799 () Bool)

(assert (= bs!1148799 (and b!4765976 b!4765868)))

(assert (=> bs!1148799 (= lambda!224250 lambda!224224)))

(declare-fun bs!1148800 () Bool)

(assert (= bs!1148800 (and b!4765976 b!4765835)))

(assert (=> bs!1148800 (= lambda!224250 lambda!224221)))

(declare-fun bs!1148801 () Bool)

(assert (= bs!1148801 (and b!4765976 d!1523441)))

(assert (=> bs!1148801 (= lambda!224250 lambda!224244)))

(declare-fun d!1523453 () Bool)

(declare-fun res!2021344 () Bool)

(declare-fun e!2974721 () Bool)

(assert (=> d!1523453 (=> (not res!2021344) (not e!2974721))))

(assert (=> d!1523453 (= res!2021344 (valid!3917 (v!47606 (underlying!10046 thiss!42052))))))

(assert (=> d!1523453 (= (valid!3918 thiss!42052) e!2974721)))

(declare-fun res!2021345 () Bool)

(assert (=> b!4765976 (=> (not res!2021345) (not e!2974721))))

(assert (=> b!4765976 (= res!2021345 (forall!11872 (toList!6277 (map!11970 (v!47606 (underlying!10046 thiss!42052)))) lambda!224250))))

(declare-fun b!4765977 () Bool)

(assert (=> b!4765977 (= e!2974721 (allKeysSameHashInMap!2018 (map!11970 (v!47606 (underlying!10046 thiss!42052))) (hashF!12405 thiss!42052)))))

(assert (= (and d!1523453 res!2021344) b!4765976))

(assert (= (and b!4765976 res!2021345) b!4765977))

(assert (=> d!1523453 m!5736478))

(assert (=> b!4765976 m!5736472))

(declare-fun m!5736674 () Bool)

(assert (=> b!4765976 m!5736674))

(assert (=> b!4765977 m!5736472))

(assert (=> b!4765977 m!5736472))

(declare-fun m!5736676 () Bool)

(assert (=> b!4765977 m!5736676))

(assert (=> b!4765829 d!1523453))

(declare-fun d!1523455 () Bool)

(assert (=> d!1523455 (isDefined!9826 (getValueByKey!2167 (toList!6277 lt!1928580) lt!1928586))))

(declare-fun lt!1928759 () Unit!138186)

(declare-fun choose!33948 (List!53596 (_ BitVec 64)) Unit!138186)

(assert (=> d!1523455 (= lt!1928759 (choose!33948 (toList!6277 lt!1928580) lt!1928586))))

(declare-fun e!2974724 () Bool)

(assert (=> d!1523455 e!2974724))

(declare-fun res!2021348 () Bool)

(assert (=> d!1523455 (=> (not res!2021348) (not e!2974724))))

(declare-fun isStrictlySorted!804 (List!53596) Bool)

(assert (=> d!1523455 (= res!2021348 (isStrictlySorted!804 (toList!6277 lt!1928580)))))

(assert (=> d!1523455 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1980 (toList!6277 lt!1928580) lt!1928586) lt!1928759)))

(declare-fun b!4765980 () Bool)

(assert (=> b!4765980 (= e!2974724 (containsKey!3657 (toList!6277 lt!1928580) lt!1928586))))

(assert (= (and d!1523455 res!2021348) b!4765980))

(assert (=> d!1523455 m!5736482))

(assert (=> d!1523455 m!5736482))

(assert (=> d!1523455 m!5736484))

(declare-fun m!5736678 () Bool)

(assert (=> d!1523455 m!5736678))

(declare-fun m!5736680 () Bool)

(assert (=> d!1523455 m!5736680))

(assert (=> b!4765980 m!5736558))

(assert (=> b!4765824 d!1523455))

(declare-fun d!1523457 () Bool)

(declare-fun isEmpty!29273 (Option!12654) Bool)

(assert (=> d!1523457 (= (isDefined!9826 (getValueByKey!2167 (toList!6277 lt!1928580) lt!1928586)) (not (isEmpty!29273 (getValueByKey!2167 (toList!6277 lt!1928580) lt!1928586))))))

(declare-fun bs!1148802 () Bool)

(assert (= bs!1148802 d!1523457))

(assert (=> bs!1148802 m!5736482))

(declare-fun m!5736682 () Bool)

(assert (=> bs!1148802 m!5736682))

(assert (=> b!4765824 d!1523457))

(declare-fun b!4765990 () Bool)

(declare-fun e!2974729 () Option!12654)

(declare-fun e!2974730 () Option!12654)

(assert (=> b!4765990 (= e!2974729 e!2974730)))

(declare-fun c!812955 () Bool)

(assert (=> b!4765990 (= c!812955 (and ((_ is Cons!53472) (toList!6277 lt!1928580)) (not (= (_1!31046 (h!59884 (toList!6277 lt!1928580))) lt!1928586))))))

(declare-fun b!4765992 () Bool)

(assert (=> b!4765992 (= e!2974730 None!12653)))

(declare-fun b!4765991 () Bool)

(assert (=> b!4765991 (= e!2974730 (getValueByKey!2167 (t!361010 (toList!6277 lt!1928580)) lt!1928586))))

(declare-fun b!4765989 () Bool)

(assert (=> b!4765989 (= e!2974729 (Some!12653 (_2!31046 (h!59884 (toList!6277 lt!1928580)))))))

(declare-fun d!1523459 () Bool)

(declare-fun c!812954 () Bool)

(assert (=> d!1523459 (= c!812954 (and ((_ is Cons!53472) (toList!6277 lt!1928580)) (= (_1!31046 (h!59884 (toList!6277 lt!1928580))) lt!1928586)))))

(assert (=> d!1523459 (= (getValueByKey!2167 (toList!6277 lt!1928580) lt!1928586) e!2974729)))

(assert (= (and d!1523459 c!812954) b!4765989))

(assert (= (and d!1523459 (not c!812954)) b!4765990))

(assert (= (and b!4765990 c!812955) b!4765991))

(assert (= (and b!4765990 (not c!812955)) b!4765992))

(declare-fun m!5736684 () Bool)

(assert (=> b!4765991 m!5736684))

(assert (=> b!4765824 d!1523459))

(declare-fun d!1523461 () Bool)

(assert (=> d!1523461 (contains!16806 (toList!6277 lt!1928580) (tuple2!55505 lt!1928586 lt!1928587))))

(declare-fun lt!1928762 () Unit!138186)

(declare-fun choose!33949 (List!53596 (_ BitVec 64) List!53595) Unit!138186)

(assert (=> d!1523461 (= lt!1928762 (choose!33949 (toList!6277 lt!1928580) lt!1928586 lt!1928587))))

(declare-fun e!2974733 () Bool)

(assert (=> d!1523461 e!2974733))

(declare-fun res!2021351 () Bool)

(assert (=> d!1523461 (=> (not res!2021351) (not e!2974733))))

(assert (=> d!1523461 (= res!2021351 (isStrictlySorted!804 (toList!6277 lt!1928580)))))

(assert (=> d!1523461 (= (lemmaGetValueByKeyImpliesContainsTuple!924 (toList!6277 lt!1928580) lt!1928586 lt!1928587) lt!1928762)))

(declare-fun b!4765995 () Bool)

(assert (=> b!4765995 (= e!2974733 (= (getValueByKey!2167 (toList!6277 lt!1928580) lt!1928586) (Some!12653 lt!1928587)))))

(assert (= (and d!1523461 res!2021351) b!4765995))

(declare-fun m!5736686 () Bool)

(assert (=> d!1523461 m!5736686))

(declare-fun m!5736688 () Bool)

(assert (=> d!1523461 m!5736688))

(assert (=> d!1523461 m!5736680))

(assert (=> b!4765995 m!5736482))

(assert (=> b!4765824 d!1523461))

(declare-fun d!1523463 () Bool)

(declare-fun valid!3919 (LongMapFixedSize!9838) Bool)

(assert (=> d!1523463 (= (valid!3917 (v!47606 (underlying!10046 thiss!42052))) (valid!3919 (v!47605 (underlying!10045 (v!47606 (underlying!10046 thiss!42052))))))))

(declare-fun bs!1148803 () Bool)

(assert (= bs!1148803 d!1523463))

(declare-fun m!5736690 () Bool)

(assert (=> bs!1148803 m!5736690))

(assert (=> b!4765828 d!1523463))

(declare-fun d!1523465 () Bool)

(assert (=> d!1523465 (= (get!18014 lt!1928572) (v!47607 lt!1928572))))

(assert (=> b!4765836 d!1523465))

(declare-fun d!1523467 () Bool)

(assert (=> d!1523467 (= (get!18015 (getValueByKey!2168 (toList!6278 (extractMap!2139 (toList!6277 lt!1928580))) key!1776)) (v!47608 (getValueByKey!2168 (toList!6278 (extractMap!2139 (toList!6277 lt!1928580))) key!1776)))))

(assert (=> b!4765836 d!1523467))

(declare-fun b!4766005 () Bool)

(declare-fun e!2974738 () Option!12656)

(declare-fun e!2974739 () Option!12656)

(assert (=> b!4766005 (= e!2974738 e!2974739)))

(declare-fun c!812961 () Bool)

(assert (=> b!4766005 (= c!812961 (and ((_ is Cons!53471) (toList!6278 (extractMap!2139 (toList!6277 lt!1928580)))) (not (= (_1!31045 (h!59883 (toList!6278 (extractMap!2139 (toList!6277 lt!1928580))))) key!1776))))))

(declare-fun d!1523469 () Bool)

(declare-fun c!812960 () Bool)

(assert (=> d!1523469 (= c!812960 (and ((_ is Cons!53471) (toList!6278 (extractMap!2139 (toList!6277 lt!1928580)))) (= (_1!31045 (h!59883 (toList!6278 (extractMap!2139 (toList!6277 lt!1928580))))) key!1776)))))

(assert (=> d!1523469 (= (getValueByKey!2168 (toList!6278 (extractMap!2139 (toList!6277 lt!1928580))) key!1776) e!2974738)))

(declare-fun b!4766007 () Bool)

(assert (=> b!4766007 (= e!2974739 None!12655)))

(declare-fun b!4766006 () Bool)

(assert (=> b!4766006 (= e!2974739 (getValueByKey!2168 (t!361009 (toList!6278 (extractMap!2139 (toList!6277 lt!1928580)))) key!1776))))

(declare-fun b!4766004 () Bool)

(assert (=> b!4766004 (= e!2974738 (Some!12655 (_2!31045 (h!59883 (toList!6278 (extractMap!2139 (toList!6277 lt!1928580)))))))))

(assert (= (and d!1523469 c!812960) b!4766004))

(assert (= (and d!1523469 (not c!812960)) b!4766005))

(assert (= (and b!4766005 c!812961) b!4766006))

(assert (= (and b!4766005 (not c!812961)) b!4766007))

(declare-fun m!5736692 () Bool)

(assert (=> b!4766006 m!5736692))

(assert (=> b!4765836 d!1523469))

(declare-fun bs!1148804 () Bool)

(declare-fun d!1523471 () Bool)

(assert (= bs!1148804 (and d!1523471 d!1523429)))

(declare-fun lambda!224253 () Int)

(assert (=> bs!1148804 (= lambda!224253 lambda!224231)))

(declare-fun bs!1148805 () Bool)

(assert (= bs!1148805 (and d!1523471 d!1523449)))

(assert (=> bs!1148805 (= lambda!224253 lambda!224247)))

(declare-fun bs!1148806 () Bool)

(assert (= bs!1148806 (and d!1523471 b!4765868)))

(assert (=> bs!1148806 (= lambda!224253 lambda!224224)))

(declare-fun bs!1148807 () Bool)

(assert (= bs!1148807 (and d!1523471 b!4765976)))

(assert (=> bs!1148807 (= lambda!224253 lambda!224250)))

(declare-fun bs!1148808 () Bool)

(assert (= bs!1148808 (and d!1523471 b!4765835)))

(assert (=> bs!1148808 (= lambda!224253 lambda!224221)))

(declare-fun bs!1148809 () Bool)

(assert (= bs!1148809 (and d!1523471 d!1523441)))

(assert (=> bs!1148809 (= lambda!224253 lambda!224244)))

(declare-fun lt!1928765 () ListMap!5773)

(declare-fun invariantList!1657 (List!53595) Bool)

(assert (=> d!1523471 (invariantList!1657 (toList!6278 lt!1928765))))

(declare-fun e!2974742 () ListMap!5773)

(assert (=> d!1523471 (= lt!1928765 e!2974742)))

(declare-fun c!812964 () Bool)

(assert (=> d!1523471 (= c!812964 ((_ is Cons!53472) (toList!6277 lt!1928580)))))

(assert (=> d!1523471 (forall!11872 (toList!6277 lt!1928580) lambda!224253)))

(assert (=> d!1523471 (= (extractMap!2139 (toList!6277 lt!1928580)) lt!1928765)))

(declare-fun b!4766012 () Bool)

(declare-fun addToMapMapFromBucket!1622 (List!53595 ListMap!5773) ListMap!5773)

(assert (=> b!4766012 (= e!2974742 (addToMapMapFromBucket!1622 (_2!31046 (h!59884 (toList!6277 lt!1928580))) (extractMap!2139 (t!361010 (toList!6277 lt!1928580)))))))

(declare-fun b!4766013 () Bool)

(assert (=> b!4766013 (= e!2974742 (ListMap!5774 Nil!53471))))

(assert (= (and d!1523471 c!812964) b!4766012))

(assert (= (and d!1523471 (not c!812964)) b!4766013))

(declare-fun m!5736694 () Bool)

(assert (=> d!1523471 m!5736694))

(declare-fun m!5736696 () Bool)

(assert (=> d!1523471 m!5736696))

(declare-fun m!5736698 () Bool)

(assert (=> b!4766012 m!5736698))

(assert (=> b!4766012 m!5736698))

(declare-fun m!5736700 () Bool)

(assert (=> b!4766012 m!5736700))

(assert (=> b!4765836 d!1523471))

(declare-fun tp_is_empty!32427 () Bool)

(declare-fun b!4766018 () Bool)

(declare-fun e!2974745 () Bool)

(declare-fun tp!1355304 () Bool)

(assert (=> b!4766018 (= e!2974745 (and tp_is_empty!32425 tp_is_empty!32427 tp!1355304))))

(assert (=> b!4765826 (= tp!1355301 e!2974745)))

(assert (= (and b!4765826 ((_ is Cons!53471) (zeroValue!5207 (v!47605 (underlying!10045 (v!47606 (underlying!10046 thiss!42052))))))) b!4766018))

(declare-fun tp!1355305 () Bool)

(declare-fun b!4766019 () Bool)

(declare-fun e!2974746 () Bool)

(assert (=> b!4766019 (= e!2974746 (and tp_is_empty!32425 tp_is_empty!32427 tp!1355305))))

(assert (=> b!4765826 (= tp!1355297 e!2974746)))

(assert (= (and b!4765826 ((_ is Cons!53471) (minValue!5207 (v!47605 (underlying!10045 (v!47606 (underlying!10046 thiss!42052))))))) b!4766019))

(declare-fun tp!1355313 () Bool)

(declare-fun e!2974751 () Bool)

(declare-fun b!4766027 () Bool)

(assert (=> b!4766027 (= e!2974751 (and tp_is_empty!32425 tp_is_empty!32427 tp!1355313))))

(declare-fun mapNonEmpty!21830 () Bool)

(declare-fun mapRes!21830 () Bool)

(declare-fun tp!1355314 () Bool)

(declare-fun e!2974752 () Bool)

(assert (=> mapNonEmpty!21830 (= mapRes!21830 (and tp!1355314 e!2974752))))

(declare-fun mapRest!21830 () (Array (_ BitVec 32) List!53595))

(declare-fun mapKey!21830 () (_ BitVec 32))

(declare-fun mapValue!21830 () List!53595)

(assert (=> mapNonEmpty!21830 (= mapRest!21827 (store mapRest!21830 mapKey!21830 mapValue!21830))))

(declare-fun tp!1355312 () Bool)

(declare-fun b!4766026 () Bool)

(assert (=> b!4766026 (= e!2974752 (and tp_is_empty!32425 tp_is_empty!32427 tp!1355312))))

(declare-fun condMapEmpty!21830 () Bool)

(declare-fun mapDefault!21830 () List!53595)

(assert (=> mapNonEmpty!21827 (= condMapEmpty!21830 (= mapRest!21827 ((as const (Array (_ BitVec 32) List!53595)) mapDefault!21830)))))

(assert (=> mapNonEmpty!21827 (= tp!1355296 (and e!2974751 mapRes!21830))))

(declare-fun mapIsEmpty!21830 () Bool)

(assert (=> mapIsEmpty!21830 mapRes!21830))

(assert (= (and mapNonEmpty!21827 condMapEmpty!21830) mapIsEmpty!21830))

(assert (= (and mapNonEmpty!21827 (not condMapEmpty!21830)) mapNonEmpty!21830))

(assert (= (and mapNonEmpty!21830 ((_ is Cons!53471) mapValue!21830)) b!4766026))

(assert (= (and mapNonEmpty!21827 ((_ is Cons!53471) mapDefault!21830)) b!4766027))

(declare-fun m!5736702 () Bool)

(assert (=> mapNonEmpty!21830 m!5736702))

(declare-fun e!2974753 () Bool)

(declare-fun tp!1355315 () Bool)

(declare-fun b!4766028 () Bool)

(assert (=> b!4766028 (= e!2974753 (and tp_is_empty!32425 tp_is_empty!32427 tp!1355315))))

(assert (=> mapNonEmpty!21827 (= tp!1355295 e!2974753)))

(assert (= (and mapNonEmpty!21827 ((_ is Cons!53471) mapValue!21827)) b!4766028))

(declare-fun e!2974754 () Bool)

(declare-fun tp!1355316 () Bool)

(declare-fun b!4766029 () Bool)

(assert (=> b!4766029 (= e!2974754 (and tp_is_empty!32425 tp_is_empty!32427 tp!1355316))))

(assert (=> b!4765832 (= tp!1355299 e!2974754)))

(assert (= (and b!4765832 ((_ is Cons!53471) mapDefault!21827)) b!4766029))

(declare-fun b_lambda!184313 () Bool)

(assert (= b_lambda!184311 (or b!4765835 b_lambda!184313)))

(declare-fun bs!1148810 () Bool)

(declare-fun d!1523473 () Bool)

(assert (= bs!1148810 (and d!1523473 b!4765835)))

(assert (=> bs!1148810 (= (dynLambda!21944 lambda!224221 lt!1928571) (noDuplicateKeys!2250 (_2!31046 lt!1928571)))))

(declare-fun m!5736704 () Bool)

(assert (=> bs!1148810 m!5736704))

(assert (=> d!1523445 d!1523473))

(declare-fun b_lambda!184315 () Bool)

(assert (= b_lambda!184309 (or (and b!4765826 b_free!129619) b_lambda!184315)))

(declare-fun b_lambda!184317 () Bool)

(assert (= b_lambda!184307 (or b!4765835 b_lambda!184317)))

(declare-fun bs!1148811 () Bool)

(declare-fun d!1523475 () Bool)

(assert (= bs!1148811 (and d!1523475 b!4765835)))

(assert (=> bs!1148811 (= (dynLambda!21944 lambda!224221 lt!1928574) (noDuplicateKeys!2250 (_2!31046 lt!1928574)))))

(declare-fun m!5736706 () Bool)

(assert (=> bs!1148811 m!5736706))

(assert (=> d!1523437 d!1523475))

(check-sat (not b!4765917) (not b!4765956) (not bm!334140) (not d!1523433) b_and!341321 (not b!4765957) (not d!1523417) (not b!4766026) (not b!4765896) tp_is_empty!32427 (not b!4765875) (not b!4765953) (not b!4766018) (not bm!334136) (not bm!334137) (not d!1523447) (not b!4765967) (not d!1523435) (not d!1523451) (not d!1523437) (not b!4765859) (not b!4766019) (not b!4765954) (not b!4765895) (not b!4765929) (not b!4765860) (not b!4765897) (not b!4765955) (not d!1523425) (not d!1523471) (not d!1523441) (not b!4765919) (not d!1523431) (not b!4765963) (not b_lambda!184313) (not b!4766029) (not b!4765980) (not b_lambda!184315) (not tb!257467) (not d!1523427) (not b!4765924) (not bm!334138) (not b!4766012) (not b!4765952) (not d!1523463) (not d!1523421) (not b!4765976) (not b_lambda!184317) (not bs!1148811) (not d!1523449) (not b!4765970) (not d!1523445) (not b!4765916) (not b!4765966) (not b!4765864) (not b!4765951) (not b!4765960) (not d!1523439) (not b_next!130411) (not b!4765968) (not b!4765977) tp_is_empty!32425 (not bm!334141) (not d!1523453) (not d!1523443) (not d!1523461) (not bm!334139) (not b!4765866) (not bs!1148810) (not b!4765868) (not b!4765885) (not b!4765918) (not b!4765991) (not b!4765894) (not b!4765883) (not b!4766027) (not d!1523423) (not b_next!130409) (not b!4765920) (not b!4766028) (not d!1523429) (not b!4765995) b_and!341323 (not b!4765962) (not mapNonEmpty!21830) (not d!1523457) (not d!1523455) (not b!4765958) (not b!4765959) (not b!4766006) (not b!4765969))
(check-sat b_and!341321 b_and!341323 (not b_next!130411) (not b_next!130409))
