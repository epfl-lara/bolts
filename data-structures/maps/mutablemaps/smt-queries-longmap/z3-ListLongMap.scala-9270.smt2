; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111006 () Bool)

(assert start!111006)

(declare-fun b_free!29805 () Bool)

(declare-fun b_next!29805 () Bool)

(assert (=> start!111006 (= b_free!29805 (not b_next!29805))))

(declare-fun tp!104737 () Bool)

(declare-fun b_and!48023 () Bool)

(assert (=> start!111006 (= tp!104737 b_and!48023)))

(declare-fun b!1313697 () Bool)

(declare-fun res!872242 () Bool)

(declare-fun e!749372 () Bool)

(assert (=> b!1313697 (=> (not res!872242) (not e!749372))))

(declare-datatypes ((array!88009 0))(
  ( (array!88010 (arr!42480 (Array (_ BitVec 32) (_ BitVec 64))) (size!43031 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88009)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52483 0))(
  ( (V!52484 (val!17842 Int)) )
))
(declare-datatypes ((ValueCell!16869 0))(
  ( (ValueCellFull!16869 (v!20467 V!52483)) (EmptyCell!16869) )
))
(declare-datatypes ((array!88011 0))(
  ( (array!88012 (arr!42481 (Array (_ BitVec 32) ValueCell!16869)) (size!43032 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88011)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313697 (= res!872242 (and (= (size!43032 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43031 _keys!1628) (size!43032 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!872241 () Bool)

(assert (=> start!111006 (=> (not res!872241) (not e!749372))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111006 (= res!872241 (validMask!0 mask!2040))))

(assert (=> start!111006 e!749372))

(assert (=> start!111006 tp!104737))

(declare-fun array_inv!32069 (array!88009) Bool)

(assert (=> start!111006 (array_inv!32069 _keys!1628)))

(assert (=> start!111006 true))

(declare-fun tp_is_empty!35535 () Bool)

(assert (=> start!111006 tp_is_empty!35535))

(declare-fun e!749371 () Bool)

(declare-fun array_inv!32070 (array!88011) Bool)

(assert (=> start!111006 (and (array_inv!32070 _values!1354) e!749371)))

(declare-fun b!1313698 () Bool)

(declare-fun res!872240 () Bool)

(assert (=> b!1313698 (=> (not res!872240) (not e!749372))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1313698 (= res!872240 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43031 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313699 () Bool)

(assert (=> b!1313699 (= e!749372 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585649 () Bool)

(declare-fun minValue!1296 () V!52483)

(declare-fun zeroValue!1296 () V!52483)

(declare-datatypes ((tuple2!23176 0))(
  ( (tuple2!23177 (_1!11598 (_ BitVec 64)) (_2!11598 V!52483)) )
))
(declare-datatypes ((List!30339 0))(
  ( (Nil!30336) (Cons!30335 (h!31544 tuple2!23176) (t!43952 List!30339)) )
))
(declare-datatypes ((ListLongMap!20845 0))(
  ( (ListLongMap!20846 (toList!10438 List!30339)) )
))
(declare-fun contains!8524 (ListLongMap!20845 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5394 (array!88009 array!88011 (_ BitVec 32) (_ BitVec 32) V!52483 V!52483 (_ BitVec 32) Int) ListLongMap!20845)

(assert (=> b!1313699 (= lt!585649 (contains!8524 (getCurrentListMap!5394 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapIsEmpty!54931 () Bool)

(declare-fun mapRes!54931 () Bool)

(assert (=> mapIsEmpty!54931 mapRes!54931))

(declare-fun b!1313700 () Bool)

(declare-fun res!872243 () Bool)

(assert (=> b!1313700 (=> (not res!872243) (not e!749372))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88009 (_ BitVec 32)) Bool)

(assert (=> b!1313700 (= res!872243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1313701 () Bool)

(declare-fun e!749375 () Bool)

(assert (=> b!1313701 (= e!749371 (and e!749375 mapRes!54931))))

(declare-fun condMapEmpty!54931 () Bool)

(declare-fun mapDefault!54931 () ValueCell!16869)

(assert (=> b!1313701 (= condMapEmpty!54931 (= (arr!42481 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16869)) mapDefault!54931)))))

(declare-fun b!1313702 () Bool)

(declare-fun res!872239 () Bool)

(assert (=> b!1313702 (=> (not res!872239) (not e!749372))))

(declare-datatypes ((List!30340 0))(
  ( (Nil!30337) (Cons!30336 (h!31545 (_ BitVec 64)) (t!43953 List!30340)) )
))
(declare-fun arrayNoDuplicates!0 (array!88009 (_ BitVec 32) List!30340) Bool)

(assert (=> b!1313702 (= res!872239 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30337))))

(declare-fun mapNonEmpty!54931 () Bool)

(declare-fun tp!104738 () Bool)

(declare-fun e!749374 () Bool)

(assert (=> mapNonEmpty!54931 (= mapRes!54931 (and tp!104738 e!749374))))

(declare-fun mapRest!54931 () (Array (_ BitVec 32) ValueCell!16869))

(declare-fun mapValue!54931 () ValueCell!16869)

(declare-fun mapKey!54931 () (_ BitVec 32))

(assert (=> mapNonEmpty!54931 (= (arr!42481 _values!1354) (store mapRest!54931 mapKey!54931 mapValue!54931))))

(declare-fun b!1313703 () Bool)

(assert (=> b!1313703 (= e!749375 tp_is_empty!35535)))

(declare-fun b!1313704 () Bool)

(assert (=> b!1313704 (= e!749374 tp_is_empty!35535)))

(assert (= (and start!111006 res!872241) b!1313697))

(assert (= (and b!1313697 res!872242) b!1313700))

(assert (= (and b!1313700 res!872243) b!1313702))

(assert (= (and b!1313702 res!872239) b!1313698))

(assert (= (and b!1313698 res!872240) b!1313699))

(assert (= (and b!1313701 condMapEmpty!54931) mapIsEmpty!54931))

(assert (= (and b!1313701 (not condMapEmpty!54931)) mapNonEmpty!54931))

(get-info :version)

(assert (= (and mapNonEmpty!54931 ((_ is ValueCellFull!16869) mapValue!54931)) b!1313704))

(assert (= (and b!1313701 ((_ is ValueCellFull!16869) mapDefault!54931)) b!1313703))

(assert (= start!111006 b!1313701))

(declare-fun m!1202467 () Bool)

(assert (=> mapNonEmpty!54931 m!1202467))

(declare-fun m!1202469 () Bool)

(assert (=> b!1313700 m!1202469))

(declare-fun m!1202471 () Bool)

(assert (=> b!1313699 m!1202471))

(assert (=> b!1313699 m!1202471))

(declare-fun m!1202473 () Bool)

(assert (=> b!1313699 m!1202473))

(declare-fun m!1202475 () Bool)

(assert (=> b!1313702 m!1202475))

(declare-fun m!1202477 () Bool)

(assert (=> start!111006 m!1202477))

(declare-fun m!1202479 () Bool)

(assert (=> start!111006 m!1202479))

(declare-fun m!1202481 () Bool)

(assert (=> start!111006 m!1202481))

(check-sat (not b!1313702) tp_is_empty!35535 (not b_next!29805) (not b!1313700) (not b!1313699) (not start!111006) (not mapNonEmpty!54931) b_and!48023)
(check-sat b_and!48023 (not b_next!29805))
