; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3032 () Bool)

(assert start!3032)

(declare-fun b!18066 () Bool)

(declare-fun b_free!641 () Bool)

(declare-fun b_next!641 () Bool)

(assert (=> b!18066 (= b_free!641 (not b_next!641))))

(declare-fun tp!3114 () Bool)

(declare-fun b_and!1291 () Bool)

(assert (=> b!18066 (= tp!3114 b_and!1291)))

(declare-fun b!18060 () Bool)

(declare-datatypes ((V!1031 0))(
  ( (V!1032 (val!479 Int)) )
))
(declare-datatypes ((ValueCell!253 0))(
  ( (ValueCellFull!253 (v!1462 V!1031)) (EmptyCell!253) )
))
(declare-datatypes ((array!1007 0))(
  ( (array!1008 (arr!485 (Array (_ BitVec 32) ValueCell!253)) (size!575 (_ BitVec 32))) )
))
(declare-datatypes ((array!1009 0))(
  ( (array!1010 (arr!486 (Array (_ BitVec 32) (_ BitVec 64))) (size!576 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!92 0))(
  ( (LongMapFixedSize!93 (defaultEntry!1657 Int) (mask!4586 (_ BitVec 32)) (extraKeys!1570 (_ BitVec 32)) (zeroValue!1593 V!1031) (minValue!1593 V!1031) (_size!78 (_ BitVec 32)) (_keys!3082 array!1009) (_values!1654 array!1007) (_vacant!78 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!92 0))(
  ( (Cell!93 (v!1463 LongMapFixedSize!92)) )
))
(declare-datatypes ((LongMap!92 0))(
  ( (LongMap!93 (underlying!57 Cell!92)) )
))
(declare-datatypes ((tuple2!764 0))(
  ( (tuple2!765 (_1!383 Bool) (_2!383 LongMap!92)) )
))
(declare-fun e!11540 () tuple2!764)

(declare-fun thiss!848 () LongMap!92)

(assert (=> b!18060 (= e!11540 (tuple2!765 true thiss!848))))

(declare-fun b!18061 () Bool)

(declare-fun e!11536 () Bool)

(assert (=> b!18061 (= e!11536 false)))

(declare-fun lt!4668 () Bool)

(declare-fun lt!4667 () tuple2!764)

(declare-fun valid!48 (LongMap!92) Bool)

(assert (=> b!18061 (= lt!4668 (valid!48 (_2!383 lt!4667)))))

(declare-fun mapIsEmpty!792 () Bool)

(declare-fun mapRes!792 () Bool)

(assert (=> mapIsEmpty!792 mapRes!792))

(declare-fun b!18062 () Bool)

(declare-fun e!11538 () Bool)

(declare-fun e!11534 () Bool)

(assert (=> b!18062 (= e!11538 e!11534)))

(declare-fun b!18063 () Bool)

(declare-fun e!11543 () Bool)

(assert (=> b!18063 (= e!11543 e!11536)))

(declare-fun res!12717 () Bool)

(assert (=> b!18063 (=> (not res!12717) (not e!11536))))

(assert (=> b!18063 (= res!12717 (not (_1!383 lt!4667)))))

(assert (=> b!18063 (= lt!4667 e!11540)))

(declare-fun c!1816 () Bool)

(declare-fun imbalanced!24 (LongMap!92) Bool)

(assert (=> b!18063 (= c!1816 (imbalanced!24 thiss!848))))

(declare-fun res!12716 () Bool)

(assert (=> start!3032 (=> (not res!12716) (not e!11543))))

(assert (=> start!3032 (= res!12716 (valid!48 thiss!848))))

(assert (=> start!3032 e!11543))

(assert (=> start!3032 e!11538))

(declare-fun b!18059 () Bool)

(declare-fun e!11535 () Bool)

(assert (=> b!18059 (= e!11534 e!11535)))

(declare-fun b!18064 () Bool)

(declare-fun e!11541 () Bool)

(declare-fun tp_is_empty!905 () Bool)

(assert (=> b!18064 (= e!11541 tp_is_empty!905)))

(declare-fun mapNonEmpty!792 () Bool)

(declare-fun tp!3113 () Bool)

(declare-fun e!11542 () Bool)

(assert (=> mapNonEmpty!792 (= mapRes!792 (and tp!3113 e!11542))))

(declare-fun mapValue!792 () ValueCell!253)

(declare-fun mapKey!792 () (_ BitVec 32))

(declare-fun mapRest!792 () (Array (_ BitVec 32) ValueCell!253))

(assert (=> mapNonEmpty!792 (= (arr!485 (_values!1654 (v!1463 (underlying!57 thiss!848)))) (store mapRest!792 mapKey!792 mapValue!792))))

(declare-fun b!18065 () Bool)

(declare-fun repack!20 (LongMap!92) tuple2!764)

(assert (=> b!18065 (= e!11540 (repack!20 thiss!848))))

(declare-fun e!11537 () Bool)

(declare-fun array_inv!343 (array!1009) Bool)

(declare-fun array_inv!344 (array!1007) Bool)

(assert (=> b!18066 (= e!11535 (and tp!3114 tp_is_empty!905 (array_inv!343 (_keys!3082 (v!1463 (underlying!57 thiss!848)))) (array_inv!344 (_values!1654 (v!1463 (underlying!57 thiss!848)))) e!11537))))

(declare-fun b!18067 () Bool)

(assert (=> b!18067 (= e!11537 (and e!11541 mapRes!792))))

(declare-fun condMapEmpty!792 () Bool)

(declare-fun mapDefault!792 () ValueCell!253)

