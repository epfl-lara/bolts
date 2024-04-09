; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77916 () Bool)

(assert start!77916)

(declare-fun b_free!16447 () Bool)

(declare-fun b_next!16447 () Bool)

(assert (=> start!77916 (= b_free!16447 (not b_next!16447))))

(declare-fun tp!57606 () Bool)

(declare-fun b_and!27033 () Bool)

(assert (=> start!77916 (= tp!57606 b_and!27033)))

(declare-fun mapNonEmpty!30013 () Bool)

(declare-fun mapRes!30013 () Bool)

(declare-fun tp!57607 () Bool)

(declare-fun e!509743 () Bool)

(assert (=> mapNonEmpty!30013 (= mapRes!30013 (and tp!57607 e!509743))))

(declare-datatypes ((V!30119 0))(
  ( (V!30120 (val!9483 Int)) )
))
(declare-datatypes ((ValueCell!8951 0))(
  ( (ValueCellFull!8951 (v!11990 V!30119)) (EmptyCell!8951) )
))
(declare-fun mapRest!30013 () (Array (_ BitVec 32) ValueCell!8951))

(declare-fun mapKey!30013 () (_ BitVec 32))

(declare-datatypes ((array!53748 0))(
  ( (array!53749 (arr!25828 (Array (_ BitVec 32) ValueCell!8951)) (size!26288 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53748)

(declare-fun mapValue!30013 () ValueCell!8951)

(assert (=> mapNonEmpty!30013 (= (arr!25828 _values!1152) (store mapRest!30013 mapKey!30013 mapValue!30013))))

(declare-fun b!909304 () Bool)

(declare-fun e!509740 () Bool)

(declare-fun e!509744 () Bool)

(assert (=> b!909304 (= e!509740 (and e!509744 mapRes!30013))))

(declare-fun condMapEmpty!30013 () Bool)

(declare-fun mapDefault!30013 () ValueCell!8951)

