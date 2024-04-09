; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105930 () Bool)

(assert start!105930)

(declare-fun b_free!27435 () Bool)

(declare-fun b_next!27435 () Bool)

(assert (=> start!105930 (= b_free!27435 (not b_next!27435))))

(declare-fun tp!95838 () Bool)

(declare-fun b_and!45353 () Bool)

(assert (=> start!105930 (= tp!95838 b_and!45353)))

(declare-fun res!840526 () Bool)

(declare-fun e!717831 () Bool)

(assert (=> start!105930 (=> (not res!840526) (not e!717831))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105930 (= res!840526 (validMask!0 mask!1466))))

(assert (=> start!105930 e!717831))

(assert (=> start!105930 true))

(assert (=> start!105930 tp!95838))

(declare-fun tp_is_empty!32337 () Bool)

(assert (=> start!105930 tp_is_empty!32337))

(declare-datatypes ((array!82273 0))(
  ( (array!82274 (arr!39685 (Array (_ BitVec 32) (_ BitVec 64))) (size!40222 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82273)

(declare-fun array_inv!30163 (array!82273) Bool)

(assert (=> start!105930 (array_inv!30163 _keys!1118)))

(declare-datatypes ((V!48481 0))(
  ( (V!48482 (val!16231 Int)) )
))
(declare-datatypes ((ValueCell!15405 0))(
  ( (ValueCellFull!15405 (v!18935 V!48481)) (EmptyCell!15405) )
))
(declare-datatypes ((array!82275 0))(
  ( (array!82276 (arr!39686 (Array (_ BitVec 32) ValueCell!15405)) (size!40223 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82275)

(declare-fun e!717835 () Bool)

(declare-fun array_inv!30164 (array!82275) Bool)

(assert (=> start!105930 (and (array_inv!30164 _values!914) e!717835)))

(declare-fun b!1261217 () Bool)

(declare-fun res!840523 () Bool)

(assert (=> b!1261217 (=> (not res!840523) (not e!717831))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1261217 (= res!840523 (and (= (size!40223 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40222 _keys!1118) (size!40223 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261218 () Bool)

(declare-fun e!717833 () Bool)

(assert (=> b!1261218 (= e!717833 tp_is_empty!32337)))

(declare-fun b!1261219 () Bool)

(assert (=> b!1261219 (= e!717831 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48481)

(declare-datatypes ((tuple2!21148 0))(
  ( (tuple2!21149 (_1!10584 (_ BitVec 64)) (_2!10584 V!48481)) )
))
(declare-datatypes ((List!28369 0))(
  ( (Nil!28366) (Cons!28365 (h!29574 tuple2!21148) (t!41875 List!28369)) )
))
(declare-datatypes ((ListLongMap!19033 0))(
  ( (ListLongMap!19034 (toList!9532 List!28369)) )
))
(declare-fun lt!571529 () ListLongMap!19033)

(declare-fun zeroValue!871 () V!48481)

(declare-fun getCurrentListMapNoExtraKeys!5873 (array!82273 array!82275 (_ BitVec 32) (_ BitVec 32) V!48481 V!48481 (_ BitVec 32) Int) ListLongMap!19033)

(assert (=> b!1261219 (= lt!571529 (getCurrentListMapNoExtraKeys!5873 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun minValueBefore!43 () V!48481)

(declare-fun lt!571528 () ListLongMap!19033)

(assert (=> b!1261219 (= lt!571528 (getCurrentListMapNoExtraKeys!5873 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1261220 () Bool)

(declare-fun res!840525 () Bool)

(assert (=> b!1261220 (=> (not res!840525) (not e!717831))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82273 (_ BitVec 32)) Bool)

(assert (=> b!1261220 (= res!840525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!50308 () Bool)

(declare-fun mapRes!50308 () Bool)

(declare-fun tp!95837 () Bool)

(assert (=> mapNonEmpty!50308 (= mapRes!50308 (and tp!95837 e!717833))))

(declare-fun mapValue!50308 () ValueCell!15405)

(declare-fun mapRest!50308 () (Array (_ BitVec 32) ValueCell!15405))

(declare-fun mapKey!50308 () (_ BitVec 32))

(assert (=> mapNonEmpty!50308 (= (arr!39686 _values!914) (store mapRest!50308 mapKey!50308 mapValue!50308))))

(declare-fun b!1261221 () Bool)

(declare-fun e!717834 () Bool)

(assert (=> b!1261221 (= e!717835 (and e!717834 mapRes!50308))))

(declare-fun condMapEmpty!50308 () Bool)

(declare-fun mapDefault!50308 () ValueCell!15405)

(assert (=> b!1261221 (= condMapEmpty!50308 (= (arr!39686 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15405)) mapDefault!50308)))))

(declare-fun mapIsEmpty!50308 () Bool)

(assert (=> mapIsEmpty!50308 mapRes!50308))

(declare-fun b!1261222 () Bool)

(declare-fun res!840524 () Bool)

(assert (=> b!1261222 (=> (not res!840524) (not e!717831))))

(declare-datatypes ((List!28370 0))(
  ( (Nil!28367) (Cons!28366 (h!29575 (_ BitVec 64)) (t!41876 List!28370)) )
))
(declare-fun arrayNoDuplicates!0 (array!82273 (_ BitVec 32) List!28370) Bool)

(assert (=> b!1261222 (= res!840524 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28367))))

(declare-fun b!1261223 () Bool)

(assert (=> b!1261223 (= e!717834 tp_is_empty!32337)))

(assert (= (and start!105930 res!840526) b!1261217))

(assert (= (and b!1261217 res!840523) b!1261220))

(assert (= (and b!1261220 res!840525) b!1261222))

(assert (= (and b!1261222 res!840524) b!1261219))

(assert (= (and b!1261221 condMapEmpty!50308) mapIsEmpty!50308))

(assert (= (and b!1261221 (not condMapEmpty!50308)) mapNonEmpty!50308))

(get-info :version)

(assert (= (and mapNonEmpty!50308 ((_ is ValueCellFull!15405) mapValue!50308)) b!1261218))

(assert (= (and b!1261221 ((_ is ValueCellFull!15405) mapDefault!50308)) b!1261223))

(assert (= start!105930 b!1261221))

(declare-fun m!1161915 () Bool)

(assert (=> b!1261222 m!1161915))

(declare-fun m!1161917 () Bool)

(assert (=> mapNonEmpty!50308 m!1161917))

(declare-fun m!1161919 () Bool)

(assert (=> start!105930 m!1161919))

(declare-fun m!1161921 () Bool)

(assert (=> start!105930 m!1161921))

(declare-fun m!1161923 () Bool)

(assert (=> start!105930 m!1161923))

(declare-fun m!1161925 () Bool)

(assert (=> b!1261220 m!1161925))

(declare-fun m!1161927 () Bool)

(assert (=> b!1261219 m!1161927))

(declare-fun m!1161929 () Bool)

(assert (=> b!1261219 m!1161929))

(check-sat (not b!1261219) (not start!105930) tp_is_empty!32337 (not b!1261222) (not b!1261220) b_and!45353 (not mapNonEmpty!50308) (not b_next!27435))
(check-sat b_and!45353 (not b_next!27435))
