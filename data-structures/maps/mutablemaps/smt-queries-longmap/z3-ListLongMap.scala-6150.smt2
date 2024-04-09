; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79038 () Bool)

(assert start!79038)

(declare-fun b_free!17223 () Bool)

(declare-fun b_next!17223 () Bool)

(assert (=> start!79038 (= b_free!17223 (not b_next!17223))))

(declare-fun tp!60111 () Bool)

(declare-fun b_and!28201 () Bool)

(assert (=> start!79038 (= tp!60111 b_and!28201)))

(declare-fun e!519282 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((V!31273 0))(
  ( (V!31274 (val!9916 Int)) )
))
(declare-fun v!791 () V!31273)

(declare-datatypes ((tuple2!13034 0))(
  ( (tuple2!13035 (_1!6527 (_ BitVec 64)) (_2!6527 V!31273)) )
))
(declare-datatypes ((List!18869 0))(
  ( (Nil!18866) (Cons!18865 (h!20011 tuple2!13034) (t!26830 List!18869)) )
))
(declare-datatypes ((ListLongMap!11745 0))(
  ( (ListLongMap!11746 (toList!5888 List!18869)) )
))
(declare-fun lt!416337 () ListLongMap!11745)

(declare-fun b!925179 () Bool)

(declare-fun apply!689 (ListLongMap!11745 (_ BitVec 64)) V!31273)

(assert (=> b!925179 (= e!519282 (= (apply!689 lt!416337 k0!1099) v!791))))

(declare-fun b!925180 () Bool)

(declare-fun res!623581 () Bool)

(declare-fun e!519283 () Bool)

(assert (=> b!925180 (=> (not res!623581) (not e!519283))))

