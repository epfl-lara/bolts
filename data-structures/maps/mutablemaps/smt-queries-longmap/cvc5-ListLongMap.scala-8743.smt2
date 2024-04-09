; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106096 () Bool)

(assert start!106096)

(declare-fun b_free!27493 () Bool)

(declare-fun b_next!27493 () Bool)

(assert (=> start!106096 (= b_free!27493 (not b_next!27493))))

(declare-fun tp!96030 () Bool)

(declare-fun b_and!45477 () Bool)

(assert (=> start!106096 (= tp!96030 b_and!45477)))

(declare-fun mapIsEmpty!50413 () Bool)

(declare-fun mapRes!50413 () Bool)

(assert (=> mapIsEmpty!50413 mapRes!50413))

(declare-fun b!1262872 () Bool)

(declare-fun res!841350 () Bool)

(declare-fun e!718964 () Bool)

(assert (=> b!1262872 (=> (not res!841350) (not e!718964))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82395 0))(
  ( (array!82396 (arr!39740 (Array (_ BitVec 32) (_ BitVec 64))) (size!40277 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82395)

(declare-datatypes ((V!48559 0))(
  ( (V!48560 (val!16260 Int)) )
))
(declare-datatypes ((ValueCell!15434 0))(
  ( (ValueCellFull!15434 (v!18969 V!48559)) (EmptyCell!15434) )
))
(declare-datatypes ((array!82397 0))(
  ( (array!82398 (arr!39741 (Array (_ BitVec 32) ValueCell!15434)) (size!40278 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82397)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1262872 (= res!841350 (and (= (size!40278 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40277 _keys!1118) (size!40278 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1262873 () Bool)

(declare-fun e!718966 () Bool)

(assert (=> b!1262873 (= e!718964 (not e!718966))))

(declare-fun res!841348 () Bool)

(assert (=> b!1262873 (=> res!841348 e!718966)))

(assert (=> b!1262873 (= res!841348 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!21192 0))(
  ( (tuple2!21193 (_1!10606 (_ BitVec 64)) (_2!10606 V!48559)) )
))
(declare-datatypes ((List!28413 0))(
  ( (Nil!28410) (Cons!28409 (h!29618 tuple2!21192) (t!41931 List!28413)) )
))
(declare-datatypes ((ListLongMap!19077 0))(
  ( (ListLongMap!19078 (toList!9554 List!28413)) )
))
(declare-fun lt!572592 () ListLongMap!19077)

(declare-fun lt!572598 () ListLongMap!19077)

(assert (=> b!1262873 (= lt!572592 lt!572598)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48559)

(declare-fun zeroValue!871 () V!48559)

(declare-fun minValueBefore!43 () V!48559)

(declare-datatypes ((Unit!42045 0))(
  ( (Unit!42046) )
))
(declare-fun lt!572597 () Unit!42045)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1190 (array!82395 array!82397 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48559 V!48559 V!48559 V!48559 (_ BitVec 32) Int) Unit!42045)

(assert (=> b!1262873 (= lt!572597 (lemmaNoChangeToArrayThenSameMapNoExtras!1190 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5894 (array!82395 array!82397 (_ BitVec 32) (_ BitVec 32) V!48559 V!48559 (_ BitVec 32) Int) ListLongMap!19077)

(assert (=> b!1262873 (= lt!572598 (getCurrentListMapNoExtraKeys!5894 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1262873 (= lt!572592 (getCurrentListMapNoExtraKeys!5894 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262874 () Bool)

(declare-fun e!718962 () Bool)

(declare-fun tp_is_empty!32395 () Bool)

(assert (=> b!1262874 (= e!718962 tp_is_empty!32395)))

(declare-fun res!841347 () Bool)

(assert (=> start!106096 (=> (not res!841347) (not e!718964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106096 (= res!841347 (validMask!0 mask!1466))))

(assert (=> start!106096 e!718964))

(assert (=> start!106096 true))

(assert (=> start!106096 tp!96030))

(assert (=> start!106096 tp_is_empty!32395))

(declare-fun array_inv!30203 (array!82395) Bool)

(assert (=> start!106096 (array_inv!30203 _keys!1118)))

(declare-fun e!718963 () Bool)

(declare-fun array_inv!30204 (array!82397) Bool)

(assert (=> start!106096 (and (array_inv!30204 _values!914) e!718963)))

(declare-fun b!1262875 () Bool)

(declare-fun res!841349 () Bool)

(assert (=> b!1262875 (=> (not res!841349) (not e!718964))))

(declare-datatypes ((List!28414 0))(
  ( (Nil!28411) (Cons!28410 (h!29619 (_ BitVec 64)) (t!41932 List!28414)) )
))
(declare-fun arrayNoDuplicates!0 (array!82395 (_ BitVec 32) List!28414) Bool)

(assert (=> b!1262875 (= res!841349 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28411))))

(declare-fun b!1262876 () Bool)

(assert (=> b!1262876 (= e!718966 true)))

(declare-fun lt!572595 () ListLongMap!19077)

(declare-fun lt!572591 () ListLongMap!19077)

(declare-fun -!2146 (ListLongMap!19077 (_ BitVec 64)) ListLongMap!19077)

(assert (=> b!1262876 (= lt!572595 (-!2146 lt!572591 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!572594 () ListLongMap!19077)

(assert (=> b!1262876 (= (-!2146 lt!572594 #b1000000000000000000000000000000000000000000000000000000000000000) lt!572592)))

(declare-fun lt!572593 () Unit!42045)

(declare-fun addThenRemoveForNewKeyIsSame!369 (ListLongMap!19077 (_ BitVec 64) V!48559) Unit!42045)

(assert (=> b!1262876 (= lt!572593 (addThenRemoveForNewKeyIsSame!369 lt!572592 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!572596 () ListLongMap!19077)

(assert (=> b!1262876 (and (= lt!572591 lt!572594) (= lt!572596 lt!572598))))

(declare-fun +!4222 (ListLongMap!19077 tuple2!21192) ListLongMap!19077)

(assert (=> b!1262876 (= lt!572594 (+!4222 lt!572592 (tuple2!21193 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun getCurrentListMap!4659 (array!82395 array!82397 (_ BitVec 32) (_ BitVec 32) V!48559 V!48559 (_ BitVec 32) Int) ListLongMap!19077)

(assert (=> b!1262876 (= lt!572596 (getCurrentListMap!4659 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1262876 (= lt!572591 (getCurrentListMap!4659 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262877 () Bool)

(declare-fun e!718965 () Bool)

(assert (=> b!1262877 (= e!718963 (and e!718965 mapRes!50413))))

(declare-fun condMapEmpty!50413 () Bool)

(declare-fun mapDefault!50413 () ValueCell!15434)

