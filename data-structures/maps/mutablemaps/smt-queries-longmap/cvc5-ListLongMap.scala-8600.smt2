; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104866 () Bool)

(assert start!104866)

(declare-fun b_free!26635 () Bool)

(declare-fun b_next!26635 () Bool)

(assert (=> start!104866 (= b_free!26635 (not b_next!26635))))

(declare-fun tp!93395 () Bool)

(declare-fun b_and!44413 () Bool)

(assert (=> start!104866 (= tp!93395 b_and!44413)))

(declare-fun b!1249459 () Bool)

(declare-fun res!833554 () Bool)

(declare-fun e!709194 () Bool)

(assert (=> b!1249459 (=> (not res!833554) (not e!709194))))

(declare-datatypes ((array!80731 0))(
  ( (array!80732 (arr!38928 (Array (_ BitVec 32) (_ BitVec 64))) (size!39465 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80731)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80731 (_ BitVec 32)) Bool)

(assert (=> b!1249459 (= res!833554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49066 () Bool)

(declare-fun mapRes!49066 () Bool)

(assert (=> mapIsEmpty!49066 mapRes!49066))

(declare-fun b!1249460 () Bool)

(declare-fun e!709195 () Bool)

(declare-fun tp_is_empty!31537 () Bool)

(assert (=> b!1249460 (= e!709195 tp_is_empty!31537)))

(declare-fun b!1249461 () Bool)

(declare-fun res!833553 () Bool)

(assert (=> b!1249461 (=> (not res!833553) (not e!709194))))

(declare-datatypes ((List!27799 0))(
  ( (Nil!27796) (Cons!27795 (h!29004 (_ BitVec 64)) (t!41277 List!27799)) )
))
(declare-fun arrayNoDuplicates!0 (array!80731 (_ BitVec 32) List!27799) Bool)

(assert (=> b!1249461 (= res!833553 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27796))))

(declare-fun mapNonEmpty!49066 () Bool)

(declare-fun tp!93396 () Bool)

(assert (=> mapNonEmpty!49066 (= mapRes!49066 (and tp!93396 e!709195))))

(declare-datatypes ((V!47415 0))(
  ( (V!47416 (val!15831 Int)) )
))
(declare-datatypes ((ValueCell!15005 0))(
  ( (ValueCellFull!15005 (v!18527 V!47415)) (EmptyCell!15005) )
))
(declare-fun mapValue!49066 () ValueCell!15005)

(declare-fun mapRest!49066 () (Array (_ BitVec 32) ValueCell!15005))

(declare-fun mapKey!49066 () (_ BitVec 32))

(declare-datatypes ((array!80733 0))(
  ( (array!80734 (arr!38929 (Array (_ BitVec 32) ValueCell!15005)) (size!39466 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80733)

(assert (=> mapNonEmpty!49066 (= (arr!38929 _values!914) (store mapRest!49066 mapKey!49066 mapValue!49066))))

(declare-fun b!1249462 () Bool)

(assert (=> b!1249462 (= e!709194 (not true))))

(declare-datatypes ((tuple2!20536 0))(
  ( (tuple2!20537 (_1!10278 (_ BitVec 64)) (_2!10278 V!47415)) )
))
(declare-datatypes ((List!27800 0))(
  ( (Nil!27797) (Cons!27796 (h!29005 tuple2!20536) (t!41278 List!27800)) )
))
(declare-datatypes ((ListLongMap!18421 0))(
  ( (ListLongMap!18422 (toList!9226 List!27800)) )
))
(declare-fun lt!563718 () ListLongMap!18421)

(declare-fun lt!563716 () ListLongMap!18421)

(assert (=> b!1249462 (= lt!563718 lt!563716)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47415)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun minValueBefore!43 () V!47415)

(declare-fun zeroValue!871 () V!47415)

(declare-datatypes ((Unit!41435 0))(
  ( (Unit!41436) )
))
(declare-fun lt!563717 () Unit!41435)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!927 (array!80731 array!80733 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47415 V!47415 V!47415 V!47415 (_ BitVec 32) Int) Unit!41435)

(assert (=> b!1249462 (= lt!563717 (lemmaNoChangeToArrayThenSameMapNoExtras!927 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5609 (array!80731 array!80733 (_ BitVec 32) (_ BitVec 32) V!47415 V!47415 (_ BitVec 32) Int) ListLongMap!18421)

(assert (=> b!1249462 (= lt!563716 (getCurrentListMapNoExtraKeys!5609 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249462 (= lt!563718 (getCurrentListMapNoExtraKeys!5609 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249463 () Bool)

(declare-fun e!709197 () Bool)

(declare-fun e!709196 () Bool)

(assert (=> b!1249463 (= e!709197 (and e!709196 mapRes!49066))))

(declare-fun condMapEmpty!49066 () Bool)

(declare-fun mapDefault!49066 () ValueCell!15005)

