; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79448 () Bool)

(assert start!79448)

(declare-fun b_free!17607 () Bool)

(declare-fun b_next!17607 () Bool)

(assert (=> start!79448 (= b_free!17607 (not b_next!17607))))

(declare-fun tp!61265 () Bool)

(declare-fun b_and!28791 () Bool)

(assert (=> start!79448 (= tp!61265 b_and!28791)))

(declare-fun mapIsEmpty!31932 () Bool)

(declare-fun mapRes!31932 () Bool)

(assert (=> mapIsEmpty!31932 mapRes!31932))

(declare-fun b!933279 () Bool)

(declare-fun res!628719 () Bool)

(declare-fun e!524084 () Bool)

(assert (=> b!933279 (=> (not res!628719) (not e!524084))))

(declare-datatypes ((array!56190 0))(
  ( (array!56191 (arr!27035 (Array (_ BitVec 32) (_ BitVec 64))) (size!27495 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56190)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31785 0))(
  ( (V!31786 (val!10108 Int)) )
))
(declare-datatypes ((ValueCell!9576 0))(
  ( (ValueCellFull!9576 (v!12627 V!31785)) (EmptyCell!9576) )
))
(declare-datatypes ((array!56192 0))(
  ( (array!56193 (arr!27036 (Array (_ BitVec 32) ValueCell!9576)) (size!27496 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56192)

(assert (=> b!933279 (= res!628719 (and (= (size!27496 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27495 _keys!1487) (size!27496 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!933280 () Bool)

(declare-fun res!628727 () Bool)

(assert (=> b!933280 (=> (not res!628727) (not e!524084))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!933280 (= res!628727 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27495 _keys!1487))))))

(declare-fun b!933281 () Bool)

(declare-fun e!524087 () Bool)

(declare-fun tp_is_empty!20115 () Bool)

(assert (=> b!933281 (= e!524087 tp_is_empty!20115)))

(declare-fun b!933282 () Bool)

(declare-fun res!628725 () Bool)

(assert (=> b!933282 (=> (not res!628725) (not e!524084))))

(declare-datatypes ((List!19164 0))(
  ( (Nil!19161) (Cons!19160 (h!20306 (_ BitVec 64)) (t!27323 List!19164)) )
))
(declare-fun arrayNoDuplicates!0 (array!56190 (_ BitVec 32) List!19164) Bool)

(assert (=> b!933282 (= res!628725 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19161))))

(declare-fun b!933283 () Bool)

(declare-fun e!524085 () Bool)

(assert (=> b!933283 (= e!524085 (not true))))

(assert (=> b!933283 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19161)))

(declare-datatypes ((Unit!31488 0))(
  ( (Unit!31489) )
))
(declare-fun lt!420342 () Unit!31488)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56190 (_ BitVec 32) (_ BitVec 32)) Unit!31488)

(assert (=> b!933283 (= lt!420342 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!13356 0))(
  ( (tuple2!13357 (_1!6688 (_ BitVec 64)) (_2!6688 V!31785)) )
))
(declare-datatypes ((List!19165 0))(
  ( (Nil!19162) (Cons!19161 (h!20307 tuple2!13356) (t!27324 List!19165)) )
))
(declare-datatypes ((ListLongMap!12067 0))(
  ( (ListLongMap!12068 (toList!6049 List!19165)) )
))
(declare-fun lt!420344 () ListLongMap!12067)

(declare-fun lt!420345 () tuple2!13356)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5048 (ListLongMap!12067 (_ BitVec 64)) Bool)

(declare-fun +!2750 (ListLongMap!12067 tuple2!13356) ListLongMap!12067)

(assert (=> b!933283 (contains!5048 (+!2750 lt!420344 lt!420345) k0!1099)))

(declare-fun lt!420346 () (_ BitVec 64))

(declare-fun lt!420340 () Unit!31488)

(declare-fun lt!420341 () V!31785)

(declare-fun addStillContains!506 (ListLongMap!12067 (_ BitVec 64) V!31785 (_ BitVec 64)) Unit!31488)

(assert (=> b!933283 (= lt!420340 (addStillContains!506 lt!420344 lt!420346 lt!420341 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31785)

(declare-fun minValue!1173 () V!31785)

(declare-fun getCurrentListMap!3241 (array!56190 array!56192 (_ BitVec 32) (_ BitVec 32) V!31785 V!31785 (_ BitVec 32) Int) ListLongMap!12067)

(assert (=> b!933283 (= (getCurrentListMap!3241 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2750 (getCurrentListMap!3241 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420345))))

(assert (=> b!933283 (= lt!420345 (tuple2!13357 lt!420346 lt!420341))))

(declare-fun get!14234 (ValueCell!9576 V!31785) V!31785)

(declare-fun dynLambda!1589 (Int (_ BitVec 64)) V!31785)

(assert (=> b!933283 (= lt!420341 (get!14234 (select (arr!27036 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1589 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420343 () Unit!31488)

(declare-fun lemmaListMapRecursiveValidKeyArray!185 (array!56190 array!56192 (_ BitVec 32) (_ BitVec 32) V!31785 V!31785 (_ BitVec 32) Int) Unit!31488)

(assert (=> b!933283 (= lt!420343 (lemmaListMapRecursiveValidKeyArray!185 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!628723 () Bool)

(assert (=> start!79448 (=> (not res!628723) (not e!524084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79448 (= res!628723 (validMask!0 mask!1881))))

(assert (=> start!79448 e!524084))

(assert (=> start!79448 true))

(assert (=> start!79448 tp_is_empty!20115))

(declare-fun e!524089 () Bool)

(declare-fun array_inv!21002 (array!56192) Bool)

(assert (=> start!79448 (and (array_inv!21002 _values!1231) e!524089)))

(assert (=> start!79448 tp!61265))

(declare-fun array_inv!21003 (array!56190) Bool)

(assert (=> start!79448 (array_inv!21003 _keys!1487)))

(declare-fun mapNonEmpty!31932 () Bool)

(declare-fun tp!61266 () Bool)

(declare-fun e!524086 () Bool)

(assert (=> mapNonEmpty!31932 (= mapRes!31932 (and tp!61266 e!524086))))

(declare-fun mapValue!31932 () ValueCell!9576)

(declare-fun mapKey!31932 () (_ BitVec 32))

(declare-fun mapRest!31932 () (Array (_ BitVec 32) ValueCell!9576))

(assert (=> mapNonEmpty!31932 (= (arr!27036 _values!1231) (store mapRest!31932 mapKey!31932 mapValue!31932))))

(declare-fun b!933284 () Bool)

(declare-fun res!628720 () Bool)

(declare-fun e!524090 () Bool)

(assert (=> b!933284 (=> (not res!628720) (not e!524090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!933284 (= res!628720 (validKeyInArray!0 k0!1099))))

(declare-fun b!933285 () Bool)

(declare-fun res!628721 () Bool)

(assert (=> b!933285 (=> (not res!628721) (not e!524090))))

(assert (=> b!933285 (= res!628721 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!933286 () Bool)

(declare-fun res!628718 () Bool)

(assert (=> b!933286 (=> (not res!628718) (not e!524090))))

(declare-fun v!791 () V!31785)

(declare-fun apply!832 (ListLongMap!12067 (_ BitVec 64)) V!31785)

(assert (=> b!933286 (= res!628718 (= (apply!832 lt!420344 k0!1099) v!791))))

(declare-fun b!933287 () Bool)

(assert (=> b!933287 (= e!524086 tp_is_empty!20115)))

(declare-fun b!933288 () Bool)

(assert (=> b!933288 (= e!524090 e!524085)))

(declare-fun res!628722 () Bool)

(assert (=> b!933288 (=> (not res!628722) (not e!524085))))

(assert (=> b!933288 (= res!628722 (validKeyInArray!0 lt!420346))))

(assert (=> b!933288 (= lt!420346 (select (arr!27035 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!933289 () Bool)

(declare-fun res!628724 () Bool)

(assert (=> b!933289 (=> (not res!628724) (not e!524084))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56190 (_ BitVec 32)) Bool)

(assert (=> b!933289 (= res!628724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!933290 () Bool)

(assert (=> b!933290 (= e!524084 e!524090)))

(declare-fun res!628726 () Bool)

(assert (=> b!933290 (=> (not res!628726) (not e!524090))))

(assert (=> b!933290 (= res!628726 (contains!5048 lt!420344 k0!1099))))

(assert (=> b!933290 (= lt!420344 (getCurrentListMap!3241 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!933291 () Bool)

(assert (=> b!933291 (= e!524089 (and e!524087 mapRes!31932))))

(declare-fun condMapEmpty!31932 () Bool)

(declare-fun mapDefault!31932 () ValueCell!9576)

(assert (=> b!933291 (= condMapEmpty!31932 (= (arr!27036 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9576)) mapDefault!31932)))))

(assert (= (and start!79448 res!628723) b!933279))

(assert (= (and b!933279 res!628719) b!933289))

(assert (= (and b!933289 res!628724) b!933282))

(assert (= (and b!933282 res!628725) b!933280))

(assert (= (and b!933280 res!628727) b!933290))

(assert (= (and b!933290 res!628726) b!933286))

(assert (= (and b!933286 res!628718) b!933285))

(assert (= (and b!933285 res!628721) b!933284))

(assert (= (and b!933284 res!628720) b!933288))

(assert (= (and b!933288 res!628722) b!933283))

(assert (= (and b!933291 condMapEmpty!31932) mapIsEmpty!31932))

(assert (= (and b!933291 (not condMapEmpty!31932)) mapNonEmpty!31932))

(get-info :version)

(assert (= (and mapNonEmpty!31932 ((_ is ValueCellFull!9576) mapValue!31932)) b!933287))

(assert (= (and b!933291 ((_ is ValueCellFull!9576) mapDefault!31932)) b!933281))

(assert (= start!79448 b!933291))

(declare-fun b_lambda!13971 () Bool)

(assert (=> (not b_lambda!13971) (not b!933283)))

(declare-fun t!27322 () Bool)

(declare-fun tb!6009 () Bool)

(assert (=> (and start!79448 (= defaultEntry!1235 defaultEntry!1235) t!27322) tb!6009))

(declare-fun result!11835 () Bool)

(assert (=> tb!6009 (= result!11835 tp_is_empty!20115)))

(assert (=> b!933283 t!27322))

(declare-fun b_and!28793 () Bool)

(assert (= b_and!28791 (and (=> t!27322 result!11835) b_and!28793)))

(declare-fun m!867515 () Bool)

(assert (=> b!933290 m!867515))

(declare-fun m!867517 () Bool)

(assert (=> b!933290 m!867517))

(declare-fun m!867519 () Bool)

(assert (=> start!79448 m!867519))

(declare-fun m!867521 () Bool)

(assert (=> start!79448 m!867521))

(declare-fun m!867523 () Bool)

(assert (=> start!79448 m!867523))

(declare-fun m!867525 () Bool)

(assert (=> mapNonEmpty!31932 m!867525))

(declare-fun m!867527 () Bool)

(assert (=> b!933289 m!867527))

(declare-fun m!867529 () Bool)

(assert (=> b!933283 m!867529))

(declare-fun m!867531 () Bool)

(assert (=> b!933283 m!867531))

(declare-fun m!867533 () Bool)

(assert (=> b!933283 m!867533))

(declare-fun m!867535 () Bool)

(assert (=> b!933283 m!867535))

(declare-fun m!867537 () Bool)

(assert (=> b!933283 m!867537))

(declare-fun m!867539 () Bool)

(assert (=> b!933283 m!867539))

(declare-fun m!867541 () Bool)

(assert (=> b!933283 m!867541))

(assert (=> b!933283 m!867529))

(assert (=> b!933283 m!867533))

(declare-fun m!867543 () Bool)

(assert (=> b!933283 m!867543))

(assert (=> b!933283 m!867539))

(declare-fun m!867545 () Bool)

(assert (=> b!933283 m!867545))

(assert (=> b!933283 m!867531))

(declare-fun m!867547 () Bool)

(assert (=> b!933283 m!867547))

(declare-fun m!867549 () Bool)

(assert (=> b!933283 m!867549))

(declare-fun m!867551 () Bool)

(assert (=> b!933283 m!867551))

(declare-fun m!867553 () Bool)

(assert (=> b!933286 m!867553))

(declare-fun m!867555 () Bool)

(assert (=> b!933284 m!867555))

(declare-fun m!867557 () Bool)

(assert (=> b!933282 m!867557))

(declare-fun m!867559 () Bool)

(assert (=> b!933288 m!867559))

(declare-fun m!867561 () Bool)

(assert (=> b!933288 m!867561))

(check-sat (not b_lambda!13971) (not start!79448) (not b_next!17607) (not b!933282) b_and!28793 (not b!933283) tp_is_empty!20115 (not b!933288) (not b!933286) (not b!933290) (not mapNonEmpty!31932) (not b!933284) (not b!933289))
(check-sat b_and!28793 (not b_next!17607))
