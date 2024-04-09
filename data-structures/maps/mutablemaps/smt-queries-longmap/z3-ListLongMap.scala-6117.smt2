; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78840 () Bool)

(assert start!78840)

(declare-fun b_free!17025 () Bool)

(declare-fun b_next!17025 () Bool)

(assert (=> start!78840 (= b_free!17025 (not b_next!17025))))

(declare-fun tp!59517 () Bool)

(declare-fun b_and!27805 () Bool)

(assert (=> start!78840 (= tp!59517 b_and!27805)))

(declare-fun b!919942 () Bool)

(declare-fun res!620453 () Bool)

(declare-fun e!516371 () Bool)

(assert (=> b!919942 (=> (not res!620453) (not e!516371))))

(declare-datatypes ((array!55058 0))(
  ( (array!55059 (arr!26470 (Array (_ BitVec 32) (_ BitVec 64))) (size!26930 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55058)

(declare-datatypes ((List!18693 0))(
  ( (Nil!18690) (Cons!18689 (h!19835 (_ BitVec 64)) (t!26456 List!18693)) )
))
(declare-fun arrayNoDuplicates!0 (array!55058 (_ BitVec 32) List!18693) Bool)

(assert (=> b!919942 (= res!620453 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18690))))

(declare-fun b!919944 () Bool)

(declare-fun res!620461 () Bool)

(assert (=> b!919944 (=> (not res!620461) (not e!516371))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!919944 (= res!620461 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26930 _keys!1487))))))

(declare-fun b!919945 () Bool)

(declare-fun res!620456 () Bool)

(declare-fun e!516373 () Bool)

(assert (=> b!919945 (=> (not res!620456) (not e!516373))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919945 (= res!620456 (validKeyInArray!0 k0!1099))))

(declare-fun b!919946 () Bool)

(declare-fun e!516372 () Bool)

(declare-fun tp_is_empty!19533 () Bool)

(assert (=> b!919946 (= e!516372 tp_is_empty!19533)))

(declare-fun b!919947 () Bool)

(declare-fun res!620458 () Bool)

(assert (=> b!919947 (=> (not res!620458) (not e!516373))))

