; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110814 () Bool)

(assert start!110814)

(declare-fun b_free!29613 () Bool)

(declare-fun b_next!29613 () Bool)

(assert (=> start!110814 (= b_free!29613 (not b_next!29613))))

(declare-fun tp!104161 () Bool)

(declare-fun b_and!47831 () Bool)

(assert (=> start!110814 (= tp!104161 b_and!47831)))

(declare-fun b!1311042 () Bool)

(declare-fun res!870448 () Bool)

(declare-fun e!747932 () Bool)

(assert (=> b!1311042 (=> (not res!870448) (not e!747932))))

(declare-datatypes ((array!87637 0))(
  ( (array!87638 (arr!42294 (Array (_ BitVec 32) (_ BitVec 64))) (size!42845 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87637)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87637 (_ BitVec 32)) Bool)

(assert (=> b!1311042 (= res!870448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1311043 () Bool)

(declare-fun res!870451 () Bool)

(assert (=> b!1311043 (=> (not res!870451) (not e!747932))))

(declare-datatypes ((List!30201 0))(
  ( (Nil!30198) (Cons!30197 (h!31406 (_ BitVec 64)) (t!43814 List!30201)) )
))
(declare-fun arrayNoDuplicates!0 (array!87637 (_ BitVec 32) List!30201) Bool)

(assert (=> b!1311043 (= res!870451 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30198))))

(declare-fun b!1311044 () Bool)

(declare-fun e!747934 () Bool)

(declare-fun tp_is_empty!35343 () Bool)

(assert (=> b!1311044 (= e!747934 tp_is_empty!35343)))

(declare-fun b!1311045 () Bool)

(declare-fun res!870449 () Bool)

(assert (=> b!1311045 (=> (not res!870449) (not e!747932))))

(declare-datatypes ((V!52227 0))(
  ( (V!52228 (val!17746 Int)) )
))
(declare-datatypes ((ValueCell!16773 0))(
  ( (ValueCellFull!16773 (v!20371 V!52227)) (EmptyCell!16773) )
))
(declare-datatypes ((array!87639 0))(
  ( (array!87640 (arr!42295 (Array (_ BitVec 32) ValueCell!16773)) (size!42846 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87639)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1311045 (= res!870449 (and (= (size!42846 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42845 _keys!1628) (size!42846 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311046 () Bool)

(declare-fun e!747933 () Bool)

(declare-fun e!747931 () Bool)

(declare-fun mapRes!54643 () Bool)

(assert (=> b!1311046 (= e!747933 (and e!747931 mapRes!54643))))

(declare-fun condMapEmpty!54643 () Bool)

(declare-fun mapDefault!54643 () ValueCell!16773)

(assert (=> b!1311046 (= condMapEmpty!54643 (= (arr!42295 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16773)) mapDefault!54643)))))

(declare-fun b!1311047 () Bool)

(assert (=> b!1311047 (= e!747932 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52227)

(declare-fun zeroValue!1296 () V!52227)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585370 () Bool)

(declare-datatypes ((tuple2!23036 0))(
  ( (tuple2!23037 (_1!11528 (_ BitVec 64)) (_2!11528 V!52227)) )
))
(declare-datatypes ((List!30202 0))(
  ( (Nil!30199) (Cons!30198 (h!31407 tuple2!23036) (t!43815 List!30202)) )
))
(declare-datatypes ((ListLongMap!20705 0))(
  ( (ListLongMap!20706 (toList!10368 List!30202)) )
))
(declare-fun contains!8454 (ListLongMap!20705 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5324 (array!87637 array!87639 (_ BitVec 32) (_ BitVec 32) V!52227 V!52227 (_ BitVec 32) Int) ListLongMap!20705)

(assert (=> b!1311047 (= lt!585370 (contains!8454 (getCurrentListMap!5324 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1311048 () Bool)

(assert (=> b!1311048 (= e!747931 tp_is_empty!35343)))

(declare-fun mapNonEmpty!54643 () Bool)

(declare-fun tp!104162 () Bool)

(assert (=> mapNonEmpty!54643 (= mapRes!54643 (and tp!104162 e!747934))))

(declare-fun mapRest!54643 () (Array (_ BitVec 32) ValueCell!16773))

(declare-fun mapValue!54643 () ValueCell!16773)

(declare-fun mapKey!54643 () (_ BitVec 32))

(assert (=> mapNonEmpty!54643 (= (arr!42295 _values!1354) (store mapRest!54643 mapKey!54643 mapValue!54643))))

(declare-fun mapIsEmpty!54643 () Bool)

(assert (=> mapIsEmpty!54643 mapRes!54643))

(declare-fun res!870450 () Bool)

(assert (=> start!110814 (=> (not res!870450) (not e!747932))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110814 (= res!870450 (validMask!0 mask!2040))))

(assert (=> start!110814 e!747932))

(assert (=> start!110814 tp!104161))

(declare-fun array_inv!31947 (array!87637) Bool)

(assert (=> start!110814 (array_inv!31947 _keys!1628)))

(assert (=> start!110814 true))

(assert (=> start!110814 tp_is_empty!35343))

(declare-fun array_inv!31948 (array!87639) Bool)

(assert (=> start!110814 (and (array_inv!31948 _values!1354) e!747933)))

(declare-fun b!1311049 () Bool)

(declare-fun res!870452 () Bool)

(assert (=> b!1311049 (=> (not res!870452) (not e!747932))))

(assert (=> b!1311049 (= res!870452 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42845 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!110814 res!870450) b!1311045))

(assert (= (and b!1311045 res!870449) b!1311042))

(assert (= (and b!1311042 res!870448) b!1311043))

(assert (= (and b!1311043 res!870451) b!1311049))

(assert (= (and b!1311049 res!870452) b!1311047))

(assert (= (and b!1311046 condMapEmpty!54643) mapIsEmpty!54643))

(assert (= (and b!1311046 (not condMapEmpty!54643)) mapNonEmpty!54643))

(get-info :version)

(assert (= (and mapNonEmpty!54643 ((_ is ValueCellFull!16773) mapValue!54643)) b!1311044))

(assert (= (and b!1311046 ((_ is ValueCellFull!16773) mapDefault!54643)) b!1311048))

(assert (= start!110814 b!1311046))

(declare-fun m!1200649 () Bool)

(assert (=> b!1311047 m!1200649))

(assert (=> b!1311047 m!1200649))

(declare-fun m!1200651 () Bool)

(assert (=> b!1311047 m!1200651))

(declare-fun m!1200653 () Bool)

(assert (=> b!1311043 m!1200653))

(declare-fun m!1200655 () Bool)

(assert (=> start!110814 m!1200655))

(declare-fun m!1200657 () Bool)

(assert (=> start!110814 m!1200657))

(declare-fun m!1200659 () Bool)

(assert (=> start!110814 m!1200659))

(declare-fun m!1200661 () Bool)

(assert (=> b!1311042 m!1200661))

(declare-fun m!1200663 () Bool)

(assert (=> mapNonEmpty!54643 m!1200663))

(check-sat (not b!1311047) (not b!1311043) tp_is_empty!35343 (not start!110814) b_and!47831 (not mapNonEmpty!54643) (not b!1311042) (not b_next!29613))
(check-sat b_and!47831 (not b_next!29613))
