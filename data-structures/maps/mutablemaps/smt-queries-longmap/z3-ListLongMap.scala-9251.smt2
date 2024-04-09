; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110892 () Bool)

(assert start!110892)

(declare-fun b_free!29691 () Bool)

(declare-fun b_next!29691 () Bool)

(assert (=> start!110892 (= b_free!29691 (not b_next!29691))))

(declare-fun tp!104396 () Bool)

(declare-fun b_and!47909 () Bool)

(assert (=> start!110892 (= tp!104396 b_and!47909)))

(declare-fun b!1312250 () Bool)

(declare-fun e!748520 () Bool)

(declare-fun tp_is_empty!35421 () Bool)

(assert (=> b!1312250 (= e!748520 tp_is_empty!35421)))

(declare-fun mapIsEmpty!54760 () Bool)

(declare-fun mapRes!54760 () Bool)

(assert (=> mapIsEmpty!54760 mapRes!54760))

(declare-fun mapNonEmpty!54760 () Bool)

(declare-fun tp!104395 () Bool)

(declare-fun e!748516 () Bool)

(assert (=> mapNonEmpty!54760 (= mapRes!54760 (and tp!104395 e!748516))))

(declare-fun mapKey!54760 () (_ BitVec 32))

(declare-datatypes ((V!52331 0))(
  ( (V!52332 (val!17785 Int)) )
))
(declare-datatypes ((ValueCell!16812 0))(
  ( (ValueCellFull!16812 (v!20410 V!52331)) (EmptyCell!16812) )
))
(declare-fun mapValue!54760 () ValueCell!16812)

