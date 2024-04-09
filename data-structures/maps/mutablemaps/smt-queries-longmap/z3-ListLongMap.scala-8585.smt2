; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104778 () Bool)

(assert start!104778)

(declare-fun b_free!26547 () Bool)

(declare-fun b_next!26547 () Bool)

(assert (=> start!104778 (= b_free!26547 (not b_next!26547))))

(declare-fun tp!93131 () Bool)

(declare-fun b_and!44325 () Bool)

(assert (=> start!104778 (= tp!93131 b_and!44325)))

(declare-fun b!1248535 () Bool)

(declare-fun e!708534 () Bool)

(declare-fun e!708537 () Bool)

(declare-fun mapRes!48934 () Bool)

(assert (=> b!1248535 (= e!708534 (and e!708537 mapRes!48934))))

(declare-fun condMapEmpty!48934 () Bool)

(declare-datatypes ((V!47297 0))(
  ( (V!47298 (val!15787 Int)) )
))
(declare-datatypes ((ValueCell!14961 0))(
  ( (ValueCellFull!14961 (v!18483 V!47297)) (EmptyCell!14961) )
))
(declare-datatypes ((array!80567 0))(
  ( (array!80568 (arr!38846 (Array (_ BitVec 32) ValueCell!14961)) (size!39383 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80567)

(declare-fun mapDefault!48934 () ValueCell!14961)

(assert (=> b!1248535 (= condMapEmpty!48934 (= (arr!38846 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14961)) mapDefault!48934)))))

(declare-fun b!1248536 () Bool)

(declare-fun tp_is_empty!31449 () Bool)

(assert (=> b!1248536 (= e!708537 tp_is_empty!31449)))

(declare-fun res!833027 () Bool)

(declare-fun e!708533 () Bool)

(assert (=> start!104778 (=> (not res!833027) (not e!708533))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104778 (= res!833027 (validMask!0 mask!1466))))

(assert (=> start!104778 e!708533))

(assert (=> start!104778 true))

(assert (=> start!104778 tp!93131))

(assert (=> start!104778 tp_is_empty!31449))

(declare-datatypes ((array!80569 0))(
  ( (array!80570 (arr!38847 (Array (_ BitVec 32) (_ BitVec 64))) (size!39384 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80569)

(declare-fun array_inv!29575 (array!80569) Bool)

(assert (=> start!104778 (array_inv!29575 _keys!1118)))

(declare-fun array_inv!29576 (array!80567) Bool)

(assert (=> start!104778 (and (array_inv!29576 _values!914) e!708534)))

(declare-fun b!1248537 () Bool)

(declare-fun res!833028 () Bool)

(assert (=> b!1248537 (=> (not res!833028) (not e!708533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80569 (_ BitVec 32)) Bool)

(assert (=> b!1248537 (= res!833028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248538 () Bool)

(declare-fun e!708536 () Bool)

(assert (=> b!1248538 (= e!708536 tp_is_empty!31449)))

(declare-fun b!1248539 () Bool)

(declare-fun res!833026 () Bool)

(assert (=> b!1248539 (=> (not res!833026) (not e!708533))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1248539 (= res!833026 (and (= (size!39383 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39384 _keys!1118) (size!39383 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1248540 () Bool)

(declare-fun res!833025 () Bool)

(assert (=> b!1248540 (=> (not res!833025) (not e!708533))))

(declare-datatypes ((List!27747 0))(
  ( (Nil!27744) (Cons!27743 (h!28952 (_ BitVec 64)) (t!41225 List!27747)) )
))
(declare-fun arrayNoDuplicates!0 (array!80569 (_ BitVec 32) List!27747) Bool)

(assert (=> b!1248540 (= res!833025 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27744))))

(declare-fun b!1248541 () Bool)

(assert (=> b!1248541 (= e!708533 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!47297)

(declare-datatypes ((tuple2!20488 0))(
  ( (tuple2!20489 (_1!10254 (_ BitVec 64)) (_2!10254 V!47297)) )
))
(declare-datatypes ((List!27748 0))(
  ( (Nil!27745) (Cons!27744 (h!28953 tuple2!20488) (t!41226 List!27748)) )
))
(declare-datatypes ((ListLongMap!18373 0))(
  ( (ListLongMap!18374 (toList!9202 List!27748)) )
))
(declare-fun lt!563406 () ListLongMap!18373)

(declare-fun minValueAfter!43 () V!47297)

(declare-fun getCurrentListMapNoExtraKeys!5585 (array!80569 array!80567 (_ BitVec 32) (_ BitVec 32) V!47297 V!47297 (_ BitVec 32) Int) ListLongMap!18373)

(assert (=> b!1248541 (= lt!563406 (getCurrentListMapNoExtraKeys!5585 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!563405 () ListLongMap!18373)

(declare-fun minValueBefore!43 () V!47297)

(assert (=> b!1248541 (= lt!563405 (getCurrentListMapNoExtraKeys!5585 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!48934 () Bool)

(declare-fun tp!93132 () Bool)

(assert (=> mapNonEmpty!48934 (= mapRes!48934 (and tp!93132 e!708536))))

(declare-fun mapRest!48934 () (Array (_ BitVec 32) ValueCell!14961))

(declare-fun mapValue!48934 () ValueCell!14961)

(declare-fun mapKey!48934 () (_ BitVec 32))

(assert (=> mapNonEmpty!48934 (= (arr!38846 _values!914) (store mapRest!48934 mapKey!48934 mapValue!48934))))

(declare-fun mapIsEmpty!48934 () Bool)

(assert (=> mapIsEmpty!48934 mapRes!48934))

(assert (= (and start!104778 res!833027) b!1248539))

(assert (= (and b!1248539 res!833026) b!1248537))

(assert (= (and b!1248537 res!833028) b!1248540))

(assert (= (and b!1248540 res!833025) b!1248541))

(assert (= (and b!1248535 condMapEmpty!48934) mapIsEmpty!48934))

(assert (= (and b!1248535 (not condMapEmpty!48934)) mapNonEmpty!48934))

(get-info :version)

(assert (= (and mapNonEmpty!48934 ((_ is ValueCellFull!14961) mapValue!48934)) b!1248538))

(assert (= (and b!1248535 ((_ is ValueCellFull!14961) mapDefault!48934)) b!1248536))

(assert (= start!104778 b!1248535))

(declare-fun m!1149681 () Bool)

(assert (=> b!1248537 m!1149681))

(declare-fun m!1149683 () Bool)

(assert (=> start!104778 m!1149683))

(declare-fun m!1149685 () Bool)

(assert (=> start!104778 m!1149685))

(declare-fun m!1149687 () Bool)

(assert (=> start!104778 m!1149687))

(declare-fun m!1149689 () Bool)

(assert (=> b!1248541 m!1149689))

(declare-fun m!1149691 () Bool)

(assert (=> b!1248541 m!1149691))

(declare-fun m!1149693 () Bool)

(assert (=> mapNonEmpty!48934 m!1149693))

(declare-fun m!1149695 () Bool)

(assert (=> b!1248540 m!1149695))

(check-sat b_and!44325 (not mapNonEmpty!48934) (not b!1248540) (not b!1248537) (not start!104778) (not b!1248541) tp_is_empty!31449 (not b_next!26547))
(check-sat b_and!44325 (not b_next!26547))
