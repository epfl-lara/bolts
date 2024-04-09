; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105064 () Bool)

(assert start!105064)

(declare-fun b_free!26775 () Bool)

(declare-fun b_next!26775 () Bool)

(assert (=> start!105064 (= b_free!26775 (not b_next!26775))))

(declare-fun tp!93825 () Bool)

(declare-fun b_and!44581 () Bool)

(assert (=> start!105064 (= tp!93825 b_and!44581)))

(declare-fun mapNonEmpty!49285 () Bool)

(declare-fun mapRes!49285 () Bool)

(declare-fun tp!93824 () Bool)

(declare-fun e!710835 () Bool)

(assert (=> mapNonEmpty!49285 (= mapRes!49285 (and tp!93824 e!710835))))

(declare-fun mapKey!49285 () (_ BitVec 32))

(declare-datatypes ((V!47601 0))(
  ( (V!47602 (val!15901 Int)) )
))
(declare-datatypes ((ValueCell!15075 0))(
  ( (ValueCellFull!15075 (v!18599 V!47601)) (EmptyCell!15075) )
))
(declare-fun mapValue!49285 () ValueCell!15075)

(declare-fun mapRest!49285 () (Array (_ BitVec 32) ValueCell!15075))

(declare-datatypes ((array!80997 0))(
  ( (array!80998 (arr!39058 (Array (_ BitVec 32) ValueCell!15075)) (size!39595 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80997)

(assert (=> mapNonEmpty!49285 (= (arr!39058 _values!914) (store mapRest!49285 mapKey!49285 mapValue!49285))))

(declare-fun b!1251661 () Bool)

(declare-fun e!710834 () Bool)

(declare-fun e!710833 () Bool)

(assert (=> b!1251661 (= e!710834 (and e!710833 mapRes!49285))))

(declare-fun condMapEmpty!49285 () Bool)

(declare-fun mapDefault!49285 () ValueCell!15075)

(assert (=> b!1251661 (= condMapEmpty!49285 (= (arr!39058 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15075)) mapDefault!49285)))))

(declare-fun mapIsEmpty!49285 () Bool)

(assert (=> mapIsEmpty!49285 mapRes!49285))

(declare-fun b!1251662 () Bool)

(declare-fun tp_is_empty!31677 () Bool)

(assert (=> b!1251662 (= e!710833 tp_is_empty!31677)))

(declare-fun b!1251664 () Bool)

(declare-fun res!834880 () Bool)

(declare-fun e!710831 () Bool)

(assert (=> b!1251664 (=> (not res!834880) (not e!710831))))

(declare-datatypes ((array!80999 0))(
  ( (array!81000 (arr!39059 (Array (_ BitVec 32) (_ BitVec 64))) (size!39596 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80999)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80999 (_ BitVec 32)) Bool)

(assert (=> b!1251664 (= res!834880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251665 () Bool)

(assert (=> b!1251665 (= e!710831 (not true))))

(declare-datatypes ((tuple2!20650 0))(
  ( (tuple2!20651 (_1!10335 (_ BitVec 64)) (_2!10335 V!47601)) )
))
(declare-datatypes ((List!27900 0))(
  ( (Nil!27897) (Cons!27896 (h!29105 tuple2!20650) (t!41384 List!27900)) )
))
(declare-datatypes ((ListLongMap!18535 0))(
  ( (ListLongMap!18536 (toList!9283 List!27900)) )
))
(declare-fun lt!564967 () ListLongMap!18535)

(declare-fun lt!564969 () ListLongMap!18535)

(assert (=> b!1251665 (= lt!564967 lt!564969)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47601)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47601)

(declare-fun minValueBefore!43 () V!47601)

(declare-datatypes ((Unit!41543 0))(
  ( (Unit!41544) )
))
(declare-fun lt!564968 () Unit!41543)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!974 (array!80999 array!80997 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47601 V!47601 V!47601 V!47601 (_ BitVec 32) Int) Unit!41543)

(assert (=> b!1251665 (= lt!564968 (lemmaNoChangeToArrayThenSameMapNoExtras!974 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5656 (array!80999 array!80997 (_ BitVec 32) (_ BitVec 32) V!47601 V!47601 (_ BitVec 32) Int) ListLongMap!18535)

(assert (=> b!1251665 (= lt!564969 (getCurrentListMapNoExtraKeys!5656 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251665 (= lt!564967 (getCurrentListMapNoExtraKeys!5656 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251666 () Bool)

(assert (=> b!1251666 (= e!710835 tp_is_empty!31677)))

(declare-fun b!1251667 () Bool)

(declare-fun res!834881 () Bool)

(assert (=> b!1251667 (=> (not res!834881) (not e!710831))))

(assert (=> b!1251667 (= res!834881 (and (= (size!39595 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39596 _keys!1118) (size!39595 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1251663 () Bool)

(declare-fun res!834879 () Bool)

(assert (=> b!1251663 (=> (not res!834879) (not e!710831))))

(declare-datatypes ((List!27901 0))(
  ( (Nil!27898) (Cons!27897 (h!29106 (_ BitVec 64)) (t!41385 List!27901)) )
))
(declare-fun arrayNoDuplicates!0 (array!80999 (_ BitVec 32) List!27901) Bool)

(assert (=> b!1251663 (= res!834879 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27898))))

(declare-fun res!834882 () Bool)

(assert (=> start!105064 (=> (not res!834882) (not e!710831))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105064 (= res!834882 (validMask!0 mask!1466))))

(assert (=> start!105064 e!710831))

(assert (=> start!105064 true))

(assert (=> start!105064 tp!93825))

(assert (=> start!105064 tp_is_empty!31677))

(declare-fun array_inv!29723 (array!80999) Bool)

(assert (=> start!105064 (array_inv!29723 _keys!1118)))

(declare-fun array_inv!29724 (array!80997) Bool)

(assert (=> start!105064 (and (array_inv!29724 _values!914) e!710834)))

(assert (= (and start!105064 res!834882) b!1251667))

(assert (= (and b!1251667 res!834881) b!1251664))

(assert (= (and b!1251664 res!834880) b!1251663))

(assert (= (and b!1251663 res!834879) b!1251665))

(assert (= (and b!1251661 condMapEmpty!49285) mapIsEmpty!49285))

(assert (= (and b!1251661 (not condMapEmpty!49285)) mapNonEmpty!49285))

(get-info :version)

(assert (= (and mapNonEmpty!49285 ((_ is ValueCellFull!15075) mapValue!49285)) b!1251666))

(assert (= (and b!1251661 ((_ is ValueCellFull!15075) mapDefault!49285)) b!1251662))

(assert (= start!105064 b!1251661))

(declare-fun m!1152437 () Bool)

(assert (=> b!1251664 m!1152437))

(declare-fun m!1152439 () Bool)

(assert (=> b!1251663 m!1152439))

(declare-fun m!1152441 () Bool)

(assert (=> mapNonEmpty!49285 m!1152441))

(declare-fun m!1152443 () Bool)

(assert (=> start!105064 m!1152443))

(declare-fun m!1152445 () Bool)

(assert (=> start!105064 m!1152445))

(declare-fun m!1152447 () Bool)

(assert (=> start!105064 m!1152447))

(declare-fun m!1152449 () Bool)

(assert (=> b!1251665 m!1152449))

(declare-fun m!1152451 () Bool)

(assert (=> b!1251665 m!1152451))

(declare-fun m!1152453 () Bool)

(assert (=> b!1251665 m!1152453))

(check-sat (not b!1251664) b_and!44581 tp_is_empty!31677 (not mapNonEmpty!49285) (not b!1251665) (not b_next!26775) (not b!1251663) (not start!105064))
(check-sat b_and!44581 (not b_next!26775))
