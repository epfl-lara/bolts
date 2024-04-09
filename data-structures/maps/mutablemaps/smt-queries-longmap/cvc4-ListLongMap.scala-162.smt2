; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3044 () Bool)

(assert start!3044)

(declare-fun b!18284 () Bool)

(declare-fun b_free!653 () Bool)

(declare-fun b_next!653 () Bool)

(assert (=> b!18284 (= b_free!653 (not b_next!653))))

(declare-fun tp!3149 () Bool)

(declare-fun b_and!1303 () Bool)

(assert (=> b!18284 (= tp!3149 b_and!1303)))

(declare-fun b!18271 () Bool)

(declare-fun e!11738 () Bool)

(declare-fun tp_is_empty!917 () Bool)

(assert (=> b!18271 (= e!11738 tp_is_empty!917)))

(declare-fun b!18272 () Bool)

(declare-fun e!11750 () Bool)

(declare-datatypes ((V!1047 0))(
  ( (V!1048 (val!485 Int)) )
))
(declare-datatypes ((tuple2!778 0))(
  ( (tuple2!779 (_1!390 (_ BitVec 64)) (_2!390 V!1047)) )
))
(declare-datatypes ((List!535 0))(
  ( (Nil!532) (Cons!531 (h!1097 tuple2!778) (t!3176 List!535)) )
))
(declare-datatypes ((ListLongMap!521 0))(
  ( (ListLongMap!522 (toList!276 List!535)) )
))
(declare-fun call!631 () ListLongMap!521)

(declare-fun call!632 () ListLongMap!521)

(assert (=> b!18272 (= e!11750 (not (= call!631 call!632)))))

(declare-fun mapIsEmpty!810 () Bool)

(declare-fun mapRes!810 () Bool)

(assert (=> mapIsEmpty!810 mapRes!810))

(declare-fun e!11740 () Bool)

(declare-fun b!18273 () Bool)

(declare-fun v!259 () V!1047)

(declare-fun lt!4720 () ListLongMap!521)

(declare-fun key!682 () (_ BitVec 64))

(declare-fun +!37 (ListLongMap!521 tuple2!778) ListLongMap!521)

(assert (=> b!18273 (= e!11740 (not (= lt!4720 (+!37 call!632 (tuple2!779 key!682 v!259)))))))

(declare-fun b!18274 () Bool)

(declare-fun e!11744 () Bool)

(declare-fun e!11742 () Bool)

(assert (=> b!18274 (= e!11744 e!11742)))

(declare-fun res!12768 () Bool)

(assert (=> b!18274 (=> res!12768 e!11742)))

(declare-datatypes ((ValueCell!259 0))(
  ( (ValueCellFull!259 (v!1474 V!1047)) (EmptyCell!259) )
))
(declare-datatypes ((array!1031 0))(
  ( (array!1032 (arr!497 (Array (_ BitVec 32) ValueCell!259)) (size!587 (_ BitVec 32))) )
))
(declare-datatypes ((array!1033 0))(
  ( (array!1034 (arr!498 (Array (_ BitVec 32) (_ BitVec 64))) (size!588 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!104 0))(
  ( (LongMapFixedSize!105 (defaultEntry!1663 Int) (mask!4596 (_ BitVec 32)) (extraKeys!1576 (_ BitVec 32)) (zeroValue!1599 V!1047) (minValue!1599 V!1047) (_size!84 (_ BitVec 32)) (_keys!3088 array!1033) (_values!1660 array!1031) (_vacant!84 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!104 0))(
  ( (Cell!105 (v!1475 LongMapFixedSize!104)) )
))
(declare-datatypes ((LongMap!104 0))(
  ( (LongMap!105 (underlying!63 Cell!104)) )
))
(declare-fun lt!4721 () LongMap!104)

(declare-fun valid!53 (LongMap!104) Bool)

(assert (=> b!18274 (= res!12768 (not (valid!53 lt!4721)))))

(declare-datatypes ((tuple2!780 0))(
  ( (tuple2!781 (_1!391 Bool) (_2!391 LongMapFixedSize!104)) )
))
(declare-fun lt!4722 () tuple2!780)

(assert (=> b!18274 (= lt!4721 (LongMap!105 (Cell!105 (_2!391 lt!4722))))))

(declare-datatypes ((tuple2!782 0))(
  ( (tuple2!783 (_1!392 Bool) (_2!392 LongMap!104)) )
))
(declare-fun lt!4719 () tuple2!782)

(declare-fun update!12 (LongMapFixedSize!104 (_ BitVec 64) V!1047) tuple2!780)

(assert (=> b!18274 (= lt!4722 (update!12 (v!1475 (underlying!63 (_2!392 lt!4719))) key!682 v!259))))

(declare-fun bm!628 () Bool)

(declare-fun map!356 (LongMap!104) ListLongMap!521)

(assert (=> bm!628 (= call!631 (map!356 lt!4721))))

(declare-fun b!18275 () Bool)

(declare-fun e!11739 () tuple2!782)

(declare-fun thiss!848 () LongMap!104)

(declare-fun repack!25 (LongMap!104) tuple2!782)

(assert (=> b!18275 (= e!11739 (repack!25 thiss!848))))

(declare-fun b!18276 () Bool)

(declare-fun e!11748 () Bool)

(assert (=> b!18276 (= e!11748 (and e!11738 mapRes!810))))

(declare-fun condMapEmpty!810 () Bool)

(declare-fun mapDefault!810 () ValueCell!259)

