; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34666 () Bool)

(assert start!34666)

(declare-fun b_free!7485 () Bool)

(declare-fun b_next!7485 () Bool)

(assert (=> start!34666 (= b_free!7485 (not b_next!7485))))

(declare-fun tp!26015 () Bool)

(declare-fun b_and!14721 () Bool)

(assert (=> start!34666 (= tp!26015 b_and!14721)))

(declare-fun b!346100 () Bool)

(declare-fun e!212138 () Bool)

(declare-fun e!212139 () Bool)

(declare-fun mapRes!12609 () Bool)

(assert (=> b!346100 (= e!212138 (and e!212139 mapRes!12609))))

(declare-fun condMapEmpty!12609 () Bool)

(declare-datatypes ((V!10893 0))(
  ( (V!10894 (val!3763 Int)) )
))
(declare-datatypes ((ValueCell!3375 0))(
  ( (ValueCellFull!3375 (v!5940 V!10893)) (EmptyCell!3375) )
))
(declare-datatypes ((array!18431 0))(
  ( (array!18432 (arr!8724 (Array (_ BitVec 32) ValueCell!3375)) (size!9076 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18431)

(declare-fun mapDefault!12609 () ValueCell!3375)

(assert (=> b!346100 (= condMapEmpty!12609 (= (arr!8724 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3375)) mapDefault!12609)))))

(declare-fun res!191511 () Bool)

(declare-fun e!212135 () Bool)

(assert (=> start!34666 (=> (not res!191511) (not e!212135))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34666 (= res!191511 (validMask!0 mask!2385))))

(assert (=> start!34666 e!212135))

(assert (=> start!34666 true))

(declare-fun tp_is_empty!7437 () Bool)

(assert (=> start!34666 tp_is_empty!7437))

(assert (=> start!34666 tp!26015))

(declare-fun array_inv!6452 (array!18431) Bool)

(assert (=> start!34666 (and (array_inv!6452 _values!1525) e!212138)))

(declare-datatypes ((array!18433 0))(
  ( (array!18434 (arr!8725 (Array (_ BitVec 32) (_ BitVec 64))) (size!9077 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18433)

(declare-fun array_inv!6453 (array!18433) Bool)

(assert (=> start!34666 (array_inv!6453 _keys!1895)))

(declare-fun b!346101 () Bool)

(declare-fun e!212137 () Bool)

(declare-datatypes ((SeekEntryResult!3359 0))(
  ( (MissingZero!3359 (index!15615 (_ BitVec 32))) (Found!3359 (index!15616 (_ BitVec 32))) (Intermediate!3359 (undefined!4171 Bool) (index!15617 (_ BitVec 32)) (x!34478 (_ BitVec 32))) (Undefined!3359) (MissingVacant!3359 (index!15618 (_ BitVec 32))) )
))
(declare-fun lt!163242 () SeekEntryResult!3359)

(assert (=> b!346101 (= e!212137 (and (bvsge (index!15616 lt!163242) #b00000000000000000000000000000000) (bvslt (index!15616 lt!163242) (size!9077 _keys!1895)) (bvsge (size!9077 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun b!346102 () Bool)

(assert (=> b!346102 (= e!212135 e!212137)))

(declare-fun res!191514 () Bool)

(assert (=> b!346102 (=> (not res!191514) (not e!212137))))

(declare-fun k0!1348 () (_ BitVec 64))

(get-info :version)

(assert (=> b!346102 (= res!191514 (and ((_ is Found!3359) lt!163242) (= (select (arr!8725 _keys!1895) (index!15616 lt!163242)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18433 (_ BitVec 32)) SeekEntryResult!3359)

(assert (=> b!346102 (= lt!163242 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!346103 () Bool)

(assert (=> b!346103 (= e!212139 tp_is_empty!7437)))

(declare-fun b!346104 () Bool)

(declare-fun res!191513 () Bool)

(assert (=> b!346104 (=> (not res!191513) (not e!212137))))

(declare-fun arrayContainsKey!0 (array!18433 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!346104 (= res!191513 (arrayContainsKey!0 _keys!1895 k0!1348 (index!15616 lt!163242)))))

(declare-fun mapNonEmpty!12609 () Bool)

(declare-fun tp!26016 () Bool)

(declare-fun e!212136 () Bool)

(assert (=> mapNonEmpty!12609 (= mapRes!12609 (and tp!26016 e!212136))))

(declare-fun mapValue!12609 () ValueCell!3375)

(declare-fun mapKey!12609 () (_ BitVec 32))

(declare-fun mapRest!12609 () (Array (_ BitVec 32) ValueCell!3375))

(assert (=> mapNonEmpty!12609 (= (arr!8724 _values!1525) (store mapRest!12609 mapKey!12609 mapValue!12609))))

(declare-fun b!346105 () Bool)

(declare-fun res!191515 () Bool)

(assert (=> b!346105 (=> (not res!191515) (not e!212135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18433 (_ BitVec 32)) Bool)

(assert (=> b!346105 (= res!191515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!346106 () Bool)

(declare-fun res!191512 () Bool)

(assert (=> b!346106 (=> (not res!191512) (not e!212135))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!346106 (= res!191512 (and (= (size!9076 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9077 _keys!1895) (size!9076 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12609 () Bool)

(assert (=> mapIsEmpty!12609 mapRes!12609))

(declare-fun b!346107 () Bool)

(declare-fun res!191510 () Bool)

(assert (=> b!346107 (=> (not res!191510) (not e!212135))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!346107 (= res!191510 (validKeyInArray!0 k0!1348))))

(declare-fun b!346108 () Bool)

(declare-fun res!191509 () Bool)

(assert (=> b!346108 (=> (not res!191509) (not e!212135))))

(declare-fun zeroValue!1467 () V!10893)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10893)

(declare-datatypes ((tuple2!5430 0))(
  ( (tuple2!5431 (_1!2725 (_ BitVec 64)) (_2!2725 V!10893)) )
))
(declare-datatypes ((List!5077 0))(
  ( (Nil!5074) (Cons!5073 (h!5929 tuple2!5430) (t!10211 List!5077)) )
))
(declare-datatypes ((ListLongMap!4357 0))(
  ( (ListLongMap!4358 (toList!2194 List!5077)) )
))
(declare-fun contains!2253 (ListLongMap!4357 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1714 (array!18433 array!18431 (_ BitVec 32) (_ BitVec 32) V!10893 V!10893 (_ BitVec 32) Int) ListLongMap!4357)

(assert (=> b!346108 (= res!191509 (not (contains!2253 (getCurrentListMap!1714 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!346109 () Bool)

(assert (=> b!346109 (= e!212136 tp_is_empty!7437)))

(declare-fun b!346110 () Bool)

(declare-fun res!191516 () Bool)

(assert (=> b!346110 (=> (not res!191516) (not e!212135))))

(declare-datatypes ((List!5078 0))(
  ( (Nil!5075) (Cons!5074 (h!5930 (_ BitVec 64)) (t!10212 List!5078)) )
))
(declare-fun arrayNoDuplicates!0 (array!18433 (_ BitVec 32) List!5078) Bool)

(assert (=> b!346110 (= res!191516 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5075))))

(assert (= (and start!34666 res!191511) b!346106))

(assert (= (and b!346106 res!191512) b!346105))

(assert (= (and b!346105 res!191515) b!346110))

(assert (= (and b!346110 res!191516) b!346107))

(assert (= (and b!346107 res!191510) b!346108))

(assert (= (and b!346108 res!191509) b!346102))

(assert (= (and b!346102 res!191514) b!346104))

(assert (= (and b!346104 res!191513) b!346101))

(assert (= (and b!346100 condMapEmpty!12609) mapIsEmpty!12609))

(assert (= (and b!346100 (not condMapEmpty!12609)) mapNonEmpty!12609))

(assert (= (and mapNonEmpty!12609 ((_ is ValueCellFull!3375) mapValue!12609)) b!346109))

(assert (= (and b!346100 ((_ is ValueCellFull!3375) mapDefault!12609)) b!346103))

(assert (= start!34666 b!346100))

(declare-fun m!347279 () Bool)

(assert (=> b!346107 m!347279))

(declare-fun m!347281 () Bool)

(assert (=> start!34666 m!347281))

(declare-fun m!347283 () Bool)

(assert (=> start!34666 m!347283))

(declare-fun m!347285 () Bool)

(assert (=> start!34666 m!347285))

(declare-fun m!347287 () Bool)

(assert (=> mapNonEmpty!12609 m!347287))

(declare-fun m!347289 () Bool)

(assert (=> b!346102 m!347289))

(declare-fun m!347291 () Bool)

(assert (=> b!346102 m!347291))

(declare-fun m!347293 () Bool)

(assert (=> b!346108 m!347293))

(assert (=> b!346108 m!347293))

(declare-fun m!347295 () Bool)

(assert (=> b!346108 m!347295))

(declare-fun m!347297 () Bool)

(assert (=> b!346110 m!347297))

(declare-fun m!347299 () Bool)

(assert (=> b!346105 m!347299))

(declare-fun m!347301 () Bool)

(assert (=> b!346104 m!347301))

(check-sat (not b!346104) (not b!346108) (not mapNonEmpty!12609) (not start!34666) (not b!346102) (not b!346110) (not b_next!7485) (not b!346107) (not b!346105) tp_is_empty!7437 b_and!14721)
(check-sat b_and!14721 (not b_next!7485))
(get-model)

(declare-fun d!71093 () Bool)

(declare-fun res!191545 () Bool)

(declare-fun e!212162 () Bool)

(assert (=> d!71093 (=> res!191545 e!212162)))

(assert (=> d!71093 (= res!191545 (= (select (arr!8725 _keys!1895) (index!15616 lt!163242)) k0!1348))))

(assert (=> d!71093 (= (arrayContainsKey!0 _keys!1895 k0!1348 (index!15616 lt!163242)) e!212162)))

(declare-fun b!346148 () Bool)

(declare-fun e!212163 () Bool)

(assert (=> b!346148 (= e!212162 e!212163)))

(declare-fun res!191546 () Bool)

(assert (=> b!346148 (=> (not res!191546) (not e!212163))))

(assert (=> b!346148 (= res!191546 (bvslt (bvadd (index!15616 lt!163242) #b00000000000000000000000000000001) (size!9077 _keys!1895)))))

(declare-fun b!346149 () Bool)

(assert (=> b!346149 (= e!212163 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd (index!15616 lt!163242) #b00000000000000000000000000000001)))))

(assert (= (and d!71093 (not res!191545)) b!346148))

(assert (= (and b!346148 res!191546) b!346149))

(assert (=> d!71093 m!347289))

(declare-fun m!347327 () Bool)

(assert (=> b!346149 m!347327))

(assert (=> b!346104 d!71093))

(declare-fun d!71095 () Bool)

(declare-fun e!212169 () Bool)

(assert (=> d!71095 e!212169))

(declare-fun res!191549 () Bool)

(assert (=> d!71095 (=> res!191549 e!212169)))

(declare-fun lt!163254 () Bool)

(assert (=> d!71095 (= res!191549 (not lt!163254))))

(declare-fun lt!163256 () Bool)

(assert (=> d!71095 (= lt!163254 lt!163256)))

(declare-datatypes ((Unit!10744 0))(
  ( (Unit!10745) )
))
(declare-fun lt!163255 () Unit!10744)

(declare-fun e!212168 () Unit!10744)

(assert (=> d!71095 (= lt!163255 e!212168)))

(declare-fun c!53060 () Bool)

(assert (=> d!71095 (= c!53060 lt!163256)))

(declare-fun containsKey!334 (List!5077 (_ BitVec 64)) Bool)

(assert (=> d!71095 (= lt!163256 (containsKey!334 (toList!2194 (getCurrentListMap!1714 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!71095 (= (contains!2253 (getCurrentListMap!1714 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!163254)))

(declare-fun b!346156 () Bool)

(declare-fun lt!163257 () Unit!10744)

(assert (=> b!346156 (= e!212168 lt!163257)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!283 (List!5077 (_ BitVec 64)) Unit!10744)

(assert (=> b!346156 (= lt!163257 (lemmaContainsKeyImpliesGetValueByKeyDefined!283 (toList!2194 (getCurrentListMap!1714 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!348 0))(
  ( (Some!347 (v!5942 V!10893)) (None!346) )
))
(declare-fun isDefined!284 (Option!348) Bool)

(declare-fun getValueByKey!342 (List!5077 (_ BitVec 64)) Option!348)

(assert (=> b!346156 (isDefined!284 (getValueByKey!342 (toList!2194 (getCurrentListMap!1714 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!346157 () Bool)

(declare-fun Unit!10746 () Unit!10744)

(assert (=> b!346157 (= e!212168 Unit!10746)))

(declare-fun b!346158 () Bool)

(assert (=> b!346158 (= e!212169 (isDefined!284 (getValueByKey!342 (toList!2194 (getCurrentListMap!1714 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!71095 c!53060) b!346156))

(assert (= (and d!71095 (not c!53060)) b!346157))

(assert (= (and d!71095 (not res!191549)) b!346158))

(declare-fun m!347329 () Bool)

(assert (=> d!71095 m!347329))

(declare-fun m!347331 () Bool)

(assert (=> b!346156 m!347331))

(declare-fun m!347333 () Bool)

(assert (=> b!346156 m!347333))

(assert (=> b!346156 m!347333))

(declare-fun m!347335 () Bool)

(assert (=> b!346156 m!347335))

(assert (=> b!346158 m!347333))

(assert (=> b!346158 m!347333))

(assert (=> b!346158 m!347335))

(assert (=> b!346108 d!71095))

(declare-fun b!346201 () Bool)

(declare-fun e!212199 () Bool)

(assert (=> b!346201 (= e!212199 (validKeyInArray!0 (select (arr!8725 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!346202 () Bool)

(declare-fun e!212202 () ListLongMap!4357)

(declare-fun call!26820 () ListLongMap!4357)

(assert (=> b!346202 (= e!212202 call!26820)))

(declare-fun lt!163312 () ListLongMap!4357)

(declare-fun b!346203 () Bool)

(declare-fun e!212207 () Bool)

(declare-fun apply!285 (ListLongMap!4357 (_ BitVec 64)) V!10893)

(declare-fun get!4710 (ValueCell!3375 V!10893) V!10893)

(declare-fun dynLambda!623 (Int (_ BitVec 64)) V!10893)

(assert (=> b!346203 (= e!212207 (= (apply!285 lt!163312 (select (arr!8725 _keys!1895) #b00000000000000000000000000000000)) (get!4710 (select (arr!8724 _values!1525) #b00000000000000000000000000000000) (dynLambda!623 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!346203 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9076 _values!1525)))))

(assert (=> b!346203 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9077 _keys!1895)))))

(declare-fun b!346204 () Bool)

(declare-fun e!212203 () Bool)

(declare-fun e!212208 () Bool)

(assert (=> b!346204 (= e!212203 e!212208)))

(declare-fun c!53076 () Bool)

(assert (=> b!346204 (= c!53076 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!346205 () Bool)

(declare-fun e!212200 () Bool)

(assert (=> b!346205 (= e!212208 e!212200)))

(declare-fun res!191570 () Bool)

(declare-fun call!26821 () Bool)

(assert (=> b!346205 (= res!191570 call!26821)))

(assert (=> b!346205 (=> (not res!191570) (not e!212200))))

(declare-fun b!346206 () Bool)

(declare-fun e!212196 () Unit!10744)

(declare-fun lt!163310 () Unit!10744)

(assert (=> b!346206 (= e!212196 lt!163310)))

(declare-fun lt!163318 () ListLongMap!4357)

(declare-fun getCurrentListMapNoExtraKeys!604 (array!18433 array!18431 (_ BitVec 32) (_ BitVec 32) V!10893 V!10893 (_ BitVec 32) Int) ListLongMap!4357)

(assert (=> b!346206 (= lt!163318 (getCurrentListMapNoExtraKeys!604 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163323 () (_ BitVec 64))

(assert (=> b!346206 (= lt!163323 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163306 () (_ BitVec 64))

(assert (=> b!346206 (= lt!163306 (select (arr!8725 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!163311 () Unit!10744)

(declare-fun addStillContains!261 (ListLongMap!4357 (_ BitVec 64) V!10893 (_ BitVec 64)) Unit!10744)

(assert (=> b!346206 (= lt!163311 (addStillContains!261 lt!163318 lt!163323 zeroValue!1467 lt!163306))))

(declare-fun +!729 (ListLongMap!4357 tuple2!5430) ListLongMap!4357)

(assert (=> b!346206 (contains!2253 (+!729 lt!163318 (tuple2!5431 lt!163323 zeroValue!1467)) lt!163306)))

(declare-fun lt!163308 () Unit!10744)

(assert (=> b!346206 (= lt!163308 lt!163311)))

(declare-fun lt!163321 () ListLongMap!4357)

(assert (=> b!346206 (= lt!163321 (getCurrentListMapNoExtraKeys!604 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163307 () (_ BitVec 64))

(assert (=> b!346206 (= lt!163307 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163317 () (_ BitVec 64))

(assert (=> b!346206 (= lt!163317 (select (arr!8725 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!163309 () Unit!10744)

(declare-fun addApplyDifferent!261 (ListLongMap!4357 (_ BitVec 64) V!10893 (_ BitVec 64)) Unit!10744)

(assert (=> b!346206 (= lt!163309 (addApplyDifferent!261 lt!163321 lt!163307 minValue!1467 lt!163317))))

(assert (=> b!346206 (= (apply!285 (+!729 lt!163321 (tuple2!5431 lt!163307 minValue!1467)) lt!163317) (apply!285 lt!163321 lt!163317))))

(declare-fun lt!163315 () Unit!10744)

(assert (=> b!346206 (= lt!163315 lt!163309)))

(declare-fun lt!163305 () ListLongMap!4357)

(assert (=> b!346206 (= lt!163305 (getCurrentListMapNoExtraKeys!604 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163304 () (_ BitVec 64))

(assert (=> b!346206 (= lt!163304 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163313 () (_ BitVec 64))

(assert (=> b!346206 (= lt!163313 (select (arr!8725 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!163316 () Unit!10744)

(assert (=> b!346206 (= lt!163316 (addApplyDifferent!261 lt!163305 lt!163304 zeroValue!1467 lt!163313))))

(assert (=> b!346206 (= (apply!285 (+!729 lt!163305 (tuple2!5431 lt!163304 zeroValue!1467)) lt!163313) (apply!285 lt!163305 lt!163313))))

(declare-fun lt!163302 () Unit!10744)

(assert (=> b!346206 (= lt!163302 lt!163316)))

(declare-fun lt!163303 () ListLongMap!4357)

(assert (=> b!346206 (= lt!163303 (getCurrentListMapNoExtraKeys!604 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163314 () (_ BitVec 64))

(assert (=> b!346206 (= lt!163314 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163322 () (_ BitVec 64))

(assert (=> b!346206 (= lt!163322 (select (arr!8725 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!346206 (= lt!163310 (addApplyDifferent!261 lt!163303 lt!163314 minValue!1467 lt!163322))))

(assert (=> b!346206 (= (apply!285 (+!729 lt!163303 (tuple2!5431 lt!163314 minValue!1467)) lt!163322) (apply!285 lt!163303 lt!163322))))

(declare-fun bm!26817 () Bool)

(declare-fun call!26824 () Bool)

(assert (=> bm!26817 (= call!26824 (contains!2253 lt!163312 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!26818 () Bool)

(declare-fun call!26822 () ListLongMap!4357)

(declare-fun call!26825 () ListLongMap!4357)

(assert (=> bm!26818 (= call!26822 call!26825)))

(declare-fun b!346207 () Bool)

(declare-fun res!191572 () Bool)

(assert (=> b!346207 (=> (not res!191572) (not e!212203))))

(declare-fun e!212205 () Bool)

(assert (=> b!346207 (= res!191572 e!212205)))

(declare-fun c!53078 () Bool)

(assert (=> b!346207 (= c!53078 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!346208 () Bool)

(declare-fun e!212204 () Bool)

(assert (=> b!346208 (= e!212204 e!212207)))

(declare-fun res!191573 () Bool)

(assert (=> b!346208 (=> (not res!191573) (not e!212207))))

(assert (=> b!346208 (= res!191573 (contains!2253 lt!163312 (select (arr!8725 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!346208 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9077 _keys!1895)))))

(declare-fun b!346209 () Bool)

(declare-fun e!212206 () Bool)

(assert (=> b!346209 (= e!212205 e!212206)))

(declare-fun res!191571 () Bool)

(assert (=> b!346209 (= res!191571 call!26824)))

(assert (=> b!346209 (=> (not res!191571) (not e!212206))))

(declare-fun b!346210 () Bool)

(declare-fun e!212198 () ListLongMap!4357)

(declare-fun call!26819 () ListLongMap!4357)

(assert (=> b!346210 (= e!212198 (+!729 call!26819 (tuple2!5431 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!346211 () Bool)

(declare-fun call!26823 () ListLongMap!4357)

(assert (=> b!346211 (= e!212202 call!26823)))

(declare-fun b!346212 () Bool)

(declare-fun e!212197 () ListLongMap!4357)

(assert (=> b!346212 (= e!212197 call!26823)))

(declare-fun b!346213 () Bool)

(assert (=> b!346213 (= e!212206 (= (apply!285 lt!163312 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!346214 () Bool)

(assert (=> b!346214 (= e!212198 e!212197)))

(declare-fun c!53073 () Bool)

(assert (=> b!346214 (= c!53073 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!26819 () Bool)

(assert (=> bm!26819 (= call!26821 (contains!2253 lt!163312 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!346215 () Bool)

(declare-fun Unit!10747 () Unit!10744)

(assert (=> b!346215 (= e!212196 Unit!10747)))

(declare-fun bm!26820 () Bool)

(assert (=> bm!26820 (= call!26825 (getCurrentListMapNoExtraKeys!604 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun bm!26816 () Bool)

(declare-fun c!53074 () Bool)

(assert (=> bm!26816 (= call!26819 (+!729 (ite c!53074 call!26825 (ite c!53073 call!26822 call!26820)) (ite (or c!53074 c!53073) (tuple2!5431 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5431 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun d!71097 () Bool)

(assert (=> d!71097 e!212203))

(declare-fun res!191574 () Bool)

(assert (=> d!71097 (=> (not res!191574) (not e!212203))))

(assert (=> d!71097 (= res!191574 (or (bvsge #b00000000000000000000000000000000 (size!9077 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9077 _keys!1895)))))))

(declare-fun lt!163320 () ListLongMap!4357)

(assert (=> d!71097 (= lt!163312 lt!163320)))

(declare-fun lt!163319 () Unit!10744)

(assert (=> d!71097 (= lt!163319 e!212196)))

(declare-fun c!53077 () Bool)

(declare-fun e!212201 () Bool)

(assert (=> d!71097 (= c!53077 e!212201)))

(declare-fun res!191569 () Bool)

(assert (=> d!71097 (=> (not res!191569) (not e!212201))))

(assert (=> d!71097 (= res!191569 (bvslt #b00000000000000000000000000000000 (size!9077 _keys!1895)))))

(assert (=> d!71097 (= lt!163320 e!212198)))

(assert (=> d!71097 (= c!53074 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!71097 (validMask!0 mask!2385)))

(assert (=> d!71097 (= (getCurrentListMap!1714 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!163312)))

(declare-fun b!346216 () Bool)

(assert (=> b!346216 (= e!212208 (not call!26821))))

(declare-fun bm!26821 () Bool)

(assert (=> bm!26821 (= call!26823 call!26819)))

(declare-fun b!346217 () Bool)

(assert (=> b!346217 (= e!212200 (= (apply!285 lt!163312 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!346218 () Bool)

(declare-fun res!191575 () Bool)

(assert (=> b!346218 (=> (not res!191575) (not e!212203))))

(assert (=> b!346218 (= res!191575 e!212204)))

(declare-fun res!191576 () Bool)

(assert (=> b!346218 (=> res!191576 e!212204)))

(assert (=> b!346218 (= res!191576 (not e!212199))))

(declare-fun res!191568 () Bool)

(assert (=> b!346218 (=> (not res!191568) (not e!212199))))

(assert (=> b!346218 (= res!191568 (bvslt #b00000000000000000000000000000000 (size!9077 _keys!1895)))))

(declare-fun b!346219 () Bool)

(assert (=> b!346219 (= e!212201 (validKeyInArray!0 (select (arr!8725 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26822 () Bool)

(assert (=> bm!26822 (= call!26820 call!26822)))

(declare-fun b!346220 () Bool)

(assert (=> b!346220 (= e!212205 (not call!26824))))

(declare-fun b!346221 () Bool)

(declare-fun c!53075 () Bool)

(assert (=> b!346221 (= c!53075 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!346221 (= e!212197 e!212202)))

(assert (= (and d!71097 c!53074) b!346210))

(assert (= (and d!71097 (not c!53074)) b!346214))

(assert (= (and b!346214 c!53073) b!346212))

(assert (= (and b!346214 (not c!53073)) b!346221))

(assert (= (and b!346221 c!53075) b!346211))

(assert (= (and b!346221 (not c!53075)) b!346202))

(assert (= (or b!346211 b!346202) bm!26822))

(assert (= (or b!346212 bm!26822) bm!26818))

(assert (= (or b!346212 b!346211) bm!26821))

(assert (= (or b!346210 bm!26818) bm!26820))

(assert (= (or b!346210 bm!26821) bm!26816))

(assert (= (and d!71097 res!191569) b!346219))

(assert (= (and d!71097 c!53077) b!346206))

(assert (= (and d!71097 (not c!53077)) b!346215))

(assert (= (and d!71097 res!191574) b!346218))

(assert (= (and b!346218 res!191568) b!346201))

(assert (= (and b!346218 (not res!191576)) b!346208))

(assert (= (and b!346208 res!191573) b!346203))

(assert (= (and b!346218 res!191575) b!346207))

(assert (= (and b!346207 c!53078) b!346209))

(assert (= (and b!346207 (not c!53078)) b!346220))

(assert (= (and b!346209 res!191571) b!346213))

(assert (= (or b!346209 b!346220) bm!26817))

(assert (= (and b!346207 res!191572) b!346204))

(assert (= (and b!346204 c!53076) b!346205))

(assert (= (and b!346204 (not c!53076)) b!346216))

(assert (= (and b!346205 res!191570) b!346217))

(assert (= (or b!346205 b!346216) bm!26819))

(declare-fun b_lambda!8509 () Bool)

(assert (=> (not b_lambda!8509) (not b!346203)))

(declare-fun t!10215 () Bool)

(declare-fun tb!3093 () Bool)

(assert (=> (and start!34666 (= defaultEntry!1528 defaultEntry!1528) t!10215) tb!3093))

(declare-fun result!5593 () Bool)

(assert (=> tb!3093 (= result!5593 tp_is_empty!7437)))

(assert (=> b!346203 t!10215))

(declare-fun b_and!14725 () Bool)

(assert (= b_and!14721 (and (=> t!10215 result!5593) b_and!14725)))

(declare-fun m!347337 () Bool)

(assert (=> b!346208 m!347337))

(assert (=> b!346208 m!347337))

(declare-fun m!347339 () Bool)

(assert (=> b!346208 m!347339))

(assert (=> b!346201 m!347337))

(assert (=> b!346201 m!347337))

(declare-fun m!347341 () Bool)

(assert (=> b!346201 m!347341))

(declare-fun m!347343 () Bool)

(assert (=> b!346206 m!347343))

(declare-fun m!347345 () Bool)

(assert (=> b!346206 m!347345))

(declare-fun m!347347 () Bool)

(assert (=> b!346206 m!347347))

(declare-fun m!347349 () Bool)

(assert (=> b!346206 m!347349))

(assert (=> b!346206 m!347337))

(declare-fun m!347351 () Bool)

(assert (=> b!346206 m!347351))

(assert (=> b!346206 m!347349))

(declare-fun m!347353 () Bool)

(assert (=> b!346206 m!347353))

(declare-fun m!347355 () Bool)

(assert (=> b!346206 m!347355))

(declare-fun m!347357 () Bool)

(assert (=> b!346206 m!347357))

(declare-fun m!347359 () Bool)

(assert (=> b!346206 m!347359))

(declare-fun m!347361 () Bool)

(assert (=> b!346206 m!347361))

(assert (=> b!346206 m!347347))

(declare-fun m!347363 () Bool)

(assert (=> b!346206 m!347363))

(declare-fun m!347365 () Bool)

(assert (=> b!346206 m!347365))

(declare-fun m!347367 () Bool)

(assert (=> b!346206 m!347367))

(assert (=> b!346206 m!347357))

(declare-fun m!347369 () Bool)

(assert (=> b!346206 m!347369))

(declare-fun m!347371 () Bool)

(assert (=> b!346206 m!347371))

(assert (=> b!346206 m!347365))

(declare-fun m!347373 () Bool)

(assert (=> b!346206 m!347373))

(declare-fun m!347375 () Bool)

(assert (=> bm!26817 m!347375))

(declare-fun m!347377 () Bool)

(assert (=> b!346203 m!347377))

(declare-fun m!347379 () Bool)

(assert (=> b!346203 m!347379))

(declare-fun m!347381 () Bool)

(assert (=> b!346203 m!347381))

(assert (=> b!346203 m!347379))

(assert (=> b!346203 m!347337))

(declare-fun m!347383 () Bool)

(assert (=> b!346203 m!347383))

(assert (=> b!346203 m!347337))

(assert (=> b!346203 m!347377))

(assert (=> d!71097 m!347281))

(declare-fun m!347385 () Bool)

(assert (=> b!346217 m!347385))

(declare-fun m!347387 () Bool)

(assert (=> bm!26819 m!347387))

(declare-fun m!347389 () Bool)

(assert (=> b!346210 m!347389))

(declare-fun m!347391 () Bool)

(assert (=> bm!26816 m!347391))

(assert (=> bm!26820 m!347351))

(declare-fun m!347393 () Bool)

(assert (=> b!346213 m!347393))

(assert (=> b!346219 m!347337))

(assert (=> b!346219 m!347337))

(assert (=> b!346219 m!347341))

(assert (=> b!346108 d!71097))

(declare-fun d!71099 () Bool)

(assert (=> d!71099 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34666 d!71099))

(declare-fun d!71101 () Bool)

(assert (=> d!71101 (= (array_inv!6452 _values!1525) (bvsge (size!9076 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34666 d!71101))

(declare-fun d!71103 () Bool)

(assert (=> d!71103 (= (array_inv!6453 _keys!1895) (bvsge (size!9077 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34666 d!71103))

(declare-fun d!71105 () Bool)

(assert (=> d!71105 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!346107 d!71105))

(declare-fun b!346234 () Bool)

(declare-fun e!212220 () Bool)

(declare-fun contains!2255 (List!5078 (_ BitVec 64)) Bool)

(assert (=> b!346234 (= e!212220 (contains!2255 Nil!5075 (select (arr!8725 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!346235 () Bool)

(declare-fun e!212218 () Bool)

(declare-fun call!26828 () Bool)

(assert (=> b!346235 (= e!212218 call!26828)))

(declare-fun b!346236 () Bool)

(assert (=> b!346236 (= e!212218 call!26828)))

(declare-fun b!346237 () Bool)

(declare-fun e!212219 () Bool)

(declare-fun e!212217 () Bool)

(assert (=> b!346237 (= e!212219 e!212217)))

(declare-fun res!191584 () Bool)

(assert (=> b!346237 (=> (not res!191584) (not e!212217))))

(assert (=> b!346237 (= res!191584 (not e!212220))))

(declare-fun res!191583 () Bool)

(assert (=> b!346237 (=> (not res!191583) (not e!212220))))

(assert (=> b!346237 (= res!191583 (validKeyInArray!0 (select (arr!8725 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!71107 () Bool)

(declare-fun res!191585 () Bool)

(assert (=> d!71107 (=> res!191585 e!212219)))

(assert (=> d!71107 (= res!191585 (bvsge #b00000000000000000000000000000000 (size!9077 _keys!1895)))))

(assert (=> d!71107 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5075) e!212219)))

(declare-fun b!346238 () Bool)

(assert (=> b!346238 (= e!212217 e!212218)))

(declare-fun c!53081 () Bool)

(assert (=> b!346238 (= c!53081 (validKeyInArray!0 (select (arr!8725 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26825 () Bool)

(assert (=> bm!26825 (= call!26828 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53081 (Cons!5074 (select (arr!8725 _keys!1895) #b00000000000000000000000000000000) Nil!5075) Nil!5075)))))

(assert (= (and d!71107 (not res!191585)) b!346237))

(assert (= (and b!346237 res!191583) b!346234))

(assert (= (and b!346237 res!191584) b!346238))

(assert (= (and b!346238 c!53081) b!346236))

(assert (= (and b!346238 (not c!53081)) b!346235))

(assert (= (or b!346236 b!346235) bm!26825))

(assert (=> b!346234 m!347337))

(assert (=> b!346234 m!347337))

(declare-fun m!347395 () Bool)

(assert (=> b!346234 m!347395))

(assert (=> b!346237 m!347337))

(assert (=> b!346237 m!347337))

(assert (=> b!346237 m!347341))

(assert (=> b!346238 m!347337))

(assert (=> b!346238 m!347337))

(assert (=> b!346238 m!347341))

(assert (=> bm!26825 m!347337))

(declare-fun m!347397 () Bool)

(assert (=> bm!26825 m!347397))

(assert (=> b!346110 d!71107))

(declare-fun b!346251 () Bool)

(declare-fun e!212229 () SeekEntryResult!3359)

(assert (=> b!346251 (= e!212229 Undefined!3359)))

(declare-fun b!346252 () Bool)

(declare-fun e!212228 () SeekEntryResult!3359)

(declare-fun lt!163332 () SeekEntryResult!3359)

(assert (=> b!346252 (= e!212228 (MissingZero!3359 (index!15617 lt!163332)))))

(declare-fun b!346253 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18433 (_ BitVec 32)) SeekEntryResult!3359)

(assert (=> b!346253 (= e!212228 (seekKeyOrZeroReturnVacant!0 (x!34478 lt!163332) (index!15617 lt!163332) (index!15617 lt!163332) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!346254 () Bool)

(declare-fun e!212227 () SeekEntryResult!3359)

(assert (=> b!346254 (= e!212229 e!212227)))

(declare-fun lt!163331 () (_ BitVec 64))

(assert (=> b!346254 (= lt!163331 (select (arr!8725 _keys!1895) (index!15617 lt!163332)))))

(declare-fun c!53090 () Bool)

(assert (=> b!346254 (= c!53090 (= lt!163331 k0!1348))))

(declare-fun d!71109 () Bool)

(declare-fun lt!163330 () SeekEntryResult!3359)

(assert (=> d!71109 (and (or ((_ is Undefined!3359) lt!163330) (not ((_ is Found!3359) lt!163330)) (and (bvsge (index!15616 lt!163330) #b00000000000000000000000000000000) (bvslt (index!15616 lt!163330) (size!9077 _keys!1895)))) (or ((_ is Undefined!3359) lt!163330) ((_ is Found!3359) lt!163330) (not ((_ is MissingZero!3359) lt!163330)) (and (bvsge (index!15615 lt!163330) #b00000000000000000000000000000000) (bvslt (index!15615 lt!163330) (size!9077 _keys!1895)))) (or ((_ is Undefined!3359) lt!163330) ((_ is Found!3359) lt!163330) ((_ is MissingZero!3359) lt!163330) (not ((_ is MissingVacant!3359) lt!163330)) (and (bvsge (index!15618 lt!163330) #b00000000000000000000000000000000) (bvslt (index!15618 lt!163330) (size!9077 _keys!1895)))) (or ((_ is Undefined!3359) lt!163330) (ite ((_ is Found!3359) lt!163330) (= (select (arr!8725 _keys!1895) (index!15616 lt!163330)) k0!1348) (ite ((_ is MissingZero!3359) lt!163330) (= (select (arr!8725 _keys!1895) (index!15615 lt!163330)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3359) lt!163330) (= (select (arr!8725 _keys!1895) (index!15618 lt!163330)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!71109 (= lt!163330 e!212229)))

(declare-fun c!53089 () Bool)

(assert (=> d!71109 (= c!53089 (and ((_ is Intermediate!3359) lt!163332) (undefined!4171 lt!163332)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18433 (_ BitVec 32)) SeekEntryResult!3359)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!71109 (= lt!163332 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!71109 (validMask!0 mask!2385)))

(assert (=> d!71109 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!163330)))

(declare-fun b!346255 () Bool)

(declare-fun c!53088 () Bool)

(assert (=> b!346255 (= c!53088 (= lt!163331 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!346255 (= e!212227 e!212228)))

(declare-fun b!346256 () Bool)

(assert (=> b!346256 (= e!212227 (Found!3359 (index!15617 lt!163332)))))

(assert (= (and d!71109 c!53089) b!346251))

(assert (= (and d!71109 (not c!53089)) b!346254))

(assert (= (and b!346254 c!53090) b!346256))

(assert (= (and b!346254 (not c!53090)) b!346255))

(assert (= (and b!346255 c!53088) b!346252))

(assert (= (and b!346255 (not c!53088)) b!346253))

(declare-fun m!347399 () Bool)

(assert (=> b!346253 m!347399))

(declare-fun m!347401 () Bool)

(assert (=> b!346254 m!347401))

(declare-fun m!347403 () Bool)

(assert (=> d!71109 m!347403))

(declare-fun m!347405 () Bool)

(assert (=> d!71109 m!347405))

(declare-fun m!347407 () Bool)

(assert (=> d!71109 m!347407))

(declare-fun m!347409 () Bool)

(assert (=> d!71109 m!347409))

(declare-fun m!347411 () Bool)

(assert (=> d!71109 m!347411))

(assert (=> d!71109 m!347281))

(assert (=> d!71109 m!347409))

(assert (=> b!346102 d!71109))

(declare-fun b!346265 () Bool)

(declare-fun e!212236 () Bool)

(declare-fun call!26831 () Bool)

(assert (=> b!346265 (= e!212236 call!26831)))

(declare-fun b!346266 () Bool)

(declare-fun e!212237 () Bool)

(assert (=> b!346266 (= e!212237 call!26831)))

(declare-fun d!71111 () Bool)

(declare-fun res!191590 () Bool)

(declare-fun e!212238 () Bool)

(assert (=> d!71111 (=> res!191590 e!212238)))

(assert (=> d!71111 (= res!191590 (bvsge #b00000000000000000000000000000000 (size!9077 _keys!1895)))))

(assert (=> d!71111 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!212238)))

(declare-fun bm!26828 () Bool)

(assert (=> bm!26828 (= call!26831 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!346267 () Bool)

(assert (=> b!346267 (= e!212238 e!212236)))

(declare-fun c!53093 () Bool)

(assert (=> b!346267 (= c!53093 (validKeyInArray!0 (select (arr!8725 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!346268 () Bool)

(assert (=> b!346268 (= e!212236 e!212237)))

(declare-fun lt!163339 () (_ BitVec 64))

(assert (=> b!346268 (= lt!163339 (select (arr!8725 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!163340 () Unit!10744)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18433 (_ BitVec 64) (_ BitVec 32)) Unit!10744)

(assert (=> b!346268 (= lt!163340 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!163339 #b00000000000000000000000000000000))))

(assert (=> b!346268 (arrayContainsKey!0 _keys!1895 lt!163339 #b00000000000000000000000000000000)))

(declare-fun lt!163341 () Unit!10744)

(assert (=> b!346268 (= lt!163341 lt!163340)))

(declare-fun res!191591 () Bool)

(assert (=> b!346268 (= res!191591 (= (seekEntryOrOpen!0 (select (arr!8725 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3359 #b00000000000000000000000000000000)))))

(assert (=> b!346268 (=> (not res!191591) (not e!212237))))

(assert (= (and d!71111 (not res!191590)) b!346267))

(assert (= (and b!346267 c!53093) b!346268))

(assert (= (and b!346267 (not c!53093)) b!346265))

(assert (= (and b!346268 res!191591) b!346266))

(assert (= (or b!346266 b!346265) bm!26828))

(declare-fun m!347413 () Bool)

(assert (=> bm!26828 m!347413))

(assert (=> b!346267 m!347337))

(assert (=> b!346267 m!347337))

(assert (=> b!346267 m!347341))

(assert (=> b!346268 m!347337))

(declare-fun m!347415 () Bool)

(assert (=> b!346268 m!347415))

(declare-fun m!347417 () Bool)

(assert (=> b!346268 m!347417))

(assert (=> b!346268 m!347337))

(declare-fun m!347419 () Bool)

(assert (=> b!346268 m!347419))

(assert (=> b!346105 d!71111))

(declare-fun b!346276 () Bool)

(declare-fun e!212243 () Bool)

(assert (=> b!346276 (= e!212243 tp_is_empty!7437)))

(declare-fun mapNonEmpty!12615 () Bool)

(declare-fun mapRes!12615 () Bool)

(declare-fun tp!26025 () Bool)

(declare-fun e!212244 () Bool)

(assert (=> mapNonEmpty!12615 (= mapRes!12615 (and tp!26025 e!212244))))

(declare-fun mapKey!12615 () (_ BitVec 32))

(declare-fun mapRest!12615 () (Array (_ BitVec 32) ValueCell!3375))

(declare-fun mapValue!12615 () ValueCell!3375)

(assert (=> mapNonEmpty!12615 (= mapRest!12609 (store mapRest!12615 mapKey!12615 mapValue!12615))))

(declare-fun condMapEmpty!12615 () Bool)

(declare-fun mapDefault!12615 () ValueCell!3375)

(assert (=> mapNonEmpty!12609 (= condMapEmpty!12615 (= mapRest!12609 ((as const (Array (_ BitVec 32) ValueCell!3375)) mapDefault!12615)))))

(assert (=> mapNonEmpty!12609 (= tp!26016 (and e!212243 mapRes!12615))))

(declare-fun mapIsEmpty!12615 () Bool)

(assert (=> mapIsEmpty!12615 mapRes!12615))

(declare-fun b!346275 () Bool)

(assert (=> b!346275 (= e!212244 tp_is_empty!7437)))

(assert (= (and mapNonEmpty!12609 condMapEmpty!12615) mapIsEmpty!12615))

(assert (= (and mapNonEmpty!12609 (not condMapEmpty!12615)) mapNonEmpty!12615))

(assert (= (and mapNonEmpty!12615 ((_ is ValueCellFull!3375) mapValue!12615)) b!346275))

(assert (= (and mapNonEmpty!12609 ((_ is ValueCellFull!3375) mapDefault!12615)) b!346276))

(declare-fun m!347421 () Bool)

(assert (=> mapNonEmpty!12615 m!347421))

(declare-fun b_lambda!8511 () Bool)

(assert (= b_lambda!8509 (or (and start!34666 b_free!7485) b_lambda!8511)))

(check-sat (not b!346208) (not d!71109) (not b!346210) tp_is_empty!7437 (not b!346253) (not b_next!7485) (not b!346219) (not bm!26817) b_and!14725 (not mapNonEmpty!12615) (not b!346217) (not b!346201) (not b!346206) (not bm!26828) (not b!346234) (not b!346149) (not bm!26816) (not b!346237) (not b!346213) (not bm!26819) (not b!346156) (not b!346238) (not bm!26825) (not d!71095) (not d!71097) (not b!346203) (not b_lambda!8511) (not b!346158) (not b!346267) (not b!346268) (not bm!26820))
(check-sat b_and!14725 (not b_next!7485))
