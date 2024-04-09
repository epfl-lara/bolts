; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105080 () Bool)

(assert start!105080)

(declare-fun b_free!26791 () Bool)

(declare-fun b_next!26791 () Bool)

(assert (=> start!105080 (= b_free!26791 (not b_next!26791))))

(declare-fun tp!93873 () Bool)

(declare-fun b_and!44597 () Bool)

(assert (=> start!105080 (= tp!93873 b_and!44597)))

(declare-fun b!1251829 () Bool)

(declare-fun e!710955 () Bool)

(assert (=> b!1251829 (= e!710955 (not true))))

(declare-datatypes ((V!47623 0))(
  ( (V!47624 (val!15909 Int)) )
))
(declare-datatypes ((tuple2!20662 0))(
  ( (tuple2!20663 (_1!10341 (_ BitVec 64)) (_2!10341 V!47623)) )
))
(declare-datatypes ((List!27912 0))(
  ( (Nil!27909) (Cons!27908 (h!29117 tuple2!20662) (t!41396 List!27912)) )
))
(declare-datatypes ((ListLongMap!18547 0))(
  ( (ListLongMap!18548 (toList!9289 List!27912)) )
))
(declare-fun lt!565039 () ListLongMap!18547)

(declare-fun lt!565041 () ListLongMap!18547)

(assert (=> b!1251829 (= lt!565039 lt!565041)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47623)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47623)

(declare-datatypes ((array!81029 0))(
  ( (array!81030 (arr!39074 (Array (_ BitVec 32) (_ BitVec 64))) (size!39611 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81029)

(declare-fun minValueBefore!43 () V!47623)

(declare-datatypes ((Unit!41555 0))(
  ( (Unit!41556) )
))
(declare-fun lt!565040 () Unit!41555)

(declare-datatypes ((ValueCell!15083 0))(
  ( (ValueCellFull!15083 (v!18607 V!47623)) (EmptyCell!15083) )
))
(declare-datatypes ((array!81031 0))(
  ( (array!81032 (arr!39075 (Array (_ BitVec 32) ValueCell!15083)) (size!39612 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81031)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!980 (array!81029 array!81031 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47623 V!47623 V!47623 V!47623 (_ BitVec 32) Int) Unit!41555)

(assert (=> b!1251829 (= lt!565040 (lemmaNoChangeToArrayThenSameMapNoExtras!980 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5662 (array!81029 array!81031 (_ BitVec 32) (_ BitVec 32) V!47623 V!47623 (_ BitVec 32) Int) ListLongMap!18547)

(assert (=> b!1251829 (= lt!565041 (getCurrentListMapNoExtraKeys!5662 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251829 (= lt!565039 (getCurrentListMapNoExtraKeys!5662 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251830 () Bool)

(declare-fun e!710951 () Bool)

(declare-fun tp_is_empty!31693 () Bool)

(assert (=> b!1251830 (= e!710951 tp_is_empty!31693)))

(declare-fun b!1251831 () Bool)

(declare-fun res!834978 () Bool)

(assert (=> b!1251831 (=> (not res!834978) (not e!710955))))

(declare-datatypes ((List!27913 0))(
  ( (Nil!27910) (Cons!27909 (h!29118 (_ BitVec 64)) (t!41397 List!27913)) )
))
(declare-fun arrayNoDuplicates!0 (array!81029 (_ BitVec 32) List!27913) Bool)

(assert (=> b!1251831 (= res!834978 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27910))))

(declare-fun mapIsEmpty!49309 () Bool)

(declare-fun mapRes!49309 () Bool)

(assert (=> mapIsEmpty!49309 mapRes!49309))

(declare-fun b!1251832 () Bool)

(declare-fun e!710953 () Bool)

(assert (=> b!1251832 (= e!710953 tp_is_empty!31693)))

(declare-fun b!1251833 () Bool)

(declare-fun e!710954 () Bool)

(assert (=> b!1251833 (= e!710954 (and e!710951 mapRes!49309))))

(declare-fun condMapEmpty!49309 () Bool)

(declare-fun mapDefault!49309 () ValueCell!15083)

