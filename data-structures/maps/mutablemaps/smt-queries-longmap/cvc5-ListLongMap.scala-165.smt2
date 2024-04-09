; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3152 () Bool)

(assert start!3152)

(declare-fun b!19207 () Bool)

(declare-fun b_free!667 () Bool)

(declare-fun b_next!667 () Bool)

(assert (=> b!19207 (= b_free!667 (not b_next!667))))

(declare-fun tp!3203 () Bool)

(declare-fun b_and!1329 () Bool)

(assert (=> b!19207 (= tp!3203 b_and!1329)))

(declare-fun mapNonEmpty!843 () Bool)

(declare-fun mapRes!843 () Bool)

(declare-fun tp!3204 () Bool)

(declare-fun e!12358 () Bool)

(assert (=> mapNonEmpty!843 (= mapRes!843 (and tp!3204 e!12358))))

(declare-fun mapKey!843 () (_ BitVec 32))

(declare-datatypes ((V!1067 0))(
  ( (V!1068 (val!492 Int)) )
))
(declare-datatypes ((ValueCell!266 0))(
  ( (ValueCellFull!266 (v!1500 V!1067)) (EmptyCell!266) )
))
(declare-fun mapValue!843 () ValueCell!266)

(declare-datatypes ((array!1065 0))(
  ( (array!1066 (arr!511 (Array (_ BitVec 32) ValueCell!266)) (size!602 (_ BitVec 32))) )
))
(declare-datatypes ((array!1067 0))(
  ( (array!1068 (arr!512 (Array (_ BitVec 32) (_ BitVec 64))) (size!603 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!118 0))(
  ( (LongMapFixedSize!119 (defaultEntry!1678 Int) (mask!4621 (_ BitVec 32)) (extraKeys!1588 (_ BitVec 32)) (zeroValue!1612 V!1067) (minValue!1612 V!1067) (_size!92 (_ BitVec 32)) (_keys!3104 array!1067) (_values!1674 array!1065) (_vacant!92 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!118 0))(
  ( (Cell!119 (v!1501 LongMapFixedSize!118)) )
))
(declare-datatypes ((LongMap!118 0))(
  ( (LongMap!119 (underlying!70 Cell!118)) )
))
(declare-fun thiss!938 () LongMap!118)

(declare-fun mapRest!843 () (Array (_ BitVec 32) ValueCell!266))

(assert (=> mapNonEmpty!843 (= (arr!511 (_values!1674 (v!1501 (underlying!70 thiss!938)))) (store mapRest!843 mapKey!843 mapValue!843))))

(declare-fun mapIsEmpty!843 () Bool)

(assert (=> mapIsEmpty!843 mapRes!843))

(declare-fun b!19204 () Bool)

(declare-fun e!12362 () Bool)

(declare-fun e!12363 () Bool)

(assert (=> b!19204 (= e!12362 (and e!12363 mapRes!843))))

(declare-fun condMapEmpty!843 () Bool)

(declare-fun mapDefault!843 () ValueCell!266)

