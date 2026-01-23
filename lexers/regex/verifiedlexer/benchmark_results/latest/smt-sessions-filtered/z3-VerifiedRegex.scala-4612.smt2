; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242062 () Bool)

(assert start!242062)

(declare-fun b!2480694 () Bool)

(declare-fun b_free!72233 () Bool)

(declare-fun b_next!72937 () Bool)

(assert (=> b!2480694 (= b_free!72233 (not b_next!72937))))

(declare-fun tp!794018 () Bool)

(declare-fun b_and!188479 () Bool)

(assert (=> b!2480694 (= tp!794018 b_and!188479)))

(declare-fun b!2480689 () Bool)

(declare-fun b_free!72235 () Bool)

(declare-fun b_next!72939 () Bool)

(assert (=> b!2480689 (= b_free!72235 (not b_next!72939))))

(declare-fun tp!794022 () Bool)

(declare-fun b_and!188481 () Bool)

(assert (=> b!2480689 (= tp!794022 b_and!188481)))

(declare-fun mapNonEmpty!15490 () Bool)

(declare-fun mapRes!15490 () Bool)

(declare-fun tp!794021 () Bool)

(declare-fun tp!794020 () Bool)

(assert (=> mapNonEmpty!15490 (= mapRes!15490 (and tp!794021 tp!794020))))

(declare-datatypes ((K!5445 0))(
  ( (K!5446 (val!8831 Int)) )
))
(declare-datatypes ((V!5647 0))(
  ( (V!5648 (val!8832 Int)) )
))
(declare-datatypes ((tuple2!28732 0))(
  ( (tuple2!28733 (_1!16907 K!5445) (_2!16907 V!5647)) )
))
(declare-datatypes ((List!29172 0))(
  ( (Nil!29072) (Cons!29072 (h!34478 tuple2!28732) (t!210829 List!29172)) )
))
(declare-fun mapValue!15490 () List!29172)

(declare-fun mapKey!15490 () (_ BitVec 32))