(assert (=> b!919947 (= res!620458 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!31056 () Bool)

(declare-fun mapRes!31056 () Bool)

(declare-fun tp!59516 () Bool)

(declare-fun e!516375 () Bool)

(assert (=> mapNonEmpty!31056 (= mapRes!31056 (and tp!59516 e!516375))))

(declare-datatypes ((V!31009 0))(
  ( (V!31010 (val!9817 Int)) )
))
(declare-datatypes ((ValueCell!9285 0))(
  ( (ValueCellFull!9285 (v!12335 V!31009)) (EmptyCell!9285) )
))
(declare-fun mapValue!31056 () ValueCell!9285)

(declare-fun mapKey!31056 () (_ BitVec 32))

(declare-fun mapRest!31056 () (Array (_ BitVec 32) ValueCell!9285))

(declare-datatypes ((array!55060 0))(
  ( (array!55061 (arr!26471 (Array (_ BitVec 32) ValueCell!9285)) (size!26931 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55060)

(assert (=> mapNonEmpty!31056 (= (arr!26471 _values!1231) (store mapRest!31056 mapKey!31056 mapValue!31056))))

(declare-fun b!919948 () Bool)

(declare-fun e!516370 () Bool)

(assert (=> b!919948 (= e!516370 (and e!516372 mapRes!31056))))

(declare-fun condMapEmpty!31056 () Bool)

(declare-fun mapDefault!31056 () ValueCell!9285)

(assert (=> b!919948 (= condMapEmpty!31056 (= (arr!26471 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9285)) mapDefault!31056)))))

(declare-fun b!919949 () Bool)

(assert (=> b!919949 (= e!516375 tp_is_empty!19533)))

(declare-fun b!919950 () Bool)

(declare-fun res!620455 () Bool)

(assert (=> b!919950 (=> (not res!620455) (not e!516371))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55058 (_ BitVec 32)) Bool)

(assert (=> b!919950 (= res!620455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!919951 () Bool)

(declare-fun e!516374 () Bool)

(assert (=> b!919951 (= e!516373 e!516374)))

(declare-fun res!620462 () Bool)

(assert (=> b!919951 (=> (not res!620462) (not e!516374))))

(declare-fun lt!412985 () (_ BitVec 64))

(assert (=> b!919951 (= res!620462 (validKeyInArray!0 lt!412985))))

(assert (=> b!919951 (= lt!412985 (select (arr!26470 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun res!620459 () Bool)

(assert (=> start!78840 (=> (not res!620459) (not e!516371))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78840 (= res!620459 (validMask!0 mask!1881))))

(assert (=> start!78840 e!516371))

(assert (=> start!78840 true))

(assert (=> start!78840 tp_is_empty!19533))

(declare-fun array_inv!20614 (array!55060) Bool)

(assert (=> start!78840 (and (array_inv!20614 _values!1231) e!516370)))

(assert (=> start!78840 tp!59517))

(declare-fun array_inv!20615 (array!55058) Bool)

(assert (=> start!78840 (array_inv!20615 _keys!1487)))

(declare-fun b!919943 () Bool)

(declare-fun res!620454 () Bool)

(assert (=> b!919943 (=> (not res!620454) (not e!516371))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!919943 (= res!620454 (and (= (size!26931 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26930 _keys!1487) (size!26931 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!919952 () Bool)

(assert (=> b!919952 (= e!516374 (not true))))

(assert (=> b!919952 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18690)))

(declare-datatypes ((Unit!31041 0))(
  ( (Unit!31042) )
))
(declare-fun lt!412983 () Unit!31041)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55058 (_ BitVec 32) (_ BitVec 32)) Unit!31041)

(assert (=> b!919952 (= lt!412983 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12850 0))(
  ( (tuple2!12851 (_1!6435 (_ BitVec 64)) (_2!6435 V!31009)) )
))
(declare-datatypes ((List!18694 0))(
  ( (Nil!18691) (Cons!18690 (h!19836 tuple2!12850) (t!26457 List!18694)) )
))
(declare-datatypes ((ListLongMap!11561 0))(
  ( (ListLongMap!11562 (toList!5796 List!18694)) )
))
(declare-fun lt!412984 () ListLongMap!11561)

(declare-fun lt!412987 () tuple2!12850)

(declare-fun contains!4806 (ListLongMap!11561 (_ BitVec 64)) Bool)

(declare-fun +!2617 (ListLongMap!11561 tuple2!12850) ListLongMap!11561)

(assert (=> b!919952 (contains!4806 (+!2617 lt!412984 lt!412987) k0!1099)))

(declare-fun lt!412989 () V!31009)

(declare-fun lt!412988 () Unit!31041)

(declare-fun addStillContains!379 (ListLongMap!11561 (_ BitVec 64) V!31009 (_ BitVec 64)) Unit!31041)

(assert (=> b!919952 (= lt!412988 (addStillContains!379 lt!412984 lt!412985 lt!412989 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31009)

(declare-fun minValue!1173 () V!31009)

(declare-fun getCurrentListMap!3018 (array!55058 array!55060 (_ BitVec 32) (_ BitVec 32) V!31009 V!31009 (_ BitVec 32) Int) ListLongMap!11561)

(assert (=> b!919952 (= (getCurrentListMap!3018 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2617 (getCurrentListMap!3018 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412987))))

(assert (=> b!919952 (= lt!412987 (tuple2!12851 lt!412985 lt!412989))))

(declare-fun get!13904 (ValueCell!9285 V!31009) V!31009)

(declare-fun dynLambda!1456 (Int (_ BitVec 64)) V!31009)

(assert (=> b!919952 (= lt!412989 (get!13904 (select (arr!26471 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1456 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412986 () Unit!31041)

(declare-fun lemmaListMapRecursiveValidKeyArray!52 (array!55058 array!55060 (_ BitVec 32) (_ BitVec 32) V!31009 V!31009 (_ BitVec 32) Int) Unit!31041)

(assert (=> b!919952 (= lt!412986 (lemmaListMapRecursiveValidKeyArray!52 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!919953 () Bool)

(declare-fun res!620457 () Bool)

(assert (=> b!919953 (=> (not res!620457) (not e!516373))))

(declare-fun v!791 () V!31009)

(declare-fun apply!609 (ListLongMap!11561 (_ BitVec 64)) V!31009)

(assert (=> b!919953 (= res!620457 (= (apply!609 lt!412984 k0!1099) v!791))))

(declare-fun mapIsEmpty!31056 () Bool)

(assert (=> mapIsEmpty!31056 mapRes!31056))

(declare-fun b!919954 () Bool)

(assert (=> b!919954 (= e!516371 e!516373)))

(declare-fun res!620460 () Bool)

(assert (=> b!919954 (=> (not res!620460) (not e!516373))))

(assert (=> b!919954 (= res!620460 (contains!4806 lt!412984 k0!1099))))

(assert (=> b!919954 (= lt!412984 (getCurrentListMap!3018 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(assert (= (and start!78840 res!620459) b!919943))

(assert (= (and b!919943 res!620454) b!919950))

(assert (= (and b!919950 res!620455) b!919942))

(assert (= (and b!919942 res!620453) b!919944))

(assert (= (and b!919944 res!620461) b!919954))

(assert (= (and b!919954 res!620460) b!919953))

(assert (= (and b!919953 res!620457) b!919947))

(assert (= (and b!919947 res!620458) b!919945))

(assert (= (and b!919945 res!620456) b!919951))

(assert (= (and b!919951 res!620462) b!919952))

(assert (= (and b!919948 condMapEmpty!31056) mapIsEmpty!31056))

(assert (= (and b!919948 (not condMapEmpty!31056)) mapNonEmpty!31056))

(get-info :version)

(assert (= (and mapNonEmpty!31056 ((_ is ValueCellFull!9285) mapValue!31056)) b!919949))

(assert (= (and b!919948 ((_ is ValueCellFull!9285) mapDefault!31056)) b!919946))

(assert (= start!78840 b!919948))

(declare-fun b_lambda!13557 () Bool)

(assert (=> (not b_lambda!13557) (not b!919952)))

(declare-fun t!26455 () Bool)

(declare-fun tb!5613 () Bool)

(assert (=> (and start!78840 (= defaultEntry!1235 defaultEntry!1235) t!26455) tb!5613))

(declare-fun result!11041 () Bool)

(assert (=> tb!5613 (= result!11041 tp_is_empty!19533)))

(assert (=> b!919952 t!26455))

(declare-fun b_and!27807 () Bool)

(assert (= b_and!27805 (and (=> t!26455 result!11041) b_and!27807)))

(declare-fun m!853939 () Bool)

(assert (=> start!78840 m!853939))

(declare-fun m!853941 () Bool)

(assert (=> start!78840 m!853941))

(declare-fun m!853943 () Bool)

(assert (=> start!78840 m!853943))

(declare-fun m!853945 () Bool)

(assert (=> b!919953 m!853945))

(declare-fun m!853947 () Bool)

(assert (=> b!919952 m!853947))

(declare-fun m!853949 () Bool)

(assert (=> b!919952 m!853949))

(declare-fun m!853951 () Bool)

(assert (=> b!919952 m!853951))

(declare-fun m!853953 () Bool)

(assert (=> b!919952 m!853953))

(declare-fun m!853955 () Bool)

(assert (=> b!919952 m!853955))

(assert (=> b!919952 m!853953))

(declare-fun m!853957 () Bool)

(assert (=> b!919952 m!853957))

(declare-fun m!853959 () Bool)

(assert (=> b!919952 m!853959))

(declare-fun m!853961 () Bool)

(assert (=> b!919952 m!853961))

(declare-fun m!853963 () Bool)

(assert (=> b!919952 m!853963))

(declare-fun m!853965 () Bool)

(assert (=> b!919952 m!853965))

(declare-fun m!853967 () Bool)

(assert (=> b!919952 m!853967))

(assert (=> b!919952 m!853963))

(assert (=> b!919952 m!853955))

(assert (=> b!919952 m!853949))

(declare-fun m!853969 () Bool)

(assert (=> b!919952 m!853969))

(declare-fun m!853971 () Bool)

(assert (=> b!919950 m!853971))

(declare-fun m!853973 () Bool)

(assert (=> b!919951 m!853973))

(declare-fun m!853975 () Bool)

(assert (=> b!919951 m!853975))

(declare-fun m!853977 () Bool)

(assert (=> b!919942 m!853977))

(declare-fun m!853979 () Bool)

(assert (=> b!919945 m!853979))

(declare-fun m!853981 () Bool)

(assert (=> mapNonEmpty!31056 m!853981))

(declare-fun m!853983 () Bool)

(assert (=> b!919954 m!853983))

(declare-fun m!853985 () Bool)

(assert (=> b!919954 m!853985))

(check-sat (not b!919952) (not mapNonEmpty!31056) (not b!919953) b_and!27807 (not b!919942) (not b!919954) (not b_next!17025) (not b!919950) (not b!919945) tp_is_empty!19533 (not b!919951) (not b_lambda!13557) (not start!78840))
(check-sat b_and!27807 (not b_next!17025))
