; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105330 () Bool)

(assert start!105330)

(declare-fun b_free!26989 () Bool)

(declare-fun b_next!26989 () Bool)

(assert (=> start!105330 (= b_free!26989 (not b_next!26989))))

(declare-fun tp!94475 () Bool)

(declare-fun b_and!44825 () Bool)

(assert (=> start!105330 (= tp!94475 b_and!44825)))

(declare-fun mapNonEmpty!49615 () Bool)

(declare-fun mapRes!49615 () Bool)

(declare-fun tp!94476 () Bool)

(declare-fun e!712962 () Bool)

(assert (=> mapNonEmpty!49615 (= mapRes!49615 (and tp!94476 e!712962))))

(declare-datatypes ((V!47887 0))(
  ( (V!47888 (val!16008 Int)) )
))
(declare-datatypes ((ValueCell!15182 0))(
  ( (ValueCellFull!15182 (v!18707 V!47887)) (EmptyCell!15182) )
))
(declare-fun mapValue!49615 () ValueCell!15182)

(declare-fun mapKey!49615 () (_ BitVec 32))

(declare-fun mapRest!49615 () (Array (_ BitVec 32) ValueCell!15182))

(declare-datatypes ((array!81415 0))(
  ( (array!81416 (arr!39264 (Array (_ BitVec 32) ValueCell!15182)) (size!39801 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81415)

(assert (=> mapNonEmpty!49615 (= (arr!39264 _values!914) (store mapRest!49615 mapKey!49615 mapValue!49615))))

(declare-fun b!1254581 () Bool)

(declare-fun e!712966 () Bool)

(declare-datatypes ((array!81417 0))(
  ( (array!81418 (arr!39265 (Array (_ BitVec 32) (_ BitVec 64))) (size!39802 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81417)

(assert (=> b!1254581 (= e!712966 (bvsle #b00000000000000000000000000000000 (size!39802 _keys!1118)))))

(declare-fun b!1254582 () Bool)

(declare-fun e!712964 () Bool)

(declare-fun e!712965 () Bool)

(assert (=> b!1254582 (= e!712964 (not e!712965))))

(declare-fun res!836595 () Bool)

(assert (=> b!1254582 (=> res!836595 e!712965)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1254582 (= res!836595 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20810 0))(
  ( (tuple2!20811 (_1!10415 (_ BitVec 64)) (_2!10415 V!47887)) )
))
(declare-datatypes ((List!28052 0))(
  ( (Nil!28049) (Cons!28048 (h!29257 tuple2!20810) (t!41542 List!28052)) )
))
(declare-datatypes ((ListLongMap!18695 0))(
  ( (ListLongMap!18696 (toList!9363 List!28052)) )
))
(declare-fun lt!567096 () ListLongMap!18695)

(declare-fun lt!567095 () ListLongMap!18695)

(assert (=> b!1254582 (= lt!567096 lt!567095)))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47887)

(declare-fun minValueBefore!43 () V!47887)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun minValueAfter!43 () V!47887)

(declare-datatypes ((Unit!41698 0))(
  ( (Unit!41699) )
))
(declare-fun lt!567100 () Unit!41698)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1042 (array!81417 array!81415 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47887 V!47887 V!47887 V!47887 (_ BitVec 32) Int) Unit!41698)

(assert (=> b!1254582 (= lt!567100 (lemmaNoChangeToArrayThenSameMapNoExtras!1042 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5724 (array!81417 array!81415 (_ BitVec 32) (_ BitVec 32) V!47887 V!47887 (_ BitVec 32) Int) ListLongMap!18695)

(assert (=> b!1254582 (= lt!567095 (getCurrentListMapNoExtraKeys!5724 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254582 (= lt!567096 (getCurrentListMapNoExtraKeys!5724 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49615 () Bool)

(assert (=> mapIsEmpty!49615 mapRes!49615))

(declare-fun b!1254583 () Bool)

(declare-fun tp_is_empty!31891 () Bool)

(assert (=> b!1254583 (= e!712962 tp_is_empty!31891)))

(declare-fun res!836593 () Bool)

(assert (=> start!105330 (=> (not res!836593) (not e!712964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105330 (= res!836593 (validMask!0 mask!1466))))

(assert (=> start!105330 e!712964))

(assert (=> start!105330 true))

(assert (=> start!105330 tp!94475))

(assert (=> start!105330 tp_is_empty!31891))

(declare-fun array_inv!29865 (array!81417) Bool)

(assert (=> start!105330 (array_inv!29865 _keys!1118)))

(declare-fun e!712963 () Bool)

(declare-fun array_inv!29866 (array!81415) Bool)

(assert (=> start!105330 (and (array_inv!29866 _values!914) e!712963)))

(declare-fun b!1254584 () Bool)

(declare-fun res!836591 () Bool)

(assert (=> b!1254584 (=> (not res!836591) (not e!712964))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81417 (_ BitVec 32)) Bool)

(assert (=> b!1254584 (= res!836591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1254585 () Bool)

(declare-fun e!712960 () Bool)

(assert (=> b!1254585 (= e!712960 tp_is_empty!31891)))

(declare-fun b!1254586 () Bool)

(declare-fun res!836592 () Bool)

(assert (=> b!1254586 (=> (not res!836592) (not e!712964))))

(assert (=> b!1254586 (= res!836592 (and (= (size!39801 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39802 _keys!1118) (size!39801 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254587 () Bool)

(assert (=> b!1254587 (= e!712963 (and e!712960 mapRes!49615))))

(declare-fun condMapEmpty!49615 () Bool)

(declare-fun mapDefault!49615 () ValueCell!15182)

