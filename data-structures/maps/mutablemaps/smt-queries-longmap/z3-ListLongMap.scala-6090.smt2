; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78678 () Bool)

(assert start!78678)

(declare-fun b_free!16863 () Bool)

(declare-fun b_next!16863 () Bool)

(assert (=> start!78678 (= b_free!16863 (not b_next!16863))))

(declare-fun tp!59031 () Bool)

(declare-fun b_and!27503 () Bool)

(assert (=> start!78678 (= tp!59031 b_and!27503)))

(declare-fun b!916767 () Bool)

(declare-fun e!514699 () Bool)

(declare-fun e!514703 () Bool)

(assert (=> b!916767 (= e!514699 e!514703)))

(declare-fun res!618149 () Bool)

(assert (=> b!916767 (=> (not res!618149) (not e!514703))))

(declare-datatypes ((V!30793 0))(
  ( (V!30794 (val!9736 Int)) )
))
(declare-datatypes ((tuple2!12708 0))(
  ( (tuple2!12709 (_1!6364 (_ BitVec 64)) (_2!6364 V!30793)) )
))
(declare-datatypes ((List!18565 0))(
  ( (Nil!18562) (Cons!18561 (h!19707 tuple2!12708) (t!26186 List!18565)) )
))
(declare-datatypes ((ListLongMap!11419 0))(
  ( (ListLongMap!11420 (toList!5725 List!18565)) )
))
(declare-fun lt!411842 () ListLongMap!11419)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4744 (ListLongMap!11419 (_ BitVec 64)) Bool)

(assert (=> b!916767 (= res!618149 (contains!4744 lt!411842 k0!1099))))

