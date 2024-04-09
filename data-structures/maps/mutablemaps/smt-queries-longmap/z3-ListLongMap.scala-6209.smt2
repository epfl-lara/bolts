; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79418 () Bool)

(assert start!79418)

(declare-fun b_free!17577 () Bool)

(declare-fun b_next!17577 () Bool)

(assert (=> start!79418 (= b_free!17577 (not b_next!17577))))

(declare-fun tp!61175 () Bool)

(declare-fun b_and!28731 () Bool)

(assert (=> start!79418 (= tp!61175 b_and!28731)))

(declare-fun b!932664 () Bool)

(declare-fun e!523773 () Bool)

(declare-fun e!523774 () Bool)

(assert (=> b!932664 (= e!523773 e!523774)))

(declare-fun res!628271 () Bool)

(assert (=> b!932664 (=> (not res!628271) (not e!523774))))

(declare-datatypes ((V!31745 0))(
  ( (V!31746 (val!10093 Int)) )
))
(declare-datatypes ((tuple2!13332 0))(
  ( (tuple2!13333 (_1!6676 (_ BitVec 64)) (_2!6676 V!31745)) )
))
(declare-datatypes ((List!19140 0))(
  ( (Nil!19137) (Cons!19136 (h!20282 tuple2!13332) (t!27269 List!19140)) )
))
(declare-datatypes ((ListLongMap!12043 0))(
  ( (ListLongMap!12044 (toList!6037 List!19140)) )
))
(declare-fun lt!420030 () ListLongMap!12043)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5037 (ListLongMap!12043 (_ BitVec 64)) Bool)

(assert (=> b!932664 (= res!628271 (contains!5037 lt!420030 k0!1099))))

