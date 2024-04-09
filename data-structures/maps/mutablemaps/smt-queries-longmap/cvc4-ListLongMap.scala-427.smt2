; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7986 () Bool)

(assert start!7986)

(declare-fun b!50015 () Bool)

(declare-fun b_free!1523 () Bool)

(declare-fun b_next!1523 () Bool)

(assert (=> b!50015 (= b_free!1523 (not b_next!1523))))

(declare-fun tp!6613 () Bool)

(declare-fun b_and!2743 () Bool)

(assert (=> b!50015 (= tp!6613 b_and!2743)))

(declare-fun b!50013 () Bool)

(declare-fun e!32254 () Bool)

(declare-fun tp_is_empty!2177 () Bool)

(assert (=> b!50013 (= e!32254 tp_is_empty!2177)))

(declare-fun mapNonEmpty!2150 () Bool)

(declare-fun mapRes!2150 () Bool)

(declare-fun tp!6614 () Bool)

(declare-fun e!32257 () Bool)

(assert (=> mapNonEmpty!2150 (= mapRes!2150 (and tp!6614 e!32257))))

(declare-datatypes ((V!2549 0))(
  ( (V!2550 (val!1133 Int)) )
))
(declare-datatypes ((ValueCell!745 0))(
  ( (ValueCellFull!745 (v!2151 V!2549)) (EmptyCell!745) )
))
(declare-fun mapRest!2150 () (Array (_ BitVec 32) ValueCell!745))

(declare-fun mapKey!2150 () (_ BitVec 32))

(declare-datatypes ((array!3262 0))(
  ( (array!3263 (arr!1560 (Array (_ BitVec 32) (_ BitVec 64))) (size!1782 (_ BitVec 32))) )
))
(declare-datatypes ((array!3264 0))(
  ( (array!3265 (arr!1561 (Array (_ BitVec 32) ValueCell!745)) (size!1783 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!398 0))(
  ( (LongMapFixedSize!399 (defaultEntry!1913 Int) (mask!5693 (_ BitVec 32)) (extraKeys!1804 (_ BitVec 32)) (zeroValue!1831 V!2549) (minValue!1831 V!2549) (_size!248 (_ BitVec 32)) (_keys!3519 array!3262) (_values!1896 array!3264) (_vacant!248 (_ BitVec 32))) )
))
(declare-fun thiss!1134 () LongMapFixedSize!398)

(declare-fun mapValue!2150 () ValueCell!745)

(assert (=> mapNonEmpty!2150 (= (arr!1561 (_values!1896 thiss!1134)) (store mapRest!2150 mapKey!2150 mapValue!2150))))

(declare-fun b!50014 () Bool)

(declare-fun e!32255 () Bool)

(assert (=> b!50014 (= e!32255 (and e!32254 mapRes!2150))))

(declare-fun condMapEmpty!2150 () Bool)

(declare-fun mapDefault!2150 () ValueCell!745)

