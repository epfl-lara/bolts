; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105222 () Bool)

(assert start!105222)

(declare-fun b_free!26903 () Bool)

(declare-fun b_next!26903 () Bool)

(assert (=> start!105222 (= b_free!26903 (not b_next!26903))))

(declare-fun tp!94215 () Bool)

(declare-fun b_and!44727 () Bool)

(assert (=> start!105222 (= tp!94215 b_and!44727)))

(declare-fun b!1253363 () Bool)

(declare-fun e!712069 () Bool)

(assert (=> b!1253363 (= e!712069 true)))

(declare-datatypes ((V!47771 0))(
  ( (V!47772 (val!15965 Int)) )
))
(declare-datatypes ((tuple2!20750 0))(
  ( (tuple2!20751 (_1!10385 (_ BitVec 64)) (_2!10385 V!47771)) )
))
(declare-datatypes ((List!27998 0))(
  ( (Nil!27995) (Cons!27994 (h!29203 tuple2!20750) (t!41486 List!27998)) )
))
(declare-datatypes ((ListLongMap!18635 0))(
  ( (ListLongMap!18636 (toList!9333 List!27998)) )
))
(declare-fun lt!565930 () ListLongMap!18635)

(declare-fun lt!565929 () ListLongMap!18635)

(declare-fun -!2046 (ListLongMap!18635 (_ BitVec 64)) ListLongMap!18635)

(assert (=> b!1253363 (= lt!565930 (-!2046 lt!565929 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!565934 () ListLongMap!18635)

(declare-fun lt!565931 () ListLongMap!18635)

(assert (=> b!1253363 (= (-!2046 lt!565934 #b1000000000000000000000000000000000000000000000000000000000000000) lt!565931)))

(declare-datatypes ((Unit!41636 0))(
  ( (Unit!41637) )
))
(declare-fun lt!565932 () Unit!41636)

(declare-fun minValueBefore!43 () V!47771)

(declare-fun addThenRemoveForNewKeyIsSame!306 (ListLongMap!18635 (_ BitVec 64) V!47771) Unit!41636)

(assert (=> b!1253363 (= lt!565932 (addThenRemoveForNewKeyIsSame!306 lt!565931 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!565933 () ListLongMap!18635)

(declare-fun lt!565928 () ListLongMap!18635)

(assert (=> b!1253363 (and (= lt!565929 lt!565934) (= lt!565933 lt!565928))))

(declare-fun +!4137 (ListLongMap!18635 tuple2!20750) ListLongMap!18635)

(assert (=> b!1253363 (= lt!565934 (+!4137 lt!565931 (tuple2!20751 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47771)

(declare-fun zeroValue!871 () V!47771)

(declare-datatypes ((array!81251 0))(
  ( (array!81252 (arr!39183 (Array (_ BitVec 32) (_ BitVec 64))) (size!39720 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81251)

(declare-datatypes ((ValueCell!15139 0))(
  ( (ValueCellFull!15139 (v!18663 V!47771)) (EmptyCell!15139) )
))
(declare-datatypes ((array!81253 0))(
  ( (array!81254 (arr!39184 (Array (_ BitVec 32) ValueCell!15139)) (size!39721 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81253)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun getCurrentListMap!4524 (array!81251 array!81253 (_ BitVec 32) (_ BitVec 32) V!47771 V!47771 (_ BitVec 32) Int) ListLongMap!18635)

(assert (=> b!1253363 (= lt!565933 (getCurrentListMap!4524 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1253363 (= lt!565929 (getCurrentListMap!4524 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253364 () Bool)

(declare-fun res!835865 () Bool)

(declare-fun e!712068 () Bool)

(assert (=> b!1253364 (=> (not res!835865) (not e!712068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81251 (_ BitVec 32)) Bool)

(assert (=> b!1253364 (= res!835865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1253365 () Bool)

(declare-fun e!712066 () Bool)

(declare-fun e!712070 () Bool)

(declare-fun mapRes!49483 () Bool)

(assert (=> b!1253365 (= e!712066 (and e!712070 mapRes!49483))))

(declare-fun condMapEmpty!49483 () Bool)

(declare-fun mapDefault!49483 () ValueCell!15139)

