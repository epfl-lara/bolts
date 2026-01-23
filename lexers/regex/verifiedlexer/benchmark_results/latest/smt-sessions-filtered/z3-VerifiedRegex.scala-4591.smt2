; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241792 () Bool)

(assert start!241792)

(declare-fun b!2478341 () Bool)

(declare-fun b_free!72065 () Bool)

(declare-fun b_next!72769 () Bool)

(assert (=> b!2478341 (= b_free!72065 (not b_next!72769))))

(declare-fun tp!793066 () Bool)

(declare-fun b_and!188301 () Bool)

(assert (=> b!2478341 (= tp!793066 b_and!188301)))

(declare-fun b!2478344 () Bool)

(declare-fun b_free!72067 () Bool)

(declare-fun b_next!72771 () Bool)

(assert (=> b!2478344 (= b_free!72067 (not b_next!72771))))

(declare-fun tp!793067 () Bool)

(declare-fun b_and!188303 () Bool)

(assert (=> b!2478344 (= tp!793067 b_and!188303)))

(declare-fun e!1572714 () Bool)

(declare-fun tp!793061 () Bool)

(declare-fun tp!793064 () Bool)

(declare-datatypes ((Hashable!3212 0))(
  ( (HashableExt!3211 (__x!18812 Int)) )
))
(declare-datatypes ((K!5340 0))(
  ( (K!5341 (val!8747 Int)) )
))
(declare-datatypes ((V!5542 0))(
  ( (V!5543 (val!8748 Int)) )
))
(declare-datatypes ((tuple2!28462 0))(
  ( (tuple2!28463 (_1!16772 K!5340) (_2!16772 V!5542)) )
))
(declare-datatypes ((List!29096 0))(
  ( (Nil!28996) (Cons!28996 (h!34398 tuple2!28462) (t!210743 List!29096)) )
))
(declare-datatypes ((array!11655 0))(
  ( (array!11656 (arr!5194 (Array (_ BitVec 32) List!29096)) (size!22613 (_ BitVec 32))) )
))
(declare-datatypes ((array!11657 0))(
  ( (array!11658 (arr!5195 (Array (_ BitVec 32) (_ BitVec 64))) (size!22614 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6604 0))(
  ( (LongMapFixedSize!6605 (defaultEntry!3676 Int) (mask!8442 (_ BitVec 32)) (extraKeys!3550 (_ BitVec 32)) (zeroValue!3560 List!29096) (minValue!3560 List!29096) (_size!6651 (_ BitVec 32)) (_keys!3599 array!11657) (_values!3582 array!11655) (_vacant!3363 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13025 0))(
  ( (Cell!13026 (v!31290 LongMapFixedSize!6604)) )
))
(declare-datatypes ((MutLongMap!3302 0))(
  ( (LongMap!3302 (underlying!6811 Cell!13025)) (MutLongMapExt!3301 (__x!18813 Int)) )
))
(declare-datatypes ((Cell!13027 0))(
  ( (Cell!13028 (v!31291 MutLongMap!3302)) )
))
(declare-datatypes ((MutableMap!3212 0))(
  ( (MutableMapExt!3211 (__x!18814 Int)) (HashMap!3212 (underlying!6812 Cell!13027) (hashF!5150 Hashable!3212) (_size!6652 (_ BitVec 32)) (defaultValue!3374 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3212)

(declare-fun e!1572715 () Bool)

(declare-fun array_inv!3729 (array!11657) Bool)

(declare-fun array_inv!3730 (array!11655) Bool)

(assert (=> b!2478341 (= e!1572715 (and tp!793066 tp!793061 tp!793064 (array_inv!3729 (_keys!3599 (v!31290 (underlying!6811 (v!31291 (underlying!6812 thiss!42540)))))) (array_inv!3730 (_values!3582 (v!31290 (underlying!6811 (v!31291 (underlying!6812 thiss!42540)))))) e!1572714))))

(declare-fun mapNonEmpty!15349 () Bool)

(declare-fun mapRes!15349 () Bool)

(declare-fun tp!793063 () Bool)

(declare-fun tp!793062 () Bool)

(assert (=> mapNonEmpty!15349 (= mapRes!15349 (and tp!793063 tp!793062))))

(declare-fun mapValue!15349 () List!29096)

(declare-fun mapRest!15349 () (Array (_ BitVec 32) List!29096))

(declare-fun mapKey!15349 () (_ BitVec 32))

(assert (=> mapNonEmpty!15349 (= (arr!5194 (_values!3582 (v!31290 (underlying!6811 (v!31291 (underlying!6812 thiss!42540)))))) (store mapRest!15349 mapKey!15349 mapValue!15349))))

(declare-fun b!2478342 () Bool)

(declare-fun e!1572716 () Bool)

(declare-fun e!1572719 () Bool)

(declare-fun lt!885455 () MutLongMap!3302)

(get-info :version)

(assert (=> b!2478342 (= e!1572716 (and e!1572719 ((_ is LongMap!3302) lt!885455)))))

(assert (=> b!2478342 (= lt!885455 (v!31291 (underlying!6812 thiss!42540)))))

(declare-fun res!1049074 () Bool)

(declare-fun e!1572717 () Bool)

(assert (=> start!241792 (=> (not res!1049074) (not e!1572717))))

(assert (=> start!241792 (= res!1049074 ((_ is HashMap!3212) thiss!42540))))

(assert (=> start!241792 e!1572717))

(declare-fun e!1572712 () Bool)

(assert (=> start!241792 e!1572712))

(declare-fun tp_is_empty!12117 () Bool)

(assert (=> start!241792 tp_is_empty!12117))

(declare-fun b!2478343 () Bool)

(declare-fun e!1572713 () Bool)

(assert (=> b!2478343 (= e!1572719 e!1572713)))

(assert (=> b!2478344 (= e!1572712 (and e!1572716 tp!793067))))

(declare-fun b!2478345 () Bool)

(declare-fun tp!793065 () Bool)

(assert (=> b!2478345 (= e!1572714 (and tp!793065 mapRes!15349))))

(declare-fun condMapEmpty!15349 () Bool)

(declare-fun mapDefault!15349 () List!29096)

(assert (=> b!2478345 (= condMapEmpty!15349 (= (arr!5194 (_values!3582 (v!31290 (underlying!6811 (v!31291 (underlying!6812 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29096)) mapDefault!15349)))))

(declare-fun b!2478346 () Bool)

(declare-fun res!1049073 () Bool)

(assert (=> b!2478346 (=> (not res!1049073) (not e!1572717))))

(declare-fun key!2246 () K!5340)

(declare-fun contains!5000 (MutableMap!3212 K!5340) Bool)

(assert (=> b!2478346 (= res!1049073 (contains!5000 thiss!42540 key!2246))))

(declare-fun mapIsEmpty!15349 () Bool)

(assert (=> mapIsEmpty!15349 mapRes!15349))

(declare-fun b!2478347 () Bool)

(declare-fun res!1049072 () Bool)

(assert (=> b!2478347 (=> (not res!1049072) (not e!1572717))))

(declare-fun valid!2515 (MutableMap!3212) Bool)

(assert (=> b!2478347 (= res!1049072 (valid!2515 thiss!42540))))

(declare-fun b!2478348 () Bool)

(assert (=> b!2478348 (= e!1572713 e!1572715)))

(declare-fun b!2478349 () Bool)

(assert (=> b!2478349 (= e!1572717 (not ((_ is LongMap!3302) (v!31291 (underlying!6812 thiss!42540)))))))

(declare-fun lt!885454 () List!29096)

(declare-fun lt!885451 () List!29096)

(declare-fun removePairForKey!36 (List!29096 K!5340) List!29096)

(assert (=> b!2478349 (= lt!885454 (removePairForKey!36 lt!885451 key!2246))))

(declare-datatypes ((ListMap!973 0))(
  ( (ListMap!974 (toList!1487 List!29096)) )
))
(declare-fun lt!885452 () ListMap!973)

(declare-fun map!6075 (MutableMap!3212) ListMap!973)

(assert (=> b!2478349 (= lt!885452 (map!6075 thiss!42540))))

(declare-datatypes ((Unit!42396 0))(
  ( (Unit!42397) )
))
(declare-fun lt!885453 () Unit!42396)

(declare-fun lt!885456 () (_ BitVec 64))

(declare-fun lambda!93538 () Int)

(declare-datatypes ((tuple2!28464 0))(
  ( (tuple2!28465 (_1!16773 (_ BitVec 64)) (_2!16773 List!29096)) )
))
(declare-datatypes ((List!29097 0))(
  ( (Nil!28997) (Cons!28997 (h!34399 tuple2!28464) (t!210744 List!29097)) )
))
(declare-fun forallContained!817 (List!29097 Int tuple2!28464) Unit!42396)

(declare-datatypes ((ListLongMap!431 0))(
  ( (ListLongMap!432 (toList!1488 List!29097)) )
))
(declare-fun map!6076 (MutLongMap!3302) ListLongMap!431)

(assert (=> b!2478349 (= lt!885453 (forallContained!817 (toList!1488 (map!6076 (v!31291 (underlying!6812 thiss!42540)))) lambda!93538 (tuple2!28465 lt!885456 lt!885451)))))

(declare-fun apply!6860 (MutLongMap!3302 (_ BitVec 64)) List!29096)

(assert (=> b!2478349 (= lt!885451 (apply!6860 (v!31291 (underlying!6812 thiss!42540)) lt!885456))))

(declare-fun hash!632 (Hashable!3212 K!5340) (_ BitVec 64))

(assert (=> b!2478349 (= lt!885456 (hash!632 (hashF!5150 thiss!42540) key!2246))))

(assert (= (and start!241792 res!1049074) b!2478347))

(assert (= (and b!2478347 res!1049072) b!2478346))

(assert (= (and b!2478346 res!1049073) b!2478349))

(assert (= (and b!2478345 condMapEmpty!15349) mapIsEmpty!15349))

(assert (= (and b!2478345 (not condMapEmpty!15349)) mapNonEmpty!15349))

(assert (= b!2478341 b!2478345))

(assert (= b!2478348 b!2478341))

(assert (= b!2478343 b!2478348))

(assert (= (and b!2478342 ((_ is LongMap!3302) (v!31291 (underlying!6812 thiss!42540)))) b!2478343))

(assert (= b!2478344 b!2478342))

(assert (= (and start!241792 ((_ is HashMap!3212) thiss!42540)) b!2478344))

(declare-fun m!2846091 () Bool)

(assert (=> b!2478346 m!2846091))

(declare-fun m!2846093 () Bool)

(assert (=> mapNonEmpty!15349 m!2846093))

(declare-fun m!2846095 () Bool)

(assert (=> b!2478349 m!2846095))

(declare-fun m!2846097 () Bool)

(assert (=> b!2478349 m!2846097))

(declare-fun m!2846099 () Bool)

(assert (=> b!2478349 m!2846099))

(declare-fun m!2846101 () Bool)

(assert (=> b!2478349 m!2846101))

(declare-fun m!2846103 () Bool)

(assert (=> b!2478349 m!2846103))

(declare-fun m!2846105 () Bool)

(assert (=> b!2478349 m!2846105))

(declare-fun m!2846107 () Bool)

(assert (=> b!2478341 m!2846107))

(declare-fun m!2846109 () Bool)

(assert (=> b!2478341 m!2846109))

(declare-fun m!2846111 () Bool)

(assert (=> b!2478347 m!2846111))

(check-sat (not b!2478349) (not b!2478347) (not b_next!72769) (not mapNonEmpty!15349) (not b!2478345) (not b_next!72771) b_and!188301 (not b!2478341) tp_is_empty!12117 b_and!188303 (not b!2478346))
(check-sat b_and!188303 b_and!188301 (not b_next!72769) (not b_next!72771))
