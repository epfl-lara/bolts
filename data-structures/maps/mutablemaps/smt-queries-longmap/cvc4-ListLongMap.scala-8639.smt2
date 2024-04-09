; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105176 () Bool)

(assert start!105176)

(declare-fun b_free!26873 () Bool)

(declare-fun b_next!26873 () Bool)

(assert (=> start!105176 (= b_free!26873 (not b_next!26873))))

(declare-fun tp!94121 () Bool)

(declare-fun b_and!44687 () Bool)

(assert (=> start!105176 (= tp!94121 b_and!44687)))

(declare-fun b!1252846 () Bool)

(declare-fun e!711694 () Bool)

(declare-fun tp_is_empty!31775 () Bool)

(assert (=> b!1252846 (= e!711694 tp_is_empty!31775)))

(declare-fun b!1252847 () Bool)

(declare-fun res!835570 () Bool)

(declare-fun e!711696 () Bool)

(assert (=> b!1252847 (=> (not res!835570) (not e!711696))))

(declare-datatypes ((array!81189 0))(
  ( (array!81190 (arr!39153 (Array (_ BitVec 32) (_ BitVec 64))) (size!39690 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81189)

(declare-datatypes ((List!27971 0))(
  ( (Nil!27968) (Cons!27967 (h!29176 (_ BitVec 64)) (t!41457 List!27971)) )
))
(declare-fun arrayNoDuplicates!0 (array!81189 (_ BitVec 32) List!27971) Bool)

(assert (=> b!1252847 (= res!835570 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27968))))

(declare-fun b!1252848 () Bool)

(declare-fun e!711697 () Bool)

(assert (=> b!1252848 (= e!711696 (not e!711697))))

(declare-fun res!835573 () Bool)

(assert (=> b!1252848 (=> res!835573 e!711697)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1252848 (= res!835573 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!47731 0))(
  ( (V!47732 (val!15950 Int)) )
))
(declare-datatypes ((tuple2!20724 0))(
  ( (tuple2!20725 (_1!10372 (_ BitVec 64)) (_2!10372 V!47731)) )
))
(declare-datatypes ((List!27972 0))(
  ( (Nil!27969) (Cons!27968 (h!29177 tuple2!20724) (t!41458 List!27972)) )
))
(declare-datatypes ((ListLongMap!18609 0))(
  ( (ListLongMap!18610 (toList!9320 List!27972)) )
))
(declare-fun lt!565522 () ListLongMap!18609)

(declare-fun lt!565521 () ListLongMap!18609)

(assert (=> b!1252848 (= lt!565522 lt!565521)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47731)

(declare-fun zeroValue!871 () V!47731)

(declare-datatypes ((ValueCell!15124 0))(
  ( (ValueCellFull!15124 (v!18648 V!47731)) (EmptyCell!15124) )
))
(declare-datatypes ((array!81191 0))(
  ( (array!81192 (arr!39154 (Array (_ BitVec 32) ValueCell!15124)) (size!39691 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81191)

(declare-datatypes ((Unit!41613 0))(
  ( (Unit!41614) )
))
(declare-fun lt!565520 () Unit!41613)

(declare-fun minValueBefore!43 () V!47731)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1009 (array!81189 array!81191 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47731 V!47731 V!47731 V!47731 (_ BitVec 32) Int) Unit!41613)

(assert (=> b!1252848 (= lt!565520 (lemmaNoChangeToArrayThenSameMapNoExtras!1009 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5691 (array!81189 array!81191 (_ BitVec 32) (_ BitVec 32) V!47731 V!47731 (_ BitVec 32) Int) ListLongMap!18609)

(assert (=> b!1252848 (= lt!565521 (getCurrentListMapNoExtraKeys!5691 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252848 (= lt!565522 (getCurrentListMapNoExtraKeys!5691 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252849 () Bool)

(declare-fun e!711695 () Bool)

(declare-fun e!711693 () Bool)

(declare-fun mapRes!49435 () Bool)

(assert (=> b!1252849 (= e!711695 (and e!711693 mapRes!49435))))

(declare-fun condMapEmpty!49435 () Bool)

(declare-fun mapDefault!49435 () ValueCell!15124)

