; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105882 () Bool)

(assert start!105882)

(declare-fun b_free!27387 () Bool)

(declare-fun b_next!27387 () Bool)

(assert (=> start!105882 (= b_free!27387 (not b_next!27387))))

(declare-fun tp!95694 () Bool)

(declare-fun b_and!45305 () Bool)

(assert (=> start!105882 (= tp!95694 b_and!45305)))

(declare-fun b!1260713 () Bool)

(declare-fun e!717472 () Bool)

(declare-fun tp_is_empty!32289 () Bool)

(assert (=> b!1260713 (= e!717472 tp_is_empty!32289)))

(declare-fun mapIsEmpty!50236 () Bool)

(declare-fun mapRes!50236 () Bool)

(assert (=> mapIsEmpty!50236 mapRes!50236))

(declare-fun b!1260714 () Bool)

(declare-fun e!717474 () Bool)

(declare-fun e!717475 () Bool)

(assert (=> b!1260714 (= e!717474 (and e!717475 mapRes!50236))))

(declare-fun condMapEmpty!50236 () Bool)

(declare-datatypes ((V!48417 0))(
  ( (V!48418 (val!16207 Int)) )
))
(declare-datatypes ((ValueCell!15381 0))(
  ( (ValueCellFull!15381 (v!18911 V!48417)) (EmptyCell!15381) )
))
(declare-datatypes ((array!82183 0))(
  ( (array!82184 (arr!39640 (Array (_ BitVec 32) ValueCell!15381)) (size!40177 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82183)

(declare-fun mapDefault!50236 () ValueCell!15381)

(assert (=> b!1260714 (= condMapEmpty!50236 (= (arr!39640 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15381)) mapDefault!50236)))))

(declare-fun b!1260715 () Bool)

(declare-fun res!840237 () Bool)

(declare-fun e!717471 () Bool)

(assert (=> b!1260715 (=> (not res!840237) (not e!717471))))

(declare-datatypes ((array!82185 0))(
  ( (array!82186 (arr!39641 (Array (_ BitVec 32) (_ BitVec 64))) (size!40178 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82185)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82185 (_ BitVec 32)) Bool)

(assert (=> b!1260715 (= res!840237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1260716 () Bool)

(declare-fun res!840238 () Bool)

(assert (=> b!1260716 (=> (not res!840238) (not e!717471))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1260716 (= res!840238 (and (= (size!40177 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40178 _keys!1118) (size!40177 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!50236 () Bool)

(declare-fun tp!95693 () Bool)

(assert (=> mapNonEmpty!50236 (= mapRes!50236 (and tp!95693 e!717472))))

(declare-fun mapKey!50236 () (_ BitVec 32))

(declare-fun mapRest!50236 () (Array (_ BitVec 32) ValueCell!15381))

(declare-fun mapValue!50236 () ValueCell!15381)

(assert (=> mapNonEmpty!50236 (= (arr!39640 _values!914) (store mapRest!50236 mapKey!50236 mapValue!50236))))

(declare-fun b!1260718 () Bool)

(assert (=> b!1260718 (= e!717475 tp_is_empty!32289)))

(declare-fun b!1260719 () Bool)

(declare-fun res!840236 () Bool)

(assert (=> b!1260719 (=> (not res!840236) (not e!717471))))

(declare-datatypes ((List!28337 0))(
  ( (Nil!28334) (Cons!28333 (h!29542 (_ BitVec 64)) (t!41843 List!28337)) )
))
(declare-fun arrayNoDuplicates!0 (array!82185 (_ BitVec 32) List!28337) Bool)

(assert (=> b!1260719 (= res!840236 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28334))))

(declare-fun b!1260717 () Bool)

(assert (=> b!1260717 (= e!717471 (not true))))

(declare-datatypes ((tuple2!21116 0))(
  ( (tuple2!21117 (_1!10568 (_ BitVec 64)) (_2!10568 V!48417)) )
))
(declare-datatypes ((List!28338 0))(
  ( (Nil!28335) (Cons!28334 (h!29543 tuple2!21116) (t!41844 List!28338)) )
))
(declare-datatypes ((ListLongMap!19001 0))(
  ( (ListLongMap!19002 (toList!9516 List!28338)) )
))
(declare-fun lt!571381 () ListLongMap!19001)

(declare-fun lt!571380 () ListLongMap!19001)

(assert (=> b!1260717 (= lt!571381 lt!571380)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48417)

(declare-datatypes ((Unit!42001 0))(
  ( (Unit!42002) )
))
(declare-fun lt!571382 () Unit!42001)

(declare-fun zeroValue!871 () V!48417)

(declare-fun minValueBefore!43 () V!48417)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1175 (array!82185 array!82183 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48417 V!48417 V!48417 V!48417 (_ BitVec 32) Int) Unit!42001)

(assert (=> b!1260717 (= lt!571382 (lemmaNoChangeToArrayThenSameMapNoExtras!1175 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5857 (array!82185 array!82183 (_ BitVec 32) (_ BitVec 32) V!48417 V!48417 (_ BitVec 32) Int) ListLongMap!19001)

(assert (=> b!1260717 (= lt!571380 (getCurrentListMapNoExtraKeys!5857 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1260717 (= lt!571381 (getCurrentListMapNoExtraKeys!5857 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!840235 () Bool)

(assert (=> start!105882 (=> (not res!840235) (not e!717471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105882 (= res!840235 (validMask!0 mask!1466))))

(assert (=> start!105882 e!717471))

(assert (=> start!105882 true))

(assert (=> start!105882 tp!95694))

(assert (=> start!105882 tp_is_empty!32289))

(declare-fun array_inv!30129 (array!82185) Bool)

(assert (=> start!105882 (array_inv!30129 _keys!1118)))

(declare-fun array_inv!30130 (array!82183) Bool)

(assert (=> start!105882 (and (array_inv!30130 _values!914) e!717474)))

(assert (= (and start!105882 res!840235) b!1260716))

(assert (= (and b!1260716 res!840238) b!1260715))

(assert (= (and b!1260715 res!840237) b!1260719))

(assert (= (and b!1260719 res!840236) b!1260717))

(assert (= (and b!1260714 condMapEmpty!50236) mapIsEmpty!50236))

(assert (= (and b!1260714 (not condMapEmpty!50236)) mapNonEmpty!50236))

(get-info :version)

(assert (= (and mapNonEmpty!50236 ((_ is ValueCellFull!15381) mapValue!50236)) b!1260713))

(assert (= (and b!1260714 ((_ is ValueCellFull!15381) mapDefault!50236)) b!1260718))

(assert (= start!105882 b!1260714))

(declare-fun m!1161527 () Bool)

(assert (=> b!1260717 m!1161527))

(declare-fun m!1161529 () Bool)

(assert (=> b!1260717 m!1161529))

(declare-fun m!1161531 () Bool)

(assert (=> b!1260717 m!1161531))

(declare-fun m!1161533 () Bool)

(assert (=> start!105882 m!1161533))

(declare-fun m!1161535 () Bool)

(assert (=> start!105882 m!1161535))

(declare-fun m!1161537 () Bool)

(assert (=> start!105882 m!1161537))

(declare-fun m!1161539 () Bool)

(assert (=> mapNonEmpty!50236 m!1161539))

(declare-fun m!1161541 () Bool)

(assert (=> b!1260719 m!1161541))

(declare-fun m!1161543 () Bool)

(assert (=> b!1260715 m!1161543))

(check-sat (not b!1260717) b_and!45305 (not b!1260719) tp_is_empty!32289 (not start!105882) (not b_next!27387) (not b!1260715) (not mapNonEmpty!50236))
(check-sat b_and!45305 (not b_next!27387))
