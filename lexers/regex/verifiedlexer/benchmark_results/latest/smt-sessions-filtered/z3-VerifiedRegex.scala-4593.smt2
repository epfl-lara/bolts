; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241822 () Bool)

(assert start!241822)

(declare-fun b!2478536 () Bool)

(declare-fun b_free!72081 () Bool)

(declare-fun b_next!72785 () Bool)

(assert (=> b!2478536 (= b_free!72081 (not b_next!72785))))

(declare-fun tp!793164 () Bool)

(declare-fun b_and!188319 () Bool)

(assert (=> b!2478536 (= tp!793164 b_and!188319)))

(declare-fun b!2478537 () Bool)

(declare-fun b_free!72083 () Bool)

(declare-fun b_next!72787 () Bool)

(assert (=> b!2478537 (= b_free!72083 (not b_next!72787))))

(declare-fun tp!793165 () Bool)

(declare-fun b_and!188321 () Bool)

(assert (=> b!2478537 (= tp!793165 b_and!188321)))

(declare-fun b!2478531 () Bool)

(declare-fun e!1572863 () Bool)

(declare-fun tp!793163 () Bool)

(declare-fun mapRes!15364 () Bool)

(assert (=> b!2478531 (= e!1572863 (and tp!793163 mapRes!15364))))

(declare-fun condMapEmpty!15364 () Bool)

