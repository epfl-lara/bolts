; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38790 () Bool)

(assert start!38790)

(declare-fun b!404246 () Bool)

(declare-fun e!243210 () Bool)

(declare-fun tp_is_empty!10201 () Bool)

(assert (=> b!404246 (= e!243210 tp_is_empty!10201)))

(declare-fun mapNonEmpty!16923 () Bool)

(declare-fun mapRes!16923 () Bool)

(declare-fun tp!33042 () Bool)

(declare-fun e!243211 () Bool)

(assert (=> mapNonEmpty!16923 (= mapRes!16923 (and tp!33042 e!243211))))

(declare-datatypes ((V!14707 0))(
  ( (V!14708 (val!5145 Int)) )
))
(declare-datatypes ((ValueCell!4757 0))(
  ( (ValueCellFull!4757 (v!7388 V!14707)) (EmptyCell!4757) )
))
(declare-fun mapRest!16923 () (Array (_ BitVec 32) ValueCell!4757))

(declare-fun mapKey!16923 () (_ BitVec 32))

(declare-datatypes ((array!24269 0))(
  ( (array!24270 (arr!11581 (Array (_ BitVec 32) ValueCell!4757)) (size!11933 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24269)

(declare-fun mapValue!16923 () ValueCell!4757)

(assert (=> mapNonEmpty!16923 (= (arr!11581 _values!549) (store mapRest!16923 mapKey!16923 mapValue!16923))))

(declare-fun b!404247 () Bool)

(declare-fun e!243209 () Bool)

(assert (=> b!404247 (= e!243209 (and e!243210 mapRes!16923))))

(declare-fun condMapEmpty!16923 () Bool)

(declare-fun mapDefault!16923 () ValueCell!4757)

