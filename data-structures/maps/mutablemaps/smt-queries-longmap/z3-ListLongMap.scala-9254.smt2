; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110910 () Bool)

(assert start!110910)

(declare-fun b_free!29709 () Bool)

(declare-fun b_next!29709 () Bool)

(assert (=> start!110910 (= b_free!29709 (not b_next!29709))))

(declare-fun tp!104450 () Bool)

(declare-fun b_and!47927 () Bool)

(assert (=> start!110910 (= tp!104450 b_and!47927)))

(declare-fun b!1312518 () Bool)

(declare-fun res!871494 () Bool)

(declare-fun e!748651 () Bool)

(assert (=> b!1312518 (=> (not res!871494) (not e!748651))))

(declare-datatypes ((array!87829 0))(
  ( (array!87830 (arr!42390 (Array (_ BitVec 32) (_ BitVec 64))) (size!42941 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87829)

(declare-datatypes ((List!30275 0))(
  ( (Nil!30272) (Cons!30271 (h!31480 (_ BitVec 64)) (t!43888 List!30275)) )
))
(declare-fun arrayNoDuplicates!0 (array!87829 (_ BitVec 32) List!30275) Bool)

(assert (=> b!1312518 (= res!871494 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30272))))

(declare-fun b!1312519 () Bool)

(declare-fun e!748653 () Bool)

(declare-fun e!748652 () Bool)

(declare-fun mapRes!54787 () Bool)

(assert (=> b!1312519 (= e!748653 (and e!748652 mapRes!54787))))

(declare-fun condMapEmpty!54787 () Bool)

(declare-datatypes ((V!52355 0))(
  ( (V!52356 (val!17794 Int)) )
))
(declare-datatypes ((ValueCell!16821 0))(
  ( (ValueCellFull!16821 (v!20419 V!52355)) (EmptyCell!16821) )
))
(declare-datatypes ((array!87831 0))(
  ( (array!87832 (arr!42391 (Array (_ BitVec 32) ValueCell!16821)) (size!42942 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87831)

(declare-fun mapDefault!54787 () ValueCell!16821)

(assert (=> b!1312519 (= condMapEmpty!54787 (= (arr!42391 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16821)) mapDefault!54787)))))

(declare-fun b!1312520 () Bool)

(declare-fun res!871495 () Bool)

(assert (=> b!1312520 (=> (not res!871495) (not e!748651))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1312520 (= res!871495 (and (= (size!42942 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42941 _keys!1628) (size!42942 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1312521 () Bool)

(declare-fun res!871493 () Bool)

(assert (=> b!1312521 (=> (not res!871493) (not e!748651))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312521 (= res!871493 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42941 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!54787 () Bool)

(declare-fun tp!104449 () Bool)

(declare-fun e!748654 () Bool)

(assert (=> mapNonEmpty!54787 (= mapRes!54787 (and tp!104449 e!748654))))

(declare-fun mapKey!54787 () (_ BitVec 32))

(declare-fun mapValue!54787 () ValueCell!16821)

(declare-fun mapRest!54787 () (Array (_ BitVec 32) ValueCell!16821))

(assert (=> mapNonEmpty!54787 (= (arr!42391 _values!1354) (store mapRest!54787 mapKey!54787 mapValue!54787))))

(declare-fun res!871496 () Bool)

(assert (=> start!110910 (=> (not res!871496) (not e!748651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110910 (= res!871496 (validMask!0 mask!2040))))

(assert (=> start!110910 e!748651))

(assert (=> start!110910 tp!104450))

(declare-fun array_inv!32007 (array!87829) Bool)

(assert (=> start!110910 (array_inv!32007 _keys!1628)))

(assert (=> start!110910 true))

(declare-fun tp_is_empty!35439 () Bool)

(assert (=> start!110910 tp_is_empty!35439))

(declare-fun array_inv!32008 (array!87831) Bool)

(assert (=> start!110910 (and (array_inv!32008 _values!1354) e!748653)))

(declare-fun mapIsEmpty!54787 () Bool)

(assert (=> mapIsEmpty!54787 mapRes!54787))

(declare-fun b!1312522 () Bool)

(assert (=> b!1312522 (= e!748651 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52355)

(declare-fun zeroValue!1296 () V!52355)

(declare-fun lt!585514 () Bool)

(declare-datatypes ((tuple2!23116 0))(
  ( (tuple2!23117 (_1!11568 (_ BitVec 64)) (_2!11568 V!52355)) )
))
(declare-datatypes ((List!30276 0))(
  ( (Nil!30273) (Cons!30272 (h!31481 tuple2!23116) (t!43889 List!30276)) )
))
(declare-datatypes ((ListLongMap!20785 0))(
  ( (ListLongMap!20786 (toList!10408 List!30276)) )
))
(declare-fun contains!8494 (ListLongMap!20785 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5364 (array!87829 array!87831 (_ BitVec 32) (_ BitVec 32) V!52355 V!52355 (_ BitVec 32) Int) ListLongMap!20785)

(assert (=> b!1312522 (= lt!585514 (contains!8494 (getCurrentListMap!5364 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1312523 () Bool)

(declare-fun res!871492 () Bool)

(assert (=> b!1312523 (=> (not res!871492) (not e!748651))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87829 (_ BitVec 32)) Bool)

(assert (=> b!1312523 (= res!871492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312524 () Bool)

(assert (=> b!1312524 (= e!748652 tp_is_empty!35439)))

(declare-fun b!1312525 () Bool)

(assert (=> b!1312525 (= e!748654 tp_is_empty!35439)))

(assert (= (and start!110910 res!871496) b!1312520))

(assert (= (and b!1312520 res!871495) b!1312523))

(assert (= (and b!1312523 res!871492) b!1312518))

(assert (= (and b!1312518 res!871494) b!1312521))

(assert (= (and b!1312521 res!871493) b!1312522))

(assert (= (and b!1312519 condMapEmpty!54787) mapIsEmpty!54787))

(assert (= (and b!1312519 (not condMapEmpty!54787)) mapNonEmpty!54787))

(get-info :version)

(assert (= (and mapNonEmpty!54787 ((_ is ValueCellFull!16821) mapValue!54787)) b!1312525))

(assert (= (and b!1312519 ((_ is ValueCellFull!16821) mapDefault!54787)) b!1312524))

(assert (= start!110910 b!1312519))

(declare-fun m!1201687 () Bool)

(assert (=> b!1312522 m!1201687))

(assert (=> b!1312522 m!1201687))

(declare-fun m!1201689 () Bool)

(assert (=> b!1312522 m!1201689))

(declare-fun m!1201691 () Bool)

(assert (=> b!1312518 m!1201691))

(declare-fun m!1201693 () Bool)

(assert (=> b!1312523 m!1201693))

(declare-fun m!1201695 () Bool)

(assert (=> start!110910 m!1201695))

(declare-fun m!1201697 () Bool)

(assert (=> start!110910 m!1201697))

(declare-fun m!1201699 () Bool)

(assert (=> start!110910 m!1201699))

(declare-fun m!1201701 () Bool)

(assert (=> mapNonEmpty!54787 m!1201701))

(check-sat (not b!1312523) (not mapNonEmpty!54787) (not b_next!29709) (not start!110910) (not b!1312518) (not b!1312522) b_and!47927 tp_is_empty!35439)
(check-sat b_and!47927 (not b_next!29709))
