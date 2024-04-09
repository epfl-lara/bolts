; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7364 () Bool)

(assert start!7364)

(declare-fun b!47268 () Bool)

(declare-fun e!30250 () Bool)

(declare-fun tp_is_empty!2019 () Bool)

(assert (=> b!47268 (= e!30250 tp_is_empty!2019)))

(declare-fun b!47269 () Bool)

(declare-fun e!30249 () Bool)

(declare-fun mapRes!2063 () Bool)

(assert (=> b!47269 (= e!30249 (and e!30250 mapRes!2063))))

(declare-fun condMapEmpty!2063 () Bool)

(declare-datatypes ((V!2425 0))(
  ( (V!2426 (val!1048 Int)) )
))
(declare-datatypes ((ValueCell!720 0))(
  ( (ValueCellFull!720 (v!2107 V!2425)) (EmptyCell!720) )
))
(declare-datatypes ((array!3100 0))(
  ( (array!3101 (arr!1487 (Array (_ BitVec 32) ValueCell!720)) (size!1709 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3100)

(declare-fun mapDefault!2063 () ValueCell!720)

(assert (=> b!47269 (= condMapEmpty!2063 (= (arr!1487 _values!1550) ((as const (Array (_ BitVec 32) ValueCell!720)) mapDefault!2063)))))

(declare-fun res!27494 () Bool)

(declare-fun e!30248 () Bool)

(assert (=> start!7364 (=> (not res!27494) (not e!30248))))

(declare-fun mask!2458 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7364 (= res!27494 (validMask!0 mask!2458))))

(assert (=> start!7364 e!30248))

(assert (=> start!7364 true))

(declare-fun array_inv!850 (array!3100) Bool)

(assert (=> start!7364 (and (array_inv!850 _values!1550) e!30249)))

(declare-datatypes ((array!3102 0))(
  ( (array!3103 (arr!1488 (Array (_ BitVec 32) (_ BitVec 64))) (size!1710 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3102)

(declare-fun array_inv!851 (array!3102) Bool)

(assert (=> start!7364 (array_inv!851 _keys!1940)))

(declare-fun b!47270 () Bool)

(declare-fun res!27495 () Bool)

(assert (=> b!47270 (=> (not res!27495) (not e!30248))))

(declare-fun extraKeys!1471 () (_ BitVec 32))

(assert (=> b!47270 (= res!27495 (and (= (size!1709 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1710 _keys!1940) (size!1709 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun b!47271 () Bool)

(declare-fun res!27496 () Bool)

(assert (=> b!47271 (=> (not res!27496) (not e!30248))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3102 (_ BitVec 32)) Bool)

(assert (=> b!47271 (= res!27496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun mapIsEmpty!2063 () Bool)

(assert (=> mapIsEmpty!2063 mapRes!2063))

(declare-fun b!47272 () Bool)

(assert (=> b!47272 (= e!30248 (and (bvsle #b00000000000000000000000000000000 (size!1710 _keys!1940)) (bvsge (size!1710 _keys!1940) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!2063 () Bool)

(declare-fun tp!6212 () Bool)

(declare-fun e!30251 () Bool)

(assert (=> mapNonEmpty!2063 (= mapRes!2063 (and tp!6212 e!30251))))

(declare-fun mapKey!2063 () (_ BitVec 32))

(declare-fun mapValue!2063 () ValueCell!720)

(declare-fun mapRest!2063 () (Array (_ BitVec 32) ValueCell!720))

(assert (=> mapNonEmpty!2063 (= (arr!1487 _values!1550) (store mapRest!2063 mapKey!2063 mapValue!2063))))

(declare-fun b!47273 () Bool)

(assert (=> b!47273 (= e!30251 tp_is_empty!2019)))

(assert (= (and start!7364 res!27494) b!47270))

(assert (= (and b!47270 res!27495) b!47271))

(assert (= (and b!47271 res!27496) b!47272))

(assert (= (and b!47269 condMapEmpty!2063) mapIsEmpty!2063))

(assert (= (and b!47269 (not condMapEmpty!2063)) mapNonEmpty!2063))

(get-info :version)

(assert (= (and mapNonEmpty!2063 ((_ is ValueCellFull!720) mapValue!2063)) b!47273))

(assert (= (and b!47269 ((_ is ValueCellFull!720) mapDefault!2063)) b!47268))

(assert (= start!7364 b!47269))

(declare-fun m!41579 () Bool)

(assert (=> start!7364 m!41579))

(declare-fun m!41581 () Bool)

(assert (=> start!7364 m!41581))

(declare-fun m!41583 () Bool)

(assert (=> start!7364 m!41583))

(declare-fun m!41585 () Bool)

(assert (=> b!47271 m!41585))

(declare-fun m!41587 () Bool)

(assert (=> mapNonEmpty!2063 m!41587))

(check-sat (not start!7364) (not b!47271) (not mapNonEmpty!2063) tp_is_empty!2019)
(check-sat)
(get-model)

(declare-fun d!9463 () Bool)

(assert (=> d!9463 (= (validMask!0 mask!2458) (and (or (= mask!2458 #b00000000000000000000000000000111) (= mask!2458 #b00000000000000000000000000001111) (= mask!2458 #b00000000000000000000000000011111) (= mask!2458 #b00000000000000000000000000111111) (= mask!2458 #b00000000000000000000000001111111) (= mask!2458 #b00000000000000000000000011111111) (= mask!2458 #b00000000000000000000000111111111) (= mask!2458 #b00000000000000000000001111111111) (= mask!2458 #b00000000000000000000011111111111) (= mask!2458 #b00000000000000000000111111111111) (= mask!2458 #b00000000000000000001111111111111) (= mask!2458 #b00000000000000000011111111111111) (= mask!2458 #b00000000000000000111111111111111) (= mask!2458 #b00000000000000001111111111111111) (= mask!2458 #b00000000000000011111111111111111) (= mask!2458 #b00000000000000111111111111111111) (= mask!2458 #b00000000000001111111111111111111) (= mask!2458 #b00000000000011111111111111111111) (= mask!2458 #b00000000000111111111111111111111) (= mask!2458 #b00000000001111111111111111111111) (= mask!2458 #b00000000011111111111111111111111) (= mask!2458 #b00000000111111111111111111111111) (= mask!2458 #b00000001111111111111111111111111) (= mask!2458 #b00000011111111111111111111111111) (= mask!2458 #b00000111111111111111111111111111) (= mask!2458 #b00001111111111111111111111111111) (= mask!2458 #b00011111111111111111111111111111) (= mask!2458 #b00111111111111111111111111111111)) (bvsle mask!2458 #b00111111111111111111111111111111)))))

(assert (=> start!7364 d!9463))

(declare-fun d!9465 () Bool)

(assert (=> d!9465 (= (array_inv!850 _values!1550) (bvsge (size!1709 _values!1550) #b00000000000000000000000000000000))))

(assert (=> start!7364 d!9465))

(declare-fun d!9467 () Bool)

(assert (=> d!9467 (= (array_inv!851 _keys!1940) (bvsge (size!1710 _keys!1940) #b00000000000000000000000000000000))))

(assert (=> start!7364 d!9467))

(declare-fun bm!3714 () Bool)

(declare-fun call!3717 () Bool)

(assert (=> bm!3714 (= call!3717 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1940 mask!2458))))

(declare-fun b!47300 () Bool)

(declare-fun e!30275 () Bool)

(declare-fun e!30274 () Bool)

(assert (=> b!47300 (= e!30275 e!30274)))

(declare-fun lt!20410 () (_ BitVec 64))

(assert (=> b!47300 (= lt!20410 (select (arr!1488 _keys!1940) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!1329 0))(
  ( (Unit!1330) )
))
(declare-fun lt!20409 () Unit!1329)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3102 (_ BitVec 64) (_ BitVec 32)) Unit!1329)

(assert (=> b!47300 (= lt!20409 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1940 lt!20410 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!3102 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!47300 (arrayContainsKey!0 _keys!1940 lt!20410 #b00000000000000000000000000000000)))

(declare-fun lt!20411 () Unit!1329)

(assert (=> b!47300 (= lt!20411 lt!20409)))

(declare-fun res!27511 () Bool)

(declare-datatypes ((SeekEntryResult!217 0))(
  ( (MissingZero!217 (index!2990 (_ BitVec 32))) (Found!217 (index!2991 (_ BitVec 32))) (Intermediate!217 (undefined!1029 Bool) (index!2992 (_ BitVec 32)) (x!8737 (_ BitVec 32))) (Undefined!217) (MissingVacant!217 (index!2993 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3102 (_ BitVec 32)) SeekEntryResult!217)

(assert (=> b!47300 (= res!27511 (= (seekEntryOrOpen!0 (select (arr!1488 _keys!1940) #b00000000000000000000000000000000) _keys!1940 mask!2458) (Found!217 #b00000000000000000000000000000000)))))

(assert (=> b!47300 (=> (not res!27511) (not e!30274))))

(declare-fun b!47302 () Bool)

(assert (=> b!47302 (= e!30275 call!3717)))

(declare-fun b!47303 () Bool)

(assert (=> b!47303 (= e!30274 call!3717)))

(declare-fun b!47301 () Bool)

(declare-fun e!30273 () Bool)

(assert (=> b!47301 (= e!30273 e!30275)))

(declare-fun c!6420 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!47301 (= c!6420 (validKeyInArray!0 (select (arr!1488 _keys!1940) #b00000000000000000000000000000000)))))

(declare-fun d!9469 () Bool)

(declare-fun res!27510 () Bool)

(assert (=> d!9469 (=> res!27510 e!30273)))

(assert (=> d!9469 (= res!27510 (bvsge #b00000000000000000000000000000000 (size!1710 _keys!1940)))))

(assert (=> d!9469 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458) e!30273)))

(assert (= (and d!9469 (not res!27510)) b!47301))

(assert (= (and b!47301 c!6420) b!47300))

(assert (= (and b!47301 (not c!6420)) b!47302))

(assert (= (and b!47300 res!27511) b!47303))

(assert (= (or b!47303 b!47302) bm!3714))

(declare-fun m!41599 () Bool)

(assert (=> bm!3714 m!41599))

(declare-fun m!41601 () Bool)

(assert (=> b!47300 m!41601))

(declare-fun m!41603 () Bool)

(assert (=> b!47300 m!41603))

(declare-fun m!41605 () Bool)

(assert (=> b!47300 m!41605))

(assert (=> b!47300 m!41601))

(declare-fun m!41607 () Bool)

(assert (=> b!47300 m!41607))

(assert (=> b!47301 m!41601))

(assert (=> b!47301 m!41601))

(declare-fun m!41609 () Bool)

(assert (=> b!47301 m!41609))

(assert (=> b!47271 d!9469))

(declare-fun mapIsEmpty!2069 () Bool)

(declare-fun mapRes!2069 () Bool)

(assert (=> mapIsEmpty!2069 mapRes!2069))

(declare-fun condMapEmpty!2069 () Bool)

(declare-fun mapDefault!2069 () ValueCell!720)

(assert (=> mapNonEmpty!2063 (= condMapEmpty!2069 (= mapRest!2063 ((as const (Array (_ BitVec 32) ValueCell!720)) mapDefault!2069)))))

(declare-fun e!30280 () Bool)

(assert (=> mapNonEmpty!2063 (= tp!6212 (and e!30280 mapRes!2069))))

(declare-fun b!47311 () Bool)

(assert (=> b!47311 (= e!30280 tp_is_empty!2019)))

(declare-fun mapNonEmpty!2069 () Bool)

(declare-fun tp!6218 () Bool)

(declare-fun e!30281 () Bool)

(assert (=> mapNonEmpty!2069 (= mapRes!2069 (and tp!6218 e!30281))))

(declare-fun mapValue!2069 () ValueCell!720)

(declare-fun mapKey!2069 () (_ BitVec 32))

(declare-fun mapRest!2069 () (Array (_ BitVec 32) ValueCell!720))

(assert (=> mapNonEmpty!2069 (= mapRest!2063 (store mapRest!2069 mapKey!2069 mapValue!2069))))

(declare-fun b!47310 () Bool)

(assert (=> b!47310 (= e!30281 tp_is_empty!2019)))

(assert (= (and mapNonEmpty!2063 condMapEmpty!2069) mapIsEmpty!2069))

(assert (= (and mapNonEmpty!2063 (not condMapEmpty!2069)) mapNonEmpty!2069))

(assert (= (and mapNonEmpty!2069 ((_ is ValueCellFull!720) mapValue!2069)) b!47310))

(assert (= (and mapNonEmpty!2063 ((_ is ValueCellFull!720) mapDefault!2069)) b!47311))

(declare-fun m!41611 () Bool)

(assert (=> mapNonEmpty!2069 m!41611))

(check-sat tp_is_empty!2019 (not b!47301) (not mapNonEmpty!2069) (not b!47300) (not bm!3714))
(check-sat)
