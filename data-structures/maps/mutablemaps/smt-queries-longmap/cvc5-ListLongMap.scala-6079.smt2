; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78610 () Bool)

(assert start!78610)

(declare-fun b_free!16795 () Bool)

(declare-fun b_next!16795 () Bool)

(assert (=> start!78610 (= b_free!16795 (not b_next!16795))))

(declare-fun tp!58826 () Bool)

(declare-fun b_and!27435 () Bool)

(assert (=> start!78610 (= tp!58826 b_and!27435)))

(declare-fun mapNonEmpty!30711 () Bool)

(declare-fun mapRes!30711 () Bool)

(declare-fun tp!58827 () Bool)

(declare-fun e!514134 () Bool)

(assert (=> mapNonEmpty!30711 (= mapRes!30711 (and tp!58827 e!514134))))

(declare-datatypes ((V!30703 0))(
  ( (V!30704 (val!9702 Int)) )
))
(declare-datatypes ((ValueCell!9170 0))(
  ( (ValueCellFull!9170 (v!12220 V!30703)) (EmptyCell!9170) )
))
(declare-fun mapRest!30711 () (Array (_ BitVec 32) ValueCell!9170))

(declare-fun mapValue!30711 () ValueCell!9170)

(declare-fun mapKey!30711 () (_ BitVec 32))

(declare-datatypes ((array!54608 0))(
  ( (array!54609 (arr!26245 (Array (_ BitVec 32) ValueCell!9170)) (size!26705 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54608)

(assert (=> mapNonEmpty!30711 (= (arr!26245 _values!1231) (store mapRest!30711 mapKey!30711 mapValue!30711))))

(declare-fun b!915883 () Bool)

(declare-fun res!617571 () Bool)

(declare-fun e!514130 () Bool)

(assert (=> b!915883 (=> (not res!617571) (not e!514130))))

(declare-datatypes ((array!54610 0))(
  ( (array!54611 (arr!26246 (Array (_ BitVec 32) (_ BitVec 64))) (size!26706 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54610)

(declare-datatypes ((List!18515 0))(
  ( (Nil!18512) (Cons!18511 (h!19657 (_ BitVec 64)) (t!26136 List!18515)) )
))
(declare-fun arrayNoDuplicates!0 (array!54610 (_ BitVec 32) List!18515) Bool)

(assert (=> b!915883 (= res!617571 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18512))))

(declare-fun b!915884 () Bool)

(declare-fun res!617569 () Bool)

(assert (=> b!915884 (=> (not res!617569) (not e!514130))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!915884 (= res!617569 (and (= (size!26705 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26706 _keys!1487) (size!26705 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!915885 () Bool)

(declare-fun e!514131 () Bool)

(declare-fun e!514133 () Bool)

(assert (=> b!915885 (= e!514131 (and e!514133 mapRes!30711))))

(declare-fun condMapEmpty!30711 () Bool)

(declare-fun mapDefault!30711 () ValueCell!9170)

