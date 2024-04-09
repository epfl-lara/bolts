; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110610 () Bool)

(assert start!110610)

(declare-fun b_free!29409 () Bool)

(declare-fun b_next!29409 () Bool)

(assert (=> start!110610 (= b_free!29409 (not b_next!29409))))

(declare-fun tp!103549 () Bool)

(declare-fun b_and!47627 () Bool)

(assert (=> start!110610 (= tp!103549 b_and!47627)))

(declare-fun mapNonEmpty!54337 () Bool)

(declare-fun mapRes!54337 () Bool)

(declare-fun tp!103550 () Bool)

(declare-fun e!746405 () Bool)

(assert (=> mapNonEmpty!54337 (= mapRes!54337 (and tp!103550 e!746405))))

(declare-fun mapKey!54337 () (_ BitVec 32))

(declare-datatypes ((V!51955 0))(
  ( (V!51956 (val!17644 Int)) )
))
(declare-datatypes ((ValueCell!16671 0))(
  ( (ValueCellFull!16671 (v!20269 V!51955)) (EmptyCell!16671) )
))
(declare-datatypes ((array!87245 0))(
  ( (array!87246 (arr!42098 (Array (_ BitVec 32) ValueCell!16671)) (size!42649 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87245)

(declare-fun mapRest!54337 () (Array (_ BitVec 32) ValueCell!16671))

(declare-fun mapValue!54337 () ValueCell!16671)

(assert (=> mapNonEmpty!54337 (= (arr!42098 _values!1354) (store mapRest!54337 mapKey!54337 mapValue!54337))))

(declare-fun b!1308038 () Bool)

(declare-fun e!746403 () Bool)

(declare-fun e!746402 () Bool)

(assert (=> b!1308038 (= e!746403 (and e!746402 mapRes!54337))))

(declare-fun condMapEmpty!54337 () Bool)

(declare-fun mapDefault!54337 () ValueCell!16671)

(assert (=> b!1308038 (= condMapEmpty!54337 (= (arr!42098 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16671)) mapDefault!54337)))))

(declare-fun b!1308039 () Bool)

(declare-fun res!868368 () Bool)

(declare-fun e!746404 () Bool)

(assert (=> b!1308039 (=> (not res!868368) (not e!746404))))

(declare-datatypes ((array!87247 0))(
  ( (array!87248 (arr!42099 (Array (_ BitVec 32) (_ BitVec 64))) (size!42650 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87247)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87247 (_ BitVec 32)) Bool)

(assert (=> b!1308039 (= res!868368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308040 () Bool)

(declare-fun res!868366 () Bool)

(assert (=> b!1308040 (=> (not res!868366) (not e!746404))))

(declare-datatypes ((List!30053 0))(
  ( (Nil!30050) (Cons!30049 (h!31258 (_ BitVec 64)) (t!43666 List!30053)) )
))
(declare-fun arrayNoDuplicates!0 (array!87247 (_ BitVec 32) List!30053) Bool)

(assert (=> b!1308040 (= res!868366 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30050))))

(declare-fun b!1308041 () Bool)

(declare-fun res!868363 () Bool)

(assert (=> b!1308041 (=> (not res!868363) (not e!746404))))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1308041 (= res!868363 (validKeyInArray!0 (select (arr!42099 _keys!1628) from!2020)))))

(declare-fun b!1308043 () Bool)

(declare-fun res!868367 () Bool)

(assert (=> b!1308043 (=> (not res!868367) (not e!746404))))

(declare-fun k0!1175 () (_ BitVec 64))

(assert (=> b!1308043 (= res!868367 (not (= (select (arr!42099 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1308044 () Bool)

(assert (=> b!1308044 (= e!746404 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!51955)

(declare-fun zeroValue!1296 () V!51955)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!22882 0))(
  ( (tuple2!22883 (_1!11451 (_ BitVec 64)) (_2!11451 V!51955)) )
))
(declare-datatypes ((List!30054 0))(
  ( (Nil!30051) (Cons!30050 (h!31259 tuple2!22882) (t!43667 List!30054)) )
))
(declare-datatypes ((ListLongMap!20551 0))(
  ( (ListLongMap!20552 (toList!10291 List!30054)) )
))
(declare-fun contains!8377 (ListLongMap!20551 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5247 (array!87247 array!87245 (_ BitVec 32) (_ BitVec 32) V!51955 V!51955 (_ BitVec 32) Int) ListLongMap!20551)

(assert (=> b!1308044 (contains!8377 (getCurrentListMap!5247 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43232 0))(
  ( (Unit!43233) )
))
(declare-fun lt!585064 () Unit!43232)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!6 (array!87247 array!87245 (_ BitVec 32) (_ BitVec 32) V!51955 V!51955 (_ BitVec 64) (_ BitVec 32) Int) Unit!43232)

(assert (=> b!1308044 (= lt!585064 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!6 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1308045 () Bool)

(declare-fun res!868369 () Bool)

(assert (=> b!1308045 (=> (not res!868369) (not e!746404))))

(assert (=> b!1308045 (= res!868369 (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!54337 () Bool)

(assert (=> mapIsEmpty!54337 mapRes!54337))

(declare-fun b!1308046 () Bool)

(declare-fun tp_is_empty!35139 () Bool)

(assert (=> b!1308046 (= e!746405 tp_is_empty!35139)))

(declare-fun b!1308047 () Bool)

(declare-fun res!868362 () Bool)

(assert (=> b!1308047 (=> (not res!868362) (not e!746404))))

(assert (=> b!1308047 (= res!868362 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42650 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1308042 () Bool)

(declare-fun res!868364 () Bool)

(assert (=> b!1308042 (=> (not res!868364) (not e!746404))))

(assert (=> b!1308042 (= res!868364 (contains!8377 (getCurrentListMap!5247 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun res!868370 () Bool)

(assert (=> start!110610 (=> (not res!868370) (not e!746404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110610 (= res!868370 (validMask!0 mask!2040))))

(assert (=> start!110610 e!746404))

(assert (=> start!110610 tp!103549))

(declare-fun array_inv!31821 (array!87247) Bool)

(assert (=> start!110610 (array_inv!31821 _keys!1628)))

(assert (=> start!110610 true))

(assert (=> start!110610 tp_is_empty!35139))

(declare-fun array_inv!31822 (array!87245) Bool)

(assert (=> start!110610 (and (array_inv!31822 _values!1354) e!746403)))

(declare-fun b!1308048 () Bool)

(assert (=> b!1308048 (= e!746402 tp_is_empty!35139)))

(declare-fun b!1308049 () Bool)

(declare-fun res!868365 () Bool)

(assert (=> b!1308049 (=> (not res!868365) (not e!746404))))

(assert (=> b!1308049 (= res!868365 (and (= (size!42649 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42650 _keys!1628) (size!42649 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(assert (= (and start!110610 res!868370) b!1308049))

(assert (= (and b!1308049 res!868365) b!1308039))

(assert (= (and b!1308039 res!868368) b!1308040))

(assert (= (and b!1308040 res!868366) b!1308047))

(assert (= (and b!1308047 res!868362) b!1308042))

(assert (= (and b!1308042 res!868364) b!1308043))

(assert (= (and b!1308043 res!868367) b!1308041))

(assert (= (and b!1308041 res!868363) b!1308045))

(assert (= (and b!1308045 res!868369) b!1308044))

(assert (= (and b!1308038 condMapEmpty!54337) mapIsEmpty!54337))

(assert (= (and b!1308038 (not condMapEmpty!54337)) mapNonEmpty!54337))

(get-info :version)

(assert (= (and mapNonEmpty!54337 ((_ is ValueCellFull!16671) mapValue!54337)) b!1308046))

(assert (= (and b!1308038 ((_ is ValueCellFull!16671) mapDefault!54337)) b!1308048))

(assert (= start!110610 b!1308038))

(declare-fun m!1198547 () Bool)

(assert (=> b!1308040 m!1198547))

(declare-fun m!1198549 () Bool)

(assert (=> b!1308041 m!1198549))

(assert (=> b!1308041 m!1198549))

(declare-fun m!1198551 () Bool)

(assert (=> b!1308041 m!1198551))

(declare-fun m!1198553 () Bool)

(assert (=> b!1308042 m!1198553))

(assert (=> b!1308042 m!1198553))

(declare-fun m!1198555 () Bool)

(assert (=> b!1308042 m!1198555))

(declare-fun m!1198557 () Bool)

(assert (=> mapNonEmpty!54337 m!1198557))

(declare-fun m!1198559 () Bool)

(assert (=> b!1308044 m!1198559))

(assert (=> b!1308044 m!1198559))

(declare-fun m!1198561 () Bool)

(assert (=> b!1308044 m!1198561))

(declare-fun m!1198563 () Bool)

(assert (=> b!1308044 m!1198563))

(declare-fun m!1198565 () Bool)

(assert (=> b!1308039 m!1198565))

(declare-fun m!1198567 () Bool)

(assert (=> start!110610 m!1198567))

(declare-fun m!1198569 () Bool)

(assert (=> start!110610 m!1198569))

(declare-fun m!1198571 () Bool)

(assert (=> start!110610 m!1198571))

(assert (=> b!1308043 m!1198549))

(check-sat tp_is_empty!35139 b_and!47627 (not b!1308040) (not b!1308039) (not b!1308044) (not b!1308042) (not mapNonEmpty!54337) (not start!110610) (not b!1308041) (not b_next!29409))
(check-sat b_and!47627 (not b_next!29409))
