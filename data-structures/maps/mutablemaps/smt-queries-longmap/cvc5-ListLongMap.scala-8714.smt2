; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105770 () Bool)

(assert start!105770)

(declare-fun b_free!27319 () Bool)

(declare-fun b_next!27319 () Bool)

(assert (=> start!105770 (= b_free!27319 (not b_next!27319))))

(declare-fun tp!95483 () Bool)

(declare-fun b_and!45213 () Bool)

(assert (=> start!105770 (= tp!95483 b_and!45213)))

(declare-fun b!1259429 () Bool)

(declare-fun res!839461 () Bool)

(declare-fun e!716529 () Bool)

(assert (=> b!1259429 (=> (not res!839461) (not e!716529))))

(declare-datatypes ((array!82055 0))(
  ( (array!82056 (arr!39578 (Array (_ BitVec 32) (_ BitVec 64))) (size!40115 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82055)

(declare-datatypes ((List!28295 0))(
  ( (Nil!28292) (Cons!28291 (h!29500 (_ BitVec 64)) (t!41797 List!28295)) )
))
(declare-fun arrayNoDuplicates!0 (array!82055 (_ BitVec 32) List!28295) Bool)

(assert (=> b!1259429 (= res!839461 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28292))))

(declare-fun b!1259430 () Bool)

(declare-fun e!716528 () Bool)

(assert (=> b!1259430 (= e!716529 (not e!716528))))

(declare-fun res!839465 () Bool)

(assert (=> b!1259430 (=> res!839465 e!716528)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1259430 (= res!839465 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!48327 0))(
  ( (V!48328 (val!16173 Int)) )
))
(declare-datatypes ((tuple2!21068 0))(
  ( (tuple2!21069 (_1!10544 (_ BitVec 64)) (_2!10544 V!48327)) )
))
(declare-datatypes ((List!28296 0))(
  ( (Nil!28293) (Cons!28292 (h!29501 tuple2!21068) (t!41798 List!28296)) )
))
(declare-datatypes ((ListLongMap!18953 0))(
  ( (ListLongMap!18954 (toList!9492 List!28296)) )
))
(declare-fun lt!570109 () ListLongMap!18953)

(declare-fun lt!570103 () ListLongMap!18953)

(assert (=> b!1259430 (= lt!570109 lt!570103)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48327)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48327)

(declare-datatypes ((ValueCell!15347 0))(
  ( (ValueCellFull!15347 (v!18875 V!48327)) (EmptyCell!15347) )
))
(declare-datatypes ((array!82057 0))(
  ( (array!82058 (arr!39579 (Array (_ BitVec 32) ValueCell!15347)) (size!40116 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82057)

(declare-datatypes ((Unit!41951 0))(
  ( (Unit!41952) )
))
(declare-fun lt!570108 () Unit!41951)

(declare-fun minValueBefore!43 () V!48327)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1157 (array!82055 array!82057 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48327 V!48327 V!48327 V!48327 (_ BitVec 32) Int) Unit!41951)

(assert (=> b!1259430 (= lt!570108 (lemmaNoChangeToArrayThenSameMapNoExtras!1157 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5839 (array!82055 array!82057 (_ BitVec 32) (_ BitVec 32) V!48327 V!48327 (_ BitVec 32) Int) ListLongMap!18953)

(assert (=> b!1259430 (= lt!570103 (getCurrentListMapNoExtraKeys!5839 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259430 (= lt!570109 (getCurrentListMapNoExtraKeys!5839 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259431 () Bool)

(declare-fun res!839466 () Bool)

(assert (=> b!1259431 (=> (not res!839466) (not e!716529))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82055 (_ BitVec 32)) Bool)

(assert (=> b!1259431 (= res!839466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1259433 () Bool)

(declare-fun e!716525 () Bool)

(declare-fun e!716531 () Bool)

(declare-fun mapRes!50128 () Bool)

(assert (=> b!1259433 (= e!716525 (and e!716531 mapRes!50128))))

(declare-fun condMapEmpty!50128 () Bool)

(declare-fun mapDefault!50128 () ValueCell!15347)

