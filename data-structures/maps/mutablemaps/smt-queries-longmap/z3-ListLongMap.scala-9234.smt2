; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110790 () Bool)

(assert start!110790)

(declare-fun b_free!29589 () Bool)

(declare-fun b_next!29589 () Bool)

(assert (=> start!110790 (= b_free!29589 (not b_next!29589))))

(declare-fun tp!104090 () Bool)

(declare-fun b_and!47807 () Bool)

(assert (=> start!110790 (= tp!104090 b_and!47807)))

(declare-fun b!1310754 () Bool)

(declare-fun res!870269 () Bool)

(declare-fun e!747754 () Bool)

(assert (=> b!1310754 (=> (not res!870269) (not e!747754))))

(declare-datatypes ((array!87591 0))(
  ( (array!87592 (arr!42271 (Array (_ BitVec 32) (_ BitVec 64))) (size!42822 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87591)

(declare-datatypes ((List!30183 0))(
  ( (Nil!30180) (Cons!30179 (h!31388 (_ BitVec 64)) (t!43796 List!30183)) )
))
(declare-fun arrayNoDuplicates!0 (array!87591 (_ BitVec 32) List!30183) Bool)

(assert (=> b!1310754 (= res!870269 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30180))))

(declare-fun b!1310755 () Bool)

(declare-fun e!747751 () Bool)

(declare-fun tp_is_empty!35319 () Bool)

(assert (=> b!1310755 (= e!747751 tp_is_empty!35319)))

(declare-fun res!870271 () Bool)

(assert (=> start!110790 (=> (not res!870271) (not e!747754))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110790 (= res!870271 (validMask!0 mask!2040))))

(assert (=> start!110790 e!747754))

(assert (=> start!110790 tp!104090))

(declare-fun array_inv!31933 (array!87591) Bool)

(assert (=> start!110790 (array_inv!31933 _keys!1628)))

(assert (=> start!110790 true))

(assert (=> start!110790 tp_is_empty!35319))

(declare-datatypes ((V!52195 0))(
  ( (V!52196 (val!17734 Int)) )
))
(declare-datatypes ((ValueCell!16761 0))(
  ( (ValueCellFull!16761 (v!20359 V!52195)) (EmptyCell!16761) )
))
(declare-datatypes ((array!87593 0))(
  ( (array!87594 (arr!42272 (Array (_ BitVec 32) ValueCell!16761)) (size!42823 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87593)

(declare-fun e!747755 () Bool)

(declare-fun array_inv!31934 (array!87593) Bool)

(assert (=> start!110790 (and (array_inv!31934 _values!1354) e!747755)))

(declare-fun mapNonEmpty!54607 () Bool)

(declare-fun mapRes!54607 () Bool)

(declare-fun tp!104089 () Bool)

(assert (=> mapNonEmpty!54607 (= mapRes!54607 (and tp!104089 e!747751))))

(declare-fun mapRest!54607 () (Array (_ BitVec 32) ValueCell!16761))

(declare-fun mapValue!54607 () ValueCell!16761)

(declare-fun mapKey!54607 () (_ BitVec 32))

(assert (=> mapNonEmpty!54607 (= (arr!42272 _values!1354) (store mapRest!54607 mapKey!54607 mapValue!54607))))

(declare-fun b!1310756 () Bool)

(declare-fun res!870268 () Bool)

(assert (=> b!1310756 (=> (not res!870268) (not e!747754))))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(assert (=> b!1310756 (= res!870268 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42822 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1310757 () Bool)

(declare-fun e!747752 () Bool)

(assert (=> b!1310757 (= e!747752 tp_is_empty!35319)))

(declare-fun mapIsEmpty!54607 () Bool)

(assert (=> mapIsEmpty!54607 mapRes!54607))

(declare-fun b!1310758 () Bool)

(declare-fun res!870270 () Bool)

(assert (=> b!1310758 (=> (not res!870270) (not e!747754))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1310758 (= res!870270 (and (= (size!42823 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42822 _keys!1628) (size!42823 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1310759 () Bool)

(declare-fun res!870272 () Bool)

(assert (=> b!1310759 (=> (not res!870272) (not e!747754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87591 (_ BitVec 32)) Bool)

(assert (=> b!1310759 (= res!870272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1310760 () Bool)

(assert (=> b!1310760 (= e!747754 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52195)

(declare-fun lt!585334 () Bool)

(declare-fun zeroValue!1296 () V!52195)

(declare-datatypes ((tuple2!23018 0))(
  ( (tuple2!23019 (_1!11519 (_ BitVec 64)) (_2!11519 V!52195)) )
))
(declare-datatypes ((List!30184 0))(
  ( (Nil!30181) (Cons!30180 (h!31389 tuple2!23018) (t!43797 List!30184)) )
))
(declare-datatypes ((ListLongMap!20687 0))(
  ( (ListLongMap!20688 (toList!10359 List!30184)) )
))
(declare-fun contains!8445 (ListLongMap!20687 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5315 (array!87591 array!87593 (_ BitVec 32) (_ BitVec 32) V!52195 V!52195 (_ BitVec 32) Int) ListLongMap!20687)

(assert (=> b!1310760 (= lt!585334 (contains!8445 (getCurrentListMap!5315 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1310761 () Bool)

(assert (=> b!1310761 (= e!747755 (and e!747752 mapRes!54607))))

(declare-fun condMapEmpty!54607 () Bool)

(declare-fun mapDefault!54607 () ValueCell!16761)

(assert (=> b!1310761 (= condMapEmpty!54607 (= (arr!42272 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16761)) mapDefault!54607)))))

(assert (= (and start!110790 res!870271) b!1310758))

(assert (= (and b!1310758 res!870270) b!1310759))

(assert (= (and b!1310759 res!870272) b!1310754))

(assert (= (and b!1310754 res!870269) b!1310756))

(assert (= (and b!1310756 res!870268) b!1310760))

(assert (= (and b!1310761 condMapEmpty!54607) mapIsEmpty!54607))

(assert (= (and b!1310761 (not condMapEmpty!54607)) mapNonEmpty!54607))

(get-info :version)

(assert (= (and mapNonEmpty!54607 ((_ is ValueCellFull!16761) mapValue!54607)) b!1310755))

(assert (= (and b!1310761 ((_ is ValueCellFull!16761) mapDefault!54607)) b!1310757))

(assert (= start!110790 b!1310761))

(declare-fun m!1200457 () Bool)

(assert (=> b!1310759 m!1200457))

(declare-fun m!1200459 () Bool)

(assert (=> start!110790 m!1200459))

(declare-fun m!1200461 () Bool)

(assert (=> start!110790 m!1200461))

(declare-fun m!1200463 () Bool)

(assert (=> start!110790 m!1200463))

(declare-fun m!1200465 () Bool)

(assert (=> mapNonEmpty!54607 m!1200465))

(declare-fun m!1200467 () Bool)

(assert (=> b!1310754 m!1200467))

(declare-fun m!1200469 () Bool)

(assert (=> b!1310760 m!1200469))

(assert (=> b!1310760 m!1200469))

(declare-fun m!1200471 () Bool)

(assert (=> b!1310760 m!1200471))

(check-sat (not b!1310760) tp_is_empty!35319 (not mapNonEmpty!54607) (not start!110790) (not b!1310759) (not b_next!29589) b_and!47807 (not b!1310754))
(check-sat b_and!47807 (not b_next!29589))
