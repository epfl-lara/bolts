; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2980 () Bool)

(assert start!2980)

(declare-fun b!17245 () Bool)

(declare-fun b_free!589 () Bool)

(declare-fun b_next!589 () Bool)

(assert (=> b!17245 (= b_free!589 (not b_next!589))))

(declare-fun tp!2957 () Bool)

(declare-fun b_and!1239 () Bool)

(assert (=> b!17245 (= tp!2957 b_and!1239)))

(declare-fun b!17243 () Bool)

(declare-fun e!10740 () Bool)

(declare-fun tp_is_empty!853 () Bool)

(assert (=> b!17243 (= e!10740 tp_is_empty!853)))

(declare-fun b!17244 () Bool)

(declare-fun e!10739 () Bool)

(declare-fun e!10741 () Bool)

(declare-fun mapRes!714 () Bool)

(assert (=> b!17244 (= e!10739 (and e!10741 mapRes!714))))

(declare-fun condMapEmpty!714 () Bool)

(declare-datatypes ((V!963 0))(
  ( (V!964 (val!453 Int)) )
))
(declare-datatypes ((ValueCell!227 0))(
  ( (ValueCellFull!227 (v!1410 V!963)) (EmptyCell!227) )
))
(declare-datatypes ((array!903 0))(
  ( (array!904 (arr!433 (Array (_ BitVec 32) ValueCell!227)) (size!523 (_ BitVec 32))) )
))
(declare-datatypes ((array!905 0))(
  ( (array!906 (arr!434 (Array (_ BitVec 32) (_ BitVec 64))) (size!524 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!40 0))(
  ( (LongMapFixedSize!41 (defaultEntry!1631 Int) (mask!4544 (_ BitVec 32)) (extraKeys!1544 (_ BitVec 32)) (zeroValue!1567 V!963) (minValue!1567 V!963) (_size!52 (_ BitVec 32)) (_keys!3056 array!905) (_values!1628 array!903) (_vacant!52 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!40 0))(
  ( (Cell!41 (v!1411 LongMapFixedSize!40)) )
))
(declare-datatypes ((LongMap!40 0))(
  ( (LongMap!41 (underlying!31 Cell!40)) )
))
(declare-fun thiss!848 () LongMap!40)

(declare-fun mapDefault!714 () ValueCell!227)

