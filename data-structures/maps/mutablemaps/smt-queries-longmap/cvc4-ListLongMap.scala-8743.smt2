; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106100 () Bool)

(assert start!106100)

(declare-fun b_free!27497 () Bool)

(declare-fun b_next!27497 () Bool)

(assert (=> start!106100 (= b_free!27497 (not b_next!27497))))

(declare-fun tp!96041 () Bool)

(declare-fun b_and!45481 () Bool)

(assert (=> start!106100 (= tp!96041 b_and!45481)))

(declare-fun b!1262920 () Bool)

(declare-fun res!841378 () Bool)

(declare-fun e!719003 () Bool)

(assert (=> b!1262920 (=> (not res!841378) (not e!719003))))

(declare-datatypes ((array!82403 0))(
  ( (array!82404 (arr!39744 (Array (_ BitVec 32) (_ BitVec 64))) (size!40281 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82403)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82403 (_ BitVec 32)) Bool)

(assert (=> b!1262920 (= res!841378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1262921 () Bool)

(declare-fun e!719002 () Bool)

(declare-fun tp_is_empty!32399 () Bool)

(assert (=> b!1262921 (= e!719002 tp_is_empty!32399)))

(declare-fun mapIsEmpty!50419 () Bool)

(declare-fun mapRes!50419 () Bool)

(assert (=> mapIsEmpty!50419 mapRes!50419))

(declare-fun b!1262922 () Bool)

(declare-fun res!841377 () Bool)

(assert (=> b!1262922 (=> (not res!841377) (not e!719003))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!48563 0))(
  ( (V!48564 (val!16262 Int)) )
))
(declare-datatypes ((ValueCell!15436 0))(
  ( (ValueCellFull!15436 (v!18971 V!48563)) (EmptyCell!15436) )
))
(declare-datatypes ((array!82405 0))(
  ( (array!82406 (arr!39745 (Array (_ BitVec 32) ValueCell!15436)) (size!40282 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82405)

(assert (=> b!1262922 (= res!841377 (and (= (size!40282 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40281 _keys!1118) (size!40282 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1262923 () Bool)

(declare-fun e!719000 () Bool)

(assert (=> b!1262923 (= e!719000 tp_is_empty!32399)))

(declare-fun res!841381 () Bool)

(assert (=> start!106100 (=> (not res!841381) (not e!719003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106100 (= res!841381 (validMask!0 mask!1466))))

(assert (=> start!106100 e!719003))

(assert (=> start!106100 true))

(assert (=> start!106100 tp!96041))

(assert (=> start!106100 tp_is_empty!32399))

(declare-fun array_inv!30207 (array!82403) Bool)

(assert (=> start!106100 (array_inv!30207 _keys!1118)))

(declare-fun e!719001 () Bool)

(declare-fun array_inv!30208 (array!82405) Bool)

(assert (=> start!106100 (and (array_inv!30208 _values!914) e!719001)))

(declare-fun mapNonEmpty!50419 () Bool)

(declare-fun tp!96042 () Bool)

(assert (=> mapNonEmpty!50419 (= mapRes!50419 (and tp!96042 e!719000))))

(declare-fun mapValue!50419 () ValueCell!15436)

(declare-fun mapKey!50419 () (_ BitVec 32))

(declare-fun mapRest!50419 () (Array (_ BitVec 32) ValueCell!15436))

(assert (=> mapNonEmpty!50419 (= (arr!39745 _values!914) (store mapRest!50419 mapKey!50419 mapValue!50419))))

(declare-fun b!1262924 () Bool)

(declare-fun e!718998 () Bool)

(assert (=> b!1262924 (= e!719003 (not e!718998))))

(declare-fun res!841379 () Bool)

(assert (=> b!1262924 (=> res!841379 e!718998)))

(assert (=> b!1262924 (= res!841379 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!21196 0))(
  ( (tuple2!21197 (_1!10608 (_ BitVec 64)) (_2!10608 V!48563)) )
))
(declare-datatypes ((List!28417 0))(
  ( (Nil!28414) (Cons!28413 (h!29622 tuple2!21196) (t!41935 List!28417)) )
))
(declare-datatypes ((ListLongMap!19081 0))(
  ( (ListLongMap!19082 (toList!9556 List!28417)) )
))
(declare-fun lt!572644 () ListLongMap!19081)

(declare-fun lt!572643 () ListLongMap!19081)

(assert (=> b!1262924 (= lt!572644 lt!572643)))

(declare-fun minValueAfter!43 () V!48563)

(declare-fun zeroValue!871 () V!48563)

(declare-fun minValueBefore!43 () V!48563)

(declare-datatypes ((Unit!42049 0))(
  ( (Unit!42050) )
))
(declare-fun lt!572641 () Unit!42049)

(declare-fun defaultEntry!922 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1192 (array!82403 array!82405 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48563 V!48563 V!48563 V!48563 (_ BitVec 32) Int) Unit!42049)

(assert (=> b!1262924 (= lt!572641 (lemmaNoChangeToArrayThenSameMapNoExtras!1192 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5896 (array!82403 array!82405 (_ BitVec 32) (_ BitVec 32) V!48563 V!48563 (_ BitVec 32) Int) ListLongMap!19081)

(assert (=> b!1262924 (= lt!572643 (getCurrentListMapNoExtraKeys!5896 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1262924 (= lt!572644 (getCurrentListMapNoExtraKeys!5896 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262925 () Bool)

(assert (=> b!1262925 (= e!719001 (and e!719002 mapRes!50419))))

(declare-fun condMapEmpty!50419 () Bool)

(declare-fun mapDefault!50419 () ValueCell!15436)

