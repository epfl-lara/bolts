; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105148 () Bool)

(assert start!105148)

(declare-fun b_free!26845 () Bool)

(declare-fun b_next!26845 () Bool)

(assert (=> start!105148 (= b_free!26845 (not b_next!26845))))

(declare-fun tp!94038 () Bool)

(declare-fun b_and!44659 () Bool)

(assert (=> start!105148 (= tp!94038 b_and!44659)))

(declare-fun b!1252510 () Bool)

(declare-fun e!711444 () Bool)

(declare-fun e!711440 () Bool)

(assert (=> b!1252510 (= e!711444 (not e!711440))))

(declare-fun res!835362 () Bool)

(assert (=> b!1252510 (=> res!835362 e!711440)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1252510 (= res!835362 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!47695 0))(
  ( (V!47696 (val!15936 Int)) )
))
(declare-datatypes ((tuple2!20698 0))(
  ( (tuple2!20699 (_1!10359 (_ BitVec 64)) (_2!10359 V!47695)) )
))
(declare-datatypes ((List!27948 0))(
  ( (Nil!27945) (Cons!27944 (h!29153 tuple2!20698) (t!41434 List!27948)) )
))
(declare-datatypes ((ListLongMap!18583 0))(
  ( (ListLongMap!18584 (toList!9307 List!27948)) )
))
(declare-fun lt!565353 () ListLongMap!18583)

(declare-fun lt!565354 () ListLongMap!18583)

(assert (=> b!1252510 (= lt!565353 lt!565354)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47695)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47695)

(declare-datatypes ((ValueCell!15110 0))(
  ( (ValueCellFull!15110 (v!18634 V!47695)) (EmptyCell!15110) )
))
(declare-datatypes ((array!81135 0))(
  ( (array!81136 (arr!39126 (Array (_ BitVec 32) ValueCell!15110)) (size!39663 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81135)

(declare-fun minValueBefore!43 () V!47695)

(declare-datatypes ((array!81137 0))(
  ( (array!81138 (arr!39127 (Array (_ BitVec 32) (_ BitVec 64))) (size!39664 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81137)

(declare-datatypes ((Unit!41589 0))(
  ( (Unit!41590) )
))
(declare-fun lt!565351 () Unit!41589)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!997 (array!81137 array!81135 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47695 V!47695 V!47695 V!47695 (_ BitVec 32) Int) Unit!41589)

(assert (=> b!1252510 (= lt!565351 (lemmaNoChangeToArrayThenSameMapNoExtras!997 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5679 (array!81137 array!81135 (_ BitVec 32) (_ BitVec 32) V!47695 V!47695 (_ BitVec 32) Int) ListLongMap!18583)

(assert (=> b!1252510 (= lt!565354 (getCurrentListMapNoExtraKeys!5679 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252510 (= lt!565353 (getCurrentListMapNoExtraKeys!5679 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252511 () Bool)

(declare-fun e!711442 () Bool)

(declare-fun tp_is_empty!31747 () Bool)

(assert (=> b!1252511 (= e!711442 tp_is_empty!31747)))

(declare-fun b!1252512 () Bool)

(declare-fun e!711443 () Bool)

(declare-fun mapRes!49393 () Bool)

(assert (=> b!1252512 (= e!711443 (and e!711442 mapRes!49393))))

(declare-fun condMapEmpty!49393 () Bool)

(declare-fun mapDefault!49393 () ValueCell!15110)

