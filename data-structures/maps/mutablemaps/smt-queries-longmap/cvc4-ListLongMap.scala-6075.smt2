; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78590 () Bool)

(assert start!78590)

(declare-fun b_free!16775 () Bool)

(declare-fun b_next!16775 () Bool)

(assert (=> start!78590 (= b_free!16775 (not b_next!16775))))

(declare-fun tp!58766 () Bool)

(declare-fun b_and!27415 () Bool)

(assert (=> start!78590 (= tp!58766 b_and!27415)))

(declare-fun mapIsEmpty!30681 () Bool)

(declare-fun mapRes!30681 () Bool)

(assert (=> mapIsEmpty!30681 mapRes!30681))

(declare-fun b!915643 () Bool)

(declare-fun res!617423 () Bool)

(declare-fun e!513983 () Bool)

(assert (=> b!915643 (=> (not res!617423) (not e!513983))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54570 0))(
  ( (array!54571 (arr!26226 (Array (_ BitVec 32) (_ BitVec 64))) (size!26686 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54570)

(assert (=> b!915643 (= res!617423 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26686 _keys!1487))))))

(declare-fun b!915644 () Bool)

(declare-fun res!617420 () Bool)

(assert (=> b!915644 (=> (not res!617420) (not e!513983))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54570 (_ BitVec 32)) Bool)

(assert (=> b!915644 (= res!617420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!915645 () Bool)

(declare-fun res!617422 () Bool)

(assert (=> b!915645 (=> (not res!617422) (not e!513983))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30675 0))(
  ( (V!30676 (val!9692 Int)) )
))
(declare-datatypes ((ValueCell!9160 0))(
  ( (ValueCellFull!9160 (v!12210 V!30675)) (EmptyCell!9160) )
))
(declare-datatypes ((array!54572 0))(
  ( (array!54573 (arr!26227 (Array (_ BitVec 32) ValueCell!9160)) (size!26687 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54572)

(assert (=> b!915645 (= res!617422 (and (= (size!26687 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26686 _keys!1487) (size!26687 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30681 () Bool)

(declare-fun tp!58767 () Bool)

(declare-fun e!513980 () Bool)

(assert (=> mapNonEmpty!30681 (= mapRes!30681 (and tp!58767 e!513980))))

(declare-fun mapValue!30681 () ValueCell!9160)

(declare-fun mapRest!30681 () (Array (_ BitVec 32) ValueCell!9160))

(declare-fun mapKey!30681 () (_ BitVec 32))

(assert (=> mapNonEmpty!30681 (= (arr!26227 _values!1231) (store mapRest!30681 mapKey!30681 mapValue!30681))))

(declare-fun b!915647 () Bool)

(declare-fun e!513982 () Bool)

(declare-fun tp_is_empty!19283 () Bool)

(assert (=> b!915647 (= e!513982 tp_is_empty!19283)))

(declare-fun b!915648 () Bool)

(assert (=> b!915648 (= e!513983 false)))

(declare-fun lt!411660 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!30675)

(declare-fun minValue!1173 () V!30675)

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((tuple2!12640 0))(
  ( (tuple2!12641 (_1!6330 (_ BitVec 64)) (_2!6330 V!30675)) )
))
(declare-datatypes ((List!18499 0))(
  ( (Nil!18496) (Cons!18495 (h!19641 tuple2!12640) (t!26120 List!18499)) )
))
(declare-datatypes ((ListLongMap!11351 0))(
  ( (ListLongMap!11352 (toList!5691 List!18499)) )
))
(declare-fun contains!4711 (ListLongMap!11351 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2920 (array!54570 array!54572 (_ BitVec 32) (_ BitVec 32) V!30675 V!30675 (_ BitVec 32) Int) ListLongMap!11351)

(assert (=> b!915648 (= lt!411660 (contains!4711 (getCurrentListMap!2920 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k!1099))))

(declare-fun b!915649 () Bool)

(assert (=> b!915649 (= e!513980 tp_is_empty!19283)))

(declare-fun b!915650 () Bool)

(declare-fun e!513981 () Bool)

(assert (=> b!915650 (= e!513981 (and e!513982 mapRes!30681))))

(declare-fun condMapEmpty!30681 () Bool)

(declare-fun mapDefault!30681 () ValueCell!9160)

