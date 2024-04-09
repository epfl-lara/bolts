; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105474 () Bool)

(assert start!105474)

(declare-fun b_free!27097 () Bool)

(declare-fun b_next!27097 () Bool)

(assert (=> start!105474 (= b_free!27097 (not b_next!27097))))

(declare-fun tp!94806 () Bool)

(declare-fun b_and!44953 () Bool)

(assert (=> start!105474 (= tp!94806 b_and!44953)))

(declare-fun b!1256128 () Bool)

(declare-fun res!837498 () Bool)

(declare-fun e!714091 () Bool)

(assert (=> b!1256128 (=> (not res!837498) (not e!714091))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81631 0))(
  ( (array!81632 (arr!39370 (Array (_ BitVec 32) (_ BitVec 64))) (size!39907 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81631)

(declare-datatypes ((V!48031 0))(
  ( (V!48032 (val!16062 Int)) )
))
(declare-datatypes ((ValueCell!15236 0))(
  ( (ValueCellFull!15236 (v!18762 V!48031)) (EmptyCell!15236) )
))
(declare-datatypes ((array!81633 0))(
  ( (array!81634 (arr!39371 (Array (_ BitVec 32) ValueCell!15236)) (size!39908 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81633)

(assert (=> b!1256128 (= res!837498 (and (= (size!39908 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39907 _keys!1118) (size!39908 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256129 () Bool)

(declare-fun e!714094 () Bool)

(declare-fun tp_is_empty!31999 () Bool)

(assert (=> b!1256129 (= e!714094 tp_is_empty!31999)))

(declare-fun mapIsEmpty!49783 () Bool)

(declare-fun mapRes!49783 () Bool)

(assert (=> mapIsEmpty!49783 mapRes!49783))

(declare-fun b!1256130 () Bool)

(declare-fun res!837495 () Bool)

(assert (=> b!1256130 (=> (not res!837495) (not e!714091))))

(declare-datatypes ((List!28133 0))(
  ( (Nil!28130) (Cons!28129 (h!29338 (_ BitVec 64)) (t!41627 List!28133)) )
))
(declare-fun arrayNoDuplicates!0 (array!81631 (_ BitVec 32) List!28133) Bool)

(assert (=> b!1256130 (= res!837495 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28130))))

(declare-fun mapNonEmpty!49783 () Bool)

(declare-fun tp!94805 () Bool)

(assert (=> mapNonEmpty!49783 (= mapRes!49783 (and tp!94805 e!714094))))

(declare-fun mapValue!49783 () ValueCell!15236)

(declare-fun mapRest!49783 () (Array (_ BitVec 32) ValueCell!15236))

(declare-fun mapKey!49783 () (_ BitVec 32))

(assert (=> mapNonEmpty!49783 (= (arr!39371 _values!914) (store mapRest!49783 mapKey!49783 mapValue!49783))))

(declare-fun b!1256131 () Bool)

(declare-fun res!837500 () Bool)

(assert (=> b!1256131 (=> (not res!837500) (not e!714091))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81631 (_ BitVec 32)) Bool)

(assert (=> b!1256131 (= res!837500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1256132 () Bool)

(declare-fun e!714089 () Bool)

(assert (=> b!1256132 (= e!714089 true)))

(declare-datatypes ((tuple2!20898 0))(
  ( (tuple2!20899 (_1!10459 (_ BitVec 64)) (_2!10459 V!48031)) )
))
(declare-datatypes ((List!28134 0))(
  ( (Nil!28131) (Cons!28130 (h!29339 tuple2!20898) (t!41628 List!28134)) )
))
(declare-datatypes ((ListLongMap!18783 0))(
  ( (ListLongMap!18784 (toList!9407 List!28134)) )
))
(declare-fun lt!567939 () ListLongMap!18783)

(declare-fun -!2087 (ListLongMap!18783 (_ BitVec 64)) ListLongMap!18783)

(assert (=> b!1256132 (= (-!2087 lt!567939 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567939)))

(declare-datatypes ((Unit!41786 0))(
  ( (Unit!41787) )
))
(declare-fun lt!567937 () Unit!41786)

(declare-fun removeNotPresentStillSame!120 (ListLongMap!18783 (_ BitVec 64)) Unit!41786)

(assert (=> b!1256132 (= lt!567937 (removeNotPresentStillSame!120 lt!567939 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!837499 () Bool)

(assert (=> start!105474 (=> (not res!837499) (not e!714091))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105474 (= res!837499 (validMask!0 mask!1466))))

(assert (=> start!105474 e!714091))

(assert (=> start!105474 true))

(assert (=> start!105474 tp!94806))

(assert (=> start!105474 tp_is_empty!31999))

(declare-fun array_inv!29937 (array!81631) Bool)

(assert (=> start!105474 (array_inv!29937 _keys!1118)))

(declare-fun e!714092 () Bool)

(declare-fun array_inv!29938 (array!81633) Bool)

(assert (=> start!105474 (and (array_inv!29938 _values!914) e!714092)))

(declare-fun b!1256133 () Bool)

(declare-fun e!714088 () Bool)

(assert (=> b!1256133 (= e!714088 e!714089)))

(declare-fun res!837497 () Bool)

(assert (=> b!1256133 (=> res!837497 e!714089)))

(declare-fun contains!7563 (ListLongMap!18783 (_ BitVec 64)) Bool)

(assert (=> b!1256133 (= res!837497 (contains!7563 lt!567939 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!48031)

(declare-fun minValueBefore!43 () V!48031)

(declare-fun getCurrentListMap!4568 (array!81631 array!81633 (_ BitVec 32) (_ BitVec 32) V!48031 V!48031 (_ BitVec 32) Int) ListLongMap!18783)

(assert (=> b!1256133 (= lt!567939 (getCurrentListMap!4568 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256134 () Bool)

(assert (=> b!1256134 (= e!714091 (not e!714088))))

(declare-fun res!837496 () Bool)

(assert (=> b!1256134 (=> res!837496 e!714088)))

(assert (=> b!1256134 (= res!837496 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!567936 () ListLongMap!18783)

(declare-fun lt!567935 () ListLongMap!18783)

(assert (=> b!1256134 (= lt!567936 lt!567935)))

(declare-fun minValueAfter!43 () V!48031)

(declare-fun lt!567938 () Unit!41786)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1081 (array!81631 array!81633 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48031 V!48031 V!48031 V!48031 (_ BitVec 32) Int) Unit!41786)

(assert (=> b!1256134 (= lt!567938 (lemmaNoChangeToArrayThenSameMapNoExtras!1081 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5763 (array!81631 array!81633 (_ BitVec 32) (_ BitVec 32) V!48031 V!48031 (_ BitVec 32) Int) ListLongMap!18783)

(assert (=> b!1256134 (= lt!567935 (getCurrentListMapNoExtraKeys!5763 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256134 (= lt!567936 (getCurrentListMapNoExtraKeys!5763 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256135 () Bool)

(declare-fun e!714090 () Bool)

(assert (=> b!1256135 (= e!714090 tp_is_empty!31999)))

(declare-fun b!1256136 () Bool)

(assert (=> b!1256136 (= e!714092 (and e!714090 mapRes!49783))))

(declare-fun condMapEmpty!49783 () Bool)

(declare-fun mapDefault!49783 () ValueCell!15236)

