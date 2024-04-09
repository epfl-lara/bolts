; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104772 () Bool)

(assert start!104772)

(declare-fun b_free!26541 () Bool)

(declare-fun b_next!26541 () Bool)

(assert (=> start!104772 (= b_free!26541 (not b_next!26541))))

(declare-fun tp!93113 () Bool)

(declare-fun b_and!44319 () Bool)

(assert (=> start!104772 (= tp!93113 b_and!44319)))

(declare-fun b!1248472 () Bool)

(declare-fun e!708488 () Bool)

(declare-fun tp_is_empty!31443 () Bool)

(assert (=> b!1248472 (= e!708488 tp_is_empty!31443)))

(declare-fun mapIsEmpty!48925 () Bool)

(declare-fun mapRes!48925 () Bool)

(assert (=> mapIsEmpty!48925 mapRes!48925))

(declare-fun b!1248473 () Bool)

(declare-fun e!708490 () Bool)

(assert (=> b!1248473 (= e!708490 false)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((V!47289 0))(
  ( (V!47290 (val!15784 Int)) )
))
(declare-fun minValueAfter!43 () V!47289)

(declare-datatypes ((tuple2!20484 0))(
  ( (tuple2!20485 (_1!10252 (_ BitVec 64)) (_2!10252 V!47289)) )
))
(declare-datatypes ((List!27744 0))(
  ( (Nil!27741) (Cons!27740 (h!28949 tuple2!20484) (t!41222 List!27744)) )
))
(declare-datatypes ((ListLongMap!18369 0))(
  ( (ListLongMap!18370 (toList!9200 List!27744)) )
))
(declare-fun lt!563387 () ListLongMap!18369)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47289)

(declare-datatypes ((array!80555 0))(
  ( (array!80556 (arr!38840 (Array (_ BitVec 32) (_ BitVec 64))) (size!39377 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80555)

(declare-datatypes ((ValueCell!14958 0))(
  ( (ValueCellFull!14958 (v!18480 V!47289)) (EmptyCell!14958) )
))
(declare-datatypes ((array!80557 0))(
  ( (array!80558 (arr!38841 (Array (_ BitVec 32) ValueCell!14958)) (size!39378 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80557)

(declare-fun getCurrentListMapNoExtraKeys!5583 (array!80555 array!80557 (_ BitVec 32) (_ BitVec 32) V!47289 V!47289 (_ BitVec 32) Int) ListLongMap!18369)

(assert (=> b!1248473 (= lt!563387 (getCurrentListMapNoExtraKeys!5583 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!563388 () ListLongMap!18369)

(declare-fun minValueBefore!43 () V!47289)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1248473 (= lt!563388 (getCurrentListMapNoExtraKeys!5583 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1248474 () Bool)

(declare-fun e!708491 () Bool)

(assert (=> b!1248474 (= e!708491 tp_is_empty!31443)))

(declare-fun b!1248475 () Bool)

(declare-fun res!832991 () Bool)

(assert (=> b!1248475 (=> (not res!832991) (not e!708490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80555 (_ BitVec 32)) Bool)

(assert (=> b!1248475 (= res!832991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248476 () Bool)

(declare-fun res!832992 () Bool)

(assert (=> b!1248476 (=> (not res!832992) (not e!708490))))

(assert (=> b!1248476 (= res!832992 (and (= (size!39378 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39377 _keys!1118) (size!39378 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1248478 () Bool)

(declare-fun res!832989 () Bool)

(assert (=> b!1248478 (=> (not res!832989) (not e!708490))))

(declare-datatypes ((List!27745 0))(
  ( (Nil!27742) (Cons!27741 (h!28950 (_ BitVec 64)) (t!41223 List!27745)) )
))
(declare-fun arrayNoDuplicates!0 (array!80555 (_ BitVec 32) List!27745) Bool)

(assert (=> b!1248478 (= res!832989 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27742))))

(declare-fun mapNonEmpty!48925 () Bool)

(declare-fun tp!93114 () Bool)

(assert (=> mapNonEmpty!48925 (= mapRes!48925 (and tp!93114 e!708488))))

(declare-fun mapRest!48925 () (Array (_ BitVec 32) ValueCell!14958))

(declare-fun mapValue!48925 () ValueCell!14958)

(declare-fun mapKey!48925 () (_ BitVec 32))

(assert (=> mapNonEmpty!48925 (= (arr!38841 _values!914) (store mapRest!48925 mapKey!48925 mapValue!48925))))

(declare-fun b!1248477 () Bool)

(declare-fun e!708492 () Bool)

(assert (=> b!1248477 (= e!708492 (and e!708491 mapRes!48925))))

(declare-fun condMapEmpty!48925 () Bool)

(declare-fun mapDefault!48925 () ValueCell!14958)

(assert (=> b!1248477 (= condMapEmpty!48925 (= (arr!38841 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14958)) mapDefault!48925)))))

(declare-fun res!832990 () Bool)

(assert (=> start!104772 (=> (not res!832990) (not e!708490))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104772 (= res!832990 (validMask!0 mask!1466))))

(assert (=> start!104772 e!708490))

(assert (=> start!104772 true))

(assert (=> start!104772 tp!93113))

(assert (=> start!104772 tp_is_empty!31443))

(declare-fun array_inv!29571 (array!80555) Bool)

(assert (=> start!104772 (array_inv!29571 _keys!1118)))

(declare-fun array_inv!29572 (array!80557) Bool)

(assert (=> start!104772 (and (array_inv!29572 _values!914) e!708492)))

(assert (= (and start!104772 res!832990) b!1248476))

(assert (= (and b!1248476 res!832992) b!1248475))

(assert (= (and b!1248475 res!832991) b!1248478))

(assert (= (and b!1248478 res!832989) b!1248473))

(assert (= (and b!1248477 condMapEmpty!48925) mapIsEmpty!48925))

(assert (= (and b!1248477 (not condMapEmpty!48925)) mapNonEmpty!48925))

(get-info :version)

(assert (= (and mapNonEmpty!48925 ((_ is ValueCellFull!14958) mapValue!48925)) b!1248472))

(assert (= (and b!1248477 ((_ is ValueCellFull!14958) mapDefault!48925)) b!1248474))

(assert (= start!104772 b!1248477))

(declare-fun m!1149633 () Bool)

(assert (=> b!1248478 m!1149633))

(declare-fun m!1149635 () Bool)

(assert (=> start!104772 m!1149635))

(declare-fun m!1149637 () Bool)

(assert (=> start!104772 m!1149637))

(declare-fun m!1149639 () Bool)

(assert (=> start!104772 m!1149639))

(declare-fun m!1149641 () Bool)

(assert (=> b!1248473 m!1149641))

(declare-fun m!1149643 () Bool)

(assert (=> b!1248473 m!1149643))

(declare-fun m!1149645 () Bool)

(assert (=> mapNonEmpty!48925 m!1149645))

(declare-fun m!1149647 () Bool)

(assert (=> b!1248475 m!1149647))

(check-sat (not b_next!26541) (not start!104772) (not b!1248473) (not mapNonEmpty!48925) b_and!44319 tp_is_empty!31443 (not b!1248475) (not b!1248478))
(check-sat b_and!44319 (not b_next!26541))
