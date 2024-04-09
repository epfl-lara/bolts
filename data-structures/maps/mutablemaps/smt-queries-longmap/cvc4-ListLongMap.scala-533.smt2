; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13442 () Bool)

(assert start!13442)

(declare-fun b!123135 () Bool)

(declare-fun b_free!2793 () Bool)

(declare-fun b_next!2793 () Bool)

(assert (=> b!123135 (= b_free!2793 (not b_next!2793))))

(declare-fun tp!10768 () Bool)

(declare-fun b_and!7569 () Bool)

(assert (=> b!123135 (= tp!10768 b_and!7569)))

(declare-fun b!123137 () Bool)

(declare-fun b_free!2795 () Bool)

(declare-fun b_next!2795 () Bool)

(assert (=> b!123137 (= b_free!2795 (not b_next!2795))))

(declare-fun tp!10767 () Bool)

(declare-fun b_and!7571 () Bool)

(assert (=> b!123137 (= tp!10767 b_and!7571)))

(declare-fun b!123130 () Bool)

(declare-fun e!80437 () Bool)

(declare-fun tp_is_empty!2813 () Bool)

(assert (=> b!123130 (= e!80437 tp_is_empty!2813)))

(declare-fun mapIsEmpty!4395 () Bool)

(declare-fun mapRes!4396 () Bool)

(assert (=> mapIsEmpty!4395 mapRes!4396))

(declare-fun b!123131 () Bool)

(declare-fun e!80438 () Bool)

(assert (=> b!123131 (= e!80438 tp_is_empty!2813)))

(declare-fun b!123132 () Bool)

(declare-fun e!80440 () Bool)

(assert (=> b!123132 (= e!80440 (and e!80438 mapRes!4396))))

(declare-fun condMapEmpty!4396 () Bool)

(declare-datatypes ((V!3397 0))(
  ( (V!3398 (val!1451 Int)) )
))
(declare-datatypes ((array!4636 0))(
  ( (array!4637 (arr!2196 (Array (_ BitVec 32) (_ BitVec 64))) (size!2458 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1063 0))(
  ( (ValueCellFull!1063 (v!3078 V!3397)) (EmptyCell!1063) )
))
(declare-datatypes ((array!4638 0))(
  ( (array!4639 (arr!2197 (Array (_ BitVec 32) ValueCell!1063)) (size!2459 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1034 0))(
  ( (LongMapFixedSize!1035 (defaultEntry!2750 Int) (mask!6984 (_ BitVec 32)) (extraKeys!2535 (_ BitVec 32)) (zeroValue!2615 V!3397) (minValue!2615 V!3397) (_size!566 (_ BitVec 32)) (_keys!4477 array!4636) (_values!2733 array!4638) (_vacant!566 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!826 0))(
  ( (Cell!827 (v!3079 LongMapFixedSize!1034)) )
))
(declare-datatypes ((LongMap!826 0))(
  ( (LongMap!827 (underlying!424 Cell!826)) )
))
(declare-fun thiss!992 () LongMap!826)

(declare-fun mapDefault!4396 () ValueCell!1063)

