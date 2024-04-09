; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105016 () Bool)

(assert start!105016)

(declare-fun b_free!26749 () Bool)

(declare-fun b_next!26749 () Bool)

(assert (=> start!105016 (= b_free!26749 (not b_next!26749))))

(declare-fun tp!93744 () Bool)

(declare-fun b_and!44545 () Bool)

(assert (=> start!105016 (= tp!93744 b_and!44545)))

(declare-fun mapNonEmpty!49243 () Bool)

(declare-fun mapRes!49243 () Bool)

(declare-fun tp!93743 () Bool)

(declare-fun e!710472 () Bool)

(assert (=> mapNonEmpty!49243 (= mapRes!49243 (and tp!93743 e!710472))))

(declare-datatypes ((V!47567 0))(
  ( (V!47568 (val!15888 Int)) )
))
(declare-datatypes ((ValueCell!15062 0))(
  ( (ValueCellFull!15062 (v!18585 V!47567)) (EmptyCell!15062) )
))
(declare-fun mapValue!49243 () ValueCell!15062)

(declare-fun mapKey!49243 () (_ BitVec 32))

(declare-fun mapRest!49243 () (Array (_ BitVec 32) ValueCell!15062))

(declare-datatypes ((array!80949 0))(
  ( (array!80950 (arr!39035 (Array (_ BitVec 32) ValueCell!15062)) (size!39572 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80949)

(assert (=> mapNonEmpty!49243 (= (arr!39035 _values!914) (store mapRest!49243 mapKey!49243 mapValue!49243))))

(declare-fun mapIsEmpty!49243 () Bool)

(assert (=> mapIsEmpty!49243 mapRes!49243))

(declare-fun b!1251164 () Bool)

(declare-fun res!834594 () Bool)

(declare-fun e!710473 () Bool)

(assert (=> b!1251164 (=> (not res!834594) (not e!710473))))

(declare-datatypes ((array!80951 0))(
  ( (array!80952 (arr!39036 (Array (_ BitVec 32) (_ BitVec 64))) (size!39573 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80951)

(declare-datatypes ((List!27883 0))(
  ( (Nil!27880) (Cons!27879 (h!29088 (_ BitVec 64)) (t!41365 List!27883)) )
))
(declare-fun arrayNoDuplicates!0 (array!80951 (_ BitVec 32) List!27883) Bool)

(assert (=> b!1251164 (= res!834594 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27880))))

(declare-fun b!1251165 () Bool)

(declare-fun e!710468 () Bool)

(assert (=> b!1251165 (= e!710468 true)))

(declare-datatypes ((tuple2!20630 0))(
  ( (tuple2!20631 (_1!10325 (_ BitVec 64)) (_2!10325 V!47567)) )
))
(declare-datatypes ((List!27884 0))(
  ( (Nil!27881) (Cons!27880 (h!29089 tuple2!20630) (t!41366 List!27884)) )
))
(declare-datatypes ((ListLongMap!18515 0))(
  ( (ListLongMap!18516 (toList!9273 List!27884)) )
))
(declare-fun lt!564658 () ListLongMap!18515)

(declare-fun -!2032 (ListLongMap!18515 (_ BitVec 64)) ListLongMap!18515)

(assert (=> b!1251165 (= (-!2032 lt!564658 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564658)))

(declare-datatypes ((Unit!41521 0))(
  ( (Unit!41522) )
))
(declare-fun lt!564661 () Unit!41521)

(declare-fun removeNotPresentStillSame!99 (ListLongMap!18515 (_ BitVec 64)) Unit!41521)

(assert (=> b!1251165 (= lt!564661 (removeNotPresentStillSame!99 lt!564658 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1251166 () Bool)

(declare-fun res!834598 () Bool)

(assert (=> b!1251166 (=> (not res!834598) (not e!710473))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80951 (_ BitVec 32)) Bool)

(assert (=> b!1251166 (= res!834598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251167 () Bool)

(declare-fun e!710471 () Bool)

(assert (=> b!1251167 (= e!710471 e!710468)))

(declare-fun res!834599 () Bool)

(assert (=> b!1251167 (=> res!834599 e!710468)))

(declare-fun contains!7524 (ListLongMap!18515 (_ BitVec 64)) Bool)

(assert (=> b!1251167 (= res!834599 (contains!7524 lt!564658 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!47567)

(declare-fun minValueBefore!43 () V!47567)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun getCurrentListMap!4489 (array!80951 array!80949 (_ BitVec 32) (_ BitVec 32) V!47567 V!47567 (_ BitVec 32) Int) ListLongMap!18515)

(assert (=> b!1251167 (= lt!564658 (getCurrentListMap!4489 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!834595 () Bool)

(assert (=> start!105016 (=> (not res!834595) (not e!710473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105016 (= res!834595 (validMask!0 mask!1466))))

(assert (=> start!105016 e!710473))

(assert (=> start!105016 true))

(assert (=> start!105016 tp!93744))

(declare-fun tp_is_empty!31651 () Bool)

(assert (=> start!105016 tp_is_empty!31651))

(declare-fun array_inv!29705 (array!80951) Bool)

(assert (=> start!105016 (array_inv!29705 _keys!1118)))

(declare-fun e!710469 () Bool)

(declare-fun array_inv!29706 (array!80949) Bool)

(assert (=> start!105016 (and (array_inv!29706 _values!914) e!710469)))

(declare-fun b!1251163 () Bool)

(declare-fun e!710474 () Bool)

(assert (=> b!1251163 (= e!710469 (and e!710474 mapRes!49243))))

(declare-fun condMapEmpty!49243 () Bool)

(declare-fun mapDefault!49243 () ValueCell!15062)

