; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78650 () Bool)

(assert start!78650)

(declare-fun b_free!16835 () Bool)

(declare-fun b_next!16835 () Bool)

(assert (=> start!78650 (= b_free!16835 (not b_next!16835))))

(declare-fun tp!58947 () Bool)

(declare-fun b_and!27475 () Bool)

(assert (=> start!78650 (= tp!58947 b_and!27475)))

(declare-fun b!916389 () Bool)

(declare-fun e!514449 () Bool)

(declare-fun tp_is_empty!19343 () Bool)

(assert (=> b!916389 (= e!514449 tp_is_empty!19343)))

(declare-fun b!916390 () Bool)

(declare-fun e!514448 () Bool)

(assert (=> b!916390 (= e!514448 tp_is_empty!19343)))

(declare-fun b!916391 () Bool)

(declare-fun res!617895 () Bool)

(declare-fun e!514451 () Bool)

(assert (=> b!916391 (=> (not res!617895) (not e!514451))))

(declare-datatypes ((array!54688 0))(
  ( (array!54689 (arr!26285 (Array (_ BitVec 32) (_ BitVec 64))) (size!26745 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54688)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30755 0))(
  ( (V!30756 (val!9722 Int)) )
))
(declare-datatypes ((ValueCell!9190 0))(
  ( (ValueCellFull!9190 (v!12240 V!30755)) (EmptyCell!9190) )
))
(declare-datatypes ((array!54690 0))(
  ( (array!54691 (arr!26286 (Array (_ BitVec 32) ValueCell!9190)) (size!26746 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54690)

(assert (=> b!916391 (= res!617895 (and (= (size!26746 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26745 _keys!1487) (size!26746 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30771 () Bool)

(declare-fun mapRes!30771 () Bool)

(declare-fun tp!58946 () Bool)

(assert (=> mapNonEmpty!30771 (= mapRes!30771 (and tp!58946 e!514449))))

(declare-fun mapKey!30771 () (_ BitVec 32))

(declare-fun mapValue!30771 () ValueCell!9190)

(declare-fun mapRest!30771 () (Array (_ BitVec 32) ValueCell!9190))

(assert (=> mapNonEmpty!30771 (= (arr!26286 _values!1231) (store mapRest!30771 mapKey!30771 mapValue!30771))))

(declare-fun b!916392 () Bool)

(declare-fun e!514447 () Bool)

(assert (=> b!916392 (= e!514447 false)))

(declare-fun lt!411758 () V!30755)

(declare-datatypes ((tuple2!12686 0))(
  ( (tuple2!12687 (_1!6353 (_ BitVec 64)) (_2!6353 V!30755)) )
))
(declare-datatypes ((List!18546 0))(
  ( (Nil!18543) (Cons!18542 (h!19688 tuple2!12686) (t!26167 List!18546)) )
))
(declare-datatypes ((ListLongMap!11397 0))(
  ( (ListLongMap!11398 (toList!5714 List!18546)) )
))
(declare-fun lt!411759 () ListLongMap!11397)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!543 (ListLongMap!11397 (_ BitVec 64)) V!30755)

(assert (=> b!916392 (= lt!411758 (apply!543 lt!411759 k!1099))))

(declare-fun res!617898 () Bool)

(assert (=> start!78650 (=> (not res!617898) (not e!514451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78650 (= res!617898 (validMask!0 mask!1881))))

(assert (=> start!78650 e!514451))

(assert (=> start!78650 true))

(declare-fun e!514452 () Bool)

(declare-fun array_inv!20496 (array!54690) Bool)

(assert (=> start!78650 (and (array_inv!20496 _values!1231) e!514452)))

(assert (=> start!78650 tp!58947))

(declare-fun array_inv!20497 (array!54688) Bool)

(assert (=> start!78650 (array_inv!20497 _keys!1487)))

(assert (=> start!78650 tp_is_empty!19343))

(declare-fun b!916393 () Bool)

(declare-fun res!617896 () Bool)

(assert (=> b!916393 (=> (not res!617896) (not e!514451))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54688 (_ BitVec 32)) Bool)

(assert (=> b!916393 (= res!617896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!916394 () Bool)

(declare-fun res!617897 () Bool)

(assert (=> b!916394 (=> (not res!617897) (not e!514451))))

(declare-datatypes ((List!18547 0))(
  ( (Nil!18544) (Cons!18543 (h!19689 (_ BitVec 64)) (t!26168 List!18547)) )
))
(declare-fun arrayNoDuplicates!0 (array!54688 (_ BitVec 32) List!18547) Bool)

(assert (=> b!916394 (= res!617897 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18544))))

(declare-fun b!916395 () Bool)

(assert (=> b!916395 (= e!514451 e!514447)))

(declare-fun res!617900 () Bool)

(assert (=> b!916395 (=> (not res!617900) (not e!514447))))

(declare-fun contains!4734 (ListLongMap!11397 (_ BitVec 64)) Bool)

(assert (=> b!916395 (= res!617900 (contains!4734 lt!411759 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30755)

(declare-fun minValue!1173 () V!30755)

(declare-fun getCurrentListMap!2943 (array!54688 array!54690 (_ BitVec 32) (_ BitVec 32) V!30755 V!30755 (_ BitVec 32) Int) ListLongMap!11397)

(assert (=> b!916395 (= lt!411759 (getCurrentListMap!2943 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!30771 () Bool)

(assert (=> mapIsEmpty!30771 mapRes!30771))

(declare-fun b!916396 () Bool)

(assert (=> b!916396 (= e!514452 (and e!514448 mapRes!30771))))

(declare-fun condMapEmpty!30771 () Bool)

(declare-fun mapDefault!30771 () ValueCell!9190)

