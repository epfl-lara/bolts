; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82308 () Bool)

(assert start!82308)

(declare-fun b_free!18553 () Bool)

(declare-fun b_next!18553 () Bool)

(assert (=> start!82308 (= b_free!18553 (not b_next!18553))))

(declare-fun tp!64621 () Bool)

(declare-fun b_and!30059 () Bool)

(assert (=> start!82308 (= tp!64621 b_and!30059)))

(declare-fun b!959032 () Bool)

(declare-fun res!642069 () Bool)

(declare-fun e!540668 () Bool)

(assert (=> b!959032 (=> (not res!642069) (not e!540668))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((array!58631 0))(
  ( (array!58632 (arr!28185 (Array (_ BitVec 32) (_ BitVec 64))) (size!28665 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58631)

(declare-datatypes ((V!33329 0))(
  ( (V!33330 (val!10680 Int)) )
))
(declare-datatypes ((ValueCell!10148 0))(
  ( (ValueCellFull!10148 (v!13237 V!33329)) (EmptyCell!10148) )
))
(declare-datatypes ((array!58633 0))(
  ( (array!58634 (arr!28186 (Array (_ BitVec 32) ValueCell!10148)) (size!28666 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58633)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!959032 (= res!642069 (and (= (size!28666 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28665 _keys!1668) (size!28666 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!33868 () Bool)

(declare-fun mapRes!33868 () Bool)

(declare-fun tp!64620 () Bool)

(declare-fun e!540665 () Bool)

(assert (=> mapNonEmpty!33868 (= mapRes!33868 (and tp!64620 e!540665))))

(declare-fun mapValue!33868 () ValueCell!10148)

(declare-fun mapRest!33868 () (Array (_ BitVec 32) ValueCell!10148))

(declare-fun mapKey!33868 () (_ BitVec 32))

(assert (=> mapNonEmpty!33868 (= (arr!28186 _values!1386) (store mapRest!33868 mapKey!33868 mapValue!33868))))

(declare-fun b!959033 () Bool)

(declare-fun e!540667 () Bool)

(declare-fun tp_is_empty!21259 () Bool)

(assert (=> b!959033 (= e!540667 tp_is_empty!21259)))

(declare-fun b!959034 () Bool)

(declare-fun e!540666 () Bool)

(assert (=> b!959034 (= e!540666 (and e!540667 mapRes!33868))))

(declare-fun condMapEmpty!33868 () Bool)

(declare-fun mapDefault!33868 () ValueCell!10148)

