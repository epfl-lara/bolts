; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105072 () Bool)

(assert start!105072)

(declare-fun b_free!26783 () Bool)

(declare-fun b_next!26783 () Bool)

(assert (=> start!105072 (= b_free!26783 (not b_next!26783))))

(declare-fun tp!93848 () Bool)

(declare-fun b_and!44589 () Bool)

(assert (=> start!105072 (= tp!93848 b_and!44589)))

(declare-fun b!1251745 () Bool)

(declare-fun res!834928 () Bool)

(declare-fun e!710891 () Bool)

(assert (=> b!1251745 (=> (not res!834928) (not e!710891))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81013 0))(
  ( (array!81014 (arr!39066 (Array (_ BitVec 32) (_ BitVec 64))) (size!39603 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81013)

(declare-datatypes ((V!47611 0))(
  ( (V!47612 (val!15905 Int)) )
))
(declare-datatypes ((ValueCell!15079 0))(
  ( (ValueCellFull!15079 (v!18603 V!47611)) (EmptyCell!15079) )
))
(declare-datatypes ((array!81015 0))(
  ( (array!81016 (arr!39067 (Array (_ BitVec 32) ValueCell!15079)) (size!39604 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81015)

(assert (=> b!1251745 (= res!834928 (and (= (size!39604 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39603 _keys!1118) (size!39604 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1251746 () Bool)

(declare-fun e!710893 () Bool)

(declare-fun tp_is_empty!31685 () Bool)

(assert (=> b!1251746 (= e!710893 tp_is_empty!31685)))

(declare-fun mapNonEmpty!49297 () Bool)

(declare-fun mapRes!49297 () Bool)

(declare-fun tp!93849 () Bool)

(assert (=> mapNonEmpty!49297 (= mapRes!49297 (and tp!93849 e!710893))))

(declare-fun mapRest!49297 () (Array (_ BitVec 32) ValueCell!15079))

(declare-fun mapValue!49297 () ValueCell!15079)

(declare-fun mapKey!49297 () (_ BitVec 32))

(assert (=> mapNonEmpty!49297 (= (arr!39067 _values!914) (store mapRest!49297 mapKey!49297 mapValue!49297))))

(declare-fun b!1251747 () Bool)

(assert (=> b!1251747 (= e!710891 (not true))))

(declare-datatypes ((tuple2!20654 0))(
  ( (tuple2!20655 (_1!10337 (_ BitVec 64)) (_2!10337 V!47611)) )
))
(declare-datatypes ((List!27905 0))(
  ( (Nil!27902) (Cons!27901 (h!29110 tuple2!20654) (t!41389 List!27905)) )
))
(declare-datatypes ((ListLongMap!18539 0))(
  ( (ListLongMap!18540 (toList!9285 List!27905)) )
))
(declare-fun lt!565004 () ListLongMap!18539)

(declare-fun lt!565005 () ListLongMap!18539)

(assert (=> b!1251747 (= lt!565004 lt!565005)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47611)

(declare-fun zeroValue!871 () V!47611)

(declare-datatypes ((Unit!41547 0))(
  ( (Unit!41548) )
))
(declare-fun lt!565003 () Unit!41547)

(declare-fun minValueBefore!43 () V!47611)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!976 (array!81013 array!81015 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47611 V!47611 V!47611 V!47611 (_ BitVec 32) Int) Unit!41547)

(assert (=> b!1251747 (= lt!565003 (lemmaNoChangeToArrayThenSameMapNoExtras!976 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5658 (array!81013 array!81015 (_ BitVec 32) (_ BitVec 32) V!47611 V!47611 (_ BitVec 32) Int) ListLongMap!18539)

(assert (=> b!1251747 (= lt!565005 (getCurrentListMapNoExtraKeys!5658 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251747 (= lt!565004 (getCurrentListMapNoExtraKeys!5658 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251748 () Bool)

(declare-fun e!710895 () Bool)

(assert (=> b!1251748 (= e!710895 tp_is_empty!31685)))

(declare-fun res!834929 () Bool)

(assert (=> start!105072 (=> (not res!834929) (not e!710891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105072 (= res!834929 (validMask!0 mask!1466))))

(assert (=> start!105072 e!710891))

(assert (=> start!105072 true))

(assert (=> start!105072 tp!93848))

(assert (=> start!105072 tp_is_empty!31685))

(declare-fun array_inv!29731 (array!81013) Bool)

(assert (=> start!105072 (array_inv!29731 _keys!1118)))

(declare-fun e!710894 () Bool)

(declare-fun array_inv!29732 (array!81015) Bool)

(assert (=> start!105072 (and (array_inv!29732 _values!914) e!710894)))

(declare-fun b!1251749 () Bool)

(declare-fun res!834927 () Bool)

(assert (=> b!1251749 (=> (not res!834927) (not e!710891))))

(declare-datatypes ((List!27906 0))(
  ( (Nil!27903) (Cons!27902 (h!29111 (_ BitVec 64)) (t!41390 List!27906)) )
))
(declare-fun arrayNoDuplicates!0 (array!81013 (_ BitVec 32) List!27906) Bool)

(assert (=> b!1251749 (= res!834927 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27903))))

(declare-fun mapIsEmpty!49297 () Bool)

(assert (=> mapIsEmpty!49297 mapRes!49297))

(declare-fun b!1251750 () Bool)

(declare-fun res!834930 () Bool)

(assert (=> b!1251750 (=> (not res!834930) (not e!710891))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81013 (_ BitVec 32)) Bool)

(assert (=> b!1251750 (= res!834930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251751 () Bool)

(assert (=> b!1251751 (= e!710894 (and e!710895 mapRes!49297))))

(declare-fun condMapEmpty!49297 () Bool)

(declare-fun mapDefault!49297 () ValueCell!15079)

