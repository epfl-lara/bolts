; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79400 () Bool)

(assert start!79400)

(declare-fun b_free!17559 () Bool)

(declare-fun b_next!17559 () Bool)

(assert (=> start!79400 (= b_free!17559 (not b_next!17559))))

(declare-fun tp!61122 () Bool)

(declare-fun b_and!28695 () Bool)

(assert (=> start!79400 (= tp!61122 b_and!28695)))

(declare-fun b!932295 () Bool)

(declare-fun res!628002 () Bool)

(declare-fun e!523584 () Bool)

(assert (=> b!932295 (=> (not res!628002) (not e!523584))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932295 (= res!628002 (validKeyInArray!0 k0!1099))))

(declare-fun b!932296 () Bool)

(declare-fun res!628006 () Bool)

(declare-fun e!523585 () Bool)

(assert (=> b!932296 (=> (not res!628006) (not e!523585))))

(declare-datatypes ((array!56096 0))(
  ( (array!56097 (arr!26988 (Array (_ BitVec 32) (_ BitVec 64))) (size!27448 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56096)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31721 0))(
  ( (V!31722 (val!10084 Int)) )
))
(declare-datatypes ((ValueCell!9552 0))(
  ( (ValueCellFull!9552 (v!12603 V!31721)) (EmptyCell!9552) )
))
(declare-datatypes ((array!56098 0))(
  ( (array!56099 (arr!26989 (Array (_ BitVec 32) ValueCell!9552)) (size!27449 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56098)

(assert (=> b!932296 (= res!628006 (and (= (size!27449 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27448 _keys!1487) (size!27449 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!31860 () Bool)

(declare-fun mapRes!31860 () Bool)

(declare-fun tp!61121 () Bool)

(declare-fun e!523580 () Bool)

(assert (=> mapNonEmpty!31860 (= mapRes!31860 (and tp!61121 e!523580))))

(declare-fun mapRest!31860 () (Array (_ BitVec 32) ValueCell!9552))

(declare-fun mapKey!31860 () (_ BitVec 32))

(declare-fun mapValue!31860 () ValueCell!9552)

(assert (=> mapNonEmpty!31860 (= (arr!26989 _values!1231) (store mapRest!31860 mapKey!31860 mapValue!31860))))

(declare-fun b!932297 () Bool)

(declare-fun tp_is_empty!20067 () Bool)

(assert (=> b!932297 (= e!523580 tp_is_empty!20067)))

(declare-fun b!932298 () Bool)

(assert (=> b!932298 (= e!523585 e!523584)))

(declare-fun res!627999 () Bool)

(assert (=> b!932298 (=> (not res!627999) (not e!523584))))

(declare-datatypes ((tuple2!13314 0))(
  ( (tuple2!13315 (_1!6667 (_ BitVec 64)) (_2!6667 V!31721)) )
))
(declare-datatypes ((List!19125 0))(
  ( (Nil!19122) (Cons!19121 (h!20267 tuple2!13314) (t!27236 List!19125)) )
))
(declare-datatypes ((ListLongMap!12025 0))(
  ( (ListLongMap!12026 (toList!6028 List!19125)) )
))
(declare-fun lt!419843 () ListLongMap!12025)

(declare-fun contains!5028 (ListLongMap!12025 (_ BitVec 64)) Bool)

(assert (=> b!932298 (= res!627999 (contains!5028 lt!419843 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31721)

(declare-fun minValue!1173 () V!31721)

(declare-fun getCurrentListMap!3221 (array!56096 array!56098 (_ BitVec 32) (_ BitVec 32) V!31721 V!31721 (_ BitVec 32) Int) ListLongMap!12025)

(assert (=> b!932298 (= lt!419843 (getCurrentListMap!3221 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!932299 () Bool)

(declare-fun res!628007 () Bool)

(assert (=> b!932299 (=> (not res!628007) (not e!523585))))

(declare-datatypes ((List!19126 0))(
  ( (Nil!19123) (Cons!19122 (h!20268 (_ BitVec 64)) (t!27237 List!19126)) )
))
(declare-fun arrayNoDuplicates!0 (array!56096 (_ BitVec 32) List!19126) Bool)

(assert (=> b!932299 (= res!628007 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19123))))

(declare-fun b!932300 () Bool)

(declare-fun e!523581 () Bool)

(assert (=> b!932300 (= e!523581 (not true))))

(declare-fun lt!419842 () tuple2!13314)

(declare-fun +!2735 (ListLongMap!12025 tuple2!13314) ListLongMap!12025)

(assert (=> b!932300 (contains!5028 (+!2735 lt!419843 lt!419842) k0!1099)))

(declare-datatypes ((Unit!31458 0))(
  ( (Unit!31459) )
))
(declare-fun lt!419841 () Unit!31458)

(declare-fun lt!419840 () V!31721)

(declare-fun lt!419845 () (_ BitVec 64))

(declare-fun addStillContains!491 (ListLongMap!12025 (_ BitVec 64) V!31721 (_ BitVec 64)) Unit!31458)

(assert (=> b!932300 (= lt!419841 (addStillContains!491 lt!419843 lt!419845 lt!419840 k0!1099))))

(assert (=> b!932300 (= (getCurrentListMap!3221 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2735 (getCurrentListMap!3221 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!419842))))

(assert (=> b!932300 (= lt!419842 (tuple2!13315 lt!419845 lt!419840))))

(declare-fun get!14203 (ValueCell!9552 V!31721) V!31721)

(declare-fun dynLambda!1574 (Int (_ BitVec 64)) V!31721)

(assert (=> b!932300 (= lt!419840 (get!14203 (select (arr!26989 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1574 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!419844 () Unit!31458)

(declare-fun lemmaListMapRecursiveValidKeyArray!170 (array!56096 array!56098 (_ BitVec 32) (_ BitVec 32) V!31721 V!31721 (_ BitVec 32) Int) Unit!31458)

(assert (=> b!932300 (= lt!419844 (lemmaListMapRecursiveValidKeyArray!170 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!932301 () Bool)

(declare-fun e!523586 () Bool)

(declare-fun e!523582 () Bool)

(assert (=> b!932301 (= e!523586 (and e!523582 mapRes!31860))))

(declare-fun condMapEmpty!31860 () Bool)

(declare-fun mapDefault!31860 () ValueCell!9552)

(assert (=> b!932301 (= condMapEmpty!31860 (= (arr!26989 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9552)) mapDefault!31860)))))

(declare-fun mapIsEmpty!31860 () Bool)

(assert (=> mapIsEmpty!31860 mapRes!31860))

(declare-fun res!628004 () Bool)

(assert (=> start!79400 (=> (not res!628004) (not e!523585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79400 (= res!628004 (validMask!0 mask!1881))))

(assert (=> start!79400 e!523585))

(assert (=> start!79400 true))

(assert (=> start!79400 tp_is_empty!20067))

(declare-fun array_inv!20976 (array!56098) Bool)

(assert (=> start!79400 (and (array_inv!20976 _values!1231) e!523586)))

(assert (=> start!79400 tp!61122))

(declare-fun array_inv!20977 (array!56096) Bool)

(assert (=> start!79400 (array_inv!20977 _keys!1487)))

(declare-fun b!932302 () Bool)

(declare-fun res!628005 () Bool)

(assert (=> b!932302 (=> (not res!628005) (not e!523584))))

(declare-fun v!791 () V!31721)

(declare-fun apply!813 (ListLongMap!12025 (_ BitVec 64)) V!31721)

(assert (=> b!932302 (= res!628005 (= (apply!813 lt!419843 k0!1099) v!791))))

(declare-fun b!932303 () Bool)

(declare-fun res!628003 () Bool)

(assert (=> b!932303 (=> (not res!628003) (not e!523585))))

(assert (=> b!932303 (= res!628003 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27448 _keys!1487))))))

(declare-fun b!932304 () Bool)

(assert (=> b!932304 (= e!523582 tp_is_empty!20067)))

(declare-fun b!932305 () Bool)

(assert (=> b!932305 (= e!523584 e!523581)))

(declare-fun res!628001 () Bool)

(assert (=> b!932305 (=> (not res!628001) (not e!523581))))

(assert (=> b!932305 (= res!628001 (validKeyInArray!0 lt!419845))))

(assert (=> b!932305 (= lt!419845 (select (arr!26988 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!932306 () Bool)

(declare-fun res!627998 () Bool)

(assert (=> b!932306 (=> (not res!627998) (not e!523585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56096 (_ BitVec 32)) Bool)

(assert (=> b!932306 (= res!627998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!932307 () Bool)

(declare-fun res!628000 () Bool)

(assert (=> b!932307 (=> (not res!628000) (not e!523584))))

(assert (=> b!932307 (= res!628000 (bvsgt from!1844 #b00000000000000000000000000000000))))

(assert (= (and start!79400 res!628004) b!932296))

(assert (= (and b!932296 res!628006) b!932306))

(assert (= (and b!932306 res!627998) b!932299))

(assert (= (and b!932299 res!628007) b!932303))

(assert (= (and b!932303 res!628003) b!932298))

(assert (= (and b!932298 res!627999) b!932302))

(assert (= (and b!932302 res!628005) b!932307))

(assert (= (and b!932307 res!628000) b!932295))

(assert (= (and b!932295 res!628002) b!932305))

(assert (= (and b!932305 res!628001) b!932300))

(assert (= (and b!932301 condMapEmpty!31860) mapIsEmpty!31860))

(assert (= (and b!932301 (not condMapEmpty!31860)) mapNonEmpty!31860))

(get-info :version)

(assert (= (and mapNonEmpty!31860 ((_ is ValueCellFull!9552) mapValue!31860)) b!932297))

(assert (= (and b!932301 ((_ is ValueCellFull!9552) mapDefault!31860)) b!932304))

(assert (= start!79400 b!932301))

(declare-fun b_lambda!13923 () Bool)

(assert (=> (not b_lambda!13923) (not b!932300)))

(declare-fun t!27235 () Bool)

(declare-fun tb!5961 () Bool)

(assert (=> (and start!79400 (= defaultEntry!1235 defaultEntry!1235) t!27235) tb!5961))

(declare-fun result!11739 () Bool)

(assert (=> tb!5961 (= result!11739 tp_is_empty!20067)))

(assert (=> b!932300 t!27235))

(declare-fun b_and!28697 () Bool)

(assert (= b_and!28695 (and (=> t!27235 result!11739) b_and!28697)))

(declare-fun m!866371 () Bool)

(assert (=> b!932299 m!866371))

(declare-fun m!866373 () Bool)

(assert (=> b!932300 m!866373))

(declare-fun m!866375 () Bool)

(assert (=> b!932300 m!866375))

(declare-fun m!866377 () Bool)

(assert (=> b!932300 m!866377))

(declare-fun m!866379 () Bool)

(assert (=> b!932300 m!866379))

(declare-fun m!866381 () Bool)

(assert (=> b!932300 m!866381))

(declare-fun m!866383 () Bool)

(assert (=> b!932300 m!866383))

(declare-fun m!866385 () Bool)

(assert (=> b!932300 m!866385))

(assert (=> b!932300 m!866377))

(declare-fun m!866387 () Bool)

(assert (=> b!932300 m!866387))

(assert (=> b!932300 m!866381))

(declare-fun m!866389 () Bool)

(assert (=> b!932300 m!866389))

(assert (=> b!932300 m!866373))

(assert (=> b!932300 m!866375))

(declare-fun m!866391 () Bool)

(assert (=> b!932300 m!866391))

(declare-fun m!866393 () Bool)

(assert (=> mapNonEmpty!31860 m!866393))

(declare-fun m!866395 () Bool)

(assert (=> b!932295 m!866395))

(declare-fun m!866397 () Bool)

(assert (=> b!932298 m!866397))

(declare-fun m!866399 () Bool)

(assert (=> b!932298 m!866399))

(declare-fun m!866401 () Bool)

(assert (=> start!79400 m!866401))

(declare-fun m!866403 () Bool)

(assert (=> start!79400 m!866403))

(declare-fun m!866405 () Bool)

(assert (=> start!79400 m!866405))

(declare-fun m!866407 () Bool)

(assert (=> b!932302 m!866407))

(declare-fun m!866409 () Bool)

(assert (=> b!932305 m!866409))

(declare-fun m!866411 () Bool)

(assert (=> b!932305 m!866411))

(declare-fun m!866413 () Bool)

(assert (=> b!932306 m!866413))

(check-sat (not b_lambda!13923) (not b!932295) (not b!932306) tp_is_empty!20067 (not b!932302) (not mapNonEmpty!31860) b_and!28697 (not b!932300) (not b!932298) (not b!932305) (not start!79400) (not b!932299) (not b_next!17559))
(check-sat b_and!28697 (not b_next!17559))
