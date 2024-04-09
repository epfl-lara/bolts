; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105840 () Bool)

(assert start!105840)

(declare-fun b_free!27367 () Bool)

(declare-fun b_next!27367 () Bool)

(assert (=> start!105840 (= b_free!27367 (not b_next!27367))))

(declare-fun tp!95631 () Bool)

(declare-fun b_and!45273 () Bool)

(assert (=> start!105840 (= tp!95631 b_and!45273)))

(declare-fun b!1260265 () Bool)

(declare-fun res!839982 () Bool)

(declare-fun e!717151 () Bool)

(assert (=> b!1260265 (=> (not res!839982) (not e!717151))))

(declare-datatypes ((array!82145 0))(
  ( (array!82146 (arr!39622 (Array (_ BitVec 32) (_ BitVec 64))) (size!40159 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82145)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82145 (_ BitVec 32)) Bool)

(assert (=> b!1260265 (= res!839982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1260266 () Bool)

(declare-fun res!839980 () Bool)

(assert (=> b!1260266 (=> (not res!839980) (not e!717151))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!48391 0))(
  ( (V!48392 (val!16197 Int)) )
))
(declare-datatypes ((ValueCell!15371 0))(
  ( (ValueCellFull!15371 (v!18900 V!48391)) (EmptyCell!15371) )
))
(declare-datatypes ((array!82147 0))(
  ( (array!82148 (arr!39623 (Array (_ BitVec 32) ValueCell!15371)) (size!40160 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82147)

(assert (=> b!1260266 (= res!839980 (and (= (size!40160 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40159 _keys!1118) (size!40160 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!839981 () Bool)

(assert (=> start!105840 (=> (not res!839981) (not e!717151))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105840 (= res!839981 (validMask!0 mask!1466))))

(assert (=> start!105840 e!717151))

(assert (=> start!105840 true))

(assert (=> start!105840 tp!95631))

(declare-fun tp_is_empty!32269 () Bool)

(assert (=> start!105840 tp_is_empty!32269))

(declare-fun array_inv!30115 (array!82145) Bool)

(assert (=> start!105840 (array_inv!30115 _keys!1118)))

(declare-fun e!717150 () Bool)

(declare-fun array_inv!30116 (array!82147) Bool)

(assert (=> start!105840 (and (array_inv!30116 _values!914) e!717150)))

(declare-fun mapNonEmpty!50203 () Bool)

(declare-fun mapRes!50203 () Bool)

(declare-fun tp!95630 () Bool)

(declare-fun e!717153 () Bool)

(assert (=> mapNonEmpty!50203 (= mapRes!50203 (and tp!95630 e!717153))))

(declare-fun mapRest!50203 () (Array (_ BitVec 32) ValueCell!15371))

(declare-fun mapValue!50203 () ValueCell!15371)

(declare-fun mapKey!50203 () (_ BitVec 32))

(assert (=> mapNonEmpty!50203 (= (arr!39623 _values!914) (store mapRest!50203 mapKey!50203 mapValue!50203))))

(declare-fun b!1260267 () Bool)

(declare-fun e!717154 () Bool)

(assert (=> b!1260267 (= e!717151 (not e!717154))))

(declare-fun res!839983 () Bool)

(assert (=> b!1260267 (=> res!839983 e!717154)))

(assert (=> b!1260267 (= res!839983 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!21104 0))(
  ( (tuple2!21105 (_1!10562 (_ BitVec 64)) (_2!10562 V!48391)) )
))
(declare-datatypes ((List!28326 0))(
  ( (Nil!28323) (Cons!28322 (h!29531 tuple2!21104) (t!41830 List!28326)) )
))
(declare-datatypes ((ListLongMap!18989 0))(
  ( (ListLongMap!18990 (toList!9510 List!28326)) )
))
(declare-fun lt!570970 () ListLongMap!18989)

(declare-fun lt!570978 () ListLongMap!18989)

(assert (=> b!1260267 (= lt!570970 lt!570978)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48391)

(declare-fun zeroValue!871 () V!48391)

(declare-fun minValueBefore!43 () V!48391)

(declare-datatypes ((Unit!41987 0))(
  ( (Unit!41988) )
))
(declare-fun lt!570977 () Unit!41987)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1170 (array!82145 array!82147 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48391 V!48391 V!48391 V!48391 (_ BitVec 32) Int) Unit!41987)

(assert (=> b!1260267 (= lt!570977 (lemmaNoChangeToArrayThenSameMapNoExtras!1170 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5852 (array!82145 array!82147 (_ BitVec 32) (_ BitVec 32) V!48391 V!48391 (_ BitVec 32) Int) ListLongMap!18989)

(assert (=> b!1260267 (= lt!570978 (getCurrentListMapNoExtraKeys!5852 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1260267 (= lt!570970 (getCurrentListMapNoExtraKeys!5852 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260268 () Bool)

(assert (=> b!1260268 (= e!717153 tp_is_empty!32269)))

(declare-fun lt!570972 () ListLongMap!18989)

(declare-fun lt!570973 () tuple2!21104)

(declare-fun b!1260269 () Bool)

(declare-fun e!717156 () Bool)

(declare-fun +!4206 (ListLongMap!18989 tuple2!21104) ListLongMap!18989)

(assert (=> b!1260269 (= e!717156 (= lt!570972 (+!4206 lt!570978 lt!570973)))))

(declare-fun b!1260270 () Bool)

(declare-fun e!717152 () Bool)

(assert (=> b!1260270 (= e!717152 tp_is_empty!32269)))

(declare-fun b!1260271 () Bool)

(assert (=> b!1260271 (= e!717150 (and e!717152 mapRes!50203))))

(declare-fun condMapEmpty!50203 () Bool)

(declare-fun mapDefault!50203 () ValueCell!15371)

