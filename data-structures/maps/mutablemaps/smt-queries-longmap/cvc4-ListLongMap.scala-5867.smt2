; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75764 () Bool)

(assert start!75764)

(declare-fun b!890383 () Bool)

(declare-fun b_free!15707 () Bool)

(declare-fun b_next!15707 () Bool)

(assert (=> b!890383 (= b_free!15707 (not b_next!15707))))

(declare-fun tp!55090 () Bool)

(declare-fun b_and!25965 () Bool)

(assert (=> b!890383 (= tp!55090 b_and!25965)))

(declare-fun b!890381 () Bool)

(declare-fun e!496656 () Bool)

(declare-fun tp_is_empty!18035 () Bool)

(assert (=> b!890381 (= e!496656 tp_is_empty!18035)))

(declare-fun b!890382 () Bool)

(declare-fun e!496658 () Bool)

(assert (=> b!890382 (= e!496658 tp_is_empty!18035)))

(declare-fun e!496650 () Bool)

(declare-datatypes ((array!52036 0))(
  ( (array!52037 (arr!25020 (Array (_ BitVec 32) (_ BitVec 64))) (size!25465 (_ BitVec 32))) )
))
(declare-datatypes ((V!29011 0))(
  ( (V!29012 (val!9068 Int)) )
))
(declare-datatypes ((ValueCell!8536 0))(
  ( (ValueCellFull!8536 (v!11540 V!29011)) (EmptyCell!8536) )
))
(declare-datatypes ((array!52038 0))(
  ( (array!52039 (arr!25021 (Array (_ BitVec 32) ValueCell!8536)) (size!25466 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4088 0))(
  ( (LongMapFixedSize!4089 (defaultEntry!5241 Int) (mask!25709 (_ BitVec 32)) (extraKeys!4935 (_ BitVec 32)) (zeroValue!5039 V!29011) (minValue!5039 V!29011) (_size!2099 (_ BitVec 32)) (_keys!9920 array!52036) (_values!5226 array!52038) (_vacant!2099 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4088)

(declare-fun e!496654 () Bool)

(declare-fun array_inv!19644 (array!52036) Bool)

(declare-fun array_inv!19645 (array!52038) Bool)

(assert (=> b!890383 (= e!496650 (and tp!55090 tp_is_empty!18035 (array_inv!19644 (_keys!9920 thiss!1181)) (array_inv!19645 (_values!5226 thiss!1181)) e!496654))))

(declare-fun b!890384 () Bool)

(declare-fun mapRes!28607 () Bool)

(assert (=> b!890384 (= e!496654 (and e!496656 mapRes!28607))))

(declare-fun condMapEmpty!28607 () Bool)

(declare-fun mapDefault!28607 () ValueCell!8536)

