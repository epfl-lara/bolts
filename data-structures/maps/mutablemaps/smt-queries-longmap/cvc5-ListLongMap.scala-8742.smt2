; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106090 () Bool)

(assert start!106090)

(declare-fun b_free!27487 () Bool)

(declare-fun b_next!27487 () Bool)

(assert (=> start!106090 (= b_free!27487 (not b_next!27487))))

(declare-fun tp!96012 () Bool)

(declare-fun b_and!45471 () Bool)

(assert (=> start!106090 (= tp!96012 b_and!45471)))

(declare-fun mapIsEmpty!50404 () Bool)

(declare-fun mapRes!50404 () Bool)

(assert (=> mapIsEmpty!50404 mapRes!50404))

(declare-fun b!1262800 () Bool)

(declare-fun e!718908 () Bool)

(declare-fun e!718910 () Bool)

(assert (=> b!1262800 (= e!718908 (not e!718910))))

(declare-fun res!841304 () Bool)

(assert (=> b!1262800 (=> res!841304 e!718910)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1262800 (= res!841304 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!48551 0))(
  ( (V!48552 (val!16257 Int)) )
))
(declare-datatypes ((tuple2!21188 0))(
  ( (tuple2!21189 (_1!10604 (_ BitVec 64)) (_2!10604 V!48551)) )
))
(declare-datatypes ((List!28409 0))(
  ( (Nil!28406) (Cons!28405 (h!29614 tuple2!21188) (t!41927 List!28409)) )
))
(declare-datatypes ((ListLongMap!19073 0))(
  ( (ListLongMap!19074 (toList!9552 List!28409)) )
))
(declare-fun lt!572529 () ListLongMap!19073)

(declare-fun lt!572531 () ListLongMap!19073)

(assert (=> b!1262800 (= lt!572529 lt!572531)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48551)

(declare-datatypes ((Unit!42041 0))(
  ( (Unit!42042) )
))
(declare-fun lt!572532 () Unit!42041)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48551)

(declare-datatypes ((array!82383 0))(
  ( (array!82384 (arr!39734 (Array (_ BitVec 32) (_ BitVec 64))) (size!40271 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82383)

(declare-datatypes ((ValueCell!15431 0))(
  ( (ValueCellFull!15431 (v!18966 V!48551)) (EmptyCell!15431) )
))
(declare-datatypes ((array!82385 0))(
  ( (array!82386 (arr!39735 (Array (_ BitVec 32) ValueCell!15431)) (size!40272 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82385)

(declare-fun minValueBefore!43 () V!48551)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1188 (array!82383 array!82385 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48551 V!48551 V!48551 V!48551 (_ BitVec 32) Int) Unit!42041)

(assert (=> b!1262800 (= lt!572532 (lemmaNoChangeToArrayThenSameMapNoExtras!1188 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5892 (array!82383 array!82385 (_ BitVec 32) (_ BitVec 32) V!48551 V!48551 (_ BitVec 32) Int) ListLongMap!19073)

(assert (=> b!1262800 (= lt!572531 (getCurrentListMapNoExtraKeys!5892 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1262800 (= lt!572529 (getCurrentListMapNoExtraKeys!5892 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262801 () Bool)

(declare-fun lt!572530 () ListLongMap!19073)

(declare-fun lt!572527 () ListLongMap!19073)

(declare-fun -!2144 (ListLongMap!19073 (_ BitVec 64)) ListLongMap!19073)

(assert (=> b!1262801 (= e!718910 (= (-!2144 lt!572530 #b1000000000000000000000000000000000000000000000000000000000000000) lt!572527))))

(declare-fun lt!572526 () ListLongMap!19073)

(assert (=> b!1262801 (= (-!2144 lt!572526 #b1000000000000000000000000000000000000000000000000000000000000000) lt!572529)))

(declare-fun lt!572528 () Unit!42041)

(declare-fun addThenRemoveForNewKeyIsSame!367 (ListLongMap!19073 (_ BitVec 64) V!48551) Unit!42041)

(assert (=> b!1262801 (= lt!572528 (addThenRemoveForNewKeyIsSame!367 lt!572529 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1262801 (and (= lt!572530 lt!572526) (= lt!572527 lt!572531))))

(declare-fun +!4220 (ListLongMap!19073 tuple2!21188) ListLongMap!19073)

(assert (=> b!1262801 (= lt!572526 (+!4220 lt!572529 (tuple2!21189 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun getCurrentListMap!4657 (array!82383 array!82385 (_ BitVec 32) (_ BitVec 32) V!48551 V!48551 (_ BitVec 32) Int) ListLongMap!19073)

(assert (=> b!1262801 (= lt!572527 (getCurrentListMap!4657 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1262801 (= lt!572530 (getCurrentListMap!4657 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262802 () Bool)

(declare-fun res!841303 () Bool)

(assert (=> b!1262802 (=> (not res!841303) (not e!718908))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82383 (_ BitVec 32)) Bool)

(assert (=> b!1262802 (= res!841303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1262803 () Bool)

(declare-fun e!718909 () Bool)

(declare-fun tp_is_empty!32389 () Bool)

(assert (=> b!1262803 (= e!718909 tp_is_empty!32389)))

(declare-fun b!1262804 () Bool)

(declare-fun e!718912 () Bool)

(declare-fun e!718913 () Bool)

(assert (=> b!1262804 (= e!718912 (and e!718913 mapRes!50404))))

(declare-fun condMapEmpty!50404 () Bool)

(declare-fun mapDefault!50404 () ValueCell!15431)

