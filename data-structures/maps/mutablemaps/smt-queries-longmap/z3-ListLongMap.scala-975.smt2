; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21102 () Bool)

(assert start!21102)

(declare-fun b_free!5601 () Bool)

(declare-fun b_next!5601 () Bool)

(assert (=> start!21102 (= b_free!5601 (not b_next!5601))))

(declare-fun tp!19865 () Bool)

(declare-fun b_and!12449 () Bool)

(assert (=> start!21102 (= tp!19865 b_and!12449)))

(declare-fun b!212186 () Bool)

(declare-fun e!138077 () Bool)

(declare-fun e!138078 () Bool)

(assert (=> b!212186 (= e!138077 (not e!138078))))

(declare-fun res!103759 () Bool)

(assert (=> b!212186 (=> res!103759 e!138078)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!212186 (= res!103759 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6931 0))(
  ( (V!6932 (val!2776 Int)) )
))
(declare-datatypes ((ValueCell!2388 0))(
  ( (ValueCellFull!2388 (v!4770 V!6931)) (EmptyCell!2388) )
))
(declare-datatypes ((array!10128 0))(
  ( (array!10129 (arr!4807 (Array (_ BitVec 32) ValueCell!2388)) (size!5132 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10128)

(declare-datatypes ((tuple2!4198 0))(
  ( (tuple2!4199 (_1!2109 (_ BitVec 64)) (_2!2109 V!6931)) )
))
(declare-datatypes ((List!3111 0))(
  ( (Nil!3108) (Cons!3107 (h!3749 tuple2!4198) (t!8064 List!3111)) )
))
(declare-datatypes ((ListLongMap!3125 0))(
  ( (ListLongMap!3126 (toList!1578 List!3111)) )
))
(declare-fun lt!109375 () ListLongMap!3125)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6931)

(declare-datatypes ((array!10130 0))(
  ( (array!10131 (arr!4808 (Array (_ BitVec 32) (_ BitVec 64))) (size!5133 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10130)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6931)

(declare-fun getCurrentListMap!1106 (array!10130 array!10128 (_ BitVec 32) (_ BitVec 32) V!6931 V!6931 (_ BitVec 32) Int) ListLongMap!3125)

(assert (=> b!212186 (= lt!109375 (getCurrentListMap!1106 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109372 () array!10128)

(declare-fun lt!109373 () ListLongMap!3125)

(assert (=> b!212186 (= lt!109373 (getCurrentListMap!1106 _keys!825 lt!109372 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109376 () ListLongMap!3125)

(declare-fun lt!109377 () ListLongMap!3125)

(assert (=> b!212186 (and (= lt!109376 lt!109377) (= lt!109377 lt!109376))))

(declare-fun v!520 () V!6931)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun lt!109378 () ListLongMap!3125)

(declare-fun +!571 (ListLongMap!3125 tuple2!4198) ListLongMap!3125)

(assert (=> b!212186 (= lt!109377 (+!571 lt!109378 (tuple2!4199 k0!843 v!520)))))

(declare-datatypes ((Unit!6443 0))(
  ( (Unit!6444) )
))
(declare-fun lt!109374 () Unit!6443)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!223 (array!10130 array!10128 (_ BitVec 32) (_ BitVec 32) V!6931 V!6931 (_ BitVec 32) (_ BitVec 64) V!6931 (_ BitVec 32) Int) Unit!6443)

(assert (=> b!212186 (= lt!109374 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!223 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!505 (array!10130 array!10128 (_ BitVec 32) (_ BitVec 32) V!6931 V!6931 (_ BitVec 32) Int) ListLongMap!3125)

(assert (=> b!212186 (= lt!109376 (getCurrentListMapNoExtraKeys!505 _keys!825 lt!109372 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!212186 (= lt!109372 (array!10129 (store (arr!4807 _values!649) i!601 (ValueCellFull!2388 v!520)) (size!5132 _values!649)))))

(assert (=> b!212186 (= lt!109378 (getCurrentListMapNoExtraKeys!505 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!212187 () Bool)

(declare-fun res!103753 () Bool)

(assert (=> b!212187 (=> (not res!103753) (not e!138077))))

(assert (=> b!212187 (= res!103753 (= (select (arr!4808 _keys!825) i!601) k0!843))))

(declare-fun b!212188 () Bool)

(declare-fun e!138082 () Bool)

(declare-fun tp_is_empty!5463 () Bool)

(assert (=> b!212188 (= e!138082 tp_is_empty!5463)))

(declare-fun b!212189 () Bool)

(declare-fun res!103752 () Bool)

(assert (=> b!212189 (=> (not res!103752) (not e!138077))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!212189 (= res!103752 (validKeyInArray!0 k0!843))))

(declare-fun b!212190 () Bool)

(declare-fun res!103757 () Bool)

(assert (=> b!212190 (=> (not res!103757) (not e!138077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10130 (_ BitVec 32)) Bool)

(assert (=> b!212190 (= res!103757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!212191 () Bool)

(declare-fun e!138081 () Bool)

(assert (=> b!212191 (= e!138081 tp_is_empty!5463)))

(declare-fun b!212192 () Bool)

(declare-fun res!103756 () Bool)

(assert (=> b!212192 (=> (not res!103756) (not e!138077))))

(declare-datatypes ((List!3112 0))(
  ( (Nil!3109) (Cons!3108 (h!3750 (_ BitVec 64)) (t!8065 List!3112)) )
))
(declare-fun arrayNoDuplicates!0 (array!10130 (_ BitVec 32) List!3112) Bool)

(assert (=> b!212192 (= res!103756 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3109))))

(declare-fun b!212193 () Bool)

(assert (=> b!212193 (= e!138078 (= lt!109373 (+!571 lt!109376 (tuple2!4199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun b!212194 () Bool)

(declare-fun res!103754 () Bool)

(assert (=> b!212194 (=> (not res!103754) (not e!138077))))

(assert (=> b!212194 (= res!103754 (and (= (size!5132 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5133 _keys!825) (size!5132 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!9284 () Bool)

(declare-fun mapRes!9284 () Bool)

(assert (=> mapIsEmpty!9284 mapRes!9284))

(declare-fun mapNonEmpty!9284 () Bool)

(declare-fun tp!19864 () Bool)

(assert (=> mapNonEmpty!9284 (= mapRes!9284 (and tp!19864 e!138082))))

(declare-fun mapRest!9284 () (Array (_ BitVec 32) ValueCell!2388))

(declare-fun mapValue!9284 () ValueCell!2388)

(declare-fun mapKey!9284 () (_ BitVec 32))

(assert (=> mapNonEmpty!9284 (= (arr!4807 _values!649) (store mapRest!9284 mapKey!9284 mapValue!9284))))

(declare-fun res!103758 () Bool)

(assert (=> start!21102 (=> (not res!103758) (not e!138077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21102 (= res!103758 (validMask!0 mask!1149))))

(assert (=> start!21102 e!138077))

(declare-fun e!138080 () Bool)

(declare-fun array_inv!3171 (array!10128) Bool)

(assert (=> start!21102 (and (array_inv!3171 _values!649) e!138080)))

(assert (=> start!21102 true))

(assert (=> start!21102 tp_is_empty!5463))

(declare-fun array_inv!3172 (array!10130) Bool)

(assert (=> start!21102 (array_inv!3172 _keys!825)))

(assert (=> start!21102 tp!19865))

(declare-fun b!212195 () Bool)

(declare-fun res!103755 () Bool)

(assert (=> b!212195 (=> (not res!103755) (not e!138077))))

(assert (=> b!212195 (= res!103755 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5133 _keys!825))))))

(declare-fun b!212196 () Bool)

(assert (=> b!212196 (= e!138080 (and e!138081 mapRes!9284))))

(declare-fun condMapEmpty!9284 () Bool)

(declare-fun mapDefault!9284 () ValueCell!2388)

(assert (=> b!212196 (= condMapEmpty!9284 (= (arr!4807 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2388)) mapDefault!9284)))))

(assert (= (and start!21102 res!103758) b!212194))

(assert (= (and b!212194 res!103754) b!212190))

(assert (= (and b!212190 res!103757) b!212192))

(assert (= (and b!212192 res!103756) b!212195))

(assert (= (and b!212195 res!103755) b!212189))

(assert (= (and b!212189 res!103752) b!212187))

(assert (= (and b!212187 res!103753) b!212186))

(assert (= (and b!212186 (not res!103759)) b!212193))

(assert (= (and b!212196 condMapEmpty!9284) mapIsEmpty!9284))

(assert (= (and b!212196 (not condMapEmpty!9284)) mapNonEmpty!9284))

(get-info :version)

(assert (= (and mapNonEmpty!9284 ((_ is ValueCellFull!2388) mapValue!9284)) b!212188))

(assert (= (and b!212196 ((_ is ValueCellFull!2388) mapDefault!9284)) b!212191))

(assert (= start!21102 b!212196))

(declare-fun m!240007 () Bool)

(assert (=> b!212190 m!240007))

(declare-fun m!240009 () Bool)

(assert (=> b!212189 m!240009))

(declare-fun m!240011 () Bool)

(assert (=> b!212187 m!240011))

(declare-fun m!240013 () Bool)

(assert (=> b!212186 m!240013))

(declare-fun m!240015 () Bool)

(assert (=> b!212186 m!240015))

(declare-fun m!240017 () Bool)

(assert (=> b!212186 m!240017))

(declare-fun m!240019 () Bool)

(assert (=> b!212186 m!240019))

(declare-fun m!240021 () Bool)

(assert (=> b!212186 m!240021))

(declare-fun m!240023 () Bool)

(assert (=> b!212186 m!240023))

(declare-fun m!240025 () Bool)

(assert (=> b!212186 m!240025))

(declare-fun m!240027 () Bool)

(assert (=> b!212193 m!240027))

(declare-fun m!240029 () Bool)

(assert (=> b!212192 m!240029))

(declare-fun m!240031 () Bool)

(assert (=> mapNonEmpty!9284 m!240031))

(declare-fun m!240033 () Bool)

(assert (=> start!21102 m!240033))

(declare-fun m!240035 () Bool)

(assert (=> start!21102 m!240035))

(declare-fun m!240037 () Bool)

(assert (=> start!21102 m!240037))

(check-sat (not mapNonEmpty!9284) (not b_next!5601) (not b!212190) (not b!212192) (not start!21102) (not b!212186) b_and!12449 (not b!212193) tp_is_empty!5463 (not b!212189))
(check-sat b_and!12449 (not b_next!5601))
(get-model)

(declare-fun d!58023 () Bool)

(assert (=> d!58023 (= (validMask!0 mask!1149) (and (or (= mask!1149 #b00000000000000000000000000000111) (= mask!1149 #b00000000000000000000000000001111) (= mask!1149 #b00000000000000000000000000011111) (= mask!1149 #b00000000000000000000000000111111) (= mask!1149 #b00000000000000000000000001111111) (= mask!1149 #b00000000000000000000000011111111) (= mask!1149 #b00000000000000000000000111111111) (= mask!1149 #b00000000000000000000001111111111) (= mask!1149 #b00000000000000000000011111111111) (= mask!1149 #b00000000000000000000111111111111) (= mask!1149 #b00000000000000000001111111111111) (= mask!1149 #b00000000000000000011111111111111) (= mask!1149 #b00000000000000000111111111111111) (= mask!1149 #b00000000000000001111111111111111) (= mask!1149 #b00000000000000011111111111111111) (= mask!1149 #b00000000000000111111111111111111) (= mask!1149 #b00000000000001111111111111111111) (= mask!1149 #b00000000000011111111111111111111) (= mask!1149 #b00000000000111111111111111111111) (= mask!1149 #b00000000001111111111111111111111) (= mask!1149 #b00000000011111111111111111111111) (= mask!1149 #b00000000111111111111111111111111) (= mask!1149 #b00000001111111111111111111111111) (= mask!1149 #b00000011111111111111111111111111) (= mask!1149 #b00000111111111111111111111111111) (= mask!1149 #b00001111111111111111111111111111) (= mask!1149 #b00011111111111111111111111111111) (= mask!1149 #b00111111111111111111111111111111)) (bvsle mask!1149 #b00111111111111111111111111111111)))))

(assert (=> start!21102 d!58023))

(declare-fun d!58025 () Bool)

(assert (=> d!58025 (= (array_inv!3171 _values!649) (bvsge (size!5132 _values!649) #b00000000000000000000000000000000))))

(assert (=> start!21102 d!58025))

(declare-fun d!58027 () Bool)

(assert (=> d!58027 (= (array_inv!3172 _keys!825) (bvsge (size!5133 _keys!825) #b00000000000000000000000000000000))))

(assert (=> start!21102 d!58027))

(declare-fun bm!20094 () Bool)

(declare-fun call!20098 () Bool)

(declare-fun lt!109458 () ListLongMap!3125)

(declare-fun contains!1409 (ListLongMap!3125 (_ BitVec 64)) Bool)

(assert (=> bm!20094 (= call!20098 (contains!1409 lt!109458 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!212272 () Bool)

(declare-fun c!35772 () Bool)

(assert (=> b!212272 (= c!35772 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!138136 () ListLongMap!3125)

(declare-fun e!138129 () ListLongMap!3125)

(assert (=> b!212272 (= e!138136 e!138129)))

(declare-fun bm!20095 () Bool)

(declare-fun call!20103 () ListLongMap!3125)

(declare-fun call!20102 () ListLongMap!3125)

(assert (=> bm!20095 (= call!20103 call!20102)))

(declare-fun b!212273 () Bool)

(declare-fun e!138138 () Bool)

(declare-fun apply!196 (ListLongMap!3125 (_ BitVec 64)) V!6931)

(assert (=> b!212273 (= e!138138 (= (apply!196 lt!109458 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun b!212274 () Bool)

(declare-fun call!20097 () ListLongMap!3125)

(assert (=> b!212274 (= e!138136 call!20097)))

(declare-fun b!212275 () Bool)

(declare-fun e!138130 () Bool)

(declare-fun call!20101 () Bool)

(assert (=> b!212275 (= e!138130 (not call!20101))))

(declare-fun d!58029 () Bool)

(declare-fun e!138132 () Bool)

(assert (=> d!58029 e!138132))

(declare-fun res!103802 () Bool)

(assert (=> d!58029 (=> (not res!103802) (not e!138132))))

(assert (=> d!58029 (= res!103802 (or (bvsge #b00000000000000000000000000000000 (size!5133 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))))

(declare-fun lt!109463 () ListLongMap!3125)

(assert (=> d!58029 (= lt!109458 lt!109463)))

(declare-fun lt!109465 () Unit!6443)

(declare-fun e!138128 () Unit!6443)

(assert (=> d!58029 (= lt!109465 e!138128)))

(declare-fun c!35773 () Bool)

(declare-fun e!138135 () Bool)

(assert (=> d!58029 (= c!35773 e!138135)))

(declare-fun res!103810 () Bool)

(assert (=> d!58029 (=> (not res!103810) (not e!138135))))

(assert (=> d!58029 (= res!103810 (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(declare-fun e!138131 () ListLongMap!3125)

(assert (=> d!58029 (= lt!109463 e!138131)))

(declare-fun c!35777 () Bool)

(assert (=> d!58029 (= c!35777 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58029 (validMask!0 mask!1149)))

(assert (=> d!58029 (= (getCurrentListMap!1106 _keys!825 lt!109372 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!109458)))

(declare-fun e!138133 () Bool)

(declare-fun b!212276 () Bool)

(declare-fun get!2573 (ValueCell!2388 V!6931) V!6931)

(declare-fun dynLambda!534 (Int (_ BitVec 64)) V!6931)

(assert (=> b!212276 (= e!138133 (= (apply!196 lt!109458 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)) (get!2573 (select (arr!4807 lt!109372) #b00000000000000000000000000000000) (dynLambda!534 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!212276 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5132 lt!109372)))))

(assert (=> b!212276 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(declare-fun b!212277 () Bool)

(assert (=> b!212277 (= e!138129 call!20103)))

(declare-fun b!212278 () Bool)

(declare-fun e!138137 () Bool)

(assert (=> b!212278 (= e!138137 (validKeyInArray!0 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!212279 () Bool)

(assert (=> b!212279 (= e!138129 call!20097)))

(declare-fun b!212280 () Bool)

(declare-fun e!138127 () Bool)

(assert (=> b!212280 (= e!138127 e!138133)))

(declare-fun res!103806 () Bool)

(assert (=> b!212280 (=> (not res!103806) (not e!138133))))

(assert (=> b!212280 (= res!103806 (contains!1409 lt!109458 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!212280 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(declare-fun b!212281 () Bool)

(declare-fun lt!109452 () Unit!6443)

(assert (=> b!212281 (= e!138128 lt!109452)))

(declare-fun lt!109462 () ListLongMap!3125)

(assert (=> b!212281 (= lt!109462 (getCurrentListMapNoExtraKeys!505 _keys!825 lt!109372 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109449 () (_ BitVec 64))

(assert (=> b!212281 (= lt!109449 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109445 () (_ BitVec 64))

(assert (=> b!212281 (= lt!109445 (select (arr!4808 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109451 () Unit!6443)

(declare-fun addStillContains!172 (ListLongMap!3125 (_ BitVec 64) V!6931 (_ BitVec 64)) Unit!6443)

(assert (=> b!212281 (= lt!109451 (addStillContains!172 lt!109462 lt!109449 zeroValue!615 lt!109445))))

(assert (=> b!212281 (contains!1409 (+!571 lt!109462 (tuple2!4199 lt!109449 zeroValue!615)) lt!109445)))

(declare-fun lt!109461 () Unit!6443)

(assert (=> b!212281 (= lt!109461 lt!109451)))

(declare-fun lt!109454 () ListLongMap!3125)

(assert (=> b!212281 (= lt!109454 (getCurrentListMapNoExtraKeys!505 _keys!825 lt!109372 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109459 () (_ BitVec 64))

(assert (=> b!212281 (= lt!109459 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109446 () (_ BitVec 64))

(assert (=> b!212281 (= lt!109446 (select (arr!4808 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109457 () Unit!6443)

(declare-fun addApplyDifferent!172 (ListLongMap!3125 (_ BitVec 64) V!6931 (_ BitVec 64)) Unit!6443)

(assert (=> b!212281 (= lt!109457 (addApplyDifferent!172 lt!109454 lt!109459 minValue!615 lt!109446))))

(assert (=> b!212281 (= (apply!196 (+!571 lt!109454 (tuple2!4199 lt!109459 minValue!615)) lt!109446) (apply!196 lt!109454 lt!109446))))

(declare-fun lt!109456 () Unit!6443)

(assert (=> b!212281 (= lt!109456 lt!109457)))

(declare-fun lt!109464 () ListLongMap!3125)

(assert (=> b!212281 (= lt!109464 (getCurrentListMapNoExtraKeys!505 _keys!825 lt!109372 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109460 () (_ BitVec 64))

(assert (=> b!212281 (= lt!109460 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109444 () (_ BitVec 64))

(assert (=> b!212281 (= lt!109444 (select (arr!4808 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109450 () Unit!6443)

(assert (=> b!212281 (= lt!109450 (addApplyDifferent!172 lt!109464 lt!109460 zeroValue!615 lt!109444))))

(assert (=> b!212281 (= (apply!196 (+!571 lt!109464 (tuple2!4199 lt!109460 zeroValue!615)) lt!109444) (apply!196 lt!109464 lt!109444))))

(declare-fun lt!109447 () Unit!6443)

(assert (=> b!212281 (= lt!109447 lt!109450)))

(declare-fun lt!109448 () ListLongMap!3125)

(assert (=> b!212281 (= lt!109448 (getCurrentListMapNoExtraKeys!505 _keys!825 lt!109372 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109453 () (_ BitVec 64))

(assert (=> b!212281 (= lt!109453 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109455 () (_ BitVec 64))

(assert (=> b!212281 (= lt!109455 (select (arr!4808 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!212281 (= lt!109452 (addApplyDifferent!172 lt!109448 lt!109453 minValue!615 lt!109455))))

(assert (=> b!212281 (= (apply!196 (+!571 lt!109448 (tuple2!4199 lt!109453 minValue!615)) lt!109455) (apply!196 lt!109448 lt!109455))))

(declare-fun b!212282 () Bool)

(declare-fun e!138134 () Bool)

(assert (=> b!212282 (= e!138134 e!138138)))

(declare-fun res!103803 () Bool)

(assert (=> b!212282 (= res!103803 call!20098)))

(assert (=> b!212282 (=> (not res!103803) (not e!138138))))

(declare-fun b!212283 () Bool)

(declare-fun res!103809 () Bool)

(assert (=> b!212283 (=> (not res!103809) (not e!138132))))

(assert (=> b!212283 (= res!103809 e!138127)))

(declare-fun res!103804 () Bool)

(assert (=> b!212283 (=> res!103804 e!138127)))

(assert (=> b!212283 (= res!103804 (not e!138137))))

(declare-fun res!103808 () Bool)

(assert (=> b!212283 (=> (not res!103808) (not e!138137))))

(assert (=> b!212283 (= res!103808 (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(declare-fun b!212284 () Bool)

(declare-fun e!138139 () Bool)

(assert (=> b!212284 (= e!138130 e!138139)))

(declare-fun res!103807 () Bool)

(assert (=> b!212284 (= res!103807 call!20101)))

(assert (=> b!212284 (=> (not res!103807) (not e!138139))))

(declare-fun call!20099 () ListLongMap!3125)

(declare-fun bm!20096 () Bool)

(assert (=> bm!20096 (= call!20099 (getCurrentListMapNoExtraKeys!505 _keys!825 lt!109372 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!212285 () Bool)

(assert (=> b!212285 (= e!138139 (= (apply!196 lt!109458 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!212286 () Bool)

(declare-fun call!20100 () ListLongMap!3125)

(assert (=> b!212286 (= e!138131 (+!571 call!20100 (tuple2!4199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!212287 () Bool)

(declare-fun res!103805 () Bool)

(assert (=> b!212287 (=> (not res!103805) (not e!138132))))

(assert (=> b!212287 (= res!103805 e!138130)))

(declare-fun c!35774 () Bool)

(assert (=> b!212287 (= c!35774 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!212288 () Bool)

(assert (=> b!212288 (= e!138131 e!138136)))

(declare-fun c!35775 () Bool)

(assert (=> b!212288 (= c!35775 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!20097 () Bool)

(assert (=> bm!20097 (= call!20097 call!20100)))

(declare-fun bm!20098 () Bool)

(assert (=> bm!20098 (= call!20102 call!20099)))

(declare-fun bm!20099 () Bool)

(assert (=> bm!20099 (= call!20101 (contains!1409 lt!109458 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!212289 () Bool)

(assert (=> b!212289 (= e!138132 e!138134)))

(declare-fun c!35776 () Bool)

(assert (=> b!212289 (= c!35776 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!212290 () Bool)

(declare-fun Unit!6447 () Unit!6443)

(assert (=> b!212290 (= e!138128 Unit!6447)))

(declare-fun b!212291 () Bool)

(assert (=> b!212291 (= e!138135 (validKeyInArray!0 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!212292 () Bool)

(assert (=> b!212292 (= e!138134 (not call!20098))))

(declare-fun bm!20100 () Bool)

(assert (=> bm!20100 (= call!20100 (+!571 (ite c!35777 call!20099 (ite c!35775 call!20102 call!20103)) (ite (or c!35777 c!35775) (tuple2!4199 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(assert (= (and d!58029 c!35777) b!212286))

(assert (= (and d!58029 (not c!35777)) b!212288))

(assert (= (and b!212288 c!35775) b!212274))

(assert (= (and b!212288 (not c!35775)) b!212272))

(assert (= (and b!212272 c!35772) b!212279))

(assert (= (and b!212272 (not c!35772)) b!212277))

(assert (= (or b!212279 b!212277) bm!20095))

(assert (= (or b!212274 bm!20095) bm!20098))

(assert (= (or b!212274 b!212279) bm!20097))

(assert (= (or b!212286 bm!20098) bm!20096))

(assert (= (or b!212286 bm!20097) bm!20100))

(assert (= (and d!58029 res!103810) b!212291))

(assert (= (and d!58029 c!35773) b!212281))

(assert (= (and d!58029 (not c!35773)) b!212290))

(assert (= (and d!58029 res!103802) b!212283))

(assert (= (and b!212283 res!103808) b!212278))

(assert (= (and b!212283 (not res!103804)) b!212280))

(assert (= (and b!212280 res!103806) b!212276))

(assert (= (and b!212283 res!103809) b!212287))

(assert (= (and b!212287 c!35774) b!212284))

(assert (= (and b!212287 (not c!35774)) b!212275))

(assert (= (and b!212284 res!103807) b!212285))

(assert (= (or b!212284 b!212275) bm!20099))

(assert (= (and b!212287 res!103805) b!212289))

(assert (= (and b!212289 c!35776) b!212282))

(assert (= (and b!212289 (not c!35776)) b!212292))

(assert (= (and b!212282 res!103803) b!212273))

(assert (= (or b!212282 b!212292) bm!20094))

(declare-fun b_lambda!7737 () Bool)

(assert (=> (not b_lambda!7737) (not b!212276)))

(declare-fun t!8069 () Bool)

(declare-fun tb!2913 () Bool)

(assert (=> (and start!21102 (= defaultEntry!657 defaultEntry!657) t!8069) tb!2913))

(declare-fun result!5011 () Bool)

(assert (=> tb!2913 (= result!5011 tp_is_empty!5463)))

(assert (=> b!212276 t!8069))

(declare-fun b_and!12453 () Bool)

(assert (= b_and!12449 (and (=> t!8069 result!5011) b_and!12453)))

(declare-fun m!240071 () Bool)

(assert (=> b!212281 m!240071))

(declare-fun m!240073 () Bool)

(assert (=> b!212281 m!240073))

(assert (=> b!212281 m!240013))

(declare-fun m!240075 () Bool)

(assert (=> b!212281 m!240075))

(declare-fun m!240077 () Bool)

(assert (=> b!212281 m!240077))

(declare-fun m!240079 () Bool)

(assert (=> b!212281 m!240079))

(declare-fun m!240081 () Bool)

(assert (=> b!212281 m!240081))

(declare-fun m!240083 () Bool)

(assert (=> b!212281 m!240083))

(declare-fun m!240085 () Bool)

(assert (=> b!212281 m!240085))

(declare-fun m!240087 () Bool)

(assert (=> b!212281 m!240087))

(assert (=> b!212281 m!240071))

(declare-fun m!240089 () Bool)

(assert (=> b!212281 m!240089))

(declare-fun m!240091 () Bool)

(assert (=> b!212281 m!240091))

(assert (=> b!212281 m!240075))

(declare-fun m!240093 () Bool)

(assert (=> b!212281 m!240093))

(assert (=> b!212281 m!240083))

(declare-fun m!240095 () Bool)

(assert (=> b!212281 m!240095))

(declare-fun m!240097 () Bool)

(assert (=> b!212281 m!240097))

(declare-fun m!240099 () Bool)

(assert (=> b!212281 m!240099))

(declare-fun m!240101 () Bool)

(assert (=> b!212281 m!240101))

(assert (=> b!212281 m!240097))

(assert (=> b!212291 m!240085))

(assert (=> b!212291 m!240085))

(declare-fun m!240103 () Bool)

(assert (=> b!212291 m!240103))

(assert (=> bm!20096 m!240013))

(assert (=> b!212280 m!240085))

(assert (=> b!212280 m!240085))

(declare-fun m!240105 () Bool)

(assert (=> b!212280 m!240105))

(declare-fun m!240107 () Bool)

(assert (=> bm!20099 m!240107))

(declare-fun m!240109 () Bool)

(assert (=> b!212286 m!240109))

(declare-fun m!240111 () Bool)

(assert (=> bm!20100 m!240111))

(declare-fun m!240113 () Bool)

(assert (=> b!212285 m!240113))

(assert (=> d!58029 m!240033))

(declare-fun m!240115 () Bool)

(assert (=> bm!20094 m!240115))

(declare-fun m!240117 () Bool)

(assert (=> b!212276 m!240117))

(declare-fun m!240119 () Bool)

(assert (=> b!212276 m!240119))

(declare-fun m!240121 () Bool)

(assert (=> b!212276 m!240121))

(assert (=> b!212276 m!240085))

(declare-fun m!240123 () Bool)

(assert (=> b!212276 m!240123))

(assert (=> b!212276 m!240117))

(assert (=> b!212276 m!240085))

(assert (=> b!212276 m!240119))

(assert (=> b!212278 m!240085))

(assert (=> b!212278 m!240085))

(assert (=> b!212278 m!240103))

(declare-fun m!240125 () Bool)

(assert (=> b!212273 m!240125))

(assert (=> b!212186 d!58029))

(declare-fun b!212319 () Bool)

(declare-fun res!103821 () Bool)

(declare-fun e!138154 () Bool)

(assert (=> b!212319 (=> (not res!103821) (not e!138154))))

(declare-fun lt!109486 () ListLongMap!3125)

(assert (=> b!212319 (= res!103821 (not (contains!1409 lt!109486 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!212320 () Bool)

(declare-fun e!138155 () Bool)

(declare-fun isEmpty!502 (ListLongMap!3125) Bool)

(assert (=> b!212320 (= e!138155 (isEmpty!502 lt!109486))))

(declare-fun b!212321 () Bool)

(assert (=> b!212321 (= e!138155 (= lt!109486 (getCurrentListMapNoExtraKeys!505 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!212323 () Bool)

(declare-fun e!138159 () Bool)

(assert (=> b!212323 (= e!138159 (validKeyInArray!0 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!212323 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!212324 () Bool)

(declare-fun e!138160 () ListLongMap!3125)

(declare-fun e!138157 () ListLongMap!3125)

(assert (=> b!212324 (= e!138160 e!138157)))

(declare-fun c!35787 () Bool)

(assert (=> b!212324 (= c!35787 (validKeyInArray!0 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!212325 () Bool)

(assert (=> b!212325 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(assert (=> b!212325 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5132 _values!649)))))

(declare-fun e!138158 () Bool)

(assert (=> b!212325 (= e!138158 (= (apply!196 lt!109486 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)) (get!2573 (select (arr!4807 _values!649) #b00000000000000000000000000000000) (dynLambda!534 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun call!20106 () ListLongMap!3125)

(declare-fun bm!20103 () Bool)

(assert (=> bm!20103 (= call!20106 (getCurrentListMapNoExtraKeys!505 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!212326 () Bool)

(declare-fun e!138156 () Bool)

(assert (=> b!212326 (= e!138156 e!138155)))

(declare-fun c!35786 () Bool)

(assert (=> b!212326 (= c!35786 (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(declare-fun b!212327 () Bool)

(assert (=> b!212327 (= e!138154 e!138156)))

(declare-fun c!35789 () Bool)

(assert (=> b!212327 (= c!35789 e!138159)))

(declare-fun res!103820 () Bool)

(assert (=> b!212327 (=> (not res!103820) (not e!138159))))

(assert (=> b!212327 (= res!103820 (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(declare-fun b!212328 () Bool)

(assert (=> b!212328 (= e!138157 call!20106)))

(declare-fun b!212329 () Bool)

(assert (=> b!212329 (= e!138156 e!138158)))

(assert (=> b!212329 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(declare-fun res!103819 () Bool)

(assert (=> b!212329 (= res!103819 (contains!1409 lt!109486 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!212329 (=> (not res!103819) (not e!138158))))

(declare-fun b!212330 () Bool)

(declare-fun lt!109485 () Unit!6443)

(declare-fun lt!109481 () Unit!6443)

(assert (=> b!212330 (= lt!109485 lt!109481)))

(declare-fun lt!109483 () V!6931)

(declare-fun lt!109480 () (_ BitVec 64))

(declare-fun lt!109484 () ListLongMap!3125)

(declare-fun lt!109482 () (_ BitVec 64))

(assert (=> b!212330 (not (contains!1409 (+!571 lt!109484 (tuple2!4199 lt!109480 lt!109483)) lt!109482))))

(declare-fun addStillNotContains!107 (ListLongMap!3125 (_ BitVec 64) V!6931 (_ BitVec 64)) Unit!6443)

(assert (=> b!212330 (= lt!109481 (addStillNotContains!107 lt!109484 lt!109480 lt!109483 lt!109482))))

(assert (=> b!212330 (= lt!109482 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!212330 (= lt!109483 (get!2573 (select (arr!4807 _values!649) #b00000000000000000000000000000000) (dynLambda!534 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!212330 (= lt!109480 (select (arr!4808 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!212330 (= lt!109484 call!20106)))

(assert (=> b!212330 (= e!138157 (+!571 call!20106 (tuple2!4199 (select (arr!4808 _keys!825) #b00000000000000000000000000000000) (get!2573 (select (arr!4807 _values!649) #b00000000000000000000000000000000) (dynLambda!534 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!212322 () Bool)

(assert (=> b!212322 (= e!138160 (ListLongMap!3126 Nil!3108))))

(declare-fun d!58031 () Bool)

(assert (=> d!58031 e!138154))

(declare-fun res!103822 () Bool)

(assert (=> d!58031 (=> (not res!103822) (not e!138154))))

(assert (=> d!58031 (= res!103822 (not (contains!1409 lt!109486 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!58031 (= lt!109486 e!138160)))

(declare-fun c!35788 () Bool)

(assert (=> d!58031 (= c!35788 (bvsge #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(assert (=> d!58031 (validMask!0 mask!1149)))

(assert (=> d!58031 (= (getCurrentListMapNoExtraKeys!505 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!109486)))

(assert (= (and d!58031 c!35788) b!212322))

(assert (= (and d!58031 (not c!35788)) b!212324))

(assert (= (and b!212324 c!35787) b!212330))

(assert (= (and b!212324 (not c!35787)) b!212328))

(assert (= (or b!212330 b!212328) bm!20103))

(assert (= (and d!58031 res!103822) b!212319))

(assert (= (and b!212319 res!103821) b!212327))

(assert (= (and b!212327 res!103820) b!212323))

(assert (= (and b!212327 c!35789) b!212329))

(assert (= (and b!212327 (not c!35789)) b!212326))

(assert (= (and b!212329 res!103819) b!212325))

(assert (= (and b!212326 c!35786) b!212321))

(assert (= (and b!212326 (not c!35786)) b!212320))

(declare-fun b_lambda!7739 () Bool)

(assert (=> (not b_lambda!7739) (not b!212325)))

(assert (=> b!212325 t!8069))

(declare-fun b_and!12455 () Bool)

(assert (= b_and!12453 (and (=> t!8069 result!5011) b_and!12455)))

(declare-fun b_lambda!7741 () Bool)

(assert (=> (not b_lambda!7741) (not b!212330)))

(assert (=> b!212330 t!8069))

(declare-fun b_and!12457 () Bool)

(assert (= b_and!12455 (and (=> t!8069 result!5011) b_and!12457)))

(declare-fun m!240127 () Bool)

(assert (=> bm!20103 m!240127))

(declare-fun m!240129 () Bool)

(assert (=> b!212330 m!240129))

(declare-fun m!240131 () Bool)

(assert (=> b!212330 m!240131))

(assert (=> b!212330 m!240119))

(declare-fun m!240133 () Bool)

(assert (=> b!212330 m!240133))

(assert (=> b!212330 m!240085))

(declare-fun m!240135 () Bool)

(assert (=> b!212330 m!240135))

(declare-fun m!240137 () Bool)

(assert (=> b!212330 m!240137))

(assert (=> b!212330 m!240135))

(assert (=> b!212330 m!240131))

(assert (=> b!212330 m!240119))

(declare-fun m!240139 () Bool)

(assert (=> b!212330 m!240139))

(declare-fun m!240141 () Bool)

(assert (=> b!212320 m!240141))

(declare-fun m!240143 () Bool)

(assert (=> b!212319 m!240143))

(assert (=> b!212323 m!240085))

(assert (=> b!212323 m!240085))

(assert (=> b!212323 m!240103))

(declare-fun m!240145 () Bool)

(assert (=> d!58031 m!240145))

(assert (=> d!58031 m!240033))

(assert (=> b!212329 m!240085))

(assert (=> b!212329 m!240085))

(declare-fun m!240147 () Bool)

(assert (=> b!212329 m!240147))

(assert (=> b!212324 m!240085))

(assert (=> b!212324 m!240085))

(assert (=> b!212324 m!240103))

(assert (=> b!212325 m!240131))

(assert (=> b!212325 m!240119))

(assert (=> b!212325 m!240085))

(assert (=> b!212325 m!240085))

(declare-fun m!240149 () Bool)

(assert (=> b!212325 m!240149))

(assert (=> b!212325 m!240131))

(assert (=> b!212325 m!240119))

(assert (=> b!212325 m!240139))

(assert (=> b!212321 m!240127))

(assert (=> b!212186 d!58031))

(declare-fun b!212331 () Bool)

(declare-fun res!103825 () Bool)

(declare-fun e!138161 () Bool)

(assert (=> b!212331 (=> (not res!103825) (not e!138161))))

(declare-fun lt!109493 () ListLongMap!3125)

(assert (=> b!212331 (= res!103825 (not (contains!1409 lt!109493 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!212332 () Bool)

(declare-fun e!138162 () Bool)

(assert (=> b!212332 (= e!138162 (isEmpty!502 lt!109493))))

(declare-fun b!212333 () Bool)

(assert (=> b!212333 (= e!138162 (= lt!109493 (getCurrentListMapNoExtraKeys!505 _keys!825 lt!109372 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!212335 () Bool)

(declare-fun e!138166 () Bool)

(assert (=> b!212335 (= e!138166 (validKeyInArray!0 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!212335 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!212336 () Bool)

(declare-fun e!138167 () ListLongMap!3125)

(declare-fun e!138164 () ListLongMap!3125)

(assert (=> b!212336 (= e!138167 e!138164)))

(declare-fun c!35791 () Bool)

(assert (=> b!212336 (= c!35791 (validKeyInArray!0 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!212337 () Bool)

(assert (=> b!212337 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(assert (=> b!212337 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5132 lt!109372)))))

(declare-fun e!138165 () Bool)

(assert (=> b!212337 (= e!138165 (= (apply!196 lt!109493 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)) (get!2573 (select (arr!4807 lt!109372) #b00000000000000000000000000000000) (dynLambda!534 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!20104 () Bool)

(declare-fun call!20107 () ListLongMap!3125)

(assert (=> bm!20104 (= call!20107 (getCurrentListMapNoExtraKeys!505 _keys!825 lt!109372 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!212338 () Bool)

(declare-fun e!138163 () Bool)

(assert (=> b!212338 (= e!138163 e!138162)))

(declare-fun c!35790 () Bool)

(assert (=> b!212338 (= c!35790 (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(declare-fun b!212339 () Bool)

(assert (=> b!212339 (= e!138161 e!138163)))

(declare-fun c!35793 () Bool)

(assert (=> b!212339 (= c!35793 e!138166)))

(declare-fun res!103824 () Bool)

(assert (=> b!212339 (=> (not res!103824) (not e!138166))))

(assert (=> b!212339 (= res!103824 (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(declare-fun b!212340 () Bool)

(assert (=> b!212340 (= e!138164 call!20107)))

(declare-fun b!212341 () Bool)

(assert (=> b!212341 (= e!138163 e!138165)))

(assert (=> b!212341 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(declare-fun res!103823 () Bool)

(assert (=> b!212341 (= res!103823 (contains!1409 lt!109493 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!212341 (=> (not res!103823) (not e!138165))))

(declare-fun b!212342 () Bool)

(declare-fun lt!109492 () Unit!6443)

(declare-fun lt!109488 () Unit!6443)

(assert (=> b!212342 (= lt!109492 lt!109488)))

(declare-fun lt!109490 () V!6931)

(declare-fun lt!109491 () ListLongMap!3125)

(declare-fun lt!109487 () (_ BitVec 64))

(declare-fun lt!109489 () (_ BitVec 64))

(assert (=> b!212342 (not (contains!1409 (+!571 lt!109491 (tuple2!4199 lt!109487 lt!109490)) lt!109489))))

(assert (=> b!212342 (= lt!109488 (addStillNotContains!107 lt!109491 lt!109487 lt!109490 lt!109489))))

(assert (=> b!212342 (= lt!109489 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!212342 (= lt!109490 (get!2573 (select (arr!4807 lt!109372) #b00000000000000000000000000000000) (dynLambda!534 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!212342 (= lt!109487 (select (arr!4808 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!212342 (= lt!109491 call!20107)))

(assert (=> b!212342 (= e!138164 (+!571 call!20107 (tuple2!4199 (select (arr!4808 _keys!825) #b00000000000000000000000000000000) (get!2573 (select (arr!4807 lt!109372) #b00000000000000000000000000000000) (dynLambda!534 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!212334 () Bool)

(assert (=> b!212334 (= e!138167 (ListLongMap!3126 Nil!3108))))

(declare-fun d!58033 () Bool)

(assert (=> d!58033 e!138161))

(declare-fun res!103826 () Bool)

(assert (=> d!58033 (=> (not res!103826) (not e!138161))))

(assert (=> d!58033 (= res!103826 (not (contains!1409 lt!109493 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!58033 (= lt!109493 e!138167)))

(declare-fun c!35792 () Bool)

(assert (=> d!58033 (= c!35792 (bvsge #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(assert (=> d!58033 (validMask!0 mask!1149)))

(assert (=> d!58033 (= (getCurrentListMapNoExtraKeys!505 _keys!825 lt!109372 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!109493)))

(assert (= (and d!58033 c!35792) b!212334))

(assert (= (and d!58033 (not c!35792)) b!212336))

(assert (= (and b!212336 c!35791) b!212342))

(assert (= (and b!212336 (not c!35791)) b!212340))

(assert (= (or b!212342 b!212340) bm!20104))

(assert (= (and d!58033 res!103826) b!212331))

(assert (= (and b!212331 res!103825) b!212339))

(assert (= (and b!212339 res!103824) b!212335))

(assert (= (and b!212339 c!35793) b!212341))

(assert (= (and b!212339 (not c!35793)) b!212338))

(assert (= (and b!212341 res!103823) b!212337))

(assert (= (and b!212338 c!35790) b!212333))

(assert (= (and b!212338 (not c!35790)) b!212332))

(declare-fun b_lambda!7743 () Bool)

(assert (=> (not b_lambda!7743) (not b!212337)))

(assert (=> b!212337 t!8069))

(declare-fun b_and!12459 () Bool)

(assert (= b_and!12457 (and (=> t!8069 result!5011) b_and!12459)))

(declare-fun b_lambda!7745 () Bool)

(assert (=> (not b_lambda!7745) (not b!212342)))

(assert (=> b!212342 t!8069))

(declare-fun b_and!12461 () Bool)

(assert (= b_and!12459 (and (=> t!8069 result!5011) b_and!12461)))

(declare-fun m!240151 () Bool)

(assert (=> bm!20104 m!240151))

(declare-fun m!240153 () Bool)

(assert (=> b!212342 m!240153))

(assert (=> b!212342 m!240117))

(assert (=> b!212342 m!240119))

(declare-fun m!240155 () Bool)

(assert (=> b!212342 m!240155))

(assert (=> b!212342 m!240085))

(declare-fun m!240157 () Bool)

(assert (=> b!212342 m!240157))

(declare-fun m!240159 () Bool)

(assert (=> b!212342 m!240159))

(assert (=> b!212342 m!240157))

(assert (=> b!212342 m!240117))

(assert (=> b!212342 m!240119))

(assert (=> b!212342 m!240121))

(declare-fun m!240161 () Bool)

(assert (=> b!212332 m!240161))

(declare-fun m!240163 () Bool)

(assert (=> b!212331 m!240163))

(assert (=> b!212335 m!240085))

(assert (=> b!212335 m!240085))

(assert (=> b!212335 m!240103))

(declare-fun m!240165 () Bool)

(assert (=> d!58033 m!240165))

(assert (=> d!58033 m!240033))

(assert (=> b!212341 m!240085))

(assert (=> b!212341 m!240085))

(declare-fun m!240167 () Bool)

(assert (=> b!212341 m!240167))

(assert (=> b!212336 m!240085))

(assert (=> b!212336 m!240085))

(assert (=> b!212336 m!240103))

(assert (=> b!212337 m!240117))

(assert (=> b!212337 m!240119))

(assert (=> b!212337 m!240085))

(assert (=> b!212337 m!240085))

(declare-fun m!240169 () Bool)

(assert (=> b!212337 m!240169))

(assert (=> b!212337 m!240117))

(assert (=> b!212337 m!240119))

(assert (=> b!212337 m!240121))

(assert (=> b!212333 m!240151))

(assert (=> b!212186 d!58033))

(declare-fun b!212349 () Bool)

(declare-fun e!138172 () Bool)

(declare-fun call!20112 () ListLongMap!3125)

(declare-fun call!20113 () ListLongMap!3125)

(assert (=> b!212349 (= e!138172 (= call!20112 (+!571 call!20113 (tuple2!4199 k0!843 v!520))))))

(declare-fun bm!20109 () Bool)

(assert (=> bm!20109 (= call!20112 (getCurrentListMapNoExtraKeys!505 _keys!825 (array!10129 (store (arr!4807 _values!649) i!601 (ValueCellFull!2388 v!520)) (size!5132 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun bm!20110 () Bool)

(assert (=> bm!20110 (= call!20113 (getCurrentListMapNoExtraKeys!505 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!212350 () Bool)

(declare-fun e!138173 () Bool)

(assert (=> b!212350 (= e!138173 e!138172)))

(declare-fun c!35796 () Bool)

(assert (=> b!212350 (= c!35796 (bvsle #b00000000000000000000000000000000 i!601))))

(declare-fun b!212351 () Bool)

(assert (=> b!212351 (= e!138172 (= call!20112 call!20113))))

(declare-fun d!58035 () Bool)

(assert (=> d!58035 e!138173))

(declare-fun res!103829 () Bool)

(assert (=> d!58035 (=> (not res!103829) (not e!138173))))

(assert (=> d!58035 (= res!103829 (and (or (not (bvsle #b00000000000000000000000000000000 i!601)) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5132 _values!649)))) (or (bvsle #b00000000000000000000000000000000 i!601) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5132 _values!649))))))))

(declare-fun lt!109496 () Unit!6443)

(declare-fun choose!1088 (array!10130 array!10128 (_ BitVec 32) (_ BitVec 32) V!6931 V!6931 (_ BitVec 32) (_ BitVec 64) V!6931 (_ BitVec 32) Int) Unit!6443)

(assert (=> d!58035 (= lt!109496 (choose!1088 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> d!58035 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(assert (=> d!58035 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!223 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657) lt!109496)))

(assert (= (and d!58035 res!103829) b!212350))

(assert (= (and b!212350 c!35796) b!212349))

(assert (= (and b!212350 (not c!35796)) b!212351))

(assert (= (or b!212349 b!212351) bm!20109))

(assert (= (or b!212349 b!212351) bm!20110))

(declare-fun m!240171 () Bool)

(assert (=> b!212349 m!240171))

(assert (=> bm!20109 m!240017))

(declare-fun m!240173 () Bool)

(assert (=> bm!20109 m!240173))

(assert (=> bm!20110 m!240025))

(declare-fun m!240175 () Bool)

(assert (=> d!58035 m!240175))

(assert (=> b!212186 d!58035))

(declare-fun bm!20111 () Bool)

(declare-fun call!20115 () Bool)

(declare-fun lt!109511 () ListLongMap!3125)

(assert (=> bm!20111 (= call!20115 (contains!1409 lt!109511 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!212352 () Bool)

(declare-fun c!35797 () Bool)

(assert (=> b!212352 (= c!35797 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!138183 () ListLongMap!3125)

(declare-fun e!138176 () ListLongMap!3125)

(assert (=> b!212352 (= e!138183 e!138176)))

(declare-fun bm!20112 () Bool)

(declare-fun call!20120 () ListLongMap!3125)

(declare-fun call!20119 () ListLongMap!3125)

(assert (=> bm!20112 (= call!20120 call!20119)))

(declare-fun b!212353 () Bool)

(declare-fun e!138185 () Bool)

(assert (=> b!212353 (= e!138185 (= (apply!196 lt!109511 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun b!212354 () Bool)

(declare-fun call!20114 () ListLongMap!3125)

(assert (=> b!212354 (= e!138183 call!20114)))

(declare-fun b!212355 () Bool)

(declare-fun e!138177 () Bool)

(declare-fun call!20118 () Bool)

(assert (=> b!212355 (= e!138177 (not call!20118))))

(declare-fun d!58037 () Bool)

(declare-fun e!138179 () Bool)

(assert (=> d!58037 e!138179))

(declare-fun res!103830 () Bool)

(assert (=> d!58037 (=> (not res!103830) (not e!138179))))

(assert (=> d!58037 (= res!103830 (or (bvsge #b00000000000000000000000000000000 (size!5133 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))))

(declare-fun lt!109516 () ListLongMap!3125)

(assert (=> d!58037 (= lt!109511 lt!109516)))

(declare-fun lt!109518 () Unit!6443)

(declare-fun e!138175 () Unit!6443)

(assert (=> d!58037 (= lt!109518 e!138175)))

(declare-fun c!35798 () Bool)

(declare-fun e!138182 () Bool)

(assert (=> d!58037 (= c!35798 e!138182)))

(declare-fun res!103838 () Bool)

(assert (=> d!58037 (=> (not res!103838) (not e!138182))))

(assert (=> d!58037 (= res!103838 (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(declare-fun e!138178 () ListLongMap!3125)

(assert (=> d!58037 (= lt!109516 e!138178)))

(declare-fun c!35802 () Bool)

(assert (=> d!58037 (= c!35802 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58037 (validMask!0 mask!1149)))

(assert (=> d!58037 (= (getCurrentListMap!1106 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!109511)))

(declare-fun b!212356 () Bool)

(declare-fun e!138180 () Bool)

(assert (=> b!212356 (= e!138180 (= (apply!196 lt!109511 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)) (get!2573 (select (arr!4807 _values!649) #b00000000000000000000000000000000) (dynLambda!534 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!212356 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5132 _values!649)))))

(assert (=> b!212356 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(declare-fun b!212357 () Bool)

(assert (=> b!212357 (= e!138176 call!20120)))

(declare-fun b!212358 () Bool)

(declare-fun e!138184 () Bool)

(assert (=> b!212358 (= e!138184 (validKeyInArray!0 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!212359 () Bool)

(assert (=> b!212359 (= e!138176 call!20114)))

(declare-fun b!212360 () Bool)

(declare-fun e!138174 () Bool)

(assert (=> b!212360 (= e!138174 e!138180)))

(declare-fun res!103834 () Bool)

(assert (=> b!212360 (=> (not res!103834) (not e!138180))))

(assert (=> b!212360 (= res!103834 (contains!1409 lt!109511 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!212360 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(declare-fun b!212361 () Bool)

(declare-fun lt!109505 () Unit!6443)

(assert (=> b!212361 (= e!138175 lt!109505)))

(declare-fun lt!109515 () ListLongMap!3125)

(assert (=> b!212361 (= lt!109515 (getCurrentListMapNoExtraKeys!505 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109502 () (_ BitVec 64))

(assert (=> b!212361 (= lt!109502 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109498 () (_ BitVec 64))

(assert (=> b!212361 (= lt!109498 (select (arr!4808 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109504 () Unit!6443)

(assert (=> b!212361 (= lt!109504 (addStillContains!172 lt!109515 lt!109502 zeroValue!615 lt!109498))))

(assert (=> b!212361 (contains!1409 (+!571 lt!109515 (tuple2!4199 lt!109502 zeroValue!615)) lt!109498)))

(declare-fun lt!109514 () Unit!6443)

(assert (=> b!212361 (= lt!109514 lt!109504)))

(declare-fun lt!109507 () ListLongMap!3125)

(assert (=> b!212361 (= lt!109507 (getCurrentListMapNoExtraKeys!505 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109512 () (_ BitVec 64))

(assert (=> b!212361 (= lt!109512 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109499 () (_ BitVec 64))

(assert (=> b!212361 (= lt!109499 (select (arr!4808 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109510 () Unit!6443)

(assert (=> b!212361 (= lt!109510 (addApplyDifferent!172 lt!109507 lt!109512 minValue!615 lt!109499))))

(assert (=> b!212361 (= (apply!196 (+!571 lt!109507 (tuple2!4199 lt!109512 minValue!615)) lt!109499) (apply!196 lt!109507 lt!109499))))

(declare-fun lt!109509 () Unit!6443)

(assert (=> b!212361 (= lt!109509 lt!109510)))

(declare-fun lt!109517 () ListLongMap!3125)

(assert (=> b!212361 (= lt!109517 (getCurrentListMapNoExtraKeys!505 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109513 () (_ BitVec 64))

(assert (=> b!212361 (= lt!109513 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109497 () (_ BitVec 64))

(assert (=> b!212361 (= lt!109497 (select (arr!4808 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109503 () Unit!6443)

(assert (=> b!212361 (= lt!109503 (addApplyDifferent!172 lt!109517 lt!109513 zeroValue!615 lt!109497))))

(assert (=> b!212361 (= (apply!196 (+!571 lt!109517 (tuple2!4199 lt!109513 zeroValue!615)) lt!109497) (apply!196 lt!109517 lt!109497))))

(declare-fun lt!109500 () Unit!6443)

(assert (=> b!212361 (= lt!109500 lt!109503)))

(declare-fun lt!109501 () ListLongMap!3125)

(assert (=> b!212361 (= lt!109501 (getCurrentListMapNoExtraKeys!505 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109506 () (_ BitVec 64))

(assert (=> b!212361 (= lt!109506 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109508 () (_ BitVec 64))

(assert (=> b!212361 (= lt!109508 (select (arr!4808 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!212361 (= lt!109505 (addApplyDifferent!172 lt!109501 lt!109506 minValue!615 lt!109508))))

(assert (=> b!212361 (= (apply!196 (+!571 lt!109501 (tuple2!4199 lt!109506 minValue!615)) lt!109508) (apply!196 lt!109501 lt!109508))))

(declare-fun b!212362 () Bool)

(declare-fun e!138181 () Bool)

(assert (=> b!212362 (= e!138181 e!138185)))

(declare-fun res!103831 () Bool)

(assert (=> b!212362 (= res!103831 call!20115)))

(assert (=> b!212362 (=> (not res!103831) (not e!138185))))

(declare-fun b!212363 () Bool)

(declare-fun res!103837 () Bool)

(assert (=> b!212363 (=> (not res!103837) (not e!138179))))

(assert (=> b!212363 (= res!103837 e!138174)))

(declare-fun res!103832 () Bool)

(assert (=> b!212363 (=> res!103832 e!138174)))

(assert (=> b!212363 (= res!103832 (not e!138184))))

(declare-fun res!103836 () Bool)

(assert (=> b!212363 (=> (not res!103836) (not e!138184))))

(assert (=> b!212363 (= res!103836 (bvslt #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(declare-fun b!212364 () Bool)

(declare-fun e!138186 () Bool)

(assert (=> b!212364 (= e!138177 e!138186)))

(declare-fun res!103835 () Bool)

(assert (=> b!212364 (= res!103835 call!20118)))

(assert (=> b!212364 (=> (not res!103835) (not e!138186))))

(declare-fun bm!20113 () Bool)

(declare-fun call!20116 () ListLongMap!3125)

(assert (=> bm!20113 (= call!20116 (getCurrentListMapNoExtraKeys!505 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!212365 () Bool)

(assert (=> b!212365 (= e!138186 (= (apply!196 lt!109511 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!212366 () Bool)

(declare-fun call!20117 () ListLongMap!3125)

(assert (=> b!212366 (= e!138178 (+!571 call!20117 (tuple2!4199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!212367 () Bool)

(declare-fun res!103833 () Bool)

(assert (=> b!212367 (=> (not res!103833) (not e!138179))))

(assert (=> b!212367 (= res!103833 e!138177)))

(declare-fun c!35799 () Bool)

(assert (=> b!212367 (= c!35799 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!212368 () Bool)

(assert (=> b!212368 (= e!138178 e!138183)))

(declare-fun c!35800 () Bool)

(assert (=> b!212368 (= c!35800 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!20114 () Bool)

(assert (=> bm!20114 (= call!20114 call!20117)))

(declare-fun bm!20115 () Bool)

(assert (=> bm!20115 (= call!20119 call!20116)))

(declare-fun bm!20116 () Bool)

(assert (=> bm!20116 (= call!20118 (contains!1409 lt!109511 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!212369 () Bool)

(assert (=> b!212369 (= e!138179 e!138181)))

(declare-fun c!35801 () Bool)

(assert (=> b!212369 (= c!35801 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!212370 () Bool)

(declare-fun Unit!6448 () Unit!6443)

(assert (=> b!212370 (= e!138175 Unit!6448)))

(declare-fun b!212371 () Bool)

(assert (=> b!212371 (= e!138182 (validKeyInArray!0 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!212372 () Bool)

(assert (=> b!212372 (= e!138181 (not call!20115))))

(declare-fun bm!20117 () Bool)

(assert (=> bm!20117 (= call!20117 (+!571 (ite c!35802 call!20116 (ite c!35800 call!20119 call!20120)) (ite (or c!35802 c!35800) (tuple2!4199 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(assert (= (and d!58037 c!35802) b!212366))

(assert (= (and d!58037 (not c!35802)) b!212368))

(assert (= (and b!212368 c!35800) b!212354))

(assert (= (and b!212368 (not c!35800)) b!212352))

(assert (= (and b!212352 c!35797) b!212359))

(assert (= (and b!212352 (not c!35797)) b!212357))

(assert (= (or b!212359 b!212357) bm!20112))

(assert (= (or b!212354 bm!20112) bm!20115))

(assert (= (or b!212354 b!212359) bm!20114))

(assert (= (or b!212366 bm!20115) bm!20113))

(assert (= (or b!212366 bm!20114) bm!20117))

(assert (= (and d!58037 res!103838) b!212371))

(assert (= (and d!58037 c!35798) b!212361))

(assert (= (and d!58037 (not c!35798)) b!212370))

(assert (= (and d!58037 res!103830) b!212363))

(assert (= (and b!212363 res!103836) b!212358))

(assert (= (and b!212363 (not res!103832)) b!212360))

(assert (= (and b!212360 res!103834) b!212356))

(assert (= (and b!212363 res!103837) b!212367))

(assert (= (and b!212367 c!35799) b!212364))

(assert (= (and b!212367 (not c!35799)) b!212355))

(assert (= (and b!212364 res!103835) b!212365))

(assert (= (or b!212364 b!212355) bm!20116))

(assert (= (and b!212367 res!103833) b!212369))

(assert (= (and b!212369 c!35801) b!212362))

(assert (= (and b!212369 (not c!35801)) b!212372))

(assert (= (and b!212362 res!103831) b!212353))

(assert (= (or b!212362 b!212372) bm!20111))

(declare-fun b_lambda!7747 () Bool)

(assert (=> (not b_lambda!7747) (not b!212356)))

(assert (=> b!212356 t!8069))

(declare-fun b_and!12463 () Bool)

(assert (= b_and!12461 (and (=> t!8069 result!5011) b_and!12463)))

(declare-fun m!240177 () Bool)

(assert (=> b!212361 m!240177))

(declare-fun m!240179 () Bool)

(assert (=> b!212361 m!240179))

(assert (=> b!212361 m!240025))

(declare-fun m!240181 () Bool)

(assert (=> b!212361 m!240181))

(declare-fun m!240183 () Bool)

(assert (=> b!212361 m!240183))

(declare-fun m!240185 () Bool)

(assert (=> b!212361 m!240185))

(declare-fun m!240187 () Bool)

(assert (=> b!212361 m!240187))

(declare-fun m!240189 () Bool)

(assert (=> b!212361 m!240189))

(assert (=> b!212361 m!240085))

(declare-fun m!240191 () Bool)

(assert (=> b!212361 m!240191))

(assert (=> b!212361 m!240177))

(declare-fun m!240193 () Bool)

(assert (=> b!212361 m!240193))

(declare-fun m!240195 () Bool)

(assert (=> b!212361 m!240195))

(assert (=> b!212361 m!240181))

(declare-fun m!240197 () Bool)

(assert (=> b!212361 m!240197))

(assert (=> b!212361 m!240189))

(declare-fun m!240199 () Bool)

(assert (=> b!212361 m!240199))

(declare-fun m!240201 () Bool)

(assert (=> b!212361 m!240201))

(declare-fun m!240203 () Bool)

(assert (=> b!212361 m!240203))

(declare-fun m!240205 () Bool)

(assert (=> b!212361 m!240205))

(assert (=> b!212361 m!240201))

(assert (=> b!212371 m!240085))

(assert (=> b!212371 m!240085))

(assert (=> b!212371 m!240103))

(assert (=> bm!20113 m!240025))

(assert (=> b!212360 m!240085))

(assert (=> b!212360 m!240085))

(declare-fun m!240207 () Bool)

(assert (=> b!212360 m!240207))

(declare-fun m!240209 () Bool)

(assert (=> bm!20116 m!240209))

(declare-fun m!240211 () Bool)

(assert (=> b!212366 m!240211))

(declare-fun m!240213 () Bool)

(assert (=> bm!20117 m!240213))

(declare-fun m!240215 () Bool)

(assert (=> b!212365 m!240215))

(assert (=> d!58037 m!240033))

(declare-fun m!240217 () Bool)

(assert (=> bm!20111 m!240217))

(assert (=> b!212356 m!240131))

(assert (=> b!212356 m!240119))

(assert (=> b!212356 m!240139))

(assert (=> b!212356 m!240085))

(declare-fun m!240219 () Bool)

(assert (=> b!212356 m!240219))

(assert (=> b!212356 m!240131))

(assert (=> b!212356 m!240085))

(assert (=> b!212356 m!240119))

(assert (=> b!212358 m!240085))

(assert (=> b!212358 m!240085))

(assert (=> b!212358 m!240103))

(declare-fun m!240221 () Bool)

(assert (=> b!212353 m!240221))

(assert (=> b!212186 d!58037))

(declare-fun d!58039 () Bool)

(declare-fun e!138189 () Bool)

(assert (=> d!58039 e!138189))

(declare-fun res!103843 () Bool)

(assert (=> d!58039 (=> (not res!103843) (not e!138189))))

(declare-fun lt!109530 () ListLongMap!3125)

(assert (=> d!58039 (= res!103843 (contains!1409 lt!109530 (_1!2109 (tuple2!4199 k0!843 v!520))))))

(declare-fun lt!109528 () List!3111)

(assert (=> d!58039 (= lt!109530 (ListLongMap!3126 lt!109528))))

(declare-fun lt!109529 () Unit!6443)

(declare-fun lt!109527 () Unit!6443)

(assert (=> d!58039 (= lt!109529 lt!109527)))

(declare-datatypes ((Option!259 0))(
  ( (Some!258 (v!4775 V!6931)) (None!257) )
))
(declare-fun getValueByKey!253 (List!3111 (_ BitVec 64)) Option!259)

(assert (=> d!58039 (= (getValueByKey!253 lt!109528 (_1!2109 (tuple2!4199 k0!843 v!520))) (Some!258 (_2!2109 (tuple2!4199 k0!843 v!520))))))

(declare-fun lemmaContainsTupThenGetReturnValue!142 (List!3111 (_ BitVec 64) V!6931) Unit!6443)

(assert (=> d!58039 (= lt!109527 (lemmaContainsTupThenGetReturnValue!142 lt!109528 (_1!2109 (tuple2!4199 k0!843 v!520)) (_2!2109 (tuple2!4199 k0!843 v!520))))))

(declare-fun insertStrictlySorted!144 (List!3111 (_ BitVec 64) V!6931) List!3111)

(assert (=> d!58039 (= lt!109528 (insertStrictlySorted!144 (toList!1578 lt!109378) (_1!2109 (tuple2!4199 k0!843 v!520)) (_2!2109 (tuple2!4199 k0!843 v!520))))))

(assert (=> d!58039 (= (+!571 lt!109378 (tuple2!4199 k0!843 v!520)) lt!109530)))

(declare-fun b!212377 () Bool)

(declare-fun res!103844 () Bool)

(assert (=> b!212377 (=> (not res!103844) (not e!138189))))

(assert (=> b!212377 (= res!103844 (= (getValueByKey!253 (toList!1578 lt!109530) (_1!2109 (tuple2!4199 k0!843 v!520))) (Some!258 (_2!2109 (tuple2!4199 k0!843 v!520)))))))

(declare-fun b!212378 () Bool)

(declare-fun contains!1410 (List!3111 tuple2!4198) Bool)

(assert (=> b!212378 (= e!138189 (contains!1410 (toList!1578 lt!109530) (tuple2!4199 k0!843 v!520)))))

(assert (= (and d!58039 res!103843) b!212377))

(assert (= (and b!212377 res!103844) b!212378))

(declare-fun m!240223 () Bool)

(assert (=> d!58039 m!240223))

(declare-fun m!240225 () Bool)

(assert (=> d!58039 m!240225))

(declare-fun m!240227 () Bool)

(assert (=> d!58039 m!240227))

(declare-fun m!240229 () Bool)

(assert (=> d!58039 m!240229))

(declare-fun m!240231 () Bool)

(assert (=> b!212377 m!240231))

(declare-fun m!240233 () Bool)

(assert (=> b!212378 m!240233))

(assert (=> b!212186 d!58039))

(declare-fun b!212387 () Bool)

(declare-fun e!138196 () Bool)

(declare-fun call!20123 () Bool)

(assert (=> b!212387 (= e!138196 call!20123)))

(declare-fun bm!20120 () Bool)

(assert (=> bm!20120 (= call!20123 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!825 mask!1149))))

(declare-fun b!212388 () Bool)

(declare-fun e!138197 () Bool)

(assert (=> b!212388 (= e!138197 e!138196)))

(declare-fun c!35805 () Bool)

(assert (=> b!212388 (= c!35805 (validKeyInArray!0 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!212389 () Bool)

(declare-fun e!138198 () Bool)

(assert (=> b!212389 (= e!138196 e!138198)))

(declare-fun lt!109539 () (_ BitVec 64))

(assert (=> b!212389 (= lt!109539 (select (arr!4808 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109538 () Unit!6443)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10130 (_ BitVec 64) (_ BitVec 32)) Unit!6443)

(assert (=> b!212389 (= lt!109538 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!825 lt!109539 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!212389 (arrayContainsKey!0 _keys!825 lt!109539 #b00000000000000000000000000000000)))

(declare-fun lt!109537 () Unit!6443)

(assert (=> b!212389 (= lt!109537 lt!109538)))

(declare-fun res!103849 () Bool)

(declare-datatypes ((SeekEntryResult!721 0))(
  ( (MissingZero!721 (index!5054 (_ BitVec 32))) (Found!721 (index!5055 (_ BitVec 32))) (Intermediate!721 (undefined!1533 Bool) (index!5056 (_ BitVec 32)) (x!22172 (_ BitVec 32))) (Undefined!721) (MissingVacant!721 (index!5057 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10130 (_ BitVec 32)) SeekEntryResult!721)

(assert (=> b!212389 (= res!103849 (= (seekEntryOrOpen!0 (select (arr!4808 _keys!825) #b00000000000000000000000000000000) _keys!825 mask!1149) (Found!721 #b00000000000000000000000000000000)))))

(assert (=> b!212389 (=> (not res!103849) (not e!138198))))

(declare-fun b!212390 () Bool)

(assert (=> b!212390 (= e!138198 call!20123)))

(declare-fun d!58041 () Bool)

(declare-fun res!103850 () Bool)

(assert (=> d!58041 (=> res!103850 e!138197)))

(assert (=> d!58041 (= res!103850 (bvsge #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(assert (=> d!58041 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149) e!138197)))

(assert (= (and d!58041 (not res!103850)) b!212388))

(assert (= (and b!212388 c!35805) b!212389))

(assert (= (and b!212388 (not c!35805)) b!212387))

(assert (= (and b!212389 res!103849) b!212390))

(assert (= (or b!212390 b!212387) bm!20120))

(declare-fun m!240235 () Bool)

(assert (=> bm!20120 m!240235))

(assert (=> b!212388 m!240085))

(assert (=> b!212388 m!240085))

(assert (=> b!212388 m!240103))

(assert (=> b!212389 m!240085))

(declare-fun m!240237 () Bool)

(assert (=> b!212389 m!240237))

(declare-fun m!240239 () Bool)

(assert (=> b!212389 m!240239))

(assert (=> b!212389 m!240085))

(declare-fun m!240241 () Bool)

(assert (=> b!212389 m!240241))

(assert (=> b!212190 d!58041))

(declare-fun d!58043 () Bool)

(assert (=> d!58043 (= (validKeyInArray!0 k0!843) (and (not (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!212189 d!58043))

(declare-fun b!212401 () Bool)

(declare-fun e!138208 () Bool)

(declare-fun e!138207 () Bool)

(assert (=> b!212401 (= e!138208 e!138207)))

(declare-fun c!35808 () Bool)

(assert (=> b!212401 (= c!35808 (validKeyInArray!0 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!212402 () Bool)

(declare-fun call!20126 () Bool)

(assert (=> b!212402 (= e!138207 call!20126)))

(declare-fun b!212403 () Bool)

(declare-fun e!138209 () Bool)

(declare-fun contains!1411 (List!3112 (_ BitVec 64)) Bool)

(assert (=> b!212403 (= e!138209 (contains!1411 Nil!3109 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!212404 () Bool)

(declare-fun e!138210 () Bool)

(assert (=> b!212404 (= e!138210 e!138208)))

(declare-fun res!103859 () Bool)

(assert (=> b!212404 (=> (not res!103859) (not e!138208))))

(assert (=> b!212404 (= res!103859 (not e!138209))))

(declare-fun res!103857 () Bool)

(assert (=> b!212404 (=> (not res!103857) (not e!138209))))

(assert (=> b!212404 (= res!103857 (validKeyInArray!0 (select (arr!4808 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!20123 () Bool)

(assert (=> bm!20123 (= call!20126 (arrayNoDuplicates!0 _keys!825 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!35808 (Cons!3108 (select (arr!4808 _keys!825) #b00000000000000000000000000000000) Nil!3109) Nil!3109)))))

(declare-fun b!212405 () Bool)

(assert (=> b!212405 (= e!138207 call!20126)))

(declare-fun d!58045 () Bool)

(declare-fun res!103858 () Bool)

(assert (=> d!58045 (=> res!103858 e!138210)))

(assert (=> d!58045 (= res!103858 (bvsge #b00000000000000000000000000000000 (size!5133 _keys!825)))))

(assert (=> d!58045 (= (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3109) e!138210)))

(assert (= (and d!58045 (not res!103858)) b!212404))

(assert (= (and b!212404 res!103857) b!212403))

(assert (= (and b!212404 res!103859) b!212401))

(assert (= (and b!212401 c!35808) b!212402))

(assert (= (and b!212401 (not c!35808)) b!212405))

(assert (= (or b!212402 b!212405) bm!20123))

(assert (=> b!212401 m!240085))

(assert (=> b!212401 m!240085))

(assert (=> b!212401 m!240103))

(assert (=> b!212403 m!240085))

(assert (=> b!212403 m!240085))

(declare-fun m!240243 () Bool)

(assert (=> b!212403 m!240243))

(assert (=> b!212404 m!240085))

(assert (=> b!212404 m!240085))

(assert (=> b!212404 m!240103))

(assert (=> bm!20123 m!240085))

(declare-fun m!240245 () Bool)

(assert (=> bm!20123 m!240245))

(assert (=> b!212192 d!58045))

(declare-fun d!58047 () Bool)

(declare-fun e!138211 () Bool)

(assert (=> d!58047 e!138211))

(declare-fun res!103860 () Bool)

(assert (=> d!58047 (=> (not res!103860) (not e!138211))))

(declare-fun lt!109543 () ListLongMap!3125)

(assert (=> d!58047 (= res!103860 (contains!1409 lt!109543 (_1!2109 (tuple2!4199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun lt!109541 () List!3111)

(assert (=> d!58047 (= lt!109543 (ListLongMap!3126 lt!109541))))

(declare-fun lt!109542 () Unit!6443)

(declare-fun lt!109540 () Unit!6443)

(assert (=> d!58047 (= lt!109542 lt!109540)))

(assert (=> d!58047 (= (getValueByKey!253 lt!109541 (_1!2109 (tuple2!4199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))) (Some!258 (_2!2109 (tuple2!4199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(assert (=> d!58047 (= lt!109540 (lemmaContainsTupThenGetReturnValue!142 lt!109541 (_1!2109 (tuple2!4199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)) (_2!2109 (tuple2!4199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(assert (=> d!58047 (= lt!109541 (insertStrictlySorted!144 (toList!1578 lt!109376) (_1!2109 (tuple2!4199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)) (_2!2109 (tuple2!4199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(assert (=> d!58047 (= (+!571 lt!109376 (tuple2!4199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)) lt!109543)))

(declare-fun b!212406 () Bool)

(declare-fun res!103861 () Bool)

(assert (=> b!212406 (=> (not res!103861) (not e!138211))))

(assert (=> b!212406 (= res!103861 (= (getValueByKey!253 (toList!1578 lt!109543) (_1!2109 (tuple2!4199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))) (Some!258 (_2!2109 (tuple2!4199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))))

(declare-fun b!212407 () Bool)

(assert (=> b!212407 (= e!138211 (contains!1410 (toList!1578 lt!109543) (tuple2!4199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(assert (= (and d!58047 res!103860) b!212406))

(assert (= (and b!212406 res!103861) b!212407))

(declare-fun m!240247 () Bool)

(assert (=> d!58047 m!240247))

(declare-fun m!240249 () Bool)

(assert (=> d!58047 m!240249))

(declare-fun m!240251 () Bool)

(assert (=> d!58047 m!240251))

(declare-fun m!240253 () Bool)

(assert (=> d!58047 m!240253))

(declare-fun m!240255 () Bool)

(assert (=> b!212406 m!240255))

(declare-fun m!240257 () Bool)

(assert (=> b!212407 m!240257))

(assert (=> b!212193 d!58047))

(declare-fun condMapEmpty!9290 () Bool)

(declare-fun mapDefault!9290 () ValueCell!2388)

(assert (=> mapNonEmpty!9284 (= condMapEmpty!9290 (= mapRest!9284 ((as const (Array (_ BitVec 32) ValueCell!2388)) mapDefault!9290)))))

(declare-fun e!138217 () Bool)

(declare-fun mapRes!9290 () Bool)

(assert (=> mapNonEmpty!9284 (= tp!19864 (and e!138217 mapRes!9290))))

(declare-fun b!212414 () Bool)

(declare-fun e!138216 () Bool)

(assert (=> b!212414 (= e!138216 tp_is_empty!5463)))

(declare-fun mapIsEmpty!9290 () Bool)

(assert (=> mapIsEmpty!9290 mapRes!9290))

(declare-fun mapNonEmpty!9290 () Bool)

(declare-fun tp!19874 () Bool)

(assert (=> mapNonEmpty!9290 (= mapRes!9290 (and tp!19874 e!138216))))

(declare-fun mapRest!9290 () (Array (_ BitVec 32) ValueCell!2388))

(declare-fun mapKey!9290 () (_ BitVec 32))

(declare-fun mapValue!9290 () ValueCell!2388)

(assert (=> mapNonEmpty!9290 (= mapRest!9284 (store mapRest!9290 mapKey!9290 mapValue!9290))))

(declare-fun b!212415 () Bool)

(assert (=> b!212415 (= e!138217 tp_is_empty!5463)))

(assert (= (and mapNonEmpty!9284 condMapEmpty!9290) mapIsEmpty!9290))

(assert (= (and mapNonEmpty!9284 (not condMapEmpty!9290)) mapNonEmpty!9290))

(assert (= (and mapNonEmpty!9290 ((_ is ValueCellFull!2388) mapValue!9290)) b!212414))

(assert (= (and mapNonEmpty!9284 ((_ is ValueCellFull!2388) mapDefault!9290)) b!212415))

(declare-fun m!240259 () Bool)

(assert (=> mapNonEmpty!9290 m!240259))

(declare-fun b_lambda!7749 () Bool)

(assert (= b_lambda!7741 (or (and start!21102 b_free!5601) b_lambda!7749)))

(declare-fun b_lambda!7751 () Bool)

(assert (= b_lambda!7747 (or (and start!21102 b_free!5601) b_lambda!7751)))

(declare-fun b_lambda!7753 () Bool)

(assert (= b_lambda!7739 (or (and start!21102 b_free!5601) b_lambda!7753)))

(declare-fun b_lambda!7755 () Bool)

(assert (= b_lambda!7737 (or (and start!21102 b_free!5601) b_lambda!7755)))

(declare-fun b_lambda!7757 () Bool)

(assert (= b_lambda!7743 (or (and start!21102 b_free!5601) b_lambda!7757)))

(declare-fun b_lambda!7759 () Bool)

(assert (= b_lambda!7745 (or (and start!21102 b_free!5601) b_lambda!7759)))

(check-sat (not b!212404) (not b!212321) (not b!212278) (not bm!20113) (not b!212377) (not b!212361) (not b_lambda!7757) (not bm!20094) tp_is_empty!5463 (not b!212358) (not b!212291) (not b!212356) (not b_next!5601) (not b!212337) (not bm!20111) (not b!212336) (not b!212342) (not b!212353) (not b_lambda!7753) (not b!212371) (not b!212319) b_and!12463 (not b!212406) (not bm!20103) (not b!212407) (not b!212401) (not d!58035) (not bm!20100) (not b_lambda!7759) (not b!212389) (not b!212335) (not bm!20099) (not b!212330) (not b!212323) (not d!58029) (not b!212331) (not b!212273) (not b!212324) (not bm!20120) (not b!212276) (not bm!20123) (not b!212333) (not bm!20109) (not b!212281) (not d!58039) (not b!212320) (not b!212366) (not b!212325) (not b!212329) (not d!58033) (not b!212403) (not b!212349) (not bm!20117) (not b!212286) (not b!212388) (not b!212378) (not b_lambda!7755) (not d!58031) (not mapNonEmpty!9290) (not d!58047) (not bm!20110) (not b!212365) (not b_lambda!7751) (not b!212360) (not bm!20096) (not b!212341) (not bm!20116) (not b!212285) (not b!212280) (not bm!20104) (not b!212332) (not d!58037) (not b_lambda!7749))
(check-sat b_and!12463 (not b_next!5601))