(declare-datatypes ((array!54740 0))(
  ( (array!54741 (arr!26311 (Array (_ BitVec 32) (_ BitVec 64))) (size!26771 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54740)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9204 0))(
  ( (ValueCellFull!9204 (v!12254 V!30793)) (EmptyCell!9204) )
))
(declare-datatypes ((array!54742 0))(
  ( (array!54743 (arr!26312 (Array (_ BitVec 32) ValueCell!9204)) (size!26772 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54742)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30793)

(declare-fun minValue!1173 () V!30793)

(declare-fun getCurrentListMap!2953 (array!54740 array!54742 (_ BitVec 32) (_ BitVec 32) V!30793 V!30793 (_ BitVec 32) Int) ListLongMap!11419)

(assert (=> b!916767 (= lt!411842 (getCurrentListMap!2953 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!916768 () Bool)

(declare-fun e!514700 () Bool)

(declare-fun tp_is_empty!19371 () Bool)

(assert (=> b!916768 (= e!514700 tp_is_empty!19371)))

(declare-fun mapNonEmpty!30813 () Bool)

(declare-fun mapRes!30813 () Bool)

(declare-fun tp!59030 () Bool)

(assert (=> mapNonEmpty!30813 (= mapRes!30813 (and tp!59030 e!514700))))

(declare-fun mapKey!30813 () (_ BitVec 32))

(declare-fun mapRest!30813 () (Array (_ BitVec 32) ValueCell!9204))

(declare-fun mapValue!30813 () ValueCell!9204)

(assert (=> mapNonEmpty!30813 (= (arr!26312 _values!1231) (store mapRest!30813 mapKey!30813 mapValue!30813))))

(declare-fun b!916769 () Bool)

(declare-fun e!514701 () Bool)

(declare-fun e!514702 () Bool)

(assert (=> b!916769 (= e!514701 (and e!514702 mapRes!30813))))

(declare-fun condMapEmpty!30813 () Bool)

(declare-fun mapDefault!30813 () ValueCell!9204)

(assert (=> b!916769 (= condMapEmpty!30813 (= (arr!26312 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9204)) mapDefault!30813)))))

(declare-fun b!916770 () Bool)

(assert (=> b!916770 (= e!514702 tp_is_empty!19371)))

(declare-fun b!916771 () Bool)

(declare-fun res!618148 () Bool)

(assert (=> b!916771 (=> (not res!618148) (not e!514699))))

(assert (=> b!916771 (= res!618148 (and (= (size!26772 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26771 _keys!1487) (size!26772 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916772 () Bool)

(declare-fun res!618152 () Bool)

(assert (=> b!916772 (=> (not res!618152) (not e!514699))))

(assert (=> b!916772 (= res!618152 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26771 _keys!1487))))))

(declare-fun b!916773 () Bool)

(declare-fun res!618150 () Bool)

(assert (=> b!916773 (=> (not res!618150) (not e!514699))))

(declare-datatypes ((List!18566 0))(
  ( (Nil!18563) (Cons!18562 (h!19708 (_ BitVec 64)) (t!26187 List!18566)) )
))
(declare-fun arrayNoDuplicates!0 (array!54740 (_ BitVec 32) List!18566) Bool)

(assert (=> b!916773 (= res!618150 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18563))))

(declare-fun res!618151 () Bool)

(assert (=> start!78678 (=> (not res!618151) (not e!514699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78678 (= res!618151 (validMask!0 mask!1881))))

(assert (=> start!78678 e!514699))

(assert (=> start!78678 true))

(declare-fun array_inv!20514 (array!54742) Bool)

(assert (=> start!78678 (and (array_inv!20514 _values!1231) e!514701)))

(assert (=> start!78678 tp!59031))

(declare-fun array_inv!20515 (array!54740) Bool)

(assert (=> start!78678 (array_inv!20515 _keys!1487)))

(assert (=> start!78678 tp_is_empty!19371))

(declare-fun b!916774 () Bool)

(assert (=> b!916774 (= e!514703 false)))

(declare-fun lt!411843 () V!30793)

(declare-fun apply!553 (ListLongMap!11419 (_ BitVec 64)) V!30793)

(assert (=> b!916774 (= lt!411843 (apply!553 lt!411842 k0!1099))))

(declare-fun b!916775 () Bool)

(declare-fun res!618147 () Bool)

(assert (=> b!916775 (=> (not res!618147) (not e!514699))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54740 (_ BitVec 32)) Bool)

(assert (=> b!916775 (= res!618147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!30813 () Bool)

(assert (=> mapIsEmpty!30813 mapRes!30813))

(assert (= (and start!78678 res!618151) b!916771))

(assert (= (and b!916771 res!618148) b!916775))

(assert (= (and b!916775 res!618147) b!916773))

(assert (= (and b!916773 res!618150) b!916772))

(assert (= (and b!916772 res!618152) b!916767))

(assert (= (and b!916767 res!618149) b!916774))

(assert (= (and b!916769 condMapEmpty!30813) mapIsEmpty!30813))

(assert (= (and b!916769 (not condMapEmpty!30813)) mapNonEmpty!30813))

(get-info :version)

(assert (= (and mapNonEmpty!30813 ((_ is ValueCellFull!9204) mapValue!30813)) b!916768))

(assert (= (and b!916769 ((_ is ValueCellFull!9204) mapDefault!30813)) b!916770))

(assert (= start!78678 b!916769))

(declare-fun m!850741 () Bool)

(assert (=> b!916775 m!850741))

(declare-fun m!850743 () Bool)

(assert (=> b!916773 m!850743))

(declare-fun m!850745 () Bool)

(assert (=> mapNonEmpty!30813 m!850745))

(declare-fun m!850747 () Bool)

(assert (=> b!916774 m!850747))

(declare-fun m!850749 () Bool)

(assert (=> b!916767 m!850749))

(declare-fun m!850751 () Bool)

(assert (=> b!916767 m!850751))

(declare-fun m!850753 () Bool)

(assert (=> start!78678 m!850753))

(declare-fun m!850755 () Bool)

(assert (=> start!78678 m!850755))

(declare-fun m!850757 () Bool)

(assert (=> start!78678 m!850757))

(check-sat (not b!916767) (not b!916774) (not mapNonEmpty!30813) (not b!916773) b_and!27503 (not b!916775) tp_is_empty!19371 (not start!78678) (not b_next!16863))
(check-sat b_and!27503 (not b_next!16863))
