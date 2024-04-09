; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105530 () Bool)

(assert start!105530)

(declare-fun b_free!27131 () Bool)

(declare-fun b_next!27131 () Bool)

(assert (=> start!105530 (= b_free!27131 (not b_next!27131))))

(declare-fun tp!94910 () Bool)

(declare-fun b_and!44997 () Bool)

(assert (=> start!105530 (= tp!94910 b_and!44997)))

(declare-fun mapIsEmpty!49837 () Bool)

(declare-fun mapRes!49837 () Bool)

(assert (=> mapIsEmpty!49837 mapRes!49837))

(declare-fun b!1256744 () Bool)

(declare-fun e!714549 () Bool)

(declare-fun e!714548 () Bool)

(assert (=> b!1256744 (= e!714549 (not e!714548))))

(declare-fun res!837864 () Bool)

(assert (=> b!1256744 (=> res!837864 e!714548)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1256744 (= res!837864 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!48075 0))(
  ( (V!48076 (val!16079 Int)) )
))
(declare-datatypes ((tuple2!20926 0))(
  ( (tuple2!20927 (_1!10473 (_ BitVec 64)) (_2!10473 V!48075)) )
))
(declare-datatypes ((List!28160 0))(
  ( (Nil!28157) (Cons!28156 (h!29365 tuple2!20926) (t!41656 List!28160)) )
))
(declare-datatypes ((ListLongMap!18811 0))(
  ( (ListLongMap!18812 (toList!9421 List!28160)) )
))
(declare-fun lt!568318 () ListLongMap!18811)

(declare-fun lt!568314 () ListLongMap!18811)

(assert (=> b!1256744 (= lt!568318 lt!568314)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48075)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48075)

(declare-datatypes ((array!81701 0))(
  ( (array!81702 (arr!39404 (Array (_ BitVec 32) (_ BitVec 64))) (size!39941 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81701)

(declare-datatypes ((ValueCell!15253 0))(
  ( (ValueCellFull!15253 (v!18780 V!48075)) (EmptyCell!15253) )
))
(declare-datatypes ((array!81703 0))(
  ( (array!81704 (arr!39405 (Array (_ BitVec 32) ValueCell!15253)) (size!39942 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81703)

(declare-fun minValueBefore!43 () V!48075)

(declare-datatypes ((Unit!41814 0))(
  ( (Unit!41815) )
))
(declare-fun lt!568315 () Unit!41814)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1093 (array!81701 array!81703 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48075 V!48075 V!48075 V!48075 (_ BitVec 32) Int) Unit!41814)

(assert (=> b!1256744 (= lt!568315 (lemmaNoChangeToArrayThenSameMapNoExtras!1093 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5775 (array!81701 array!81703 (_ BitVec 32) (_ BitVec 32) V!48075 V!48075 (_ BitVec 32) Int) ListLongMap!18811)

(assert (=> b!1256744 (= lt!568314 (getCurrentListMapNoExtraKeys!5775 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256744 (= lt!568318 (getCurrentListMapNoExtraKeys!5775 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256745 () Bool)

(declare-fun e!714547 () Bool)

(declare-fun e!714545 () Bool)

(assert (=> b!1256745 (= e!714547 (and e!714545 mapRes!49837))))

(declare-fun condMapEmpty!49837 () Bool)

(declare-fun mapDefault!49837 () ValueCell!15253)

