; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78446 () Bool)

(assert start!78446)

(declare-fun b!914588 () Bool)

(declare-fun e!513138 () Bool)

(declare-fun tp_is_empty!19183 () Bool)

(assert (=> b!914588 (= e!513138 tp_is_empty!19183)))

(declare-fun mapNonEmpty!30516 () Bool)

(declare-fun mapRes!30516 () Bool)

(declare-fun tp!58584 () Bool)

(assert (=> mapNonEmpty!30516 (= mapRes!30516 (and tp!58584 e!513138))))

(declare-fun mapKey!30516 () (_ BitVec 32))

(declare-datatypes ((V!30543 0))(
  ( (V!30544 (val!9642 Int)) )
))
(declare-datatypes ((ValueCell!9110 0))(
  ( (ValueCellFull!9110 (v!12159 V!30543)) (EmptyCell!9110) )
))
(declare-fun mapValue!30516 () ValueCell!9110)

(declare-datatypes ((array!54374 0))(
  ( (array!54375 (arr!26133 (Array (_ BitVec 32) ValueCell!9110)) (size!26593 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54374)

(declare-fun mapRest!30516 () (Array (_ BitVec 32) ValueCell!9110))

(assert (=> mapNonEmpty!30516 (= (arr!26133 _values!1231) (store mapRest!30516 mapKey!30516 mapValue!30516))))

(declare-fun b!914589 () Bool)

(declare-fun e!513137 () Bool)

(assert (=> b!914589 (= e!513137 tp_is_empty!19183)))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun b!914590 () Bool)

(declare-fun e!513139 () Bool)

(declare-datatypes ((array!54376 0))(
  ( (array!54377 (arr!26134 (Array (_ BitVec 32) (_ BitVec 64))) (size!26594 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54376)

(assert (=> b!914590 (= e!513139 (and (= (size!26593 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26594 _keys!1487) (size!26593 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011) (not (= (size!26594 _keys!1487) (bvadd #b00000000000000000000000000000001 mask!1881)))))))

(declare-fun mapIsEmpty!30516 () Bool)

(assert (=> mapIsEmpty!30516 mapRes!30516))

(declare-fun b!914591 () Bool)

(declare-fun e!513135 () Bool)

(assert (=> b!914591 (= e!513135 (and e!513137 mapRes!30516))))

(declare-fun condMapEmpty!30516 () Bool)

(declare-fun mapDefault!30516 () ValueCell!9110)

