; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78602 () Bool)

(assert start!78602)

(declare-fun b_free!16787 () Bool)

(declare-fun b_next!16787 () Bool)

(assert (=> start!78602 (= b_free!16787 (not b_next!16787))))

(declare-fun tp!58802 () Bool)

(declare-fun b_and!27427 () Bool)

(assert (=> start!78602 (= tp!58802 b_and!27427)))

(declare-fun b!915787 () Bool)

(declare-fun e!514074 () Bool)

(assert (=> b!915787 (= e!514074 false)))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((V!30691 0))(
  ( (V!30692 (val!9698 Int)) )
))
(declare-datatypes ((ValueCell!9166 0))(
  ( (ValueCellFull!9166 (v!12216 V!30691)) (EmptyCell!9166) )
))
(declare-datatypes ((array!54592 0))(
  ( (array!54593 (arr!26237 (Array (_ BitVec 32) ValueCell!9166)) (size!26697 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54592)

(declare-fun lt!411678 () Bool)

(declare-fun defaultEntry!1235 () Int)

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((array!54594 0))(
  ( (array!54595 (arr!26238 (Array (_ BitVec 32) (_ BitVec 64))) (size!26698 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54594)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!30691)

(declare-fun minValue!1173 () V!30691)

(declare-datatypes ((tuple2!12650 0))(
  ( (tuple2!12651 (_1!6335 (_ BitVec 64)) (_2!6335 V!30691)) )
))
(declare-datatypes ((List!18508 0))(
  ( (Nil!18505) (Cons!18504 (h!19650 tuple2!12650) (t!26129 List!18508)) )
))
(declare-datatypes ((ListLongMap!11361 0))(
  ( (ListLongMap!11362 (toList!5696 List!18508)) )
))
(declare-fun contains!4716 (ListLongMap!11361 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2925 (array!54594 array!54592 (_ BitVec 32) (_ BitVec 32) V!30691 V!30691 (_ BitVec 32) Int) ListLongMap!11361)

(assert (=> b!915787 (= lt!411678 (contains!4716 (getCurrentListMap!2925 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k!1099))))

(declare-fun b!915788 () Bool)

(declare-fun e!514071 () Bool)

(declare-fun tp_is_empty!19295 () Bool)

(assert (=> b!915788 (= e!514071 tp_is_empty!19295)))

(declare-fun b!915789 () Bool)

(declare-fun res!617510 () Bool)

(assert (=> b!915789 (=> (not res!617510) (not e!514074))))

(assert (=> b!915789 (= res!617510 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26698 _keys!1487))))))

(declare-fun res!617513 () Bool)

(assert (=> start!78602 (=> (not res!617513) (not e!514074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78602 (= res!617513 (validMask!0 mask!1881))))

(assert (=> start!78602 e!514074))

(assert (=> start!78602 true))

(declare-fun e!514070 () Bool)

(declare-fun array_inv!20462 (array!54592) Bool)

(assert (=> start!78602 (and (array_inv!20462 _values!1231) e!514070)))

(assert (=> start!78602 tp!58802))

(declare-fun array_inv!20463 (array!54594) Bool)

(assert (=> start!78602 (array_inv!20463 _keys!1487)))

(assert (=> start!78602 tp_is_empty!19295))

(declare-fun b!915790 () Bool)

(declare-fun res!617512 () Bool)

(assert (=> b!915790 (=> (not res!617512) (not e!514074))))

(declare-datatypes ((List!18509 0))(
  ( (Nil!18506) (Cons!18505 (h!19651 (_ BitVec 64)) (t!26130 List!18509)) )
))
(declare-fun arrayNoDuplicates!0 (array!54594 (_ BitVec 32) List!18509) Bool)

(assert (=> b!915790 (= res!617512 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18506))))

(declare-fun b!915791 () Bool)

(declare-fun res!617511 () Bool)

(assert (=> b!915791 (=> (not res!617511) (not e!514074))))

(assert (=> b!915791 (= res!617511 (and (= (size!26697 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26698 _keys!1487) (size!26697 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30699 () Bool)

(declare-fun mapRes!30699 () Bool)

(declare-fun tp!58803 () Bool)

(declare-fun e!514073 () Bool)

(assert (=> mapNonEmpty!30699 (= mapRes!30699 (and tp!58803 e!514073))))

(declare-fun mapKey!30699 () (_ BitVec 32))

(declare-fun mapRest!30699 () (Array (_ BitVec 32) ValueCell!9166))

(declare-fun mapValue!30699 () ValueCell!9166)

(assert (=> mapNonEmpty!30699 (= (arr!26237 _values!1231) (store mapRest!30699 mapKey!30699 mapValue!30699))))

(declare-fun b!915792 () Bool)

(assert (=> b!915792 (= e!514070 (and e!514071 mapRes!30699))))

(declare-fun condMapEmpty!30699 () Bool)

(declare-fun mapDefault!30699 () ValueCell!9166)

