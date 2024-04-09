; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78708 () Bool)

(assert start!78708)

(declare-fun b_free!16893 () Bool)

(declare-fun b_next!16893 () Bool)

(assert (=> start!78708 (= b_free!16893 (not b_next!16893))))

(declare-fun tp!59120 () Bool)

(declare-fun b_and!27541 () Bool)

(assert (=> start!78708 (= tp!59120 b_and!27541)))

(declare-fun mapNonEmpty!30858 () Bool)

(declare-fun mapRes!30858 () Bool)

(declare-fun tp!59121 () Bool)

(declare-fun e!514988 () Bool)

(assert (=> mapNonEmpty!30858 (= mapRes!30858 (and tp!59121 e!514988))))

(declare-fun mapKey!30858 () (_ BitVec 32))

(declare-datatypes ((V!30833 0))(
  ( (V!30834 (val!9751 Int)) )
))
(declare-datatypes ((ValueCell!9219 0))(
  ( (ValueCellFull!9219 (v!12269 V!30833)) (EmptyCell!9219) )
))
(declare-fun mapValue!30858 () ValueCell!9219)

(declare-datatypes ((array!54794 0))(
  ( (array!54795 (arr!26338 (Array (_ BitVec 32) ValueCell!9219)) (size!26798 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54794)

(declare-fun mapRest!30858 () (Array (_ BitVec 32) ValueCell!9219))

(assert (=> mapNonEmpty!30858 (= (arr!26338 _values!1231) (store mapRest!30858 mapKey!30858 mapValue!30858))))

(declare-fun b!917236 () Bool)

(declare-fun e!514983 () Bool)

(declare-fun e!514989 () Bool)

(assert (=> b!917236 (= e!514983 e!514989)))

(declare-fun res!618480 () Bool)

(assert (=> b!917236 (=> (not res!618480) (not e!514989))))

(declare-fun lt!411948 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917236 (= res!618480 (validKeyInArray!0 lt!411948))))

(declare-datatypes ((array!54796 0))(
  ( (array!54797 (arr!26339 (Array (_ BitVec 32) (_ BitVec 64))) (size!26799 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54796)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!917236 (= lt!411948 (select (arr!26339 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!917237 () Bool)

(declare-fun res!618478 () Bool)

(declare-fun e!514987 () Bool)

(assert (=> b!917237 (=> (not res!618478) (not e!514987))))

(declare-datatypes ((List!18586 0))(
  ( (Nil!18583) (Cons!18582 (h!19728 (_ BitVec 64)) (t!26217 List!18586)) )
))
(declare-fun arrayNoDuplicates!0 (array!54796 (_ BitVec 32) List!18586) Bool)

(assert (=> b!917237 (= res!618478 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18583))))

(declare-fun b!917238 () Bool)

(declare-fun e!514985 () Bool)

(declare-fun tp_is_empty!19401 () Bool)

(assert (=> b!917238 (= e!514985 tp_is_empty!19401)))

(declare-fun mapIsEmpty!30858 () Bool)

(assert (=> mapIsEmpty!30858 mapRes!30858))

(declare-fun res!618476 () Bool)

(assert (=> start!78708 (=> (not res!618476) (not e!514987))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78708 (= res!618476 (validMask!0 mask!1881))))

(assert (=> start!78708 e!514987))

(assert (=> start!78708 true))

(assert (=> start!78708 tp_is_empty!19401))

(declare-fun e!514986 () Bool)

(declare-fun array_inv!20528 (array!54794) Bool)

(assert (=> start!78708 (and (array_inv!20528 _values!1231) e!514986)))

(assert (=> start!78708 tp!59120))

(declare-fun array_inv!20529 (array!54796) Bool)

(assert (=> start!78708 (array_inv!20529 _keys!1487)))

(declare-fun b!917239 () Bool)

(assert (=> b!917239 (= e!514989 (not true))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30833)

(declare-fun minValue!1173 () V!30833)

(declare-datatypes ((tuple2!12734 0))(
  ( (tuple2!12735 (_1!6377 (_ BitVec 64)) (_2!6377 V!30833)) )
))
(declare-datatypes ((List!18587 0))(
  ( (Nil!18584) (Cons!18583 (h!19729 tuple2!12734) (t!26218 List!18587)) )
))
(declare-datatypes ((ListLongMap!11445 0))(
  ( (ListLongMap!11446 (toList!5738 List!18587)) )
))
(declare-fun getCurrentListMap!2964 (array!54796 array!54794 (_ BitVec 32) (_ BitVec 32) V!30833 V!30833 (_ BitVec 32) Int) ListLongMap!11445)

(declare-fun +!2570 (ListLongMap!11445 tuple2!12734) ListLongMap!11445)

(declare-fun get!13813 (ValueCell!9219 V!30833) V!30833)

(declare-fun dynLambda!1409 (Int (_ BitVec 64)) V!30833)

(assert (=> b!917239 (= (getCurrentListMap!2964 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2570 (getCurrentListMap!2964 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12735 lt!411948 (get!13813 (select (arr!26338 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1409 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30947 0))(
  ( (Unit!30948) )
))
(declare-fun lt!411946 () Unit!30947)

(declare-fun lemmaListMapRecursiveValidKeyArray!5 (array!54796 array!54794 (_ BitVec 32) (_ BitVec 32) V!30833 V!30833 (_ BitVec 32) Int) Unit!30947)

(assert (=> b!917239 (= lt!411946 (lemmaListMapRecursiveValidKeyArray!5 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917240 () Bool)

(declare-fun res!618479 () Bool)

(assert (=> b!917240 (=> (not res!618479) (not e!514983))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun v!791 () V!30833)

(declare-fun lt!411947 () ListLongMap!11445)

(declare-fun apply!564 (ListLongMap!11445 (_ BitVec 64)) V!30833)

(assert (=> b!917240 (= res!618479 (= (apply!564 lt!411947 k0!1099) v!791))))

(declare-fun b!917241 () Bool)

(declare-fun res!618473 () Bool)

(assert (=> b!917241 (=> (not res!618473) (not e!514983))))

(assert (=> b!917241 (= res!618473 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!917242 () Bool)

(declare-fun res!618477 () Bool)

(assert (=> b!917242 (=> (not res!618477) (not e!514987))))

(assert (=> b!917242 (= res!618477 (and (= (size!26798 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26799 _keys!1487) (size!26798 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!917243 () Bool)

(declare-fun res!618481 () Bool)

(assert (=> b!917243 (=> (not res!618481) (not e!514987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54796 (_ BitVec 32)) Bool)

(assert (=> b!917243 (= res!618481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!917244 () Bool)

(assert (=> b!917244 (= e!514988 tp_is_empty!19401)))

(declare-fun b!917245 () Bool)

(assert (=> b!917245 (= e!514986 (and e!514985 mapRes!30858))))

(declare-fun condMapEmpty!30858 () Bool)

(declare-fun mapDefault!30858 () ValueCell!9219)

(assert (=> b!917245 (= condMapEmpty!30858 (= (arr!26338 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9219)) mapDefault!30858)))))

(declare-fun b!917246 () Bool)

(declare-fun res!618475 () Bool)

(assert (=> b!917246 (=> (not res!618475) (not e!514987))))

(assert (=> b!917246 (= res!618475 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26799 _keys!1487))))))

(declare-fun b!917247 () Bool)

(declare-fun res!618474 () Bool)

(assert (=> b!917247 (=> (not res!618474) (not e!514983))))

(assert (=> b!917247 (= res!618474 (validKeyInArray!0 k0!1099))))

(declare-fun b!917248 () Bool)

(assert (=> b!917248 (= e!514987 e!514983)))

(declare-fun res!618482 () Bool)

(assert (=> b!917248 (=> (not res!618482) (not e!514983))))

(declare-fun contains!4754 (ListLongMap!11445 (_ BitVec 64)) Bool)

(assert (=> b!917248 (= res!618482 (contains!4754 lt!411947 k0!1099))))

(assert (=> b!917248 (= lt!411947 (getCurrentListMap!2964 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(assert (= (and start!78708 res!618476) b!917242))

(assert (= (and b!917242 res!618477) b!917243))

(assert (= (and b!917243 res!618481) b!917237))

(assert (= (and b!917237 res!618478) b!917246))

(assert (= (and b!917246 res!618475) b!917248))

(assert (= (and b!917248 res!618482) b!917240))

(assert (= (and b!917240 res!618479) b!917241))

(assert (= (and b!917241 res!618473) b!917247))

(assert (= (and b!917247 res!618474) b!917236))

(assert (= (and b!917236 res!618480) b!917239))

(assert (= (and b!917245 condMapEmpty!30858) mapIsEmpty!30858))

(assert (= (and b!917245 (not condMapEmpty!30858)) mapNonEmpty!30858))

(get-info :version)

(assert (= (and mapNonEmpty!30858 ((_ is ValueCellFull!9219) mapValue!30858)) b!917244))

(assert (= (and b!917245 ((_ is ValueCellFull!9219) mapDefault!30858)) b!917238))

(assert (= start!78708 b!917245))

(declare-fun b_lambda!13425 () Bool)

(assert (=> (not b_lambda!13425) (not b!917239)))

(declare-fun t!26216 () Bool)

(declare-fun tb!5481 () Bool)

(assert (=> (and start!78708 (= defaultEntry!1235 defaultEntry!1235) t!26216) tb!5481))

(declare-fun result!10777 () Bool)

(assert (=> tb!5481 (= result!10777 tp_is_empty!19401)))

(assert (=> b!917239 t!26216))

(declare-fun b_and!27543 () Bool)

(assert (= b_and!27541 (and (=> t!26216 result!10777) b_and!27543)))

(declare-fun m!851091 () Bool)

(assert (=> b!917236 m!851091))

(declare-fun m!851093 () Bool)

(assert (=> b!917236 m!851093))

(declare-fun m!851095 () Bool)

(assert (=> b!917248 m!851095))

(declare-fun m!851097 () Bool)

(assert (=> b!917248 m!851097))

(declare-fun m!851099 () Bool)

(assert (=> b!917240 m!851099))

(declare-fun m!851101 () Bool)

(assert (=> start!78708 m!851101))

(declare-fun m!851103 () Bool)

(assert (=> start!78708 m!851103))

(declare-fun m!851105 () Bool)

(assert (=> start!78708 m!851105))

(declare-fun m!851107 () Bool)

(assert (=> b!917237 m!851107))

(declare-fun m!851109 () Bool)

(assert (=> b!917243 m!851109))

(declare-fun m!851111 () Bool)

(assert (=> mapNonEmpty!30858 m!851111))

(declare-fun m!851113 () Bool)

(assert (=> b!917239 m!851113))

(declare-fun m!851115 () Bool)

(assert (=> b!917239 m!851115))

(declare-fun m!851117 () Bool)

(assert (=> b!917239 m!851117))

(declare-fun m!851119 () Bool)

(assert (=> b!917239 m!851119))

(assert (=> b!917239 m!851113))

(assert (=> b!917239 m!851119))

(declare-fun m!851121 () Bool)

(assert (=> b!917239 m!851121))

(declare-fun m!851123 () Bool)

(assert (=> b!917239 m!851123))

(assert (=> b!917239 m!851115))

(declare-fun m!851125 () Bool)

(assert (=> b!917239 m!851125))

(declare-fun m!851127 () Bool)

(assert (=> b!917247 m!851127))

(check-sat (not b_next!16893) (not b!917247) b_and!27543 (not b_lambda!13425) (not b!917243) tp_is_empty!19401 (not b!917248) (not start!78708) (not b!917239) (not mapNonEmpty!30858) (not b!917237) (not b!917236) (not b!917240))
(check-sat b_and!27543 (not b_next!16893))