(declare-datatypes ((array!55444 0))(
  ( (array!55445 (arr!26663 (Array (_ BitVec 32) (_ BitVec 64))) (size!27123 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55444)

(declare-datatypes ((List!18870 0))(
  ( (Nil!18867) (Cons!18866 (h!20012 (_ BitVec 64)) (t!26831 List!18870)) )
))
(declare-fun arrayNoDuplicates!0 (array!55444 (_ BitVec 32) List!18870) Bool)

(assert (=> b!925180 (= res!623581 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18867))))

(declare-fun b!925181 () Bool)

(declare-fun e!519287 () Bool)

(assert (=> b!925181 (= e!519287 (not true))))

(assert (=> b!925181 e!519282))

(declare-fun res!623582 () Bool)

(assert (=> b!925181 (=> (not res!623582) (not e!519282))))

(declare-fun contains!4912 (ListLongMap!11745 (_ BitVec 64)) Bool)

(assert (=> b!925181 (= res!623582 (contains!4912 lt!416337 k0!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9384 0))(
  ( (ValueCellFull!9384 (v!12434 V!31273)) (EmptyCell!9384) )
))
(declare-datatypes ((array!55446 0))(
  ( (array!55447 (arr!26664 (Array (_ BitVec 32) ValueCell!9384)) (size!27124 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55446)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31273)

(declare-fun minValue!1173 () V!31273)

(declare-fun getCurrentListMap!3106 (array!55444 array!55446 (_ BitVec 32) (_ BitVec 32) V!31273 V!31273 (_ BitVec 32) Int) ListLongMap!11745)

(assert (=> b!925181 (= lt!416337 (getCurrentListMap!3106 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((Unit!31261 0))(
  ( (Unit!31262) )
))
(declare-fun lt!416332 () Unit!31261)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!72 (array!55444 array!55446 (_ BitVec 32) (_ BitVec 32) V!31273 V!31273 (_ BitVec 64) V!31273 (_ BitVec 32) Int) Unit!31261)

(assert (=> b!925181 (= lt!416332 (lemmaListMapApplyFromThenApplyFromZero!72 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!925183 () Bool)

(declare-fun e!519288 () Bool)

(declare-fun tp_is_empty!19731 () Bool)

(assert (=> b!925183 (= e!519288 tp_is_empty!19731)))

(declare-fun b!925184 () Bool)

(declare-fun e!519286 () Bool)

(assert (=> b!925184 (= e!519286 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!925185 () Bool)

(declare-fun e!519289 () Bool)

(assert (=> b!925185 (= e!519289 e!519287)))

(declare-fun res!623586 () Bool)

(assert (=> b!925185 (=> (not res!623586) (not e!519287))))

(declare-fun lt!416322 () ListLongMap!11745)

(assert (=> b!925185 (= res!623586 (contains!4912 lt!416322 k0!1099))))

(assert (=> b!925185 (= lt!416322 (getCurrentListMap!3106 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!925186 () Bool)

(declare-fun e!519284 () Bool)

(declare-fun e!519285 () Bool)

(declare-fun mapRes!31353 () Bool)

(assert (=> b!925186 (= e!519284 (and e!519285 mapRes!31353))))

(declare-fun condMapEmpty!31353 () Bool)

(declare-fun mapDefault!31353 () ValueCell!9384)

(assert (=> b!925186 (= condMapEmpty!31353 (= (arr!26664 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9384)) mapDefault!31353)))))

(declare-fun b!925187 () Bool)

(declare-fun res!623589 () Bool)

(assert (=> b!925187 (=> (not res!623589) (not e!519283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55444 (_ BitVec 32)) Bool)

(assert (=> b!925187 (= res!623589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!925188 () Bool)

(declare-fun lt!416323 () ListLongMap!11745)

(declare-fun lt!416327 () V!31273)

(assert (=> b!925188 (= (apply!689 lt!416323 k0!1099) lt!416327)))

(declare-fun lt!416326 () ListLongMap!11745)

(declare-fun lt!416325 () Unit!31261)

(declare-fun lt!416336 () V!31273)

(declare-fun lt!416335 () (_ BitVec 64))

(declare-fun addApplyDifferent!377 (ListLongMap!11745 (_ BitVec 64) V!31273 (_ BitVec 64)) Unit!31261)

(assert (=> b!925188 (= lt!416325 (addApplyDifferent!377 lt!416326 lt!416335 lt!416336 k0!1099))))

(assert (=> b!925188 (not (= lt!416335 k0!1099))))

(declare-fun lt!416328 () Unit!31261)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55444 (_ BitVec 64) (_ BitVec 32) List!18870) Unit!31261)

(assert (=> b!925188 (= lt!416328 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18867))))

(assert (=> b!925188 e!519286))

(declare-fun c!96482 () Bool)

(assert (=> b!925188 (= c!96482 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!416331 () Unit!31261)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!237 (array!55444 array!55446 (_ BitVec 32) (_ BitVec 32) V!31273 V!31273 (_ BitVec 64) (_ BitVec 32) Int) Unit!31261)

(assert (=> b!925188 (= lt!416331 (lemmaListMapContainsThenArrayContainsFrom!237 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!925188 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18867)))

(declare-fun lt!416324 () Unit!31261)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55444 (_ BitVec 32) (_ BitVec 32)) Unit!31261)

(assert (=> b!925188 (= lt!416324 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!925188 (contains!4912 lt!416323 k0!1099)))

(declare-fun lt!416333 () tuple2!13034)

(declare-fun +!2691 (ListLongMap!11745 tuple2!13034) ListLongMap!11745)

(assert (=> b!925188 (= lt!416323 (+!2691 lt!416326 lt!416333))))

(declare-fun lt!416329 () Unit!31261)

(declare-fun addStillContains!453 (ListLongMap!11745 (_ BitVec 64) V!31273 (_ BitVec 64)) Unit!31261)

(assert (=> b!925188 (= lt!416329 (addStillContains!453 lt!416326 lt!416335 lt!416336 k0!1099))))

(assert (=> b!925188 (= (getCurrentListMap!3106 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2691 (getCurrentListMap!3106 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!416333))))

(assert (=> b!925188 (= lt!416333 (tuple2!13035 lt!416335 lt!416336))))

(declare-fun get!14044 (ValueCell!9384 V!31273) V!31273)

(declare-fun dynLambda!1530 (Int (_ BitVec 64)) V!31273)

(assert (=> b!925188 (= lt!416336 (get!14044 (select (arr!26664 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1530 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!416330 () Unit!31261)

(declare-fun lemmaListMapRecursiveValidKeyArray!126 (array!55444 array!55446 (_ BitVec 32) (_ BitVec 32) V!31273 V!31273 (_ BitVec 32) Int) Unit!31261)

(assert (=> b!925188 (= lt!416330 (lemmaListMapRecursiveValidKeyArray!126 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!519281 () Unit!31261)

(assert (=> b!925188 (= e!519281 lt!416325)))

(declare-fun b!925189 () Bool)

(declare-fun arrayContainsKey!0 (array!55444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!925189 (= e!519286 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun mapIsEmpty!31353 () Bool)

(assert (=> mapIsEmpty!31353 mapRes!31353))

(declare-fun b!925190 () Bool)

(declare-fun e!519290 () Unit!31261)

(declare-fun Unit!31263 () Unit!31261)

(assert (=> b!925190 (= e!519290 Unit!31263)))

(declare-fun b!925191 () Bool)

(assert (=> b!925191 (= e!519290 e!519281)))

(assert (=> b!925191 (= lt!416335 (select (arr!26663 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96481 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!925191 (= c!96481 (validKeyInArray!0 lt!416335))))

(declare-fun mapNonEmpty!31353 () Bool)

(declare-fun tp!60110 () Bool)

(assert (=> mapNonEmpty!31353 (= mapRes!31353 (and tp!60110 e!519288))))

(declare-fun mapValue!31353 () ValueCell!9384)

(declare-fun mapRest!31353 () (Array (_ BitVec 32) ValueCell!9384))

(declare-fun mapKey!31353 () (_ BitVec 32))

(assert (=> mapNonEmpty!31353 (= (arr!26664 _values!1231) (store mapRest!31353 mapKey!31353 mapValue!31353))))

(declare-fun b!925192 () Bool)

(declare-fun res!623585 () Bool)

(assert (=> b!925192 (=> (not res!623585) (not e!519283))))

(assert (=> b!925192 (= res!623585 (and (= (size!27124 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27123 _keys!1487) (size!27124 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!925182 () Bool)

(declare-fun e!519280 () Bool)

(assert (=> b!925182 (= e!519280 e!519289)))

(declare-fun res!623591 () Bool)

(assert (=> b!925182 (=> (not res!623591) (not e!519289))))

(assert (=> b!925182 (= res!623591 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27123 _keys!1487)))))

(declare-fun lt!416334 () Unit!31261)

(assert (=> b!925182 (= lt!416334 e!519290)))

(declare-fun c!96480 () Bool)

(assert (=> b!925182 (= c!96480 (validKeyInArray!0 k0!1099))))

(declare-fun res!623590 () Bool)

(assert (=> start!79038 (=> (not res!623590) (not e!519283))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79038 (= res!623590 (validMask!0 mask!1881))))

(assert (=> start!79038 e!519283))

(assert (=> start!79038 true))

(assert (=> start!79038 tp_is_empty!19731))

(declare-fun array_inv!20760 (array!55446) Bool)

(assert (=> start!79038 (and (array_inv!20760 _values!1231) e!519284)))

(assert (=> start!79038 tp!60111))

(declare-fun array_inv!20761 (array!55444) Bool)

(assert (=> start!79038 (array_inv!20761 _keys!1487)))

(declare-fun b!925193 () Bool)

(declare-fun res!623588 () Bool)

(assert (=> b!925193 (=> (not res!623588) (not e!519287))))

(assert (=> b!925193 (= res!623588 (= (apply!689 lt!416322 k0!1099) v!791))))

(declare-fun b!925194 () Bool)

(declare-fun Unit!31264 () Unit!31261)

(assert (=> b!925194 (= e!519281 Unit!31264)))

(declare-fun b!925195 () Bool)

(declare-fun e!519279 () Bool)

(assert (=> b!925195 (= e!519279 e!519280)))

(declare-fun res!623583 () Bool)

(assert (=> b!925195 (=> (not res!623583) (not e!519280))))

(assert (=> b!925195 (= res!623583 (and (= lt!416327 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!925195 (= lt!416327 (apply!689 lt!416326 k0!1099))))

(declare-fun b!925196 () Bool)

(assert (=> b!925196 (= e!519283 e!519279)))

(declare-fun res!623584 () Bool)

(assert (=> b!925196 (=> (not res!623584) (not e!519279))))

(assert (=> b!925196 (= res!623584 (contains!4912 lt!416326 k0!1099))))

(assert (=> b!925196 (= lt!416326 (getCurrentListMap!3106 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!925197 () Bool)

(declare-fun res!623587 () Bool)

(assert (=> b!925197 (=> (not res!623587) (not e!519283))))

(assert (=> b!925197 (= res!623587 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27123 _keys!1487))))))

(declare-fun b!925198 () Bool)

(assert (=> b!925198 (= e!519285 tp_is_empty!19731)))

(assert (= (and start!79038 res!623590) b!925192))

(assert (= (and b!925192 res!623585) b!925187))

(assert (= (and b!925187 res!623589) b!925180))

(assert (= (and b!925180 res!623581) b!925197))

(assert (= (and b!925197 res!623587) b!925196))

(assert (= (and b!925196 res!623584) b!925195))

(assert (= (and b!925195 res!623583) b!925182))

(assert (= (and b!925182 c!96480) b!925191))

(assert (= (and b!925182 (not c!96480)) b!925190))

(assert (= (and b!925191 c!96481) b!925188))

(assert (= (and b!925191 (not c!96481)) b!925194))

(assert (= (and b!925188 c!96482) b!925189))

(assert (= (and b!925188 (not c!96482)) b!925184))

(assert (= (and b!925182 res!623591) b!925185))

(assert (= (and b!925185 res!623586) b!925193))

(assert (= (and b!925193 res!623588) b!925181))

(assert (= (and b!925181 res!623582) b!925179))

(assert (= (and b!925186 condMapEmpty!31353) mapIsEmpty!31353))

(assert (= (and b!925186 (not condMapEmpty!31353)) mapNonEmpty!31353))

(get-info :version)

(assert (= (and mapNonEmpty!31353 ((_ is ValueCellFull!9384) mapValue!31353)) b!925183))

(assert (= (and b!925186 ((_ is ValueCellFull!9384) mapDefault!31353)) b!925198))

(assert (= start!79038 b!925186))

(declare-fun b_lambda!13755 () Bool)

(assert (=> (not b_lambda!13755) (not b!925188)))

(declare-fun t!26829 () Bool)

(declare-fun tb!5811 () Bool)

(assert (=> (and start!79038 (= defaultEntry!1235 defaultEntry!1235) t!26829) tb!5811))

(declare-fun result!11437 () Bool)

(assert (=> tb!5811 (= result!11437 tp_is_empty!19731)))

(assert (=> b!925188 t!26829))

(declare-fun b_and!28203 () Bool)

(assert (= b_and!28201 (and (=> t!26829 result!11437) b_and!28203)))

(declare-fun m!859691 () Bool)

(assert (=> b!925182 m!859691))

(declare-fun m!859693 () Bool)

(assert (=> start!79038 m!859693))

(declare-fun m!859695 () Bool)

(assert (=> start!79038 m!859695))

(declare-fun m!859697 () Bool)

(assert (=> start!79038 m!859697))

(declare-fun m!859699 () Bool)

(assert (=> b!925189 m!859699))

(declare-fun m!859701 () Bool)

(assert (=> b!925185 m!859701))

(declare-fun m!859703 () Bool)

(assert (=> b!925185 m!859703))

(declare-fun m!859705 () Bool)

(assert (=> b!925191 m!859705))

(declare-fun m!859707 () Bool)

(assert (=> b!925191 m!859707))

(declare-fun m!859709 () Bool)

(assert (=> b!925187 m!859709))

(declare-fun m!859711 () Bool)

(assert (=> b!925195 m!859711))

(declare-fun m!859713 () Bool)

(assert (=> b!925188 m!859713))

(declare-fun m!859715 () Bool)

(assert (=> b!925188 m!859715))

(declare-fun m!859717 () Bool)

(assert (=> b!925188 m!859717))

(declare-fun m!859719 () Bool)

(assert (=> b!925188 m!859719))

(declare-fun m!859721 () Bool)

(assert (=> b!925188 m!859721))

(assert (=> b!925188 m!859717))

(declare-fun m!859723 () Bool)

(assert (=> b!925188 m!859723))

(declare-fun m!859725 () Bool)

(assert (=> b!925188 m!859725))

(assert (=> b!925188 m!859703))

(declare-fun m!859727 () Bool)

(assert (=> b!925188 m!859727))

(declare-fun m!859729 () Bool)

(assert (=> b!925188 m!859729))

(declare-fun m!859731 () Bool)

(assert (=> b!925188 m!859731))

(declare-fun m!859733 () Bool)

(assert (=> b!925188 m!859733))

(assert (=> b!925188 m!859723))

(declare-fun m!859735 () Bool)

(assert (=> b!925188 m!859735))

(declare-fun m!859737 () Bool)

(assert (=> b!925188 m!859737))

(declare-fun m!859739 () Bool)

(assert (=> b!925188 m!859739))

(assert (=> b!925188 m!859719))

(declare-fun m!859741 () Bool)

(assert (=> b!925188 m!859741))

(declare-fun m!859743 () Bool)

(assert (=> b!925181 m!859743))

(declare-fun m!859745 () Bool)

(assert (=> b!925181 m!859745))

(declare-fun m!859747 () Bool)

(assert (=> b!925181 m!859747))

(declare-fun m!859749 () Bool)

(assert (=> mapNonEmpty!31353 m!859749))

(declare-fun m!859751 () Bool)

(assert (=> b!925193 m!859751))

(declare-fun m!859753 () Bool)

(assert (=> b!925179 m!859753))

(declare-fun m!859755 () Bool)

(assert (=> b!925196 m!859755))

(declare-fun m!859757 () Bool)

(assert (=> b!925196 m!859757))

(declare-fun m!859759 () Bool)

(assert (=> b!925180 m!859759))

(check-sat (not b!925187) (not b!925182) (not b!925189) (not b!925180) b_and!28203 (not b!925188) (not b!925191) (not b_next!17223) tp_is_empty!19731 (not b!925193) (not b_lambda!13755) (not b!925196) (not b!925181) (not b!925195) (not mapNonEmpty!31353) (not start!79038) (not b!925185) (not b!925179))
(check-sat b_and!28203 (not b_next!17223))
