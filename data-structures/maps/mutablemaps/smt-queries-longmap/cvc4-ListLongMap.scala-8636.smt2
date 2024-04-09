; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105158 () Bool)

(assert start!105158)

(declare-fun b_free!26855 () Bool)

(declare-fun b_next!26855 () Bool)

(assert (=> start!105158 (= b_free!26855 (not b_next!26855))))

(declare-fun tp!94068 () Bool)

(declare-fun b_and!44669 () Bool)

(assert (=> start!105158 (= tp!94068 b_and!44669)))

(declare-fun b!1252630 () Bool)

(declare-fun res!835438 () Bool)

(declare-fun e!711531 () Bool)

(assert (=> b!1252630 (=> (not res!835438) (not e!711531))))

(declare-datatypes ((array!81155 0))(
  ( (array!81156 (arr!39136 (Array (_ BitVec 32) (_ BitVec 64))) (size!39673 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81155)

(declare-datatypes ((List!27956 0))(
  ( (Nil!27953) (Cons!27952 (h!29161 (_ BitVec 64)) (t!41442 List!27956)) )
))
(declare-fun arrayNoDuplicates!0 (array!81155 (_ BitVec 32) List!27956) Bool)

(assert (=> b!1252630 (= res!835438 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27953))))

(declare-fun b!1252631 () Bool)

(declare-fun e!711535 () Bool)

(assert (=> b!1252631 (= e!711531 (not e!711535))))

(declare-fun res!835434 () Bool)

(assert (=> b!1252631 (=> res!835434 e!711535)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1252631 (= res!835434 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!47707 0))(
  ( (V!47708 (val!15941 Int)) )
))
(declare-datatypes ((tuple2!20708 0))(
  ( (tuple2!20709 (_1!10364 (_ BitVec 64)) (_2!10364 V!47707)) )
))
(declare-datatypes ((List!27957 0))(
  ( (Nil!27954) (Cons!27953 (h!29162 tuple2!20708) (t!41443 List!27957)) )
))
(declare-datatypes ((ListLongMap!18593 0))(
  ( (ListLongMap!18594 (toList!9312 List!27957)) )
))
(declare-fun lt!565412 () ListLongMap!18593)

(declare-fun lt!565413 () ListLongMap!18593)

(assert (=> b!1252631 (= lt!565412 lt!565413)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47707)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47707)

(declare-datatypes ((ValueCell!15115 0))(
  ( (ValueCellFull!15115 (v!18639 V!47707)) (EmptyCell!15115) )
))
(declare-datatypes ((array!81157 0))(
  ( (array!81158 (arr!39137 (Array (_ BitVec 32) ValueCell!15115)) (size!39674 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81157)

(declare-fun minValueBefore!43 () V!47707)

(declare-datatypes ((Unit!41597 0))(
  ( (Unit!41598) )
))
(declare-fun lt!565411 () Unit!41597)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1001 (array!81155 array!81157 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47707 V!47707 V!47707 V!47707 (_ BitVec 32) Int) Unit!41597)

(assert (=> b!1252631 (= lt!565411 (lemmaNoChangeToArrayThenSameMapNoExtras!1001 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5683 (array!81155 array!81157 (_ BitVec 32) (_ BitVec 32) V!47707 V!47707 (_ BitVec 32) Int) ListLongMap!18593)

(assert (=> b!1252631 (= lt!565413 (getCurrentListMapNoExtraKeys!5683 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252631 (= lt!565412 (getCurrentListMapNoExtraKeys!5683 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252632 () Bool)

(declare-fun res!835437 () Bool)

(assert (=> b!1252632 (=> (not res!835437) (not e!711531))))

(assert (=> b!1252632 (= res!835437 (and (= (size!39674 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39673 _keys!1118) (size!39674 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252633 () Bool)

(declare-fun e!711534 () Bool)

(declare-fun tp_is_empty!31757 () Bool)

(assert (=> b!1252633 (= e!711534 tp_is_empty!31757)))

(declare-fun mapIsEmpty!49408 () Bool)

(declare-fun mapRes!49408 () Bool)

(assert (=> mapIsEmpty!49408 mapRes!49408))

(declare-fun b!1252634 () Bool)

(declare-fun res!835435 () Bool)

(assert (=> b!1252634 (=> (not res!835435) (not e!711531))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81155 (_ BitVec 32)) Bool)

(assert (=> b!1252634 (= res!835435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252635 () Bool)

(declare-fun e!711530 () Bool)

(assert (=> b!1252635 (= e!711530 tp_is_empty!31757)))

(declare-fun mapNonEmpty!49408 () Bool)

(declare-fun tp!94067 () Bool)

(assert (=> mapNonEmpty!49408 (= mapRes!49408 (and tp!94067 e!711534))))

(declare-fun mapRest!49408 () (Array (_ BitVec 32) ValueCell!15115))

(declare-fun mapValue!49408 () ValueCell!15115)

(declare-fun mapKey!49408 () (_ BitVec 32))

(assert (=> mapNonEmpty!49408 (= (arr!39137 _values!914) (store mapRest!49408 mapKey!49408 mapValue!49408))))

(declare-fun b!1252636 () Bool)

(assert (=> b!1252636 (= e!711535 true)))

(declare-fun lt!565414 () ListLongMap!18593)

(declare-fun getCurrentListMap!4507 (array!81155 array!81157 (_ BitVec 32) (_ BitVec 32) V!47707 V!47707 (_ BitVec 32) Int) ListLongMap!18593)

(assert (=> b!1252636 (= lt!565414 (getCurrentListMap!4507 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!835436 () Bool)

(assert (=> start!105158 (=> (not res!835436) (not e!711531))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105158 (= res!835436 (validMask!0 mask!1466))))

(assert (=> start!105158 e!711531))

(assert (=> start!105158 true))

(assert (=> start!105158 tp!94068))

(assert (=> start!105158 tp_is_empty!31757))

(declare-fun array_inv!29779 (array!81155) Bool)

(assert (=> start!105158 (array_inv!29779 _keys!1118)))

(declare-fun e!711532 () Bool)

(declare-fun array_inv!29780 (array!81157) Bool)

(assert (=> start!105158 (and (array_inv!29780 _values!914) e!711532)))

(declare-fun b!1252637 () Bool)

(assert (=> b!1252637 (= e!711532 (and e!711530 mapRes!49408))))

(declare-fun condMapEmpty!49408 () Bool)

(declare-fun mapDefault!49408 () ValueCell!15115)

