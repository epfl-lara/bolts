; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82330 () Bool)

(assert start!82330)

(declare-fun b_free!18575 () Bool)

(declare-fun b_next!18575 () Bool)

(assert (=> start!82330 (= b_free!18575 (not b_next!18575))))

(declare-fun tp!64687 () Bool)

(declare-fun b_and!30081 () Bool)

(assert (=> start!82330 (= tp!64687 b_and!30081)))

(declare-fun mapNonEmpty!33901 () Bool)

(declare-fun mapRes!33901 () Bool)

(declare-fun tp!64686 () Bool)

(declare-fun e!540829 () Bool)

(assert (=> mapNonEmpty!33901 (= mapRes!33901 (and tp!64686 e!540829))))

(declare-datatypes ((V!33357 0))(
  ( (V!33358 (val!10691 Int)) )
))
(declare-datatypes ((ValueCell!10159 0))(
  ( (ValueCellFull!10159 (v!13248 V!33357)) (EmptyCell!10159) )
))
(declare-fun mapValue!33901 () ValueCell!10159)

(declare-fun mapKey!33901 () (_ BitVec 32))

(declare-fun mapRest!33901 () (Array (_ BitVec 32) ValueCell!10159))

(declare-datatypes ((array!58671 0))(
  ( (array!58672 (arr!28205 (Array (_ BitVec 32) ValueCell!10159)) (size!28685 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58671)

(assert (=> mapNonEmpty!33901 (= (arr!28205 _values!1386) (store mapRest!33901 mapKey!33901 mapValue!33901))))

(declare-fun b!959362 () Bool)

(declare-fun tp_is_empty!21281 () Bool)

(assert (=> b!959362 (= e!540829 tp_is_empty!21281)))

(declare-fun b!959363 () Bool)

(declare-fun e!540830 () Bool)

(declare-fun e!540831 () Bool)

(assert (=> b!959363 (= e!540830 (and e!540831 mapRes!33901))))

(declare-fun condMapEmpty!33901 () Bool)

(declare-fun mapDefault!33901 () ValueCell!10159)

