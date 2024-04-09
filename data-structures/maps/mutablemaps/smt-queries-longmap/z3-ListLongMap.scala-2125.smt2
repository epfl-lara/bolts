; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35976 () Bool)

(assert start!35976)

(declare-fun mapIsEmpty!14082 () Bool)

(declare-fun mapRes!14082 () Bool)

(assert (=> mapIsEmpty!14082 mapRes!14082))

(declare-fun b!361164 () Bool)

(declare-fun e!221171 () Bool)

(declare-fun tp_is_empty!8373 () Bool)

(assert (=> b!361164 (= e!221171 tp_is_empty!8373)))

(declare-fun b!361165 () Bool)

(declare-fun e!221169 () Bool)

(assert (=> b!361165 (= e!221169 (and e!221171 mapRes!14082))))

(declare-fun condMapEmpty!14082 () Bool)

(declare-datatypes ((V!12141 0))(
  ( (V!12142 (val!4231 Int)) )
))
(declare-datatypes ((ValueCell!3843 0))(
  ( (ValueCellFull!3843 (v!6421 V!12141)) (EmptyCell!3843) )
))
(declare-datatypes ((array!20271 0))(
  ( (array!20272 (arr!9621 (Array (_ BitVec 32) ValueCell!3843)) (size!9973 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20271)

(declare-fun mapDefault!14082 () ValueCell!3843)

(assert (=> b!361165 (= condMapEmpty!14082 (= (arr!9621 _values!1277) ((as const (Array (_ BitVec 32) ValueCell!3843)) mapDefault!14082)))))

(declare-fun b!361166 () Bool)

(declare-fun e!221168 () Bool)

(declare-datatypes ((List!5531 0))(
  ( (Nil!5528) (Cons!5527 (h!6383 (_ BitVec 64)) (t!10689 List!5531)) )
))
(declare-fun contains!2427 (List!5531 (_ BitVec 64)) Bool)

(assert (=> b!361166 (= e!221168 (contains!2427 Nil!5528 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!361167 () Bool)

(declare-fun e!221170 () Bool)

(assert (=> b!361167 (= e!221170 tp_is_empty!8373)))

(declare-fun b!361168 () Bool)

(declare-fun res!200980 () Bool)

(declare-fun e!221172 () Bool)

(assert (=> b!361168 (=> (not res!200980) (not e!221172))))

(declare-fun noDuplicate!183 (List!5531) Bool)

(assert (=> b!361168 (= res!200980 (noDuplicate!183 Nil!5528))))

(declare-fun b!361169 () Bool)

(assert (=> b!361169 (= e!221172 e!221168)))

(declare-fun res!200981 () Bool)

(assert (=> b!361169 (=> res!200981 e!221168)))

(assert (=> b!361169 (= res!200981 (contains!2427 Nil!5528 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!361170 () Bool)

(declare-fun res!200982 () Bool)

(assert (=> b!361170 (=> (not res!200982) (not e!221172))))

(declare-datatypes ((array!20273 0))(
  ( (array!20274 (arr!9622 (Array (_ BitVec 32) (_ BitVec 64))) (size!9974 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20273)

(declare-fun extraKeys!1198 () (_ BitVec 32))

(declare-fun mask!1943 () (_ BitVec 32))

(assert (=> b!361170 (= res!200982 (and (= (size!9973 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9974 _keys!1541) (size!9973 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!14082 () Bool)

(declare-fun tp!28158 () Bool)

(assert (=> mapNonEmpty!14082 (= mapRes!14082 (and tp!28158 e!221170))))

(declare-fun mapRest!14082 () (Array (_ BitVec 32) ValueCell!3843))

(declare-fun mapKey!14082 () (_ BitVec 32))

(declare-fun mapValue!14082 () ValueCell!3843)

(assert (=> mapNonEmpty!14082 (= (arr!9621 _values!1277) (store mapRest!14082 mapKey!14082 mapValue!14082))))

(declare-fun res!200978 () Bool)

(assert (=> start!35976 (=> (not res!200978) (not e!221172))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35976 (= res!200978 (validMask!0 mask!1943))))

(assert (=> start!35976 e!221172))

(assert (=> start!35976 true))

(declare-fun array_inv!7074 (array!20271) Bool)

(assert (=> start!35976 (and (array_inv!7074 _values!1277) e!221169)))

(declare-fun array_inv!7075 (array!20273) Bool)

(assert (=> start!35976 (array_inv!7075 _keys!1541)))

(declare-fun b!361171 () Bool)

(declare-fun res!200979 () Bool)

(assert (=> b!361171 (=> (not res!200979) (not e!221172))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20273 (_ BitVec 32)) Bool)

(assert (=> b!361171 (= res!200979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun b!361172 () Bool)

(declare-fun res!200977 () Bool)

(assert (=> b!361172 (=> (not res!200977) (not e!221172))))

(assert (=> b!361172 (= res!200977 (and (bvsle #b00000000000000000000000000000000 (size!9974 _keys!1541)) (bvslt (size!9974 _keys!1541) #b01111111111111111111111111111111)))))

(assert (= (and start!35976 res!200978) b!361170))

(assert (= (and b!361170 res!200982) b!361171))

(assert (= (and b!361171 res!200979) b!361172))

(assert (= (and b!361172 res!200977) b!361168))

(assert (= (and b!361168 res!200980) b!361169))

(assert (= (and b!361169 (not res!200981)) b!361166))

(assert (= (and b!361165 condMapEmpty!14082) mapIsEmpty!14082))

(assert (= (and b!361165 (not condMapEmpty!14082)) mapNonEmpty!14082))

(get-info :version)

(assert (= (and mapNonEmpty!14082 ((_ is ValueCellFull!3843) mapValue!14082)) b!361167))

(assert (= (and b!361165 ((_ is ValueCellFull!3843) mapDefault!14082)) b!361164))

(assert (= start!35976 b!361165))

(declare-fun m!358053 () Bool)

(assert (=> b!361169 m!358053))

(declare-fun m!358055 () Bool)

(assert (=> b!361168 m!358055))

(declare-fun m!358057 () Bool)

(assert (=> b!361166 m!358057))

(declare-fun m!358059 () Bool)

(assert (=> start!35976 m!358059))

(declare-fun m!358061 () Bool)

(assert (=> start!35976 m!358061))

(declare-fun m!358063 () Bool)

(assert (=> start!35976 m!358063))

(declare-fun m!358065 () Bool)

(assert (=> mapNonEmpty!14082 m!358065))

(declare-fun m!358067 () Bool)

(assert (=> b!361171 m!358067))

(check-sat (not b!361169) (not start!35976) (not mapNonEmpty!14082) (not b!361171) tp_is_empty!8373 (not b!361166) (not b!361168))
(check-sat)
(get-model)

(declare-fun b!361208 () Bool)

(declare-fun e!221199 () Bool)

(declare-fun e!221198 () Bool)

(assert (=> b!361208 (= e!221199 e!221198)))

(declare-fun lt!166513 () (_ BitVec 64))

(assert (=> b!361208 (= lt!166513 (select (arr!9622 _keys!1541) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!11103 0))(
  ( (Unit!11104) )
))
(declare-fun lt!166512 () Unit!11103)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20273 (_ BitVec 64) (_ BitVec 32)) Unit!11103)

(assert (=> b!361208 (= lt!166512 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1541 lt!166513 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!20273 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!361208 (arrayContainsKey!0 _keys!1541 lt!166513 #b00000000000000000000000000000000)))

(declare-fun lt!166511 () Unit!11103)

(assert (=> b!361208 (= lt!166511 lt!166512)))

(declare-fun res!201005 () Bool)

(declare-datatypes ((SeekEntryResult!3483 0))(
  ( (MissingZero!3483 (index!16111 (_ BitVec 32))) (Found!3483 (index!16112 (_ BitVec 32))) (Intermediate!3483 (undefined!4295 Bool) (index!16113 (_ BitVec 32)) (x!35994 (_ BitVec 32))) (Undefined!3483) (MissingVacant!3483 (index!16114 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!20273 (_ BitVec 32)) SeekEntryResult!3483)

(assert (=> b!361208 (= res!201005 (= (seekEntryOrOpen!0 (select (arr!9622 _keys!1541) #b00000000000000000000000000000000) _keys!1541 mask!1943) (Found!3483 #b00000000000000000000000000000000)))))

(assert (=> b!361208 (=> (not res!201005) (not e!221198))))

(declare-fun b!361209 () Bool)

(declare-fun e!221200 () Bool)

(assert (=> b!361209 (= e!221200 e!221199)))

(declare-fun c!53648 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!361209 (= c!53648 (validKeyInArray!0 (select (arr!9622 _keys!1541) #b00000000000000000000000000000000)))))

(declare-fun bm!27170 () Bool)

(declare-fun call!27173 () Bool)

(assert (=> bm!27170 (= call!27173 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1541 mask!1943))))

(declare-fun b!361210 () Bool)

(assert (=> b!361210 (= e!221198 call!27173)))

(declare-fun d!71789 () Bool)

(declare-fun res!201006 () Bool)

(assert (=> d!71789 (=> res!201006 e!221200)))

(assert (=> d!71789 (= res!201006 (bvsge #b00000000000000000000000000000000 (size!9974 _keys!1541)))))

(assert (=> d!71789 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943) e!221200)))

(declare-fun b!361211 () Bool)

(assert (=> b!361211 (= e!221199 call!27173)))

(assert (= (and d!71789 (not res!201006)) b!361209))

(assert (= (and b!361209 c!53648) b!361208))

(assert (= (and b!361209 (not c!53648)) b!361211))

(assert (= (and b!361208 res!201005) b!361210))

(assert (= (or b!361210 b!361211) bm!27170))

(declare-fun m!358085 () Bool)

(assert (=> b!361208 m!358085))

(declare-fun m!358087 () Bool)

(assert (=> b!361208 m!358087))

(declare-fun m!358089 () Bool)

(assert (=> b!361208 m!358089))

(assert (=> b!361208 m!358085))

(declare-fun m!358091 () Bool)

(assert (=> b!361208 m!358091))

(assert (=> b!361209 m!358085))

(assert (=> b!361209 m!358085))

(declare-fun m!358093 () Bool)

(assert (=> b!361209 m!358093))

(declare-fun m!358095 () Bool)

(assert (=> bm!27170 m!358095))

(assert (=> b!361171 d!71789))

(declare-fun d!71791 () Bool)

(declare-fun lt!166516 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!198 (List!5531) (InoxSet (_ BitVec 64)))

(assert (=> d!71791 (= lt!166516 (select (content!198 Nil!5528) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!221206 () Bool)

(assert (=> d!71791 (= lt!166516 e!221206)))

(declare-fun res!201012 () Bool)

(assert (=> d!71791 (=> (not res!201012) (not e!221206))))

(assert (=> d!71791 (= res!201012 ((_ is Cons!5527) Nil!5528))))

(assert (=> d!71791 (= (contains!2427 Nil!5528 #b1000000000000000000000000000000000000000000000000000000000000000) lt!166516)))

(declare-fun b!361216 () Bool)

(declare-fun e!221205 () Bool)

(assert (=> b!361216 (= e!221206 e!221205)))

(declare-fun res!201011 () Bool)

(assert (=> b!361216 (=> res!201011 e!221205)))

(assert (=> b!361216 (= res!201011 (= (h!6383 Nil!5528) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!361217 () Bool)

(assert (=> b!361217 (= e!221205 (contains!2427 (t!10689 Nil!5528) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!71791 res!201012) b!361216))

(assert (= (and b!361216 (not res!201011)) b!361217))

(declare-fun m!358097 () Bool)

(assert (=> d!71791 m!358097))

(declare-fun m!358099 () Bool)

(assert (=> d!71791 m!358099))

(declare-fun m!358101 () Bool)

(assert (=> b!361217 m!358101))

(assert (=> b!361166 d!71791))

(declare-fun d!71793 () Bool)

(assert (=> d!71793 (= (validMask!0 mask!1943) (and (or (= mask!1943 #b00000000000000000000000000000111) (= mask!1943 #b00000000000000000000000000001111) (= mask!1943 #b00000000000000000000000000011111) (= mask!1943 #b00000000000000000000000000111111) (= mask!1943 #b00000000000000000000000001111111) (= mask!1943 #b00000000000000000000000011111111) (= mask!1943 #b00000000000000000000000111111111) (= mask!1943 #b00000000000000000000001111111111) (= mask!1943 #b00000000000000000000011111111111) (= mask!1943 #b00000000000000000000111111111111) (= mask!1943 #b00000000000000000001111111111111) (= mask!1943 #b00000000000000000011111111111111) (= mask!1943 #b00000000000000000111111111111111) (= mask!1943 #b00000000000000001111111111111111) (= mask!1943 #b00000000000000011111111111111111) (= mask!1943 #b00000000000000111111111111111111) (= mask!1943 #b00000000000001111111111111111111) (= mask!1943 #b00000000000011111111111111111111) (= mask!1943 #b00000000000111111111111111111111) (= mask!1943 #b00000000001111111111111111111111) (= mask!1943 #b00000000011111111111111111111111) (= mask!1943 #b00000000111111111111111111111111) (= mask!1943 #b00000001111111111111111111111111) (= mask!1943 #b00000011111111111111111111111111) (= mask!1943 #b00000111111111111111111111111111) (= mask!1943 #b00001111111111111111111111111111) (= mask!1943 #b00011111111111111111111111111111) (= mask!1943 #b00111111111111111111111111111111)) (bvsle mask!1943 #b00111111111111111111111111111111)))))

(assert (=> start!35976 d!71793))

(declare-fun d!71795 () Bool)

(assert (=> d!71795 (= (array_inv!7074 _values!1277) (bvsge (size!9973 _values!1277) #b00000000000000000000000000000000))))

(assert (=> start!35976 d!71795))

(declare-fun d!71797 () Bool)

(assert (=> d!71797 (= (array_inv!7075 _keys!1541) (bvsge (size!9974 _keys!1541) #b00000000000000000000000000000000))))

(assert (=> start!35976 d!71797))

(declare-fun d!71799 () Bool)

(declare-fun lt!166517 () Bool)

(assert (=> d!71799 (= lt!166517 (select (content!198 Nil!5528) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!221208 () Bool)

(assert (=> d!71799 (= lt!166517 e!221208)))

(declare-fun res!201014 () Bool)

(assert (=> d!71799 (=> (not res!201014) (not e!221208))))

(assert (=> d!71799 (= res!201014 ((_ is Cons!5527) Nil!5528))))

(assert (=> d!71799 (= (contains!2427 Nil!5528 #b0000000000000000000000000000000000000000000000000000000000000000) lt!166517)))

(declare-fun b!361218 () Bool)

(declare-fun e!221207 () Bool)

(assert (=> b!361218 (= e!221208 e!221207)))

(declare-fun res!201013 () Bool)

(assert (=> b!361218 (=> res!201013 e!221207)))

(assert (=> b!361218 (= res!201013 (= (h!6383 Nil!5528) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!361219 () Bool)

(assert (=> b!361219 (= e!221207 (contains!2427 (t!10689 Nil!5528) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!71799 res!201014) b!361218))

(assert (= (and b!361218 (not res!201013)) b!361219))

(assert (=> d!71799 m!358097))

(declare-fun m!358103 () Bool)

(assert (=> d!71799 m!358103))

(declare-fun m!358105 () Bool)

(assert (=> b!361219 m!358105))

(assert (=> b!361169 d!71799))

(declare-fun d!71801 () Bool)

(declare-fun res!201019 () Bool)

(declare-fun e!221213 () Bool)

(assert (=> d!71801 (=> res!201019 e!221213)))

(assert (=> d!71801 (= res!201019 ((_ is Nil!5528) Nil!5528))))

(assert (=> d!71801 (= (noDuplicate!183 Nil!5528) e!221213)))

(declare-fun b!361224 () Bool)

(declare-fun e!221214 () Bool)

(assert (=> b!361224 (= e!221213 e!221214)))

(declare-fun res!201020 () Bool)

(assert (=> b!361224 (=> (not res!201020) (not e!221214))))

(assert (=> b!361224 (= res!201020 (not (contains!2427 (t!10689 Nil!5528) (h!6383 Nil!5528))))))

(declare-fun b!361225 () Bool)

(assert (=> b!361225 (= e!221214 (noDuplicate!183 (t!10689 Nil!5528)))))

(assert (= (and d!71801 (not res!201019)) b!361224))

(assert (= (and b!361224 res!201020) b!361225))

(declare-fun m!358107 () Bool)

(assert (=> b!361224 m!358107))

(declare-fun m!358109 () Bool)

(assert (=> b!361225 m!358109))

(assert (=> b!361168 d!71801))

(declare-fun b!361232 () Bool)

(declare-fun e!221219 () Bool)

(assert (=> b!361232 (= e!221219 tp_is_empty!8373)))

(declare-fun mapIsEmpty!14088 () Bool)

(declare-fun mapRes!14088 () Bool)

(assert (=> mapIsEmpty!14088 mapRes!14088))

(declare-fun mapNonEmpty!14088 () Bool)

(declare-fun tp!28164 () Bool)

(assert (=> mapNonEmpty!14088 (= mapRes!14088 (and tp!28164 e!221219))))

(declare-fun mapRest!14088 () (Array (_ BitVec 32) ValueCell!3843))

(declare-fun mapKey!14088 () (_ BitVec 32))

(declare-fun mapValue!14088 () ValueCell!3843)

(assert (=> mapNonEmpty!14088 (= mapRest!14082 (store mapRest!14088 mapKey!14088 mapValue!14088))))

(declare-fun condMapEmpty!14088 () Bool)

(declare-fun mapDefault!14088 () ValueCell!3843)

(assert (=> mapNonEmpty!14082 (= condMapEmpty!14088 (= mapRest!14082 ((as const (Array (_ BitVec 32) ValueCell!3843)) mapDefault!14088)))))

(declare-fun e!221220 () Bool)

(assert (=> mapNonEmpty!14082 (= tp!28158 (and e!221220 mapRes!14088))))

(declare-fun b!361233 () Bool)

(assert (=> b!361233 (= e!221220 tp_is_empty!8373)))

(assert (= (and mapNonEmpty!14082 condMapEmpty!14088) mapIsEmpty!14088))

(assert (= (and mapNonEmpty!14082 (not condMapEmpty!14088)) mapNonEmpty!14088))

(assert (= (and mapNonEmpty!14088 ((_ is ValueCellFull!3843) mapValue!14088)) b!361232))

(assert (= (and mapNonEmpty!14082 ((_ is ValueCellFull!3843) mapDefault!14088)) b!361233))

(declare-fun m!358111 () Bool)

(assert (=> mapNonEmpty!14088 m!358111))

(check-sat (not d!71791) tp_is_empty!8373 (not b!361208) (not b!361209) (not bm!27170) (not b!361217) (not b!361224) (not d!71799) (not mapNonEmpty!14088) (not b!361225) (not b!361219))
(check-sat)
