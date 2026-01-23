; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242058 () Bool)

(assert start!242058)

(declare-fun b!2480582 () Bool)

(declare-fun b_free!72225 () Bool)

(declare-fun b_next!72929 () Bool)

(assert (=> b!2480582 (= b_free!72225 (not b_next!72929))))

(declare-fun tp!793980 () Bool)

(declare-fun b_and!188471 () Bool)

(assert (=> b!2480582 (= tp!793980 b_and!188471)))

(declare-fun b!2480585 () Bool)

(declare-fun b_free!72227 () Bool)

(declare-fun b_next!72931 () Bool)

(assert (=> b!2480585 (= b_free!72227 (not b_next!72931))))

(declare-fun tp!793982 () Bool)

(declare-fun b_and!188473 () Bool)

(assert (=> b!2480585 (= tp!793982 b_and!188473)))

(declare-fun b!2480581 () Bool)

(declare-fun e!1574443 () Bool)

(declare-fun e!1574451 () Bool)

(assert (=> b!2480581 (= e!1574443 e!1574451)))

(declare-fun tp!793977 () Bool)

(declare-fun e!1574448 () Bool)

(declare-datatypes ((Hashable!3252 0))(
  ( (HashableExt!3251 (__x!18932 Int)) )
))
(declare-datatypes ((K!5440 0))(
  ( (K!5441 (val!8827 Int)) )
))
(declare-datatypes ((V!5642 0))(
  ( (V!5643 (val!8828 Int)) )
))
(declare-datatypes ((tuple2!28724 0))(
  ( (tuple2!28725 (_1!16903 K!5440) (_2!16903 V!5642)) )
))
(declare-datatypes ((List!29169 0))(
  ( (Nil!29069) (Cons!29069 (h!34475 tuple2!28724) (t!210826 List!29169)) )
))
(declare-datatypes ((array!11825 0))(
  ( (array!11826 (arr!5274 (Array (_ BitVec 32) List!29169)) (size!22693 (_ BitVec 32))) )
))
(declare-datatypes ((array!11827 0))(
  ( (array!11828 (arr!5275 (Array (_ BitVec 32) (_ BitVec 64))) (size!22694 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6684 0))(
  ( (LongMapFixedSize!6685 (defaultEntry!3716 Int) (mask!8502 (_ BitVec 32)) (extraKeys!3590 (_ BitVec 32)) (zeroValue!3600 List!29169) (minValue!3600 List!29169) (_size!6731 (_ BitVec 32)) (_keys!3639 array!11827) (_values!3622 array!11825) (_vacant!3403 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13185 0))(
  ( (Cell!13186 (v!31396 LongMapFixedSize!6684)) )
))
(declare-datatypes ((MutLongMap!3342 0))(
  ( (LongMap!3342 (underlying!6891 Cell!13185)) (MutLongMapExt!3341 (__x!18933 Int)) )
))
(declare-datatypes ((Cell!13187 0))(
  ( (Cell!13188 (v!31397 MutLongMap!3342)) )
))
(declare-datatypes ((MutableMap!3252 0))(
  ( (MutableMapExt!3251 (__x!18934 Int)) (HashMap!3252 (underlying!6892 Cell!13187) (hashF!5210 Hashable!3252) (_size!6732 (_ BitVec 32)) (defaultValue!3414 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3252)

(declare-fun tp!793978 () Bool)

(declare-fun array_inv!3785 (array!11827) Bool)

(declare-fun array_inv!3786 (array!11825) Bool)

(assert (=> b!2480582 (= e!1574451 (and tp!793980 tp!793977 tp!793978 (array_inv!3785 (_keys!3639 (v!31396 (underlying!6891 (v!31397 (underlying!6892 thiss!42540)))))) (array_inv!3786 (_values!3622 (v!31396 (underlying!6891 (v!31397 (underlying!6892 thiss!42540)))))) e!1574448))))

(declare-fun b!2480583 () Bool)

(declare-fun e!1574447 () Bool)

(assert (=> b!2480583 (= e!1574447 e!1574443)))

(declare-fun res!1050088 () Bool)

(declare-fun e!1574446 () Bool)

(assert (=> start!242058 (=> (not res!1050088) (not e!1574446))))

(get-info :version)

(assert (=> start!242058 (= res!1050088 ((_ is HashMap!3252) thiss!42540))))

(assert (=> start!242058 e!1574446))

(declare-fun e!1574444 () Bool)

(assert (=> start!242058 e!1574444))

(declare-fun tp_is_empty!12207 () Bool)

(assert (=> start!242058 tp_is_empty!12207))

(declare-fun mapNonEmpty!15484 () Bool)

(declare-fun mapRes!15484 () Bool)

(declare-fun tp!793981 () Bool)

(declare-fun tp!793976 () Bool)

(assert (=> mapNonEmpty!15484 (= mapRes!15484 (and tp!793981 tp!793976))))

(declare-fun mapValue!15484 () List!29169)

(declare-fun mapKey!15484 () (_ BitVec 32))

(declare-fun mapRest!15484 () (Array (_ BitVec 32) List!29169))

(assert (=> mapNonEmpty!15484 (= (arr!5274 (_values!3622 (v!31396 (underlying!6891 (v!31397 (underlying!6892 thiss!42540)))))) (store mapRest!15484 mapKey!15484 mapValue!15484))))

(declare-fun b!2480584 () Bool)

(declare-fun e!1574449 () Bool)

(declare-fun lt!887652 () MutLongMap!3342)

(assert (=> b!2480584 (= e!1574449 (and e!1574447 ((_ is LongMap!3342) lt!887652)))))

(assert (=> b!2480584 (= lt!887652 (v!31397 (underlying!6892 thiss!42540)))))

(assert (=> b!2480585 (= e!1574444 (and e!1574449 tp!793982))))

(declare-fun b!2480586 () Bool)

(assert (=> b!2480586 (= e!1574446 (not true))))

(declare-fun e!1574442 () Bool)

(assert (=> b!2480586 e!1574442))

(declare-fun res!1050090 () Bool)

(assert (=> b!2480586 (=> (not res!1050090) (not e!1574442))))

(declare-fun lt!887647 () List!29169)

(declare-fun noDuplicateKeys!75 (List!29169) Bool)

(assert (=> b!2480586 (= res!1050090 (noDuplicateKeys!75 lt!887647))))

(declare-datatypes ((Unit!42531 0))(
  ( (Unit!42532) )
))
(declare-fun lt!887645 () Unit!42531)

(declare-fun lt!887650 () List!29169)

(declare-fun key!2246 () K!5440)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!61 (List!29169 K!5440) Unit!42531)

(assert (=> b!2480586 (= lt!887645 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!61 lt!887650 key!2246))))

(declare-fun lt!887646 () (_ BitVec 64))

(declare-datatypes ((tuple2!28726 0))(
  ( (tuple2!28727 (_1!16904 Bool) (_2!16904 MutLongMap!3342)) )
))
(declare-fun lt!887649 () tuple2!28726)

(declare-fun update!182 (MutLongMap!3342 (_ BitVec 64) List!29169) tuple2!28726)

(assert (=> b!2480586 (= lt!887649 (update!182 (v!31397 (underlying!6892 thiss!42540)) lt!887646 lt!887647))))

(declare-fun removePairForKey!65 (List!29169 K!5440) List!29169)

(assert (=> b!2480586 (= lt!887647 (removePairForKey!65 lt!887650 key!2246))))

(declare-datatypes ((ListMap!1037 0))(
  ( (ListMap!1038 (toList!1552 List!29169)) )
))
(declare-fun lt!887648 () ListMap!1037)

(declare-fun map!6158 (MutableMap!3252) ListMap!1037)

(assert (=> b!2480586 (= lt!887648 (map!6158 thiss!42540))))

(declare-fun lambda!93884 () Int)

(declare-fun lt!887651 () Unit!42531)

(declare-datatypes ((tuple2!28728 0))(
  ( (tuple2!28729 (_1!16905 (_ BitVec 64)) (_2!16905 List!29169)) )
))
(declare-datatypes ((List!29170 0))(
  ( (Nil!29070) (Cons!29070 (h!34476 tuple2!28728) (t!210827 List!29170)) )
))
(declare-fun forallContained!846 (List!29170 Int tuple2!28728) Unit!42531)

(declare-datatypes ((ListLongMap!497 0))(
  ( (ListLongMap!498 (toList!1553 List!29170)) )
))
(declare-fun map!6159 (MutLongMap!3342) ListLongMap!497)

(assert (=> b!2480586 (= lt!887651 (forallContained!846 (toList!1553 (map!6159 (v!31397 (underlying!6892 thiss!42540)))) lambda!93884 (tuple2!28729 lt!887646 lt!887650)))))

(declare-fun apply!6903 (MutLongMap!3342 (_ BitVec 64)) List!29169)

(assert (=> b!2480586 (= lt!887650 (apply!6903 (v!31397 (underlying!6892 thiss!42540)) lt!887646))))

(declare-fun hash!678 (Hashable!3252 K!5440) (_ BitVec 64))

(assert (=> b!2480586 (= lt!887646 (hash!678 (hashF!5210 thiss!42540) key!2246))))

(declare-fun b!2480587 () Bool)

(declare-fun tp!793979 () Bool)

(assert (=> b!2480587 (= e!1574448 (and tp!793979 mapRes!15484))))

(declare-fun condMapEmpty!15484 () Bool)

(declare-fun mapDefault!15484 () List!29169)

(assert (=> b!2480587 (= condMapEmpty!15484 (= (arr!5274 (_values!3622 (v!31396 (underlying!6891 (v!31397 (underlying!6892 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29169)) mapDefault!15484)))))

(declare-fun mapIsEmpty!15484 () Bool)

(assert (=> mapIsEmpty!15484 mapRes!15484))

(declare-fun b!2480588 () Bool)

(declare-fun res!1050091 () Bool)

(assert (=> b!2480588 (=> (not res!1050091) (not e!1574446))))

(declare-fun contains!5071 (MutableMap!3252 K!5440) Bool)

(assert (=> b!2480588 (= res!1050091 (contains!5071 thiss!42540 key!2246))))

(declare-fun b!2480589 () Bool)

(declare-fun res!1050092 () Bool)

(assert (=> b!2480589 (=> (not res!1050092) (not e!1574446))))

(declare-fun valid!2549 (MutableMap!3252) Bool)

(assert (=> b!2480589 (= res!1050092 (valid!2549 thiss!42540))))

(declare-fun b!2480590 () Bool)

(declare-fun e!1574445 () Bool)

(assert (=> b!2480590 (= e!1574442 e!1574445)))

(declare-fun res!1050089 () Bool)

(assert (=> b!2480590 (=> res!1050089 e!1574445)))

(assert (=> b!2480590 (= res!1050089 (_1!16904 lt!887649))))

(declare-fun b!2480591 () Bool)

(assert (=> b!2480591 (= e!1574445 (valid!2549 (HashMap!3252 (Cell!13188 (_2!16904 lt!887649)) (hashF!5210 thiss!42540) (_size!6732 thiss!42540) (defaultValue!3414 thiss!42540))))))

(assert (= (and start!242058 res!1050088) b!2480589))

(assert (= (and b!2480589 res!1050092) b!2480588))

(assert (= (and b!2480588 res!1050091) b!2480586))

(assert (= (and b!2480586 res!1050090) b!2480590))

(assert (= (and b!2480590 (not res!1050089)) b!2480591))

(assert (= (and b!2480587 condMapEmpty!15484) mapIsEmpty!15484))

(assert (= (and b!2480587 (not condMapEmpty!15484)) mapNonEmpty!15484))

(assert (= b!2480582 b!2480587))

(assert (= b!2480581 b!2480582))

(assert (= b!2480583 b!2480581))

(assert (= (and b!2480584 ((_ is LongMap!3342) (v!31397 (underlying!6892 thiss!42540)))) b!2480583))

(assert (= b!2480585 b!2480584))

(assert (= (and start!242058 ((_ is HashMap!3252) thiss!42540)) b!2480585))

(declare-fun m!2848623 () Bool)

(assert (=> b!2480588 m!2848623))

(declare-fun m!2848625 () Bool)

(assert (=> b!2480589 m!2848625))

(declare-fun m!2848627 () Bool)

(assert (=> b!2480582 m!2848627))

(declare-fun m!2848629 () Bool)

(assert (=> b!2480582 m!2848629))

(declare-fun m!2848631 () Bool)

(assert (=> b!2480591 m!2848631))

(declare-fun m!2848633 () Bool)

(assert (=> mapNonEmpty!15484 m!2848633))

(declare-fun m!2848635 () Bool)

(assert (=> b!2480586 m!2848635))

(declare-fun m!2848637 () Bool)

(assert (=> b!2480586 m!2848637))

(declare-fun m!2848639 () Bool)

(assert (=> b!2480586 m!2848639))

(declare-fun m!2848641 () Bool)

(assert (=> b!2480586 m!2848641))

(declare-fun m!2848643 () Bool)

(assert (=> b!2480586 m!2848643))

(declare-fun m!2848645 () Bool)

(assert (=> b!2480586 m!2848645))

(declare-fun m!2848647 () Bool)

(assert (=> b!2480586 m!2848647))

(declare-fun m!2848649 () Bool)

(assert (=> b!2480586 m!2848649))

(declare-fun m!2848651 () Bool)

(assert (=> b!2480586 m!2848651))

(check-sat (not b!2480586) (not mapNonEmpty!15484) (not b!2480589) (not b!2480588) (not b!2480591) b_and!188473 tp_is_empty!12207 (not b!2480587) (not b_next!72929) (not b_next!72931) (not b!2480582) b_and!188471)
(check-sat b_and!188473 b_and!188471 (not b_next!72929) (not b_next!72931))
