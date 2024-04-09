; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8262 () Bool)

(assert start!8262)

(declare-fun b!52569 () Bool)

(declare-fun b_free!1665 () Bool)

(declare-fun b_next!1665 () Bool)

(assert (=> b!52569 (= b_free!1665 (not b_next!1665))))

(declare-fun tp!7096 () Bool)

(declare-fun b_and!2885 () Bool)

(assert (=> b!52569 (= tp!7096 b_and!2885)))

(declare-fun b!52574 () Bool)

(declare-fun b_free!1667 () Bool)

(declare-fun b_next!1667 () Bool)

(assert (=> b!52574 (= b_free!1667 (not b_next!1667))))

(declare-fun tp!7098 () Bool)

(declare-fun b_and!2887 () Bool)

(assert (=> b!52574 (= tp!7098 b_and!2887)))

(declare-fun b!52562 () Bool)

(declare-fun e!34259 () Bool)

(declare-fun tp_is_empty!2249 () Bool)

(assert (=> b!52562 (= e!34259 tp_is_empty!2249)))

(declare-fun b!52563 () Bool)

(declare-fun e!34252 () Bool)

(declare-fun e!34258 () Bool)

(declare-fun mapRes!2418 () Bool)

(assert (=> b!52563 (= e!34252 (and e!34258 mapRes!2418))))

(declare-fun condMapEmpty!2417 () Bool)

(declare-datatypes ((V!2645 0))(
  ( (V!2646 (val!1169 Int)) )
))
(declare-datatypes ((array!3420 0))(
  ( (array!3421 (arr!1632 (Array (_ BitVec 32) (_ BitVec 64))) (size!1861 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!781 0))(
  ( (ValueCellFull!781 (v!2223 V!2645)) (EmptyCell!781) )
))
(declare-datatypes ((array!3422 0))(
  ( (array!3423 (arr!1633 (Array (_ BitVec 32) ValueCell!781)) (size!1862 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!470 0))(
  ( (LongMapFixedSize!471 (defaultEntry!1949 Int) (mask!5774 (_ BitVec 32)) (extraKeys!1840 (_ BitVec 32)) (zeroValue!1867 V!2645) (minValue!1867 V!2645) (_size!284 (_ BitVec 32)) (_keys!3569 array!3420) (_values!1932 array!3422) (_vacant!284 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!286 0))(
  ( (Cell!287 (v!2224 LongMapFixedSize!470)) )
))
(declare-datatypes ((LongMap!286 0))(
  ( (LongMap!287 (underlying!154 Cell!286)) )
))
(declare-fun thiss!992 () LongMap!286)

(declare-fun mapDefault!2418 () ValueCell!781)

