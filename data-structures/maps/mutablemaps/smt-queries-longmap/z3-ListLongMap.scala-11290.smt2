; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131640 () Bool)

(assert start!131640)

(declare-fun b!1541506 () Bool)

(declare-fun res!1058089 () Bool)

(declare-fun e!857436 () Bool)

(assert (=> b!1541506 (=> (not res!1058089) (not e!857436))))

(declare-datatypes ((array!102465 0))(
  ( (array!102466 (arr!49434 (Array (_ BitVec 32) (_ BitVec 64))) (size!49985 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102465)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58623 0))(
  ( (V!58624 (val!18895 Int)) )
))
(declare-datatypes ((ValueCell!17907 0))(
  ( (ValueCellFull!17907 (v!21692 V!58623)) (EmptyCell!17907) )
))
(declare-datatypes ((array!102467 0))(
  ( (array!102468 (arr!49435 (Array (_ BitVec 32) ValueCell!17907)) (size!49986 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102467)

(assert (=> b!1541506 (= res!1058089 (and (= (size!49986 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!49985 _keys!618) (size!49986 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1541507 () Bool)

(declare-fun e!857434 () Bool)

(declare-fun tp_is_empty!37635 () Bool)

(assert (=> b!1541507 (= e!857434 tp_is_empty!37635)))

(declare-fun mapIsEmpty!58144 () Bool)

(declare-fun mapRes!58144 () Bool)

(assert (=> mapIsEmpty!58144 mapRes!58144))

(declare-fun b!1541508 () Bool)

(assert (=> b!1541508 (= e!857436 (bvsgt #b00000000000000000000000000000000 (size!49985 _keys!618)))))

(declare-fun mapNonEmpty!58144 () Bool)

(declare-fun tp!110672 () Bool)

(assert (=> mapNonEmpty!58144 (= mapRes!58144 (and tp!110672 e!857434))))

(declare-fun mapValue!58144 () ValueCell!17907)

(declare-fun mapKey!58144 () (_ BitVec 32))

(declare-fun mapRest!58144 () (Array (_ BitVec 32) ValueCell!17907))

(assert (=> mapNonEmpty!58144 (= (arr!49435 _values!470) (store mapRest!58144 mapKey!58144 mapValue!58144))))

(declare-fun b!1541509 () Bool)

(declare-fun e!857438 () Bool)

(declare-fun e!857435 () Bool)

(assert (=> b!1541509 (= e!857438 (and e!857435 mapRes!58144))))

(declare-fun condMapEmpty!58144 () Bool)

(declare-fun mapDefault!58144 () ValueCell!17907)

(assert (=> b!1541509 (= condMapEmpty!58144 (= (arr!49435 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17907)) mapDefault!58144)))))

(declare-fun b!1541510 () Bool)

(declare-fun res!1058091 () Bool)

(assert (=> b!1541510 (=> (not res!1058091) (not e!857436))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102465 (_ BitVec 32)) Bool)

(assert (=> b!1541510 (= res!1058091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1541511 () Bool)

(assert (=> b!1541511 (= e!857435 tp_is_empty!37635)))

(declare-fun res!1058090 () Bool)

(assert (=> start!131640 (=> (not res!1058090) (not e!857436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131640 (= res!1058090 (validMask!0 mask!926))))

(assert (=> start!131640 e!857436))

(assert (=> start!131640 true))

(declare-fun array_inv!38379 (array!102467) Bool)

(assert (=> start!131640 (and (array_inv!38379 _values!470) e!857438)))

(declare-fun array_inv!38380 (array!102465) Bool)

(assert (=> start!131640 (array_inv!38380 _keys!618)))

(assert (= (and start!131640 res!1058090) b!1541506))

(assert (= (and b!1541506 res!1058089) b!1541510))

(assert (= (and b!1541510 res!1058091) b!1541508))

(assert (= (and b!1541509 condMapEmpty!58144) mapIsEmpty!58144))

(assert (= (and b!1541509 (not condMapEmpty!58144)) mapNonEmpty!58144))

(get-info :version)

(assert (= (and mapNonEmpty!58144 ((_ is ValueCellFull!17907) mapValue!58144)) b!1541507))

(assert (= (and b!1541509 ((_ is ValueCellFull!17907) mapDefault!58144)) b!1541511))

(assert (= start!131640 b!1541509))

(declare-fun m!1423479 () Bool)

(assert (=> mapNonEmpty!58144 m!1423479))

(declare-fun m!1423481 () Bool)

(assert (=> b!1541510 m!1423481))

(declare-fun m!1423483 () Bool)

(assert (=> start!131640 m!1423483))

(declare-fun m!1423485 () Bool)

(assert (=> start!131640 m!1423485))

(declare-fun m!1423487 () Bool)

(assert (=> start!131640 m!1423487))

(check-sat (not start!131640) (not b!1541510) (not mapNonEmpty!58144) tp_is_empty!37635)
(check-sat)
(get-model)

(declare-fun d!160613 () Bool)

(assert (=> d!160613 (= (validMask!0 mask!926) (and (or (= mask!926 #b00000000000000000000000000000111) (= mask!926 #b00000000000000000000000000001111) (= mask!926 #b00000000000000000000000000011111) (= mask!926 #b00000000000000000000000000111111) (= mask!926 #b00000000000000000000000001111111) (= mask!926 #b00000000000000000000000011111111) (= mask!926 #b00000000000000000000000111111111) (= mask!926 #b00000000000000000000001111111111) (= mask!926 #b00000000000000000000011111111111) (= mask!926 #b00000000000000000000111111111111) (= mask!926 #b00000000000000000001111111111111) (= mask!926 #b00000000000000000011111111111111) (= mask!926 #b00000000000000000111111111111111) (= mask!926 #b00000000000000001111111111111111) (= mask!926 #b00000000000000011111111111111111) (= mask!926 #b00000000000000111111111111111111) (= mask!926 #b00000000000001111111111111111111) (= mask!926 #b00000000000011111111111111111111) (= mask!926 #b00000000000111111111111111111111) (= mask!926 #b00000000001111111111111111111111) (= mask!926 #b00000000011111111111111111111111) (= mask!926 #b00000000111111111111111111111111) (= mask!926 #b00000001111111111111111111111111) (= mask!926 #b00000011111111111111111111111111) (= mask!926 #b00000111111111111111111111111111) (= mask!926 #b00001111111111111111111111111111) (= mask!926 #b00011111111111111111111111111111) (= mask!926 #b00111111111111111111111111111111)) (bvsle mask!926 #b00111111111111111111111111111111)))))

(assert (=> start!131640 d!160613))

(declare-fun d!160615 () Bool)

(assert (=> d!160615 (= (array_inv!38379 _values!470) (bvsge (size!49986 _values!470) #b00000000000000000000000000000000))))

(assert (=> start!131640 d!160615))

(declare-fun d!160617 () Bool)

(assert (=> d!160617 (= (array_inv!38380 _keys!618) (bvsge (size!49985 _keys!618) #b00000000000000000000000000000000))))

(assert (=> start!131640 d!160617))

(declare-fun b!1541538 () Bool)

(declare-fun e!857460 () Bool)

(declare-fun call!68682 () Bool)

(assert (=> b!1541538 (= e!857460 call!68682)))

(declare-fun b!1541539 () Bool)

(declare-fun e!857462 () Bool)

(assert (=> b!1541539 (= e!857462 call!68682)))

(declare-fun bm!68679 () Bool)

(assert (=> bm!68679 (= call!68682 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!618 mask!926))))

(declare-fun b!1541540 () Bool)

(assert (=> b!1541540 (= e!857460 e!857462)))

(declare-fun lt!665626 () (_ BitVec 64))

(assert (=> b!1541540 (= lt!665626 (select (arr!49434 _keys!618) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51434 0))(
  ( (Unit!51435) )
))
(declare-fun lt!665625 () Unit!51434)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102465 (_ BitVec 64) (_ BitVec 32)) Unit!51434)

(assert (=> b!1541540 (= lt!665625 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!618 lt!665626 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!102465 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1541540 (arrayContainsKey!0 _keys!618 lt!665626 #b00000000000000000000000000000000)))

(declare-fun lt!665624 () Unit!51434)

(assert (=> b!1541540 (= lt!665624 lt!665625)))

(declare-fun res!1058106 () Bool)

(declare-datatypes ((SeekEntryResult!13506 0))(
  ( (MissingZero!13506 (index!56421 (_ BitVec 32))) (Found!13506 (index!56422 (_ BitVec 32))) (Intermediate!13506 (undefined!14318 Bool) (index!56423 (_ BitVec 32)) (x!138353 (_ BitVec 32))) (Undefined!13506) (MissingVacant!13506 (index!56424 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102465 (_ BitVec 32)) SeekEntryResult!13506)

(assert (=> b!1541540 (= res!1058106 (= (seekEntryOrOpen!0 (select (arr!49434 _keys!618) #b00000000000000000000000000000000) _keys!618 mask!926) (Found!13506 #b00000000000000000000000000000000)))))

(assert (=> b!1541540 (=> (not res!1058106) (not e!857462))))

(declare-fun b!1541541 () Bool)

(declare-fun e!857461 () Bool)

(assert (=> b!1541541 (= e!857461 e!857460)))

(declare-fun c!141233 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1541541 (= c!141233 (validKeyInArray!0 (select (arr!49434 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun d!160619 () Bool)

(declare-fun res!1058105 () Bool)

(assert (=> d!160619 (=> res!1058105 e!857461)))

(assert (=> d!160619 (= res!1058105 (bvsge #b00000000000000000000000000000000 (size!49985 _keys!618)))))

(assert (=> d!160619 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926) e!857461)))

(assert (= (and d!160619 (not res!1058105)) b!1541541))

(assert (= (and b!1541541 c!141233) b!1541540))

(assert (= (and b!1541541 (not c!141233)) b!1541538))

(assert (= (and b!1541540 res!1058106) b!1541539))

(assert (= (or b!1541539 b!1541538) bm!68679))

(declare-fun m!1423499 () Bool)

(assert (=> bm!68679 m!1423499))

(declare-fun m!1423501 () Bool)

(assert (=> b!1541540 m!1423501))

(declare-fun m!1423503 () Bool)

(assert (=> b!1541540 m!1423503))

(declare-fun m!1423505 () Bool)

(assert (=> b!1541540 m!1423505))

(assert (=> b!1541540 m!1423501))

(declare-fun m!1423507 () Bool)

(assert (=> b!1541540 m!1423507))

(assert (=> b!1541541 m!1423501))

(assert (=> b!1541541 m!1423501))

(declare-fun m!1423509 () Bool)

(assert (=> b!1541541 m!1423509))

(assert (=> b!1541510 d!160619))

(declare-fun mapIsEmpty!58150 () Bool)

(declare-fun mapRes!58150 () Bool)

(assert (=> mapIsEmpty!58150 mapRes!58150))

(declare-fun mapNonEmpty!58150 () Bool)

(declare-fun tp!110678 () Bool)

(declare-fun e!857467 () Bool)

(assert (=> mapNonEmpty!58150 (= mapRes!58150 (and tp!110678 e!857467))))

(declare-fun mapRest!58150 () (Array (_ BitVec 32) ValueCell!17907))

(declare-fun mapKey!58150 () (_ BitVec 32))

(declare-fun mapValue!58150 () ValueCell!17907)

(assert (=> mapNonEmpty!58150 (= mapRest!58144 (store mapRest!58150 mapKey!58150 mapValue!58150))))

(declare-fun condMapEmpty!58150 () Bool)

(declare-fun mapDefault!58150 () ValueCell!17907)

(assert (=> mapNonEmpty!58144 (= condMapEmpty!58150 (= mapRest!58144 ((as const (Array (_ BitVec 32) ValueCell!17907)) mapDefault!58150)))))

(declare-fun e!857468 () Bool)

(assert (=> mapNonEmpty!58144 (= tp!110672 (and e!857468 mapRes!58150))))

(declare-fun b!1541548 () Bool)

(assert (=> b!1541548 (= e!857467 tp_is_empty!37635)))

(declare-fun b!1541549 () Bool)

(assert (=> b!1541549 (= e!857468 tp_is_empty!37635)))

(assert (= (and mapNonEmpty!58144 condMapEmpty!58150) mapIsEmpty!58150))

(assert (= (and mapNonEmpty!58144 (not condMapEmpty!58150)) mapNonEmpty!58150))

(assert (= (and mapNonEmpty!58150 ((_ is ValueCellFull!17907) mapValue!58150)) b!1541548))

(assert (= (and mapNonEmpty!58144 ((_ is ValueCellFull!17907) mapDefault!58150)) b!1541549))

(declare-fun m!1423511 () Bool)

(assert (=> mapNonEmpty!58150 m!1423511))

(check-sat (not bm!68679) (not b!1541541) (not mapNonEmpty!58150) tp_is_empty!37635 (not b!1541540))
(check-sat)
