; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131954 () Bool)

(assert start!131954)

(declare-fun b_free!31635 () Bool)

(declare-fun b_next!31635 () Bool)

(assert (=> start!131954 (= b_free!31635 (not b_next!31635))))

(declare-fun tp!111158 () Bool)

(declare-fun b_and!51055 () Bool)

(assert (=> start!131954 (= tp!111158 b_and!51055)))

(declare-fun res!1059529 () Bool)

(declare-fun e!859776 () Bool)

(assert (=> start!131954 (=> (not res!1059529) (not e!859776))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131954 (= res!1059529 (validMask!0 mask!926))))

(assert (=> start!131954 e!859776))

(declare-datatypes ((array!102995 0))(
  ( (array!102996 (arr!49695 (Array (_ BitVec 32) (_ BitVec 64))) (size!50246 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102995)

(declare-fun array_inv!38577 (array!102995) Bool)

(assert (=> start!131954 (array_inv!38577 _keys!618)))

(declare-fun tp_is_empty!37911 () Bool)

(assert (=> start!131954 tp_is_empty!37911))

(assert (=> start!131954 true))

(assert (=> start!131954 tp!111158))

(declare-datatypes ((V!58991 0))(
  ( (V!58992 (val!19033 Int)) )
))
(declare-datatypes ((ValueCell!18045 0))(
  ( (ValueCellFull!18045 (v!21831 V!58991)) (EmptyCell!18045) )
))
(declare-datatypes ((array!102997 0))(
  ( (array!102998 (arr!49696 (Array (_ BitVec 32) ValueCell!18045)) (size!50247 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102997)

(declare-fun e!859774 () Bool)

(declare-fun array_inv!38578 (array!102997) Bool)

(assert (=> start!131954 (and (array_inv!38578 _values!470) e!859774)))

(declare-fun b!1544598 () Bool)

(declare-fun e!859771 () Bool)

(assert (=> b!1544598 (= e!859771 tp_is_empty!37911)))

(declare-fun bm!68984 () Bool)

(declare-datatypes ((tuple2!24594 0))(
  ( (tuple2!24595 (_1!12307 (_ BitVec 64)) (_2!12307 V!58991)) )
))
(declare-datatypes ((List!36113 0))(
  ( (Nil!36110) (Cons!36109 (h!37555 tuple2!24594) (t!50814 List!36113)) )
))
(declare-datatypes ((ListLongMap!22215 0))(
  ( (ListLongMap!22216 (toList!11123 List!36113)) )
))
(declare-fun call!68991 () ListLongMap!22215)

(declare-fun call!68989 () ListLongMap!22215)

(assert (=> bm!68984 (= call!68991 call!68989)))

(declare-fun bm!68985 () Bool)

(declare-fun call!68990 () ListLongMap!22215)

(assert (=> bm!68985 (= call!68989 call!68990)))

(declare-fun b!1544599 () Bool)

(declare-fun e!859770 () ListLongMap!22215)

(declare-fun call!68987 () ListLongMap!22215)

(assert (=> b!1544599 (= e!859770 call!68987)))

(declare-fun zeroValue!436 () V!58991)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun minValue!436 () V!58991)

(declare-fun bm!68986 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6573 (array!102995 array!102997 (_ BitVec 32) (_ BitVec 32) V!58991 V!58991 (_ BitVec 32) Int) ListLongMap!22215)

(assert (=> bm!68986 (= call!68990 (getCurrentListMapNoExtraKeys!6573 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1544600 () Bool)

(declare-fun e!859772 () Bool)

(assert (=> b!1544600 (= e!859772 tp_is_empty!37911)))

(declare-fun b!1544601 () Bool)

(declare-fun c!141422 () Bool)

(declare-fun lt!666101 () Bool)

(assert (=> b!1544601 (= c!141422 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666101))))

(declare-fun e!859777 () ListLongMap!22215)

(assert (=> b!1544601 (= e!859770 e!859777)))

(declare-fun b!1544602 () Bool)

(assert (=> b!1544602 (= e!859777 call!68987)))

(declare-fun bm!68987 () Bool)

(declare-fun call!68988 () ListLongMap!22215)

(assert (=> bm!68987 (= call!68987 call!68988)))

(declare-fun c!141420 () Bool)

(declare-fun bm!68988 () Bool)

(declare-fun c!141421 () Bool)

(declare-fun +!4856 (ListLongMap!22215 tuple2!24594) ListLongMap!22215)

(assert (=> bm!68988 (= call!68988 (+!4856 (ite c!141420 call!68990 (ite c!141421 call!68989 call!68991)) (ite (or c!141420 c!141421) (tuple2!24595 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24595 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun mapIsEmpty!58570 () Bool)

(declare-fun mapRes!58570 () Bool)

(assert (=> mapIsEmpty!58570 mapRes!58570))

(declare-fun b!1544603 () Bool)

(declare-fun res!1059531 () Bool)

(assert (=> b!1544603 (=> (not res!1059531) (not e!859776))))

(declare-datatypes ((List!36114 0))(
  ( (Nil!36111) (Cons!36110 (h!37556 (_ BitVec 64)) (t!50815 List!36114)) )
))
(declare-fun arrayNoDuplicates!0 (array!102995 (_ BitVec 32) List!36114) Bool)

(assert (=> b!1544603 (= res!1059531 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36111))))

(declare-fun b!1544604 () Bool)

(declare-fun e!859773 () ListLongMap!22215)

(assert (=> b!1544604 (= e!859773 (+!4856 call!68988 (tuple2!24595 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1544605 () Bool)

(assert (=> b!1544605 (= e!859773 e!859770)))

(assert (=> b!1544605 (= c!141421 (and (not lt!666101) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1544606 () Bool)

(assert (=> b!1544606 (= e!859777 call!68991)))

(declare-fun b!1544607 () Bool)

(declare-fun res!1059532 () Bool)

(assert (=> b!1544607 (=> (not res!1059532) (not e!859776))))

(assert (=> b!1544607 (= res!1059532 (and (= (size!50247 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50246 _keys!618) (size!50247 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1544608 () Bool)

(assert (=> b!1544608 (= e!859774 (and e!859772 mapRes!58570))))

(declare-fun condMapEmpty!58570 () Bool)

(declare-fun mapDefault!58570 () ValueCell!18045)

(assert (=> b!1544608 (= condMapEmpty!58570 (= (arr!49696 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18045)) mapDefault!58570)))))

(declare-fun b!1544609 () Bool)

(assert (=> b!1544609 (= e!859776 false)))

(declare-fun lt!666100 () ListLongMap!22215)

(assert (=> b!1544609 (= lt!666100 e!859773)))

(assert (=> b!1544609 (= c!141420 (and (not lt!666101) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1544609 (= lt!666101 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!58570 () Bool)

(declare-fun tp!111157 () Bool)

(assert (=> mapNonEmpty!58570 (= mapRes!58570 (and tp!111157 e!859771))))

(declare-fun mapValue!58570 () ValueCell!18045)

(declare-fun mapRest!58570 () (Array (_ BitVec 32) ValueCell!18045))

(declare-fun mapKey!58570 () (_ BitVec 32))

(assert (=> mapNonEmpty!58570 (= (arr!49696 _values!470) (store mapRest!58570 mapKey!58570 mapValue!58570))))

(declare-fun b!1544610 () Bool)

(declare-fun res!1059530 () Bool)

(assert (=> b!1544610 (=> (not res!1059530) (not e!859776))))

(assert (=> b!1544610 (= res!1059530 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50246 _keys!618))))))

(declare-fun b!1544611 () Bool)

(declare-fun res!1059533 () Bool)

(assert (=> b!1544611 (=> (not res!1059533) (not e!859776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102995 (_ BitVec 32)) Bool)

(assert (=> b!1544611 (= res!1059533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(assert (= (and start!131954 res!1059529) b!1544607))

(assert (= (and b!1544607 res!1059532) b!1544611))

(assert (= (and b!1544611 res!1059533) b!1544603))

(assert (= (and b!1544603 res!1059531) b!1544610))

(assert (= (and b!1544610 res!1059530) b!1544609))

(assert (= (and b!1544609 c!141420) b!1544604))

(assert (= (and b!1544609 (not c!141420)) b!1544605))

(assert (= (and b!1544605 c!141421) b!1544599))

(assert (= (and b!1544605 (not c!141421)) b!1544601))

(assert (= (and b!1544601 c!141422) b!1544602))

(assert (= (and b!1544601 (not c!141422)) b!1544606))

(assert (= (or b!1544602 b!1544606) bm!68984))

(assert (= (or b!1544599 bm!68984) bm!68985))

(assert (= (or b!1544599 b!1544602) bm!68987))

(assert (= (or b!1544604 bm!68985) bm!68986))

(assert (= (or b!1544604 bm!68987) bm!68988))

(assert (= (and b!1544608 condMapEmpty!58570) mapIsEmpty!58570))

(assert (= (and b!1544608 (not condMapEmpty!58570)) mapNonEmpty!58570))

(get-info :version)

(assert (= (and mapNonEmpty!58570 ((_ is ValueCellFull!18045) mapValue!58570)) b!1544598))

(assert (= (and b!1544608 ((_ is ValueCellFull!18045) mapDefault!58570)) b!1544600))

(assert (= start!131954 b!1544608))

(declare-fun m!1425325 () Bool)

(assert (=> mapNonEmpty!58570 m!1425325))

(declare-fun m!1425327 () Bool)

(assert (=> b!1544604 m!1425327))

(declare-fun m!1425329 () Bool)

(assert (=> b!1544603 m!1425329))

(declare-fun m!1425331 () Bool)

(assert (=> b!1544611 m!1425331))

(declare-fun m!1425333 () Bool)

(assert (=> bm!68986 m!1425333))

(declare-fun m!1425335 () Bool)

(assert (=> bm!68988 m!1425335))

(declare-fun m!1425337 () Bool)

(assert (=> start!131954 m!1425337))

(declare-fun m!1425339 () Bool)

(assert (=> start!131954 m!1425339))

(declare-fun m!1425341 () Bool)

(assert (=> start!131954 m!1425341))

(check-sat (not start!131954) (not bm!68988) b_and!51055 (not b_next!31635) (not b!1544603) (not b!1544611) tp_is_empty!37911 (not bm!68986) (not b!1544604) (not mapNonEmpty!58570))
(check-sat b_and!51055 (not b_next!31635))
