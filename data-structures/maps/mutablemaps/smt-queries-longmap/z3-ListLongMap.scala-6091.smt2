; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78684 () Bool)

(assert start!78684)

(declare-fun b_free!16869 () Bool)

(declare-fun b_next!16869 () Bool)

(assert (=> start!78684 (= b_free!16869 (not b_next!16869))))

(declare-fun tp!59048 () Bool)

(declare-fun b_and!27509 () Bool)

(assert (=> start!78684 (= tp!59048 b_and!27509)))

(declare-fun b!916848 () Bool)

(declare-fun res!618201 () Bool)

(declare-fun e!514758 () Bool)

(assert (=> b!916848 (=> (not res!618201) (not e!514758))))

(declare-datatypes ((array!54750 0))(
  ( (array!54751 (arr!26316 (Array (_ BitVec 32) (_ BitVec 64))) (size!26776 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54750)

(declare-datatypes ((List!18568 0))(
  ( (Nil!18565) (Cons!18564 (h!19710 (_ BitVec 64)) (t!26189 List!18568)) )
))
(declare-fun arrayNoDuplicates!0 (array!54750 (_ BitVec 32) List!18568) Bool)

(assert (=> b!916848 (= res!618201 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18565))))

(declare-fun b!916850 () Bool)

(declare-fun e!514754 () Bool)

(declare-fun e!514753 () Bool)

(declare-fun mapRes!30822 () Bool)

(assert (=> b!916850 (= e!514754 (and e!514753 mapRes!30822))))

(declare-fun condMapEmpty!30822 () Bool)

(declare-datatypes ((V!30801 0))(
  ( (V!30802 (val!9739 Int)) )
))
(declare-datatypes ((ValueCell!9207 0))(
  ( (ValueCellFull!9207 (v!12257 V!30801)) (EmptyCell!9207) )
))
(declare-datatypes ((array!54752 0))(
  ( (array!54753 (arr!26317 (Array (_ BitVec 32) ValueCell!9207)) (size!26777 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54752)

(declare-fun mapDefault!30822 () ValueCell!9207)

(assert (=> b!916850 (= condMapEmpty!30822 (= (arr!26317 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9207)) mapDefault!30822)))))

(declare-fun b!916851 () Bool)

(declare-fun e!514757 () Bool)

(declare-fun tp_is_empty!19377 () Bool)

(assert (=> b!916851 (= e!514757 tp_is_empty!19377)))

(declare-fun b!916852 () Bool)

(declare-fun res!618203 () Bool)

(assert (=> b!916852 (=> (not res!618203) (not e!514758))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54750 (_ BitVec 32)) Bool)

(assert (=> b!916852 (= res!618203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!916853 () Bool)

(declare-fun res!618206 () Bool)

(assert (=> b!916853 (=> (not res!618206) (not e!514758))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!916853 (= res!618206 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26776 _keys!1487))))))

(declare-fun mapIsEmpty!30822 () Bool)

(assert (=> mapIsEmpty!30822 mapRes!30822))

(declare-fun b!916854 () Bool)

(declare-fun e!514756 () Bool)

(assert (=> b!916854 (= e!514758 e!514756)))

(declare-fun res!618204 () Bool)

(assert (=> b!916854 (=> (not res!618204) (not e!514756))))

(declare-datatypes ((tuple2!12712 0))(
  ( (tuple2!12713 (_1!6366 (_ BitVec 64)) (_2!6366 V!30801)) )
))
(declare-datatypes ((List!18569 0))(
  ( (Nil!18566) (Cons!18565 (h!19711 tuple2!12712) (t!26190 List!18569)) )
))
(declare-datatypes ((ListLongMap!11423 0))(
  ( (ListLongMap!11424 (toList!5727 List!18569)) )
))
(declare-fun lt!411860 () ListLongMap!11423)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4745 (ListLongMap!11423 (_ BitVec 64)) Bool)

(assert (=> b!916854 (= res!618204 (contains!4745 lt!411860 k0!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30801)

(declare-fun minValue!1173 () V!30801)

(declare-fun getCurrentListMap!2954 (array!54750 array!54752 (_ BitVec 32) (_ BitVec 32) V!30801 V!30801 (_ BitVec 32) Int) ListLongMap!11423)

(assert (=> b!916854 (= lt!411860 (getCurrentListMap!2954 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapNonEmpty!30822 () Bool)

(declare-fun tp!59049 () Bool)

(assert (=> mapNonEmpty!30822 (= mapRes!30822 (and tp!59049 e!514757))))

(declare-fun mapKey!30822 () (_ BitVec 32))

(declare-fun mapValue!30822 () ValueCell!9207)

(declare-fun mapRest!30822 () (Array (_ BitVec 32) ValueCell!9207))

(assert (=> mapNonEmpty!30822 (= (arr!26317 _values!1231) (store mapRest!30822 mapKey!30822 mapValue!30822))))

(declare-fun b!916849 () Bool)

(assert (=> b!916849 (= e!514753 tp_is_empty!19377)))

(declare-fun res!618205 () Bool)

(assert (=> start!78684 (=> (not res!618205) (not e!514758))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78684 (= res!618205 (validMask!0 mask!1881))))

(assert (=> start!78684 e!514758))

(assert (=> start!78684 true))

(declare-fun array_inv!20518 (array!54752) Bool)

(assert (=> start!78684 (and (array_inv!20518 _values!1231) e!514754)))

(assert (=> start!78684 tp!59048))

(declare-fun array_inv!20519 (array!54750) Bool)

(assert (=> start!78684 (array_inv!20519 _keys!1487)))

(assert (=> start!78684 tp_is_empty!19377))

(declare-fun b!916855 () Bool)

(declare-fun res!618202 () Bool)

(assert (=> b!916855 (=> (not res!618202) (not e!514758))))

(assert (=> b!916855 (= res!618202 (and (= (size!26777 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26776 _keys!1487) (size!26777 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916856 () Bool)

(assert (=> b!916856 (= e!514756 false)))

(declare-fun lt!411861 () V!30801)

(declare-fun apply!555 (ListLongMap!11423 (_ BitVec 64)) V!30801)

(assert (=> b!916856 (= lt!411861 (apply!555 lt!411860 k0!1099))))

(assert (= (and start!78684 res!618205) b!916855))

(assert (= (and b!916855 res!618202) b!916852))

(assert (= (and b!916852 res!618203) b!916848))

(assert (= (and b!916848 res!618201) b!916853))

(assert (= (and b!916853 res!618206) b!916854))

(assert (= (and b!916854 res!618204) b!916856))

(assert (= (and b!916850 condMapEmpty!30822) mapIsEmpty!30822))

(assert (= (and b!916850 (not condMapEmpty!30822)) mapNonEmpty!30822))

(get-info :version)

(assert (= (and mapNonEmpty!30822 ((_ is ValueCellFull!9207) mapValue!30822)) b!916851))

(assert (= (and b!916850 ((_ is ValueCellFull!9207) mapDefault!30822)) b!916849))

(assert (= start!78684 b!916850))

(declare-fun m!850795 () Bool)

(assert (=> b!916848 m!850795))

(declare-fun m!850797 () Bool)

(assert (=> b!916852 m!850797))

(declare-fun m!850799 () Bool)

(assert (=> mapNonEmpty!30822 m!850799))

(declare-fun m!850801 () Bool)

(assert (=> b!916854 m!850801))

(declare-fun m!850803 () Bool)

(assert (=> b!916854 m!850803))

(declare-fun m!850805 () Bool)

(assert (=> b!916856 m!850805))

(declare-fun m!850807 () Bool)

(assert (=> start!78684 m!850807))

(declare-fun m!850809 () Bool)

(assert (=> start!78684 m!850809))

(declare-fun m!850811 () Bool)

(assert (=> start!78684 m!850811))

(check-sat (not b!916852) (not b!916848) b_and!27509 (not b_next!16869) (not mapNonEmpty!30822) (not b!916854) (not b!916856) (not start!78684) tp_is_empty!19377)
(check-sat b_and!27509 (not b_next!16869))
