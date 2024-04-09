; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110916 () Bool)

(assert start!110916)

(declare-fun b_free!29715 () Bool)

(declare-fun b_next!29715 () Bool)

(assert (=> start!110916 (= b_free!29715 (not b_next!29715))))

(declare-fun tp!104468 () Bool)

(declare-fun b_and!47933 () Bool)

(assert (=> start!110916 (= tp!104468 b_and!47933)))

(declare-fun b!1312590 () Bool)

(declare-fun e!748699 () Bool)

(assert (=> b!1312590 (= e!748699 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87841 0))(
  ( (array!87842 (arr!42396 (Array (_ BitVec 32) (_ BitVec 64))) (size!42947 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87841)

(declare-fun lt!585523 () Bool)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((V!52363 0))(
  ( (V!52364 (val!17797 Int)) )
))
(declare-fun minValue!1296 () V!52363)

(declare-datatypes ((ValueCell!16824 0))(
  ( (ValueCellFull!16824 (v!20422 V!52363)) (EmptyCell!16824) )
))
(declare-datatypes ((array!87843 0))(
  ( (array!87844 (arr!42397 (Array (_ BitVec 32) ValueCell!16824)) (size!42948 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87843)

(declare-fun zeroValue!1296 () V!52363)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23120 0))(
  ( (tuple2!23121 (_1!11570 (_ BitVec 64)) (_2!11570 V!52363)) )
))
(declare-datatypes ((List!30280 0))(
  ( (Nil!30277) (Cons!30276 (h!31485 tuple2!23120) (t!43893 List!30280)) )
))
(declare-datatypes ((ListLongMap!20789 0))(
  ( (ListLongMap!20790 (toList!10410 List!30280)) )
))
(declare-fun contains!8496 (ListLongMap!20789 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5366 (array!87841 array!87843 (_ BitVec 32) (_ BitVec 32) V!52363 V!52363 (_ BitVec 32) Int) ListLongMap!20789)

(assert (=> b!1312590 (= lt!585523 (contains!8496 (getCurrentListMap!5366 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1312591 () Bool)

(declare-fun res!871538 () Bool)

(assert (=> b!1312591 (=> (not res!871538) (not e!748699))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87841 (_ BitVec 32)) Bool)

(assert (=> b!1312591 (= res!871538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312592 () Bool)

(declare-fun res!871537 () Bool)

(assert (=> b!1312592 (=> (not res!871537) (not e!748699))))

(assert (=> b!1312592 (= res!871537 (and (= (size!42948 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42947 _keys!1628) (size!42948 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54796 () Bool)

(declare-fun mapRes!54796 () Bool)

(assert (=> mapIsEmpty!54796 mapRes!54796))

(declare-fun res!871540 () Bool)

(assert (=> start!110916 (=> (not res!871540) (not e!748699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110916 (= res!871540 (validMask!0 mask!2040))))

(assert (=> start!110916 e!748699))

(assert (=> start!110916 tp!104468))

(declare-fun array_inv!32011 (array!87841) Bool)

(assert (=> start!110916 (array_inv!32011 _keys!1628)))

(assert (=> start!110916 true))

(declare-fun tp_is_empty!35445 () Bool)

(assert (=> start!110916 tp_is_empty!35445))

(declare-fun e!748700 () Bool)

(declare-fun array_inv!32012 (array!87843) Bool)

(assert (=> start!110916 (and (array_inv!32012 _values!1354) e!748700)))

(declare-fun mapNonEmpty!54796 () Bool)

(declare-fun tp!104467 () Bool)

(declare-fun e!748696 () Bool)

(assert (=> mapNonEmpty!54796 (= mapRes!54796 (and tp!104467 e!748696))))

(declare-fun mapKey!54796 () (_ BitVec 32))

(declare-fun mapRest!54796 () (Array (_ BitVec 32) ValueCell!16824))

(declare-fun mapValue!54796 () ValueCell!16824)

(assert (=> mapNonEmpty!54796 (= (arr!42397 _values!1354) (store mapRest!54796 mapKey!54796 mapValue!54796))))

(declare-fun b!1312593 () Bool)

(assert (=> b!1312593 (= e!748696 tp_is_empty!35445)))

(declare-fun b!1312594 () Bool)

(declare-fun e!748698 () Bool)

(assert (=> b!1312594 (= e!748698 tp_is_empty!35445)))

(declare-fun b!1312595 () Bool)

(declare-fun res!871539 () Bool)

(assert (=> b!1312595 (=> (not res!871539) (not e!748699))))

(assert (=> b!1312595 (= res!871539 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42947 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312596 () Bool)

(assert (=> b!1312596 (= e!748700 (and e!748698 mapRes!54796))))

(declare-fun condMapEmpty!54796 () Bool)

(declare-fun mapDefault!54796 () ValueCell!16824)

(assert (=> b!1312596 (= condMapEmpty!54796 (= (arr!42397 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16824)) mapDefault!54796)))))

(declare-fun b!1312597 () Bool)

(declare-fun res!871541 () Bool)

(assert (=> b!1312597 (=> (not res!871541) (not e!748699))))

(declare-datatypes ((List!30281 0))(
  ( (Nil!30278) (Cons!30277 (h!31486 (_ BitVec 64)) (t!43894 List!30281)) )
))
(declare-fun arrayNoDuplicates!0 (array!87841 (_ BitVec 32) List!30281) Bool)

(assert (=> b!1312597 (= res!871541 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30278))))

(assert (= (and start!110916 res!871540) b!1312592))

(assert (= (and b!1312592 res!871537) b!1312591))

(assert (= (and b!1312591 res!871538) b!1312597))

(assert (= (and b!1312597 res!871541) b!1312595))

(assert (= (and b!1312595 res!871539) b!1312590))

(assert (= (and b!1312596 condMapEmpty!54796) mapIsEmpty!54796))

(assert (= (and b!1312596 (not condMapEmpty!54796)) mapNonEmpty!54796))

(get-info :version)

(assert (= (and mapNonEmpty!54796 ((_ is ValueCellFull!16824) mapValue!54796)) b!1312593))

(assert (= (and b!1312596 ((_ is ValueCellFull!16824) mapDefault!54796)) b!1312594))

(assert (= start!110916 b!1312596))

(declare-fun m!1201735 () Bool)

(assert (=> b!1312591 m!1201735))

(declare-fun m!1201737 () Bool)

(assert (=> start!110916 m!1201737))

(declare-fun m!1201739 () Bool)

(assert (=> start!110916 m!1201739))

(declare-fun m!1201741 () Bool)

(assert (=> start!110916 m!1201741))

(declare-fun m!1201743 () Bool)

(assert (=> b!1312590 m!1201743))

(assert (=> b!1312590 m!1201743))

(declare-fun m!1201745 () Bool)

(assert (=> b!1312590 m!1201745))

(declare-fun m!1201747 () Bool)

(assert (=> mapNonEmpty!54796 m!1201747))

(declare-fun m!1201749 () Bool)

(assert (=> b!1312597 m!1201749))

(check-sat tp_is_empty!35445 (not start!110916) (not b!1312591) b_and!47933 (not b_next!29715) (not b!1312590) (not mapNonEmpty!54796) (not b!1312597))
(check-sat b_and!47933 (not b_next!29715))
