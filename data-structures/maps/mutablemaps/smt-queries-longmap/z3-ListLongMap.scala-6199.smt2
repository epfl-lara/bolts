; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79332 () Bool)

(assert start!79332)

(declare-fun b_free!17517 () Bool)

(declare-fun b_next!17517 () Bool)

(assert (=> start!79332 (= b_free!17517 (not b_next!17517))))

(declare-fun tp!60992 () Bool)

(declare-fun b_and!28603 () Bool)

(assert (=> start!79332 (= tp!60992 b_and!28603)))

(declare-fun b!931264 () Bool)

(declare-fun e!523035 () Bool)

(declare-fun tp_is_empty!20025 () Bool)

(assert (=> b!931264 (= e!523035 tp_is_empty!20025)))

(declare-fun b!931265 () Bool)

(declare-fun res!627294 () Bool)

(declare-fun e!523034 () Bool)

(assert (=> b!931265 (=> (not res!627294) (not e!523034))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!931265 (= res!627294 (validKeyInArray!0 k0!1099))))

(declare-fun res!627299 () Bool)

(declare-fun e!523030 () Bool)

(assert (=> start!79332 (=> (not res!627299) (not e!523030))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79332 (= res!627299 (validMask!0 mask!1881))))

(assert (=> start!79332 e!523030))

(assert (=> start!79332 true))

(assert (=> start!79332 tp_is_empty!20025))

