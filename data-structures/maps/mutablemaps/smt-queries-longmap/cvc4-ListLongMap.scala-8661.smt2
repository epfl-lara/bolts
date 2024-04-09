; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105368 () Bool)

(assert start!105368)

(declare-fun b_free!27005 () Bool)

(declare-fun b_next!27005 () Bool)

(assert (=> start!105368 (= b_free!27005 (not b_next!27005))))

(declare-fun tp!94526 () Bool)

(declare-fun b_and!44853 () Bool)

(assert (=> start!105368 (= tp!94526 b_and!44853)))

(declare-fun b!1254938 () Bool)

(declare-fun res!836774 () Bool)

(declare-fun e!713205 () Bool)

(assert (=> b!1254938 (=> (not res!836774) (not e!713205))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81449 0))(
  ( (array!81450 (arr!39280 (Array (_ BitVec 32) (_ BitVec 64))) (size!39817 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81449)

(declare-datatypes ((V!47907 0))(
  ( (V!47908 (val!16016 Int)) )
))
(declare-datatypes ((ValueCell!15190 0))(
  ( (ValueCellFull!15190 (v!18716 V!47907)) (EmptyCell!15190) )
))
(declare-datatypes ((array!81451 0))(
  ( (array!81452 (arr!39281 (Array (_ BitVec 32) ValueCell!15190)) (size!39818 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81451)

(assert (=> b!1254938 (= res!836774 (and (= (size!39818 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39817 _keys!1118) (size!39818 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254939 () Bool)

(declare-fun res!836775 () Bool)

(assert (=> b!1254939 (=> (not res!836775) (not e!713205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81449 (_ BitVec 32)) Bool)

(assert (=> b!1254939 (= res!836775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1254940 () Bool)

(assert (=> b!1254940 (= e!713205 (not true))))

(declare-datatypes ((tuple2!20824 0))(
  ( (tuple2!20825 (_1!10422 (_ BitVec 64)) (_2!10422 V!47907)) )
))
(declare-datatypes ((List!28064 0))(
  ( (Nil!28061) (Cons!28060 (h!29269 tuple2!20824) (t!41556 List!28064)) )
))
(declare-datatypes ((ListLongMap!18709 0))(
  ( (ListLongMap!18710 (toList!9370 List!28064)) )
))
(declare-fun lt!567343 () ListLongMap!18709)

(declare-fun lt!567342 () ListLongMap!18709)

(assert (=> b!1254940 (= lt!567343 lt!567342)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47907)

(declare-fun minValueBefore!43 () V!47907)

(declare-fun zeroValue!871 () V!47907)

(declare-datatypes ((Unit!41714 0))(
  ( (Unit!41715) )
))
(declare-fun lt!567344 () Unit!41714)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1049 (array!81449 array!81451 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47907 V!47907 V!47907 V!47907 (_ BitVec 32) Int) Unit!41714)

(assert (=> b!1254940 (= lt!567344 (lemmaNoChangeToArrayThenSameMapNoExtras!1049 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5731 (array!81449 array!81451 (_ BitVec 32) (_ BitVec 32) V!47907 V!47907 (_ BitVec 32) Int) ListLongMap!18709)

(assert (=> b!1254940 (= lt!567342 (getCurrentListMapNoExtraKeys!5731 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254940 (= lt!567343 (getCurrentListMapNoExtraKeys!5731 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254941 () Bool)

(declare-fun e!713204 () Bool)

(declare-fun e!713206 () Bool)

(declare-fun mapRes!49642 () Bool)

(assert (=> b!1254941 (= e!713204 (and e!713206 mapRes!49642))))

(declare-fun condMapEmpty!49642 () Bool)

(declare-fun mapDefault!49642 () ValueCell!15190)

