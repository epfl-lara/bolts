; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105378 () Bool)

(assert start!105378)

(declare-fun b_free!27015 () Bool)

(declare-fun b_next!27015 () Bool)

(assert (=> start!105378 (= b_free!27015 (not b_next!27015))))

(declare-fun tp!94556 () Bool)

(declare-fun b_and!44863 () Bool)

(assert (=> start!105378 (= tp!94556 b_and!44863)))

(declare-fun b!1255043 () Bool)

(declare-fun e!713280 () Bool)

(declare-fun tp_is_empty!31917 () Bool)

(assert (=> b!1255043 (= e!713280 tp_is_empty!31917)))

(declare-fun b!1255044 () Bool)

(declare-fun res!836836 () Bool)

(declare-fun e!713283 () Bool)

(assert (=> b!1255044 (=> (not res!836836) (not e!713283))))

(declare-datatypes ((array!81469 0))(
  ( (array!81470 (arr!39290 (Array (_ BitVec 32) (_ BitVec 64))) (size!39827 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81469)

(declare-datatypes ((List!28070 0))(
  ( (Nil!28067) (Cons!28066 (h!29275 (_ BitVec 64)) (t!41562 List!28070)) )
))
(declare-fun arrayNoDuplicates!0 (array!81469 (_ BitVec 32) List!28070) Bool)

(assert (=> b!1255044 (= res!836836 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28067))))

(declare-fun mapNonEmpty!49657 () Bool)

(declare-fun mapRes!49657 () Bool)

(declare-fun tp!94557 () Bool)

(assert (=> mapNonEmpty!49657 (= mapRes!49657 (and tp!94557 e!713280))))

(declare-datatypes ((V!47921 0))(
  ( (V!47922 (val!16021 Int)) )
))
(declare-datatypes ((ValueCell!15195 0))(
  ( (ValueCellFull!15195 (v!18721 V!47921)) (EmptyCell!15195) )
))
(declare-fun mapRest!49657 () (Array (_ BitVec 32) ValueCell!15195))

(declare-fun mapKey!49657 () (_ BitVec 32))

(declare-fun mapValue!49657 () ValueCell!15195)

(declare-datatypes ((array!81471 0))(
  ( (array!81472 (arr!39291 (Array (_ BitVec 32) ValueCell!15195)) (size!39828 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81471)

(assert (=> mapNonEmpty!49657 (= (arr!39291 _values!914) (store mapRest!49657 mapKey!49657 mapValue!49657))))

(declare-fun b!1255046 () Bool)

(declare-fun e!713281 () Bool)

(declare-fun e!713279 () Bool)

(assert (=> b!1255046 (= e!713281 (and e!713279 mapRes!49657))))

(declare-fun condMapEmpty!49657 () Bool)

(declare-fun mapDefault!49657 () ValueCell!15195)

(assert (=> b!1255046 (= condMapEmpty!49657 (= (arr!39291 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15195)) mapDefault!49657)))))

(declare-fun b!1255047 () Bool)

(assert (=> b!1255047 (= e!713283 (not true))))

(declare-datatypes ((tuple2!20830 0))(
  ( (tuple2!20831 (_1!10425 (_ BitVec 64)) (_2!10425 V!47921)) )
))
(declare-datatypes ((List!28071 0))(
  ( (Nil!28068) (Cons!28067 (h!29276 tuple2!20830) (t!41563 List!28071)) )
))
(declare-datatypes ((ListLongMap!18715 0))(
  ( (ListLongMap!18716 (toList!9373 List!28071)) )
))
(declare-fun lt!567388 () ListLongMap!18715)

(declare-fun lt!567387 () ListLongMap!18715)

(assert (=> b!1255047 (= lt!567388 lt!567387)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47921)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47921)

(declare-fun minValueBefore!43 () V!47921)

(declare-datatypes ((Unit!41720 0))(
  ( (Unit!41721) )
))
(declare-fun lt!567389 () Unit!41720)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1052 (array!81469 array!81471 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47921 V!47921 V!47921 V!47921 (_ BitVec 32) Int) Unit!41720)

(assert (=> b!1255047 (= lt!567389 (lemmaNoChangeToArrayThenSameMapNoExtras!1052 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5734 (array!81469 array!81471 (_ BitVec 32) (_ BitVec 32) V!47921 V!47921 (_ BitVec 32) Int) ListLongMap!18715)

(assert (=> b!1255047 (= lt!567387 (getCurrentListMapNoExtraKeys!5734 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255047 (= lt!567388 (getCurrentListMapNoExtraKeys!5734 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49657 () Bool)

(assert (=> mapIsEmpty!49657 mapRes!49657))

(declare-fun b!1255048 () Bool)

(declare-fun res!836835 () Bool)

(assert (=> b!1255048 (=> (not res!836835) (not e!713283))))

(assert (=> b!1255048 (= res!836835 (and (= (size!39828 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39827 _keys!1118) (size!39828 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255049 () Bool)

(declare-fun res!836834 () Bool)

(assert (=> b!1255049 (=> (not res!836834) (not e!713283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81469 (_ BitVec 32)) Bool)

(assert (=> b!1255049 (= res!836834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255045 () Bool)

(assert (=> b!1255045 (= e!713279 tp_is_empty!31917)))

(declare-fun res!836833 () Bool)

(assert (=> start!105378 (=> (not res!836833) (not e!713283))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105378 (= res!836833 (validMask!0 mask!1466))))

(assert (=> start!105378 e!713283))

(assert (=> start!105378 true))

(assert (=> start!105378 tp!94556))

(assert (=> start!105378 tp_is_empty!31917))

(declare-fun array_inv!29883 (array!81469) Bool)

(assert (=> start!105378 (array_inv!29883 _keys!1118)))

(declare-fun array_inv!29884 (array!81471) Bool)

(assert (=> start!105378 (and (array_inv!29884 _values!914) e!713281)))

(assert (= (and start!105378 res!836833) b!1255048))

(assert (= (and b!1255048 res!836835) b!1255049))

(assert (= (and b!1255049 res!836834) b!1255044))

(assert (= (and b!1255044 res!836836) b!1255047))

(assert (= (and b!1255046 condMapEmpty!49657) mapIsEmpty!49657))

(assert (= (and b!1255046 (not condMapEmpty!49657)) mapNonEmpty!49657))

(get-info :version)

(assert (= (and mapNonEmpty!49657 ((_ is ValueCellFull!15195) mapValue!49657)) b!1255043))

(assert (= (and b!1255046 ((_ is ValueCellFull!15195) mapDefault!49657)) b!1255045))

(assert (= start!105378 b!1255046))

(declare-fun m!1155869 () Bool)

(assert (=> mapNonEmpty!49657 m!1155869))

(declare-fun m!1155871 () Bool)

(assert (=> start!105378 m!1155871))

(declare-fun m!1155873 () Bool)

(assert (=> start!105378 m!1155873))

(declare-fun m!1155875 () Bool)

(assert (=> start!105378 m!1155875))

(declare-fun m!1155877 () Bool)

(assert (=> b!1255049 m!1155877))

(declare-fun m!1155879 () Bool)

(assert (=> b!1255044 m!1155879))

(declare-fun m!1155881 () Bool)

(assert (=> b!1255047 m!1155881))

(declare-fun m!1155883 () Bool)

(assert (=> b!1255047 m!1155883))

(declare-fun m!1155885 () Bool)

(assert (=> b!1255047 m!1155885))

(check-sat b_and!44863 (not b!1255049) (not mapNonEmpty!49657) (not start!105378) (not b_next!27015) (not b!1255044) tp_is_empty!31917 (not b!1255047))
(check-sat b_and!44863 (not b_next!27015))
