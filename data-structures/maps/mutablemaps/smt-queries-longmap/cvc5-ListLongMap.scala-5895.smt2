; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76170 () Bool)

(assert start!76170)

(declare-fun b!894345 () Bool)

(declare-fun b_free!15871 () Bool)

(declare-fun b_next!15871 () Bool)

(assert (=> b!894345 (= b_free!15871 (not b_next!15871))))

(declare-fun tp!55601 () Bool)

(declare-fun b_and!26181 () Bool)

(assert (=> b!894345 (= tp!55601 b_and!26181)))

(declare-fun mapNonEmpty!28872 () Bool)

(declare-fun mapRes!28872 () Bool)

(declare-fun tp!55602 () Bool)

(declare-fun e!499574 () Bool)

(assert (=> mapNonEmpty!28872 (= mapRes!28872 (and tp!55602 e!499574))))

(declare-fun mapKey!28872 () (_ BitVec 32))

(declare-datatypes ((array!52374 0))(
  ( (array!52375 (arr!25184 (Array (_ BitVec 32) (_ BitVec 64))) (size!25631 (_ BitVec 32))) )
))
(declare-datatypes ((V!29231 0))(
  ( (V!29232 (val!9150 Int)) )
))
(declare-datatypes ((ValueCell!8618 0))(
  ( (ValueCellFull!8618 (v!11637 V!29231)) (EmptyCell!8618) )
))
(declare-datatypes ((array!52376 0))(
  ( (array!52377 (arr!25185 (Array (_ BitVec 32) ValueCell!8618)) (size!25632 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4252 0))(
  ( (LongMapFixedSize!4253 (defaultEntry!5338 Int) (mask!25890 (_ BitVec 32)) (extraKeys!5034 (_ BitVec 32)) (zeroValue!5138 V!29231) (minValue!5138 V!29231) (_size!2181 (_ BitVec 32)) (_keys!10031 array!52374) (_values!5325 array!52376) (_vacant!2181 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4252)

(declare-fun mapRest!28872 () (Array (_ BitVec 32) ValueCell!8618))

(declare-fun mapValue!28872 () ValueCell!8618)

(assert (=> mapNonEmpty!28872 (= (arr!25185 (_values!5325 thiss!1181)) (store mapRest!28872 mapKey!28872 mapValue!28872))))

(declare-fun mapIsEmpty!28872 () Bool)

(assert (=> mapIsEmpty!28872 mapRes!28872))

(declare-fun b!894342 () Bool)

(declare-fun e!499570 () Bool)

(declare-fun e!499572 () Bool)

(assert (=> b!894342 (= e!499570 (and e!499572 mapRes!28872))))

(declare-fun condMapEmpty!28872 () Bool)

(declare-fun mapDefault!28872 () ValueCell!8618)