(declare-datatypes ((array!56132 0))(
  ( (array!56133 (arr!27006 (Array (_ BitVec 32) (_ BitVec 64))) (size!27466 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56132)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9561 0))(
  ( (ValueCellFull!9561 (v!12612 V!31745)) (EmptyCell!9561) )
))
(declare-datatypes ((array!56134 0))(
  ( (array!56135 (arr!27007 (Array (_ BitVec 32) ValueCell!9561)) (size!27467 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56134)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31745)

(declare-fun minValue!1173 () V!31745)

(declare-fun getCurrentListMap!3230 (array!56132 array!56134 (_ BitVec 32) (_ BitVec 32) V!31745 V!31745 (_ BitVec 32) Int) ListLongMap!12043)

(assert (=> b!932664 (= lt!420030 (getCurrentListMap!3230 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!932666 () Bool)

(declare-fun res!628273 () Bool)

(assert (=> b!932666 (=> (not res!628273) (not e!523773))))

(assert (=> b!932666 (= res!628273 (and (= (size!27467 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27466 _keys!1487) (size!27467 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!932667 () Bool)

(declare-fun e!523772 () Bool)

(declare-fun e!523771 () Bool)

(declare-fun mapRes!31887 () Bool)

(assert (=> b!932667 (= e!523772 (and e!523771 mapRes!31887))))

(declare-fun condMapEmpty!31887 () Bool)

(declare-fun mapDefault!31887 () ValueCell!9561)

(assert (=> b!932667 (= condMapEmpty!31887 (= (arr!27007 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9561)) mapDefault!31887)))))

(declare-fun b!932668 () Bool)

(declare-fun e!523775 () Bool)

(declare-fun tp_is_empty!20085 () Bool)

(assert (=> b!932668 (= e!523775 tp_is_empty!20085)))

(declare-fun b!932669 () Bool)

(declare-fun res!628275 () Bool)

(assert (=> b!932669 (=> (not res!628275) (not e!523774))))

(assert (=> b!932669 (= res!628275 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!31887 () Bool)

(declare-fun tp!61176 () Bool)

(assert (=> mapNonEmpty!31887 (= mapRes!31887 (and tp!61176 e!523775))))

(declare-fun mapValue!31887 () ValueCell!9561)

(declare-fun mapRest!31887 () (Array (_ BitVec 32) ValueCell!9561))

(declare-fun mapKey!31887 () (_ BitVec 32))

(assert (=> mapNonEmpty!31887 (= (arr!27007 _values!1231) (store mapRest!31887 mapKey!31887 mapValue!31887))))

(declare-fun b!932670 () Bool)

(declare-fun e!523769 () Bool)

(assert (=> b!932670 (= e!523769 (not true))))

(declare-datatypes ((List!19141 0))(
  ( (Nil!19138) (Cons!19137 (h!20283 (_ BitVec 64)) (t!27270 List!19141)) )
))
(declare-fun arrayNoDuplicates!0 (array!56132 (_ BitVec 32) List!19141) Bool)

(assert (=> b!932670 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19138)))

(declare-datatypes ((Unit!31470 0))(
  ( (Unit!31471) )
))
(declare-fun lt!420029 () Unit!31470)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56132 (_ BitVec 32) (_ BitVec 32)) Unit!31470)

(assert (=> b!932670 (= lt!420029 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420025 () tuple2!13332)

(declare-fun +!2741 (ListLongMap!12043 tuple2!13332) ListLongMap!12043)

(assert (=> b!932670 (contains!5037 (+!2741 lt!420030 lt!420025) k0!1099)))

(declare-fun lt!420027 () Unit!31470)

(declare-fun lt!420028 () (_ BitVec 64))

(declare-fun lt!420031 () V!31745)

(declare-fun addStillContains!497 (ListLongMap!12043 (_ BitVec 64) V!31745 (_ BitVec 64)) Unit!31470)

(assert (=> b!932670 (= lt!420027 (addStillContains!497 lt!420030 lt!420028 lt!420031 k0!1099))))

(assert (=> b!932670 (= (getCurrentListMap!3230 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2741 (getCurrentListMap!3230 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420025))))

(assert (=> b!932670 (= lt!420025 (tuple2!13333 lt!420028 lt!420031))))

(declare-fun get!14215 (ValueCell!9561 V!31745) V!31745)

(declare-fun dynLambda!1580 (Int (_ BitVec 64)) V!31745)

(assert (=> b!932670 (= lt!420031 (get!14215 (select (arr!27007 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1580 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420026 () Unit!31470)

(declare-fun lemmaListMapRecursiveValidKeyArray!176 (array!56132 array!56134 (_ BitVec 32) (_ BitVec 32) V!31745 V!31745 (_ BitVec 32) Int) Unit!31470)

(assert (=> b!932670 (= lt!420026 (lemmaListMapRecursiveValidKeyArray!176 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!932671 () Bool)

(declare-fun res!628277 () Bool)

(assert (=> b!932671 (=> (not res!628277) (not e!523773))))

(assert (=> b!932671 (= res!628277 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19138))))

(declare-fun b!932672 () Bool)

(declare-fun res!628269 () Bool)

(assert (=> b!932672 (=> (not res!628269) (not e!523774))))

(declare-fun v!791 () V!31745)

(declare-fun apply!821 (ListLongMap!12043 (_ BitVec 64)) V!31745)

(assert (=> b!932672 (= res!628269 (= (apply!821 lt!420030 k0!1099) v!791))))

(declare-fun mapIsEmpty!31887 () Bool)

(assert (=> mapIsEmpty!31887 mapRes!31887))

(declare-fun b!932673 () Bool)

(assert (=> b!932673 (= e!523771 tp_is_empty!20085)))

(declare-fun b!932674 () Bool)

(declare-fun res!628274 () Bool)

(assert (=> b!932674 (=> (not res!628274) (not e!523773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56132 (_ BitVec 32)) Bool)

(assert (=> b!932674 (= res!628274 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!932665 () Bool)

(declare-fun res!628272 () Bool)

(assert (=> b!932665 (=> (not res!628272) (not e!523773))))

(assert (=> b!932665 (= res!628272 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27466 _keys!1487))))))

(declare-fun res!628276 () Bool)

(assert (=> start!79418 (=> (not res!628276) (not e!523773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79418 (= res!628276 (validMask!0 mask!1881))))

(assert (=> start!79418 e!523773))

(assert (=> start!79418 true))

(assert (=> start!79418 tp_is_empty!20085))

(declare-fun array_inv!20986 (array!56134) Bool)

(assert (=> start!79418 (and (array_inv!20986 _values!1231) e!523772)))

(assert (=> start!79418 tp!61175))

(declare-fun array_inv!20987 (array!56132) Bool)

(assert (=> start!79418 (array_inv!20987 _keys!1487)))

(declare-fun b!932675 () Bool)

(assert (=> b!932675 (= e!523774 e!523769)))

(declare-fun res!628268 () Bool)

(assert (=> b!932675 (=> (not res!628268) (not e!523769))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932675 (= res!628268 (validKeyInArray!0 lt!420028))))

(assert (=> b!932675 (= lt!420028 (select (arr!27006 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!932676 () Bool)

(declare-fun res!628270 () Bool)

(assert (=> b!932676 (=> (not res!628270) (not e!523774))))

(assert (=> b!932676 (= res!628270 (validKeyInArray!0 k0!1099))))

(assert (= (and start!79418 res!628276) b!932666))

(assert (= (and b!932666 res!628273) b!932674))

(assert (= (and b!932674 res!628274) b!932671))

(assert (= (and b!932671 res!628277) b!932665))

(assert (= (and b!932665 res!628272) b!932664))

(assert (= (and b!932664 res!628271) b!932672))

(assert (= (and b!932672 res!628269) b!932669))

(assert (= (and b!932669 res!628275) b!932676))

(assert (= (and b!932676 res!628270) b!932675))

(assert (= (and b!932675 res!628268) b!932670))

(assert (= (and b!932667 condMapEmpty!31887) mapIsEmpty!31887))

(assert (= (and b!932667 (not condMapEmpty!31887)) mapNonEmpty!31887))

(get-info :version)

(assert (= (and mapNonEmpty!31887 ((_ is ValueCellFull!9561) mapValue!31887)) b!932668))

(assert (= (and b!932667 ((_ is ValueCellFull!9561) mapDefault!31887)) b!932673))

(assert (= start!79418 b!932667))

(declare-fun b_lambda!13941 () Bool)

(assert (=> (not b_lambda!13941) (not b!932670)))

(declare-fun t!27268 () Bool)

(declare-fun tb!5979 () Bool)

(assert (=> (and start!79418 (= defaultEntry!1235 defaultEntry!1235) t!27268) tb!5979))

(declare-fun result!11775 () Bool)

(assert (=> tb!5979 (= result!11775 tp_is_empty!20085)))

(assert (=> b!932670 t!27268))

(declare-fun b_and!28733 () Bool)

(assert (= b_and!28731 (and (=> t!27268 result!11775) b_and!28733)))

(declare-fun m!866795 () Bool)

(assert (=> b!932672 m!866795))

(declare-fun m!866797 () Bool)

(assert (=> b!932675 m!866797))

(declare-fun m!866799 () Bool)

(assert (=> b!932675 m!866799))

(declare-fun m!866801 () Bool)

(assert (=> b!932676 m!866801))

(declare-fun m!866803 () Bool)

(assert (=> b!932664 m!866803))

(declare-fun m!866805 () Bool)

(assert (=> b!932664 m!866805))

(declare-fun m!866807 () Bool)

(assert (=> mapNonEmpty!31887 m!866807))

(declare-fun m!866809 () Bool)

(assert (=> b!932674 m!866809))

(declare-fun m!866811 () Bool)

(assert (=> start!79418 m!866811))

(declare-fun m!866813 () Bool)

(assert (=> start!79418 m!866813))

(declare-fun m!866815 () Bool)

(assert (=> start!79418 m!866815))

(declare-fun m!866817 () Bool)

(assert (=> b!932671 m!866817))

(declare-fun m!866819 () Bool)

(assert (=> b!932670 m!866819))

(declare-fun m!866821 () Bool)

(assert (=> b!932670 m!866821))

(declare-fun m!866823 () Bool)

(assert (=> b!932670 m!866823))

(declare-fun m!866825 () Bool)

(assert (=> b!932670 m!866825))

(declare-fun m!866827 () Bool)

(assert (=> b!932670 m!866827))

(declare-fun m!866829 () Bool)

(assert (=> b!932670 m!866829))

(declare-fun m!866831 () Bool)

(assert (=> b!932670 m!866831))

(assert (=> b!932670 m!866825))

(assert (=> b!932670 m!866827))

(declare-fun m!866833 () Bool)

(assert (=> b!932670 m!866833))

(declare-fun m!866835 () Bool)

(assert (=> b!932670 m!866835))

(assert (=> b!932670 m!866821))

(declare-fun m!866837 () Bool)

(assert (=> b!932670 m!866837))

(declare-fun m!866839 () Bool)

(assert (=> b!932670 m!866839))

(assert (=> b!932670 m!866829))

(declare-fun m!866841 () Bool)

(assert (=> b!932670 m!866841))

(check-sat (not b!932672) (not b!932675) (not b!932676) (not start!79418) (not b!932671) (not b_lambda!13941) (not b!932674) (not b!932664) (not b!932670) (not mapNonEmpty!31887) tp_is_empty!20085 b_and!28733 (not b_next!17577))
(check-sat b_and!28733 (not b_next!17577))
