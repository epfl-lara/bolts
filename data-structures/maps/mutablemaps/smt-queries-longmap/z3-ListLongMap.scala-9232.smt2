; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110778 () Bool)

(assert start!110778)

(declare-fun b_free!29577 () Bool)

(declare-fun b_next!29577 () Bool)

(assert (=> start!110778 (= b_free!29577 (not b_next!29577))))

(declare-fun tp!104053 () Bool)

(declare-fun b_and!47795 () Bool)

(assert (=> start!110778 (= tp!104053 b_and!47795)))

(declare-fun b!1310610 () Bool)

(declare-fun e!747665 () Bool)

(assert (=> b!1310610 (= e!747665 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87567 0))(
  ( (array!87568 (arr!42259 (Array (_ BitVec 32) (_ BitVec 64))) (size!42810 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87567)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((V!52179 0))(
  ( (V!52180 (val!17728 Int)) )
))
(declare-fun minValue!1296 () V!52179)

(declare-datatypes ((ValueCell!16755 0))(
  ( (ValueCellFull!16755 (v!20353 V!52179)) (EmptyCell!16755) )
))
(declare-datatypes ((array!87569 0))(
  ( (array!87570 (arr!42260 (Array (_ BitVec 32) ValueCell!16755)) (size!42811 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87569)

(declare-fun zeroValue!1296 () V!52179)

(declare-fun lt!585316 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23010 0))(
  ( (tuple2!23011 (_1!11515 (_ BitVec 64)) (_2!11515 V!52179)) )
))
(declare-datatypes ((List!30174 0))(
  ( (Nil!30171) (Cons!30170 (h!31379 tuple2!23010) (t!43787 List!30174)) )
))
(declare-datatypes ((ListLongMap!20679 0))(
  ( (ListLongMap!20680 (toList!10355 List!30174)) )
))
(declare-fun contains!8441 (ListLongMap!20679 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5311 (array!87567 array!87569 (_ BitVec 32) (_ BitVec 32) V!52179 V!52179 (_ BitVec 32) Int) ListLongMap!20679)

(assert (=> b!1310610 (= lt!585316 (contains!8441 (getCurrentListMap!5311 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1310611 () Bool)

(declare-fun e!747661 () Bool)

(declare-fun e!747662 () Bool)

(declare-fun mapRes!54589 () Bool)

(assert (=> b!1310611 (= e!747661 (and e!747662 mapRes!54589))))

(declare-fun condMapEmpty!54589 () Bool)

(declare-fun mapDefault!54589 () ValueCell!16755)

(assert (=> b!1310611 (= condMapEmpty!54589 (= (arr!42260 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16755)) mapDefault!54589)))))

(declare-fun b!1310612 () Bool)

(declare-fun res!870179 () Bool)

(assert (=> b!1310612 (=> (not res!870179) (not e!747665))))

(declare-datatypes ((List!30175 0))(
  ( (Nil!30172) (Cons!30171 (h!31380 (_ BitVec 64)) (t!43788 List!30175)) )
))
(declare-fun arrayNoDuplicates!0 (array!87567 (_ BitVec 32) List!30175) Bool)

(assert (=> b!1310612 (= res!870179 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30172))))

(declare-fun res!870178 () Bool)

(assert (=> start!110778 (=> (not res!870178) (not e!747665))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110778 (= res!870178 (validMask!0 mask!2040))))

(assert (=> start!110778 e!747665))

(assert (=> start!110778 tp!104053))

(declare-fun array_inv!31927 (array!87567) Bool)

(assert (=> start!110778 (array_inv!31927 _keys!1628)))

(assert (=> start!110778 true))

(declare-fun tp_is_empty!35307 () Bool)

(assert (=> start!110778 tp_is_empty!35307))

(declare-fun array_inv!31928 (array!87569) Bool)

(assert (=> start!110778 (and (array_inv!31928 _values!1354) e!747661)))

(declare-fun b!1310613 () Bool)

(assert (=> b!1310613 (= e!747662 tp_is_empty!35307)))

(declare-fun b!1310614 () Bool)

(declare-fun res!870180 () Bool)

(assert (=> b!1310614 (=> (not res!870180) (not e!747665))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87567 (_ BitVec 32)) Bool)

(assert (=> b!1310614 (= res!870180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!54589 () Bool)

(declare-fun tp!104054 () Bool)

(declare-fun e!747663 () Bool)

(assert (=> mapNonEmpty!54589 (= mapRes!54589 (and tp!104054 e!747663))))

(declare-fun mapKey!54589 () (_ BitVec 32))

(declare-fun mapRest!54589 () (Array (_ BitVec 32) ValueCell!16755))

(declare-fun mapValue!54589 () ValueCell!16755)

(assert (=> mapNonEmpty!54589 (= (arr!42260 _values!1354) (store mapRest!54589 mapKey!54589 mapValue!54589))))

(declare-fun b!1310615 () Bool)

(declare-fun res!870182 () Bool)

(assert (=> b!1310615 (=> (not res!870182) (not e!747665))))

(assert (=> b!1310615 (= res!870182 (and (= (size!42811 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42810 _keys!1628) (size!42811 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1310616 () Bool)

(declare-fun res!870181 () Bool)

(assert (=> b!1310616 (=> (not res!870181) (not e!747665))))

(assert (=> b!1310616 (= res!870181 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42810 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1310617 () Bool)

(assert (=> b!1310617 (= e!747663 tp_is_empty!35307)))

(declare-fun mapIsEmpty!54589 () Bool)

(assert (=> mapIsEmpty!54589 mapRes!54589))

(assert (= (and start!110778 res!870178) b!1310615))

(assert (= (and b!1310615 res!870182) b!1310614))

(assert (= (and b!1310614 res!870180) b!1310612))

(assert (= (and b!1310612 res!870179) b!1310616))

(assert (= (and b!1310616 res!870181) b!1310610))

(assert (= (and b!1310611 condMapEmpty!54589) mapIsEmpty!54589))

(assert (= (and b!1310611 (not condMapEmpty!54589)) mapNonEmpty!54589))

(get-info :version)

(assert (= (and mapNonEmpty!54589 ((_ is ValueCellFull!16755) mapValue!54589)) b!1310617))

(assert (= (and b!1310611 ((_ is ValueCellFull!16755) mapDefault!54589)) b!1310613))

(assert (= start!110778 b!1310611))

(declare-fun m!1200361 () Bool)

(assert (=> b!1310610 m!1200361))

(assert (=> b!1310610 m!1200361))

(declare-fun m!1200363 () Bool)

(assert (=> b!1310610 m!1200363))

(declare-fun m!1200365 () Bool)

(assert (=> b!1310614 m!1200365))

(declare-fun m!1200367 () Bool)

(assert (=> mapNonEmpty!54589 m!1200367))

(declare-fun m!1200369 () Bool)

(assert (=> b!1310612 m!1200369))

(declare-fun m!1200371 () Bool)

(assert (=> start!110778 m!1200371))

(declare-fun m!1200373 () Bool)

(assert (=> start!110778 m!1200373))

(declare-fun m!1200375 () Bool)

(assert (=> start!110778 m!1200375))

(check-sat tp_is_empty!35307 (not start!110778) (not b!1310610) (not b!1310614) (not b!1310612) b_and!47795 (not mapNonEmpty!54589) (not b_next!29577))
(check-sat b_and!47795 (not b_next!29577))
