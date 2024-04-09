; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78578 () Bool)

(assert start!78578)

(declare-fun mapIsEmpty!30663 () Bool)

(declare-fun mapRes!30663 () Bool)

(assert (=> mapIsEmpty!30663 mapRes!30663))

(declare-fun b!915500 () Bool)

(declare-fun res!617331 () Bool)

(declare-fun e!513893 () Bool)

(assert (=> b!915500 (=> (not res!617331) (not e!513893))))

(declare-datatypes ((array!54546 0))(
  ( (array!54547 (arr!26214 (Array (_ BitVec 32) (_ BitVec 64))) (size!26674 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54546)

(declare-datatypes ((List!18490 0))(
  ( (Nil!18487) (Cons!18486 (h!19632 (_ BitVec 64)) (t!26111 List!18490)) )
))
(declare-fun arrayNoDuplicates!0 (array!54546 (_ BitVec 32) List!18490) Bool)

(assert (=> b!915500 (= res!617331 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18487))))

(declare-fun b!915501 () Bool)

(declare-fun res!617332 () Bool)

(assert (=> b!915501 (=> (not res!617332) (not e!513893))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30659 0))(
  ( (V!30660 (val!9686 Int)) )
))
(declare-datatypes ((ValueCell!9154 0))(
  ( (ValueCellFull!9154 (v!12204 V!30659)) (EmptyCell!9154) )
))
(declare-datatypes ((array!54548 0))(
  ( (array!54549 (arr!26215 (Array (_ BitVec 32) ValueCell!9154)) (size!26675 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54548)

(assert (=> b!915501 (= res!617332 (and (= (size!26675 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26674 _keys!1487) (size!26675 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30663 () Bool)

(declare-fun tp!58731 () Bool)

(declare-fun e!513891 () Bool)

(assert (=> mapNonEmpty!30663 (= mapRes!30663 (and tp!58731 e!513891))))

(declare-fun mapKey!30663 () (_ BitVec 32))

(declare-fun mapValue!30663 () ValueCell!9154)

(declare-fun mapRest!30663 () (Array (_ BitVec 32) ValueCell!9154))

(assert (=> mapNonEmpty!30663 (= (arr!26215 _values!1231) (store mapRest!30663 mapKey!30663 mapValue!30663))))

(declare-fun b!915502 () Bool)

(declare-fun tp_is_empty!19271 () Bool)

(assert (=> b!915502 (= e!513891 tp_is_empty!19271)))

(declare-fun b!915503 () Bool)

(declare-fun res!617333 () Bool)

(assert (=> b!915503 (=> (not res!617333) (not e!513893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54546 (_ BitVec 32)) Bool)

(assert (=> b!915503 (= res!617333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!915504 () Bool)

(declare-fun e!513894 () Bool)

(assert (=> b!915504 (= e!513894 tp_is_empty!19271)))

(declare-fun res!617330 () Bool)

(assert (=> start!78578 (=> (not res!617330) (not e!513893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78578 (= res!617330 (validMask!0 mask!1881))))

(assert (=> start!78578 e!513893))

(declare-fun array_inv!20448 (array!54546) Bool)

(assert (=> start!78578 (array_inv!20448 _keys!1487)))

(assert (=> start!78578 true))

(declare-fun e!513892 () Bool)

(declare-fun array_inv!20449 (array!54548) Bool)

(assert (=> start!78578 (and (array_inv!20449 _values!1231) e!513892)))

(declare-fun b!915505 () Bool)

(assert (=> b!915505 (= e!513892 (and e!513894 mapRes!30663))))

(declare-fun condMapEmpty!30663 () Bool)

(declare-fun mapDefault!30663 () ValueCell!9154)

