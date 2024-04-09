; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2942 () Bool)

(assert start!2942)

(declare-fun b!16792 () Bool)

(declare-fun b_free!581 () Bool)

(declare-fun b_next!581 () Bool)

(assert (=> b!16792 (= b_free!581 (not b_next!581))))

(declare-fun tp!2930 () Bool)

(declare-fun b_and!1225 () Bool)

(assert (=> b!16792 (= tp!2930 b_and!1225)))

(declare-fun mapNonEmpty!698 () Bool)

(declare-fun mapRes!698 () Bool)

(declare-fun tp!2929 () Bool)

(declare-fun e!10441 () Bool)

(assert (=> mapNonEmpty!698 (= mapRes!698 (and tp!2929 e!10441))))

(declare-datatypes ((V!951 0))(
  ( (V!952 (val!449 Int)) )
))
(declare-datatypes ((ValueCell!223 0))(
  ( (ValueCellFull!223 (v!1398 V!951)) (EmptyCell!223) )
))
(declare-datatypes ((array!885 0))(
  ( (array!886 (arr!425 (Array (_ BitVec 32) ValueCell!223)) (size!514 (_ BitVec 32))) )
))
(declare-datatypes ((array!887 0))(
  ( (array!888 (arr!426 (Array (_ BitVec 32) (_ BitVec 64))) (size!515 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!32 0))(
  ( (LongMapFixedSize!33 (defaultEntry!1626 Int) (mask!4534 (_ BitVec 32)) (extraKeys!1540 (_ BitVec 32)) (zeroValue!1563 V!951) (minValue!1563 V!951) (_size!47 (_ BitVec 32)) (_keys!3051 array!887) (_values!1624 array!885) (_vacant!47 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!32 0))(
  ( (Cell!33 (v!1399 LongMapFixedSize!32)) )
))
(declare-datatypes ((LongMap!32 0))(
  ( (LongMap!33 (underlying!27 Cell!32)) )
))
(declare-fun thiss!848 () LongMap!32)

(declare-fun mapRest!698 () (Array (_ BitVec 32) ValueCell!223))

(declare-fun mapKey!698 () (_ BitVec 32))

(declare-fun mapValue!698 () ValueCell!223)

(assert (=> mapNonEmpty!698 (= (arr!425 (_values!1624 (v!1399 (underlying!27 thiss!848)))) (store mapRest!698 mapKey!698 mapValue!698))))

(declare-fun mapIsEmpty!698 () Bool)

(assert (=> mapIsEmpty!698 mapRes!698))

(declare-fun b!16788 () Bool)

(declare-fun tp_is_empty!845 () Bool)

(assert (=> b!16788 (= e!10441 tp_is_empty!845)))

(declare-fun lt!4140 () Bool)

(declare-fun valid!24 (LongMap!32) Bool)

(assert (=> start!2942 (= lt!4140 (valid!24 thiss!848))))

(assert (=> start!2942 false))

(declare-fun e!10437 () Bool)

(assert (=> start!2942 e!10437))

(declare-fun b!16789 () Bool)

(declare-fun e!10440 () Bool)

(declare-fun e!10438 () Bool)

(assert (=> b!16789 (= e!10440 (and e!10438 mapRes!698))))

(declare-fun condMapEmpty!698 () Bool)

(declare-fun mapDefault!698 () ValueCell!223)

