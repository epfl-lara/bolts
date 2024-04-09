; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78586 () Bool)

(assert start!78586)

(declare-fun b_free!16771 () Bool)

(declare-fun b_next!16771 () Bool)

(assert (=> start!78586 (= b_free!16771 (not b_next!16771))))

(declare-fun tp!58755 () Bool)

(declare-fun b_and!27411 () Bool)

(assert (=> start!78586 (= tp!58755 b_and!27411)))

(declare-fun b!915595 () Bool)

(declare-fun res!617390 () Bool)

(declare-fun e!513951 () Bool)

(assert (=> b!915595 (=> (not res!617390) (not e!513951))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54562 0))(
  ( (array!54563 (arr!26222 (Array (_ BitVec 32) (_ BitVec 64))) (size!26682 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54562)

(assert (=> b!915595 (= res!617390 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26682 _keys!1487))))))

(declare-fun b!915596 () Bool)

(declare-fun res!617393 () Bool)

(assert (=> b!915596 (=> (not res!617393) (not e!513951))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54562 (_ BitVec 32)) Bool)

(assert (=> b!915596 (= res!617393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!915597 () Bool)

(assert (=> b!915597 (= e!513951 false)))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30671 0))(
  ( (V!30672 (val!9690 Int)) )
))
(declare-datatypes ((ValueCell!9158 0))(
  ( (ValueCellFull!9158 (v!12208 V!30671)) (EmptyCell!9158) )
))
(declare-datatypes ((array!54564 0))(
  ( (array!54565 (arr!26223 (Array (_ BitVec 32) ValueCell!9158)) (size!26683 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54564)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun lt!411654 () Bool)

(declare-fun zeroValue!1173 () V!30671)

(declare-fun minValue!1173 () V!30671)

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((tuple2!12636 0))(
  ( (tuple2!12637 (_1!6328 (_ BitVec 64)) (_2!6328 V!30671)) )
))
(declare-datatypes ((List!18495 0))(
  ( (Nil!18492) (Cons!18491 (h!19637 tuple2!12636) (t!26116 List!18495)) )
))
(declare-datatypes ((ListLongMap!11347 0))(
  ( (ListLongMap!11348 (toList!5689 List!18495)) )
))
(declare-fun contains!4709 (ListLongMap!11347 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2918 (array!54562 array!54564 (_ BitVec 32) (_ BitVec 32) V!30671 V!30671 (_ BitVec 32) Int) ListLongMap!11347)

(assert (=> b!915597 (= lt!411654 (contains!4709 (getCurrentListMap!2918 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k!1099))))

(declare-fun b!915598 () Bool)

(declare-fun res!617389 () Bool)

(assert (=> b!915598 (=> (not res!617389) (not e!513951))))

(declare-datatypes ((List!18496 0))(
  ( (Nil!18493) (Cons!18492 (h!19638 (_ BitVec 64)) (t!26117 List!18496)) )
))
(declare-fun arrayNoDuplicates!0 (array!54562 (_ BitVec 32) List!18496) Bool)

(assert (=> b!915598 (= res!617389 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18493))))

(declare-fun b!915599 () Bool)

(declare-fun res!617391 () Bool)

(assert (=> b!915599 (=> (not res!617391) (not e!513951))))

(assert (=> b!915599 (= res!617391 (and (= (size!26683 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26682 _keys!1487) (size!26683 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30675 () Bool)

(declare-fun mapRes!30675 () Bool)

(declare-fun tp!58754 () Bool)

(declare-fun e!513954 () Bool)

(assert (=> mapNonEmpty!30675 (= mapRes!30675 (and tp!58754 e!513954))))

(declare-fun mapValue!30675 () ValueCell!9158)

(declare-fun mapKey!30675 () (_ BitVec 32))

(declare-fun mapRest!30675 () (Array (_ BitVec 32) ValueCell!9158))

(assert (=> mapNonEmpty!30675 (= (arr!26223 _values!1231) (store mapRest!30675 mapKey!30675 mapValue!30675))))

(declare-fun b!915600 () Bool)

(declare-fun e!513953 () Bool)

(declare-fun tp_is_empty!19279 () Bool)

(assert (=> b!915600 (= e!513953 tp_is_empty!19279)))

(declare-fun b!915601 () Bool)

(declare-fun e!513950 () Bool)

(assert (=> b!915601 (= e!513950 (and e!513953 mapRes!30675))))

(declare-fun condMapEmpty!30675 () Bool)

(declare-fun mapDefault!30675 () ValueCell!9158)

