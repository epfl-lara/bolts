; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111018 () Bool)

(assert start!111018)

(declare-fun b_free!29817 () Bool)

(declare-fun b_next!29817 () Bool)

(assert (=> start!111018 (= b_free!29817 (not b_next!29817))))

(declare-fun tp!104773 () Bool)

(declare-fun b_and!48035 () Bool)

(assert (=> start!111018 (= tp!104773 b_and!48035)))

(declare-fun b!1313841 () Bool)

(declare-fun e!749464 () Bool)

(declare-fun tp_is_empty!35547 () Bool)

(assert (=> b!1313841 (= e!749464 tp_is_empty!35547)))

(declare-fun b!1313843 () Bool)

(declare-fun res!872329 () Bool)

(declare-fun e!749462 () Bool)

(assert (=> b!1313843 (=> (not res!872329) (not e!749462))))

(declare-datatypes ((array!88033 0))(
  ( (array!88034 (arr!42492 (Array (_ BitVec 32) (_ BitVec 64))) (size!43043 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88033)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52499 0))(
  ( (V!52500 (val!17848 Int)) )
))
(declare-datatypes ((ValueCell!16875 0))(
  ( (ValueCellFull!16875 (v!20473 V!52499)) (EmptyCell!16875) )
))
(declare-datatypes ((array!88035 0))(
  ( (array!88036 (arr!42493 (Array (_ BitVec 32) ValueCell!16875)) (size!43044 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88035)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313843 (= res!872329 (and (= (size!43044 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43043 _keys!1628) (size!43044 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!54949 () Bool)

(declare-fun mapRes!54949 () Bool)

(declare-fun tp!104774 () Bool)

(assert (=> mapNonEmpty!54949 (= mapRes!54949 (and tp!104774 e!749464))))

(declare-fun mapValue!54949 () ValueCell!16875)

(declare-fun mapKey!54949 () (_ BitVec 32))

(declare-fun mapRest!54949 () (Array (_ BitVec 32) ValueCell!16875))

(assert (=> mapNonEmpty!54949 (= (arr!42493 _values!1354) (store mapRest!54949 mapKey!54949 mapValue!54949))))

(declare-fun b!1313844 () Bool)

(declare-fun e!749463 () Bool)

(assert (=> b!1313844 (= e!749463 tp_is_empty!35547)))

(declare-fun b!1313845 () Bool)

(assert (=> b!1313845 (= e!749462 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52499)

(declare-fun zeroValue!1296 () V!52499)

(declare-fun lt!585667 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23184 0))(
  ( (tuple2!23185 (_1!11602 (_ BitVec 64)) (_2!11602 V!52499)) )
))
(declare-datatypes ((List!30347 0))(
  ( (Nil!30344) (Cons!30343 (h!31552 tuple2!23184) (t!43960 List!30347)) )
))
(declare-datatypes ((ListLongMap!20853 0))(
  ( (ListLongMap!20854 (toList!10442 List!30347)) )
))
(declare-fun contains!8528 (ListLongMap!20853 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5398 (array!88033 array!88035 (_ BitVec 32) (_ BitVec 32) V!52499 V!52499 (_ BitVec 32) Int) ListLongMap!20853)

(assert (=> b!1313845 (= lt!585667 (contains!8528 (getCurrentListMap!5398 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1313846 () Bool)

(declare-fun e!749461 () Bool)

(assert (=> b!1313846 (= e!749461 (and e!749463 mapRes!54949))))

(declare-fun condMapEmpty!54949 () Bool)

(declare-fun mapDefault!54949 () ValueCell!16875)

(assert (=> b!1313846 (= condMapEmpty!54949 (= (arr!42493 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16875)) mapDefault!54949)))))

(declare-fun b!1313847 () Bool)

(declare-fun res!872332 () Bool)

(assert (=> b!1313847 (=> (not res!872332) (not e!749462))))

(declare-datatypes ((List!30348 0))(
  ( (Nil!30345) (Cons!30344 (h!31553 (_ BitVec 64)) (t!43961 List!30348)) )
))
(declare-fun arrayNoDuplicates!0 (array!88033 (_ BitVec 32) List!30348) Bool)

(assert (=> b!1313847 (= res!872332 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30345))))

(declare-fun mapIsEmpty!54949 () Bool)

(assert (=> mapIsEmpty!54949 mapRes!54949))

(declare-fun b!1313848 () Bool)

(declare-fun res!872333 () Bool)

(assert (=> b!1313848 (=> (not res!872333) (not e!749462))))

(assert (=> b!1313848 (= res!872333 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43043 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!872331 () Bool)

(assert (=> start!111018 (=> (not res!872331) (not e!749462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111018 (= res!872331 (validMask!0 mask!2040))))

(assert (=> start!111018 e!749462))

(assert (=> start!111018 tp!104773))

(declare-fun array_inv!32073 (array!88033) Bool)

(assert (=> start!111018 (array_inv!32073 _keys!1628)))

(assert (=> start!111018 true))

(assert (=> start!111018 tp_is_empty!35547))

(declare-fun array_inv!32074 (array!88035) Bool)

(assert (=> start!111018 (and (array_inv!32074 _values!1354) e!749461)))

(declare-fun b!1313842 () Bool)

(declare-fun res!872330 () Bool)

(assert (=> b!1313842 (=> (not res!872330) (not e!749462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88033 (_ BitVec 32)) Bool)

(assert (=> b!1313842 (= res!872330 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(assert (= (and start!111018 res!872331) b!1313843))

(assert (= (and b!1313843 res!872329) b!1313842))

(assert (= (and b!1313842 res!872330) b!1313847))

(assert (= (and b!1313847 res!872332) b!1313848))

(assert (= (and b!1313848 res!872333) b!1313845))

(assert (= (and b!1313846 condMapEmpty!54949) mapIsEmpty!54949))

(assert (= (and b!1313846 (not condMapEmpty!54949)) mapNonEmpty!54949))

(get-info :version)

(assert (= (and mapNonEmpty!54949 ((_ is ValueCellFull!16875) mapValue!54949)) b!1313841))

(assert (= (and b!1313846 ((_ is ValueCellFull!16875) mapDefault!54949)) b!1313844))

(assert (= start!111018 b!1313846))

(declare-fun m!1202563 () Bool)

(assert (=> mapNonEmpty!54949 m!1202563))

(declare-fun m!1202565 () Bool)

(assert (=> start!111018 m!1202565))

(declare-fun m!1202567 () Bool)

(assert (=> start!111018 m!1202567))

(declare-fun m!1202569 () Bool)

(assert (=> start!111018 m!1202569))

(declare-fun m!1202571 () Bool)

(assert (=> b!1313845 m!1202571))

(assert (=> b!1313845 m!1202571))

(declare-fun m!1202573 () Bool)

(assert (=> b!1313845 m!1202573))

(declare-fun m!1202575 () Bool)

(assert (=> b!1313842 m!1202575))

(declare-fun m!1202577 () Bool)

(assert (=> b!1313847 m!1202577))

(check-sat (not b_next!29817) (not mapNonEmpty!54949) (not b!1313845) (not b!1313842) (not b!1313847) (not start!111018) b_and!48035 tp_is_empty!35547)
(check-sat b_and!48035 (not b_next!29817))
