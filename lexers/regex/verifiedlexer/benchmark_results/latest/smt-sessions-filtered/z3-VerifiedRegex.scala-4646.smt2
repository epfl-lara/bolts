; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242754 () Bool)

(assert start!242754)

(declare-fun b!2485433 () Bool)

(declare-fun b_free!72505 () Bool)

(declare-fun b_next!73209 () Bool)

(assert (=> b!2485433 (= b_free!72505 (not b_next!73209))))

(declare-fun tp!795695 () Bool)

(declare-fun b_and!188783 () Bool)

(assert (=> b!2485433 (= tp!795695 b_and!188783)))

(declare-fun b!2485431 () Bool)

(declare-fun b_free!72507 () Bool)

(declare-fun b_next!73211 () Bool)

(assert (=> b!2485431 (= b_free!72507 (not b_next!73211))))

(declare-fun tp!795693 () Bool)

(declare-fun b_and!188785 () Bool)

(assert (=> b!2485431 (= tp!795693 b_and!188785)))

(declare-fun b!2485430 () Bool)

(declare-fun e!1578098 () Bool)

(declare-fun tp!795690 () Bool)

(declare-fun mapRes!15741 () Bool)

(assert (=> b!2485430 (= e!1578098 (and tp!795690 mapRes!15741))))

(declare-fun condMapEmpty!15741 () Bool)

