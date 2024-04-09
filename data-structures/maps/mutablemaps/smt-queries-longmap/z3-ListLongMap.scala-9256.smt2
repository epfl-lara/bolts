; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110922 () Bool)

(assert start!110922)

(declare-fun b_free!29721 () Bool)

(declare-fun b_next!29721 () Bool)

(assert (=> start!110922 (= b_free!29721 (not b_next!29721))))

(declare-fun tp!104486 () Bool)

(declare-fun b_and!47939 () Bool)

(assert (=> start!110922 (= tp!104486 b_and!47939)))

(declare-fun b!1312662 () Bool)

(declare-fun res!871584 () Bool)

(declare-fun e!748745 () Bool)

(assert (=> b!1312662 (=> (not res!871584) (not e!748745))))

(declare-datatypes ((array!87851 0))(
  ( (array!87852 (arr!42401 (Array (_ BitVec 32) (_ BitVec 64))) (size!42952 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87851)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52371 0))(
  ( (V!52372 (val!17800 Int)) )
))
(declare-datatypes ((ValueCell!16827 0))(
  ( (ValueCellFull!16827 (v!20425 V!52371)) (EmptyCell!16827) )
))
(declare-datatypes ((array!87853 0))(
  ( (array!87854 (arr!42402 (Array (_ BitVec 32) ValueCell!16827)) (size!42953 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87853)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1312662 (= res!871584 (and (= (size!42953 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42952 _keys!1628) (size!42953 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!54805 () Bool)

(declare-fun mapRes!54805 () Bool)

(declare-fun tp!104485 () Bool)

(declare-fun e!748744 () Bool)

(assert (=> mapNonEmpty!54805 (= mapRes!54805 (and tp!104485 e!748744))))

(declare-fun mapKey!54805 () (_ BitVec 32))

(declare-fun mapRest!54805 () (Array (_ BitVec 32) ValueCell!16827))

(declare-fun mapValue!54805 () ValueCell!16827)

(assert (=> mapNonEmpty!54805 (= (arr!42402 _values!1354) (store mapRest!54805 mapKey!54805 mapValue!54805))))

(declare-fun mapIsEmpty!54805 () Bool)

(assert (=> mapIsEmpty!54805 mapRes!54805))

(declare-fun b!1312663 () Bool)

(assert (=> b!1312663 (= e!748745 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585532 () Bool)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52371)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun zeroValue!1296 () V!52371)

(declare-datatypes ((tuple2!23122 0))(
  ( (tuple2!23123 (_1!11571 (_ BitVec 64)) (_2!11571 V!52371)) )
))
(declare-datatypes ((List!30282 0))(
  ( (Nil!30279) (Cons!30278 (h!31487 tuple2!23122) (t!43895 List!30282)) )
))
(declare-datatypes ((ListLongMap!20791 0))(
  ( (ListLongMap!20792 (toList!10411 List!30282)) )
))
(declare-fun contains!8497 (ListLongMap!20791 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5367 (array!87851 array!87853 (_ BitVec 32) (_ BitVec 32) V!52371 V!52371 (_ BitVec 32) Int) ListLongMap!20791)

(assert (=> b!1312663 (= lt!585532 (contains!8497 (getCurrentListMap!5367 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1312664 () Bool)

(declare-fun tp_is_empty!35451 () Bool)

(assert (=> b!1312664 (= e!748744 tp_is_empty!35451)))

(declare-fun res!871585 () Bool)

(assert (=> start!110922 (=> (not res!871585) (not e!748745))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110922 (= res!871585 (validMask!0 mask!2040))))

(assert (=> start!110922 e!748745))

(assert (=> start!110922 tp!104486))

(declare-fun array_inv!32015 (array!87851) Bool)

(assert (=> start!110922 (array_inv!32015 _keys!1628)))

(assert (=> start!110922 true))

(assert (=> start!110922 tp_is_empty!35451))

(declare-fun e!748743 () Bool)

(declare-fun array_inv!32016 (array!87853) Bool)

(assert (=> start!110922 (and (array_inv!32016 _values!1354) e!748743)))

(declare-fun b!1312665 () Bool)

(declare-fun res!871586 () Bool)

(assert (=> b!1312665 (=> (not res!871586) (not e!748745))))

(declare-datatypes ((List!30283 0))(
  ( (Nil!30280) (Cons!30279 (h!31488 (_ BitVec 64)) (t!43896 List!30283)) )
))
(declare-fun arrayNoDuplicates!0 (array!87851 (_ BitVec 32) List!30283) Bool)

(assert (=> b!1312665 (= res!871586 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30280))))

(declare-fun b!1312666 () Bool)

(declare-fun res!871582 () Bool)

(assert (=> b!1312666 (=> (not res!871582) (not e!748745))))

(assert (=> b!1312666 (= res!871582 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42952 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312667 () Bool)

(declare-fun e!748741 () Bool)

(assert (=> b!1312667 (= e!748741 tp_is_empty!35451)))

(declare-fun b!1312668 () Bool)

(assert (=> b!1312668 (= e!748743 (and e!748741 mapRes!54805))))

(declare-fun condMapEmpty!54805 () Bool)

(declare-fun mapDefault!54805 () ValueCell!16827)

(assert (=> b!1312668 (= condMapEmpty!54805 (= (arr!42402 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16827)) mapDefault!54805)))))

(declare-fun b!1312669 () Bool)

(declare-fun res!871583 () Bool)

(assert (=> b!1312669 (=> (not res!871583) (not e!748745))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87851 (_ BitVec 32)) Bool)

(assert (=> b!1312669 (= res!871583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(assert (= (and start!110922 res!871585) b!1312662))

(assert (= (and b!1312662 res!871584) b!1312669))

(assert (= (and b!1312669 res!871583) b!1312665))

(assert (= (and b!1312665 res!871586) b!1312666))

(assert (= (and b!1312666 res!871582) b!1312663))

(assert (= (and b!1312668 condMapEmpty!54805) mapIsEmpty!54805))

(assert (= (and b!1312668 (not condMapEmpty!54805)) mapNonEmpty!54805))

(get-info :version)

(assert (= (and mapNonEmpty!54805 ((_ is ValueCellFull!16827) mapValue!54805)) b!1312664))

(assert (= (and b!1312668 ((_ is ValueCellFull!16827) mapDefault!54805)) b!1312667))

(assert (= start!110922 b!1312668))

(declare-fun m!1201783 () Bool)

(assert (=> b!1312669 m!1201783))

(declare-fun m!1201785 () Bool)

(assert (=> mapNonEmpty!54805 m!1201785))

(declare-fun m!1201787 () Bool)

(assert (=> start!110922 m!1201787))

(declare-fun m!1201789 () Bool)

(assert (=> start!110922 m!1201789))

(declare-fun m!1201791 () Bool)

(assert (=> start!110922 m!1201791))

(declare-fun m!1201793 () Bool)

(assert (=> b!1312663 m!1201793))

(assert (=> b!1312663 m!1201793))

(declare-fun m!1201795 () Bool)

(assert (=> b!1312663 m!1201795))

(declare-fun m!1201797 () Bool)

(assert (=> b!1312665 m!1201797))

(check-sat (not b!1312669) (not b!1312663) (not b_next!29721) (not mapNonEmpty!54805) b_and!47939 tp_is_empty!35451 (not b!1312665) (not start!110922))
(check-sat b_and!47939 (not b_next!29721))
