; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241838 () Bool)

(assert start!241838)

(declare-fun b!2478922 () Bool)

(declare-fun b_free!72113 () Bool)

(declare-fun b_next!72817 () Bool)

(assert (=> b!2478922 (= b_free!72113 (not b_next!72817))))

(declare-fun tp!793331 () Bool)

(declare-fun b_and!188351 () Bool)

(assert (=> b!2478922 (= tp!793331 b_and!188351)))

(declare-fun b!2478932 () Bool)

(declare-fun b_free!72115 () Bool)

(declare-fun b_next!72819 () Bool)

(assert (=> b!2478932 (= b_free!72115 (not b_next!72819))))

(declare-fun tp!793330 () Bool)

(declare-fun b_and!188353 () Bool)

(assert (=> b!2478932 (= tp!793330 b_and!188353)))

(declare-fun tp!793333 () Bool)

(declare-fun e!1573191 () Bool)

(declare-fun e!1573193 () Bool)

(declare-fun tp!793334 () Bool)

(declare-datatypes ((Hashable!3224 0))(
  ( (HashableExt!3223 (__x!18848 Int)) )
))
(declare-datatypes ((K!5370 0))(
  ( (K!5371 (val!8771 Int)) )
))
(declare-datatypes ((V!5572 0))(
  ( (V!5573 (val!8772 Int)) )
))
(declare-datatypes ((tuple2!28530 0))(
  ( (tuple2!28531 (_1!16806 K!5370) (_2!16806 V!5572)) )
))
(declare-datatypes ((List!29118 0))(
  ( (Nil!29018) (Cons!29018 (h!34420 tuple2!28530) (t!210767 List!29118)) )
))
(declare-datatypes ((array!11705 0))(
  ( (array!11706 (arr!5218 (Array (_ BitVec 32) List!29118)) (size!22637 (_ BitVec 32))) )
))
(declare-datatypes ((array!11707 0))(
  ( (array!11708 (arr!5219 (Array (_ BitVec 32) (_ BitVec 64))) (size!22638 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6628 0))(
  ( (LongMapFixedSize!6629 (defaultEntry!3688 Int) (mask!8460 (_ BitVec 32)) (extraKeys!3562 (_ BitVec 32)) (zeroValue!3572 List!29118) (minValue!3572 List!29118) (_size!6675 (_ BitVec 32)) (_keys!3611 array!11707) (_values!3594 array!11705) (_vacant!3375 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13073 0))(
  ( (Cell!13074 (v!31316 LongMapFixedSize!6628)) )
))
(declare-datatypes ((MutLongMap!3314 0))(
  ( (LongMap!3314 (underlying!6835 Cell!13073)) (MutLongMapExt!3313 (__x!18849 Int)) )
))
(declare-datatypes ((Cell!13075 0))(
  ( (Cell!13076 (v!31317 MutLongMap!3314)) )
))
(declare-datatypes ((MutableMap!3224 0))(
  ( (MutableMapExt!3223 (__x!18850 Int)) (HashMap!3224 (underlying!6836 Cell!13075) (hashF!5162 Hashable!3224) (_size!6676 (_ BitVec 32)) (defaultValue!3386 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3224)

(declare-fun array_inv!3743 (array!11707) Bool)

(declare-fun array_inv!3744 (array!11705) Bool)

(assert (=> b!2478922 (= e!1573191 (and tp!793331 tp!793334 tp!793333 (array_inv!3743 (_keys!3611 (v!31316 (underlying!6835 (v!31317 (underlying!6836 thiss!42540)))))) (array_inv!3744 (_values!3594 (v!31316 (underlying!6835 (v!31317 (underlying!6836 thiss!42540)))))) e!1573193))))

(declare-fun b!2478923 () Bool)

(declare-fun res!1049261 () Bool)

(declare-fun e!1573190 () Bool)

(assert (=> b!2478923 (=> (not res!1049261) (not e!1573190))))

(declare-fun key!2246 () K!5370)

(declare-fun contains!5016 (MutableMap!3224 K!5370) Bool)

(assert (=> b!2478923 (= res!1049261 (contains!5016 thiss!42540 key!2246))))

(declare-fun b!2478924 () Bool)

(declare-fun e!1573189 () Bool)

(declare-fun e!1573186 () Bool)

(assert (=> b!2478924 (= e!1573189 e!1573186)))

(declare-fun b!2478925 () Bool)

(declare-fun res!1049263 () Bool)

(assert (=> b!2478925 (=> (not res!1049263) (not e!1573190))))

(declare-fun valid!2525 (MutableMap!3224) Bool)

(assert (=> b!2478925 (= res!1049263 (valid!2525 thiss!42540))))

(declare-fun b!2478926 () Bool)

(declare-fun e!1573188 () Bool)

(declare-datatypes ((tuple2!28532 0))(
  ( (tuple2!28533 (_1!16807 (_ BitVec 64)) (_2!16807 List!29118)) )
))
(declare-datatypes ((List!29119 0))(
  ( (Nil!29019) (Cons!29019 (h!34421 tuple2!28532) (t!210768 List!29119)) )
))
(declare-datatypes ((ListLongMap!451 0))(
  ( (ListLongMap!452 (toList!1506 List!29119)) )
))
(declare-fun lt!885912 () ListLongMap!451)

(declare-fun lambda!93604 () Int)

(declare-fun forall!5941 (List!29119 Int) Bool)

(assert (=> b!2478926 (= e!1573188 (forall!5941 (toList!1506 lt!885912) lambda!93604))))

(declare-fun mapIsEmpty!15388 () Bool)

(declare-fun mapRes!15388 () Bool)

(assert (=> mapIsEmpty!15388 mapRes!15388))

(declare-fun b!2478928 () Bool)

(assert (=> b!2478928 (= e!1573186 e!1573191)))

(declare-fun b!2478929 () Bool)

(declare-fun tp!793328 () Bool)

(assert (=> b!2478929 (= e!1573193 (and tp!793328 mapRes!15388))))

(declare-fun condMapEmpty!15388 () Bool)

(declare-fun mapDefault!15388 () List!29118)

(assert (=> b!2478929 (= condMapEmpty!15388 (= (arr!5218 (_values!3594 (v!31316 (underlying!6835 (v!31317 (underlying!6836 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29118)) mapDefault!15388)))))

(declare-fun mapNonEmpty!15388 () Bool)

(declare-fun tp!793332 () Bool)

(declare-fun tp!793329 () Bool)

(assert (=> mapNonEmpty!15388 (= mapRes!15388 (and tp!793332 tp!793329))))

(declare-fun mapRest!15388 () (Array (_ BitVec 32) List!29118))

(declare-fun mapKey!15388 () (_ BitVec 32))

(declare-fun mapValue!15388 () List!29118)

(assert (=> mapNonEmpty!15388 (= (arr!5218 (_values!3594 (v!31316 (underlying!6835 (v!31317 (underlying!6836 thiss!42540)))))) (store mapRest!15388 mapKey!15388 mapValue!15388))))

(declare-fun res!1049262 () Bool)

(assert (=> start!241838 (=> (not res!1049262) (not e!1573190))))

(get-info :version)

(assert (=> start!241838 (= res!1049262 ((_ is HashMap!3224) thiss!42540))))

(assert (=> start!241838 e!1573190))

(declare-fun e!1573184 () Bool)

(assert (=> start!241838 e!1573184))

(declare-fun tp_is_empty!12143 () Bool)

(assert (=> start!241838 tp_is_empty!12143))

(declare-fun b!2478927 () Bool)

(declare-fun e!1573187 () Bool)

(assert (=> b!2478927 (= e!1573190 (not e!1573187))))

(declare-fun res!1049264 () Bool)

(assert (=> b!2478927 (=> res!1049264 e!1573187)))

(declare-datatypes ((tuple2!28534 0))(
  ( (tuple2!28535 (_1!16808 Bool) (_2!16808 MutLongMap!3314)) )
))
(declare-fun lt!885905 () tuple2!28534)

(assert (=> b!2478927 (= res!1049264 (not (_1!16808 lt!885905)))))

(declare-fun lt!885900 () List!29118)

(declare-fun noDuplicateKeys!55 (List!29118) Bool)

(assert (=> b!2478927 (noDuplicateKeys!55 lt!885900)))

(declare-datatypes ((Unit!42429 0))(
  ( (Unit!42430) )
))
(declare-fun lt!885909 () Unit!42429)

(declare-fun lt!885906 () List!29118)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!41 (List!29118 K!5370) Unit!42429)

(assert (=> b!2478927 (= lt!885909 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!41 lt!885906 key!2246))))

(declare-datatypes ((tuple2!28536 0))(
  ( (tuple2!28537 (_1!16809 Unit!42429) (_2!16809 MutableMap!3224)) )
))
(declare-fun lt!885908 () tuple2!28536)

(declare-fun lt!885902 () Cell!13075)

(declare-fun Unit!42431 () Unit!42429)

(declare-fun Unit!42432 () Unit!42429)

(assert (=> b!2478927 (= lt!885908 (ite (_1!16808 lt!885905) (tuple2!28537 Unit!42431 (HashMap!3224 lt!885902 (hashF!5162 thiss!42540) (bvsub (_size!6676 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3386 thiss!42540))) (tuple2!28537 Unit!42432 (HashMap!3224 lt!885902 (hashF!5162 thiss!42540) (_size!6676 thiss!42540) (defaultValue!3386 thiss!42540)))))))

(assert (=> b!2478927 (= lt!885902 (Cell!13076 (_2!16808 lt!885905)))))

(declare-fun lt!885903 () (_ BitVec 64))

(declare-fun update!158 (MutLongMap!3314 (_ BitVec 64) List!29118) tuple2!28534)

(assert (=> b!2478927 (= lt!885905 (update!158 (v!31317 (underlying!6836 thiss!42540)) lt!885903 lt!885900))))

(declare-fun removePairForKey!45 (List!29118 K!5370) List!29118)

(assert (=> b!2478927 (= lt!885900 (removePairForKey!45 lt!885906 key!2246))))

(declare-datatypes ((ListMap!991 0))(
  ( (ListMap!992 (toList!1507 List!29118)) )
))
(declare-fun lt!885907 () ListMap!991)

(declare-fun map!6100 (MutableMap!3224) ListMap!991)

(assert (=> b!2478927 (= lt!885907 (map!6100 thiss!42540))))

(declare-fun lt!885901 () Unit!42429)

(declare-fun forallContained!826 (List!29119 Int tuple2!28532) Unit!42429)

(assert (=> b!2478927 (= lt!885901 (forallContained!826 (toList!1506 lt!885912) lambda!93604 (tuple2!28533 lt!885903 lt!885906)))))

(declare-fun map!6101 (MutLongMap!3314) ListLongMap!451)

(assert (=> b!2478927 (= lt!885912 (map!6101 (v!31317 (underlying!6836 thiss!42540))))))

(declare-fun apply!6871 (MutLongMap!3314 (_ BitVec 64)) List!29118)

(assert (=> b!2478927 (= lt!885906 (apply!6871 (v!31317 (underlying!6836 thiss!42540)) lt!885903))))

(declare-fun hash!642 (Hashable!3224 K!5370) (_ BitVec 64))

(assert (=> b!2478927 (= lt!885903 (hash!642 (hashF!5162 thiss!42540) key!2246))))

(declare-fun b!2478930 () Bool)

(declare-fun e!1573192 () Bool)

(declare-fun lt!885911 () MutLongMap!3314)

(assert (=> b!2478930 (= e!1573192 (and e!1573189 ((_ is LongMap!3314) lt!885911)))))

(assert (=> b!2478930 (= lt!885911 (v!31317 (underlying!6836 thiss!42540)))))

(declare-fun b!2478931 () Bool)

(declare-fun res!1049266 () Bool)

(assert (=> b!2478931 (=> res!1049266 e!1573188)))

(declare-fun allKeysSameHashInMap!138 (ListLongMap!451 Hashable!3224) Bool)

(assert (=> b!2478931 (= res!1049266 (not (allKeysSameHashInMap!138 lt!885912 (hashF!5162 (_2!16809 lt!885908)))))))

(assert (=> b!2478932 (= e!1573184 (and e!1573192 tp!793330))))

(declare-fun b!2478933 () Bool)

(assert (=> b!2478933 (= e!1573187 e!1573188)))

(declare-fun res!1049265 () Bool)

(assert (=> b!2478933 (=> res!1049265 e!1573188)))

(assert (=> b!2478933 (= res!1049265 (not (forall!5941 (toList!1506 lt!885912) lambda!93604)))))

(declare-fun allKeysSameHash!43 (List!29118 (_ BitVec 64) Hashable!3224) Bool)

(assert (=> b!2478933 (allKeysSameHash!43 lt!885900 lt!885903 (hashF!5162 (_2!16809 lt!885908)))))

(declare-fun lt!885910 () Unit!42429)

(declare-fun lemmaRemovePairForKeyPreservesHash!37 (List!29118 K!5370 (_ BitVec 64) Hashable!3224) Unit!42429)

(assert (=> b!2478933 (= lt!885910 (lemmaRemovePairForKeyPreservesHash!37 lt!885906 key!2246 lt!885903 (hashF!5162 (_2!16809 lt!885908))))))

(assert (=> b!2478933 (allKeysSameHash!43 lt!885906 lt!885903 (hashF!5162 (_2!16809 lt!885908)))))

(declare-fun lt!885904 () Unit!42429)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!39 (List!29119 (_ BitVec 64) List!29118 Hashable!3224) Unit!42429)

(assert (=> b!2478933 (= lt!885904 (lemmaInLongMapAllKeySameHashThenForTuple!39 (toList!1506 lt!885912) lt!885903 lt!885906 (hashF!5162 (_2!16809 lt!885908))))))

(assert (= (and start!241838 res!1049262) b!2478925))

(assert (= (and b!2478925 res!1049263) b!2478923))

(assert (= (and b!2478923 res!1049261) b!2478927))

(assert (= (and b!2478927 (not res!1049264)) b!2478933))

(assert (= (and b!2478933 (not res!1049265)) b!2478931))

(assert (= (and b!2478931 (not res!1049266)) b!2478926))

(assert (= (and b!2478929 condMapEmpty!15388) mapIsEmpty!15388))

(assert (= (and b!2478929 (not condMapEmpty!15388)) mapNonEmpty!15388))

(assert (= b!2478922 b!2478929))

(assert (= b!2478928 b!2478922))

(assert (= b!2478924 b!2478928))

(assert (= (and b!2478930 ((_ is LongMap!3314) (v!31317 (underlying!6836 thiss!42540)))) b!2478924))

(assert (= b!2478932 b!2478930))

(assert (= (and start!241838 ((_ is HashMap!3224) thiss!42540)) b!2478932))

(declare-fun m!2846537 () Bool)

(assert (=> b!2478931 m!2846537))

(declare-fun m!2846539 () Bool)

(assert (=> b!2478927 m!2846539))

(declare-fun m!2846541 () Bool)

(assert (=> b!2478927 m!2846541))

(declare-fun m!2846543 () Bool)

(assert (=> b!2478927 m!2846543))

(declare-fun m!2846545 () Bool)

(assert (=> b!2478927 m!2846545))

(declare-fun m!2846547 () Bool)

(assert (=> b!2478927 m!2846547))

(declare-fun m!2846549 () Bool)

(assert (=> b!2478927 m!2846549))

(declare-fun m!2846551 () Bool)

(assert (=> b!2478927 m!2846551))

(declare-fun m!2846553 () Bool)

(assert (=> b!2478927 m!2846553))

(declare-fun m!2846555 () Bool)

(assert (=> b!2478927 m!2846555))

(declare-fun m!2846557 () Bool)

(assert (=> b!2478933 m!2846557))

(declare-fun m!2846559 () Bool)

(assert (=> b!2478933 m!2846559))

(declare-fun m!2846561 () Bool)

(assert (=> b!2478933 m!2846561))

(declare-fun m!2846563 () Bool)

(assert (=> b!2478933 m!2846563))

(declare-fun m!2846565 () Bool)

(assert (=> b!2478933 m!2846565))

(declare-fun m!2846567 () Bool)

(assert (=> b!2478922 m!2846567))

(declare-fun m!2846569 () Bool)

(assert (=> b!2478922 m!2846569))

(declare-fun m!2846571 () Bool)

(assert (=> b!2478923 m!2846571))

(assert (=> b!2478926 m!2846557))

(declare-fun m!2846573 () Bool)

(assert (=> b!2478925 m!2846573))

(declare-fun m!2846575 () Bool)

(assert (=> mapNonEmpty!15388 m!2846575))

(check-sat (not b!2478929) (not b_next!72819) (not b!2478927) tp_is_empty!12143 (not mapNonEmpty!15388) (not b!2478925) (not b!2478926) (not b_next!72817) (not b!2478922) (not b!2478931) b_and!188351 (not b!2478923) (not b!2478933) b_and!188353)
(check-sat b_and!188353 b_and!188351 (not b_next!72817) (not b_next!72819))
