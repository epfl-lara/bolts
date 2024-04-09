; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78750 () Bool)

(assert start!78750)

(declare-fun b_free!16935 () Bool)

(declare-fun b_next!16935 () Bool)

(assert (=> start!78750 (= b_free!16935 (not b_next!16935))))

(declare-fun tp!59246 () Bool)

(declare-fun b_and!27625 () Bool)

(assert (=> start!78750 (= tp!59246 b_and!27625)))

(declare-fun b!918097 () Bool)

(declare-fun e!515427 () Bool)

(declare-fun e!515430 () Bool)

(assert (=> b!918097 (= e!515427 e!515430)))

(declare-fun res!619104 () Bool)

(assert (=> b!918097 (=> (not res!619104) (not e!515430))))

(declare-fun lt!412135 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918097 (= res!619104 (validKeyInArray!0 lt!412135))))

(declare-datatypes ((array!54878 0))(
  ( (array!54879 (arr!26380 (Array (_ BitVec 32) (_ BitVec 64))) (size!26840 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54878)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!918097 (= lt!412135 (select (arr!26380 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!918098 () Bool)

(declare-fun res!619110 () Bool)

(declare-fun e!515428 () Bool)

(assert (=> b!918098 (=> (not res!619110) (not e!515428))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54878 (_ BitVec 32)) Bool)

(assert (=> b!918098 (= res!619110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!30921 () Bool)

(declare-fun mapRes!30921 () Bool)

(assert (=> mapIsEmpty!30921 mapRes!30921))

(declare-fun b!918099 () Bool)

(declare-fun res!619112 () Bool)

(assert (=> b!918099 (=> (not res!619112) (not e!515427))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((V!30889 0))(
  ( (V!30890 (val!9772 Int)) )
))
(declare-fun v!791 () V!30889)

(declare-datatypes ((tuple2!12770 0))(
  ( (tuple2!12771 (_1!6395 (_ BitVec 64)) (_2!6395 V!30889)) )
))
(declare-datatypes ((List!18616 0))(
  ( (Nil!18613) (Cons!18612 (h!19758 tuple2!12770) (t!26289 List!18616)) )
))
(declare-datatypes ((ListLongMap!11481 0))(
  ( (ListLongMap!11482 (toList!5756 List!18616)) )
))
(declare-fun lt!412136 () ListLongMap!11481)

(declare-fun apply!577 (ListLongMap!11481 (_ BitVec 64)) V!30889)

(assert (=> b!918099 (= res!619112 (= (apply!577 lt!412136 k0!1099) v!791))))

(declare-fun b!918100 () Bool)

(declare-fun e!515424 () Bool)

(declare-fun e!515429 () Bool)

(assert (=> b!918100 (= e!515424 (and e!515429 mapRes!30921))))

(declare-fun condMapEmpty!30921 () Bool)

(declare-datatypes ((ValueCell!9240 0))(
  ( (ValueCellFull!9240 (v!12290 V!30889)) (EmptyCell!9240) )
))
(declare-datatypes ((array!54880 0))(
  ( (array!54881 (arr!26381 (Array (_ BitVec 32) ValueCell!9240)) (size!26841 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54880)

(declare-fun mapDefault!30921 () ValueCell!9240)

(assert (=> b!918100 (= condMapEmpty!30921 (= (arr!26381 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9240)) mapDefault!30921)))))

(declare-fun b!918101 () Bool)

(declare-fun tp_is_empty!19443 () Bool)

(assert (=> b!918101 (= e!515429 tp_is_empty!19443)))

(declare-fun b!918102 () Bool)

(assert (=> b!918102 (= e!515428 e!515427)))

(declare-fun res!619106 () Bool)

(assert (=> b!918102 (=> (not res!619106) (not e!515427))))

(declare-fun contains!4770 (ListLongMap!11481 (_ BitVec 64)) Bool)

(assert (=> b!918102 (= res!619106 (contains!4770 lt!412136 k0!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30889)

(declare-fun minValue!1173 () V!30889)

(declare-fun getCurrentListMap!2982 (array!54878 array!54880 (_ BitVec 32) (_ BitVec 32) V!30889 V!30889 (_ BitVec 32) Int) ListLongMap!11481)

(assert (=> b!918102 (= lt!412136 (getCurrentListMap!2982 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapNonEmpty!30921 () Bool)

(declare-fun tp!59247 () Bool)

(declare-fun e!515426 () Bool)

(assert (=> mapNonEmpty!30921 (= mapRes!30921 (and tp!59247 e!515426))))

(declare-fun mapKey!30921 () (_ BitVec 32))

(declare-fun mapRest!30921 () (Array (_ BitVec 32) ValueCell!9240))

(declare-fun mapValue!30921 () ValueCell!9240)

(assert (=> mapNonEmpty!30921 (= (arr!26381 _values!1231) (store mapRest!30921 mapKey!30921 mapValue!30921))))

(declare-fun res!619111 () Bool)

(assert (=> start!78750 (=> (not res!619111) (not e!515428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78750 (= res!619111 (validMask!0 mask!1881))))

(assert (=> start!78750 e!515428))

(assert (=> start!78750 true))

(assert (=> start!78750 tp_is_empty!19443))

(declare-fun array_inv!20556 (array!54880) Bool)

(assert (=> start!78750 (and (array_inv!20556 _values!1231) e!515424)))

(assert (=> start!78750 tp!59246))

(declare-fun array_inv!20557 (array!54878) Bool)

(assert (=> start!78750 (array_inv!20557 _keys!1487)))

(declare-fun b!918103 () Bool)

(declare-fun res!619105 () Bool)

(assert (=> b!918103 (=> (not res!619105) (not e!515428))))

(assert (=> b!918103 (= res!619105 (and (= (size!26841 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26840 _keys!1487) (size!26841 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!918104 () Bool)

(declare-fun res!619109 () Bool)

(assert (=> b!918104 (=> (not res!619109) (not e!515427))))

(assert (=> b!918104 (= res!619109 (validKeyInArray!0 k0!1099))))

(declare-fun b!918105 () Bool)

(assert (=> b!918105 (= e!515426 tp_is_empty!19443)))

(declare-fun b!918106 () Bool)

(declare-fun res!619108 () Bool)

(assert (=> b!918106 (=> (not res!619108) (not e!515428))))

(declare-datatypes ((List!18617 0))(
  ( (Nil!18614) (Cons!18613 (h!19759 (_ BitVec 64)) (t!26290 List!18617)) )
))
(declare-fun arrayNoDuplicates!0 (array!54878 (_ BitVec 32) List!18617) Bool)

(assert (=> b!918106 (= res!619108 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18614))))

(declare-fun b!918107 () Bool)

(declare-fun res!619107 () Bool)

(assert (=> b!918107 (=> (not res!619107) (not e!515428))))

(assert (=> b!918107 (= res!619107 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26840 _keys!1487))))))

(declare-fun b!918108 () Bool)

(assert (=> b!918108 (= e!515430 (not (bvsle from!1844 (size!26840 _keys!1487))))))

(declare-fun +!2587 (ListLongMap!11481 tuple2!12770) ListLongMap!11481)

(declare-fun get!13844 (ValueCell!9240 V!30889) V!30889)

(declare-fun dynLambda!1426 (Int (_ BitVec 64)) V!30889)

(assert (=> b!918108 (= (getCurrentListMap!2982 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2587 (getCurrentListMap!2982 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12771 lt!412135 (get!13844 (select (arr!26381 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1426 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30981 0))(
  ( (Unit!30982) )
))
(declare-fun lt!412137 () Unit!30981)

(declare-fun lemmaListMapRecursiveValidKeyArray!22 (array!54878 array!54880 (_ BitVec 32) (_ BitVec 32) V!30889 V!30889 (_ BitVec 32) Int) Unit!30981)

(assert (=> b!918108 (= lt!412137 (lemmaListMapRecursiveValidKeyArray!22 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!918109 () Bool)

(declare-fun res!619103 () Bool)

(assert (=> b!918109 (=> (not res!619103) (not e!515427))))

(assert (=> b!918109 (= res!619103 (bvsgt from!1844 #b00000000000000000000000000000000))))

(assert (= (and start!78750 res!619111) b!918103))

(assert (= (and b!918103 res!619105) b!918098))

(assert (= (and b!918098 res!619110) b!918106))

(assert (= (and b!918106 res!619108) b!918107))

(assert (= (and b!918107 res!619107) b!918102))

(assert (= (and b!918102 res!619106) b!918099))

(assert (= (and b!918099 res!619112) b!918109))

(assert (= (and b!918109 res!619103) b!918104))

(assert (= (and b!918104 res!619109) b!918097))

(assert (= (and b!918097 res!619104) b!918108))

(assert (= (and b!918100 condMapEmpty!30921) mapIsEmpty!30921))

(assert (= (and b!918100 (not condMapEmpty!30921)) mapNonEmpty!30921))

(get-info :version)

(assert (= (and mapNonEmpty!30921 ((_ is ValueCellFull!9240) mapValue!30921)) b!918105))

(assert (= (and b!918100 ((_ is ValueCellFull!9240) mapDefault!30921)) b!918101))

(assert (= start!78750 b!918100))

(declare-fun b_lambda!13467 () Bool)

(assert (=> (not b_lambda!13467) (not b!918108)))

(declare-fun t!26288 () Bool)

(declare-fun tb!5523 () Bool)

(assert (=> (and start!78750 (= defaultEntry!1235 defaultEntry!1235) t!26288) tb!5523))

(declare-fun result!10861 () Bool)

(assert (=> tb!5523 (= result!10861 tp_is_empty!19443)))

(assert (=> b!918108 t!26288))

(declare-fun b_and!27627 () Bool)

(assert (= b_and!27625 (and (=> t!26288 result!10861) b_and!27627)))

(declare-fun m!851889 () Bool)

(assert (=> b!918108 m!851889))

(declare-fun m!851891 () Bool)

(assert (=> b!918108 m!851891))

(declare-fun m!851893 () Bool)

(assert (=> b!918108 m!851893))

(declare-fun m!851895 () Bool)

(assert (=> b!918108 m!851895))

(assert (=> b!918108 m!851889))

(assert (=> b!918108 m!851891))

(declare-fun m!851897 () Bool)

(assert (=> b!918108 m!851897))

(declare-fun m!851899 () Bool)

(assert (=> b!918108 m!851899))

(assert (=> b!918108 m!851893))

(declare-fun m!851901 () Bool)

(assert (=> b!918108 m!851901))

(declare-fun m!851903 () Bool)

(assert (=> start!78750 m!851903))

(declare-fun m!851905 () Bool)

(assert (=> start!78750 m!851905))

(declare-fun m!851907 () Bool)

(assert (=> start!78750 m!851907))

(declare-fun m!851909 () Bool)

(assert (=> b!918097 m!851909))

(declare-fun m!851911 () Bool)

(assert (=> b!918097 m!851911))

(declare-fun m!851913 () Bool)

(assert (=> b!918099 m!851913))

(declare-fun m!851915 () Bool)

(assert (=> b!918098 m!851915))

(declare-fun m!851917 () Bool)

(assert (=> b!918102 m!851917))

(declare-fun m!851919 () Bool)

(assert (=> b!918102 m!851919))

(declare-fun m!851921 () Bool)

(assert (=> mapNonEmpty!30921 m!851921))

(declare-fun m!851923 () Bool)

(assert (=> b!918106 m!851923))

(declare-fun m!851925 () Bool)

(assert (=> b!918104 m!851925))

(check-sat (not b!918108) (not b_lambda!13467) (not b!918098) (not mapNonEmpty!30921) tp_is_empty!19443 (not b!918097) (not b!918099) (not b!918102) (not b!918106) (not b!918104) (not start!78750) (not b_next!16935) b_and!27627)
(check-sat b_and!27627 (not b_next!16935))
