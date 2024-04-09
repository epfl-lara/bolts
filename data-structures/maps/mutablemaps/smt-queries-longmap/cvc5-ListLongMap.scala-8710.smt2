; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105746 () Bool)

(assert start!105746)

(declare-fun b_free!27295 () Bool)

(declare-fun b_next!27295 () Bool)

(assert (=> start!105746 (= b_free!27295 (not b_next!27295))))

(declare-fun tp!95412 () Bool)

(declare-fun b_and!45189 () Bool)

(assert (=> start!105746 (= tp!95412 b_and!45189)))

(declare-fun mapNonEmpty!50092 () Bool)

(declare-fun mapRes!50092 () Bool)

(declare-fun tp!95411 () Bool)

(declare-fun e!716279 () Bool)

(assert (=> mapNonEmpty!50092 (= mapRes!50092 (and tp!95411 e!716279))))

(declare-datatypes ((V!48295 0))(
  ( (V!48296 (val!16161 Int)) )
))
(declare-datatypes ((ValueCell!15335 0))(
  ( (ValueCellFull!15335 (v!18863 V!48295)) (EmptyCell!15335) )
))
(declare-datatypes ((array!82007 0))(
  ( (array!82008 (arr!39554 (Array (_ BitVec 32) ValueCell!15335)) (size!40091 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82007)

(declare-fun mapValue!50092 () ValueCell!15335)

(declare-fun mapKey!50092 () (_ BitVec 32))

(declare-fun mapRest!50092 () (Array (_ BitVec 32) ValueCell!15335))

(assert (=> mapNonEmpty!50092 (= (arr!39554 _values!914) (store mapRest!50092 mapKey!50092 mapValue!50092))))

(declare-fun b!1259105 () Bool)

(declare-fun res!839247 () Bool)

(declare-fun e!716273 () Bool)

(assert (=> b!1259105 (=> (not res!839247) (not e!716273))))

(declare-datatypes ((array!82009 0))(
  ( (array!82010 (arr!39555 (Array (_ BitVec 32) (_ BitVec 64))) (size!40092 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82009)

(declare-datatypes ((List!28274 0))(
  ( (Nil!28271) (Cons!28270 (h!29479 (_ BitVec 64)) (t!41776 List!28274)) )
))
(declare-fun arrayNoDuplicates!0 (array!82009 (_ BitVec 32) List!28274) Bool)

(assert (=> b!1259105 (= res!839247 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28271))))

(declare-fun mapIsEmpty!50092 () Bool)

(assert (=> mapIsEmpty!50092 mapRes!50092))

(declare-fun b!1259106 () Bool)

(declare-fun e!716275 () Bool)

(declare-fun tp_is_empty!32197 () Bool)

(assert (=> b!1259106 (= e!716275 tp_is_empty!32197)))

(declare-fun b!1259107 () Bool)

(declare-fun res!839248 () Bool)

(assert (=> b!1259107 (=> (not res!839248) (not e!716273))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1259107 (= res!839248 (and (= (size!40091 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40092 _keys!1118) (size!40091 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!839249 () Bool)

(assert (=> start!105746 (=> (not res!839249) (not e!716273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105746 (= res!839249 (validMask!0 mask!1466))))

(assert (=> start!105746 e!716273))

(assert (=> start!105746 true))

(assert (=> start!105746 tp!95412))

(assert (=> start!105746 tp_is_empty!32197))

(declare-fun array_inv!30071 (array!82009) Bool)

(assert (=> start!105746 (array_inv!30071 _keys!1118)))

(declare-fun e!716278 () Bool)

(declare-fun array_inv!30072 (array!82007) Bool)

(assert (=> start!105746 (and (array_inv!30072 _values!914) e!716278)))

(declare-fun b!1259108 () Bool)

(declare-fun e!716277 () Bool)

(assert (=> b!1259108 (= e!716273 (not e!716277))))

(declare-fun res!839245 () Bool)

(assert (=> b!1259108 (=> res!839245 e!716277)))

(assert (=> b!1259108 (= res!839245 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!21046 0))(
  ( (tuple2!21047 (_1!10533 (_ BitVec 64)) (_2!10533 V!48295)) )
))
(declare-datatypes ((List!28275 0))(
  ( (Nil!28272) (Cons!28271 (h!29480 tuple2!21046) (t!41777 List!28275)) )
))
(declare-datatypes ((ListLongMap!18931 0))(
  ( (ListLongMap!18932 (toList!9481 List!28275)) )
))
(declare-fun lt!569748 () ListLongMap!18931)

(declare-fun lt!569744 () ListLongMap!18931)

(assert (=> b!1259108 (= lt!569748 lt!569744)))

(declare-datatypes ((Unit!41931 0))(
  ( (Unit!41932) )
))
(declare-fun lt!569747 () Unit!41931)

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48295)

(declare-fun zeroValue!871 () V!48295)

(declare-fun minValueBefore!43 () V!48295)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1147 (array!82009 array!82007 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48295 V!48295 V!48295 V!48295 (_ BitVec 32) Int) Unit!41931)

(assert (=> b!1259108 (= lt!569747 (lemmaNoChangeToArrayThenSameMapNoExtras!1147 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5829 (array!82009 array!82007 (_ BitVec 32) (_ BitVec 32) V!48295 V!48295 (_ BitVec 32) Int) ListLongMap!18931)

(assert (=> b!1259108 (= lt!569744 (getCurrentListMapNoExtraKeys!5829 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259108 (= lt!569748 (getCurrentListMapNoExtraKeys!5829 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259109 () Bool)

(assert (=> b!1259109 (= e!716278 (and e!716275 mapRes!50092))))

(declare-fun condMapEmpty!50092 () Bool)

(declare-fun mapDefault!50092 () ValueCell!15335)

