; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105838 () Bool)

(assert start!105838)

(declare-fun b_free!27365 () Bool)

(declare-fun b_next!27365 () Bool)

(assert (=> start!105838 (= b_free!27365 (not b_next!27365))))

(declare-fun tp!95624 () Bool)

(declare-fun b_and!45271 () Bool)

(assert (=> start!105838 (= tp!95624 b_and!45271)))

(declare-fun b!1260238 () Bool)

(declare-fun e!717135 () Bool)

(declare-fun e!717131 () Bool)

(assert (=> b!1260238 (= e!717135 (not e!717131))))

(declare-fun res!839961 () Bool)

(assert (=> b!1260238 (=> res!839961 e!717131)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1260238 (= res!839961 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!48387 0))(
  ( (V!48388 (val!16196 Int)) )
))
(declare-datatypes ((tuple2!21102 0))(
  ( (tuple2!21103 (_1!10561 (_ BitVec 64)) (_2!10561 V!48387)) )
))
(declare-datatypes ((List!28325 0))(
  ( (Nil!28322) (Cons!28321 (h!29530 tuple2!21102) (t!41829 List!28325)) )
))
(declare-datatypes ((ListLongMap!18987 0))(
  ( (ListLongMap!18988 (toList!9509 List!28325)) )
))
(declare-fun lt!570941 () ListLongMap!18987)

(declare-fun lt!570939 () ListLongMap!18987)

(assert (=> b!1260238 (= lt!570941 lt!570939)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41985 0))(
  ( (Unit!41986) )
))
(declare-fun lt!570948 () Unit!41985)

(declare-fun minValueAfter!43 () V!48387)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82141 0))(
  ( (array!82142 (arr!39620 (Array (_ BitVec 32) (_ BitVec 64))) (size!40157 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82141)

(declare-datatypes ((ValueCell!15370 0))(
  ( (ValueCellFull!15370 (v!18899 V!48387)) (EmptyCell!15370) )
))
(declare-datatypes ((array!82143 0))(
  ( (array!82144 (arr!39621 (Array (_ BitVec 32) ValueCell!15370)) (size!40158 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82143)

(declare-fun minValueBefore!43 () V!48387)

(declare-fun zeroValue!871 () V!48387)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1169 (array!82141 array!82143 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48387 V!48387 V!48387 V!48387 (_ BitVec 32) Int) Unit!41985)

(assert (=> b!1260238 (= lt!570948 (lemmaNoChangeToArrayThenSameMapNoExtras!1169 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5851 (array!82141 array!82143 (_ BitVec 32) (_ BitVec 32) V!48387 V!48387 (_ BitVec 32) Int) ListLongMap!18987)

(assert (=> b!1260238 (= lt!570939 (getCurrentListMapNoExtraKeys!5851 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1260238 (= lt!570941 (getCurrentListMapNoExtraKeys!5851 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!50200 () Bool)

(declare-fun mapRes!50200 () Bool)

(assert (=> mapIsEmpty!50200 mapRes!50200))

(declare-fun b!1260239 () Bool)

(declare-fun e!717133 () Bool)

(declare-fun e!717130 () Bool)

(assert (=> b!1260239 (= e!717133 (and e!717130 mapRes!50200))))

(declare-fun condMapEmpty!50200 () Bool)

(declare-fun mapDefault!50200 () ValueCell!15370)

