; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78686 () Bool)

(assert start!78686)

(declare-fun b_free!16871 () Bool)

(declare-fun b_next!16871 () Bool)

(assert (=> start!78686 (= b_free!16871 (not b_next!16871))))

(declare-fun tp!59054 () Bool)

(declare-fun b_and!27511 () Bool)

(assert (=> start!78686 (= tp!59054 b_and!27511)))

(declare-fun mapNonEmpty!30825 () Bool)

(declare-fun mapRes!30825 () Bool)

(declare-fun tp!59055 () Bool)

(declare-fun e!514774 () Bool)

(assert (=> mapNonEmpty!30825 (= mapRes!30825 (and tp!59055 e!514774))))

(declare-fun mapKey!30825 () (_ BitVec 32))

(declare-datatypes ((V!30803 0))(
  ( (V!30804 (val!9740 Int)) )
))
(declare-datatypes ((ValueCell!9208 0))(
  ( (ValueCellFull!9208 (v!12258 V!30803)) (EmptyCell!9208) )
))
(declare-fun mapValue!30825 () ValueCell!9208)

(declare-datatypes ((array!54754 0))(
  ( (array!54755 (arr!26318 (Array (_ BitVec 32) ValueCell!9208)) (size!26778 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54754)

(declare-fun mapRest!30825 () (Array (_ BitVec 32) ValueCell!9208))

(assert (=> mapNonEmpty!30825 (= (arr!26318 _values!1231) (store mapRest!30825 mapKey!30825 mapValue!30825))))

(declare-fun b!916875 () Bool)

(declare-fun e!514772 () Bool)

(declare-fun e!514773 () Bool)

(assert (=> b!916875 (= e!514772 (and e!514773 mapRes!30825))))

(declare-fun condMapEmpty!30825 () Bool)

(declare-fun mapDefault!30825 () ValueCell!9208)

