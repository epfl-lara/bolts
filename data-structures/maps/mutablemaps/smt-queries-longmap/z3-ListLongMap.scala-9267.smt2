; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110988 () Bool)

(assert start!110988)

(declare-fun b_free!29787 () Bool)

(declare-fun b_next!29787 () Bool)

(assert (=> start!110988 (= b_free!29787 (not b_next!29787))))

(declare-fun tp!104683 () Bool)

(declare-fun b_and!48005 () Bool)

(assert (=> start!110988 (= tp!104683 b_and!48005)))

(declare-fun b!1313481 () Bool)

(declare-fun res!872104 () Bool)

(declare-fun e!749236 () Bool)

(assert (=> b!1313481 (=> (not res!872104) (not e!749236))))

(declare-datatypes ((array!87975 0))(
  ( (array!87976 (arr!42463 (Array (_ BitVec 32) (_ BitVec 64))) (size!43014 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87975)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52459 0))(
  ( (V!52460 (val!17833 Int)) )
))
(declare-datatypes ((ValueCell!16860 0))(
  ( (ValueCellFull!16860 (v!20458 V!52459)) (EmptyCell!16860) )
))
(declare-datatypes ((array!87977 0))(
  ( (array!87978 (arr!42464 (Array (_ BitVec 32) ValueCell!16860)) (size!43015 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87977)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313481 (= res!872104 (and (= (size!43015 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43014 _keys!1628) (size!43015 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313482 () Bool)

(assert (=> b!1313482 (= e!749236 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52459)

(declare-fun zeroValue!1296 () V!52459)

(declare-fun lt!585622 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23160 0))(
  ( (tuple2!23161 (_1!11590 (_ BitVec 64)) (_2!11590 V!52459)) )
))
(declare-datatypes ((List!30324 0))(
  ( (Nil!30321) (Cons!30320 (h!31529 tuple2!23160) (t!43937 List!30324)) )
))
(declare-datatypes ((ListLongMap!20829 0))(
  ( (ListLongMap!20830 (toList!10430 List!30324)) )
))
(declare-fun contains!8516 (ListLongMap!20829 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5386 (array!87975 array!87977 (_ BitVec 32) (_ BitVec 32) V!52459 V!52459 (_ BitVec 32) Int) ListLongMap!20829)

(assert (=> b!1313482 (= lt!585622 (contains!8516 (getCurrentListMap!5386 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1313483 () Bool)

(declare-fun e!749237 () Bool)

(declare-fun tp_is_empty!35517 () Bool)

(assert (=> b!1313483 (= e!749237 tp_is_empty!35517)))

(declare-fun res!872107 () Bool)

(assert (=> start!110988 (=> (not res!872107) (not e!749236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110988 (= res!872107 (validMask!0 mask!2040))))

(assert (=> start!110988 e!749236))

(assert (=> start!110988 tp!104683))

(declare-fun array_inv!32057 (array!87975) Bool)

(assert (=> start!110988 (array_inv!32057 _keys!1628)))

(assert (=> start!110988 true))

(assert (=> start!110988 tp_is_empty!35517))

(declare-fun e!749238 () Bool)

(declare-fun array_inv!32058 (array!87977) Bool)

(assert (=> start!110988 (and (array_inv!32058 _values!1354) e!749238)))

(declare-fun mapNonEmpty!54904 () Bool)

(declare-fun mapRes!54904 () Bool)

(declare-fun tp!104684 () Bool)

(declare-fun e!749239 () Bool)

(assert (=> mapNonEmpty!54904 (= mapRes!54904 (and tp!104684 e!749239))))

(declare-fun mapKey!54904 () (_ BitVec 32))

(declare-fun mapRest!54904 () (Array (_ BitVec 32) ValueCell!16860))

(declare-fun mapValue!54904 () ValueCell!16860)

(assert (=> mapNonEmpty!54904 (= (arr!42464 _values!1354) (store mapRest!54904 mapKey!54904 mapValue!54904))))

(declare-fun b!1313484 () Bool)

(assert (=> b!1313484 (= e!749238 (and e!749237 mapRes!54904))))

(declare-fun condMapEmpty!54904 () Bool)

(declare-fun mapDefault!54904 () ValueCell!16860)

(assert (=> b!1313484 (= condMapEmpty!54904 (= (arr!42464 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16860)) mapDefault!54904)))))

(declare-fun mapIsEmpty!54904 () Bool)

(assert (=> mapIsEmpty!54904 mapRes!54904))

(declare-fun b!1313485 () Bool)

(declare-fun res!872106 () Bool)

(assert (=> b!1313485 (=> (not res!872106) (not e!749236))))

(assert (=> b!1313485 (= res!872106 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43014 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313486 () Bool)

(declare-fun res!872105 () Bool)

(assert (=> b!1313486 (=> (not res!872105) (not e!749236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87975 (_ BitVec 32)) Bool)

(assert (=> b!1313486 (= res!872105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1313487 () Bool)

(declare-fun res!872108 () Bool)

(assert (=> b!1313487 (=> (not res!872108) (not e!749236))))

(declare-datatypes ((List!30325 0))(
  ( (Nil!30322) (Cons!30321 (h!31530 (_ BitVec 64)) (t!43938 List!30325)) )
))
(declare-fun arrayNoDuplicates!0 (array!87975 (_ BitVec 32) List!30325) Bool)

(assert (=> b!1313487 (= res!872108 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30322))))

(declare-fun b!1313488 () Bool)

(assert (=> b!1313488 (= e!749239 tp_is_empty!35517)))

(assert (= (and start!110988 res!872107) b!1313481))

(assert (= (and b!1313481 res!872104) b!1313486))

(assert (= (and b!1313486 res!872105) b!1313487))

(assert (= (and b!1313487 res!872108) b!1313485))

(assert (= (and b!1313485 res!872106) b!1313482))

(assert (= (and b!1313484 condMapEmpty!54904) mapIsEmpty!54904))

(assert (= (and b!1313484 (not condMapEmpty!54904)) mapNonEmpty!54904))

(get-info :version)

(assert (= (and mapNonEmpty!54904 ((_ is ValueCellFull!16860) mapValue!54904)) b!1313488))

(assert (= (and b!1313484 ((_ is ValueCellFull!16860) mapDefault!54904)) b!1313483))

(assert (= start!110988 b!1313484))

(declare-fun m!1202323 () Bool)

(assert (=> start!110988 m!1202323))

(declare-fun m!1202325 () Bool)

(assert (=> start!110988 m!1202325))

(declare-fun m!1202327 () Bool)

(assert (=> start!110988 m!1202327))

(declare-fun m!1202329 () Bool)

(assert (=> b!1313486 m!1202329))

(declare-fun m!1202331 () Bool)

(assert (=> b!1313487 m!1202331))

(declare-fun m!1202333 () Bool)

(assert (=> b!1313482 m!1202333))

(assert (=> b!1313482 m!1202333))

(declare-fun m!1202335 () Bool)

(assert (=> b!1313482 m!1202335))

(declare-fun m!1202337 () Bool)

(assert (=> mapNonEmpty!54904 m!1202337))

(check-sat b_and!48005 (not b!1313482) (not b_next!29787) (not b!1313487) (not b!1313486) (not start!110988) tp_is_empty!35517 (not mapNonEmpty!54904))
(check-sat b_and!48005 (not b_next!29787))
