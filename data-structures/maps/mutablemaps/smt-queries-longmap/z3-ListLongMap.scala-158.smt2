; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3018 () Bool)

(assert start!3018)

(declare-fun b!17854 () Bool)

(declare-fun b_free!627 () Bool)

(declare-fun b_next!627 () Bool)

(assert (=> b!17854 (= b_free!627 (not b_next!627))))

(declare-fun tp!3071 () Bool)

(declare-fun b_and!1277 () Bool)

(assert (=> b!17854 (= tp!3071 b_and!1277)))

(declare-fun res!12675 () Bool)

(declare-fun e!11325 () Bool)

(assert (=> start!3018 (=> (not res!12675) (not e!11325))))

(declare-datatypes ((V!1013 0))(
  ( (V!1014 (val!472 Int)) )
))
(declare-datatypes ((ValueCell!246 0))(
  ( (ValueCellFull!246 (v!1448 V!1013)) (EmptyCell!246) )
))
(declare-datatypes ((array!979 0))(
  ( (array!980 (arr!471 (Array (_ BitVec 32) ValueCell!246)) (size!561 (_ BitVec 32))) )
))
(declare-datatypes ((array!981 0))(
  ( (array!982 (arr!472 (Array (_ BitVec 32) (_ BitVec 64))) (size!562 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!78 0))(
  ( (LongMapFixedSize!79 (defaultEntry!1650 Int) (mask!4575 (_ BitVec 32)) (extraKeys!1563 (_ BitVec 32)) (zeroValue!1586 V!1013) (minValue!1586 V!1013) (_size!71 (_ BitVec 32)) (_keys!3075 array!981) (_values!1647 array!979) (_vacant!71 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!78 0))(
  ( (Cell!79 (v!1449 LongMapFixedSize!78)) )
))
(declare-datatypes ((LongMap!78 0))(
  ( (LongMap!79 (underlying!50 Cell!78)) )
))
(declare-fun thiss!848 () LongMap!78)

(declare-fun valid!42 (LongMap!78) Bool)

(assert (=> start!3018 (= res!12675 (valid!42 thiss!848))))

(assert (=> start!3018 e!11325))

(declare-fun e!11328 () Bool)

(assert (=> start!3018 e!11328))

(declare-fun b!17849 () Bool)

(declare-fun e!11330 () Bool)

(declare-fun tp_is_empty!891 () Bool)

(assert (=> b!17849 (= e!11330 tp_is_empty!891)))

(declare-fun mapNonEmpty!771 () Bool)

(declare-fun mapRes!771 () Bool)

(declare-fun tp!3072 () Bool)

(assert (=> mapNonEmpty!771 (= mapRes!771 (and tp!3072 e!11330))))

(declare-fun mapKey!771 () (_ BitVec 32))

(declare-fun mapRest!771 () (Array (_ BitVec 32) ValueCell!246))

(declare-fun mapValue!771 () ValueCell!246)

(assert (=> mapNonEmpty!771 (= (arr!471 (_values!1647 (v!1449 (underlying!50 thiss!848)))) (store mapRest!771 mapKey!771 mapValue!771))))

(declare-fun b!17850 () Bool)

(declare-fun e!11333 () Bool)

(assert (=> b!17850 (= e!11325 e!11333)))

(declare-fun res!12674 () Bool)

(assert (=> b!17850 (=> (not res!12674) (not e!11333))))

(declare-datatypes ((tuple2!750 0))(
  ( (tuple2!751 (_1!376 Bool) (_2!376 LongMap!78)) )
))
(declare-fun lt!4626 () tuple2!750)

(assert (=> b!17850 (= res!12674 (not (_1!376 lt!4626)))))

(declare-fun e!11324 () tuple2!750)

(assert (=> b!17850 (= lt!4626 e!11324)))

(declare-fun c!1795 () Bool)

(declare-fun imbalanced!18 (LongMap!78) Bool)

(assert (=> b!17850 (= c!1795 (imbalanced!18 thiss!848))))

(declare-fun mapIsEmpty!771 () Bool)

(assert (=> mapIsEmpty!771 mapRes!771))

(declare-fun b!17851 () Bool)

(declare-fun e!11331 () Bool)

(declare-fun e!11329 () Bool)

(assert (=> b!17851 (= e!11331 e!11329)))

(declare-fun b!17852 () Bool)

(assert (=> b!17852 (= e!11333 false)))

(declare-fun lt!4625 () Bool)

(assert (=> b!17852 (= lt!4625 (valid!42 (_2!376 lt!4626)))))

(declare-fun b!17853 () Bool)

(assert (=> b!17853 (= e!11324 (tuple2!751 true thiss!848))))

(declare-fun e!11327 () Bool)

(declare-fun array_inv!331 (array!981) Bool)

(declare-fun array_inv!332 (array!979) Bool)

(assert (=> b!17854 (= e!11329 (and tp!3071 tp_is_empty!891 (array_inv!331 (_keys!3075 (v!1449 (underlying!50 thiss!848)))) (array_inv!332 (_values!1647 (v!1449 (underlying!50 thiss!848)))) e!11327))))

(declare-fun b!17855 () Bool)

(declare-fun repack!15 (LongMap!78) tuple2!750)

(assert (=> b!17855 (= e!11324 (repack!15 thiss!848))))

(declare-fun b!17856 () Bool)

(assert (=> b!17856 (= e!11328 e!11331)))

(declare-fun b!17857 () Bool)

(declare-fun e!11332 () Bool)

(assert (=> b!17857 (= e!11332 tp_is_empty!891)))

(declare-fun b!17858 () Bool)

(assert (=> b!17858 (= e!11327 (and e!11332 mapRes!771))))

(declare-fun condMapEmpty!771 () Bool)

(declare-fun mapDefault!771 () ValueCell!246)

(assert (=> b!17858 (= condMapEmpty!771 (= (arr!471 (_values!1647 (v!1449 (underlying!50 thiss!848)))) ((as const (Array (_ BitVec 32) ValueCell!246)) mapDefault!771)))))

(assert (= (and start!3018 res!12675) b!17850))

(assert (= (and b!17850 c!1795) b!17855))

(assert (= (and b!17850 (not c!1795)) b!17853))

(assert (= (and b!17850 res!12674) b!17852))

(assert (= (and b!17858 condMapEmpty!771) mapIsEmpty!771))

(assert (= (and b!17858 (not condMapEmpty!771)) mapNonEmpty!771))

(get-info :version)

(assert (= (and mapNonEmpty!771 ((_ is ValueCellFull!246) mapValue!771)) b!17849))

(assert (= (and b!17858 ((_ is ValueCellFull!246) mapDefault!771)) b!17857))

(assert (= b!17854 b!17858))

(assert (= b!17851 b!17854))

(assert (= b!17856 b!17851))

(assert (= start!3018 b!17856))

(declare-fun m!12485 () Bool)

(assert (=> b!17852 m!12485))

(declare-fun m!12487 () Bool)

(assert (=> b!17854 m!12487))

(declare-fun m!12489 () Bool)

(assert (=> b!17854 m!12489))

(declare-fun m!12491 () Bool)

(assert (=> b!17855 m!12491))

(declare-fun m!12493 () Bool)

(assert (=> start!3018 m!12493))

(declare-fun m!12495 () Bool)

(assert (=> b!17850 m!12495))

(declare-fun m!12497 () Bool)

(assert (=> mapNonEmpty!771 m!12497))

(check-sat tp_is_empty!891 (not b_next!627) (not b!17852) (not b!17855) (not mapNonEmpty!771) (not start!3018) (not b!17854) (not b!17850) b_and!1277)
(check-sat b_and!1277 (not b_next!627))
