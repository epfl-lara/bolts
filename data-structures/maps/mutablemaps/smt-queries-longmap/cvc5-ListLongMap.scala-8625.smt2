; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105074 () Bool)

(assert start!105074)

(declare-fun b_free!26785 () Bool)

(declare-fun b_next!26785 () Bool)

(assert (=> start!105074 (= b_free!26785 (not b_next!26785))))

(declare-fun tp!93855 () Bool)

(declare-fun b_and!44591 () Bool)

(assert (=> start!105074 (= tp!93855 b_and!44591)))

(declare-fun mapIsEmpty!49300 () Bool)

(declare-fun mapRes!49300 () Bool)

(assert (=> mapIsEmpty!49300 mapRes!49300))

(declare-fun mapNonEmpty!49300 () Bool)

(declare-fun tp!93854 () Bool)

(declare-fun e!710907 () Bool)

(assert (=> mapNonEmpty!49300 (= mapRes!49300 (and tp!93854 e!710907))))

(declare-datatypes ((V!47615 0))(
  ( (V!47616 (val!15906 Int)) )
))
(declare-datatypes ((ValueCell!15080 0))(
  ( (ValueCellFull!15080 (v!18604 V!47615)) (EmptyCell!15080) )
))
(declare-fun mapRest!49300 () (Array (_ BitVec 32) ValueCell!15080))

(declare-fun mapValue!49300 () ValueCell!15080)

(declare-datatypes ((array!81017 0))(
  ( (array!81018 (arr!39068 (Array (_ BitVec 32) ValueCell!15080)) (size!39605 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81017)

(declare-fun mapKey!49300 () (_ BitVec 32))

(assert (=> mapNonEmpty!49300 (= (arr!39068 _values!914) (store mapRest!49300 mapKey!49300 mapValue!49300))))

(declare-fun b!1251766 () Bool)

(declare-fun tp_is_empty!31687 () Bool)

(assert (=> b!1251766 (= e!710907 tp_is_empty!31687)))

(declare-fun b!1251768 () Bool)

(declare-fun e!710908 () Bool)

(assert (=> b!1251768 (= e!710908 (not true))))

(declare-datatypes ((tuple2!20656 0))(
  ( (tuple2!20657 (_1!10338 (_ BitVec 64)) (_2!10338 V!47615)) )
))
(declare-datatypes ((List!27907 0))(
  ( (Nil!27904) (Cons!27903 (h!29112 tuple2!20656) (t!41391 List!27907)) )
))
(declare-datatypes ((ListLongMap!18541 0))(
  ( (ListLongMap!18542 (toList!9286 List!27907)) )
))
(declare-fun lt!565013 () ListLongMap!18541)

(declare-fun lt!565012 () ListLongMap!18541)

(assert (=> b!1251768 (= lt!565013 lt!565012)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47615)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47615)

(declare-datatypes ((array!81019 0))(
  ( (array!81020 (arr!39069 (Array (_ BitVec 32) (_ BitVec 64))) (size!39606 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81019)

(declare-fun minValueBefore!43 () V!47615)

(declare-datatypes ((Unit!41549 0))(
  ( (Unit!41550) )
))
(declare-fun lt!565014 () Unit!41549)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!977 (array!81019 array!81017 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47615 V!47615 V!47615 V!47615 (_ BitVec 32) Int) Unit!41549)

(assert (=> b!1251768 (= lt!565014 (lemmaNoChangeToArrayThenSameMapNoExtras!977 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5659 (array!81019 array!81017 (_ BitVec 32) (_ BitVec 32) V!47615 V!47615 (_ BitVec 32) Int) ListLongMap!18541)

(assert (=> b!1251768 (= lt!565012 (getCurrentListMapNoExtraKeys!5659 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251768 (= lt!565013 (getCurrentListMapNoExtraKeys!5659 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251769 () Bool)

(declare-fun e!710906 () Bool)

(declare-fun e!710909 () Bool)

(assert (=> b!1251769 (= e!710906 (and e!710909 mapRes!49300))))

(declare-fun condMapEmpty!49300 () Bool)

(declare-fun mapDefault!49300 () ValueCell!15080)

