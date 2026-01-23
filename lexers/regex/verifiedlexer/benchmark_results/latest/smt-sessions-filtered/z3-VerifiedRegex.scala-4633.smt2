; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242440 () Bool)

(assert start!242440)

(declare-fun b!2483617 () Bool)

(declare-fun b_free!72401 () Bool)

(declare-fun b_next!73105 () Bool)

(assert (=> b!2483617 (= b_free!72401 (not b_next!73105))))

(declare-fun tp!795045 () Bool)

(declare-fun b_and!188665 () Bool)

(assert (=> b!2483617 (= tp!795045 b_and!188665)))

(declare-fun b!2483622 () Bool)

(declare-fun b_free!72403 () Bool)

(declare-fun b_next!73107 () Bool)

(assert (=> b!2483622 (= b_free!72403 (not b_next!73107))))

(declare-fun tp!795044 () Bool)

(declare-fun b_and!188667 () Bool)

(assert (=> b!2483622 (= tp!795044 b_and!188667)))

(declare-fun b!2483616 () Bool)

(declare-fun e!1576747 () Bool)

(declare-fun tp!795042 () Bool)

(declare-fun mapRes!15642 () Bool)

(assert (=> b!2483616 (= e!1576747 (and tp!795042 mapRes!15642))))

(declare-fun condMapEmpty!15642 () Bool)

