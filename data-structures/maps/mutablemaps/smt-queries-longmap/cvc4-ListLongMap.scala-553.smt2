; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14724 () Bool)

(assert start!14724)

(declare-fun b!139618 () Bool)

(declare-fun b_free!3033 () Bool)

(declare-fun b_next!3033 () Bool)

(assert (=> b!139618 (= b_free!3033 (not b_next!3033))))

(declare-fun tp!11572 () Bool)

(declare-fun b_and!8749 () Bool)

(assert (=> b!139618 (= tp!11572 b_and!8749)))

(declare-fun b!139626 () Bool)

(declare-fun b_free!3035 () Bool)

(declare-fun b_next!3035 () Bool)

(assert (=> b!139626 (= b_free!3035 (not b_next!3035))))

(declare-fun tp!11570 () Bool)

(declare-fun b_and!8751 () Bool)

(assert (=> b!139626 (= tp!11570 b_and!8751)))

(declare-fun b!139616 () Bool)

(declare-fun e!91089 () Bool)

(declare-fun tp_is_empty!2933 () Bool)

(assert (=> b!139616 (= e!91089 tp_is_empty!2933)))

(declare-fun b!139617 () Bool)

(declare-fun e!91094 () Bool)

(declare-fun mapRes!4839 () Bool)

(assert (=> b!139617 (= e!91094 (and e!91089 mapRes!4839))))

(declare-fun condMapEmpty!4840 () Bool)

(declare-datatypes ((V!3557 0))(
  ( (V!3558 (val!1511 Int)) )
))
(declare-datatypes ((array!4900 0))(
  ( (array!4901 (arr!2316 (Array (_ BitVec 32) (_ BitVec 64))) (size!2588 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1123 0))(
  ( (ValueCellFull!1123 (v!3281 V!3557)) (EmptyCell!1123) )
))
(declare-datatypes ((array!4902 0))(
  ( (array!4903 (arr!2317 (Array (_ BitVec 32) ValueCell!1123)) (size!2589 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1154 0))(
  ( (LongMapFixedSize!1155 (defaultEntry!2941 Int) (mask!7281 (_ BitVec 32)) (extraKeys!2696 (_ BitVec 32)) (zeroValue!2791 V!3557) (minValue!2791 V!3557) (_size!626 (_ BitVec 32)) (_keys!4700 array!4900) (_values!2924 array!4902) (_vacant!626 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1154)

(declare-fun mapDefault!4839 () ValueCell!1123)

