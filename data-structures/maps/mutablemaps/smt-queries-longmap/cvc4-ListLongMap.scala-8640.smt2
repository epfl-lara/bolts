; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105182 () Bool)

(assert start!105182)

(declare-fun b_free!26879 () Bool)

(declare-fun b_next!26879 () Bool)

(assert (=> start!105182 (= b_free!26879 (not b_next!26879))))

(declare-fun tp!94140 () Bool)

(declare-fun b_and!44693 () Bool)

(assert (=> start!105182 (= tp!94140 b_and!44693)))

(declare-fun b!1252918 () Bool)

(declare-fun res!835615 () Bool)

(declare-fun e!711746 () Bool)

(assert (=> b!1252918 (=> (not res!835615) (not e!711746))))

(declare-datatypes ((array!81201 0))(
  ( (array!81202 (arr!39159 (Array (_ BitVec 32) (_ BitVec 64))) (size!39696 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81201)

(declare-datatypes ((List!27977 0))(
  ( (Nil!27974) (Cons!27973 (h!29182 (_ BitVec 64)) (t!41463 List!27977)) )
))
(declare-fun arrayNoDuplicates!0 (array!81201 (_ BitVec 32) List!27977) Bool)

(assert (=> b!1252918 (= res!835615 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27974))))

(declare-fun b!1252919 () Bool)

(declare-fun res!835618 () Bool)

(assert (=> b!1252919 (=> (not res!835618) (not e!711746))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81201 (_ BitVec 32)) Bool)

(assert (=> b!1252919 (= res!835618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252920 () Bool)

(declare-fun e!711750 () Bool)

(assert (=> b!1252920 (= e!711750 (bvsle #b00000000000000000000000000000000 (size!39696 _keys!1118)))))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((V!47739 0))(
  ( (V!47740 (val!15953 Int)) )
))
(declare-datatypes ((tuple2!20730 0))(
  ( (tuple2!20731 (_1!10375 (_ BitVec 64)) (_2!10375 V!47739)) )
))
(declare-datatypes ((List!27978 0))(
  ( (Nil!27975) (Cons!27974 (h!29183 tuple2!20730) (t!41464 List!27978)) )
))
(declare-datatypes ((ListLongMap!18615 0))(
  ( (ListLongMap!18616 (toList!9323 List!27978)) )
))
(declare-fun lt!565558 () ListLongMap!18615)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47739)

(declare-datatypes ((ValueCell!15127 0))(
  ( (ValueCellFull!15127 (v!18651 V!47739)) (EmptyCell!15127) )
))
(declare-datatypes ((array!81203 0))(
  ( (array!81204 (arr!39160 (Array (_ BitVec 32) ValueCell!15127)) (size!39697 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81203)

(declare-fun minValueBefore!43 () V!47739)

(declare-fun getCurrentListMap!4515 (array!81201 array!81203 (_ BitVec 32) (_ BitVec 32) V!47739 V!47739 (_ BitVec 32) Int) ListLongMap!18615)

(assert (=> b!1252920 (= lt!565558 (getCurrentListMap!4515 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252921 () Bool)

(declare-fun res!835617 () Bool)

(assert (=> b!1252921 (=> (not res!835617) (not e!711746))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1252921 (= res!835617 (and (= (size!39697 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39696 _keys!1118) (size!39697 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252922 () Bool)

(declare-fun e!711749 () Bool)

(declare-fun e!711751 () Bool)

(declare-fun mapRes!49444 () Bool)

(assert (=> b!1252922 (= e!711749 (and e!711751 mapRes!49444))))

(declare-fun condMapEmpty!49444 () Bool)

(declare-fun mapDefault!49444 () ValueCell!15127)