(declare-datatypes ((Hashable!3322 0))(
  ( (HashableExt!3321 (__x!19142 Int)) )
))
(declare-datatypes ((K!5615 0))(
  ( (K!5616 (val!8967 Int)) )
))
(declare-datatypes ((V!5817 0))(
  ( (V!5818 (val!8968 Int)) )
))
(declare-datatypes ((tuple2!29154 0))(
  ( (tuple2!29155 (_1!17119 K!5615) (_2!17119 V!5817)) )
))
(declare-datatypes ((List!29299 0))(
  ( (Nil!29199) (Cons!29199 (h!34613 tuple2!29154) (t!210982 List!29299)) )
))
(declare-datatypes ((array!12135 0))(
  ( (array!12136 (arr!5414 (Array (_ BitVec 32) List!29299)) (size!22833 (_ BitVec 32))) )
))
(declare-datatypes ((array!12137 0))(
  ( (array!12138 (arr!5415 (Array (_ BitVec 32) (_ BitVec 64))) (size!22834 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6824 0))(
  ( (LongMapFixedSize!6825 (defaultEntry!3786 Int) (mask!8607 (_ BitVec 32)) (extraKeys!3660 (_ BitVec 32)) (zeroValue!3670 List!29299) (minValue!3670 List!29299) (_size!6871 (_ BitVec 32)) (_keys!3709 array!12137) (_values!3692 array!12135) (_vacant!3473 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13465 0))(
  ( (Cell!13466 (v!31623 LongMapFixedSize!6824)) )
))
(declare-datatypes ((MutLongMap!3412 0))(
  ( (LongMap!3412 (underlying!7031 Cell!13465)) (MutLongMapExt!3411 (__x!19143 Int)) )
))
(declare-datatypes ((Cell!13467 0))(
  ( (Cell!13468 (v!31624 MutLongMap!3412)) )
))
(declare-datatypes ((MutableMap!3322 0))(
  ( (MutableMapExt!3321 (__x!19144 Int)) (HashMap!3322 (underlying!7032 Cell!13467) (hashF!5318 Hashable!3322) (_size!6872 (_ BitVec 32)) (defaultValue!3484 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3322)

(declare-fun mapDefault!15741 () List!29299)

(assert (=> b!2485430 (= condMapEmpty!15741 (= (arr!5414 (_values!3692 (v!31623 (underlying!7031 (v!31624 (underlying!7032 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29299)) mapDefault!15741)))))

(declare-fun res!1052012 () Bool)

(declare-fun e!1578108 () Bool)

(assert (=> start!242754 (=> (not res!1052012) (not e!1578108))))

(get-info :version)

(assert (=> start!242754 (= res!1052012 ((_ is HashMap!3322) thiss!42540))))

(assert (=> start!242754 e!1578108))

(declare-fun e!1578102 () Bool)

(assert (=> start!242754 e!1578102))

(declare-fun tp_is_empty!12377 () Bool)

(assert (=> start!242754 tp_is_empty!12377))

(declare-fun e!1578100 () Bool)

(assert (=> b!2485431 (= e!1578102 (and e!1578100 tp!795693))))

(declare-fun b!2485432 () Bool)

(declare-fun e!1578099 () Bool)

(declare-datatypes ((tuple2!29156 0))(
  ( (tuple2!29157 (_1!17120 (_ BitVec 64)) (_2!17120 List!29299)) )
))
(declare-datatypes ((List!29300 0))(
  ( (Nil!29200) (Cons!29200 (h!34614 tuple2!29156) (t!210983 List!29300)) )
))
(declare-datatypes ((ListLongMap!609 0))(
  ( (ListLongMap!610 (toList!1658 List!29300)) )
))
(declare-fun lt!891601 () ListLongMap!609)

(declare-datatypes ((Unit!42828 0))(
  ( (Unit!42829) )
))
(declare-datatypes ((tuple2!29158 0))(
  ( (tuple2!29159 (_1!17121 Unit!42828) (_2!17121 MutableMap!3322)) )
))
(declare-fun lt!891608 () tuple2!29158)

(declare-fun allKeysSameHashInMap!189 (ListLongMap!609 Hashable!3322) Bool)

(assert (=> b!2485432 (= e!1578099 (allKeysSameHashInMap!189 lt!891601 (hashF!5318 (_2!17121 lt!891608))))))

(declare-fun mapNonEmpty!15741 () Bool)

(declare-fun tp!795694 () Bool)

(declare-fun tp!795692 () Bool)

(assert (=> mapNonEmpty!15741 (= mapRes!15741 (and tp!795694 tp!795692))))

(declare-fun mapRest!15741 () (Array (_ BitVec 32) List!29299))

(declare-fun mapValue!15741 () List!29299)

(declare-fun mapKey!15741 () (_ BitVec 32))

(assert (=> mapNonEmpty!15741 (= (arr!5414 (_values!3692 (v!31623 (underlying!7031 (v!31624 (underlying!7032 thiss!42540)))))) (store mapRest!15741 mapKey!15741 mapValue!15741))))

(declare-fun e!1578104 () Bool)

(declare-fun tp!795696 () Bool)

(declare-fun tp!795691 () Bool)

(declare-fun array_inv!3891 (array!12137) Bool)

(declare-fun array_inv!3892 (array!12135) Bool)

(assert (=> b!2485433 (= e!1578104 (and tp!795695 tp!795691 tp!795696 (array_inv!3891 (_keys!3709 (v!31623 (underlying!7031 (v!31624 (underlying!7032 thiss!42540)))))) (array_inv!3892 (_values!3692 (v!31623 (underlying!7031 (v!31624 (underlying!7032 thiss!42540)))))) e!1578098))))

(declare-fun b!2485434 () Bool)

(declare-fun e!1578103 () Bool)

(declare-fun e!1578107 () Bool)

(assert (=> b!2485434 (= e!1578103 e!1578107)))

(declare-fun mapIsEmpty!15741 () Bool)

(assert (=> mapIsEmpty!15741 mapRes!15741))

(declare-fun b!2485435 () Bool)

(declare-fun res!1052008 () Bool)

(declare-fun e!1578101 () Bool)

(assert (=> b!2485435 (=> (not res!1052008) (not e!1578101))))

(declare-fun valid!2621 (MutableMap!3322) Bool)

(assert (=> b!2485435 (= res!1052008 (valid!2621 (_2!17121 lt!891608)))))

(declare-fun b!2485436 () Bool)

(declare-datatypes ((ListMap!1137 0))(
  ( (ListMap!1138 (toList!1659 List!29299)) )
))
(declare-fun lt!891613 () ListMap!1137)

(declare-fun key!2246 () K!5615)

(declare-fun contains!5199 (ListMap!1137 K!5615) Bool)

(assert (=> b!2485436 (= e!1578101 (contains!5199 lt!891613 key!2246))))

(declare-fun b!2485437 () Bool)

(declare-fun lt!891610 () MutLongMap!3412)

(assert (=> b!2485437 (= e!1578100 (and e!1578103 ((_ is LongMap!3412) lt!891610)))))

(assert (=> b!2485437 (= lt!891610 (v!31624 (underlying!7032 thiss!42540)))))

(declare-fun b!2485438 () Bool)

(declare-fun e!1578105 () Bool)

(assert (=> b!2485438 (= e!1578108 (not e!1578105))))

(declare-fun res!1052013 () Bool)

(assert (=> b!2485438 (=> res!1052013 e!1578105)))

(declare-datatypes ((tuple2!29160 0))(
  ( (tuple2!29161 (_1!17122 Bool) (_2!17122 MutLongMap!3412)) )
))
(declare-fun lt!891602 () tuple2!29160)

(assert (=> b!2485438 (= res!1052013 (not (_1!17122 lt!891602)))))

(declare-fun lt!891604 () List!29299)

(declare-fun noDuplicateKeys!114 (List!29299) Bool)

(assert (=> b!2485438 (noDuplicateKeys!114 lt!891604)))

(declare-fun lt!891600 () Unit!42828)

(declare-fun lt!891599 () List!29299)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!94 (List!29299 K!5615) Unit!42828)

(assert (=> b!2485438 (= lt!891600 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!94 lt!891599 key!2246))))

(declare-fun lt!891611 () Cell!13467)

(declare-fun Unit!42830 () Unit!42828)

(declare-fun Unit!42831 () Unit!42828)

(assert (=> b!2485438 (= lt!891608 (ite (_1!17122 lt!891602) (tuple2!29159 Unit!42830 (HashMap!3322 lt!891611 (hashF!5318 thiss!42540) (bvsub (_size!6872 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3484 thiss!42540))) (tuple2!29159 Unit!42831 (HashMap!3322 lt!891611 (hashF!5318 thiss!42540) (_size!6872 thiss!42540) (defaultValue!3484 thiss!42540)))))))

(assert (=> b!2485438 (= lt!891611 (Cell!13468 (_2!17122 lt!891602)))))

(declare-fun lt!891612 () (_ BitVec 64))

(declare-fun update!232 (MutLongMap!3412 (_ BitVec 64) List!29299) tuple2!29160)

(assert (=> b!2485438 (= lt!891602 (update!232 (v!31624 (underlying!7032 thiss!42540)) lt!891612 lt!891604))))

(declare-fun removePairForKey!106 (List!29299 K!5615) List!29299)

(assert (=> b!2485438 (= lt!891604 (removePairForKey!106 lt!891599 key!2246))))

(declare-fun map!6310 (MutableMap!3322) ListMap!1137)

(assert (=> b!2485438 (= lt!891613 (map!6310 thiss!42540))))

(declare-fun lambda!94453 () Int)

(declare-fun lt!891607 () Unit!42828)

(declare-fun lt!891603 () ListLongMap!609)

(declare-fun forallContained!895 (List!29300 Int tuple2!29156) Unit!42828)

(assert (=> b!2485438 (= lt!891607 (forallContained!895 (toList!1658 lt!891603) lambda!94453 (tuple2!29157 lt!891612 lt!891599)))))

(declare-fun map!6311 (MutLongMap!3412) ListLongMap!609)

(assert (=> b!2485438 (= lt!891603 (map!6311 (v!31624 (underlying!7032 thiss!42540))))))

(declare-fun apply!6979 (MutLongMap!3412 (_ BitVec 64)) List!29299)

(assert (=> b!2485438 (= lt!891599 (apply!6979 (v!31624 (underlying!7032 thiss!42540)) lt!891612))))

(declare-fun hash!756 (Hashable!3322 K!5615) (_ BitVec 64))

(assert (=> b!2485438 (= lt!891612 (hash!756 (hashF!5318 thiss!42540) key!2246))))

(declare-fun b!2485439 () Bool)

(declare-fun res!1052011 () Bool)

(assert (=> b!2485439 (=> (not res!1052011) (not e!1578101))))

(declare-fun lt!891614 () ListLongMap!609)

(assert (=> b!2485439 (= res!1052011 (allKeysSameHashInMap!189 lt!891614 (hashF!5318 (_2!17121 lt!891608))))))

(declare-fun b!2485440 () Bool)

(assert (=> b!2485440 (= e!1578107 e!1578104)))

(declare-fun b!2485441 () Bool)

(declare-fun res!1052015 () Bool)

(assert (=> b!2485441 (=> (not res!1052015) (not e!1578108))))

(assert (=> b!2485441 (= res!1052015 (valid!2621 thiss!42540))))

(declare-fun b!2485442 () Bool)

(declare-fun res!1052009 () Bool)

(assert (=> b!2485442 (=> (not res!1052009) (not e!1578108))))

(declare-fun contains!5200 (MutableMap!3322 K!5615) Bool)

(assert (=> b!2485442 (= res!1052009 (contains!5200 thiss!42540 key!2246))))

(declare-fun b!2485443 () Bool)

(declare-fun forall!6004 (List!29300 Int) Bool)

(assert (=> b!2485443 (= e!1578105 (forall!6004 (toList!1658 lt!891603) lambda!94453))))

(assert (=> b!2485443 e!1578101))

(declare-fun res!1052014 () Bool)

(assert (=> b!2485443 (=> (not res!1052014) (not e!1578101))))

(assert (=> b!2485443 (= res!1052014 (forall!6004 (toList!1658 lt!891614) lambda!94453))))

(assert (=> b!2485443 (= lt!891614 (map!6311 (v!31624 (underlying!7032 (_2!17121 lt!891608)))))))

(assert (=> b!2485443 e!1578099))

(declare-fun res!1052010 () Bool)

(assert (=> b!2485443 (=> (not res!1052010) (not e!1578099))))

(assert (=> b!2485443 (= res!1052010 (forall!6004 (toList!1658 lt!891601) lambda!94453))))

(declare-fun +!105 (ListLongMap!609 tuple2!29156) ListLongMap!609)

(assert (=> b!2485443 (= lt!891601 (+!105 lt!891603 (tuple2!29157 lt!891612 lt!891604)))))

(declare-fun lt!891605 () Unit!42828)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!68 (ListLongMap!609 (_ BitVec 64) List!29299 Hashable!3322) Unit!42828)

(assert (=> b!2485443 (= lt!891605 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!68 lt!891603 lt!891612 lt!891604 (hashF!5318 (_2!17121 lt!891608))))))

(declare-fun allKeysSameHash!88 (List!29299 (_ BitVec 64) Hashable!3322) Bool)

(assert (=> b!2485443 (allKeysSameHash!88 lt!891604 lt!891612 (hashF!5318 (_2!17121 lt!891608)))))

(declare-fun lt!891609 () Unit!42828)

(declare-fun lemmaRemovePairForKeyPreservesHash!77 (List!29299 K!5615 (_ BitVec 64) Hashable!3322) Unit!42828)

(assert (=> b!2485443 (= lt!891609 (lemmaRemovePairForKeyPreservesHash!77 lt!891599 key!2246 lt!891612 (hashF!5318 (_2!17121 lt!891608))))))

(assert (=> b!2485443 (allKeysSameHash!88 lt!891599 lt!891612 (hashF!5318 (_2!17121 lt!891608)))))

(declare-fun lt!891606 () Unit!42828)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!81 (List!29300 (_ BitVec 64) List!29299 Hashable!3322) Unit!42828)

(assert (=> b!2485443 (= lt!891606 (lemmaInLongMapAllKeySameHashThenForTuple!81 (toList!1658 lt!891603) lt!891612 lt!891599 (hashF!5318 (_2!17121 lt!891608))))))

(assert (= (and start!242754 res!1052012) b!2485441))

(assert (= (and b!2485441 res!1052015) b!2485442))

(assert (= (and b!2485442 res!1052009) b!2485438))

(assert (= (and b!2485438 (not res!1052013)) b!2485443))

(assert (= (and b!2485443 res!1052010) b!2485432))

(assert (= (and b!2485443 res!1052014) b!2485439))

(assert (= (and b!2485439 res!1052011) b!2485435))

(assert (= (and b!2485435 res!1052008) b!2485436))

(assert (= (and b!2485430 condMapEmpty!15741) mapIsEmpty!15741))

(assert (= (and b!2485430 (not condMapEmpty!15741)) mapNonEmpty!15741))

(assert (= b!2485433 b!2485430))

(assert (= b!2485440 b!2485433))

(assert (= b!2485434 b!2485440))

(assert (= (and b!2485437 ((_ is LongMap!3412) (v!31624 (underlying!7032 thiss!42540)))) b!2485434))

(assert (= b!2485431 b!2485437))

(assert (= (and start!242754 ((_ is HashMap!3322) thiss!42540)) b!2485431))

(declare-fun m!2853671 () Bool)

(assert (=> b!2485433 m!2853671))

(declare-fun m!2853673 () Bool)

(assert (=> b!2485433 m!2853673))

(declare-fun m!2853675 () Bool)

(assert (=> mapNonEmpty!15741 m!2853675))

(declare-fun m!2853677 () Bool)

(assert (=> b!2485436 m!2853677))

(declare-fun m!2853679 () Bool)

(assert (=> b!2485438 m!2853679))

(declare-fun m!2853681 () Bool)

(assert (=> b!2485438 m!2853681))

(declare-fun m!2853683 () Bool)

(assert (=> b!2485438 m!2853683))

(declare-fun m!2853685 () Bool)

(assert (=> b!2485438 m!2853685))

(declare-fun m!2853687 () Bool)

(assert (=> b!2485438 m!2853687))

(declare-fun m!2853689 () Bool)

(assert (=> b!2485438 m!2853689))

(declare-fun m!2853691 () Bool)

(assert (=> b!2485438 m!2853691))

(declare-fun m!2853693 () Bool)

(assert (=> b!2485438 m!2853693))

(declare-fun m!2853695 () Bool)

(assert (=> b!2485438 m!2853695))

(declare-fun m!2853697 () Bool)

(assert (=> b!2485432 m!2853697))

(declare-fun m!2853699 () Bool)

(assert (=> b!2485441 m!2853699))

(declare-fun m!2853701 () Bool)

(assert (=> b!2485435 m!2853701))

(declare-fun m!2853703 () Bool)

(assert (=> b!2485442 m!2853703))

(declare-fun m!2853705 () Bool)

(assert (=> b!2485443 m!2853705))

(declare-fun m!2853707 () Bool)

(assert (=> b!2485443 m!2853707))

(declare-fun m!2853709 () Bool)

(assert (=> b!2485443 m!2853709))

(declare-fun m!2853711 () Bool)

(assert (=> b!2485443 m!2853711))

(declare-fun m!2853713 () Bool)

(assert (=> b!2485443 m!2853713))

(declare-fun m!2853715 () Bool)

(assert (=> b!2485443 m!2853715))

(declare-fun m!2853717 () Bool)

(assert (=> b!2485443 m!2853717))

(declare-fun m!2853719 () Bool)

(assert (=> b!2485443 m!2853719))

(declare-fun m!2853721 () Bool)

(assert (=> b!2485443 m!2853721))

(declare-fun m!2853723 () Bool)

(assert (=> b!2485443 m!2853723))

(declare-fun m!2853725 () Bool)

(assert (=> b!2485439 m!2853725))

(check-sat (not b!2485439) (not b!2485442) (not b!2485438) (not b!2485435) (not b!2485443) (not mapNonEmpty!15741) (not b!2485441) (not b_next!73211) (not b!2485433) b_and!188785 (not b_next!73209) (not b!2485432) (not b!2485430) (not b!2485436) b_and!188783 tp_is_empty!12377)
(check-sat b_and!188785 b_and!188783 (not b_next!73209) (not b_next!73211))
(get-model)

(declare-fun d!713551 () Bool)

(declare-fun res!1052020 () Bool)

(declare-fun e!1578113 () Bool)

(assert (=> d!713551 (=> res!1052020 e!1578113)))

(assert (=> d!713551 (= res!1052020 ((_ is Nil!29200) (toList!1658 lt!891614)))))

(assert (=> d!713551 (= (forall!6004 (toList!1658 lt!891614) lambda!94453) e!1578113)))

(declare-fun b!2485448 () Bool)

(declare-fun e!1578114 () Bool)

(assert (=> b!2485448 (= e!1578113 e!1578114)))

(declare-fun res!1052021 () Bool)

(assert (=> b!2485448 (=> (not res!1052021) (not e!1578114))))

(declare-fun dynLambda!12500 (Int tuple2!29156) Bool)

(assert (=> b!2485448 (= res!1052021 (dynLambda!12500 lambda!94453 (h!34614 (toList!1658 lt!891614))))))

(declare-fun b!2485449 () Bool)

(assert (=> b!2485449 (= e!1578114 (forall!6004 (t!210983 (toList!1658 lt!891614)) lambda!94453))))

(assert (= (and d!713551 (not res!1052020)) b!2485448))

(assert (= (and b!2485448 res!1052021) b!2485449))

(declare-fun b_lambda!76303 () Bool)

(assert (=> (not b_lambda!76303) (not b!2485448)))

(declare-fun m!2853727 () Bool)

(assert (=> b!2485448 m!2853727))

(declare-fun m!2853729 () Bool)

(assert (=> b!2485449 m!2853729))

(assert (=> b!2485443 d!713551))

(declare-fun bs!467869 () Bool)

(declare-fun d!713553 () Bool)

(assert (= bs!467869 (and d!713553 b!2485438)))

(declare-fun lambda!94456 () Int)

(assert (=> bs!467869 (not (= lambda!94456 lambda!94453))))

(assert (=> d!713553 true))

(assert (=> d!713553 (allKeysSameHash!88 lt!891599 lt!891612 (hashF!5318 (_2!17121 lt!891608)))))

(declare-fun lt!891617 () Unit!42828)

(declare-fun choose!14691 (List!29300 (_ BitVec 64) List!29299 Hashable!3322) Unit!42828)

(assert (=> d!713553 (= lt!891617 (choose!14691 (toList!1658 lt!891603) lt!891612 lt!891599 (hashF!5318 (_2!17121 lt!891608))))))

(assert (=> d!713553 (forall!6004 (toList!1658 lt!891603) lambda!94456)))

(assert (=> d!713553 (= (lemmaInLongMapAllKeySameHashThenForTuple!81 (toList!1658 lt!891603) lt!891612 lt!891599 (hashF!5318 (_2!17121 lt!891608))) lt!891617)))

(declare-fun bs!467870 () Bool)

(assert (= bs!467870 d!713553))

(assert (=> bs!467870 m!2853719))

(declare-fun m!2853731 () Bool)

(assert (=> bs!467870 m!2853731))

(declare-fun m!2853733 () Bool)

(assert (=> bs!467870 m!2853733))

(assert (=> b!2485443 d!713553))

(declare-fun d!713555 () Bool)

(declare-fun map!6312 (LongMapFixedSize!6824) ListLongMap!609)

(assert (=> d!713555 (= (map!6311 (v!31624 (underlying!7032 (_2!17121 lt!891608)))) (map!6312 (v!31623 (underlying!7031 (v!31624 (underlying!7032 (_2!17121 lt!891608)))))))))

(declare-fun bs!467871 () Bool)

(assert (= bs!467871 d!713555))

(declare-fun m!2853735 () Bool)

(assert (=> bs!467871 m!2853735))

(assert (=> b!2485443 d!713555))

(declare-fun d!713557 () Bool)

(assert (=> d!713557 true))

(assert (=> d!713557 true))

(declare-fun lambda!94459 () Int)

(declare-fun forall!6005 (List!29299 Int) Bool)

(assert (=> d!713557 (= (allKeysSameHash!88 lt!891604 lt!891612 (hashF!5318 (_2!17121 lt!891608))) (forall!6005 lt!891604 lambda!94459))))

(declare-fun bs!467872 () Bool)

(assert (= bs!467872 d!713557))

(declare-fun m!2853737 () Bool)

(assert (=> bs!467872 m!2853737))

(assert (=> b!2485443 d!713557))

(declare-fun d!713559 () Bool)

(declare-fun res!1052022 () Bool)

(declare-fun e!1578115 () Bool)

(assert (=> d!713559 (=> res!1052022 e!1578115)))

(assert (=> d!713559 (= res!1052022 ((_ is Nil!29200) (toList!1658 lt!891601)))))

(assert (=> d!713559 (= (forall!6004 (toList!1658 lt!891601) lambda!94453) e!1578115)))

(declare-fun b!2485456 () Bool)

(declare-fun e!1578116 () Bool)

(assert (=> b!2485456 (= e!1578115 e!1578116)))

(declare-fun res!1052023 () Bool)

(assert (=> b!2485456 (=> (not res!1052023) (not e!1578116))))

(assert (=> b!2485456 (= res!1052023 (dynLambda!12500 lambda!94453 (h!34614 (toList!1658 lt!891601))))))

(declare-fun b!2485457 () Bool)

(assert (=> b!2485457 (= e!1578116 (forall!6004 (t!210983 (toList!1658 lt!891601)) lambda!94453))))

(assert (= (and d!713559 (not res!1052022)) b!2485456))

(assert (= (and b!2485456 res!1052023) b!2485457))

(declare-fun b_lambda!76305 () Bool)

(assert (=> (not b_lambda!76305) (not b!2485456)))

(declare-fun m!2853739 () Bool)

(assert (=> b!2485456 m!2853739))

(declare-fun m!2853741 () Bool)

(assert (=> b!2485457 m!2853741))

(assert (=> b!2485443 d!713559))

(declare-fun d!713561 () Bool)

(declare-fun res!1052024 () Bool)

(declare-fun e!1578117 () Bool)

(assert (=> d!713561 (=> res!1052024 e!1578117)))

(assert (=> d!713561 (= res!1052024 ((_ is Nil!29200) (toList!1658 lt!891603)))))

(assert (=> d!713561 (= (forall!6004 (toList!1658 lt!891603) lambda!94453) e!1578117)))

(declare-fun b!2485458 () Bool)

(declare-fun e!1578118 () Bool)

(assert (=> b!2485458 (= e!1578117 e!1578118)))

(declare-fun res!1052025 () Bool)

(assert (=> b!2485458 (=> (not res!1052025) (not e!1578118))))

(assert (=> b!2485458 (= res!1052025 (dynLambda!12500 lambda!94453 (h!34614 (toList!1658 lt!891603))))))

(declare-fun b!2485459 () Bool)

(assert (=> b!2485459 (= e!1578118 (forall!6004 (t!210983 (toList!1658 lt!891603)) lambda!94453))))

(assert (= (and d!713561 (not res!1052024)) b!2485458))

(assert (= (and b!2485458 res!1052025) b!2485459))

(declare-fun b_lambda!76307 () Bool)

(assert (=> (not b_lambda!76307) (not b!2485458)))

(declare-fun m!2853743 () Bool)

(assert (=> b!2485458 m!2853743))

(declare-fun m!2853745 () Bool)

(assert (=> b!2485459 m!2853745))

(assert (=> b!2485443 d!713561))

(declare-fun bs!467873 () Bool)

(declare-fun d!713563 () Bool)

(assert (= bs!467873 (and d!713563 d!713557)))

(declare-fun lambda!94460 () Int)

(assert (=> bs!467873 (= lambda!94460 lambda!94459)))

(assert (=> d!713563 true))

(assert (=> d!713563 true))

(assert (=> d!713563 (= (allKeysSameHash!88 lt!891599 lt!891612 (hashF!5318 (_2!17121 lt!891608))) (forall!6005 lt!891599 lambda!94460))))

(declare-fun bs!467874 () Bool)

(assert (= bs!467874 d!713563))

(declare-fun m!2853747 () Bool)

(assert (=> bs!467874 m!2853747))

(assert (=> b!2485443 d!713563))

(declare-fun d!713565 () Bool)

(assert (=> d!713565 (allKeysSameHash!88 (removePairForKey!106 lt!891599 key!2246) lt!891612 (hashF!5318 (_2!17121 lt!891608)))))

(declare-fun lt!891620 () Unit!42828)

(declare-fun choose!14692 (List!29299 K!5615 (_ BitVec 64) Hashable!3322) Unit!42828)

(assert (=> d!713565 (= lt!891620 (choose!14692 lt!891599 key!2246 lt!891612 (hashF!5318 (_2!17121 lt!891608))))))

(assert (=> d!713565 (noDuplicateKeys!114 lt!891599)))

(assert (=> d!713565 (= (lemmaRemovePairForKeyPreservesHash!77 lt!891599 key!2246 lt!891612 (hashF!5318 (_2!17121 lt!891608))) lt!891620)))

(declare-fun bs!467875 () Bool)

(assert (= bs!467875 d!713565))

(assert (=> bs!467875 m!2853689))

(assert (=> bs!467875 m!2853689))

(declare-fun m!2853749 () Bool)

(assert (=> bs!467875 m!2853749))

(declare-fun m!2853751 () Bool)

(assert (=> bs!467875 m!2853751))

(declare-fun m!2853753 () Bool)

(assert (=> bs!467875 m!2853753))

(assert (=> b!2485443 d!713565))

(declare-fun bs!467876 () Bool)

(declare-fun d!713567 () Bool)

(assert (= bs!467876 (and d!713567 b!2485438)))

(declare-fun lambda!94465 () Int)

(assert (=> bs!467876 (= lambda!94465 lambda!94453)))

(declare-fun bs!467877 () Bool)

(assert (= bs!467877 (and d!713567 d!713553)))

(assert (=> bs!467877 (not (= lambda!94465 lambda!94456))))

(declare-fun e!1578121 () Bool)

(assert (=> d!713567 e!1578121))

(declare-fun res!1052028 () Bool)

(assert (=> d!713567 (=> (not res!1052028) (not e!1578121))))

(declare-fun lt!891626 () ListLongMap!609)

(assert (=> d!713567 (= res!1052028 (forall!6004 (toList!1658 lt!891626) lambda!94465))))

(assert (=> d!713567 (= lt!891626 (+!105 lt!891603 (tuple2!29157 lt!891612 lt!891604)))))

(declare-fun lt!891625 () Unit!42828)

(declare-fun choose!14693 (ListLongMap!609 (_ BitVec 64) List!29299 Hashable!3322) Unit!42828)

(assert (=> d!713567 (= lt!891625 (choose!14693 lt!891603 lt!891612 lt!891604 (hashF!5318 (_2!17121 lt!891608))))))

(assert (=> d!713567 (forall!6004 (toList!1658 lt!891603) lambda!94465)))

(assert (=> d!713567 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!68 lt!891603 lt!891612 lt!891604 (hashF!5318 (_2!17121 lt!891608))) lt!891625)))

(declare-fun b!2485462 () Bool)

(assert (=> b!2485462 (= e!1578121 (allKeysSameHashInMap!189 lt!891626 (hashF!5318 (_2!17121 lt!891608))))))

(assert (= (and d!713567 res!1052028) b!2485462))

(declare-fun m!2853755 () Bool)

(assert (=> d!713567 m!2853755))

(assert (=> d!713567 m!2853711))

(declare-fun m!2853757 () Bool)

(assert (=> d!713567 m!2853757))

(declare-fun m!2853759 () Bool)

(assert (=> d!713567 m!2853759))

(declare-fun m!2853761 () Bool)

(assert (=> b!2485462 m!2853761))

(assert (=> b!2485443 d!713567))

(declare-fun d!713569 () Bool)

(declare-fun e!1578124 () Bool)

(assert (=> d!713569 e!1578124))

(declare-fun res!1052033 () Bool)

(assert (=> d!713569 (=> (not res!1052033) (not e!1578124))))

(declare-fun lt!891636 () ListLongMap!609)

(declare-fun contains!5201 (ListLongMap!609 (_ BitVec 64)) Bool)

(assert (=> d!713569 (= res!1052033 (contains!5201 lt!891636 (_1!17120 (tuple2!29157 lt!891612 lt!891604))))))

(declare-fun lt!891637 () List!29300)

(assert (=> d!713569 (= lt!891636 (ListLongMap!610 lt!891637))))

(declare-fun lt!891638 () Unit!42828)

(declare-fun lt!891635 () Unit!42828)

(assert (=> d!713569 (= lt!891638 lt!891635)))

(declare-datatypes ((Option!5777 0))(
  ( (None!5776) (Some!5776 (v!31629 List!29299)) )
))
(declare-fun getValueByKey!152 (List!29300 (_ BitVec 64)) Option!5777)

(assert (=> d!713569 (= (getValueByKey!152 lt!891637 (_1!17120 (tuple2!29157 lt!891612 lt!891604))) (Some!5776 (_2!17120 (tuple2!29157 lt!891612 lt!891604))))))

(declare-fun lemmaContainsTupThenGetReturnValue!25 (List!29300 (_ BitVec 64) List!29299) Unit!42828)

(assert (=> d!713569 (= lt!891635 (lemmaContainsTupThenGetReturnValue!25 lt!891637 (_1!17120 (tuple2!29157 lt!891612 lt!891604)) (_2!17120 (tuple2!29157 lt!891612 lt!891604))))))

(declare-fun insertStrictlySorted!19 (List!29300 (_ BitVec 64) List!29299) List!29300)

(assert (=> d!713569 (= lt!891637 (insertStrictlySorted!19 (toList!1658 lt!891603) (_1!17120 (tuple2!29157 lt!891612 lt!891604)) (_2!17120 (tuple2!29157 lt!891612 lt!891604))))))

(assert (=> d!713569 (= (+!105 lt!891603 (tuple2!29157 lt!891612 lt!891604)) lt!891636)))

(declare-fun b!2485467 () Bool)

(declare-fun res!1052034 () Bool)

(assert (=> b!2485467 (=> (not res!1052034) (not e!1578124))))

(assert (=> b!2485467 (= res!1052034 (= (getValueByKey!152 (toList!1658 lt!891636) (_1!17120 (tuple2!29157 lt!891612 lt!891604))) (Some!5776 (_2!17120 (tuple2!29157 lt!891612 lt!891604)))))))

(declare-fun b!2485468 () Bool)

(declare-fun contains!5202 (List!29300 tuple2!29156) Bool)

(assert (=> b!2485468 (= e!1578124 (contains!5202 (toList!1658 lt!891636) (tuple2!29157 lt!891612 lt!891604)))))

(assert (= (and d!713569 res!1052033) b!2485467))

(assert (= (and b!2485467 res!1052034) b!2485468))

(declare-fun m!2853763 () Bool)

(assert (=> d!713569 m!2853763))

(declare-fun m!2853765 () Bool)

(assert (=> d!713569 m!2853765))

(declare-fun m!2853767 () Bool)

(assert (=> d!713569 m!2853767))

(declare-fun m!2853769 () Bool)

(assert (=> d!713569 m!2853769))

(declare-fun m!2853771 () Bool)

(assert (=> b!2485467 m!2853771))

(declare-fun m!2853773 () Bool)

(assert (=> b!2485468 m!2853773))

(assert (=> b!2485443 d!713569))

(declare-fun d!713571 () Bool)

(assert (=> d!713571 (dynLambda!12500 lambda!94453 (tuple2!29157 lt!891612 lt!891599))))

(declare-fun lt!891641 () Unit!42828)

(declare-fun choose!14694 (List!29300 Int tuple2!29156) Unit!42828)

(assert (=> d!713571 (= lt!891641 (choose!14694 (toList!1658 lt!891603) lambda!94453 (tuple2!29157 lt!891612 lt!891599)))))

(declare-fun e!1578127 () Bool)

(assert (=> d!713571 e!1578127))

(declare-fun res!1052037 () Bool)

(assert (=> d!713571 (=> (not res!1052037) (not e!1578127))))

(assert (=> d!713571 (= res!1052037 (forall!6004 (toList!1658 lt!891603) lambda!94453))))

(assert (=> d!713571 (= (forallContained!895 (toList!1658 lt!891603) lambda!94453 (tuple2!29157 lt!891612 lt!891599)) lt!891641)))

(declare-fun b!2485471 () Bool)

(assert (=> b!2485471 (= e!1578127 (contains!5202 (toList!1658 lt!891603) (tuple2!29157 lt!891612 lt!891599)))))

(assert (= (and d!713571 res!1052037) b!2485471))

(declare-fun b_lambda!76309 () Bool)

(assert (=> (not b_lambda!76309) (not d!713571)))

(declare-fun m!2853775 () Bool)

(assert (=> d!713571 m!2853775))

(declare-fun m!2853777 () Bool)

(assert (=> d!713571 m!2853777))

(assert (=> d!713571 m!2853715))

(declare-fun m!2853779 () Bool)

(assert (=> b!2485471 m!2853779))

(assert (=> b!2485438 d!713571))

(declare-fun d!713573 () Bool)

(declare-fun e!1578130 () Bool)

(assert (=> d!713573 e!1578130))

(declare-fun c!395045 () Bool)

(declare-fun contains!5203 (MutLongMap!3412 (_ BitVec 64)) Bool)

(assert (=> d!713573 (= c!395045 (contains!5203 (v!31624 (underlying!7032 thiss!42540)) lt!891612))))

(declare-fun lt!891644 () List!29299)

(declare-fun apply!6980 (LongMapFixedSize!6824 (_ BitVec 64)) List!29299)

(assert (=> d!713573 (= lt!891644 (apply!6980 (v!31623 (underlying!7031 (v!31624 (underlying!7032 thiss!42540)))) lt!891612))))

(declare-fun valid!2622 (MutLongMap!3412) Bool)

(assert (=> d!713573 (valid!2622 (v!31624 (underlying!7032 thiss!42540)))))

(assert (=> d!713573 (= (apply!6979 (v!31624 (underlying!7032 thiss!42540)) lt!891612) lt!891644)))

(declare-fun b!2485476 () Bool)

(declare-fun get!9013 (Option!5777) List!29299)

(assert (=> b!2485476 (= e!1578130 (= lt!891644 (get!9013 (getValueByKey!152 (toList!1658 (map!6311 (v!31624 (underlying!7032 thiss!42540)))) lt!891612))))))

(declare-fun b!2485477 () Bool)

(declare-fun dynLambda!12501 (Int (_ BitVec 64)) List!29299)

(assert (=> b!2485477 (= e!1578130 (= lt!891644 (dynLambda!12501 (defaultEntry!3786 (v!31623 (underlying!7031 (v!31624 (underlying!7032 thiss!42540))))) lt!891612)))))

(assert (=> b!2485477 ((_ is LongMap!3412) (v!31624 (underlying!7032 thiss!42540)))))

(assert (= (and d!713573 c!395045) b!2485476))

(assert (= (and d!713573 (not c!395045)) b!2485477))

(declare-fun b_lambda!76311 () Bool)

(assert (=> (not b_lambda!76311) (not b!2485477)))

(declare-fun t!210985 () Bool)

(declare-fun tb!140401 () Bool)

(assert (=> (and b!2485433 (= (defaultEntry!3786 (v!31623 (underlying!7031 (v!31624 (underlying!7032 thiss!42540))))) (defaultEntry!3786 (v!31623 (underlying!7031 (v!31624 (underlying!7032 thiss!42540)))))) t!210985) tb!140401))

(assert (=> b!2485477 t!210985))

(declare-fun result!173398 () Bool)

(declare-fun b_and!188787 () Bool)

(assert (= b_and!188783 (and (=> t!210985 result!173398) b_and!188787)))

(declare-fun m!2853781 () Bool)

(assert (=> d!713573 m!2853781))

(declare-fun m!2853783 () Bool)

(assert (=> d!713573 m!2853783))

(declare-fun m!2853785 () Bool)

(assert (=> d!713573 m!2853785))

(assert (=> b!2485476 m!2853681))

(declare-fun m!2853787 () Bool)

(assert (=> b!2485476 m!2853787))

(assert (=> b!2485476 m!2853787))

(declare-fun m!2853789 () Bool)

(assert (=> b!2485476 m!2853789))

(declare-fun m!2853791 () Bool)

(assert (=> b!2485477 m!2853791))

(assert (=> b!2485438 d!713573))

(declare-fun d!713575 () Bool)

(declare-fun hash!760 (Hashable!3322 K!5615) (_ BitVec 64))

(assert (=> d!713575 (= (hash!756 (hashF!5318 thiss!42540) key!2246) (hash!760 (hashF!5318 thiss!42540) key!2246))))

(declare-fun bs!467878 () Bool)

(assert (= bs!467878 d!713575))

(declare-fun m!2853793 () Bool)

(assert (=> bs!467878 m!2853793))

(assert (=> b!2485438 d!713575))

(declare-fun d!713577 () Bool)

(declare-fun res!1052042 () Bool)

(declare-fun e!1578135 () Bool)

(assert (=> d!713577 (=> res!1052042 e!1578135)))

(assert (=> d!713577 (= res!1052042 (not ((_ is Cons!29199) lt!891604)))))

(assert (=> d!713577 (= (noDuplicateKeys!114 lt!891604) e!1578135)))

(declare-fun b!2485482 () Bool)

(declare-fun e!1578136 () Bool)

(assert (=> b!2485482 (= e!1578135 e!1578136)))

(declare-fun res!1052043 () Bool)

(assert (=> b!2485482 (=> (not res!1052043) (not e!1578136))))

(declare-fun containsKey!161 (List!29299 K!5615) Bool)

(assert (=> b!2485482 (= res!1052043 (not (containsKey!161 (t!210982 lt!891604) (_1!17119 (h!34613 lt!891604)))))))

(declare-fun b!2485483 () Bool)

(assert (=> b!2485483 (= e!1578136 (noDuplicateKeys!114 (t!210982 lt!891604)))))

(assert (= (and d!713577 (not res!1052042)) b!2485482))

(assert (= (and b!2485482 res!1052043) b!2485483))

(declare-fun m!2853795 () Bool)

(assert (=> b!2485482 m!2853795))

(declare-fun m!2853797 () Bool)

(assert (=> b!2485483 m!2853797))

(assert (=> b!2485438 d!713577))

(declare-fun b!2485495 () Bool)

(declare-fun e!1578141 () List!29299)

(assert (=> b!2485495 (= e!1578141 Nil!29199)))

(declare-fun d!713579 () Bool)

(declare-fun lt!891647 () List!29299)

(assert (=> d!713579 (not (containsKey!161 lt!891647 key!2246))))

(declare-fun e!1578142 () List!29299)

(assert (=> d!713579 (= lt!891647 e!1578142)))

(declare-fun c!395050 () Bool)

(assert (=> d!713579 (= c!395050 (and ((_ is Cons!29199) lt!891599) (= (_1!17119 (h!34613 lt!891599)) key!2246)))))

(assert (=> d!713579 (noDuplicateKeys!114 lt!891599)))

(assert (=> d!713579 (= (removePairForKey!106 lt!891599 key!2246) lt!891647)))

(declare-fun b!2485494 () Bool)

(assert (=> b!2485494 (= e!1578141 (Cons!29199 (h!34613 lt!891599) (removePairForKey!106 (t!210982 lt!891599) key!2246)))))

(declare-fun b!2485492 () Bool)

(assert (=> b!2485492 (= e!1578142 (t!210982 lt!891599))))

(declare-fun b!2485493 () Bool)

(assert (=> b!2485493 (= e!1578142 e!1578141)))

(declare-fun c!395051 () Bool)

(assert (=> b!2485493 (= c!395051 ((_ is Cons!29199) lt!891599))))

(assert (= (and d!713579 c!395050) b!2485492))

(assert (= (and d!713579 (not c!395050)) b!2485493))

(assert (= (and b!2485493 c!395051) b!2485494))

(assert (= (and b!2485493 (not c!395051)) b!2485495))

(declare-fun m!2853799 () Bool)

(assert (=> d!713579 m!2853799))

(assert (=> d!713579 m!2853753))

(declare-fun m!2853801 () Bool)

(assert (=> b!2485494 m!2853801))

(assert (=> b!2485438 d!713579))

(declare-fun d!713581 () Bool)

(assert (=> d!713581 (= (map!6311 (v!31624 (underlying!7032 thiss!42540))) (map!6312 (v!31623 (underlying!7031 (v!31624 (underlying!7032 thiss!42540))))))))

(declare-fun bs!467879 () Bool)

(assert (= bs!467879 d!713581))

(declare-fun m!2853803 () Bool)

(assert (=> bs!467879 m!2853803))

(assert (=> b!2485438 d!713581))

(declare-fun d!713583 () Bool)

(assert (=> d!713583 (noDuplicateKeys!114 (removePairForKey!106 lt!891599 key!2246))))

(declare-fun lt!891650 () Unit!42828)

(declare-fun choose!14695 (List!29299 K!5615) Unit!42828)

(assert (=> d!713583 (= lt!891650 (choose!14695 lt!891599 key!2246))))

(assert (=> d!713583 (noDuplicateKeys!114 lt!891599)))

(assert (=> d!713583 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!94 lt!891599 key!2246) lt!891650)))

(declare-fun bs!467880 () Bool)

(assert (= bs!467880 d!713583))

(assert (=> bs!467880 m!2853689))

(assert (=> bs!467880 m!2853689))

(declare-fun m!2853805 () Bool)

(assert (=> bs!467880 m!2853805))

(declare-fun m!2853807 () Bool)

(assert (=> bs!467880 m!2853807))

(assert (=> bs!467880 m!2853753))

(assert (=> b!2485438 d!713583))

(declare-fun d!713585 () Bool)

(declare-fun lt!891653 () ListMap!1137)

(declare-fun invariantList!421 (List!29299) Bool)

(assert (=> d!713585 (invariantList!421 (toList!1659 lt!891653))))

(declare-fun extractMap!187 (List!29300) ListMap!1137)

(assert (=> d!713585 (= lt!891653 (extractMap!187 (toList!1658 (map!6311 (v!31624 (underlying!7032 thiss!42540))))))))

(assert (=> d!713585 (valid!2621 thiss!42540)))

(assert (=> d!713585 (= (map!6310 thiss!42540) lt!891653)))

(declare-fun bs!467881 () Bool)

(assert (= bs!467881 d!713585))

(declare-fun m!2853809 () Bool)

(assert (=> bs!467881 m!2853809))

(assert (=> bs!467881 m!2853681))

(declare-fun m!2853811 () Bool)

(assert (=> bs!467881 m!2853811))

(assert (=> bs!467881 m!2853699))

(assert (=> b!2485438 d!713585))

(declare-fun d!713587 () Bool)

(declare-fun e!1578155 () Bool)

(assert (=> d!713587 e!1578155))

(declare-fun res!1052052 () Bool)

(assert (=> d!713587 (=> (not res!1052052) (not e!1578155))))

(declare-fun lt!891663 () tuple2!29160)

(assert (=> d!713587 (= res!1052052 ((_ is LongMap!3412) (_2!17122 lt!891663)))))

(declare-fun e!1578156 () tuple2!29160)

(assert (=> d!713587 (= lt!891663 e!1578156)))

(declare-fun c!395058 () Bool)

(declare-fun lt!891664 () tuple2!29160)

(assert (=> d!713587 (= c!395058 (_1!17122 lt!891664))))

(declare-fun e!1578153 () tuple2!29160)

(assert (=> d!713587 (= lt!891664 e!1578153)))

(declare-fun c!395059 () Bool)

(declare-fun imbalanced!26 (MutLongMap!3412) Bool)

(assert (=> d!713587 (= c!395059 (imbalanced!26 (v!31624 (underlying!7032 thiss!42540))))))

(assert (=> d!713587 (valid!2622 (v!31624 (underlying!7032 thiss!42540)))))

(assert (=> d!713587 (= (update!232 (v!31624 (underlying!7032 thiss!42540)) lt!891612 lt!891604) lt!891663)))

(declare-fun b!2485514 () Bool)

(declare-fun e!1578154 () Bool)

(declare-fun e!1578157 () Bool)

(assert (=> b!2485514 (= e!1578154 e!1578157)))

(declare-fun res!1052051 () Bool)

(declare-fun call!152390 () ListLongMap!609)

(assert (=> b!2485514 (= res!1052051 (contains!5201 call!152390 lt!891612))))

(assert (=> b!2485514 (=> (not res!1052051) (not e!1578157))))

(declare-fun b!2485515 () Bool)

(declare-fun lt!891662 () tuple2!29160)

(assert (=> b!2485515 (= e!1578153 (tuple2!29161 (_1!17122 lt!891662) (_2!17122 lt!891662)))))

(declare-fun repack!30 (MutLongMap!3412) tuple2!29160)

(assert (=> b!2485515 (= lt!891662 (repack!30 (v!31624 (underlying!7032 thiss!42540))))))

(declare-fun call!152391 () ListLongMap!609)

(declare-fun b!2485516 () Bool)

(assert (=> b!2485516 (= e!1578157 (= call!152390 (+!105 call!152391 (tuple2!29157 lt!891612 lt!891604))))))

(declare-fun b!2485517 () Bool)

(declare-datatypes ((tuple2!29162 0))(
  ( (tuple2!29163 (_1!17123 Bool) (_2!17123 LongMapFixedSize!6824)) )
))
(declare-fun lt!891665 () tuple2!29162)

(assert (=> b!2485517 (= e!1578156 (tuple2!29161 (_1!17123 lt!891665) (LongMap!3412 (Cell!13466 (_2!17123 lt!891665)))))))

(declare-fun update!233 (LongMapFixedSize!6824 (_ BitVec 64) List!29299) tuple2!29162)

(assert (=> b!2485517 (= lt!891665 (update!233 (v!31623 (underlying!7031 (_2!17122 lt!891664))) lt!891612 lt!891604))))

(declare-fun b!2485518 () Bool)

(assert (=> b!2485518 (= e!1578153 (tuple2!29161 true (v!31624 (underlying!7032 thiss!42540))))))

(declare-fun b!2485519 () Bool)

(assert (=> b!2485519 (= e!1578154 (= call!152390 call!152391))))

(declare-fun bm!152385 () Bool)

(assert (=> bm!152385 (= call!152390 (map!6311 (_2!17122 lt!891663)))))

(declare-fun b!2485520 () Bool)

(assert (=> b!2485520 (= e!1578155 e!1578154)))

(declare-fun c!395060 () Bool)

(assert (=> b!2485520 (= c!395060 (_1!17122 lt!891663))))

(declare-fun bm!152386 () Bool)

(assert (=> bm!152386 (= call!152391 (map!6311 (v!31624 (underlying!7032 thiss!42540))))))

(declare-fun b!2485521 () Bool)

(assert (=> b!2485521 (= e!1578156 (tuple2!29161 false (_2!17122 lt!891664)))))

(declare-fun b!2485522 () Bool)

(declare-fun res!1052050 () Bool)

(assert (=> b!2485522 (=> (not res!1052050) (not e!1578155))))

(assert (=> b!2485522 (= res!1052050 (valid!2622 (_2!17122 lt!891663)))))

(assert (= (and d!713587 c!395059) b!2485515))

(assert (= (and d!713587 (not c!395059)) b!2485518))

(assert (= (and d!713587 c!395058) b!2485517))

(assert (= (and d!713587 (not c!395058)) b!2485521))

(assert (= (and d!713587 res!1052052) b!2485522))

(assert (= (and b!2485522 res!1052050) b!2485520))

(assert (= (and b!2485520 c!395060) b!2485514))

(assert (= (and b!2485520 (not c!395060)) b!2485519))

(assert (= (and b!2485514 res!1052051) b!2485516))

(assert (= (or b!2485514 b!2485516 b!2485519) bm!152385))

(assert (= (or b!2485516 b!2485519) bm!152386))

(declare-fun m!2853813 () Bool)

(assert (=> b!2485522 m!2853813))

(declare-fun m!2853815 () Bool)

(assert (=> d!713587 m!2853815))

(assert (=> d!713587 m!2853785))

(declare-fun m!2853817 () Bool)

(assert (=> bm!152385 m!2853817))

(assert (=> bm!152386 m!2853681))

(declare-fun m!2853819 () Bool)

(assert (=> b!2485514 m!2853819))

(declare-fun m!2853821 () Bool)

(assert (=> b!2485515 m!2853821))

(declare-fun m!2853823 () Bool)

(assert (=> b!2485517 m!2853823))

(declare-fun m!2853825 () Bool)

(assert (=> b!2485516 m!2853825))

(assert (=> b!2485438 d!713587))

(declare-fun d!713589 () Bool)

(assert (=> d!713589 (= (array_inv!3891 (_keys!3709 (v!31623 (underlying!7031 (v!31624 (underlying!7032 thiss!42540)))))) (bvsge (size!22834 (_keys!3709 (v!31623 (underlying!7031 (v!31624 (underlying!7032 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2485433 d!713589))

(declare-fun d!713591 () Bool)

(assert (=> d!713591 (= (array_inv!3892 (_values!3692 (v!31623 (underlying!7031 (v!31624 (underlying!7032 thiss!42540)))))) (bvsge (size!22833 (_values!3692 (v!31623 (underlying!7031 (v!31624 (underlying!7032 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2485433 d!713591))

(declare-fun bs!467882 () Bool)

(declare-fun d!713593 () Bool)

(assert (= bs!467882 (and d!713593 b!2485438)))

(declare-fun lambda!94468 () Int)

(assert (=> bs!467882 (not (= lambda!94468 lambda!94453))))

(declare-fun bs!467883 () Bool)

(assert (= bs!467883 (and d!713593 d!713553)))

(assert (=> bs!467883 (= lambda!94468 lambda!94456)))

(declare-fun bs!467884 () Bool)

(assert (= bs!467884 (and d!713593 d!713567)))

(assert (=> bs!467884 (not (= lambda!94468 lambda!94465))))

(assert (=> d!713593 true))

(assert (=> d!713593 (= (allKeysSameHashInMap!189 lt!891614 (hashF!5318 (_2!17121 lt!891608))) (forall!6004 (toList!1658 lt!891614) lambda!94468))))

(declare-fun bs!467885 () Bool)

(assert (= bs!467885 d!713593))

(declare-fun m!2853827 () Bool)

(assert (=> bs!467885 m!2853827))

(assert (=> b!2485439 d!713593))

(declare-fun bs!467886 () Bool)

(declare-fun b!2485527 () Bool)

(assert (= bs!467886 (and b!2485527 b!2485438)))

(declare-fun lambda!94471 () Int)

(assert (=> bs!467886 (= lambda!94471 lambda!94453)))

(declare-fun bs!467887 () Bool)

(assert (= bs!467887 (and b!2485527 d!713553)))

(assert (=> bs!467887 (not (= lambda!94471 lambda!94456))))

(declare-fun bs!467888 () Bool)

(assert (= bs!467888 (and b!2485527 d!713567)))

(assert (=> bs!467888 (= lambda!94471 lambda!94465)))

(declare-fun bs!467889 () Bool)

(assert (= bs!467889 (and b!2485527 d!713593)))

(assert (=> bs!467889 (not (= lambda!94471 lambda!94468))))

(declare-fun d!713595 () Bool)

(declare-fun res!1052057 () Bool)

(declare-fun e!1578160 () Bool)

(assert (=> d!713595 (=> (not res!1052057) (not e!1578160))))

(assert (=> d!713595 (= res!1052057 (valid!2622 (v!31624 (underlying!7032 (_2!17121 lt!891608)))))))

(assert (=> d!713595 (= (valid!2621 (_2!17121 lt!891608)) e!1578160)))

(declare-fun res!1052058 () Bool)

(assert (=> b!2485527 (=> (not res!1052058) (not e!1578160))))

(assert (=> b!2485527 (= res!1052058 (forall!6004 (toList!1658 (map!6311 (v!31624 (underlying!7032 (_2!17121 lt!891608))))) lambda!94471))))

(declare-fun b!2485528 () Bool)

(assert (=> b!2485528 (= e!1578160 (allKeysSameHashInMap!189 (map!6311 (v!31624 (underlying!7032 (_2!17121 lt!891608)))) (hashF!5318 (_2!17121 lt!891608))))))

(assert (= (and d!713595 res!1052057) b!2485527))

(assert (= (and b!2485527 res!1052058) b!2485528))

(declare-fun m!2853829 () Bool)

(assert (=> d!713595 m!2853829))

(assert (=> b!2485527 m!2853707))

(declare-fun m!2853831 () Bool)

(assert (=> b!2485527 m!2853831))

(assert (=> b!2485528 m!2853707))

(assert (=> b!2485528 m!2853707))

(declare-fun m!2853833 () Bool)

(assert (=> b!2485528 m!2853833))

(assert (=> b!2485435 d!713595))

(declare-fun bs!467890 () Bool)

(declare-fun d!713597 () Bool)

(assert (= bs!467890 (and d!713597 b!2485527)))

(declare-fun lambda!94472 () Int)

(assert (=> bs!467890 (not (= lambda!94472 lambda!94471))))

(declare-fun bs!467891 () Bool)

(assert (= bs!467891 (and d!713597 b!2485438)))

(assert (=> bs!467891 (not (= lambda!94472 lambda!94453))))

(declare-fun bs!467892 () Bool)

(assert (= bs!467892 (and d!713597 d!713567)))

(assert (=> bs!467892 (not (= lambda!94472 lambda!94465))))

(declare-fun bs!467893 () Bool)

(assert (= bs!467893 (and d!713597 d!713553)))

(assert (=> bs!467893 (= lambda!94472 lambda!94456)))

(declare-fun bs!467894 () Bool)

(assert (= bs!467894 (and d!713597 d!713593)))

(assert (=> bs!467894 (= lambda!94472 lambda!94468)))

(assert (=> d!713597 true))

(assert (=> d!713597 (= (allKeysSameHashInMap!189 lt!891601 (hashF!5318 (_2!17121 lt!891608))) (forall!6004 (toList!1658 lt!891601) lambda!94472))))

(declare-fun bs!467895 () Bool)

(assert (= bs!467895 d!713597))

(declare-fun m!2853835 () Bool)

(assert (=> bs!467895 m!2853835))

(assert (=> b!2485432 d!713597))

(declare-fun bs!467896 () Bool)

(declare-fun b!2485560 () Bool)

(assert (= bs!467896 (and b!2485560 b!2485527)))

(declare-fun lambda!94475 () Int)

(assert (=> bs!467896 (= lambda!94475 lambda!94471)))

(declare-fun bs!467897 () Bool)

(assert (= bs!467897 (and b!2485560 d!713597)))

(assert (=> bs!467897 (not (= lambda!94475 lambda!94472))))

(declare-fun bs!467898 () Bool)

(assert (= bs!467898 (and b!2485560 b!2485438)))

(assert (=> bs!467898 (= lambda!94475 lambda!94453)))

(declare-fun bs!467899 () Bool)

(assert (= bs!467899 (and b!2485560 d!713567)))

(assert (=> bs!467899 (= lambda!94475 lambda!94465)))

(declare-fun bs!467900 () Bool)

(assert (= bs!467900 (and b!2485560 d!713553)))

(assert (=> bs!467900 (not (= lambda!94475 lambda!94456))))

(declare-fun bs!467901 () Bool)

(assert (= bs!467901 (and b!2485560 d!713593)))

(assert (=> bs!467901 (not (= lambda!94475 lambda!94468))))

(declare-fun b!2485551 () Bool)

(assert (=> b!2485551 false))

(declare-fun lt!891724 () Unit!42828)

(declare-fun lt!891716 () Unit!42828)

(assert (=> b!2485551 (= lt!891724 lt!891716)))

(declare-fun lt!891713 () ListLongMap!609)

(assert (=> b!2485551 (contains!5199 (extractMap!187 (toList!1658 lt!891713)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!82 (ListLongMap!609 K!5615 Hashable!3322) Unit!42828)

(assert (=> b!2485551 (= lt!891716 (lemmaInLongMapThenInGenericMap!82 lt!891713 key!2246 (hashF!5318 thiss!42540)))))

(declare-fun call!152408 () ListLongMap!609)

(assert (=> b!2485551 (= lt!891713 call!152408)))

(declare-fun e!1578175 () Unit!42828)

(declare-fun Unit!42832 () Unit!42828)

(assert (=> b!2485551 (= e!1578175 Unit!42832)))

(declare-fun bm!152399 () Bool)

(assert (=> bm!152399 (= call!152408 (map!6311 (v!31624 (underlying!7032 thiss!42540))))))

(declare-fun b!2485552 () Bool)

(declare-fun e!1578179 () Bool)

(declare-fun call!152406 () Bool)

(assert (=> b!2485552 (= e!1578179 call!152406)))

(declare-fun b!2485553 () Bool)

(declare-fun e!1578177 () Bool)

(assert (=> b!2485553 (= e!1578177 call!152406)))

(declare-fun b!2485554 () Bool)

(declare-fun e!1578180 () Unit!42828)

(declare-fun Unit!42833 () Unit!42828)

(assert (=> b!2485554 (= e!1578180 Unit!42833)))

(declare-fun call!152407 () Bool)

(declare-fun lt!891714 () ListLongMap!609)

(declare-fun call!152404 () (_ BitVec 64))

(declare-fun bm!152400 () Bool)

(declare-fun c!395071 () Bool)

(assert (=> bm!152400 (= call!152407 (contains!5201 (ite c!395071 lt!891714 call!152408) call!152404))))

(declare-fun d!713599 () Bool)

(declare-fun lt!891711 () Bool)

(assert (=> d!713599 (= lt!891711 (contains!5199 (map!6310 thiss!42540) key!2246))))

(declare-fun e!1578181 () Bool)

(assert (=> d!713599 (= lt!891711 e!1578181)))

(declare-fun res!1052066 () Bool)

(assert (=> d!713599 (=> (not res!1052066) (not e!1578181))))

(declare-fun lt!891719 () (_ BitVec 64))

(assert (=> d!713599 (= res!1052066 (contains!5203 (v!31624 (underlying!7032 thiss!42540)) lt!891719))))

(declare-fun lt!891717 () Unit!42828)

(declare-fun e!1578176 () Unit!42828)

(assert (=> d!713599 (= lt!891717 e!1578176)))

(assert (=> d!713599 (= c!395071 (contains!5199 (extractMap!187 (toList!1658 (map!6311 (v!31624 (underlying!7032 thiss!42540))))) key!2246))))

(declare-fun lt!891715 () Unit!42828)

(declare-fun e!1578178 () Unit!42828)

(assert (=> d!713599 (= lt!891715 e!1578178)))

(declare-fun c!395069 () Bool)

(assert (=> d!713599 (= c!395069 (contains!5203 (v!31624 (underlying!7032 thiss!42540)) lt!891719))))

(assert (=> d!713599 (= lt!891719 (hash!756 (hashF!5318 thiss!42540) key!2246))))

(assert (=> d!713599 (valid!2621 thiss!42540)))

(assert (=> d!713599 (= (contains!5200 thiss!42540 key!2246) lt!891711)))

(declare-fun bm!152401 () Bool)

(assert (=> bm!152401 (= call!152404 (hash!756 (hashF!5318 thiss!42540) key!2246))))

(declare-fun b!2485555 () Bool)

(declare-datatypes ((Option!5778 0))(
  ( (None!5777) (Some!5777 (v!31630 tuple2!29154)) )
))
(declare-fun isDefined!4599 (Option!5778) Bool)

(declare-fun getPair!82 (List!29299 K!5615) Option!5778)

(assert (=> b!2485555 (= e!1578181 (isDefined!4599 (getPair!82 (apply!6979 (v!31624 (underlying!7032 thiss!42540)) lt!891719) key!2246)))))

(declare-fun b!2485556 () Bool)

(assert (=> b!2485556 false))

(declare-fun lt!891720 () Unit!42828)

(declare-fun lt!891708 () Unit!42828)

(assert (=> b!2485556 (= lt!891720 lt!891708)))

(declare-fun lt!891723 () List!29300)

(declare-fun lt!891710 () List!29299)

(assert (=> b!2485556 (contains!5202 lt!891723 (tuple2!29157 lt!891719 lt!891710))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!87 (List!29300 (_ BitVec 64) List!29299) Unit!42828)

(assert (=> b!2485556 (= lt!891708 (lemmaGetValueByKeyImpliesContainsTuple!87 lt!891723 lt!891719 lt!891710))))

(assert (=> b!2485556 (= lt!891710 (apply!6979 (v!31624 (underlying!7032 thiss!42540)) lt!891719))))

(assert (=> b!2485556 (= lt!891723 (toList!1658 (map!6311 (v!31624 (underlying!7032 thiss!42540)))))))

(declare-fun lt!891725 () Unit!42828)

(declare-fun lt!891722 () Unit!42828)

(assert (=> b!2485556 (= lt!891725 lt!891722)))

(declare-fun lt!891706 () List!29300)

(declare-fun isDefined!4600 (Option!5777) Bool)

(assert (=> b!2485556 (isDefined!4600 (getValueByKey!152 lt!891706 lt!891719))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!109 (List!29300 (_ BitVec 64)) Unit!42828)

(assert (=> b!2485556 (= lt!891722 (lemmaContainsKeyImpliesGetValueByKeyDefined!109 lt!891706 lt!891719))))

(assert (=> b!2485556 (= lt!891706 (toList!1658 (map!6311 (v!31624 (underlying!7032 thiss!42540)))))))

(declare-fun lt!891712 () Unit!42828)

(declare-fun lt!891707 () Unit!42828)

(assert (=> b!2485556 (= lt!891712 lt!891707)))

(declare-fun lt!891709 () List!29300)

(declare-fun containsKey!162 (List!29300 (_ BitVec 64)) Bool)

(assert (=> b!2485556 (containsKey!162 lt!891709 lt!891719)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!83 (List!29300 (_ BitVec 64)) Unit!42828)

(assert (=> b!2485556 (= lt!891707 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!83 lt!891709 lt!891719))))

(assert (=> b!2485556 (= lt!891709 (toList!1658 (map!6311 (v!31624 (underlying!7032 thiss!42540)))))))

(declare-fun Unit!42834 () Unit!42828)

(assert (=> b!2485556 (= e!1578180 Unit!42834)))

(declare-fun bm!152402 () Bool)

(declare-fun call!152405 () List!29299)

(declare-fun apply!6981 (ListLongMap!609 (_ BitVec 64)) List!29299)

(assert (=> bm!152402 (= call!152405 (apply!6981 (ite c!395071 lt!891714 call!152408) call!152404))))

(declare-fun b!2485557 () Bool)

(assert (=> b!2485557 (= e!1578176 e!1578175)))

(declare-fun res!1052067 () Bool)

(assert (=> b!2485557 (= res!1052067 call!152407)))

(assert (=> b!2485557 (=> (not res!1052067) (not e!1578179))))

(declare-fun c!395070 () Bool)

(assert (=> b!2485557 (= c!395070 e!1578179)))

(declare-fun bm!152403 () Bool)

(declare-fun call!152409 () Option!5778)

(assert (=> bm!152403 (= call!152406 (isDefined!4599 call!152409))))

(declare-fun b!2485558 () Bool)

(declare-fun Unit!42835 () Unit!42828)

(assert (=> b!2485558 (= e!1578175 Unit!42835)))

(declare-fun bm!152404 () Bool)

(assert (=> bm!152404 (= call!152409 (getPair!82 call!152405 key!2246))))

(declare-fun b!2485559 () Bool)

(declare-fun Unit!42836 () Unit!42828)

(assert (=> b!2485559 (= e!1578178 Unit!42836)))

(assert (=> b!2485560 (= e!1578178 (forallContained!895 (toList!1658 (map!6311 (v!31624 (underlying!7032 thiss!42540)))) lambda!94475 (tuple2!29157 lt!891719 (apply!6979 (v!31624 (underlying!7032 thiss!42540)) lt!891719))))))

(declare-fun c!395072 () Bool)

(assert (=> b!2485560 (= c!395072 (not (contains!5202 (toList!1658 (map!6311 (v!31624 (underlying!7032 thiss!42540)))) (tuple2!29157 lt!891719 (apply!6979 (v!31624 (underlying!7032 thiss!42540)) lt!891719)))))))

(declare-fun lt!891718 () Unit!42828)

(assert (=> b!2485560 (= lt!891718 e!1578180)))

(declare-fun b!2485561 () Bool)

(declare-fun lt!891721 () Unit!42828)

(assert (=> b!2485561 (= e!1578176 lt!891721)))

(assert (=> b!2485561 (= lt!891714 call!152408)))

(declare-fun lemmaInGenericMapThenInLongMap!82 (ListLongMap!609 K!5615 Hashable!3322) Unit!42828)

(assert (=> b!2485561 (= lt!891721 (lemmaInGenericMapThenInLongMap!82 lt!891714 key!2246 (hashF!5318 thiss!42540)))))

(declare-fun res!1052065 () Bool)

(assert (=> b!2485561 (= res!1052065 call!152407)))

(assert (=> b!2485561 (=> (not res!1052065) (not e!1578177))))

(assert (=> b!2485561 e!1578177))

(assert (= (and d!713599 c!395069) b!2485560))

(assert (= (and d!713599 (not c!395069)) b!2485559))

(assert (= (and b!2485560 c!395072) b!2485556))

(assert (= (and b!2485560 (not c!395072)) b!2485554))

(assert (= (and d!713599 c!395071) b!2485561))

(assert (= (and d!713599 (not c!395071)) b!2485557))

(assert (= (and b!2485561 res!1052065) b!2485553))

(assert (= (and b!2485557 res!1052067) b!2485552))

(assert (= (and b!2485557 c!395070) b!2485551))

(assert (= (and b!2485557 (not c!395070)) b!2485558))

(assert (= (or b!2485561 b!2485557 b!2485552 b!2485551) bm!152399))

(assert (= (or b!2485561 b!2485553 b!2485557 b!2485552) bm!152401))

(assert (= (or b!2485553 b!2485552) bm!152402))

(assert (= (or b!2485561 b!2485557) bm!152400))

(assert (= (or b!2485553 b!2485552) bm!152404))

(assert (= (or b!2485553 b!2485552) bm!152403))

(assert (= (and d!713599 res!1052066) b!2485555))

(declare-fun m!2853837 () Bool)

(assert (=> bm!152403 m!2853837))

(declare-fun m!2853839 () Bool)

(assert (=> b!2485556 m!2853839))

(declare-fun m!2853841 () Bool)

(assert (=> b!2485556 m!2853841))

(declare-fun m!2853843 () Bool)

(assert (=> b!2485556 m!2853843))

(assert (=> b!2485556 m!2853681))

(declare-fun m!2853845 () Bool)

(assert (=> b!2485556 m!2853845))

(declare-fun m!2853847 () Bool)

(assert (=> b!2485556 m!2853847))

(declare-fun m!2853849 () Bool)

(assert (=> b!2485556 m!2853849))

(declare-fun m!2853851 () Bool)

(assert (=> b!2485556 m!2853851))

(assert (=> b!2485556 m!2853839))

(declare-fun m!2853853 () Bool)

(assert (=> b!2485556 m!2853853))

(declare-fun m!2853855 () Bool)

(assert (=> b!2485561 m!2853855))

(assert (=> bm!152399 m!2853681))

(assert (=> b!2485560 m!2853681))

(assert (=> b!2485560 m!2853849))

(declare-fun m!2853857 () Bool)

(assert (=> b!2485560 m!2853857))

(declare-fun m!2853859 () Bool)

(assert (=> b!2485560 m!2853859))

(assert (=> bm!152401 m!2853687))

(declare-fun m!2853861 () Bool)

(assert (=> bm!152400 m!2853861))

(declare-fun m!2853863 () Bool)

(assert (=> bm!152404 m!2853863))

(declare-fun m!2853865 () Bool)

(assert (=> d!713599 m!2853865))

(assert (=> d!713599 m!2853681))

(assert (=> d!713599 m!2853811))

(assert (=> d!713599 m!2853699))

(assert (=> d!713599 m!2853811))

(declare-fun m!2853867 () Bool)

(assert (=> d!713599 m!2853867))

(assert (=> d!713599 m!2853687))

(assert (=> d!713599 m!2853695))

(assert (=> d!713599 m!2853695))

(declare-fun m!2853869 () Bool)

(assert (=> d!713599 m!2853869))

(declare-fun m!2853871 () Bool)

(assert (=> bm!152402 m!2853871))

(declare-fun m!2853873 () Bool)

(assert (=> b!2485551 m!2853873))

(assert (=> b!2485551 m!2853873))

(declare-fun m!2853875 () Bool)

(assert (=> b!2485551 m!2853875))

(declare-fun m!2853877 () Bool)

(assert (=> b!2485551 m!2853877))

(assert (=> b!2485555 m!2853849))

(assert (=> b!2485555 m!2853849))

(declare-fun m!2853879 () Bool)

(assert (=> b!2485555 m!2853879))

(assert (=> b!2485555 m!2853879))

(declare-fun m!2853881 () Bool)

(assert (=> b!2485555 m!2853881))

(assert (=> b!2485442 d!713599))

(declare-fun bs!467902 () Bool)

(declare-fun b!2485562 () Bool)

(assert (= bs!467902 (and b!2485562 b!2485527)))

(declare-fun lambda!94476 () Int)

(assert (=> bs!467902 (= lambda!94476 lambda!94471)))

(declare-fun bs!467903 () Bool)

(assert (= bs!467903 (and b!2485562 d!713597)))

(assert (=> bs!467903 (not (= lambda!94476 lambda!94472))))

(declare-fun bs!467904 () Bool)

(assert (= bs!467904 (and b!2485562 b!2485438)))

(assert (=> bs!467904 (= lambda!94476 lambda!94453)))

(declare-fun bs!467905 () Bool)

(assert (= bs!467905 (and b!2485562 b!2485560)))

(assert (=> bs!467905 (= lambda!94476 lambda!94475)))

(declare-fun bs!467906 () Bool)

(assert (= bs!467906 (and b!2485562 d!713567)))

(assert (=> bs!467906 (= lambda!94476 lambda!94465)))

(declare-fun bs!467907 () Bool)

(assert (= bs!467907 (and b!2485562 d!713553)))

(assert (=> bs!467907 (not (= lambda!94476 lambda!94456))))

(declare-fun bs!467908 () Bool)

(assert (= bs!467908 (and b!2485562 d!713593)))

(assert (=> bs!467908 (not (= lambda!94476 lambda!94468))))

(declare-fun d!713601 () Bool)

(declare-fun res!1052068 () Bool)

(declare-fun e!1578182 () Bool)

(assert (=> d!713601 (=> (not res!1052068) (not e!1578182))))

(assert (=> d!713601 (= res!1052068 (valid!2622 (v!31624 (underlying!7032 thiss!42540))))))

(assert (=> d!713601 (= (valid!2621 thiss!42540) e!1578182)))

(declare-fun res!1052069 () Bool)

(assert (=> b!2485562 (=> (not res!1052069) (not e!1578182))))

(assert (=> b!2485562 (= res!1052069 (forall!6004 (toList!1658 (map!6311 (v!31624 (underlying!7032 thiss!42540)))) lambda!94476))))

(declare-fun b!2485563 () Bool)

(assert (=> b!2485563 (= e!1578182 (allKeysSameHashInMap!189 (map!6311 (v!31624 (underlying!7032 thiss!42540))) (hashF!5318 thiss!42540)))))

(assert (= (and d!713601 res!1052068) b!2485562))

(assert (= (and b!2485562 res!1052069) b!2485563))

(assert (=> d!713601 m!2853785))

(assert (=> b!2485562 m!2853681))

(declare-fun m!2853883 () Bool)

(assert (=> b!2485562 m!2853883))

(assert (=> b!2485563 m!2853681))

(assert (=> b!2485563 m!2853681))

(declare-fun m!2853885 () Bool)

(assert (=> b!2485563 m!2853885))

(assert (=> b!2485441 d!713601))

(declare-fun b!2485582 () Bool)

(declare-fun e!1578195 () Bool)

(declare-datatypes ((List!29301 0))(
  ( (Nil!29201) (Cons!29201 (h!34616 K!5615) (t!210986 List!29301)) )
))
(declare-fun contains!5204 (List!29301 K!5615) Bool)

(declare-fun keys!9366 (ListMap!1137) List!29301)

(assert (=> b!2485582 (= e!1578195 (not (contains!5204 (keys!9366 lt!891613) key!2246)))))

(declare-fun b!2485583 () Bool)

(declare-fun e!1578200 () Unit!42828)

(declare-fun e!1578197 () Unit!42828)

(assert (=> b!2485583 (= e!1578200 e!1578197)))

(declare-fun c!395079 () Bool)

(declare-fun call!152412 () Bool)

(assert (=> b!2485583 (= c!395079 call!152412)))

(declare-fun b!2485585 () Bool)

(declare-fun e!1578196 () Bool)

(declare-fun e!1578199 () Bool)

(assert (=> b!2485585 (= e!1578196 e!1578199)))

(declare-fun res!1052076 () Bool)

(assert (=> b!2485585 (=> (not res!1052076) (not e!1578199))))

(declare-datatypes ((Option!5779 0))(
  ( (None!5778) (Some!5778 (v!31631 V!5817)) )
))
(declare-fun isDefined!4601 (Option!5779) Bool)

(declare-fun getValueByKey!153 (List!29299 K!5615) Option!5779)

(assert (=> b!2485585 (= res!1052076 (isDefined!4601 (getValueByKey!153 (toList!1659 lt!891613) key!2246)))))

(declare-fun bm!152407 () Bool)

(declare-fun e!1578198 () List!29301)

(assert (=> bm!152407 (= call!152412 (contains!5204 e!1578198 key!2246))))

(declare-fun c!395080 () Bool)

(declare-fun c!395081 () Bool)

(assert (=> bm!152407 (= c!395080 c!395081)))

(declare-fun b!2485586 () Bool)

(declare-fun getKeysList!20 (List!29299) List!29301)

(assert (=> b!2485586 (= e!1578198 (getKeysList!20 (toList!1659 lt!891613)))))

(declare-fun b!2485587 () Bool)

(assert (=> b!2485587 false))

(declare-fun lt!891742 () Unit!42828)

(declare-fun lt!891749 () Unit!42828)

(assert (=> b!2485587 (= lt!891742 lt!891749)))

(declare-fun containsKey!163 (List!29299 K!5615) Bool)

(assert (=> b!2485587 (containsKey!163 (toList!1659 lt!891613) key!2246)))

(declare-fun lemmaInGetKeysListThenContainsKey!17 (List!29299 K!5615) Unit!42828)

(assert (=> b!2485587 (= lt!891749 (lemmaInGetKeysListThenContainsKey!17 (toList!1659 lt!891613) key!2246))))

(declare-fun Unit!42837 () Unit!42828)

(assert (=> b!2485587 (= e!1578197 Unit!42837)))

(declare-fun b!2485588 () Bool)

(declare-fun lt!891747 () Unit!42828)

(assert (=> b!2485588 (= e!1578200 lt!891747)))

(declare-fun lt!891748 () Unit!42828)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!110 (List!29299 K!5615) Unit!42828)

(assert (=> b!2485588 (= lt!891748 (lemmaContainsKeyImpliesGetValueByKeyDefined!110 (toList!1659 lt!891613) key!2246))))

(assert (=> b!2485588 (isDefined!4601 (getValueByKey!153 (toList!1659 lt!891613) key!2246))))

(declare-fun lt!891746 () Unit!42828)

(assert (=> b!2485588 (= lt!891746 lt!891748)))

(declare-fun lemmaInListThenGetKeysListContains!17 (List!29299 K!5615) Unit!42828)

(assert (=> b!2485588 (= lt!891747 (lemmaInListThenGetKeysListContains!17 (toList!1659 lt!891613) key!2246))))

(assert (=> b!2485588 call!152412))

(declare-fun b!2485589 () Bool)

(declare-fun Unit!42838 () Unit!42828)

(assert (=> b!2485589 (= e!1578197 Unit!42838)))

(declare-fun b!2485590 () Bool)

(assert (=> b!2485590 (= e!1578199 (contains!5204 (keys!9366 lt!891613) key!2246))))

(declare-fun d!713603 () Bool)

(assert (=> d!713603 e!1578196))

(declare-fun res!1052077 () Bool)

(assert (=> d!713603 (=> res!1052077 e!1578196)))

(assert (=> d!713603 (= res!1052077 e!1578195)))

(declare-fun res!1052078 () Bool)

(assert (=> d!713603 (=> (not res!1052078) (not e!1578195))))

(declare-fun lt!891743 () Bool)

(assert (=> d!713603 (= res!1052078 (not lt!891743))))

(declare-fun lt!891745 () Bool)

(assert (=> d!713603 (= lt!891743 lt!891745)))

(declare-fun lt!891744 () Unit!42828)

(assert (=> d!713603 (= lt!891744 e!1578200)))

(assert (=> d!713603 (= c!395081 lt!891745)))

(assert (=> d!713603 (= lt!891745 (containsKey!163 (toList!1659 lt!891613) key!2246))))

(assert (=> d!713603 (= (contains!5199 lt!891613 key!2246) lt!891743)))

(declare-fun b!2485584 () Bool)

(assert (=> b!2485584 (= e!1578198 (keys!9366 lt!891613))))

(assert (= (and d!713603 c!395081) b!2485588))

(assert (= (and d!713603 (not c!395081)) b!2485583))

(assert (= (and b!2485583 c!395079) b!2485587))

(assert (= (and b!2485583 (not c!395079)) b!2485589))

(assert (= (or b!2485588 b!2485583) bm!152407))

(assert (= (and bm!152407 c!395080) b!2485586))

(assert (= (and bm!152407 (not c!395080)) b!2485584))

(assert (= (and d!713603 res!1052078) b!2485582))

(assert (= (and d!713603 (not res!1052077)) b!2485585))

(assert (= (and b!2485585 res!1052076) b!2485590))

(declare-fun m!2853887 () Bool)

(assert (=> b!2485587 m!2853887))

(declare-fun m!2853889 () Bool)

(assert (=> b!2485587 m!2853889))

(declare-fun m!2853891 () Bool)

(assert (=> b!2485584 m!2853891))

(assert (=> d!713603 m!2853887))

(assert (=> b!2485590 m!2853891))

(assert (=> b!2485590 m!2853891))

(declare-fun m!2853893 () Bool)

(assert (=> b!2485590 m!2853893))

(declare-fun m!2853895 () Bool)

(assert (=> b!2485588 m!2853895))

(declare-fun m!2853897 () Bool)

(assert (=> b!2485588 m!2853897))

(assert (=> b!2485588 m!2853897))

(declare-fun m!2853899 () Bool)

(assert (=> b!2485588 m!2853899))

(declare-fun m!2853901 () Bool)

(assert (=> b!2485588 m!2853901))

(assert (=> b!2485585 m!2853897))

(assert (=> b!2485585 m!2853897))

(assert (=> b!2485585 m!2853899))

(assert (=> b!2485582 m!2853891))

(assert (=> b!2485582 m!2853891))

(assert (=> b!2485582 m!2853893))

(declare-fun m!2853903 () Bool)

(assert (=> bm!152407 m!2853903))

(declare-fun m!2853905 () Bool)

(assert (=> b!2485586 m!2853905))

(assert (=> b!2485436 d!713603))

(declare-fun tp!795699 () Bool)

(declare-fun e!1578203 () Bool)

(declare-fun tp_is_empty!12379 () Bool)

(declare-fun b!2485595 () Bool)

(assert (=> b!2485595 (= e!1578203 (and tp_is_empty!12377 tp_is_empty!12379 tp!795699))))

(assert (=> b!2485433 (= tp!795691 e!1578203)))

(assert (= (and b!2485433 ((_ is Cons!29199) (zeroValue!3670 (v!31623 (underlying!7031 (v!31624 (underlying!7032 thiss!42540))))))) b!2485595))

(declare-fun tp!795700 () Bool)

(declare-fun b!2485596 () Bool)

(declare-fun e!1578204 () Bool)

(assert (=> b!2485596 (= e!1578204 (and tp_is_empty!12377 tp_is_empty!12379 tp!795700))))

(assert (=> b!2485433 (= tp!795696 e!1578204)))

(assert (= (and b!2485433 ((_ is Cons!29199) (minValue!3670 (v!31623 (underlying!7031 (v!31624 (underlying!7032 thiss!42540))))))) b!2485596))

(declare-fun b!2485597 () Bool)

(declare-fun e!1578205 () Bool)

(declare-fun tp!795701 () Bool)

(assert (=> b!2485597 (= e!1578205 (and tp_is_empty!12377 tp_is_empty!12379 tp!795701))))

(assert (=> b!2485430 (= tp!795690 e!1578205)))

(assert (= (and b!2485430 ((_ is Cons!29199) mapDefault!15741)) b!2485597))

(declare-fun condMapEmpty!15744 () Bool)

(declare-fun mapDefault!15744 () List!29299)

(assert (=> mapNonEmpty!15741 (= condMapEmpty!15744 (= mapRest!15741 ((as const (Array (_ BitVec 32) List!29299)) mapDefault!15744)))))

(declare-fun e!1578211 () Bool)

(declare-fun mapRes!15744 () Bool)

(assert (=> mapNonEmpty!15741 (= tp!795694 (and e!1578211 mapRes!15744))))

(declare-fun tp!795708 () Bool)

(declare-fun b!2485605 () Bool)

(assert (=> b!2485605 (= e!1578211 (and tp_is_empty!12377 tp_is_empty!12379 tp!795708))))

(declare-fun tp!795709 () Bool)

(declare-fun e!1578210 () Bool)

(declare-fun b!2485604 () Bool)

(assert (=> b!2485604 (= e!1578210 (and tp_is_empty!12377 tp_is_empty!12379 tp!795709))))

(declare-fun mapNonEmpty!15744 () Bool)

(declare-fun tp!795710 () Bool)

(assert (=> mapNonEmpty!15744 (= mapRes!15744 (and tp!795710 e!1578210))))

(declare-fun mapRest!15744 () (Array (_ BitVec 32) List!29299))

(declare-fun mapValue!15744 () List!29299)

(declare-fun mapKey!15744 () (_ BitVec 32))

(assert (=> mapNonEmpty!15744 (= mapRest!15741 (store mapRest!15744 mapKey!15744 mapValue!15744))))

(declare-fun mapIsEmpty!15744 () Bool)

(assert (=> mapIsEmpty!15744 mapRes!15744))

(assert (= (and mapNonEmpty!15741 condMapEmpty!15744) mapIsEmpty!15744))

(assert (= (and mapNonEmpty!15741 (not condMapEmpty!15744)) mapNonEmpty!15744))

(assert (= (and mapNonEmpty!15744 ((_ is Cons!29199) mapValue!15744)) b!2485604))

(assert (= (and mapNonEmpty!15741 ((_ is Cons!29199) mapDefault!15744)) b!2485605))

(declare-fun m!2853907 () Bool)

(assert (=> mapNonEmpty!15744 m!2853907))

(declare-fun tp!795711 () Bool)

(declare-fun b!2485606 () Bool)

(declare-fun e!1578212 () Bool)

(assert (=> b!2485606 (= e!1578212 (and tp_is_empty!12377 tp_is_empty!12379 tp!795711))))

(assert (=> mapNonEmpty!15741 (= tp!795692 e!1578212)))

(assert (= (and mapNonEmpty!15741 ((_ is Cons!29199) mapValue!15741)) b!2485606))

(declare-fun b_lambda!76313 () Bool)

(assert (= b_lambda!76311 (or (and b!2485433 b_free!72505) b_lambda!76313)))

(declare-fun b_lambda!76315 () Bool)

(assert (= b_lambda!76309 (or b!2485438 b_lambda!76315)))

(declare-fun bs!467909 () Bool)

(declare-fun d!713605 () Bool)

(assert (= bs!467909 (and d!713605 b!2485438)))

(assert (=> bs!467909 (= (dynLambda!12500 lambda!94453 (tuple2!29157 lt!891612 lt!891599)) (noDuplicateKeys!114 (_2!17120 (tuple2!29157 lt!891612 lt!891599))))))

(declare-fun m!2853909 () Bool)

(assert (=> bs!467909 m!2853909))

(assert (=> d!713571 d!713605))

(declare-fun b_lambda!76317 () Bool)

(assert (= b_lambda!76303 (or b!2485438 b_lambda!76317)))

(declare-fun bs!467910 () Bool)

(declare-fun d!713607 () Bool)

(assert (= bs!467910 (and d!713607 b!2485438)))

(assert (=> bs!467910 (= (dynLambda!12500 lambda!94453 (h!34614 (toList!1658 lt!891614))) (noDuplicateKeys!114 (_2!17120 (h!34614 (toList!1658 lt!891614)))))))

(declare-fun m!2853911 () Bool)

(assert (=> bs!467910 m!2853911))

(assert (=> b!2485448 d!713607))

(declare-fun b_lambda!76319 () Bool)

(assert (= b_lambda!76305 (or b!2485438 b_lambda!76319)))

(declare-fun bs!467911 () Bool)

(declare-fun d!713609 () Bool)

(assert (= bs!467911 (and d!713609 b!2485438)))

(assert (=> bs!467911 (= (dynLambda!12500 lambda!94453 (h!34614 (toList!1658 lt!891601))) (noDuplicateKeys!114 (_2!17120 (h!34614 (toList!1658 lt!891601)))))))

(declare-fun m!2853913 () Bool)

(assert (=> bs!467911 m!2853913))

(assert (=> b!2485456 d!713609))

(declare-fun b_lambda!76321 () Bool)

(assert (= b_lambda!76307 (or b!2485438 b_lambda!76321)))

(declare-fun bs!467912 () Bool)

(declare-fun d!713611 () Bool)

(assert (= bs!467912 (and d!713611 b!2485438)))

(assert (=> bs!467912 (= (dynLambda!12500 lambda!94453 (h!34614 (toList!1658 lt!891603))) (noDuplicateKeys!114 (_2!17120 (h!34614 (toList!1658 lt!891603)))))))

(declare-fun m!2853915 () Bool)

(assert (=> bs!467912 m!2853915))

(assert (=> b!2485458 d!713611))

(check-sat (not bm!152401) (not bs!467912) (not b!2485462) (not bm!152403) (not b!2485588) (not b!2485514) (not bs!467910) (not mapNonEmpty!15744) (not d!713601) (not d!713603) (not d!713557) (not bm!152399) (not bs!467911) (not d!713579) (not d!713581) (not b!2485582) (not b!2485596) (not d!713585) (not b!2485528) (not b!2485584) (not b!2485457) (not d!713599) b_and!188785 (not b_next!73209) (not b!2485522) (not b!2485482) (not d!713567) (not b!2485587) (not b!2485459) (not b!2485562) (not d!713569) (not d!713597) (not b!2485560) (not d!713565) (not b!2485483) (not d!713595) tp_is_empty!12379 (not b!2485449) (not d!713573) (not bm!152385) (not b!2485494) (not bm!152404) (not b!2485517) (not b!2485606) (not b!2485563) (not b!2485586) (not b_lambda!76317) (not d!713575) (not d!713555) (not b!2485561) (not b!2485467) (not b!2485595) (not d!713571) (not d!713593) (not b!2485527) (not bs!467909) (not tb!140401) (not b!2485597) (not b!2485471) (not b!2485585) (not b!2485551) (not d!713587) (not bm!152407) (not b!2485516) (not b!2485468) (not b!2485515) (not b!2485555) (not d!713553) (not d!713583) (not d!713563) (not b!2485604) (not b!2485605) (not b_next!73211) (not b_lambda!76319) (not bm!152400) b_and!188787 (not b!2485556) (not b!2485476) (not b!2485590) (not bm!152402) tp_is_empty!12377 (not bm!152386) (not b_lambda!76321) (not b_lambda!76315) (not b_lambda!76313))
(check-sat b_and!188785 b_and!188787 (not b_next!73209) (not b_next!73211))