(declare-datatypes ((V!31665 0))(
  ( (V!31666 (val!10063 Int)) )
))
(declare-datatypes ((ValueCell!9531 0))(
  ( (ValueCellFull!9531 (v!12581 V!31665)) (EmptyCell!9531) )
))
(declare-datatypes ((array!56018 0))(
  ( (array!56019 (arr!26950 (Array (_ BitVec 32) ValueCell!9531)) (size!27410 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56018)

(declare-fun e!523031 () Bool)

(declare-fun array_inv!20950 (array!56018) Bool)

(assert (=> start!79332 (and (array_inv!20950 _values!1231) e!523031)))

(assert (=> start!79332 tp!60992))

(declare-datatypes ((array!56020 0))(
  ( (array!56021 (arr!26951 (Array (_ BitVec 32) (_ BitVec 64))) (size!27411 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56020)

(declare-fun array_inv!20951 (array!56020) Bool)

(assert (=> start!79332 (array_inv!20951 _keys!1487)))

(declare-fun b!931266 () Bool)

(declare-fun e!523033 () Bool)

(assert (=> b!931266 (= e!523033 tp_is_empty!20025)))

(declare-fun b!931267 () Bool)

(declare-fun res!627300 () Bool)

(assert (=> b!931267 (=> (not res!627300) (not e!523034))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!931267 (= res!627300 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!931268 () Bool)

(declare-fun res!627302 () Bool)

(assert (=> b!931268 (=> (not res!627302) (not e!523034))))

(declare-fun v!791 () V!31665)

(declare-datatypes ((tuple2!13284 0))(
  ( (tuple2!13285 (_1!6652 (_ BitVec 64)) (_2!6652 V!31665)) )
))
(declare-datatypes ((List!19099 0))(
  ( (Nil!19096) (Cons!19095 (h!20241 tuple2!13284) (t!27168 List!19099)) )
))
(declare-datatypes ((ListLongMap!11995 0))(
  ( (ListLongMap!11996 (toList!6013 List!19099)) )
))
(declare-fun lt!419373 () ListLongMap!11995)

(declare-fun apply!799 (ListLongMap!11995 (_ BitVec 64)) V!31665)

(assert (=> b!931268 (= res!627302 (= (apply!799 lt!419373 k0!1099) v!791))))

(declare-fun b!931269 () Bool)

(declare-fun res!627301 () Bool)

(assert (=> b!931269 (=> (not res!627301) (not e!523030))))

(assert (=> b!931269 (= res!627301 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27411 _keys!1487))))))

(declare-fun b!931270 () Bool)

(declare-fun e!523029 () Bool)

(assert (=> b!931270 (= e!523029 (not (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27411 _keys!1487))))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!419371 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!31665)

(declare-fun minValue!1173 () V!31665)

(declare-fun getCurrentListMap!3210 (array!56020 array!56018 (_ BitVec 32) (_ BitVec 32) V!31665 V!31665 (_ BitVec 32) Int) ListLongMap!11995)

(declare-fun +!2724 (ListLongMap!11995 tuple2!13284) ListLongMap!11995)

(declare-fun get!14175 (ValueCell!9531 V!31665) V!31665)

(declare-fun dynLambda!1563 (Int (_ BitVec 64)) V!31665)

(assert (=> b!931270 (= (getCurrentListMap!3210 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2724 (getCurrentListMap!3210 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!13285 lt!419371 (get!14175 (select (arr!26950 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1563 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!31431 0))(
  ( (Unit!31432) )
))
(declare-fun lt!419372 () Unit!31431)

(declare-fun lemmaListMapRecursiveValidKeyArray!159 (array!56020 array!56018 (_ BitVec 32) (_ BitVec 32) V!31665 V!31665 (_ BitVec 32) Int) Unit!31431)

(assert (=> b!931270 (= lt!419372 (lemmaListMapRecursiveValidKeyArray!159 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!931271 () Bool)

(declare-fun res!627293 () Bool)

(assert (=> b!931271 (=> (not res!627293) (not e!523030))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56020 (_ BitVec 32)) Bool)

(assert (=> b!931271 (= res!627293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!931272 () Bool)

(declare-fun mapRes!31794 () Bool)

(assert (=> b!931272 (= e!523031 (and e!523035 mapRes!31794))))

(declare-fun condMapEmpty!31794 () Bool)

(declare-fun mapDefault!31794 () ValueCell!9531)

(assert (=> b!931272 (= condMapEmpty!31794 (= (arr!26950 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9531)) mapDefault!31794)))))

(declare-fun mapNonEmpty!31794 () Bool)

(declare-fun tp!60993 () Bool)

(assert (=> mapNonEmpty!31794 (= mapRes!31794 (and tp!60993 e!523033))))

(declare-fun mapValue!31794 () ValueCell!9531)

(declare-fun mapRest!31794 () (Array (_ BitVec 32) ValueCell!9531))

(declare-fun mapKey!31794 () (_ BitVec 32))

(assert (=> mapNonEmpty!31794 (= (arr!26950 _values!1231) (store mapRest!31794 mapKey!31794 mapValue!31794))))

(declare-fun b!931273 () Bool)

(declare-fun res!627296 () Bool)

(assert (=> b!931273 (=> (not res!627296) (not e!523030))))

(assert (=> b!931273 (= res!627296 (and (= (size!27410 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27411 _keys!1487) (size!27410 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!31794 () Bool)

(assert (=> mapIsEmpty!31794 mapRes!31794))

(declare-fun b!931274 () Bool)

(assert (=> b!931274 (= e!523034 e!523029)))

(declare-fun res!627295 () Bool)

(assert (=> b!931274 (=> (not res!627295) (not e!523029))))

(assert (=> b!931274 (= res!627295 (validKeyInArray!0 lt!419371))))

(assert (=> b!931274 (= lt!419371 (select (arr!26951 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!931275 () Bool)

(declare-fun res!627297 () Bool)

(assert (=> b!931275 (=> (not res!627297) (not e!523030))))

(declare-datatypes ((List!19100 0))(
  ( (Nil!19097) (Cons!19096 (h!20242 (_ BitVec 64)) (t!27169 List!19100)) )
))
(declare-fun arrayNoDuplicates!0 (array!56020 (_ BitVec 32) List!19100) Bool)

(assert (=> b!931275 (= res!627297 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19097))))

(declare-fun b!931276 () Bool)

(assert (=> b!931276 (= e!523030 e!523034)))

(declare-fun res!627298 () Bool)

(assert (=> b!931276 (=> (not res!627298) (not e!523034))))

(declare-fun contains!5015 (ListLongMap!11995 (_ BitVec 64)) Bool)

(assert (=> b!931276 (= res!627298 (contains!5015 lt!419373 k0!1099))))

(assert (=> b!931276 (= lt!419373 (getCurrentListMap!3210 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(assert (= (and start!79332 res!627299) b!931273))

(assert (= (and b!931273 res!627296) b!931271))

(assert (= (and b!931271 res!627293) b!931275))

(assert (= (and b!931275 res!627297) b!931269))

(assert (= (and b!931269 res!627301) b!931276))

(assert (= (and b!931276 res!627298) b!931268))

(assert (= (and b!931268 res!627302) b!931267))

(assert (= (and b!931267 res!627300) b!931265))

(assert (= (and b!931265 res!627294) b!931274))

(assert (= (and b!931274 res!627295) b!931270))

(assert (= (and b!931272 condMapEmpty!31794) mapIsEmpty!31794))

(assert (= (and b!931272 (not condMapEmpty!31794)) mapNonEmpty!31794))

(get-info :version)

(assert (= (and mapNonEmpty!31794 ((_ is ValueCellFull!9531) mapValue!31794)) b!931266))

(assert (= (and b!931272 ((_ is ValueCellFull!9531) mapDefault!31794)) b!931264))

(assert (= start!79332 b!931272))

(declare-fun b_lambda!13863 () Bool)

(assert (=> (not b_lambda!13863) (not b!931270)))

(declare-fun t!27167 () Bool)

(declare-fun tb!5919 () Bool)

(assert (=> (and start!79332 (= defaultEntry!1235 defaultEntry!1235) t!27167) tb!5919))

(declare-fun result!11653 () Bool)

(assert (=> tb!5919 (= result!11653 tp_is_empty!20025)))

(assert (=> b!931270 t!27167))

(declare-fun b_and!28605 () Bool)

(assert (= b_and!28603 (and (=> t!27167 result!11653) b_and!28605)))

(declare-fun m!865257 () Bool)

(assert (=> b!931271 m!865257))

(declare-fun m!865259 () Bool)

(assert (=> b!931275 m!865259))

(declare-fun m!865261 () Bool)

(assert (=> mapNonEmpty!31794 m!865261))

(declare-fun m!865263 () Bool)

(assert (=> b!931270 m!865263))

(declare-fun m!865265 () Bool)

(assert (=> b!931270 m!865265))

(declare-fun m!865267 () Bool)

(assert (=> b!931270 m!865267))

(declare-fun m!865269 () Bool)

(assert (=> b!931270 m!865269))

(assert (=> b!931270 m!865263))

(assert (=> b!931270 m!865265))

(declare-fun m!865271 () Bool)

(assert (=> b!931270 m!865271))

(declare-fun m!865273 () Bool)

(assert (=> b!931270 m!865273))

(assert (=> b!931270 m!865267))

(declare-fun m!865275 () Bool)

(assert (=> b!931270 m!865275))

(declare-fun m!865277 () Bool)

(assert (=> b!931274 m!865277))

(declare-fun m!865279 () Bool)

(assert (=> b!931274 m!865279))

(declare-fun m!865281 () Bool)

(assert (=> b!931276 m!865281))

(declare-fun m!865283 () Bool)

(assert (=> b!931276 m!865283))

(declare-fun m!865285 () Bool)

(assert (=> b!931265 m!865285))

(declare-fun m!865287 () Bool)

(assert (=> start!79332 m!865287))

(declare-fun m!865289 () Bool)

(assert (=> start!79332 m!865289))

(declare-fun m!865291 () Bool)

(assert (=> start!79332 m!865291))

(declare-fun m!865293 () Bool)

(assert (=> b!931268 m!865293))

(check-sat (not b!931268) (not b!931276) (not b_next!17517) (not mapNonEmpty!31794) (not b!931275) b_and!28605 tp_is_empty!20025 (not b!931271) (not start!79332) (not b_lambda!13863) (not b!931274) (not b!931270) (not b!931265))
(check-sat b_and!28605 (not b_next!17517))