(declare-datatypes ((Hashable!3254 0))(
  ( (HashableExt!3253 (__x!18938 Int)) )
))
(declare-datatypes ((array!11833 0))(
  ( (array!11834 (arr!5278 (Array (_ BitVec 32) List!29172)) (size!22697 (_ BitVec 32))) )
))
(declare-datatypes ((array!11835 0))(
  ( (array!11836 (arr!5279 (Array (_ BitVec 32) (_ BitVec 64))) (size!22698 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6688 0))(
  ( (LongMapFixedSize!6689 (defaultEntry!3718 Int) (mask!8505 (_ BitVec 32)) (extraKeys!3592 (_ BitVec 32)) (zeroValue!3602 List!29172) (minValue!3602 List!29172) (_size!6735 (_ BitVec 32)) (_keys!3641 array!11835) (_values!3624 array!11833) (_vacant!3405 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13193 0))(
  ( (Cell!13194 (v!31400 LongMapFixedSize!6688)) )
))
(declare-datatypes ((MutLongMap!3344 0))(
  ( (LongMap!3344 (underlying!6895 Cell!13193)) (MutLongMapExt!3343 (__x!18939 Int)) )
))
(declare-datatypes ((Cell!13195 0))(
  ( (Cell!13196 (v!31401 MutLongMap!3344)) )
))
(declare-datatypes ((MutableMap!3254 0))(
  ( (MutableMapExt!3253 (__x!18940 Int)) (HashMap!3254 (underlying!6896 Cell!13195) (hashF!5212 Hashable!3254) (_size!6736 (_ BitVec 32)) (defaultValue!3416 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3254)

(declare-fun mapRest!15490 () (Array (_ BitVec 32) List!29172))

(assert (=> mapNonEmpty!15490 (= (arr!5278 (_values!3624 (v!31400 (underlying!6895 (v!31401 (underlying!6896 thiss!42540)))))) (store mapRest!15490 mapKey!15490 mapValue!15490))))

(declare-fun b!2480687 () Bool)

(declare-fun e!1574534 () Bool)

(assert (=> b!2480687 (= e!1574534 (not true))))

(declare-datatypes ((Unit!42533 0))(
  ( (Unit!42534) )
))
(declare-fun lt!887743 () Unit!42533)

(declare-fun e!1574530 () Unit!42533)

(assert (=> b!2480687 (= lt!887743 e!1574530)))

(declare-fun c!394455 () Bool)

(declare-datatypes ((tuple2!28734 0))(
  ( (tuple2!28735 (_1!16908 Bool) (_2!16908 MutLongMap!3344)) )
))
(declare-fun lt!887760 () tuple2!28734)

(assert (=> b!2480687 (= c!394455 (_1!16908 lt!887760))))

(declare-fun e!1574531 () Bool)

(assert (=> b!2480687 e!1574531))

(declare-fun res!1050151 () Bool)

(assert (=> b!2480687 (=> (not res!1050151) (not e!1574531))))

(declare-fun lt!887759 () List!29172)

(declare-fun noDuplicateKeys!76 (List!29172) Bool)

(assert (=> b!2480687 (= res!1050151 (noDuplicateKeys!76 lt!887759))))

(declare-fun lt!887752 () Unit!42533)

(declare-fun lt!887754 () List!29172)

(declare-fun key!2246 () K!5445)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!62 (List!29172 K!5445) Unit!42533)

(assert (=> b!2480687 (= lt!887752 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!62 lt!887754 key!2246))))

(declare-fun lt!887745 () Cell!13195)

(declare-datatypes ((tuple2!28736 0))(
  ( (tuple2!28737 (_1!16909 Unit!42533) (_2!16909 MutableMap!3254)) )
))
(declare-fun lt!887747 () tuple2!28736)

(declare-fun Unit!42535 () Unit!42533)

(declare-fun Unit!42536 () Unit!42533)

(assert (=> b!2480687 (= lt!887747 (ite (_1!16908 lt!887760) (tuple2!28737 Unit!42535 (HashMap!3254 lt!887745 (hashF!5212 thiss!42540) (bvsub (_size!6736 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3416 thiss!42540))) (tuple2!28737 Unit!42536 (HashMap!3254 lt!887745 (hashF!5212 thiss!42540) (_size!6736 thiss!42540) (defaultValue!3416 thiss!42540)))))))

(assert (=> b!2480687 (= lt!887745 (Cell!13196 (_2!16908 lt!887760)))))

(declare-fun lt!887751 () (_ BitVec 64))

(declare-fun update!183 (MutLongMap!3344 (_ BitVec 64) List!29172) tuple2!28734)

(assert (=> b!2480687 (= lt!887760 (update!183 (v!31401 (underlying!6896 thiss!42540)) lt!887751 lt!887759))))

(declare-fun removePairForKey!66 (List!29172 K!5445) List!29172)

(assert (=> b!2480687 (= lt!887759 (removePairForKey!66 lt!887754 key!2246))))

(declare-datatypes ((ListMap!1039 0))(
  ( (ListMap!1040 (toList!1554 List!29172)) )
))
(declare-fun lt!887749 () ListMap!1039)

(declare-fun map!6161 (MutableMap!3254) ListMap!1039)

(assert (=> b!2480687 (= lt!887749 (map!6161 thiss!42540))))

(declare-datatypes ((tuple2!28738 0))(
  ( (tuple2!28739 (_1!16910 (_ BitVec 64)) (_2!16910 List!29172)) )
))
(declare-datatypes ((List!29173 0))(
  ( (Nil!29073) (Cons!29073 (h!34479 tuple2!28738) (t!210830 List!29173)) )
))
(declare-datatypes ((ListLongMap!499 0))(
  ( (ListLongMap!500 (toList!1555 List!29173)) )
))
(declare-fun lt!887744 () ListLongMap!499)

(declare-fun lambda!93898 () Int)

(declare-fun lt!887757 () Unit!42533)

(declare-fun forallContained!847 (List!29173 Int tuple2!28738) Unit!42533)

(assert (=> b!2480687 (= lt!887757 (forallContained!847 (toList!1555 lt!887744) lambda!93898 (tuple2!28739 lt!887751 lt!887754)))))

(declare-fun map!6162 (MutLongMap!3344) ListLongMap!499)

(assert (=> b!2480687 (= lt!887744 (map!6162 (v!31401 (underlying!6896 thiss!42540))))))

(declare-fun apply!6904 (MutLongMap!3344 (_ BitVec 64)) List!29172)

(assert (=> b!2480687 (= lt!887754 (apply!6904 (v!31401 (underlying!6896 thiss!42540)) lt!887751))))

(declare-fun hash!679 (Hashable!3254 K!5445) (_ BitVec 64))

(assert (=> b!2480687 (= lt!887751 (hash!679 (hashF!5212 thiss!42540) key!2246))))

(declare-fun b!2480688 () Bool)

(declare-fun res!1050150 () Bool)

(assert (=> b!2480688 (=> (not res!1050150) (not e!1574534))))

(declare-fun contains!5072 (MutableMap!3254 K!5445) Bool)

(assert (=> b!2480688 (= res!1050150 (contains!5072 thiss!42540 key!2246))))

(declare-fun e!1574529 () Bool)

(declare-fun e!1574536 () Bool)

(assert (=> b!2480689 (= e!1574529 (and e!1574536 tp!794022))))

(declare-fun b!2480690 () Bool)

(declare-fun e!1574532 () Bool)

(declare-fun eq!63 (ListMap!1039 ListMap!1039) Bool)

(declare-fun -!119 (ListMap!1039 K!5445) ListMap!1039)

(assert (=> b!2480690 (= e!1574532 (eq!63 (map!6161 (_2!16909 lt!887747)) (-!119 lt!887749 key!2246)))))

(declare-fun res!1050152 () Bool)

(assert (=> start!242062 (=> (not res!1050152) (not e!1574534))))

(get-info :version)

(assert (=> start!242062 (= res!1050152 ((_ is HashMap!3254) thiss!42540))))

(assert (=> start!242062 e!1574534))

(assert (=> start!242062 e!1574529))

(declare-fun tp_is_empty!12211 () Bool)

(assert (=> start!242062 tp_is_empty!12211))

(declare-fun b!2480691 () Bool)

(declare-fun e!1574540 () Bool)

(declare-fun e!1574538 () Bool)

(assert (=> b!2480691 (= e!1574540 e!1574538)))

(declare-fun b!2480692 () Bool)

(declare-fun Unit!42537 () Unit!42533)

(assert (=> b!2480692 (= e!1574530 Unit!42537)))

(declare-fun b!2480693 () Bool)

(declare-fun e!1574528 () Bool)

(assert (=> b!2480693 (= e!1574528 (= (map!6161 (_2!16909 lt!887747)) lt!887749))))

(declare-fun tp!794024 () Bool)

(declare-fun tp!794019 () Bool)

(declare-fun e!1574533 () Bool)

(declare-fun array_inv!3787 (array!11835) Bool)

(declare-fun array_inv!3788 (array!11833) Bool)

(assert (=> b!2480694 (= e!1574538 (and tp!794018 tp!794019 tp!794024 (array_inv!3787 (_keys!3641 (v!31400 (underlying!6895 (v!31401 (underlying!6896 thiss!42540)))))) (array_inv!3788 (_values!3624 (v!31400 (underlying!6895 (v!31401 (underlying!6896 thiss!42540)))))) e!1574533))))

(declare-fun b!2480695 () Bool)

(declare-fun res!1050154 () Bool)

(declare-fun valid!2550 (MutableMap!3254) Bool)

(assert (=> b!2480695 (= res!1050154 (valid!2550 (_2!16909 lt!887747)))))

(declare-fun e!1574541 () Bool)

(assert (=> b!2480695 (=> (not res!1050154) (not e!1574541))))

(declare-fun b!2480696 () Bool)

(declare-fun e!1574539 () Bool)

(assert (=> b!2480696 (= e!1574539 e!1574540)))

(declare-fun b!2480697 () Bool)

(declare-fun res!1050148 () Bool)

(assert (=> b!2480697 (=> (not res!1050148) (not e!1574534))))

(assert (=> b!2480697 (= res!1050148 (valid!2550 thiss!42540))))

(declare-fun b!2480698 () Bool)

(declare-fun contains!5073 (ListMap!1039 K!5445) Bool)

(assert (=> b!2480698 (= e!1574541 (contains!5073 lt!887749 key!2246))))

(declare-fun b!2480699 () Bool)

(declare-fun e!1574527 () Bool)

(declare-fun lt!887755 () ListLongMap!499)

(declare-fun allKeysSameHashInMap!156 (ListLongMap!499 Hashable!3254) Bool)

(assert (=> b!2480699 (= e!1574527 (allKeysSameHashInMap!156 lt!887755 (hashF!5212 (_2!16909 lt!887747))))))

(declare-fun mapIsEmpty!15490 () Bool)

(assert (=> mapIsEmpty!15490 mapRes!15490))

(declare-fun b!2480700 () Bool)

(declare-fun lt!887753 () MutLongMap!3344)

(assert (=> b!2480700 (= e!1574536 (and e!1574539 ((_ is LongMap!3344) lt!887753)))))

(assert (=> b!2480700 (= lt!887753 (v!31401 (underlying!6896 thiss!42540)))))

(declare-fun b!2480701 () Bool)

(declare-fun tp!794023 () Bool)

(assert (=> b!2480701 (= e!1574533 (and tp!794023 mapRes!15490))))

(declare-fun condMapEmpty!15490 () Bool)

(declare-fun mapDefault!15490 () List!29172)

(assert (=> b!2480701 (= condMapEmpty!15490 (= (arr!5278 (_values!3624 (v!31400 (underlying!6895 (v!31401 (underlying!6896 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29172)) mapDefault!15490)))))

(declare-fun b!2480702 () Bool)

(declare-fun e!1574537 () Bool)

(assert (=> b!2480702 (= e!1574531 e!1574537)))

(declare-fun res!1050153 () Bool)

(assert (=> b!2480702 (=> res!1050153 e!1574537)))

(assert (=> b!2480702 (= res!1050153 (_1!16908 lt!887760))))

(declare-fun b!2480703 () Bool)

(declare-fun Unit!42538 () Unit!42533)

(assert (=> b!2480703 (= e!1574530 Unit!42538)))

(declare-fun lt!887750 () Unit!42533)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!55 (List!29173 (_ BitVec 64) List!29172 Hashable!3254) Unit!42533)

(assert (=> b!2480703 (= lt!887750 (lemmaInLongMapAllKeySameHashThenForTuple!55 (toList!1555 lt!887744) lt!887751 lt!887754 (hashF!5212 (_2!16909 lt!887747))))))

(declare-fun allKeysSameHash!59 (List!29172 (_ BitVec 64) Hashable!3254) Bool)

(assert (=> b!2480703 (allKeysSameHash!59 lt!887754 lt!887751 (hashF!5212 (_2!16909 lt!887747)))))

(declare-fun lt!887746 () Unit!42533)

(declare-fun lemmaRemovePairForKeyPreservesHash!53 (List!29172 K!5445 (_ BitVec 64) Hashable!3254) Unit!42533)

(assert (=> b!2480703 (= lt!887746 (lemmaRemovePairForKeyPreservesHash!53 lt!887754 key!2246 lt!887751 (hashF!5212 (_2!16909 lt!887747))))))

(assert (=> b!2480703 (allKeysSameHash!59 lt!887759 lt!887751 (hashF!5212 (_2!16909 lt!887747)))))

(declare-fun lt!887758 () Unit!42533)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!49 (ListLongMap!499 (_ BitVec 64) List!29172 Hashable!3254) Unit!42533)

(assert (=> b!2480703 (= lt!887758 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!49 lt!887744 lt!887751 lt!887759 (hashF!5212 (_2!16909 lt!887747))))))

(declare-fun +!78 (ListLongMap!499 tuple2!28738) ListLongMap!499)

(assert (=> b!2480703 (= lt!887755 (+!78 lt!887744 (tuple2!28739 lt!887751 lt!887759)))))

(declare-fun res!1050156 () Bool)

(declare-fun forall!5961 (List!29173 Int) Bool)

(assert (=> b!2480703 (= res!1050156 (forall!5961 (toList!1555 lt!887755) lambda!93898))))

(assert (=> b!2480703 (=> (not res!1050156) (not e!1574527))))

(assert (=> b!2480703 e!1574527))

(declare-fun lt!887756 () ListLongMap!499)

(assert (=> b!2480703 (= lt!887756 (map!6162 (v!31401 (underlying!6896 (_2!16909 lt!887747)))))))

(declare-fun res!1050155 () Bool)

(assert (=> b!2480703 (= res!1050155 (forall!5961 (toList!1555 lt!887756) lambda!93898))))

(assert (=> b!2480703 (=> (not res!1050155) (not e!1574541))))

(assert (=> b!2480703 e!1574541))

(declare-fun lt!887748 () Unit!42533)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!25 (ListLongMap!499 (_ BitVec 64) List!29172 K!5445 Hashable!3254) Unit!42533)

(assert (=> b!2480703 (= lt!887748 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!25 lt!887744 lt!887751 lt!887759 key!2246 (hashF!5212 (_2!16909 lt!887747))))))

(declare-fun res!1050149 () Bool)

(declare-fun extractMap!164 (List!29173) ListMap!1039)

(assert (=> b!2480703 (= res!1050149 (eq!63 (extractMap!164 (toList!1555 lt!887755)) (-!119 (extractMap!164 (toList!1555 lt!887744)) key!2246)))))

(assert (=> b!2480703 (=> (not res!1050149) (not e!1574532))))

(assert (=> b!2480703 e!1574532))

(declare-fun b!2480704 () Bool)

(declare-fun res!1050158 () Bool)

(assert (=> b!2480704 (= res!1050158 (allKeysSameHashInMap!156 lt!887756 (hashF!5212 (_2!16909 lt!887747))))))

(assert (=> b!2480704 (=> (not res!1050158) (not e!1574541))))

(declare-fun b!2480705 () Bool)

(assert (=> b!2480705 (= e!1574537 e!1574528)))

(declare-fun res!1050157 () Bool)

(assert (=> b!2480705 (=> (not res!1050157) (not e!1574528))))

(assert (=> b!2480705 (= res!1050157 (valid!2550 (_2!16909 lt!887747)))))

(assert (= (and start!242062 res!1050152) b!2480697))

(assert (= (and b!2480697 res!1050148) b!2480688))

(assert (= (and b!2480688 res!1050150) b!2480687))

(assert (= (and b!2480687 res!1050151) b!2480702))

(assert (= (and b!2480702 (not res!1050153)) b!2480705))

(assert (= (and b!2480705 res!1050157) b!2480693))

(assert (= (and b!2480687 c!394455) b!2480703))

(assert (= (and b!2480687 (not c!394455)) b!2480692))

(assert (= (and b!2480703 res!1050156) b!2480699))

(assert (= (and b!2480703 res!1050155) b!2480704))

(assert (= (and b!2480704 res!1050158) b!2480695))

(assert (= (and b!2480695 res!1050154) b!2480698))

(assert (= (and b!2480703 res!1050149) b!2480690))

(assert (= (and b!2480701 condMapEmpty!15490) mapIsEmpty!15490))

(assert (= (and b!2480701 (not condMapEmpty!15490)) mapNonEmpty!15490))

(assert (= b!2480694 b!2480701))

(assert (= b!2480691 b!2480694))

(assert (= b!2480696 b!2480691))

(assert (= (and b!2480700 ((_ is LongMap!3344) (v!31401 (underlying!6896 thiss!42540)))) b!2480696))

(assert (= b!2480689 b!2480700))

(assert (= (and start!242062 ((_ is HashMap!3254) thiss!42540)) b!2480689))

(declare-fun m!2848723 () Bool)

(assert (=> mapNonEmpty!15490 m!2848723))

(declare-fun m!2848725 () Bool)

(assert (=> b!2480694 m!2848725))

(declare-fun m!2848727 () Bool)

(assert (=> b!2480694 m!2848727))

(declare-fun m!2848729 () Bool)

(assert (=> b!2480703 m!2848729))

(declare-fun m!2848731 () Bool)

(assert (=> b!2480703 m!2848731))

(declare-fun m!2848733 () Bool)

(assert (=> b!2480703 m!2848733))

(declare-fun m!2848735 () Bool)

(assert (=> b!2480703 m!2848735))

(declare-fun m!2848737 () Bool)

(assert (=> b!2480703 m!2848737))

(declare-fun m!2848739 () Bool)

(assert (=> b!2480703 m!2848739))

(declare-fun m!2848741 () Bool)

(assert (=> b!2480703 m!2848741))

(declare-fun m!2848743 () Bool)

(assert (=> b!2480703 m!2848743))

(declare-fun m!2848745 () Bool)

(assert (=> b!2480703 m!2848745))

(declare-fun m!2848747 () Bool)

(assert (=> b!2480703 m!2848747))

(declare-fun m!2848749 () Bool)

(assert (=> b!2480703 m!2848749))

(assert (=> b!2480703 m!2848741))

(assert (=> b!2480703 m!2848739))

(declare-fun m!2848751 () Bool)

(assert (=> b!2480703 m!2848751))

(declare-fun m!2848753 () Bool)

(assert (=> b!2480703 m!2848753))

(assert (=> b!2480703 m!2848737))

(declare-fun m!2848755 () Bool)

(assert (=> b!2480703 m!2848755))

(declare-fun m!2848757 () Bool)

(assert (=> b!2480698 m!2848757))

(declare-fun m!2848759 () Bool)

(assert (=> b!2480695 m!2848759))

(declare-fun m!2848761 () Bool)

(assert (=> b!2480687 m!2848761))

(declare-fun m!2848763 () Bool)

(assert (=> b!2480687 m!2848763))

(declare-fun m!2848765 () Bool)

(assert (=> b!2480687 m!2848765))

(declare-fun m!2848767 () Bool)

(assert (=> b!2480687 m!2848767))

(declare-fun m!2848769 () Bool)

(assert (=> b!2480687 m!2848769))

(declare-fun m!2848771 () Bool)

(assert (=> b!2480687 m!2848771))

(declare-fun m!2848773 () Bool)

(assert (=> b!2480687 m!2848773))

(declare-fun m!2848775 () Bool)

(assert (=> b!2480687 m!2848775))

(declare-fun m!2848777 () Bool)

(assert (=> b!2480687 m!2848777))

(declare-fun m!2848779 () Bool)

(assert (=> b!2480697 m!2848779))

(declare-fun m!2848781 () Bool)

(assert (=> b!2480693 m!2848781))

(declare-fun m!2848783 () Bool)

(assert (=> b!2480688 m!2848783))

(declare-fun m!2848785 () Bool)

(assert (=> b!2480699 m!2848785))

(declare-fun m!2848787 () Bool)

(assert (=> b!2480704 m!2848787))

(assert (=> b!2480705 m!2848759))

(assert (=> b!2480690 m!2848781))

(declare-fun m!2848789 () Bool)

(assert (=> b!2480690 m!2848789))

(assert (=> b!2480690 m!2848781))

(assert (=> b!2480690 m!2848789))

(declare-fun m!2848791 () Bool)

(assert (=> b!2480690 m!2848791))

(check-sat (not b!2480690) (not b!2480704) (not b!2480698) (not b!2480695) tp_is_empty!12211 (not b!2480701) (not b_next!72937) (not b!2480697) b_and!188481 (not b!2480693) (not mapNonEmpty!15490) (not b!2480694) (not b!2480688) (not b_next!72939) (not b!2480699) (not b!2480703) (not b!2480705) b_and!188479 (not b!2480687))
(check-sat b_and!188481 b_and!188479 (not b_next!72937) (not b_next!72939))
