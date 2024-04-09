; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105448 () Bool)

(assert start!105448)

(declare-fun b_free!27071 () Bool)

(declare-fun b_next!27071 () Bool)

(assert (=> start!105448 (= b_free!27071 (not b_next!27071))))

(declare-fun tp!94728 () Bool)

(declare-fun b_and!44927 () Bool)

(assert (=> start!105448 (= tp!94728 b_and!44927)))

(declare-fun b!1255777 () Bool)

(declare-fun e!713819 () Bool)

(declare-fun e!713816 () Bool)

(assert (=> b!1255777 (= e!713819 (not e!713816))))

(declare-fun res!837261 () Bool)

(assert (=> b!1255777 (=> res!837261 e!713816)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1255777 (= res!837261 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!47995 0))(
  ( (V!47996 (val!16049 Int)) )
))
(declare-datatypes ((tuple2!20876 0))(
  ( (tuple2!20877 (_1!10448 (_ BitVec 64)) (_2!10448 V!47995)) )
))
(declare-datatypes ((List!28113 0))(
  ( (Nil!28110) (Cons!28109 (h!29318 tuple2!20876) (t!41607 List!28113)) )
))
(declare-datatypes ((ListLongMap!18761 0))(
  ( (ListLongMap!18762 (toList!9396 List!28113)) )
))
(declare-fun lt!567742 () ListLongMap!18761)

(declare-fun lt!567741 () ListLongMap!18761)

(assert (=> b!1255777 (= lt!567742 lt!567741)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47995)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47995)

(declare-datatypes ((array!81579 0))(
  ( (array!81580 (arr!39344 (Array (_ BitVec 32) (_ BitVec 64))) (size!39881 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81579)

(declare-datatypes ((ValueCell!15223 0))(
  ( (ValueCellFull!15223 (v!18749 V!47995)) (EmptyCell!15223) )
))
(declare-datatypes ((array!81581 0))(
  ( (array!81582 (arr!39345 (Array (_ BitVec 32) ValueCell!15223)) (size!39882 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81581)

(declare-datatypes ((Unit!41764 0))(
  ( (Unit!41765) )
))
(declare-fun lt!567740 () Unit!41764)

(declare-fun minValueBefore!43 () V!47995)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1073 (array!81579 array!81581 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47995 V!47995 V!47995 V!47995 (_ BitVec 32) Int) Unit!41764)

(assert (=> b!1255777 (= lt!567740 (lemmaNoChangeToArrayThenSameMapNoExtras!1073 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5755 (array!81579 array!81581 (_ BitVec 32) (_ BitVec 32) V!47995 V!47995 (_ BitVec 32) Int) ListLongMap!18761)

(assert (=> b!1255777 (= lt!567741 (getCurrentListMapNoExtraKeys!5755 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255777 (= lt!567742 (getCurrentListMapNoExtraKeys!5755 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!837264 () Bool)

(assert (=> start!105448 (=> (not res!837264) (not e!713819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105448 (= res!837264 (validMask!0 mask!1466))))

(assert (=> start!105448 e!713819))

(assert (=> start!105448 true))

(assert (=> start!105448 tp!94728))

(declare-fun tp_is_empty!31973 () Bool)

(assert (=> start!105448 tp_is_empty!31973))

(declare-fun array_inv!29923 (array!81579) Bool)

(assert (=> start!105448 (array_inv!29923 _keys!1118)))

(declare-fun e!713821 () Bool)

(declare-fun array_inv!29924 (array!81581) Bool)

(assert (=> start!105448 (and (array_inv!29924 _values!914) e!713821)))

(declare-fun b!1255778 () Bool)

(declare-fun e!713817 () Bool)

(assert (=> b!1255778 (= e!713816 e!713817)))

(declare-fun res!837262 () Bool)

(assert (=> b!1255778 (=> res!837262 e!713817)))

(declare-fun lt!567744 () ListLongMap!18761)

(declare-fun contains!7554 (ListLongMap!18761 (_ BitVec 64)) Bool)

(assert (=> b!1255778 (= res!837262 (contains!7554 lt!567744 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4559 (array!81579 array!81581 (_ BitVec 32) (_ BitVec 32) V!47995 V!47995 (_ BitVec 32) Int) ListLongMap!18761)

(assert (=> b!1255778 (= lt!567744 (getCurrentListMap!4559 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255779 () Bool)

(declare-fun e!713818 () Bool)

(declare-fun mapRes!49744 () Bool)

(assert (=> b!1255779 (= e!713821 (and e!713818 mapRes!49744))))

(declare-fun condMapEmpty!49744 () Bool)

(declare-fun mapDefault!49744 () ValueCell!15223)

