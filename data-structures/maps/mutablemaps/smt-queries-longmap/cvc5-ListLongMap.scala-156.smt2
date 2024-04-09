; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3004 () Bool)

(assert start!3004)

(declare-fun b!17640 () Bool)

(declare-fun b_free!613 () Bool)

(declare-fun b_next!613 () Bool)

(assert (=> b!17640 (= b_free!613 (not b_next!613))))

(declare-fun tp!3029 () Bool)

(declare-fun b_and!1263 () Bool)

(assert (=> b!17640 (= tp!3029 b_and!1263)))

(declare-fun b!17639 () Bool)

(declare-datatypes ((V!995 0))(
  ( (V!996 (val!465 Int)) )
))
(declare-datatypes ((ValueCell!239 0))(
  ( (ValueCellFull!239 (v!1434 V!995)) (EmptyCell!239) )
))
(declare-datatypes ((array!951 0))(
  ( (array!952 (arr!457 (Array (_ BitVec 32) ValueCell!239)) (size!547 (_ BitVec 32))) )
))
(declare-datatypes ((array!953 0))(
  ( (array!954 (arr!458 (Array (_ BitVec 32) (_ BitVec 64))) (size!548 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!64 0))(
  ( (LongMapFixedSize!65 (defaultEntry!1643 Int) (mask!4564 (_ BitVec 32)) (extraKeys!1556 (_ BitVec 32)) (zeroValue!1579 V!995) (minValue!1579 V!995) (_size!64 (_ BitVec 32)) (_keys!3068 array!953) (_values!1640 array!951) (_vacant!64 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!64 0))(
  ( (Cell!65 (v!1435 LongMapFixedSize!64)) )
))
(declare-datatypes ((LongMap!64 0))(
  ( (LongMap!65 (underlying!43 Cell!64)) )
))
(declare-datatypes ((tuple2!732 0))(
  ( (tuple2!733 (_1!367 Bool) (_2!367 LongMap!64)) )
))
(declare-fun e!11117 () tuple2!732)

(declare-fun thiss!848 () LongMap!64)

(assert (=> b!17639 (= e!11117 (tuple2!733 true thiss!848))))

(declare-fun e!11119 () Bool)

(declare-fun e!11122 () Bool)

(declare-fun tp_is_empty!877 () Bool)

(declare-fun array_inv!321 (array!953) Bool)

(declare-fun array_inv!322 (array!951) Bool)

(assert (=> b!17640 (= e!11122 (and tp!3029 tp_is_empty!877 (array_inv!321 (_keys!3068 (v!1435 (underlying!43 thiss!848)))) (array_inv!322 (_values!1640 (v!1435 (underlying!43 thiss!848)))) e!11119))))

(declare-fun b!17641 () Bool)

(declare-fun repack!10 (LongMap!64) tuple2!732)

(assert (=> b!17641 (= e!11117 (repack!10 thiss!848))))

(declare-fun b!17642 () Bool)

(declare-fun e!11114 () Bool)

(assert (=> b!17642 (= e!11114 e!11122)))

(declare-fun mapNonEmpty!750 () Bool)

(declare-fun mapRes!750 () Bool)

(declare-fun tp!3030 () Bool)

(declare-fun e!11115 () Bool)

(assert (=> mapNonEmpty!750 (= mapRes!750 (and tp!3030 e!11115))))

(declare-fun mapRest!750 () (Array (_ BitVec 32) ValueCell!239))

(declare-fun mapValue!750 () ValueCell!239)

(declare-fun mapKey!750 () (_ BitVec 32))

(assert (=> mapNonEmpty!750 (= (arr!457 (_values!1640 (v!1435 (underlying!43 thiss!848)))) (store mapRest!750 mapKey!750 mapValue!750))))

(declare-fun b!17643 () Bool)

(declare-fun e!11118 () Bool)

(declare-fun e!11121 () Bool)

(assert (=> b!17643 (= e!11118 e!11121)))

(declare-fun res!12632 () Bool)

(assert (=> b!17643 (=> (not res!12632) (not e!11121))))

(declare-fun lt!4584 () tuple2!732)

(assert (=> b!17643 (= res!12632 (_1!367 lt!4584))))

(assert (=> b!17643 (= lt!4584 e!11117)))

(declare-fun c!1774 () Bool)

(declare-fun imbalanced!14 (LongMap!64) Bool)

(assert (=> b!17643 (= c!1774 (imbalanced!14 thiss!848))))

(declare-fun b!17644 () Bool)

(assert (=> b!17644 (= e!11115 tp_is_empty!877)))

(declare-fun b!17645 () Bool)

(declare-fun e!11116 () Bool)

(assert (=> b!17645 (= e!11119 (and e!11116 mapRes!750))))

(declare-fun condMapEmpty!750 () Bool)

(declare-fun mapDefault!750 () ValueCell!239)

