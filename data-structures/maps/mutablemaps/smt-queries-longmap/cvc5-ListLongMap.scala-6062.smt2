; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78478 () Bool)

(assert start!78478)

(declare-fun mapNonEmpty!30549 () Bool)

(declare-fun mapRes!30549 () Bool)

(declare-fun tp!58617 () Bool)

(declare-fun e!513291 () Bool)

(assert (=> mapNonEmpty!30549 (= mapRes!30549 (and tp!58617 e!513291))))

(declare-datatypes ((V!30567 0))(
  ( (V!30568 (val!9651 Int)) )
))
(declare-datatypes ((ValueCell!9119 0))(
  ( (ValueCellFull!9119 (v!12168 V!30567)) (EmptyCell!9119) )
))
(declare-fun mapValue!30549 () ValueCell!9119)

(declare-fun mapKey!30549 () (_ BitVec 32))

(declare-fun mapRest!30549 () (Array (_ BitVec 32) ValueCell!9119))

(declare-datatypes ((array!54410 0))(
  ( (array!54411 (arr!26149 (Array (_ BitVec 32) ValueCell!9119)) (size!26609 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54410)

(assert (=> mapNonEmpty!30549 (= (arr!26149 _values!1231) (store mapRest!30549 mapKey!30549 mapValue!30549))))

(declare-fun b!914746 () Bool)

(declare-fun e!513292 () Bool)

(declare-fun tp_is_empty!19201 () Bool)

(assert (=> b!914746 (= e!513292 tp_is_empty!19201)))

(declare-fun b!914747 () Bool)

(declare-fun res!616935 () Bool)

(declare-fun e!513294 () Bool)

(assert (=> b!914747 (=> (not res!616935) (not e!513294))))

(declare-datatypes ((array!54412 0))(
  ( (array!54413 (arr!26150 (Array (_ BitVec 32) (_ BitVec 64))) (size!26610 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54412)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54412 (_ BitVec 32)) Bool)

(assert (=> b!914747 (= res!616935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!616934 () Bool)

(assert (=> start!78478 (=> (not res!616934) (not e!513294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78478 (= res!616934 (validMask!0 mask!1881))))

(assert (=> start!78478 e!513294))

(assert (=> start!78478 true))

(declare-fun e!513295 () Bool)

(declare-fun array_inv!20404 (array!54410) Bool)

(assert (=> start!78478 (and (array_inv!20404 _values!1231) e!513295)))

(declare-fun array_inv!20405 (array!54412) Bool)

(assert (=> start!78478 (array_inv!20405 _keys!1487)))

(declare-fun b!914748 () Bool)

(assert (=> b!914748 (= e!513294 (and (bvsle #b00000000000000000000000000000000 (size!26610 _keys!1487)) (bvsge (size!26610 _keys!1487) #b01111111111111111111111111111111)))))

(declare-fun b!914749 () Bool)

(assert (=> b!914749 (= e!513291 tp_is_empty!19201)))

(declare-fun mapIsEmpty!30549 () Bool)

(assert (=> mapIsEmpty!30549 mapRes!30549))

(declare-fun b!914750 () Bool)

(declare-fun res!616933 () Bool)

(assert (=> b!914750 (=> (not res!616933) (not e!513294))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!914750 (= res!616933 (and (= (size!26609 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26610 _keys!1487) (size!26609 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!914751 () Bool)

(assert (=> b!914751 (= e!513295 (and e!513292 mapRes!30549))))

(declare-fun condMapEmpty!30549 () Bool)

(declare-fun mapDefault!30549 () ValueCell!9119)

