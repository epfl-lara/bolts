; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297298 () Bool)

(assert start!297298)

(declare-fun b!3174807 () Bool)

(declare-fun b_free!83433 () Bool)

(declare-fun b_next!84137 () Bool)

(assert (=> b!3174807 (= b_free!83433 (not b_next!84137))))

(declare-fun tp!1003704 () Bool)

(declare-fun b_and!209727 () Bool)

(assert (=> b!3174807 (= tp!1003704 b_and!209727)))

(declare-fun b!3174804 () Bool)

(declare-fun b_free!83435 () Bool)

(declare-fun b_next!84139 () Bool)

(assert (=> b!3174804 (= b_free!83435 (not b_next!84139))))

(declare-fun tp!1003713 () Bool)

(declare-fun b_and!209729 () Bool)

(assert (=> b!3174804 (= tp!1003713 b_and!209729)))

(declare-fun res!1289957 () Bool)

(declare-fun e!1977469 () Bool)

(assert (=> start!297298 (=> (not res!1289957) (not e!1977469))))

(declare-datatypes ((C!19820 0))(
  ( (C!19821 (val!11946 Int)) )
))
(declare-datatypes ((Regex!9817 0))(
  ( (ElementMatch!9817 (c!533556 C!19820)) (Concat!15138 (regOne!20146 Regex!9817) (regTwo!20146 Regex!9817)) (EmptyExpr!9817) (Star!9817 (reg!10146 Regex!9817)) (EmptyLang!9817) (Union!9817 (regOne!20147 Regex!9817) (regTwo!20147 Regex!9817)) )
))
(declare-datatypes ((tuple2!34940 0))(
  ( (tuple2!34941 (_1!20602 Regex!9817) (_2!20602 C!19820)) )
))
(declare-datatypes ((tuple2!34942 0))(
  ( (tuple2!34943 (_1!20603 tuple2!34940) (_2!20603 Regex!9817)) )
))
(declare-datatypes ((List!35670 0))(
  ( (Nil!35546) (Cons!35546 (h!40966 tuple2!34942) (t!234761 List!35670)) )
))
(declare-datatypes ((array!15210 0))(
  ( (array!15211 (arr!6766 (Array (_ BitVec 32) (_ BitVec 64))) (size!26852 (_ BitVec 32))) )
))
(declare-datatypes ((array!15212 0))(
  ( (array!15213 (arr!6767 (Array (_ BitVec 32) List!35670)) (size!26853 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8476 0))(
  ( (LongMapFixedSize!8477 (defaultEntry!4623 Int) (mask!10940 (_ BitVec 32)) (extraKeys!4487 (_ BitVec 32)) (zeroValue!4497 List!35670) (minValue!4497 List!35670) (_size!8519 (_ BitVec 32)) (_keys!4538 array!15210) (_values!4519 array!15212) (_vacant!4299 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16761 0))(
  ( (Cell!16762 (v!35338 LongMapFixedSize!8476)) )
))
(declare-datatypes ((MutLongMap!4238 0))(
  ( (LongMap!4238 (underlying!8705 Cell!16761)) (MutLongMapExt!4237 (__x!22820 Int)) )
))
(declare-datatypes ((Cell!16763 0))(
  ( (Cell!16764 (v!35339 MutLongMap!4238)) )
))
(declare-datatypes ((Hashable!4154 0))(
  ( (HashableExt!4153 (__x!22821 Int)) )
))
(declare-datatypes ((MutableMap!4144 0))(
  ( (MutableMapExt!4143 (__x!22822 Int)) (HashMap!4144 (underlying!8706 Cell!16763) (hashF!6186 Hashable!4154) (_size!8520 (_ BitVec 32)) (defaultValue!4315 Int)) )
))
(declare-datatypes ((Cache!558 0))(
  ( (Cache!559 (cache!4290 MutableMap!4144)) )
))
(declare-fun thiss!28445 () Cache!558)

(declare-fun validCacheMap!114 (MutableMap!4144) Bool)

(assert (=> start!297298 (= res!1289957 (validCacheMap!114 (cache!4290 thiss!28445)))))

(assert (=> start!297298 e!1977469))

(declare-fun e!1977463 () Bool)

(declare-fun inv!48291 (Cache!558) Bool)

(assert (=> start!297298 (and (inv!48291 thiss!28445) e!1977463)))

(declare-fun e!1977465 () Bool)

(assert (=> start!297298 e!1977465))

(declare-fun tp_is_empty!17197 () Bool)

(assert (=> start!297298 tp_is_empty!17197))

(declare-fun b!3174799 () Bool)

(declare-fun e!1977468 () Bool)

(declare-fun e!1977467 () Bool)

(declare-fun lt!1067603 () MutLongMap!4238)

(get-info :version)

(assert (=> b!3174799 (= e!1977468 (and e!1977467 ((_ is LongMap!4238) lt!1067603)))))

(assert (=> b!3174799 (= lt!1067603 (v!35339 (underlying!8706 (cache!4290 thiss!28445))))))

(declare-fun b!3174800 () Bool)

(declare-fun e!1977470 () Bool)

(assert (=> b!3174800 (= e!1977463 e!1977470)))

(declare-fun b!3174801 () Bool)

(assert (=> b!3174801 (= e!1977465 tp_is_empty!17197)))

(declare-fun b!3174802 () Bool)

(declare-fun tp!1003708 () Bool)

(declare-fun tp!1003710 () Bool)

(assert (=> b!3174802 (= e!1977465 (and tp!1003708 tp!1003710))))

(declare-fun mapNonEmpty!19184 () Bool)

(declare-fun mapRes!19184 () Bool)

(declare-fun tp!1003703 () Bool)

(declare-fun tp!1003714 () Bool)

(assert (=> mapNonEmpty!19184 (= mapRes!19184 (and tp!1003703 tp!1003714))))

(declare-fun mapValue!19184 () List!35670)

(declare-fun mapRest!19184 () (Array (_ BitVec 32) List!35670))

(declare-fun mapKey!19184 () (_ BitVec 32))

(assert (=> mapNonEmpty!19184 (= (arr!6767 (_values!4519 (v!35338 (underlying!8705 (v!35339 (underlying!8706 (cache!4290 thiss!28445))))))) (store mapRest!19184 mapKey!19184 mapValue!19184))))

(declare-fun b!3174803 () Bool)

(declare-fun res!1289958 () Bool)

(assert (=> b!3174803 (=> (not res!1289958) (not e!1977469))))

(declare-fun r!4705 () Regex!9817)

(declare-fun validRegex!4518 (Regex!9817) Bool)

(assert (=> b!3174803 (= res!1289958 (validRegex!4518 r!4705))))

(assert (=> b!3174804 (= e!1977470 (and e!1977468 tp!1003713))))

(declare-fun b!3174805 () Bool)

(declare-fun e!1977464 () Bool)

(declare-fun tp!1003706 () Bool)

(assert (=> b!3174805 (= e!1977464 (and tp!1003706 mapRes!19184))))

(declare-fun condMapEmpty!19184 () Bool)

(declare-fun mapDefault!19184 () List!35670)

(assert (=> b!3174805 (= condMapEmpty!19184 (= (arr!6767 (_values!4519 (v!35338 (underlying!8705 (v!35339 (underlying!8706 (cache!4290 thiss!28445))))))) ((as const (Array (_ BitVec 32) List!35670)) mapDefault!19184)))))

(declare-fun b!3174806 () Bool)

(declare-fun tp!1003709 () Bool)

(assert (=> b!3174806 (= e!1977465 tp!1003709)))

(declare-fun tp!1003712 () Bool)

(declare-fun e!1977466 () Bool)

(declare-fun tp!1003707 () Bool)

(declare-fun array_inv!4858 (array!15210) Bool)

(declare-fun array_inv!4859 (array!15212) Bool)

(assert (=> b!3174807 (= e!1977466 (and tp!1003704 tp!1003712 tp!1003707 (array_inv!4858 (_keys!4538 (v!35338 (underlying!8705 (v!35339 (underlying!8706 (cache!4290 thiss!28445))))))) (array_inv!4859 (_values!4519 (v!35338 (underlying!8705 (v!35339 (underlying!8706 (cache!4290 thiss!28445))))))) e!1977464))))

(declare-fun b!3174808 () Bool)

(declare-fun e!1977462 () Bool)

(assert (=> b!3174808 (= e!1977467 e!1977462)))

(declare-fun b!3174809 () Bool)

(declare-fun tp!1003705 () Bool)

(declare-fun tp!1003711 () Bool)

(assert (=> b!3174809 (= e!1977465 (and tp!1003705 tp!1003711))))

(declare-fun mapIsEmpty!19184 () Bool)

(assert (=> mapIsEmpty!19184 mapRes!19184))

(declare-fun b!3174810 () Bool)

(assert (=> b!3174810 (= e!1977469 (not ((_ is HashMap!4144) (cache!4290 thiss!28445))))))

(declare-fun b!3174811 () Bool)

(assert (=> b!3174811 (= e!1977462 e!1977466)))

(declare-fun b!3174812 () Bool)

(declare-fun res!1289959 () Bool)

(assert (=> b!3174812 (=> (not res!1289959) (not e!1977469))))

(declare-fun c!6979 () C!19820)

(declare-fun contains!6265 (MutableMap!4144 tuple2!34940) Bool)

(assert (=> b!3174812 (= res!1289959 (contains!6265 (cache!4290 thiss!28445) (tuple2!34941 r!4705 c!6979)))))

(assert (= (and start!297298 res!1289957) b!3174803))

(assert (= (and b!3174803 res!1289958) b!3174812))

(assert (= (and b!3174812 res!1289959) b!3174810))

(assert (= (and b!3174805 condMapEmpty!19184) mapIsEmpty!19184))

(assert (= (and b!3174805 (not condMapEmpty!19184)) mapNonEmpty!19184))

(assert (= b!3174807 b!3174805))

(assert (= b!3174811 b!3174807))

(assert (= b!3174808 b!3174811))

(assert (= (and b!3174799 ((_ is LongMap!4238) (v!35339 (underlying!8706 (cache!4290 thiss!28445))))) b!3174808))

(assert (= b!3174804 b!3174799))

(assert (= (and b!3174800 ((_ is HashMap!4144) (cache!4290 thiss!28445))) b!3174804))

(assert (= start!297298 b!3174800))

(assert (= (and start!297298 ((_ is ElementMatch!9817) r!4705)) b!3174801))

(assert (= (and start!297298 ((_ is Concat!15138) r!4705)) b!3174809))

(assert (= (and start!297298 ((_ is Star!9817) r!4705)) b!3174806))

(assert (= (and start!297298 ((_ is Union!9817) r!4705)) b!3174802))

(declare-fun m!3431902 () Bool)

(assert (=> b!3174807 m!3431902))

(declare-fun m!3431904 () Bool)

(assert (=> b!3174807 m!3431904))

(declare-fun m!3431906 () Bool)

(assert (=> b!3174803 m!3431906))

(declare-fun m!3431908 () Bool)

(assert (=> b!3174812 m!3431908))

(declare-fun m!3431910 () Bool)

(assert (=> mapNonEmpty!19184 m!3431910))

(declare-fun m!3431912 () Bool)

(assert (=> start!297298 m!3431912))

(declare-fun m!3431914 () Bool)

(assert (=> start!297298 m!3431914))

(check-sat (not b!3174812) b_and!209727 (not b!3174802) (not start!297298) (not b_next!84139) b_and!209729 tp_is_empty!17197 (not b!3174807) (not b!3174806) (not b!3174803) (not b!3174805) (not b!3174809) (not mapNonEmpty!19184) (not b_next!84137))
(check-sat b_and!209727 b_and!209729 (not b_next!84137) (not b_next!84139))
(get-model)

(declare-fun d!869458 () Bool)

(declare-fun res!1289966 () Bool)

(declare-fun e!1977475 () Bool)

(assert (=> d!869458 (=> (not res!1289966) (not e!1977475))))

(declare-fun valid!3293 (MutableMap!4144) Bool)

(assert (=> d!869458 (= res!1289966 (valid!3293 (cache!4290 thiss!28445)))))

(assert (=> d!869458 (= (validCacheMap!114 (cache!4290 thiss!28445)) e!1977475)))

(declare-fun b!3174819 () Bool)

(declare-fun res!1289967 () Bool)

(assert (=> b!3174819 (=> (not res!1289967) (not e!1977475))))

(declare-fun invariantList!504 (List!35670) Bool)

(declare-datatypes ((ListMap!1365 0))(
  ( (ListMap!1366 (toList!2107 List!35670)) )
))
(declare-fun map!7991 (MutableMap!4144) ListMap!1365)

(assert (=> b!3174819 (= res!1289967 (invariantList!504 (toList!2107 (map!7991 (cache!4290 thiss!28445)))))))

(declare-fun b!3174820 () Bool)

(declare-fun lambda!116174 () Int)

(declare-fun forall!7189 (List!35670 Int) Bool)

(assert (=> b!3174820 (= e!1977475 (forall!7189 (toList!2107 (map!7991 (cache!4290 thiss!28445))) lambda!116174))))

(assert (= (and d!869458 res!1289966) b!3174819))

(assert (= (and b!3174819 res!1289967) b!3174820))

(declare-fun m!3431917 () Bool)

(assert (=> d!869458 m!3431917))

(declare-fun m!3431919 () Bool)

(assert (=> b!3174819 m!3431919))

(declare-fun m!3431921 () Bool)

(assert (=> b!3174819 m!3431921))

(assert (=> b!3174820 m!3431919))

(declare-fun m!3431923 () Bool)

(assert (=> b!3174820 m!3431923))

(assert (=> start!297298 d!869458))

(declare-fun d!869460 () Bool)

(declare-fun res!1289970 () Bool)

(declare-fun e!1977478 () Bool)

(assert (=> d!869460 (=> (not res!1289970) (not e!1977478))))

(assert (=> d!869460 (= res!1289970 ((_ is HashMap!4144) (cache!4290 thiss!28445)))))

(assert (=> d!869460 (= (inv!48291 thiss!28445) e!1977478)))

(declare-fun b!3174823 () Bool)

(assert (=> b!3174823 (= e!1977478 (validCacheMap!114 (cache!4290 thiss!28445)))))

(assert (= (and d!869460 res!1289970) b!3174823))

(assert (=> b!3174823 m!3431912))

(assert (=> start!297298 d!869460))

(declare-fun bm!230781 () Bool)

(declare-fun call!230791 () (_ BitVec 64))

(declare-fun hash!820 (Hashable!4154 tuple2!34940) (_ BitVec 64))

(assert (=> bm!230781 (= call!230791 (hash!820 (hashF!6186 (cache!4290 thiss!28445)) (tuple2!34941 r!4705 c!6979)))))

(declare-fun bm!230782 () Bool)

(declare-fun call!230786 () Bool)

(declare-datatypes ((Option!6943 0))(
  ( (None!6942) (Some!6942 (v!35340 tuple2!34942)) )
))
(declare-fun call!230788 () Option!6943)

(declare-fun isDefined!5449 (Option!6943) Bool)

(assert (=> bm!230782 (= call!230786 (isDefined!5449 call!230788))))

(declare-fun b!3174846 () Bool)

(declare-fun e!1977497 () Bool)

(assert (=> b!3174846 (= e!1977497 call!230786)))

(declare-fun b!3174847 () Bool)

(declare-fun e!1977494 () Bool)

(assert (=> b!3174847 (= e!1977494 call!230786)))

(declare-fun call!230789 () List!35670)

(declare-fun bm!230783 () Bool)

(declare-fun getPair!107 (List!35670 tuple2!34940) Option!6943)

(assert (=> bm!230783 (= call!230788 (getPair!107 call!230789 (tuple2!34941 r!4705 c!6979)))))

(declare-fun lt!1067650 () Bool)

(declare-fun d!869462 () Bool)

(declare-fun contains!6266 (ListMap!1365 tuple2!34940) Bool)

(assert (=> d!869462 (= lt!1067650 (contains!6266 (map!7991 (cache!4290 thiss!28445)) (tuple2!34941 r!4705 c!6979)))))

(declare-fun e!1977498 () Bool)

(assert (=> d!869462 (= lt!1067650 e!1977498)))

(declare-fun res!1289979 () Bool)

(assert (=> d!869462 (=> (not res!1289979) (not e!1977498))))

(declare-fun lt!1067651 () (_ BitVec 64))

(declare-fun contains!6267 (MutLongMap!4238 (_ BitVec 64)) Bool)

(assert (=> d!869462 (= res!1289979 (contains!6267 (v!35339 (underlying!8706 (cache!4290 thiss!28445))) lt!1067651))))

(declare-datatypes ((Unit!50045 0))(
  ( (Unit!50046) )
))
(declare-fun lt!1067658 () Unit!50045)

(declare-fun e!1977493 () Unit!50045)

(assert (=> d!869462 (= lt!1067658 e!1977493)))

(declare-fun c!533565 () Bool)

(declare-datatypes ((tuple2!34944 0))(
  ( (tuple2!34945 (_1!20604 (_ BitVec 64)) (_2!20604 List!35670)) )
))
(declare-datatypes ((List!35671 0))(
  ( (Nil!35547) (Cons!35547 (h!40967 tuple2!34944) (t!234762 List!35671)) )
))
(declare-fun extractMap!250 (List!35671) ListMap!1365)

(declare-datatypes ((ListLongMap!761 0))(
  ( (ListLongMap!762 (toList!2108 List!35671)) )
))
(declare-fun map!7992 (MutLongMap!4238) ListLongMap!761)

(assert (=> d!869462 (= c!533565 (contains!6266 (extractMap!250 (toList!2108 (map!7992 (v!35339 (underlying!8706 (cache!4290 thiss!28445)))))) (tuple2!34941 r!4705 c!6979)))))

(declare-fun lt!1067654 () Unit!50045)

(declare-fun e!1977495 () Unit!50045)

(assert (=> d!869462 (= lt!1067654 e!1977495)))

(declare-fun c!533566 () Bool)

(assert (=> d!869462 (= c!533566 (contains!6267 (v!35339 (underlying!8706 (cache!4290 thiss!28445))) lt!1067651))))

(assert (=> d!869462 (= lt!1067651 (hash!820 (hashF!6186 (cache!4290 thiss!28445)) (tuple2!34941 r!4705 c!6979)))))

(assert (=> d!869462 (valid!3293 (cache!4290 thiss!28445))))

(assert (=> d!869462 (= (contains!6265 (cache!4290 thiss!28445) (tuple2!34941 r!4705 c!6979)) lt!1067650)))

(declare-fun b!3174848 () Bool)

(declare-fun lambda!116177 () Int)

(declare-fun forallContained!1085 (List!35671 Int tuple2!34944) Unit!50045)

(declare-fun apply!7995 (MutLongMap!4238 (_ BitVec 64)) List!35670)

(assert (=> b!3174848 (= e!1977495 (forallContained!1085 (toList!2108 (map!7992 (v!35339 (underlying!8706 (cache!4290 thiss!28445))))) lambda!116177 (tuple2!34945 lt!1067651 (apply!7995 (v!35339 (underlying!8706 (cache!4290 thiss!28445))) lt!1067651))))))

(declare-fun c!533567 () Bool)

(declare-fun contains!6268 (List!35671 tuple2!34944) Bool)

(assert (=> b!3174848 (= c!533567 (not (contains!6268 (toList!2108 (map!7992 (v!35339 (underlying!8706 (cache!4290 thiss!28445))))) (tuple2!34945 lt!1067651 (apply!7995 (v!35339 (underlying!8706 (cache!4290 thiss!28445))) lt!1067651)))))))

(declare-fun lt!1067660 () Unit!50045)

(declare-fun e!1977499 () Unit!50045)

(assert (=> b!3174848 (= lt!1067660 e!1977499)))

(declare-fun lt!1067659 () ListLongMap!761)

(declare-fun bm!230784 () Bool)

(declare-fun call!230787 () Bool)

(declare-fun call!230790 () ListLongMap!761)

(declare-fun contains!6269 (ListLongMap!761 (_ BitVec 64)) Bool)

(assert (=> bm!230784 (= call!230787 (contains!6269 (ite c!533565 lt!1067659 call!230790) call!230791))))

(declare-fun b!3174849 () Bool)

(declare-fun e!1977496 () Unit!50045)

(assert (=> b!3174849 (= e!1977493 e!1977496)))

(declare-fun res!1289977 () Bool)

(assert (=> b!3174849 (= res!1289977 call!230787)))

(assert (=> b!3174849 (=> (not res!1289977) (not e!1977494))))

(declare-fun c!533568 () Bool)

(assert (=> b!3174849 (= c!533568 e!1977494)))

(declare-fun b!3174850 () Bool)

(declare-fun lt!1067653 () Unit!50045)

(assert (=> b!3174850 (= e!1977493 lt!1067653)))

(assert (=> b!3174850 (= lt!1067659 call!230790)))

(declare-fun lemmaInGenericMapThenInLongMap!107 (ListLongMap!761 tuple2!34940 Hashable!4154) Unit!50045)

(assert (=> b!3174850 (= lt!1067653 (lemmaInGenericMapThenInLongMap!107 lt!1067659 (tuple2!34941 r!4705 c!6979) (hashF!6186 (cache!4290 thiss!28445))))))

(declare-fun res!1289978 () Bool)

(assert (=> b!3174850 (= res!1289978 call!230787)))

(assert (=> b!3174850 (=> (not res!1289978) (not e!1977497))))

(assert (=> b!3174850 e!1977497))

(declare-fun b!3174851 () Bool)

(assert (=> b!3174851 false))

(declare-fun lt!1067663 () Unit!50045)

(declare-fun lt!1067657 () Unit!50045)

(assert (=> b!3174851 (= lt!1067663 lt!1067657)))

(declare-fun lt!1067646 () ListLongMap!761)

(assert (=> b!3174851 (contains!6266 (extractMap!250 (toList!2108 lt!1067646)) (tuple2!34941 r!4705 c!6979))))

(declare-fun lemmaInLongMapThenInGenericMap!107 (ListLongMap!761 tuple2!34940 Hashable!4154) Unit!50045)

(assert (=> b!3174851 (= lt!1067657 (lemmaInLongMapThenInGenericMap!107 lt!1067646 (tuple2!34941 r!4705 c!6979) (hashF!6186 (cache!4290 thiss!28445))))))

(assert (=> b!3174851 (= lt!1067646 call!230790)))

(declare-fun Unit!50047 () Unit!50045)

(assert (=> b!3174851 (= e!1977496 Unit!50047)))

(declare-fun b!3174852 () Bool)

(declare-fun Unit!50048 () Unit!50045)

(assert (=> b!3174852 (= e!1977495 Unit!50048)))

(declare-fun b!3174853 () Bool)

(declare-fun Unit!50049 () Unit!50045)

(assert (=> b!3174853 (= e!1977496 Unit!50049)))

(declare-fun b!3174854 () Bool)

(assert (=> b!3174854 (= e!1977498 (isDefined!5449 (getPair!107 (apply!7995 (v!35339 (underlying!8706 (cache!4290 thiss!28445))) lt!1067651) (tuple2!34941 r!4705 c!6979))))))

(declare-fun b!3174855 () Bool)

(assert (=> b!3174855 false))

(declare-fun lt!1067648 () Unit!50045)

(declare-fun lt!1067655 () Unit!50045)

(assert (=> b!3174855 (= lt!1067648 lt!1067655)))

(declare-fun lt!1067644 () List!35671)

(declare-fun lt!1067662 () List!35670)

(assert (=> b!3174855 (contains!6268 lt!1067644 (tuple2!34945 lt!1067651 lt!1067662))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!113 (List!35671 (_ BitVec 64) List!35670) Unit!50045)

(assert (=> b!3174855 (= lt!1067655 (lemmaGetValueByKeyImpliesContainsTuple!113 lt!1067644 lt!1067651 lt!1067662))))

(assert (=> b!3174855 (= lt!1067662 (apply!7995 (v!35339 (underlying!8706 (cache!4290 thiss!28445))) lt!1067651))))

(assert (=> b!3174855 (= lt!1067644 (toList!2108 (map!7992 (v!35339 (underlying!8706 (cache!4290 thiss!28445))))))))

(declare-fun lt!1067656 () Unit!50045)

(declare-fun lt!1067645 () Unit!50045)

(assert (=> b!3174855 (= lt!1067656 lt!1067645)))

(declare-fun lt!1067647 () List!35671)

(declare-datatypes ((Option!6944 0))(
  ( (None!6943) (Some!6943 (v!35341 List!35670)) )
))
(declare-fun isDefined!5450 (Option!6944) Bool)

(declare-fun getValueByKey!197 (List!35671 (_ BitVec 64)) Option!6944)

(assert (=> b!3174855 (isDefined!5450 (getValueByKey!197 lt!1067647 lt!1067651))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!141 (List!35671 (_ BitVec 64)) Unit!50045)

(assert (=> b!3174855 (= lt!1067645 (lemmaContainsKeyImpliesGetValueByKeyDefined!141 lt!1067647 lt!1067651))))

(assert (=> b!3174855 (= lt!1067647 (toList!2108 (map!7992 (v!35339 (underlying!8706 (cache!4290 thiss!28445))))))))

(declare-fun lt!1067661 () Unit!50045)

(declare-fun lt!1067652 () Unit!50045)

(assert (=> b!3174855 (= lt!1067661 lt!1067652)))

(declare-fun lt!1067649 () List!35671)

(declare-fun containsKey!209 (List!35671 (_ BitVec 64)) Bool)

(assert (=> b!3174855 (containsKey!209 lt!1067649 lt!1067651)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!108 (List!35671 (_ BitVec 64)) Unit!50045)

(assert (=> b!3174855 (= lt!1067652 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!108 lt!1067649 lt!1067651))))

(assert (=> b!3174855 (= lt!1067649 (toList!2108 (map!7992 (v!35339 (underlying!8706 (cache!4290 thiss!28445))))))))

(declare-fun Unit!50050 () Unit!50045)

(assert (=> b!3174855 (= e!1977499 Unit!50050)))

(declare-fun bm!230785 () Bool)

(assert (=> bm!230785 (= call!230790 (map!7992 (v!35339 (underlying!8706 (cache!4290 thiss!28445)))))))

(declare-fun b!3174856 () Bool)

(declare-fun Unit!50051 () Unit!50045)

(assert (=> b!3174856 (= e!1977499 Unit!50051)))

(declare-fun bm!230786 () Bool)

(declare-fun apply!7996 (ListLongMap!761 (_ BitVec 64)) List!35670)

(assert (=> bm!230786 (= call!230789 (apply!7996 (ite c!533565 lt!1067659 call!230790) call!230791))))

(assert (= (and d!869462 c!533566) b!3174848))

(assert (= (and d!869462 (not c!533566)) b!3174852))

(assert (= (and b!3174848 c!533567) b!3174855))

(assert (= (and b!3174848 (not c!533567)) b!3174856))

(assert (= (and d!869462 c!533565) b!3174850))

(assert (= (and d!869462 (not c!533565)) b!3174849))

(assert (= (and b!3174850 res!1289978) b!3174846))

(assert (= (and b!3174849 res!1289977) b!3174847))

(assert (= (and b!3174849 c!533568) b!3174851))

(assert (= (and b!3174849 (not c!533568)) b!3174853))

(assert (= (or b!3174850 b!3174849 b!3174847 b!3174851) bm!230785))

(assert (= (or b!3174850 b!3174846 b!3174849 b!3174847) bm!230781))

(assert (= (or b!3174846 b!3174847) bm!230786))

(assert (= (or b!3174850 b!3174849) bm!230784))

(assert (= (or b!3174846 b!3174847) bm!230783))

(assert (= (or b!3174846 b!3174847) bm!230782))

(assert (= (and d!869462 res!1289979) b!3174854))

(declare-fun m!3431925 () Bool)

(assert (=> b!3174850 m!3431925))

(declare-fun m!3431927 () Bool)

(assert (=> bm!230785 m!3431927))

(declare-fun m!3431929 () Bool)

(assert (=> bm!230782 m!3431929))

(declare-fun m!3431931 () Bool)

(assert (=> bm!230783 m!3431931))

(declare-fun m!3431933 () Bool)

(assert (=> bm!230781 m!3431933))

(declare-fun m!3431935 () Bool)

(assert (=> b!3174851 m!3431935))

(assert (=> b!3174851 m!3431935))

(declare-fun m!3431937 () Bool)

(assert (=> b!3174851 m!3431937))

(declare-fun m!3431939 () Bool)

(assert (=> b!3174851 m!3431939))

(declare-fun m!3431941 () Bool)

(assert (=> bm!230786 m!3431941))

(declare-fun m!3431943 () Bool)

(assert (=> b!3174854 m!3431943))

(assert (=> b!3174854 m!3431943))

(declare-fun m!3431945 () Bool)

(assert (=> b!3174854 m!3431945))

(assert (=> b!3174854 m!3431945))

(declare-fun m!3431947 () Bool)

(assert (=> b!3174854 m!3431947))

(assert (=> d!869462 m!3431919))

(declare-fun m!3431949 () Bool)

(assert (=> d!869462 m!3431949))

(declare-fun m!3431951 () Bool)

(assert (=> d!869462 m!3431951))

(declare-fun m!3431953 () Bool)

(assert (=> d!869462 m!3431953))

(assert (=> d!869462 m!3431951))

(assert (=> d!869462 m!3431933))

(declare-fun m!3431955 () Bool)

(assert (=> d!869462 m!3431955))

(assert (=> d!869462 m!3431927))

(assert (=> d!869462 m!3431917))

(assert (=> d!869462 m!3431919))

(declare-fun m!3431957 () Bool)

(assert (=> bm!230784 m!3431957))

(assert (=> b!3174855 m!3431943))

(declare-fun m!3431959 () Bool)

(assert (=> b!3174855 m!3431959))

(declare-fun m!3431961 () Bool)

(assert (=> b!3174855 m!3431961))

(declare-fun m!3431963 () Bool)

(assert (=> b!3174855 m!3431963))

(assert (=> b!3174855 m!3431927))

(declare-fun m!3431965 () Bool)

(assert (=> b!3174855 m!3431965))

(assert (=> b!3174855 m!3431963))

(declare-fun m!3431967 () Bool)

(assert (=> b!3174855 m!3431967))

(declare-fun m!3431969 () Bool)

(assert (=> b!3174855 m!3431969))

(declare-fun m!3431971 () Bool)

(assert (=> b!3174855 m!3431971))

(assert (=> b!3174848 m!3431927))

(assert (=> b!3174848 m!3431943))

(declare-fun m!3431973 () Bool)

(assert (=> b!3174848 m!3431973))

(declare-fun m!3431975 () Bool)

(assert (=> b!3174848 m!3431975))

(assert (=> b!3174812 d!869462))

(declare-fun b!3174875 () Bool)

(declare-fun e!1977518 () Bool)

(declare-fun call!230798 () Bool)

(assert (=> b!3174875 (= e!1977518 call!230798)))

(declare-fun bm!230793 () Bool)

(declare-fun call!230799 () Bool)

(declare-fun c!533573 () Bool)

(assert (=> bm!230793 (= call!230799 (validRegex!4518 (ite c!533573 (regOne!20147 r!4705) (regOne!20146 r!4705))))))

(declare-fun b!3174876 () Bool)

(declare-fun res!1289993 () Bool)

(declare-fun e!1977519 () Bool)

(assert (=> b!3174876 (=> (not res!1289993) (not e!1977519))))

(assert (=> b!3174876 (= res!1289993 call!230799)))

(declare-fun e!1977515 () Bool)

(assert (=> b!3174876 (= e!1977515 e!1977519)))

(declare-fun d!869464 () Bool)

(declare-fun res!1289994 () Bool)

(declare-fun e!1977517 () Bool)

(assert (=> d!869464 (=> res!1289994 e!1977517)))

(assert (=> d!869464 (= res!1289994 ((_ is ElementMatch!9817) r!4705))))

(assert (=> d!869464 (= (validRegex!4518 r!4705) e!1977517)))

(declare-fun b!3174877 () Bool)

(declare-fun e!1977514 () Bool)

(assert (=> b!3174877 (= e!1977514 e!1977518)))

(declare-fun res!1289991 () Bool)

(assert (=> b!3174877 (=> (not res!1289991) (not e!1977518))))

(assert (=> b!3174877 (= res!1289991 call!230799)))

(declare-fun b!3174878 () Bool)

(declare-fun e!1977520 () Bool)

(declare-fun e!1977516 () Bool)

(assert (=> b!3174878 (= e!1977520 e!1977516)))

(declare-fun res!1289990 () Bool)

(declare-fun nullable!3372 (Regex!9817) Bool)

(assert (=> b!3174878 (= res!1289990 (not (nullable!3372 (reg!10146 r!4705))))))

(assert (=> b!3174878 (=> (not res!1289990) (not e!1977516))))

(declare-fun b!3174879 () Bool)

(assert (=> b!3174879 (= e!1977517 e!1977520)))

(declare-fun c!533574 () Bool)

(assert (=> b!3174879 (= c!533574 ((_ is Star!9817) r!4705))))

(declare-fun b!3174880 () Bool)

(declare-fun call!230800 () Bool)

(assert (=> b!3174880 (= e!1977516 call!230800)))

(declare-fun bm!230794 () Bool)

(assert (=> bm!230794 (= call!230800 (validRegex!4518 (ite c!533574 (reg!10146 r!4705) (ite c!533573 (regTwo!20147 r!4705) (regTwo!20146 r!4705)))))))

(declare-fun b!3174881 () Bool)

(assert (=> b!3174881 (= e!1977520 e!1977515)))

(assert (=> b!3174881 (= c!533573 ((_ is Union!9817) r!4705))))

(declare-fun bm!230795 () Bool)

(assert (=> bm!230795 (= call!230798 call!230800)))

(declare-fun b!3174882 () Bool)

(assert (=> b!3174882 (= e!1977519 call!230798)))

(declare-fun b!3174883 () Bool)

(declare-fun res!1289992 () Bool)

(assert (=> b!3174883 (=> res!1289992 e!1977514)))

(assert (=> b!3174883 (= res!1289992 (not ((_ is Concat!15138) r!4705)))))

(assert (=> b!3174883 (= e!1977515 e!1977514)))

(assert (= (and d!869464 (not res!1289994)) b!3174879))

(assert (= (and b!3174879 c!533574) b!3174878))

(assert (= (and b!3174879 (not c!533574)) b!3174881))

(assert (= (and b!3174878 res!1289990) b!3174880))

(assert (= (and b!3174881 c!533573) b!3174876))

(assert (= (and b!3174881 (not c!533573)) b!3174883))

(assert (= (and b!3174876 res!1289993) b!3174882))

(assert (= (and b!3174883 (not res!1289992)) b!3174877))

(assert (= (and b!3174877 res!1289991) b!3174875))

(assert (= (or b!3174882 b!3174875) bm!230795))

(assert (= (or b!3174876 b!3174877) bm!230793))

(assert (= (or b!3174880 bm!230795) bm!230794))

(declare-fun m!3431977 () Bool)

(assert (=> bm!230793 m!3431977))

(declare-fun m!3431979 () Bool)

(assert (=> b!3174878 m!3431979))

(declare-fun m!3431981 () Bool)

(assert (=> bm!230794 m!3431981))

(assert (=> b!3174803 d!869464))

(declare-fun d!869466 () Bool)

(assert (=> d!869466 (= (array_inv!4858 (_keys!4538 (v!35338 (underlying!8705 (v!35339 (underlying!8706 (cache!4290 thiss!28445))))))) (bvsge (size!26852 (_keys!4538 (v!35338 (underlying!8705 (v!35339 (underlying!8706 (cache!4290 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3174807 d!869466))

(declare-fun d!869468 () Bool)

(assert (=> d!869468 (= (array_inv!4859 (_values!4519 (v!35338 (underlying!8705 (v!35339 (underlying!8706 (cache!4290 thiss!28445))))))) (bvsge (size!26853 (_values!4519 (v!35338 (underlying!8705 (v!35339 (underlying!8706 (cache!4290 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3174807 d!869468))

(declare-fun tp!1003722 () Bool)

(declare-fun tp!1003723 () Bool)

(declare-fun b!3174888 () Bool)

(declare-fun tp!1003721 () Bool)

(declare-fun e!1977523 () Bool)

(assert (=> b!3174888 (= e!1977523 (and tp!1003721 tp_is_empty!17197 tp!1003722 tp!1003723))))

(assert (=> b!3174805 (= tp!1003706 e!1977523)))

(assert (= (and b!3174805 ((_ is Cons!35546) mapDefault!19184)) b!3174888))

(declare-fun b!3174901 () Bool)

(declare-fun e!1977526 () Bool)

(declare-fun tp!1003735 () Bool)

(assert (=> b!3174901 (= e!1977526 tp!1003735)))

(assert (=> b!3174809 (= tp!1003705 e!1977526)))

(declare-fun b!3174900 () Bool)

(declare-fun tp!1003737 () Bool)

(declare-fun tp!1003734 () Bool)

(assert (=> b!3174900 (= e!1977526 (and tp!1003737 tp!1003734))))

(declare-fun b!3174899 () Bool)

(assert (=> b!3174899 (= e!1977526 tp_is_empty!17197)))

(declare-fun b!3174902 () Bool)

(declare-fun tp!1003736 () Bool)

(declare-fun tp!1003738 () Bool)

(assert (=> b!3174902 (= e!1977526 (and tp!1003736 tp!1003738))))

(assert (= (and b!3174809 ((_ is ElementMatch!9817) (regOne!20146 r!4705))) b!3174899))

(assert (= (and b!3174809 ((_ is Concat!15138) (regOne!20146 r!4705))) b!3174900))

(assert (= (and b!3174809 ((_ is Star!9817) (regOne!20146 r!4705))) b!3174901))

(assert (= (and b!3174809 ((_ is Union!9817) (regOne!20146 r!4705))) b!3174902))

(declare-fun b!3174905 () Bool)

(declare-fun e!1977527 () Bool)

(declare-fun tp!1003740 () Bool)

(assert (=> b!3174905 (= e!1977527 tp!1003740)))

(assert (=> b!3174809 (= tp!1003711 e!1977527)))

(declare-fun b!3174904 () Bool)

(declare-fun tp!1003742 () Bool)

(declare-fun tp!1003739 () Bool)

(assert (=> b!3174904 (= e!1977527 (and tp!1003742 tp!1003739))))

(declare-fun b!3174903 () Bool)

(assert (=> b!3174903 (= e!1977527 tp_is_empty!17197)))

(declare-fun b!3174906 () Bool)

(declare-fun tp!1003741 () Bool)

(declare-fun tp!1003743 () Bool)

(assert (=> b!3174906 (= e!1977527 (and tp!1003741 tp!1003743))))

(assert (= (and b!3174809 ((_ is ElementMatch!9817) (regTwo!20146 r!4705))) b!3174903))

(assert (= (and b!3174809 ((_ is Concat!15138) (regTwo!20146 r!4705))) b!3174904))

(assert (= (and b!3174809 ((_ is Star!9817) (regTwo!20146 r!4705))) b!3174905))

(assert (= (and b!3174809 ((_ is Union!9817) (regTwo!20146 r!4705))) b!3174906))

(declare-fun condMapEmpty!19187 () Bool)

(declare-fun mapDefault!19187 () List!35670)

(assert (=> mapNonEmpty!19184 (= condMapEmpty!19187 (= mapRest!19184 ((as const (Array (_ BitVec 32) List!35670)) mapDefault!19187)))))

(declare-fun e!1977533 () Bool)

(declare-fun mapRes!19187 () Bool)

(assert (=> mapNonEmpty!19184 (= tp!1003703 (and e!1977533 mapRes!19187))))

(declare-fun tp!1003760 () Bool)

(declare-fun b!3174914 () Bool)

(declare-fun tp!1003759 () Bool)

(declare-fun tp!1003764 () Bool)

(assert (=> b!3174914 (= e!1977533 (and tp!1003760 tp_is_empty!17197 tp!1003759 tp!1003764))))

(declare-fun mapNonEmpty!19187 () Bool)

(declare-fun tp!1003762 () Bool)

(declare-fun e!1977532 () Bool)

(assert (=> mapNonEmpty!19187 (= mapRes!19187 (and tp!1003762 e!1977532))))

(declare-fun mapRest!19187 () (Array (_ BitVec 32) List!35670))

(declare-fun mapValue!19187 () List!35670)

(declare-fun mapKey!19187 () (_ BitVec 32))

(assert (=> mapNonEmpty!19187 (= mapRest!19184 (store mapRest!19187 mapKey!19187 mapValue!19187))))

(declare-fun tp!1003763 () Bool)

(declare-fun b!3174913 () Bool)

(declare-fun tp!1003758 () Bool)

(declare-fun tp!1003761 () Bool)

(assert (=> b!3174913 (= e!1977532 (and tp!1003761 tp_is_empty!17197 tp!1003758 tp!1003763))))

(declare-fun mapIsEmpty!19187 () Bool)

(assert (=> mapIsEmpty!19187 mapRes!19187))

(assert (= (and mapNonEmpty!19184 condMapEmpty!19187) mapIsEmpty!19187))

(assert (= (and mapNonEmpty!19184 (not condMapEmpty!19187)) mapNonEmpty!19187))

(assert (= (and mapNonEmpty!19187 ((_ is Cons!35546) mapValue!19187)) b!3174913))

(assert (= (and mapNonEmpty!19184 ((_ is Cons!35546) mapDefault!19187)) b!3174914))

(declare-fun m!3431983 () Bool)

(assert (=> mapNonEmpty!19187 m!3431983))

(declare-fun b!3174915 () Bool)

(declare-fun e!1977534 () Bool)

(declare-fun tp!1003765 () Bool)

(declare-fun tp!1003767 () Bool)

(declare-fun tp!1003766 () Bool)

(assert (=> b!3174915 (= e!1977534 (and tp!1003765 tp_is_empty!17197 tp!1003766 tp!1003767))))

(assert (=> mapNonEmpty!19184 (= tp!1003714 e!1977534)))

(assert (= (and mapNonEmpty!19184 ((_ is Cons!35546) mapValue!19184)) b!3174915))

(declare-fun b!3174918 () Bool)

(declare-fun e!1977535 () Bool)

(declare-fun tp!1003769 () Bool)

(assert (=> b!3174918 (= e!1977535 tp!1003769)))

(assert (=> b!3174806 (= tp!1003709 e!1977535)))

(declare-fun b!3174917 () Bool)

(declare-fun tp!1003771 () Bool)

(declare-fun tp!1003768 () Bool)

(assert (=> b!3174917 (= e!1977535 (and tp!1003771 tp!1003768))))

(declare-fun b!3174916 () Bool)

(assert (=> b!3174916 (= e!1977535 tp_is_empty!17197)))

(declare-fun b!3174919 () Bool)

(declare-fun tp!1003770 () Bool)

(declare-fun tp!1003772 () Bool)

(assert (=> b!3174919 (= e!1977535 (and tp!1003770 tp!1003772))))

(assert (= (and b!3174806 ((_ is ElementMatch!9817) (reg!10146 r!4705))) b!3174916))

(assert (= (and b!3174806 ((_ is Concat!15138) (reg!10146 r!4705))) b!3174917))

(assert (= (and b!3174806 ((_ is Star!9817) (reg!10146 r!4705))) b!3174918))

(assert (= (and b!3174806 ((_ is Union!9817) (reg!10146 r!4705))) b!3174919))

(declare-fun b!3174922 () Bool)

(declare-fun e!1977536 () Bool)

(declare-fun tp!1003774 () Bool)

(assert (=> b!3174922 (= e!1977536 tp!1003774)))

(assert (=> b!3174802 (= tp!1003708 e!1977536)))

(declare-fun b!3174921 () Bool)

(declare-fun tp!1003776 () Bool)

(declare-fun tp!1003773 () Bool)

(assert (=> b!3174921 (= e!1977536 (and tp!1003776 tp!1003773))))

(declare-fun b!3174920 () Bool)

(assert (=> b!3174920 (= e!1977536 tp_is_empty!17197)))

(declare-fun b!3174923 () Bool)

(declare-fun tp!1003775 () Bool)

(declare-fun tp!1003777 () Bool)

(assert (=> b!3174923 (= e!1977536 (and tp!1003775 tp!1003777))))

(assert (= (and b!3174802 ((_ is ElementMatch!9817) (regOne!20147 r!4705))) b!3174920))

(assert (= (and b!3174802 ((_ is Concat!15138) (regOne!20147 r!4705))) b!3174921))

(assert (= (and b!3174802 ((_ is Star!9817) (regOne!20147 r!4705))) b!3174922))

(assert (= (and b!3174802 ((_ is Union!9817) (regOne!20147 r!4705))) b!3174923))

(declare-fun b!3174926 () Bool)

(declare-fun e!1977537 () Bool)

(declare-fun tp!1003779 () Bool)

(assert (=> b!3174926 (= e!1977537 tp!1003779)))

(assert (=> b!3174802 (= tp!1003710 e!1977537)))

(declare-fun b!3174925 () Bool)

(declare-fun tp!1003781 () Bool)

(declare-fun tp!1003778 () Bool)

(assert (=> b!3174925 (= e!1977537 (and tp!1003781 tp!1003778))))

(declare-fun b!3174924 () Bool)

(assert (=> b!3174924 (= e!1977537 tp_is_empty!17197)))

(declare-fun b!3174927 () Bool)

(declare-fun tp!1003780 () Bool)

(declare-fun tp!1003782 () Bool)

(assert (=> b!3174927 (= e!1977537 (and tp!1003780 tp!1003782))))

(assert (= (and b!3174802 ((_ is ElementMatch!9817) (regTwo!20147 r!4705))) b!3174924))

(assert (= (and b!3174802 ((_ is Concat!15138) (regTwo!20147 r!4705))) b!3174925))

(assert (= (and b!3174802 ((_ is Star!9817) (regTwo!20147 r!4705))) b!3174926))

(assert (= (and b!3174802 ((_ is Union!9817) (regTwo!20147 r!4705))) b!3174927))

(declare-fun b!3174928 () Bool)

(declare-fun tp!1003785 () Bool)

(declare-fun tp!1003784 () Bool)

(declare-fun tp!1003783 () Bool)

(declare-fun e!1977538 () Bool)

(assert (=> b!3174928 (= e!1977538 (and tp!1003783 tp_is_empty!17197 tp!1003784 tp!1003785))))

(assert (=> b!3174807 (= tp!1003712 e!1977538)))

(assert (= (and b!3174807 ((_ is Cons!35546) (zeroValue!4497 (v!35338 (underlying!8705 (v!35339 (underlying!8706 (cache!4290 thiss!28445)))))))) b!3174928))

(declare-fun tp!1003786 () Bool)

(declare-fun tp!1003788 () Bool)

(declare-fun e!1977539 () Bool)

(declare-fun b!3174929 () Bool)

(declare-fun tp!1003787 () Bool)

(assert (=> b!3174929 (= e!1977539 (and tp!1003786 tp_is_empty!17197 tp!1003787 tp!1003788))))

(assert (=> b!3174807 (= tp!1003707 e!1977539)))

(assert (= (and b!3174807 ((_ is Cons!35546) (minValue!4497 (v!35338 (underlying!8705 (v!35339 (underlying!8706 (cache!4290 thiss!28445)))))))) b!3174929))

(check-sat (not b!3174906) (not b!3174914) (not bm!230786) (not b!3174819) tp_is_empty!17197 (not b!3174848) (not b!3174878) (not b_next!84137) (not b!3174851) (not d!869462) (not b!3174915) (not bm!230785) (not b!3174854) (not bm!230783) b_and!209727 (not b!3174913) (not b!3174917) (not b!3174900) (not b!3174921) (not b!3174927) (not b!3174925) (not b!3174902) (not b!3174929) (not b!3174926) (not b!3174918) (not bm!230781) (not b!3174919) (not b!3174923) (not bm!230782) (not b_next!84139) (not b!3174850) b_and!209729 (not b!3174888) (not b!3174922) (not bm!230784) (not mapNonEmpty!19187) (not d!869458) (not b!3174823) (not b!3174820) (not bm!230794) (not b!3174905) (not b!3174904) (not b!3174901) (not bm!230793) (not b!3174928) (not b!3174855))
(check-sat b_and!209727 b_and!209729 (not b_next!84137) (not b_next!84139))