(declare-datatypes ((Hashable!3216 0))(
  ( (HashableExt!3215 (__x!18824 Int)) )
))
(declare-datatypes ((K!5350 0))(
  ( (K!5351 (val!8755 Int)) )
))
(declare-datatypes ((V!5552 0))(
  ( (V!5553 (val!8756 Int)) )
))
(declare-datatypes ((tuple2!28476 0))(
  ( (tuple2!28477 (_1!16779 K!5350) (_2!16779 V!5552)) )
))
(declare-datatypes ((List!29103 0))(
  ( (Nil!29003) (Cons!29003 (h!34405 tuple2!28476) (t!210752 List!29103)) )
))
(declare-datatypes ((array!11673 0))(
  ( (array!11674 (arr!5202 (Array (_ BitVec 32) List!29103)) (size!22621 (_ BitVec 32))) )
))
(declare-datatypes ((array!11675 0))(
  ( (array!11676 (arr!5203 (Array (_ BitVec 32) (_ BitVec 64))) (size!22622 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6612 0))(
  ( (LongMapFixedSize!6613 (defaultEntry!3680 Int) (mask!8448 (_ BitVec 32)) (extraKeys!3554 (_ BitVec 32)) (zeroValue!3564 List!29103) (minValue!3564 List!29103) (_size!6659 (_ BitVec 32)) (_keys!3603 array!11675) (_values!3586 array!11673) (_vacant!3367 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13041 0))(
  ( (Cell!13042 (v!31300 LongMapFixedSize!6612)) )
))
(declare-datatypes ((MutLongMap!3306 0))(
  ( (LongMap!3306 (underlying!6819 Cell!13041)) (MutLongMapExt!3305 (__x!18825 Int)) )
))
(declare-datatypes ((Cell!13043 0))(
  ( (Cell!13044 (v!31301 MutLongMap!3306)) )
))
(declare-datatypes ((MutableMap!3216 0))(
  ( (MutableMapExt!3215 (__x!18826 Int)) (HashMap!3216 (underlying!6820 Cell!13043) (hashF!5154 Hashable!3216) (_size!6660 (_ BitVec 32)) (defaultValue!3378 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3216)

(declare-fun mapDefault!15364 () List!29103)

(assert (=> b!2478531 (= condMapEmpty!15364 (= (arr!5202 (_values!3586 (v!31300 (underlying!6819 (v!31301 (underlying!6820 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29103)) mapDefault!15364)))))

(declare-fun b!2478532 () Bool)

(declare-fun res!1049134 () Bool)

(declare-fun e!1572869 () Bool)

(assert (=> b!2478532 (=> (not res!1049134) (not e!1572869))))

(declare-fun key!2246 () K!5350)

(declare-fun contains!5006 (MutableMap!3216 K!5350) Bool)

(assert (=> b!2478532 (= res!1049134 (contains!5006 thiss!42540 key!2246))))

(declare-fun b!2478533 () Bool)

(declare-fun e!1572864 () Bool)

(declare-fun e!1572862 () Bool)

(assert (=> b!2478533 (= e!1572864 e!1572862)))

(declare-fun b!2478534 () Bool)

(declare-fun e!1572868 () Bool)

(assert (=> b!2478534 (= e!1572862 e!1572868)))

(declare-fun b!2478535 () Bool)

(assert (=> b!2478535 (= e!1572869 false)))

(declare-fun lt!885601 () Bool)

(declare-fun lt!885606 () List!29103)

(declare-fun noDuplicateKeys!49 (List!29103) Bool)

(assert (=> b!2478535 (= lt!885601 (noDuplicateKeys!49 lt!885606))))

(declare-fun lt!885602 () (_ BitVec 64))

(declare-datatypes ((tuple2!28478 0))(
  ( (tuple2!28479 (_1!16780 Bool) (_2!16780 MutLongMap!3306)) )
))
(declare-fun lt!885605 () tuple2!28478)

(declare-fun update!152 (MutLongMap!3306 (_ BitVec 64) List!29103) tuple2!28478)

(declare-fun removePairForKey!39 (List!29103 K!5350) List!29103)

(assert (=> b!2478535 (= lt!885605 (update!152 (v!31301 (underlying!6820 thiss!42540)) lt!885602 (removePairForKey!39 lt!885606 key!2246)))))

(declare-datatypes ((ListMap!979 0))(
  ( (ListMap!980 (toList!1493 List!29103)) )
))
(declare-fun lt!885603 () ListMap!979)

(declare-fun map!6084 (MutableMap!3216) ListMap!979)

(assert (=> b!2478535 (= lt!885603 (map!6084 thiss!42540))))

(declare-datatypes ((Unit!42407 0))(
  ( (Unit!42408) )
))
(declare-fun lt!885604 () Unit!42407)

(declare-fun lambda!93556 () Int)

(declare-datatypes ((tuple2!28480 0))(
  ( (tuple2!28481 (_1!16781 (_ BitVec 64)) (_2!16781 List!29103)) )
))
(declare-datatypes ((List!29104 0))(
  ( (Nil!29004) (Cons!29004 (h!34406 tuple2!28480) (t!210753 List!29104)) )
))
(declare-fun forallContained!820 (List!29104 Int tuple2!28480) Unit!42407)

(declare-datatypes ((ListLongMap!437 0))(
  ( (ListLongMap!438 (toList!1494 List!29104)) )
))
(declare-fun map!6085 (MutLongMap!3306) ListLongMap!437)

(assert (=> b!2478535 (= lt!885604 (forallContained!820 (toList!1494 (map!6085 (v!31301 (underlying!6820 thiss!42540)))) lambda!93556 (tuple2!28481 lt!885602 lt!885606)))))

(declare-fun apply!6865 (MutLongMap!3306 (_ BitVec 64)) List!29103)

(assert (=> b!2478535 (= lt!885606 (apply!6865 (v!31301 (underlying!6820 thiss!42540)) lt!885602))))

(declare-fun hash!636 (Hashable!3216 K!5350) (_ BitVec 64))

(assert (=> b!2478535 (= lt!885602 (hash!636 (hashF!5154 thiss!42540) key!2246))))

(declare-fun tp!793162 () Bool)

(declare-fun tp!793161 () Bool)

(declare-fun array_inv!3733 (array!11675) Bool)

(declare-fun array_inv!3734 (array!11673) Bool)

(assert (=> b!2478536 (= e!1572868 (and tp!793164 tp!793162 tp!793161 (array_inv!3733 (_keys!3603 (v!31300 (underlying!6819 (v!31301 (underlying!6820 thiss!42540)))))) (array_inv!3734 (_values!3586 (v!31300 (underlying!6819 (v!31301 (underlying!6820 thiss!42540)))))) e!1572863))))

(declare-fun mapNonEmpty!15364 () Bool)

(declare-fun tp!793166 () Bool)

(declare-fun tp!793160 () Bool)

(assert (=> mapNonEmpty!15364 (= mapRes!15364 (and tp!793166 tp!793160))))

(declare-fun mapKey!15364 () (_ BitVec 32))

(declare-fun mapRest!15364 () (Array (_ BitVec 32) List!29103))

(declare-fun mapValue!15364 () List!29103)

(assert (=> mapNonEmpty!15364 (= (arr!5202 (_values!3586 (v!31300 (underlying!6819 (v!31301 (underlying!6820 thiss!42540)))))) (store mapRest!15364 mapKey!15364 mapValue!15364))))

(declare-fun mapIsEmpty!15364 () Bool)

(assert (=> mapIsEmpty!15364 mapRes!15364))

(declare-fun res!1049133 () Bool)

(assert (=> start!241822 (=> (not res!1049133) (not e!1572869))))

(get-info :version)

(assert (=> start!241822 (= res!1049133 ((_ is HashMap!3216) thiss!42540))))

(assert (=> start!241822 e!1572869))

(declare-fun e!1572866 () Bool)

(assert (=> start!241822 e!1572866))

(declare-fun tp_is_empty!12127 () Bool)

(assert (=> start!241822 tp_is_empty!12127))

(declare-fun e!1572865 () Bool)

(assert (=> b!2478537 (= e!1572866 (and e!1572865 tp!793165))))

(declare-fun b!2478538 () Bool)

(declare-fun lt!885600 () MutLongMap!3306)

(assert (=> b!2478538 (= e!1572865 (and e!1572864 ((_ is LongMap!3306) lt!885600)))))

(assert (=> b!2478538 (= lt!885600 (v!31301 (underlying!6820 thiss!42540)))))

(declare-fun b!2478539 () Bool)

(declare-fun res!1049132 () Bool)

(assert (=> b!2478539 (=> (not res!1049132) (not e!1572869))))

(declare-fun valid!2521 (MutableMap!3216) Bool)

(assert (=> b!2478539 (= res!1049132 (valid!2521 thiss!42540))))

(assert (= (and start!241822 res!1049133) b!2478539))

(assert (= (and b!2478539 res!1049132) b!2478532))

(assert (= (and b!2478532 res!1049134) b!2478535))

(assert (= (and b!2478531 condMapEmpty!15364) mapIsEmpty!15364))

(assert (= (and b!2478531 (not condMapEmpty!15364)) mapNonEmpty!15364))

(assert (= b!2478536 b!2478531))

(assert (= b!2478534 b!2478536))

(assert (= b!2478533 b!2478534))

(assert (= (and b!2478538 ((_ is LongMap!3306) (v!31301 (underlying!6820 thiss!42540)))) b!2478533))

(assert (= b!2478537 b!2478538))

(assert (= (and start!241822 ((_ is HashMap!3216) thiss!42540)) b!2478537))

(declare-fun m!2846275 () Bool)

(assert (=> b!2478532 m!2846275))

(declare-fun m!2846277 () Bool)

(assert (=> mapNonEmpty!15364 m!2846277))

(declare-fun m!2846279 () Bool)

(assert (=> b!2478535 m!2846279))

(declare-fun m!2846281 () Bool)

(assert (=> b!2478535 m!2846281))

(declare-fun m!2846283 () Bool)

(assert (=> b!2478535 m!2846283))

(declare-fun m!2846285 () Bool)

(assert (=> b!2478535 m!2846285))

(declare-fun m!2846287 () Bool)

(assert (=> b!2478535 m!2846287))

(declare-fun m!2846289 () Bool)

(assert (=> b!2478535 m!2846289))

(assert (=> b!2478535 m!2846281))

(declare-fun m!2846291 () Bool)

(assert (=> b!2478535 m!2846291))

(declare-fun m!2846293 () Bool)

(assert (=> b!2478535 m!2846293))

(declare-fun m!2846295 () Bool)

(assert (=> b!2478539 m!2846295))

(declare-fun m!2846297 () Bool)

(assert (=> b!2478536 m!2846297))

(declare-fun m!2846299 () Bool)

(assert (=> b!2478536 m!2846299))

(check-sat (not b!2478531) (not b!2478539) (not b_next!72787) (not b_next!72785) tp_is_empty!12127 b_and!188321 b_and!188319 (not b!2478532) (not b!2478535) (not mapNonEmpty!15364) (not b!2478536))
(check-sat b_and!188321 b_and!188319 (not b_next!72785) (not b_next!72787))
