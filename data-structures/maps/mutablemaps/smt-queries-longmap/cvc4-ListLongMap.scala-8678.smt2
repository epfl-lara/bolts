; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105484 () Bool)

(assert start!105484)

(declare-fun b_free!27107 () Bool)

(declare-fun b_next!27107 () Bool)

(assert (=> start!105484 (= b_free!27107 (not b_next!27107))))

(declare-fun tp!94835 () Bool)

(declare-fun b_and!44963 () Bool)

(assert (=> start!105484 (= tp!94835 b_and!44963)))

(declare-fun b!1256264 () Bool)

(declare-fun e!714197 () Bool)

(declare-fun e!714194 () Bool)

(assert (=> b!1256264 (= e!714197 e!714194)))

(declare-fun res!837588 () Bool)

(assert (=> b!1256264 (=> res!837588 e!714194)))

(declare-datatypes ((V!48043 0))(
  ( (V!48044 (val!16067 Int)) )
))
(declare-datatypes ((tuple2!20906 0))(
  ( (tuple2!20907 (_1!10463 (_ BitVec 64)) (_2!10463 V!48043)) )
))
(declare-datatypes ((List!28141 0))(
  ( (Nil!28138) (Cons!28137 (h!29346 tuple2!20906) (t!41635 List!28141)) )
))
(declare-datatypes ((ListLongMap!18791 0))(
  ( (ListLongMap!18792 (toList!9411 List!28141)) )
))
(declare-fun lt!568012 () ListLongMap!18791)

(declare-fun contains!7567 (ListLongMap!18791 (_ BitVec 64)) Bool)

(assert (=> b!1256264 (= res!837588 (contains!7567 lt!568012 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48043)

(declare-datatypes ((array!81651 0))(
  ( (array!81652 (arr!39380 (Array (_ BitVec 32) (_ BitVec 64))) (size!39917 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81651)

(declare-datatypes ((ValueCell!15241 0))(
  ( (ValueCellFull!15241 (v!18767 V!48043)) (EmptyCell!15241) )
))
(declare-datatypes ((array!81653 0))(
  ( (array!81654 (arr!39381 (Array (_ BitVec 32) ValueCell!15241)) (size!39918 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81653)

(declare-fun minValueBefore!43 () V!48043)

(declare-fun getCurrentListMap!4572 (array!81651 array!81653 (_ BitVec 32) (_ BitVec 32) V!48043 V!48043 (_ BitVec 32) Int) ListLongMap!18791)

(assert (=> b!1256264 (= lt!568012 (getCurrentListMap!4572 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256265 () Bool)

(declare-fun e!714196 () Bool)

(declare-fun tp_is_empty!32009 () Bool)

(assert (=> b!1256265 (= e!714196 tp_is_empty!32009)))

(declare-fun b!1256266 () Bool)

(declare-fun res!837590 () Bool)

(declare-fun e!714195 () Bool)

(assert (=> b!1256266 (=> (not res!837590) (not e!714195))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1256266 (= res!837590 (and (= (size!39918 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39917 _keys!1118) (size!39918 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!49798 () Bool)

(declare-fun mapRes!49798 () Bool)

(assert (=> mapIsEmpty!49798 mapRes!49798))

(declare-fun b!1256267 () Bool)

(assert (=> b!1256267 (= e!714195 (not e!714197))))

(declare-fun res!837589 () Bool)

(assert (=> b!1256267 (=> res!837589 e!714197)))

(assert (=> b!1256267 (= res!837589 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!568014 () ListLongMap!18791)

(declare-fun lt!568010 () ListLongMap!18791)

(assert (=> b!1256267 (= lt!568014 lt!568010)))

(declare-fun minValueAfter!43 () V!48043)

(declare-datatypes ((Unit!41792 0))(
  ( (Unit!41793) )
))
(declare-fun lt!568011 () Unit!41792)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1084 (array!81651 array!81653 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48043 V!48043 V!48043 V!48043 (_ BitVec 32) Int) Unit!41792)

(assert (=> b!1256267 (= lt!568011 (lemmaNoChangeToArrayThenSameMapNoExtras!1084 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5766 (array!81651 array!81653 (_ BitVec 32) (_ BitVec 32) V!48043 V!48043 (_ BitVec 32) Int) ListLongMap!18791)

(assert (=> b!1256267 (= lt!568010 (getCurrentListMapNoExtraKeys!5766 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256267 (= lt!568014 (getCurrentListMapNoExtraKeys!5766 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256268 () Bool)

(declare-fun e!714193 () Bool)

(assert (=> b!1256268 (= e!714193 tp_is_empty!32009)))

(declare-fun b!1256269 () Bool)

(assert (=> b!1256269 (= e!714194 (bvsle #b00000000000000000000000000000000 (size!39917 _keys!1118)))))

(declare-fun -!2090 (ListLongMap!18791 (_ BitVec 64)) ListLongMap!18791)

(assert (=> b!1256269 (= (-!2090 lt!568012 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568012)))

(declare-fun lt!568013 () Unit!41792)

(declare-fun removeNotPresentStillSame!123 (ListLongMap!18791 (_ BitVec 64)) Unit!41792)

(assert (=> b!1256269 (= lt!568013 (removeNotPresentStillSame!123 lt!568012 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256270 () Bool)

(declare-fun e!714199 () Bool)

(assert (=> b!1256270 (= e!714199 (and e!714196 mapRes!49798))))

(declare-fun condMapEmpty!49798 () Bool)

(declare-fun mapDefault!49798 () ValueCell!15241)