(declare-datatypes ((array!87793 0))(
  ( (array!87794 (arr!42372 (Array (_ BitVec 32) ValueCell!16812)) (size!42923 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87793)

(declare-fun mapRest!54760 () (Array (_ BitVec 32) ValueCell!16812))

(assert (=> mapNonEmpty!54760 (= (arr!42372 _values!1354) (store mapRest!54760 mapKey!54760 mapValue!54760))))

(declare-fun b!1312251 () Bool)

(declare-fun res!871311 () Bool)

(declare-fun e!748519 () Bool)

(assert (=> b!1312251 (=> (not res!871311) (not e!748519))))

(declare-datatypes ((array!87795 0))(
  ( (array!87796 (arr!42373 (Array (_ BitVec 32) (_ BitVec 64))) (size!42924 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87795)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1312251 (= res!871311 (validKeyInArray!0 (select (arr!42373 _keys!1628) from!2020)))))

(declare-fun b!1312252 () Bool)

(declare-fun res!871306 () Bool)

(assert (=> b!1312252 (=> (not res!871306) (not e!748519))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1312252 (= res!871306 (and (= (size!42923 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42924 _keys!1628) (size!42923 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1312253 () Bool)

(declare-fun res!871309 () Bool)

(assert (=> b!1312253 (=> (not res!871309) (not e!748519))))

(declare-fun k0!1175 () (_ BitVec 64))

(assert (=> b!1312253 (= res!871309 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42924 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312254 () Bool)

(declare-fun res!871312 () Bool)

(assert (=> b!1312254 (=> (not res!871312) (not e!748519))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87795 (_ BitVec 32)) Bool)

(assert (=> b!1312254 (= res!871312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312255 () Bool)

(assert (=> b!1312255 (= e!748519 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52331)

(declare-fun zeroValue!1296 () V!52331)

(declare-datatypes ((tuple2!23100 0))(
  ( (tuple2!23101 (_1!11560 (_ BitVec 64)) (_2!11560 V!52331)) )
))
(declare-datatypes ((List!30260 0))(
  ( (Nil!30257) (Cons!30256 (h!31465 tuple2!23100) (t!43873 List!30260)) )
))
(declare-datatypes ((ListLongMap!20769 0))(
  ( (ListLongMap!20770 (toList!10400 List!30260)) )
))
(declare-fun contains!8486 (ListLongMap!20769 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5356 (array!87795 array!87793 (_ BitVec 32) (_ BitVec 32) V!52331 V!52331 (_ BitVec 32) Int) ListLongMap!20769)

(assert (=> b!1312255 (contains!8486 (getCurrentListMap!5356 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43322 0))(
  ( (Unit!43323) )
))
(declare-fun lt!585487 () Unit!43322)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!14 (array!87795 array!87793 (_ BitVec 32) (_ BitVec 32) V!52331 V!52331 (_ BitVec 64) (_ BitVec 32) Int) Unit!43322)

(assert (=> b!1312255 (= lt!585487 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!14 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun res!871310 () Bool)

(assert (=> start!110892 (=> (not res!871310) (not e!748519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110892 (= res!871310 (validMask!0 mask!2040))))

(assert (=> start!110892 e!748519))

(assert (=> start!110892 tp!104396))

(declare-fun array_inv!31997 (array!87795) Bool)

(assert (=> start!110892 (array_inv!31997 _keys!1628)))

(assert (=> start!110892 true))

(assert (=> start!110892 tp_is_empty!35421))

(declare-fun e!748517 () Bool)

(declare-fun array_inv!31998 (array!87793) Bool)

(assert (=> start!110892 (and (array_inv!31998 _values!1354) e!748517)))

(declare-fun b!1312256 () Bool)

(declare-fun res!871313 () Bool)

(assert (=> b!1312256 (=> (not res!871313) (not e!748519))))

(assert (=> b!1312256 (= res!871313 (contains!8486 (getCurrentListMap!5356 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1312257 () Bool)

(declare-fun res!871308 () Bool)

(assert (=> b!1312257 (=> (not res!871308) (not e!748519))))

(assert (=> b!1312257 (= res!871308 (not (= (select (arr!42373 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1312258 () Bool)

(declare-fun res!871305 () Bool)

(assert (=> b!1312258 (=> (not res!871305) (not e!748519))))

(declare-datatypes ((List!30261 0))(
  ( (Nil!30258) (Cons!30257 (h!31466 (_ BitVec 64)) (t!43874 List!30261)) )
))
(declare-fun arrayNoDuplicates!0 (array!87795 (_ BitVec 32) List!30261) Bool)

(assert (=> b!1312258 (= res!871305 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30258))))

(declare-fun b!1312259 () Bool)

(assert (=> b!1312259 (= e!748517 (and e!748520 mapRes!54760))))

(declare-fun condMapEmpty!54760 () Bool)

(declare-fun mapDefault!54760 () ValueCell!16812)

(assert (=> b!1312259 (= condMapEmpty!54760 (= (arr!42372 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16812)) mapDefault!54760)))))

(declare-fun b!1312260 () Bool)

(declare-fun res!871307 () Bool)

(assert (=> b!1312260 (=> (not res!871307) (not e!748519))))

(assert (=> b!1312260 (= res!871307 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1312261 () Bool)

(assert (=> b!1312261 (= e!748516 tp_is_empty!35421)))

(assert (= (and start!110892 res!871310) b!1312252))

(assert (= (and b!1312252 res!871306) b!1312254))

(assert (= (and b!1312254 res!871312) b!1312258))

(assert (= (and b!1312258 res!871305) b!1312253))

(assert (= (and b!1312253 res!871309) b!1312256))

(assert (= (and b!1312256 res!871313) b!1312257))

(assert (= (and b!1312257 res!871308) b!1312251))

(assert (= (and b!1312251 res!871311) b!1312260))

(assert (= (and b!1312260 res!871307) b!1312255))

(assert (= (and b!1312259 condMapEmpty!54760) mapIsEmpty!54760))

(assert (= (and b!1312259 (not condMapEmpty!54760)) mapNonEmpty!54760))

(get-info :version)

(assert (= (and mapNonEmpty!54760 ((_ is ValueCellFull!16812) mapValue!54760)) b!1312261))

(assert (= (and b!1312259 ((_ is ValueCellFull!16812) mapDefault!54760)) b!1312250))

(assert (= start!110892 b!1312259))

(declare-fun m!1201493 () Bool)

(assert (=> b!1312251 m!1201493))

(assert (=> b!1312251 m!1201493))

(declare-fun m!1201495 () Bool)

(assert (=> b!1312251 m!1201495))

(declare-fun m!1201497 () Bool)

(assert (=> b!1312255 m!1201497))

(assert (=> b!1312255 m!1201497))

(declare-fun m!1201499 () Bool)

(assert (=> b!1312255 m!1201499))

(declare-fun m!1201501 () Bool)

(assert (=> b!1312255 m!1201501))

(declare-fun m!1201503 () Bool)

(assert (=> b!1312258 m!1201503))

(assert (=> b!1312257 m!1201493))

(declare-fun m!1201505 () Bool)

(assert (=> b!1312256 m!1201505))

(assert (=> b!1312256 m!1201505))

(declare-fun m!1201507 () Bool)

(assert (=> b!1312256 m!1201507))

(declare-fun m!1201509 () Bool)

(assert (=> b!1312254 m!1201509))

(declare-fun m!1201511 () Bool)

(assert (=> start!110892 m!1201511))

(declare-fun m!1201513 () Bool)

(assert (=> start!110892 m!1201513))

(declare-fun m!1201515 () Bool)

(assert (=> start!110892 m!1201515))

(declare-fun m!1201517 () Bool)

(assert (=> mapNonEmpty!54760 m!1201517))

(check-sat (not b!1312255) (not b!1312258) (not b!1312251) (not start!110892) (not b_next!29691) (not b!1312256) b_and!47909 tp_is_empty!35421 (not mapNonEmpty!54760) (not b!1312254))
(check-sat b_and!47909 (not b_next!29691))
