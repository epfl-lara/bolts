; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105164 () Bool)

(assert start!105164)

(declare-fun b_free!26861 () Bool)

(declare-fun b_next!26861 () Bool)

(assert (=> start!105164 (= b_free!26861 (not b_next!26861))))

(declare-fun tp!94086 () Bool)

(declare-fun b_and!44675 () Bool)

(assert (=> start!105164 (= tp!94086 b_and!44675)))

(declare-fun b!1252702 () Bool)

(declare-fun res!835481 () Bool)

(declare-fun e!711587 () Bool)

(assert (=> b!1252702 (=> (not res!835481) (not e!711587))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81167 0))(
  ( (array!81168 (arr!39142 (Array (_ BitVec 32) (_ BitVec 64))) (size!39679 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81167)

(declare-datatypes ((V!47715 0))(
  ( (V!47716 (val!15944 Int)) )
))
(declare-datatypes ((ValueCell!15118 0))(
  ( (ValueCellFull!15118 (v!18642 V!47715)) (EmptyCell!15118) )
))
(declare-datatypes ((array!81169 0))(
  ( (array!81170 (arr!39143 (Array (_ BitVec 32) ValueCell!15118)) (size!39680 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81169)

(assert (=> b!1252702 (= res!835481 (and (= (size!39680 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39679 _keys!1118) (size!39680 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252703 () Bool)

(declare-fun e!711588 () Bool)

(assert (=> b!1252703 (= e!711587 (not e!711588))))

(declare-fun res!835480 () Bool)

(assert (=> b!1252703 (=> res!835480 e!711588)))

(assert (=> b!1252703 (= res!835480 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20714 0))(
  ( (tuple2!20715 (_1!10367 (_ BitVec 64)) (_2!10367 V!47715)) )
))
(declare-datatypes ((List!27961 0))(
  ( (Nil!27958) (Cons!27957 (h!29166 tuple2!20714) (t!41447 List!27961)) )
))
(declare-datatypes ((ListLongMap!18599 0))(
  ( (ListLongMap!18600 (toList!9315 List!27961)) )
))
(declare-fun lt!565448 () ListLongMap!18599)

(declare-fun lt!565447 () ListLongMap!18599)

(assert (=> b!1252703 (= lt!565448 lt!565447)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47715)

(declare-fun zeroValue!871 () V!47715)

(declare-datatypes ((Unit!41603 0))(
  ( (Unit!41604) )
))
(declare-fun lt!565450 () Unit!41603)

(declare-fun minValueBefore!43 () V!47715)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1004 (array!81167 array!81169 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47715 V!47715 V!47715 V!47715 (_ BitVec 32) Int) Unit!41603)

(assert (=> b!1252703 (= lt!565450 (lemmaNoChangeToArrayThenSameMapNoExtras!1004 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5686 (array!81167 array!81169 (_ BitVec 32) (_ BitVec 32) V!47715 V!47715 (_ BitVec 32) Int) ListLongMap!18599)

(assert (=> b!1252703 (= lt!565447 (getCurrentListMapNoExtraKeys!5686 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252703 (= lt!565448 (getCurrentListMapNoExtraKeys!5686 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!835479 () Bool)

(assert (=> start!105164 (=> (not res!835479) (not e!711587))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105164 (= res!835479 (validMask!0 mask!1466))))

(assert (=> start!105164 e!711587))

(assert (=> start!105164 true))

(assert (=> start!105164 tp!94086))

(declare-fun tp_is_empty!31763 () Bool)

(assert (=> start!105164 tp_is_empty!31763))

(declare-fun array_inv!29783 (array!81167) Bool)

(assert (=> start!105164 (array_inv!29783 _keys!1118)))

(declare-fun e!711589 () Bool)

(declare-fun array_inv!29784 (array!81169) Bool)

(assert (=> start!105164 (and (array_inv!29784 _values!914) e!711589)))

(declare-fun mapNonEmpty!49417 () Bool)

(declare-fun mapRes!49417 () Bool)

(declare-fun tp!94085 () Bool)

(declare-fun e!711584 () Bool)

(assert (=> mapNonEmpty!49417 (= mapRes!49417 (and tp!94085 e!711584))))

(declare-fun mapKey!49417 () (_ BitVec 32))

(declare-fun mapRest!49417 () (Array (_ BitVec 32) ValueCell!15118))

(declare-fun mapValue!49417 () ValueCell!15118)

(assert (=> mapNonEmpty!49417 (= (arr!39143 _values!914) (store mapRest!49417 mapKey!49417 mapValue!49417))))

(declare-fun b!1252704 () Bool)

(assert (=> b!1252704 (= e!711588 true)))

(declare-fun lt!565449 () ListLongMap!18599)

(declare-fun getCurrentListMap!4510 (array!81167 array!81169 (_ BitVec 32) (_ BitVec 32) V!47715 V!47715 (_ BitVec 32) Int) ListLongMap!18599)

(assert (=> b!1252704 (= lt!565449 (getCurrentListMap!4510 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252705 () Bool)

(assert (=> b!1252705 (= e!711584 tp_is_empty!31763)))

(declare-fun mapIsEmpty!49417 () Bool)

(assert (=> mapIsEmpty!49417 mapRes!49417))

(declare-fun b!1252706 () Bool)

(declare-fun e!711586 () Bool)

(assert (=> b!1252706 (= e!711586 tp_is_empty!31763)))

(declare-fun b!1252707 () Bool)

(declare-fun res!835483 () Bool)

(assert (=> b!1252707 (=> (not res!835483) (not e!711587))))

(declare-datatypes ((List!27962 0))(
  ( (Nil!27959) (Cons!27958 (h!29167 (_ BitVec 64)) (t!41448 List!27962)) )
))
(declare-fun arrayNoDuplicates!0 (array!81167 (_ BitVec 32) List!27962) Bool)

(assert (=> b!1252707 (= res!835483 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27959))))

(declare-fun b!1252708 () Bool)

(declare-fun res!835482 () Bool)

(assert (=> b!1252708 (=> (not res!835482) (not e!711587))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81167 (_ BitVec 32)) Bool)

(assert (=> b!1252708 (= res!835482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252709 () Bool)

(assert (=> b!1252709 (= e!711589 (and e!711586 mapRes!49417))))

(declare-fun condMapEmpty!49417 () Bool)

(declare-fun mapDefault!49417 () ValueCell!15118)

