; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78644 () Bool)

(assert start!78644)

(declare-fun b_free!16829 () Bool)

(declare-fun b_next!16829 () Bool)

(assert (=> start!78644 (= b_free!16829 (not b_next!16829))))

(declare-fun tp!58929 () Bool)

(declare-fun b_and!27469 () Bool)

(assert (=> start!78644 (= tp!58929 b_and!27469)))

(declare-fun b!916308 () Bool)

(declare-fun e!514397 () Bool)

(declare-fun e!514393 () Bool)

(assert (=> b!916308 (= e!514397 e!514393)))

(declare-fun res!617846 () Bool)

(assert (=> b!916308 (=> (not res!617846) (not e!514393))))

(declare-datatypes ((V!30747 0))(
  ( (V!30748 (val!9719 Int)) )
))
(declare-datatypes ((tuple2!12680 0))(
  ( (tuple2!12681 (_1!6350 (_ BitVec 64)) (_2!6350 V!30747)) )
))
(declare-datatypes ((List!18540 0))(
  ( (Nil!18537) (Cons!18536 (h!19682 tuple2!12680) (t!26161 List!18540)) )
))
(declare-datatypes ((ListLongMap!11391 0))(
  ( (ListLongMap!11392 (toList!5711 List!18540)) )
))
(declare-fun lt!411740 () ListLongMap!11391)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4731 (ListLongMap!11391 (_ BitVec 64)) Bool)

(assert (=> b!916308 (= res!617846 (contains!4731 lt!411740 k!1099))))

(declare-datatypes ((array!54676 0))(
  ( (array!54677 (arr!26279 (Array (_ BitVec 32) (_ BitVec 64))) (size!26739 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54676)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9187 0))(
  ( (ValueCellFull!9187 (v!12237 V!30747)) (EmptyCell!9187) )
))
(declare-datatypes ((array!54678 0))(
  ( (array!54679 (arr!26280 (Array (_ BitVec 32) ValueCell!9187)) (size!26740 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54678)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30747)

(declare-fun minValue!1173 () V!30747)

(declare-fun getCurrentListMap!2940 (array!54676 array!54678 (_ BitVec 32) (_ BitVec 32) V!30747 V!30747 (_ BitVec 32) Int) ListLongMap!11391)

(assert (=> b!916308 (= lt!411740 (getCurrentListMap!2940 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!30762 () Bool)

(declare-fun mapRes!30762 () Bool)

(assert (=> mapIsEmpty!30762 mapRes!30762))

(declare-fun b!916309 () Bool)

(assert (=> b!916309 (= e!514393 false)))

(declare-fun lt!411741 () V!30747)

(declare-fun apply!541 (ListLongMap!11391 (_ BitVec 64)) V!30747)

(assert (=> b!916309 (= lt!411741 (apply!541 lt!411740 k!1099))))

(declare-fun b!916310 () Bool)

(declare-fun res!617845 () Bool)

(assert (=> b!916310 (=> (not res!617845) (not e!514397))))

(declare-datatypes ((List!18541 0))(
  ( (Nil!18538) (Cons!18537 (h!19683 (_ BitVec 64)) (t!26162 List!18541)) )
))
(declare-fun arrayNoDuplicates!0 (array!54676 (_ BitVec 32) List!18541) Bool)

(assert (=> b!916310 (= res!617845 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18538))))

(declare-fun b!916311 () Bool)

(declare-fun e!514395 () Bool)

(declare-fun tp_is_empty!19337 () Bool)

(assert (=> b!916311 (= e!514395 tp_is_empty!19337)))

(declare-fun res!617841 () Bool)

(assert (=> start!78644 (=> (not res!617841) (not e!514397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78644 (= res!617841 (validMask!0 mask!1881))))

(assert (=> start!78644 e!514397))

(assert (=> start!78644 true))

(declare-fun e!514394 () Bool)

(declare-fun array_inv!20490 (array!54678) Bool)

(assert (=> start!78644 (and (array_inv!20490 _values!1231) e!514394)))

(assert (=> start!78644 tp!58929))

(declare-fun array_inv!20491 (array!54676) Bool)

(assert (=> start!78644 (array_inv!20491 _keys!1487)))

(assert (=> start!78644 tp_is_empty!19337))

(declare-fun b!916312 () Bool)

(declare-fun res!617842 () Bool)

(assert (=> b!916312 (=> (not res!617842) (not e!514397))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54676 (_ BitVec 32)) Bool)

(assert (=> b!916312 (= res!617842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!30762 () Bool)

(declare-fun tp!58928 () Bool)

(assert (=> mapNonEmpty!30762 (= mapRes!30762 (and tp!58928 e!514395))))

(declare-fun mapValue!30762 () ValueCell!9187)

(declare-fun mapKey!30762 () (_ BitVec 32))

(declare-fun mapRest!30762 () (Array (_ BitVec 32) ValueCell!9187))

(assert (=> mapNonEmpty!30762 (= (arr!26280 _values!1231) (store mapRest!30762 mapKey!30762 mapValue!30762))))

(declare-fun b!916313 () Bool)

(declare-fun res!617844 () Bool)

(assert (=> b!916313 (=> (not res!617844) (not e!514397))))

(assert (=> b!916313 (= res!617844 (and (= (size!26740 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26739 _keys!1487) (size!26740 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916314 () Bool)

(declare-fun e!514396 () Bool)

(assert (=> b!916314 (= e!514396 tp_is_empty!19337)))

(declare-fun b!916315 () Bool)

(assert (=> b!916315 (= e!514394 (and e!514396 mapRes!30762))))

(declare-fun condMapEmpty!30762 () Bool)

(declare-fun mapDefault!30762 () ValueCell!9187)

