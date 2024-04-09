; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78652 () Bool)

(assert start!78652)

(declare-fun b_free!16837 () Bool)

(declare-fun b_next!16837 () Bool)

(assert (=> start!78652 (= b_free!16837 (not b_next!16837))))

(declare-fun tp!58953 () Bool)

(declare-fun b_and!27477 () Bool)

(assert (=> start!78652 (= tp!58953 b_and!27477)))

(declare-fun b!916416 () Bool)

(declare-fun res!617916 () Bool)

(declare-fun e!514465 () Bool)

(assert (=> b!916416 (=> (not res!617916) (not e!514465))))

(declare-datatypes ((array!54692 0))(
  ( (array!54693 (arr!26287 (Array (_ BitVec 32) (_ BitVec 64))) (size!26747 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54692)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54692 (_ BitVec 32)) Bool)

(assert (=> b!916416 (= res!617916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!916417 () Bool)

(declare-fun res!617918 () Bool)

(assert (=> b!916417 (=> (not res!617918) (not e!514465))))

(declare-datatypes ((List!18548 0))(
  ( (Nil!18545) (Cons!18544 (h!19690 (_ BitVec 64)) (t!26169 List!18548)) )
))
(declare-fun arrayNoDuplicates!0 (array!54692 (_ BitVec 32) List!18548) Bool)

(assert (=> b!916417 (= res!617918 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18545))))

(declare-fun b!916418 () Bool)

(declare-fun e!514466 () Bool)

(declare-fun tp_is_empty!19345 () Bool)

(assert (=> b!916418 (= e!514466 tp_is_empty!19345)))

(declare-fun b!916419 () Bool)

(declare-fun e!514469 () Bool)

(assert (=> b!916419 (= e!514469 tp_is_empty!19345)))

(declare-fun b!916421 () Bool)

(declare-fun res!617913 () Bool)

(assert (=> b!916421 (=> (not res!617913) (not e!514465))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!916421 (= res!617913 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26747 _keys!1487))))))

(declare-fun mapIsEmpty!30774 () Bool)

(declare-fun mapRes!30774 () Bool)

(assert (=> mapIsEmpty!30774 mapRes!30774))

(declare-fun b!916422 () Bool)

(declare-fun res!617915 () Bool)

(assert (=> b!916422 (=> (not res!617915) (not e!514465))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30759 0))(
  ( (V!30760 (val!9723 Int)) )
))
(declare-datatypes ((ValueCell!9191 0))(
  ( (ValueCellFull!9191 (v!12241 V!30759)) (EmptyCell!9191) )
))
(declare-datatypes ((array!54694 0))(
  ( (array!54695 (arr!26288 (Array (_ BitVec 32) ValueCell!9191)) (size!26748 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54694)

(assert (=> b!916422 (= res!617915 (and (= (size!26748 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26747 _keys!1487) (size!26748 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916423 () Bool)

(declare-fun e!514467 () Bool)

(assert (=> b!916423 (= e!514465 e!514467)))

(declare-fun res!617917 () Bool)

(assert (=> b!916423 (=> (not res!617917) (not e!514467))))

(declare-datatypes ((tuple2!12688 0))(
  ( (tuple2!12689 (_1!6354 (_ BitVec 64)) (_2!6354 V!30759)) )
))
(declare-datatypes ((List!18549 0))(
  ( (Nil!18546) (Cons!18545 (h!19691 tuple2!12688) (t!26170 List!18549)) )
))
(declare-datatypes ((ListLongMap!11399 0))(
  ( (ListLongMap!11400 (toList!5715 List!18549)) )
))
(declare-fun lt!411764 () ListLongMap!11399)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4735 (ListLongMap!11399 (_ BitVec 64)) Bool)

(assert (=> b!916423 (= res!617917 (contains!4735 lt!411764 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30759)

(declare-fun minValue!1173 () V!30759)

(declare-fun getCurrentListMap!2944 (array!54692 array!54694 (_ BitVec 32) (_ BitVec 32) V!30759 V!30759 (_ BitVec 32) Int) ListLongMap!11399)

(assert (=> b!916423 (= lt!411764 (getCurrentListMap!2944 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!916424 () Bool)

(assert (=> b!916424 (= e!514467 false)))

(declare-fun lt!411765 () V!30759)

(declare-fun apply!544 (ListLongMap!11399 (_ BitVec 64)) V!30759)

(assert (=> b!916424 (= lt!411765 (apply!544 lt!411764 k!1099))))

(declare-fun mapNonEmpty!30774 () Bool)

(declare-fun tp!58952 () Bool)

(assert (=> mapNonEmpty!30774 (= mapRes!30774 (and tp!58952 e!514469))))

(declare-fun mapRest!30774 () (Array (_ BitVec 32) ValueCell!9191))

(declare-fun mapKey!30774 () (_ BitVec 32))

(declare-fun mapValue!30774 () ValueCell!9191)

(assert (=> mapNonEmpty!30774 (= (arr!26288 _values!1231) (store mapRest!30774 mapKey!30774 mapValue!30774))))

(declare-fun res!617914 () Bool)

(assert (=> start!78652 (=> (not res!617914) (not e!514465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78652 (= res!617914 (validMask!0 mask!1881))))

(assert (=> start!78652 e!514465))

(assert (=> start!78652 true))

(declare-fun e!514470 () Bool)

(declare-fun array_inv!20498 (array!54694) Bool)

(assert (=> start!78652 (and (array_inv!20498 _values!1231) e!514470)))

(assert (=> start!78652 tp!58953))

(declare-fun array_inv!20499 (array!54692) Bool)

(assert (=> start!78652 (array_inv!20499 _keys!1487)))

(assert (=> start!78652 tp_is_empty!19345))

(declare-fun b!916420 () Bool)

(assert (=> b!916420 (= e!514470 (and e!514466 mapRes!30774))))

(declare-fun condMapEmpty!30774 () Bool)

(declare-fun mapDefault!30774 () ValueCell!9191)

