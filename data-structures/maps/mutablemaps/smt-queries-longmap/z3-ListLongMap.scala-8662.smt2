; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105372 () Bool)

(assert start!105372)

(declare-fun b_free!27009 () Bool)

(declare-fun b_next!27009 () Bool)

(assert (=> start!105372 (= b_free!27009 (not b_next!27009))))

(declare-fun tp!94538 () Bool)

(declare-fun b_and!44857 () Bool)

(assert (=> start!105372 (= tp!94538 b_and!44857)))

(declare-fun b!1254980 () Bool)

(declare-fun e!713237 () Bool)

(declare-fun e!713236 () Bool)

(declare-fun mapRes!49648 () Bool)

(assert (=> b!1254980 (= e!713237 (and e!713236 mapRes!49648))))

(declare-fun condMapEmpty!49648 () Bool)

(declare-datatypes ((V!47913 0))(
  ( (V!47914 (val!16018 Int)) )
))
(declare-datatypes ((ValueCell!15192 0))(
  ( (ValueCellFull!15192 (v!18718 V!47913)) (EmptyCell!15192) )
))
(declare-datatypes ((array!81457 0))(
  ( (array!81458 (arr!39284 (Array (_ BitVec 32) ValueCell!15192)) (size!39821 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81457)

(declare-fun mapDefault!49648 () ValueCell!15192)

(assert (=> b!1254980 (= condMapEmpty!49648 (= (arr!39284 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15192)) mapDefault!49648)))))

(declare-fun b!1254981 () Bool)

(declare-fun res!836799 () Bool)

(declare-fun e!713238 () Bool)

(assert (=> b!1254981 (=> (not res!836799) (not e!713238))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81459 0))(
  ( (array!81460 (arr!39285 (Array (_ BitVec 32) (_ BitVec 64))) (size!39822 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81459)

(assert (=> b!1254981 (= res!836799 (and (= (size!39821 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39822 _keys!1118) (size!39821 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254982 () Bool)

(declare-fun res!836800 () Bool)

(assert (=> b!1254982 (=> (not res!836800) (not e!713238))))

(declare-datatypes ((List!28066 0))(
  ( (Nil!28063) (Cons!28062 (h!29271 (_ BitVec 64)) (t!41558 List!28066)) )
))
(declare-fun arrayNoDuplicates!0 (array!81459 (_ BitVec 32) List!28066) Bool)

(assert (=> b!1254982 (= res!836800 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28063))))

(declare-fun mapIsEmpty!49648 () Bool)

(assert (=> mapIsEmpty!49648 mapRes!49648))

(declare-fun b!1254983 () Bool)

(declare-fun res!836797 () Bool)

(assert (=> b!1254983 (=> (not res!836797) (not e!713238))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81459 (_ BitVec 32)) Bool)

(assert (=> b!1254983 (= res!836797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1254984 () Bool)

(declare-fun tp_is_empty!31911 () Bool)

(assert (=> b!1254984 (= e!713236 tp_is_empty!31911)))

(declare-fun b!1254985 () Bool)

(assert (=> b!1254985 (= e!713238 (not true))))

(declare-datatypes ((tuple2!20826 0))(
  ( (tuple2!20827 (_1!10423 (_ BitVec 64)) (_2!10423 V!47913)) )
))
(declare-datatypes ((List!28067 0))(
  ( (Nil!28064) (Cons!28063 (h!29272 tuple2!20826) (t!41559 List!28067)) )
))
(declare-datatypes ((ListLongMap!18711 0))(
  ( (ListLongMap!18712 (toList!9371 List!28067)) )
))
(declare-fun lt!567362 () ListLongMap!18711)

(declare-fun lt!567360 () ListLongMap!18711)

(assert (=> b!1254985 (= lt!567362 lt!567360)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47913)

(declare-fun zeroValue!871 () V!47913)

(declare-fun minValueBefore!43 () V!47913)

(declare-datatypes ((Unit!41716 0))(
  ( (Unit!41717) )
))
(declare-fun lt!567361 () Unit!41716)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1050 (array!81459 array!81457 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47913 V!47913 V!47913 V!47913 (_ BitVec 32) Int) Unit!41716)

(assert (=> b!1254985 (= lt!567361 (lemmaNoChangeToArrayThenSameMapNoExtras!1050 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5732 (array!81459 array!81457 (_ BitVec 32) (_ BitVec 32) V!47913 V!47913 (_ BitVec 32) Int) ListLongMap!18711)

(assert (=> b!1254985 (= lt!567360 (getCurrentListMapNoExtraKeys!5732 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254985 (= lt!567362 (getCurrentListMapNoExtraKeys!5732 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!836798 () Bool)

(assert (=> start!105372 (=> (not res!836798) (not e!713238))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105372 (= res!836798 (validMask!0 mask!1466))))

(assert (=> start!105372 e!713238))

(assert (=> start!105372 true))

(assert (=> start!105372 tp!94538))

(assert (=> start!105372 tp_is_empty!31911))

(declare-fun array_inv!29877 (array!81459) Bool)

(assert (=> start!105372 (array_inv!29877 _keys!1118)))

(declare-fun array_inv!29878 (array!81457) Bool)

(assert (=> start!105372 (and (array_inv!29878 _values!914) e!713237)))

(declare-fun mapNonEmpty!49648 () Bool)

(declare-fun tp!94539 () Bool)

(declare-fun e!713234 () Bool)

(assert (=> mapNonEmpty!49648 (= mapRes!49648 (and tp!94539 e!713234))))

(declare-fun mapKey!49648 () (_ BitVec 32))

(declare-fun mapRest!49648 () (Array (_ BitVec 32) ValueCell!15192))

(declare-fun mapValue!49648 () ValueCell!15192)

(assert (=> mapNonEmpty!49648 (= (arr!39284 _values!914) (store mapRest!49648 mapKey!49648 mapValue!49648))))

(declare-fun b!1254986 () Bool)

(assert (=> b!1254986 (= e!713234 tp_is_empty!31911)))

(assert (= (and start!105372 res!836798) b!1254981))

(assert (= (and b!1254981 res!836799) b!1254983))

(assert (= (and b!1254983 res!836797) b!1254982))

(assert (= (and b!1254982 res!836800) b!1254985))

(assert (= (and b!1254980 condMapEmpty!49648) mapIsEmpty!49648))

(assert (= (and b!1254980 (not condMapEmpty!49648)) mapNonEmpty!49648))

(get-info :version)

(assert (= (and mapNonEmpty!49648 ((_ is ValueCellFull!15192) mapValue!49648)) b!1254986))

(assert (= (and b!1254980 ((_ is ValueCellFull!15192) mapDefault!49648)) b!1254984))

(assert (= start!105372 b!1254980))

(declare-fun m!1155815 () Bool)

(assert (=> b!1254982 m!1155815))

(declare-fun m!1155817 () Bool)

(assert (=> start!105372 m!1155817))

(declare-fun m!1155819 () Bool)

(assert (=> start!105372 m!1155819))

(declare-fun m!1155821 () Bool)

(assert (=> start!105372 m!1155821))

(declare-fun m!1155823 () Bool)

(assert (=> b!1254985 m!1155823))

(declare-fun m!1155825 () Bool)

(assert (=> b!1254985 m!1155825))

(declare-fun m!1155827 () Bool)

(assert (=> b!1254985 m!1155827))

(declare-fun m!1155829 () Bool)

(assert (=> b!1254983 m!1155829))

(declare-fun m!1155831 () Bool)

(assert (=> mapNonEmpty!49648 m!1155831))

(check-sat (not b!1254983) (not mapNonEmpty!49648) (not b_next!27009) b_and!44857 (not start!105372) (not b!1254985) tp_is_empty!31911 (not b!1254982))
(check-sat b_and!44857 (not b_next!27009))