(declare-datatypes ((Hashable!3296 0))(
  ( (HashableExt!3295 (__x!19064 Int)) )
))
(declare-datatypes ((K!5550 0))(
  ( (K!5551 (val!8915 Int)) )
))
(declare-datatypes ((V!5752 0))(
  ( (V!5753 (val!8916 Int)) )
))
(declare-datatypes ((tuple2!28954 0))(
  ( (tuple2!28955 (_1!17019 K!5550) (_2!17019 V!5752)) )
))
(declare-datatypes ((List!29249 0))(
  ( (Nil!29149) (Cons!29149 (h!34556 tuple2!28954) (t!210918 List!29249)) )
))
(declare-datatypes ((array!12017 0))(
  ( (array!12018 (arr!5362 (Array (_ BitVec 32) List!29249)) (size!22781 (_ BitVec 32))) )
))
(declare-datatypes ((array!12019 0))(
  ( (array!12020 (arr!5363 (Array (_ BitVec 32) (_ BitVec 64))) (size!22782 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6772 0))(
  ( (LongMapFixedSize!6773 (defaultEntry!3760 Int) (mask!8568 (_ BitVec 32)) (extraKeys!3634 (_ BitVec 32)) (zeroValue!3644 List!29249) (minValue!3644 List!29249) (_size!6819 (_ BitVec 32)) (_keys!3683 array!12019) (_values!3666 array!12017) (_vacant!3447 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13361 0))(
  ( (Cell!13362 (v!31528 LongMapFixedSize!6772)) )
))
(declare-datatypes ((MutLongMap!3386 0))(
  ( (LongMap!3386 (underlying!6979 Cell!13361)) (MutLongMapExt!3385 (__x!19065 Int)) )
))
(declare-datatypes ((Cell!13363 0))(
  ( (Cell!13364 (v!31529 MutLongMap!3386)) )
))
(declare-datatypes ((MutableMap!3296 0))(
  ( (MutableMapExt!3295 (__x!19066 Int)) (HashMap!3296 (underlying!6980 Cell!13363) (hashF!5263 Hashable!3296) (_size!6820 (_ BitVec 32)) (defaultValue!3458 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3296)

(declare-fun mapDefault!15642 () List!29249)

(assert (=> b!2483616 (= condMapEmpty!15642 (= (arr!5362 (_values!3666 (v!31528 (underlying!6979 (v!31529 (underlying!6980 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29249)) mapDefault!15642)))))

(declare-fun tp!795040 () Bool)

(declare-fun e!1576741 () Bool)

(declare-fun tp!795041 () Bool)

(declare-fun array_inv!3849 (array!12019) Bool)

(declare-fun array_inv!3850 (array!12017) Bool)

(assert (=> b!2483617 (= e!1576741 (and tp!795045 tp!795040 tp!795041 (array_inv!3849 (_keys!3683 (v!31528 (underlying!6979 (v!31529 (underlying!6980 thiss!42540)))))) (array_inv!3850 (_values!3666 (v!31528 (underlying!6979 (v!31529 (underlying!6980 thiss!42540)))))) e!1576747))))

(declare-fun b!2483618 () Bool)

(declare-fun e!1576745 () Bool)

(declare-fun e!1576744 () Bool)

(assert (=> b!2483618 (= e!1576745 e!1576744)))

(declare-fun b!2483619 () Bool)

(declare-fun res!1051257 () Bool)

(declare-fun e!1576743 () Bool)

(assert (=> b!2483619 (=> (not res!1051257) (not e!1576743))))

(declare-fun key!2246 () K!5550)

(declare-fun contains!5149 (MutableMap!3296 K!5550) Bool)

(assert (=> b!2483619 (= res!1051257 (contains!5149 thiss!42540 key!2246))))

(declare-fun b!2483620 () Bool)

(declare-fun res!1051254 () Bool)

(assert (=> b!2483620 (=> (not res!1051254) (not e!1576743))))

(declare-fun valid!2593 (MutableMap!3296) Bool)

(assert (=> b!2483620 (= res!1051254 (valid!2593 thiss!42540))))

(declare-fun b!2483621 () Bool)

(declare-fun e!1576746 () Bool)

(declare-datatypes ((Unit!42703 0))(
  ( (Unit!42704) )
))
(declare-datatypes ((tuple2!28956 0))(
  ( (tuple2!28957 (_1!17020 Unit!42703) (_2!17020 MutableMap!3296)) )
))
(declare-fun lt!889720 () tuple2!28956)

(get-info :version)

(assert (=> b!2483621 (= e!1576746 ((_ is HashMap!3296) (_2!17020 lt!889720)))))

(declare-fun lt!889723 () List!29249)

(declare-fun lt!889721 () (_ BitVec 64))

(declare-fun allKeysSameHash!68 (List!29249 (_ BitVec 64) Hashable!3296) Bool)

(assert (=> b!2483621 (allKeysSameHash!68 lt!889723 lt!889721 (hashF!5263 (_2!17020 lt!889720)))))

(declare-fun lt!889719 () Unit!42703)

(declare-datatypes ((tuple2!28958 0))(
  ( (tuple2!28959 (_1!17021 (_ BitVec 64)) (_2!17021 List!29249)) )
))
(declare-datatypes ((List!29250 0))(
  ( (Nil!29150) (Cons!29150 (h!34557 tuple2!28958) (t!210919 List!29250)) )
))
(declare-datatypes ((ListLongMap!563 0))(
  ( (ListLongMap!564 (toList!1614 List!29250)) )
))
(declare-fun lt!889730 () ListLongMap!563)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!61 (List!29250 (_ BitVec 64) List!29249 Hashable!3296) Unit!42703)

(assert (=> b!2483621 (= lt!889719 (lemmaInLongMapAllKeySameHashThenForTuple!61 (toList!1614 lt!889730) lt!889721 lt!889723 (hashF!5263 (_2!17020 lt!889720))))))

(declare-fun e!1576742 () Bool)

(declare-fun e!1576748 () Bool)

(assert (=> b!2483622 (= e!1576742 (and e!1576748 tp!795044))))

(declare-fun b!2483623 () Bool)

(assert (=> b!2483623 (= e!1576744 e!1576741)))

(declare-fun res!1051255 () Bool)

(assert (=> start!242440 (=> (not res!1051255) (not e!1576743))))

(assert (=> start!242440 (= res!1051255 ((_ is HashMap!3296) thiss!42540))))

(assert (=> start!242440 e!1576743))

(assert (=> start!242440 e!1576742))

(declare-fun tp_is_empty!12311 () Bool)

(assert (=> start!242440 tp_is_empty!12311))

(declare-fun b!2483624 () Bool)

(assert (=> b!2483624 (= e!1576743 (not e!1576746))))

(declare-fun res!1051256 () Bool)

(assert (=> b!2483624 (=> res!1051256 e!1576746)))

(declare-datatypes ((tuple2!28960 0))(
  ( (tuple2!28961 (_1!17022 Bool) (_2!17022 MutLongMap!3386)) )
))
(declare-fun lt!889727 () tuple2!28960)

(assert (=> b!2483624 (= res!1051256 (not (_1!17022 lt!889727)))))

(declare-fun lt!889729 () List!29249)

(declare-fun noDuplicateKeys!93 (List!29249) Bool)

(assert (=> b!2483624 (noDuplicateKeys!93 lt!889729)))

(declare-fun lt!889726 () Unit!42703)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!73 (List!29249 K!5550) Unit!42703)

(assert (=> b!2483624 (= lt!889726 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!73 lt!889723 key!2246))))

(declare-fun lt!889728 () Cell!13363)

(declare-fun Unit!42705 () Unit!42703)

(declare-fun Unit!42706 () Unit!42703)

(assert (=> b!2483624 (= lt!889720 (ite (_1!17022 lt!889727) (tuple2!28957 Unit!42705 (HashMap!3296 lt!889728 (hashF!5263 thiss!42540) (bvsub (_size!6820 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3458 thiss!42540))) (tuple2!28957 Unit!42706 (HashMap!3296 lt!889728 (hashF!5263 thiss!42540) (_size!6820 thiss!42540) (defaultValue!3458 thiss!42540)))))))

(assert (=> b!2483624 (= lt!889728 (Cell!13364 (_2!17022 lt!889727)))))

(declare-fun update!204 (MutLongMap!3386 (_ BitVec 64) List!29249) tuple2!28960)

(assert (=> b!2483624 (= lt!889727 (update!204 (v!31529 (underlying!6980 thiss!42540)) lt!889721 lt!889729))))

(declare-fun removePairForKey!85 (List!29249 K!5550) List!29249)

(assert (=> b!2483624 (= lt!889729 (removePairForKey!85 lt!889723 key!2246))))

(declare-datatypes ((ListMap!1095 0))(
  ( (ListMap!1096 (toList!1615 List!29249)) )
))
(declare-fun lt!889725 () ListMap!1095)

(declare-fun map!6247 (MutableMap!3296) ListMap!1095)

(assert (=> b!2483624 (= lt!889725 (map!6247 thiss!42540))))

(declare-fun lt!889722 () Unit!42703)

(declare-fun lambda!94169 () Int)

(declare-fun forallContained!874 (List!29250 Int tuple2!28958) Unit!42703)

(assert (=> b!2483624 (= lt!889722 (forallContained!874 (toList!1614 lt!889730) lambda!94169 (tuple2!28959 lt!889721 lt!889723)))))

(declare-fun map!6248 (MutLongMap!3386) ListLongMap!563)

(assert (=> b!2483624 (= lt!889730 (map!6248 (v!31529 (underlying!6980 thiss!42540))))))

(declare-fun apply!6944 (MutLongMap!3386 (_ BitVec 64)) List!29249)

(assert (=> b!2483624 (= lt!889723 (apply!6944 (v!31529 (underlying!6980 thiss!42540)) lt!889721))))

(declare-fun hash!711 (Hashable!3296 K!5550) (_ BitVec 64))

(assert (=> b!2483624 (= lt!889721 (hash!711 (hashF!5263 thiss!42540) key!2246))))

(declare-fun mapNonEmpty!15642 () Bool)

(declare-fun tp!795039 () Bool)

(declare-fun tp!795043 () Bool)

(assert (=> mapNonEmpty!15642 (= mapRes!15642 (and tp!795039 tp!795043))))

(declare-fun mapRest!15642 () (Array (_ BitVec 32) List!29249))

(declare-fun mapKey!15642 () (_ BitVec 32))

(declare-fun mapValue!15642 () List!29249)

(assert (=> mapNonEmpty!15642 (= (arr!5362 (_values!3666 (v!31528 (underlying!6979 (v!31529 (underlying!6980 thiss!42540)))))) (store mapRest!15642 mapKey!15642 mapValue!15642))))

(declare-fun b!2483625 () Bool)

(declare-fun lt!889724 () MutLongMap!3386)

(assert (=> b!2483625 (= e!1576748 (and e!1576745 ((_ is LongMap!3386) lt!889724)))))

(assert (=> b!2483625 (= lt!889724 (v!31529 (underlying!6980 thiss!42540)))))

(declare-fun mapIsEmpty!15642 () Bool)

(assert (=> mapIsEmpty!15642 mapRes!15642))

(assert (= (and start!242440 res!1051255) b!2483620))

(assert (= (and b!2483620 res!1051254) b!2483619))

(assert (= (and b!2483619 res!1051257) b!2483624))

(assert (= (and b!2483624 (not res!1051256)) b!2483621))

(assert (= (and b!2483616 condMapEmpty!15642) mapIsEmpty!15642))

(assert (= (and b!2483616 (not condMapEmpty!15642)) mapNonEmpty!15642))

(assert (= b!2483617 b!2483616))

(assert (= b!2483623 b!2483617))

(assert (= b!2483618 b!2483623))

(assert (= (and b!2483625 ((_ is LongMap!3386) (v!31529 (underlying!6980 thiss!42540)))) b!2483618))

(assert (= b!2483622 b!2483625))

(assert (= (and start!242440 ((_ is HashMap!3296) thiss!42540)) b!2483622))

(declare-fun m!2851463 () Bool)

(assert (=> b!2483617 m!2851463))

(declare-fun m!2851465 () Bool)

(assert (=> b!2483617 m!2851465))

(declare-fun m!2851467 () Bool)

(assert (=> b!2483619 m!2851467))

(declare-fun m!2851469 () Bool)

(assert (=> b!2483624 m!2851469))

(declare-fun m!2851471 () Bool)

(assert (=> b!2483624 m!2851471))

(declare-fun m!2851473 () Bool)

(assert (=> b!2483624 m!2851473))

(declare-fun m!2851475 () Bool)

(assert (=> b!2483624 m!2851475))

(declare-fun m!2851477 () Bool)

(assert (=> b!2483624 m!2851477))

(declare-fun m!2851479 () Bool)

(assert (=> b!2483624 m!2851479))

(declare-fun m!2851481 () Bool)

(assert (=> b!2483624 m!2851481))

(declare-fun m!2851483 () Bool)

(assert (=> b!2483624 m!2851483))

(declare-fun m!2851485 () Bool)

(assert (=> b!2483624 m!2851485))

(declare-fun m!2851487 () Bool)

(assert (=> b!2483620 m!2851487))

(declare-fun m!2851489 () Bool)

(assert (=> mapNonEmpty!15642 m!2851489))

(declare-fun m!2851491 () Bool)

(assert (=> b!2483621 m!2851491))

(declare-fun m!2851493 () Bool)

(assert (=> b!2483621 m!2851493))

(check-sat b_and!188665 b_and!188667 (not b!2483619) (not b_next!73107) tp_is_empty!12311 (not b!2483621) (not b!2483624) (not b_next!73105) (not mapNonEmpty!15642) (not b!2483617) (not b!2483620) (not b!2483616))
(check-sat b_and!188667 b_and!188665 (not b_next!73105) (not b_next!73107))
