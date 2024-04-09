; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106946 () Bool)

(assert start!106946)

(declare-fun b!1267997 () Bool)

(declare-fun res!844089 () Bool)

(declare-fun e!722497 () Bool)

(assert (=> b!1267997 (=> (not res!844089) (not e!722497))))

(declare-datatypes ((V!48709 0))(
  ( (V!48710 (val!16393 Int)) )
))
(declare-datatypes ((ValueCell!15465 0))(
  ( (ValueCellFull!15465 (v!19027 V!48709)) (EmptyCell!15465) )
))
(declare-datatypes ((array!82523 0))(
  ( (array!82524 (arr!39798 (Array (_ BitVec 32) ValueCell!15465)) (size!40335 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82523)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82525 0))(
  ( (array!82526 (arr!39799 (Array (_ BitVec 32) (_ BitVec 64))) (size!40336 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82525)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1267997 (= res!844089 (and (= (size!40335 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40336 _keys!1364) (size!40335 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!844088 () Bool)

(assert (=> start!106946 (=> (not res!844088) (not e!722497))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106946 (= res!844088 (validMask!0 mask!1730))))

(assert (=> start!106946 e!722497))

(declare-fun e!722499 () Bool)

(declare-fun array_inv!30243 (array!82523) Bool)

(assert (=> start!106946 (and (array_inv!30243 _values!1134) e!722499)))

(assert (=> start!106946 true))

(declare-fun array_inv!30244 (array!82525) Bool)

(assert (=> start!106946 (array_inv!30244 _keys!1364)))

(declare-fun b!1267998 () Bool)

(declare-fun e!722495 () Bool)

(declare-fun tp_is_empty!32637 () Bool)

(assert (=> b!1267998 (= e!722495 tp_is_empty!32637)))

(declare-fun b!1267999 () Bool)

(declare-fun mapRes!50524 () Bool)

(assert (=> b!1267999 (= e!722499 (and e!722495 mapRes!50524))))

(declare-fun condMapEmpty!50524 () Bool)

(declare-fun mapDefault!50524 () ValueCell!15465)

(assert (=> b!1267999 (= condMapEmpty!50524 (= (arr!39798 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15465)) mapDefault!50524)))))

(declare-fun b!1268000 () Bool)

(declare-fun e!722496 () Bool)

(assert (=> b!1268000 (= e!722496 tp_is_empty!32637)))

(declare-fun b!1268001 () Bool)

(assert (=> b!1268001 (= e!722497 (bvsgt #b00000000000000000000000000000000 (size!40336 _keys!1364)))))

(declare-fun b!1268002 () Bool)

(declare-fun res!844087 () Bool)

(assert (=> b!1268002 (=> (not res!844087) (not e!722497))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82525 (_ BitVec 32)) Bool)

(assert (=> b!1268002 (= res!844087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!50524 () Bool)

(assert (=> mapIsEmpty!50524 mapRes!50524))

(declare-fun mapNonEmpty!50524 () Bool)

(declare-fun tp!96704 () Bool)

(assert (=> mapNonEmpty!50524 (= mapRes!50524 (and tp!96704 e!722496))))

(declare-fun mapRest!50524 () (Array (_ BitVec 32) ValueCell!15465))

(declare-fun mapKey!50524 () (_ BitVec 32))

(declare-fun mapValue!50524 () ValueCell!15465)

(assert (=> mapNonEmpty!50524 (= (arr!39798 _values!1134) (store mapRest!50524 mapKey!50524 mapValue!50524))))

(assert (= (and start!106946 res!844088) b!1267997))

(assert (= (and b!1267997 res!844089) b!1268002))

(assert (= (and b!1268002 res!844087) b!1268001))

(assert (= (and b!1267999 condMapEmpty!50524) mapIsEmpty!50524))

(assert (= (and b!1267999 (not condMapEmpty!50524)) mapNonEmpty!50524))

(get-info :version)

(assert (= (and mapNonEmpty!50524 ((_ is ValueCellFull!15465) mapValue!50524)) b!1268000))

(assert (= (and b!1267999 ((_ is ValueCellFull!15465) mapDefault!50524)) b!1267998))

(assert (= start!106946 b!1267999))

(declare-fun m!1167013 () Bool)

(assert (=> start!106946 m!1167013))

(declare-fun m!1167015 () Bool)

(assert (=> start!106946 m!1167015))

(declare-fun m!1167017 () Bool)

(assert (=> start!106946 m!1167017))

(declare-fun m!1167019 () Bool)

(assert (=> b!1268002 m!1167019))

(declare-fun m!1167021 () Bool)

(assert (=> mapNonEmpty!50524 m!1167021))

(check-sat (not start!106946) (not b!1268002) (not mapNonEmpty!50524) tp_is_empty!32637)
(check-sat)
(get-model)

(declare-fun d!139557 () Bool)

(assert (=> d!139557 (= (validMask!0 mask!1730) (and (or (= mask!1730 #b00000000000000000000000000000111) (= mask!1730 #b00000000000000000000000000001111) (= mask!1730 #b00000000000000000000000000011111) (= mask!1730 #b00000000000000000000000000111111) (= mask!1730 #b00000000000000000000000001111111) (= mask!1730 #b00000000000000000000000011111111) (= mask!1730 #b00000000000000000000000111111111) (= mask!1730 #b00000000000000000000001111111111) (= mask!1730 #b00000000000000000000011111111111) (= mask!1730 #b00000000000000000000111111111111) (= mask!1730 #b00000000000000000001111111111111) (= mask!1730 #b00000000000000000011111111111111) (= mask!1730 #b00000000000000000111111111111111) (= mask!1730 #b00000000000000001111111111111111) (= mask!1730 #b00000000000000011111111111111111) (= mask!1730 #b00000000000000111111111111111111) (= mask!1730 #b00000000000001111111111111111111) (= mask!1730 #b00000000000011111111111111111111) (= mask!1730 #b00000000000111111111111111111111) (= mask!1730 #b00000000001111111111111111111111) (= mask!1730 #b00000000011111111111111111111111) (= mask!1730 #b00000000111111111111111111111111) (= mask!1730 #b00000001111111111111111111111111) (= mask!1730 #b00000011111111111111111111111111) (= mask!1730 #b00000111111111111111111111111111) (= mask!1730 #b00001111111111111111111111111111) (= mask!1730 #b00011111111111111111111111111111) (= mask!1730 #b00111111111111111111111111111111)) (bvsle mask!1730 #b00111111111111111111111111111111)))))

(assert (=> start!106946 d!139557))

(declare-fun d!139559 () Bool)

(assert (=> d!139559 (= (array_inv!30243 _values!1134) (bvsge (size!40335 _values!1134) #b00000000000000000000000000000000))))

(assert (=> start!106946 d!139559))

(declare-fun d!139561 () Bool)

(assert (=> d!139561 (= (array_inv!30244 _keys!1364) (bvsge (size!40336 _keys!1364) #b00000000000000000000000000000000))))

(assert (=> start!106946 d!139561))

(declare-fun d!139563 () Bool)

(declare-fun res!844103 () Bool)

(declare-fun e!722523 () Bool)

(assert (=> d!139563 (=> res!844103 e!722523)))

(assert (=> d!139563 (= res!844103 (bvsge #b00000000000000000000000000000000 (size!40336 _keys!1364)))))

(assert (=> d!139563 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730) e!722523)))

(declare-fun b!1268029 () Bool)

(declare-fun e!722521 () Bool)

(assert (=> b!1268029 (= e!722523 e!722521)))

(declare-fun c!123566 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1268029 (= c!123566 (validKeyInArray!0 (select (arr!39799 _keys!1364) #b00000000000000000000000000000000)))))

(declare-fun b!1268030 () Bool)

(declare-fun e!722522 () Bool)

(declare-fun call!62502 () Bool)

(assert (=> b!1268030 (= e!722522 call!62502)))

(declare-fun b!1268031 () Bool)

(assert (=> b!1268031 (= e!722521 call!62502)))

(declare-fun b!1268032 () Bool)

(assert (=> b!1268032 (= e!722521 e!722522)))

(declare-fun lt!574327 () (_ BitVec 64))

(assert (=> b!1268032 (= lt!574327 (select (arr!39799 _keys!1364) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42176 0))(
  ( (Unit!42177) )
))
(declare-fun lt!574325 () Unit!42176)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!82525 (_ BitVec 64) (_ BitVec 32)) Unit!42176)

(assert (=> b!1268032 (= lt!574325 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1364 lt!574327 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!82525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1268032 (arrayContainsKey!0 _keys!1364 lt!574327 #b00000000000000000000000000000000)))

(declare-fun lt!574326 () Unit!42176)

(assert (=> b!1268032 (= lt!574326 lt!574325)))

(declare-fun res!844104 () Bool)

(declare-datatypes ((SeekEntryResult!9980 0))(
  ( (MissingZero!9980 (index!42290 (_ BitVec 32))) (Found!9980 (index!42291 (_ BitVec 32))) (Intermediate!9980 (undefined!10792 Bool) (index!42292 (_ BitVec 32)) (x!111826 (_ BitVec 32))) (Undefined!9980) (MissingVacant!9980 (index!42293 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!82525 (_ BitVec 32)) SeekEntryResult!9980)

(assert (=> b!1268032 (= res!844104 (= (seekEntryOrOpen!0 (select (arr!39799 _keys!1364) #b00000000000000000000000000000000) _keys!1364 mask!1730) (Found!9980 #b00000000000000000000000000000000)))))

(assert (=> b!1268032 (=> (not res!844104) (not e!722522))))

(declare-fun bm!62499 () Bool)

(assert (=> bm!62499 (= call!62502 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1364 mask!1730))))

(assert (= (and d!139563 (not res!844103)) b!1268029))

(assert (= (and b!1268029 c!123566) b!1268032))

(assert (= (and b!1268029 (not c!123566)) b!1268031))

(assert (= (and b!1268032 res!844104) b!1268030))

(assert (= (or b!1268030 b!1268031) bm!62499))

(declare-fun m!1167033 () Bool)

(assert (=> b!1268029 m!1167033))

(assert (=> b!1268029 m!1167033))

(declare-fun m!1167035 () Bool)

(assert (=> b!1268029 m!1167035))

(assert (=> b!1268032 m!1167033))

(declare-fun m!1167037 () Bool)

(assert (=> b!1268032 m!1167037))

(declare-fun m!1167039 () Bool)

(assert (=> b!1268032 m!1167039))

(assert (=> b!1268032 m!1167033))

(declare-fun m!1167041 () Bool)

(assert (=> b!1268032 m!1167041))

(declare-fun m!1167043 () Bool)

(assert (=> bm!62499 m!1167043))

(assert (=> b!1268002 d!139563))

(declare-fun b!1268039 () Bool)

(declare-fun e!722529 () Bool)

(assert (=> b!1268039 (= e!722529 tp_is_empty!32637)))

(declare-fun mapNonEmpty!50530 () Bool)

(declare-fun mapRes!50530 () Bool)

(declare-fun tp!96710 () Bool)

(assert (=> mapNonEmpty!50530 (= mapRes!50530 (and tp!96710 e!722529))))

(declare-fun mapRest!50530 () (Array (_ BitVec 32) ValueCell!15465))

(declare-fun mapValue!50530 () ValueCell!15465)

(declare-fun mapKey!50530 () (_ BitVec 32))

(assert (=> mapNonEmpty!50530 (= mapRest!50524 (store mapRest!50530 mapKey!50530 mapValue!50530))))

(declare-fun mapIsEmpty!50530 () Bool)

(assert (=> mapIsEmpty!50530 mapRes!50530))

(declare-fun b!1268040 () Bool)

(declare-fun e!722528 () Bool)

(assert (=> b!1268040 (= e!722528 tp_is_empty!32637)))

(declare-fun condMapEmpty!50530 () Bool)

(declare-fun mapDefault!50530 () ValueCell!15465)

(assert (=> mapNonEmpty!50524 (= condMapEmpty!50530 (= mapRest!50524 ((as const (Array (_ BitVec 32) ValueCell!15465)) mapDefault!50530)))))

(assert (=> mapNonEmpty!50524 (= tp!96704 (and e!722528 mapRes!50530))))

(assert (= (and mapNonEmpty!50524 condMapEmpty!50530) mapIsEmpty!50530))

(assert (= (and mapNonEmpty!50524 (not condMapEmpty!50530)) mapNonEmpty!50530))

(assert (= (and mapNonEmpty!50530 ((_ is ValueCellFull!15465) mapValue!50530)) b!1268039))

(assert (= (and mapNonEmpty!50524 ((_ is ValueCellFull!15465) mapDefault!50530)) b!1268040))

(declare-fun m!1167045 () Bool)

(assert (=> mapNonEmpty!50530 m!1167045))

(check-sat (not b!1268032) tp_is_empty!32637 (not bm!62499) (not b!1268029) (not mapNonEmpty!50530))
(check-sat)
