; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78604 () Bool)

(assert start!78604)

(declare-fun b_free!16789 () Bool)

(declare-fun b_next!16789 () Bool)

(assert (=> start!78604 (= b_free!16789 (not b_next!16789))))

(declare-fun tp!58808 () Bool)

(declare-fun b_and!27429 () Bool)

(assert (=> start!78604 (= tp!58808 b_and!27429)))

(declare-fun res!617524 () Bool)

(declare-fun e!514088 () Bool)

(assert (=> start!78604 (=> (not res!617524) (not e!514088))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78604 (= res!617524 (validMask!0 mask!1881))))

(assert (=> start!78604 e!514088))

(assert (=> start!78604 true))

(declare-datatypes ((V!30695 0))(
  ( (V!30696 (val!9699 Int)) )
))
(declare-datatypes ((ValueCell!9167 0))(
  ( (ValueCellFull!9167 (v!12217 V!30695)) (EmptyCell!9167) )
))
(declare-datatypes ((array!54596 0))(
  ( (array!54597 (arr!26239 (Array (_ BitVec 32) ValueCell!9167)) (size!26699 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54596)

(declare-fun e!514086 () Bool)

(declare-fun array_inv!20464 (array!54596) Bool)

(assert (=> start!78604 (and (array_inv!20464 _values!1231) e!514086)))

(assert (=> start!78604 tp!58808))

(declare-datatypes ((array!54598 0))(
  ( (array!54599 (arr!26240 (Array (_ BitVec 32) (_ BitVec 64))) (size!26700 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54598)

(declare-fun array_inv!20465 (array!54598) Bool)

(assert (=> start!78604 (array_inv!20465 _keys!1487)))

(declare-fun tp_is_empty!19297 () Bool)

(assert (=> start!78604 tp_is_empty!19297))

(declare-fun b!915811 () Bool)

(declare-fun res!617526 () Bool)

(assert (=> b!915811 (=> (not res!617526) (not e!514088))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!915811 (= res!617526 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26700 _keys!1487))))))

(declare-fun b!915812 () Bool)

(declare-fun res!617528 () Bool)

(assert (=> b!915812 (=> (not res!617528) (not e!514088))))

(declare-datatypes ((List!18510 0))(
  ( (Nil!18507) (Cons!18506 (h!19652 (_ BitVec 64)) (t!26131 List!18510)) )
))
(declare-fun arrayNoDuplicates!0 (array!54598 (_ BitVec 32) List!18510) Bool)

(assert (=> b!915812 (= res!617528 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18507))))

(declare-fun mapIsEmpty!30702 () Bool)

(declare-fun mapRes!30702 () Bool)

(assert (=> mapIsEmpty!30702 mapRes!30702))

(declare-fun b!915813 () Bool)

(declare-fun res!617527 () Bool)

(assert (=> b!915813 (=> (not res!617527) (not e!514088))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54598 (_ BitVec 32)) Bool)

(assert (=> b!915813 (= res!617527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!915814 () Bool)

(assert (=> b!915814 (= e!514088 false)))

(declare-fun lt!411681 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!30695)

(declare-fun minValue!1173 () V!30695)

(declare-datatypes ((tuple2!12652 0))(
  ( (tuple2!12653 (_1!6336 (_ BitVec 64)) (_2!6336 V!30695)) )
))
(declare-datatypes ((List!18511 0))(
  ( (Nil!18508) (Cons!18507 (h!19653 tuple2!12652) (t!26132 List!18511)) )
))
(declare-datatypes ((ListLongMap!11363 0))(
  ( (ListLongMap!11364 (toList!5697 List!18511)) )
))
(declare-fun contains!4717 (ListLongMap!11363 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2926 (array!54598 array!54596 (_ BitVec 32) (_ BitVec 32) V!30695 V!30695 (_ BitVec 32) Int) ListLongMap!11363)

(assert (=> b!915814 (= lt!411681 (contains!4717 (getCurrentListMap!2926 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k!1099))))

(declare-fun b!915815 () Bool)

(declare-fun e!514085 () Bool)

(assert (=> b!915815 (= e!514086 (and e!514085 mapRes!30702))))

(declare-fun condMapEmpty!30702 () Bool)

(declare-fun mapDefault!30702 () ValueCell!9167)

