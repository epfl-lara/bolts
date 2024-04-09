; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79140 () Bool)

(assert start!79140)

(declare-fun b_free!17325 () Bool)

(declare-fun b_next!17325 () Bool)

(assert (=> start!79140 (= b_free!17325 (not b_next!17325))))

(declare-fun tp!60416 () Bool)

(declare-fun b_and!28405 () Bool)

(assert (=> start!79140 (= tp!60416 b_and!28405)))

(declare-fun res!625274 () Bool)

(declare-fun e!521273 () Bool)

(assert (=> start!79140 (=> (not res!625274) (not e!521273))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79140 (= res!625274 (validMask!0 mask!1881))))

(assert (=> start!79140 e!521273))

(assert (=> start!79140 true))

(declare-fun tp_is_empty!19833 () Bool)

(assert (=> start!79140 tp_is_empty!19833))

(declare-datatypes ((V!31409 0))(
  ( (V!31410 (val!9967 Int)) )
))
(declare-datatypes ((ValueCell!9435 0))(
  ( (ValueCellFull!9435 (v!12485 V!31409)) (EmptyCell!9435) )
))
(declare-datatypes ((array!55642 0))(
  ( (array!55643 (arr!26762 (Array (_ BitVec 32) ValueCell!9435)) (size!27222 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55642)

(declare-fun e!521270 () Bool)

(declare-fun array_inv!20830 (array!55642) Bool)

(assert (=> start!79140 (and (array_inv!20830 _values!1231) e!521270)))

(assert (=> start!79140 tp!60416))

(declare-datatypes ((array!55644 0))(
  ( (array!55645 (arr!26763 (Array (_ BitVec 32) (_ BitVec 64))) (size!27223 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55644)

(declare-fun array_inv!20831 (array!55644) Bool)

(assert (=> start!79140 (array_inv!20831 _keys!1487)))

(declare-fun b!928341 () Bool)

(declare-datatypes ((Unit!31421 0))(
  ( (Unit!31422) )
))
(declare-fun e!521278 () Unit!31421)

(declare-fun Unit!31423 () Unit!31421)

(assert (=> b!928341 (= e!521278 Unit!31423)))

(declare-fun b!928342 () Bool)

(declare-fun e!521269 () Bool)

(declare-fun mapRes!31506 () Bool)

(assert (=> b!928342 (= e!521270 (and e!521269 mapRes!31506))))

(declare-fun condMapEmpty!31506 () Bool)

(declare-fun mapDefault!31506 () ValueCell!9435)

(assert (=> b!928342 (= condMapEmpty!31506 (= (arr!26762 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9435)) mapDefault!31506)))))

(declare-fun b!928343 () Bool)

(assert (=> b!928343 (= e!521269 tp_is_empty!19833)))

(declare-fun b!928344 () Bool)

(declare-fun e!521274 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!928344 (= e!521274 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun v!791 () V!31409)

(declare-fun b!928345 () Bool)

(declare-datatypes ((tuple2!13128 0))(
  ( (tuple2!13129 (_1!6574 (_ BitVec 64)) (_2!6574 V!31409)) )
))
(declare-datatypes ((List!18951 0))(
  ( (Nil!18948) (Cons!18947 (h!20093 tuple2!13128) (t!27014 List!18951)) )
))
(declare-datatypes ((ListLongMap!11839 0))(
  ( (ListLongMap!11840 (toList!5935 List!18951)) )
))
(declare-fun lt!418774 () ListLongMap!11839)

(declare-fun e!521277 () Bool)

(declare-fun apply!731 (ListLongMap!11839 (_ BitVec 64)) V!31409)

(assert (=> b!928345 (= e!521277 (= (apply!731 lt!418774 k0!1099) v!791))))

(declare-fun b!928346 () Bool)

(declare-fun e!521268 () Bool)

(declare-fun e!521275 () Bool)

(assert (=> b!928346 (= e!521268 e!521275)))

(declare-fun res!625272 () Bool)

(assert (=> b!928346 (=> (not res!625272) (not e!521275))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!928346 (= res!625272 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27223 _keys!1487)))))

(declare-fun lt!418775 () Unit!31421)

(declare-fun e!521276 () Unit!31421)

(assert (=> b!928346 (= lt!418775 e!521276)))

(declare-fun c!96941 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!928346 (= c!96941 (validKeyInArray!0 k0!1099))))

(declare-fun b!928347 () Bool)

(assert (=> b!928347 (= e!521276 e!521278)))

(declare-fun lt!418772 () (_ BitVec 64))

(assert (=> b!928347 (= lt!418772 (select (arr!26763 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96940 () Bool)

(assert (=> b!928347 (= c!96940 (validKeyInArray!0 lt!418772))))

(declare-fun b!928348 () Bool)

(declare-fun e!521271 () Bool)

(assert (=> b!928348 (= e!521271 (not true))))

(assert (=> b!928348 e!521277))

(declare-fun res!625266 () Bool)

(assert (=> b!928348 (=> (not res!625266) (not e!521277))))

(declare-fun contains!4954 (ListLongMap!11839 (_ BitVec 64)) Bool)

(assert (=> b!928348 (= res!625266 (contains!4954 lt!418774 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31409)

(declare-fun minValue!1173 () V!31409)

(declare-fun getCurrentListMap!3148 (array!55644 array!55642 (_ BitVec 32) (_ BitVec 32) V!31409 V!31409 (_ BitVec 32) Int) ListLongMap!11839)

(assert (=> b!928348 (= lt!418774 (getCurrentListMap!3148 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!418773 () Unit!31421)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!109 (array!55644 array!55642 (_ BitVec 32) (_ BitVec 32) V!31409 V!31409 (_ BitVec 64) V!31409 (_ BitVec 32) Int) Unit!31421)

(assert (=> b!928348 (= lt!418773 (lemmaListMapApplyFromThenApplyFromZero!109 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!928349 () Bool)

(assert (=> b!928349 (= e!521275 e!521271)))

(declare-fun res!625270 () Bool)

(assert (=> b!928349 (=> (not res!625270) (not e!521271))))

(declare-fun lt!418771 () ListLongMap!11839)

(assert (=> b!928349 (= res!625270 (contains!4954 lt!418771 k0!1099))))

(assert (=> b!928349 (= lt!418771 (getCurrentListMap!3148 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!928350 () Bool)

(declare-fun res!625265 () Bool)

(assert (=> b!928350 (=> (not res!625265) (not e!521273))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55644 (_ BitVec 32)) Bool)

(assert (=> b!928350 (= res!625265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!928351 () Bool)

(declare-fun res!625267 () Bool)

(assert (=> b!928351 (=> (not res!625267) (not e!521273))))

(assert (=> b!928351 (= res!625267 (and (= (size!27222 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27223 _keys!1487) (size!27222 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!928352 () Bool)

(declare-fun e!521272 () Bool)

(assert (=> b!928352 (= e!521272 e!521268)))

(declare-fun res!625269 () Bool)

(assert (=> b!928352 (=> (not res!625269) (not e!521268))))

(declare-fun lt!418785 () V!31409)

(assert (=> b!928352 (= res!625269 (and (= lt!418785 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!418783 () ListLongMap!11839)

(assert (=> b!928352 (= lt!418785 (apply!731 lt!418783 k0!1099))))

(declare-fun b!928353 () Bool)

(declare-fun res!625271 () Bool)

(assert (=> b!928353 (=> (not res!625271) (not e!521271))))

(assert (=> b!928353 (= res!625271 (= (apply!731 lt!418771 k0!1099) v!791))))

(declare-fun b!928354 () Bool)

(declare-fun Unit!31424 () Unit!31421)

(assert (=> b!928354 (= e!521276 Unit!31424)))

(declare-fun b!928355 () Bool)

(declare-fun e!521280 () Bool)

(assert (=> b!928355 (= e!521280 tp_is_empty!19833)))

(declare-fun b!928356 () Bool)

(declare-fun lt!418778 () ListLongMap!11839)

(assert (=> b!928356 (= (apply!731 lt!418778 k0!1099) lt!418785)))

(declare-fun lt!418780 () V!31409)

(declare-fun lt!418781 () Unit!31421)

(declare-fun addApplyDifferent!407 (ListLongMap!11839 (_ BitVec 64) V!31409 (_ BitVec 64)) Unit!31421)

(assert (=> b!928356 (= lt!418781 (addApplyDifferent!407 lt!418783 lt!418772 lt!418780 k0!1099))))

(assert (=> b!928356 (not (= lt!418772 k0!1099))))

(declare-fun lt!418779 () Unit!31421)

(declare-datatypes ((List!18952 0))(
  ( (Nil!18949) (Cons!18948 (h!20094 (_ BitVec 64)) (t!27015 List!18952)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55644 (_ BitVec 64) (_ BitVec 32) List!18952) Unit!31421)

(assert (=> b!928356 (= lt!418779 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18949))))

(assert (=> b!928356 e!521274))

(declare-fun c!96939 () Bool)

(assert (=> b!928356 (= c!96939 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!418777 () Unit!31421)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!267 (array!55644 array!55642 (_ BitVec 32) (_ BitVec 32) V!31409 V!31409 (_ BitVec 64) (_ BitVec 32) Int) Unit!31421)

(assert (=> b!928356 (= lt!418777 (lemmaListMapContainsThenArrayContainsFrom!267 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55644 (_ BitVec 32) List!18952) Bool)

(assert (=> b!928356 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18949)))

(declare-fun lt!418782 () Unit!31421)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55644 (_ BitVec 32) (_ BitVec 32)) Unit!31421)

(assert (=> b!928356 (= lt!418782 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!928356 (contains!4954 lt!418778 k0!1099)))

(declare-fun lt!418770 () tuple2!13128)

(declare-fun +!2721 (ListLongMap!11839 tuple2!13128) ListLongMap!11839)

(assert (=> b!928356 (= lt!418778 (+!2721 lt!418783 lt!418770))))

(declare-fun lt!418776 () Unit!31421)

(declare-fun addStillContains!483 (ListLongMap!11839 (_ BitVec 64) V!31409 (_ BitVec 64)) Unit!31421)

(assert (=> b!928356 (= lt!418776 (addStillContains!483 lt!418783 lt!418772 lt!418780 k0!1099))))

(assert (=> b!928356 (= (getCurrentListMap!3148 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2721 (getCurrentListMap!3148 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!418770))))

(assert (=> b!928356 (= lt!418770 (tuple2!13129 lt!418772 lt!418780))))

(declare-fun get!14108 (ValueCell!9435 V!31409) V!31409)

(declare-fun dynLambda!1560 (Int (_ BitVec 64)) V!31409)

(assert (=> b!928356 (= lt!418780 (get!14108 (select (arr!26762 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1560 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!418784 () Unit!31421)

(declare-fun lemmaListMapRecursiveValidKeyArray!156 (array!55644 array!55642 (_ BitVec 32) (_ BitVec 32) V!31409 V!31409 (_ BitVec 32) Int) Unit!31421)

(assert (=> b!928356 (= lt!418784 (lemmaListMapRecursiveValidKeyArray!156 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!928356 (= e!521278 lt!418781)))

(declare-fun mapIsEmpty!31506 () Bool)

(assert (=> mapIsEmpty!31506 mapRes!31506))

(declare-fun b!928357 () Bool)

(declare-fun res!625264 () Bool)

(assert (=> b!928357 (=> (not res!625264) (not e!521273))))

(assert (=> b!928357 (= res!625264 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18949))))

(declare-fun b!928358 () Bool)

(declare-fun arrayContainsKey!0 (array!55644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!928358 (= e!521274 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!928359 () Bool)

(assert (=> b!928359 (= e!521273 e!521272)))

(declare-fun res!625268 () Bool)

(assert (=> b!928359 (=> (not res!625268) (not e!521272))))

(assert (=> b!928359 (= res!625268 (contains!4954 lt!418783 k0!1099))))

(assert (=> b!928359 (= lt!418783 (getCurrentListMap!3148 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapNonEmpty!31506 () Bool)

(declare-fun tp!60417 () Bool)

(assert (=> mapNonEmpty!31506 (= mapRes!31506 (and tp!60417 e!521280))))

(declare-fun mapKey!31506 () (_ BitVec 32))

(declare-fun mapRest!31506 () (Array (_ BitVec 32) ValueCell!9435))

(declare-fun mapValue!31506 () ValueCell!9435)

(assert (=> mapNonEmpty!31506 (= (arr!26762 _values!1231) (store mapRest!31506 mapKey!31506 mapValue!31506))))

(declare-fun b!928360 () Bool)

(declare-fun res!625273 () Bool)

(assert (=> b!928360 (=> (not res!625273) (not e!521273))))

(assert (=> b!928360 (= res!625273 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27223 _keys!1487))))))

(assert (= (and start!79140 res!625274) b!928351))

(assert (= (and b!928351 res!625267) b!928350))

(assert (= (and b!928350 res!625265) b!928357))

(assert (= (and b!928357 res!625264) b!928360))

(assert (= (and b!928360 res!625273) b!928359))

(assert (= (and b!928359 res!625268) b!928352))

(assert (= (and b!928352 res!625269) b!928346))

(assert (= (and b!928346 c!96941) b!928347))

(assert (= (and b!928346 (not c!96941)) b!928354))

(assert (= (and b!928347 c!96940) b!928356))

(assert (= (and b!928347 (not c!96940)) b!928341))

(assert (= (and b!928356 c!96939) b!928358))

(assert (= (and b!928356 (not c!96939)) b!928344))

(assert (= (and b!928346 res!625272) b!928349))

(assert (= (and b!928349 res!625270) b!928353))

(assert (= (and b!928353 res!625271) b!928348))

(assert (= (and b!928348 res!625266) b!928345))

(assert (= (and b!928342 condMapEmpty!31506) mapIsEmpty!31506))

(assert (= (and b!928342 (not condMapEmpty!31506)) mapNonEmpty!31506))

(get-info :version)

(assert (= (and mapNonEmpty!31506 ((_ is ValueCellFull!9435) mapValue!31506)) b!928355))

(assert (= (and b!928342 ((_ is ValueCellFull!9435) mapDefault!31506)) b!928343))

(assert (= start!79140 b!928342))

(declare-fun b_lambda!13857 () Bool)

(assert (=> (not b_lambda!13857) (not b!928356)))

(declare-fun t!27013 () Bool)

(declare-fun tb!5913 () Bool)

(assert (=> (and start!79140 (= defaultEntry!1235 defaultEntry!1235) t!27013) tb!5913))

(declare-fun result!11641 () Bool)

(assert (=> tb!5913 (= result!11641 tp_is_empty!19833)))

(assert (=> b!928356 t!27013))

(declare-fun b_and!28407 () Bool)

(assert (= b_and!28405 (and (=> t!27013 result!11641) b_and!28407)))

(declare-fun m!863261 () Bool)

(assert (=> mapNonEmpty!31506 m!863261))

(declare-fun m!863263 () Bool)

(assert (=> b!928358 m!863263))

(declare-fun m!863265 () Bool)

(assert (=> b!928353 m!863265))

(declare-fun m!863267 () Bool)

(assert (=> b!928356 m!863267))

(declare-fun m!863269 () Bool)

(assert (=> b!928356 m!863269))

(declare-fun m!863271 () Bool)

(assert (=> b!928356 m!863271))

(declare-fun m!863273 () Bool)

(assert (=> b!928356 m!863273))

(declare-fun m!863275 () Bool)

(assert (=> b!928356 m!863275))

(declare-fun m!863277 () Bool)

(assert (=> b!928356 m!863277))

(declare-fun m!863279 () Bool)

(assert (=> b!928356 m!863279))

(declare-fun m!863281 () Bool)

(assert (=> b!928356 m!863281))

(declare-fun m!863283 () Bool)

(assert (=> b!928356 m!863283))

(declare-fun m!863285 () Bool)

(assert (=> b!928356 m!863285))

(declare-fun m!863287 () Bool)

(assert (=> b!928356 m!863287))

(declare-fun m!863289 () Bool)

(assert (=> b!928356 m!863289))

(declare-fun m!863291 () Bool)

(assert (=> b!928356 m!863291))

(assert (=> b!928356 m!863275))

(assert (=> b!928356 m!863277))

(declare-fun m!863293 () Bool)

(assert (=> b!928356 m!863293))

(assert (=> b!928356 m!863271))

(declare-fun m!863295 () Bool)

(assert (=> b!928356 m!863295))

(declare-fun m!863297 () Bool)

(assert (=> b!928356 m!863297))

(declare-fun m!863299 () Bool)

(assert (=> b!928350 m!863299))

(declare-fun m!863301 () Bool)

(assert (=> b!928347 m!863301))

(declare-fun m!863303 () Bool)

(assert (=> b!928347 m!863303))

(declare-fun m!863305 () Bool)

(assert (=> b!928348 m!863305))

(declare-fun m!863307 () Bool)

(assert (=> b!928348 m!863307))

(declare-fun m!863309 () Bool)

(assert (=> b!928348 m!863309))

(declare-fun m!863311 () Bool)

(assert (=> b!928345 m!863311))

(declare-fun m!863313 () Bool)

(assert (=> b!928352 m!863313))

(declare-fun m!863315 () Bool)

(assert (=> b!928359 m!863315))

(declare-fun m!863317 () Bool)

(assert (=> b!928359 m!863317))

(declare-fun m!863319 () Bool)

(assert (=> b!928349 m!863319))

(assert (=> b!928349 m!863281))

(declare-fun m!863321 () Bool)

(assert (=> b!928357 m!863321))

(declare-fun m!863323 () Bool)

(assert (=> start!79140 m!863323))

(declare-fun m!863325 () Bool)

(assert (=> start!79140 m!863325))

(declare-fun m!863327 () Bool)

(assert (=> start!79140 m!863327))

(declare-fun m!863329 () Bool)

(assert (=> b!928346 m!863329))

(check-sat (not b!928357) (not b!928356) (not b_next!17325) (not b_lambda!13857) b_and!28407 (not b!928353) (not b!928350) (not b!928346) (not b!928347) (not b!928359) (not b!928348) tp_is_empty!19833 (not start!79140) (not b!928349) (not b!928358) (not b!928345) (not mapNonEmpty!31506) (not b!928352))
(check-sat b_and!28407 (not b_next!17325))
