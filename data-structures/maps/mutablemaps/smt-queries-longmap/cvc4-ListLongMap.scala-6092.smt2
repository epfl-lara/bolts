; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78692 () Bool)

(assert start!78692)

(declare-fun b_free!16877 () Bool)

(declare-fun b_next!16877 () Bool)

(assert (=> start!78692 (= b_free!16877 (not b_next!16877))))

(declare-fun tp!59073 () Bool)

(declare-fun b_and!27517 () Bool)

(assert (=> start!78692 (= tp!59073 b_and!27517)))

(declare-fun b!916956 () Bool)

(declare-fun res!618273 () Bool)

(declare-fun e!514827 () Bool)

(assert (=> b!916956 (=> (not res!618273) (not e!514827))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54762 0))(
  ( (array!54763 (arr!26322 (Array (_ BitVec 32) (_ BitVec 64))) (size!26782 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54762)

(assert (=> b!916956 (= res!618273 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26782 _keys!1487))))))

(declare-fun mapNonEmpty!30834 () Bool)

(declare-fun mapRes!30834 () Bool)

(declare-fun tp!59072 () Bool)

(declare-fun e!514830 () Bool)

(assert (=> mapNonEmpty!30834 (= mapRes!30834 (and tp!59072 e!514830))))

(declare-datatypes ((V!30811 0))(
  ( (V!30812 (val!9743 Int)) )
))
(declare-datatypes ((ValueCell!9211 0))(
  ( (ValueCellFull!9211 (v!12261 V!30811)) (EmptyCell!9211) )
))
(declare-fun mapValue!30834 () ValueCell!9211)

(declare-fun mapRest!30834 () (Array (_ BitVec 32) ValueCell!9211))

(declare-datatypes ((array!54764 0))(
  ( (array!54765 (arr!26323 (Array (_ BitVec 32) ValueCell!9211)) (size!26783 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54764)

(declare-fun mapKey!30834 () (_ BitVec 32))

(assert (=> mapNonEmpty!30834 (= (arr!26323 _values!1231) (store mapRest!30834 mapKey!30834 mapValue!30834))))

(declare-fun b!916957 () Bool)

(declare-fun e!514826 () Bool)

(declare-fun tp_is_empty!19385 () Bool)

(assert (=> b!916957 (= e!514826 tp_is_empty!19385)))

(declare-fun b!916958 () Bool)

(declare-fun res!618276 () Bool)

(assert (=> b!916958 (=> (not res!618276) (not e!514827))))

(declare-datatypes ((List!18573 0))(
  ( (Nil!18570) (Cons!18569 (h!19715 (_ BitVec 64)) (t!26194 List!18573)) )
))
(declare-fun arrayNoDuplicates!0 (array!54762 (_ BitVec 32) List!18573) Bool)

(assert (=> b!916958 (= res!618276 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18570))))

(declare-fun b!916959 () Bool)

(declare-fun e!514829 () Bool)

(assert (=> b!916959 (= e!514827 e!514829)))

(declare-fun res!618277 () Bool)

(assert (=> b!916959 (=> (not res!618277) (not e!514829))))

(declare-datatypes ((tuple2!12718 0))(
  ( (tuple2!12719 (_1!6369 (_ BitVec 64)) (_2!6369 V!30811)) )
))
(declare-datatypes ((List!18574 0))(
  ( (Nil!18571) (Cons!18570 (h!19716 tuple2!12718) (t!26195 List!18574)) )
))
(declare-datatypes ((ListLongMap!11429 0))(
  ( (ListLongMap!11430 (toList!5730 List!18574)) )
))
(declare-fun lt!411885 () ListLongMap!11429)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4747 (ListLongMap!11429 (_ BitVec 64)) Bool)

(assert (=> b!916959 (= res!618277 (contains!4747 lt!411885 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30811)

(declare-fun minValue!1173 () V!30811)

(declare-fun getCurrentListMap!2956 (array!54762 array!54764 (_ BitVec 32) (_ BitVec 32) V!30811 V!30811 (_ BitVec 32) Int) ListLongMap!11429)

(assert (=> b!916959 (= lt!411885 (getCurrentListMap!2956 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!916960 () Bool)

(assert (=> b!916960 (= e!514829 false)))

(declare-fun lt!411884 () V!30811)

(declare-fun apply!558 (ListLongMap!11429 (_ BitVec 64)) V!30811)

(assert (=> b!916960 (= lt!411884 (apply!558 lt!411885 k!1099))))

(declare-fun b!916962 () Bool)

(declare-fun res!618275 () Bool)

(assert (=> b!916962 (=> (not res!618275) (not e!514827))))

(assert (=> b!916962 (= res!618275 (and (= (size!26783 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26782 _keys!1487) (size!26783 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916963 () Bool)

(assert (=> b!916963 (= e!514830 tp_is_empty!19385)))

(declare-fun b!916961 () Bool)

(declare-fun e!514828 () Bool)

(assert (=> b!916961 (= e!514828 (and e!514826 mapRes!30834))))

(declare-fun condMapEmpty!30834 () Bool)

(declare-fun mapDefault!30834 () ValueCell!9211)

