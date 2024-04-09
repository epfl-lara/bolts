; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105940 () Bool)

(assert start!105940)

(declare-fun b_free!27445 () Bool)

(declare-fun b_next!27445 () Bool)

(assert (=> start!105940 (= b_free!27445 (not b_next!27445))))

(declare-fun tp!95868 () Bool)

(declare-fun b_and!45363 () Bool)

(assert (=> start!105940 (= tp!95868 b_and!45363)))

(declare-fun res!840584 () Bool)

(declare-fun e!717906 () Bool)

(assert (=> start!105940 (=> (not res!840584) (not e!717906))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105940 (= res!840584 (validMask!0 mask!1466))))

(assert (=> start!105940 e!717906))

(assert (=> start!105940 true))

(assert (=> start!105940 tp!95868))

(declare-fun tp_is_empty!32347 () Bool)

(assert (=> start!105940 tp_is_empty!32347))

(declare-datatypes ((array!82293 0))(
  ( (array!82294 (arr!39695 (Array (_ BitVec 32) (_ BitVec 64))) (size!40232 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82293)

(declare-fun array_inv!30169 (array!82293) Bool)

(assert (=> start!105940 (array_inv!30169 _keys!1118)))

(declare-datatypes ((V!48495 0))(
  ( (V!48496 (val!16236 Int)) )
))
(declare-datatypes ((ValueCell!15410 0))(
  ( (ValueCellFull!15410 (v!18940 V!48495)) (EmptyCell!15410) )
))
(declare-datatypes ((array!82295 0))(
  ( (array!82296 (arr!39696 (Array (_ BitVec 32) ValueCell!15410)) (size!40233 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82295)

(declare-fun e!717909 () Bool)

(declare-fun array_inv!30170 (array!82295) Bool)

(assert (=> start!105940 (and (array_inv!30170 _values!914) e!717909)))

(declare-fun mapIsEmpty!50323 () Bool)

(declare-fun mapRes!50323 () Bool)

(assert (=> mapIsEmpty!50323 mapRes!50323))

(declare-fun mapNonEmpty!50323 () Bool)

(declare-fun tp!95867 () Bool)

(declare-fun e!717910 () Bool)

(assert (=> mapNonEmpty!50323 (= mapRes!50323 (and tp!95867 e!717910))))

(declare-fun mapRest!50323 () (Array (_ BitVec 32) ValueCell!15410))

(declare-fun mapValue!50323 () ValueCell!15410)

(declare-fun mapKey!50323 () (_ BitVec 32))

(assert (=> mapNonEmpty!50323 (= (arr!39696 _values!914) (store mapRest!50323 mapKey!50323 mapValue!50323))))

(declare-fun b!1261322 () Bool)

(declare-fun res!840583 () Bool)

(assert (=> b!1261322 (=> (not res!840583) (not e!717906))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1261322 (= res!840583 (and (= (size!40233 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40232 _keys!1118) (size!40233 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261323 () Bool)

(assert (=> b!1261323 (= e!717906 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48495)

(declare-fun zeroValue!871 () V!48495)

(declare-datatypes ((tuple2!21158 0))(
  ( (tuple2!21159 (_1!10589 (_ BitVec 64)) (_2!10589 V!48495)) )
))
(declare-datatypes ((List!28379 0))(
  ( (Nil!28376) (Cons!28375 (h!29584 tuple2!21158) (t!41885 List!28379)) )
))
(declare-datatypes ((ListLongMap!19043 0))(
  ( (ListLongMap!19044 (toList!9537 List!28379)) )
))
(declare-fun lt!571558 () ListLongMap!19043)

(declare-fun getCurrentListMapNoExtraKeys!5878 (array!82293 array!82295 (_ BitVec 32) (_ BitVec 32) V!48495 V!48495 (_ BitVec 32) Int) ListLongMap!19043)

(assert (=> b!1261323 (= lt!571558 (getCurrentListMapNoExtraKeys!5878 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571559 () ListLongMap!19043)

(declare-fun minValueBefore!43 () V!48495)

(assert (=> b!1261323 (= lt!571559 (getCurrentListMapNoExtraKeys!5878 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1261324 () Bool)

(declare-fun res!840586 () Bool)

(assert (=> b!1261324 (=> (not res!840586) (not e!717906))))

(declare-datatypes ((List!28380 0))(
  ( (Nil!28377) (Cons!28376 (h!29585 (_ BitVec 64)) (t!41886 List!28380)) )
))
(declare-fun arrayNoDuplicates!0 (array!82293 (_ BitVec 32) List!28380) Bool)

(assert (=> b!1261324 (= res!840586 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28377))))

(declare-fun b!1261325 () Bool)

(declare-fun e!717907 () Bool)

(assert (=> b!1261325 (= e!717909 (and e!717907 mapRes!50323))))

(declare-fun condMapEmpty!50323 () Bool)

(declare-fun mapDefault!50323 () ValueCell!15410)

