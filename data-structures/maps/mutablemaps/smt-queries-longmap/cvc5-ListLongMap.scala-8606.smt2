; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104916 () Bool)

(assert start!104916)

(declare-fun b_free!26671 () Bool)

(declare-fun b_next!26671 () Bool)

(assert (=> start!104916 (= b_free!26671 (not b_next!26671))))

(declare-fun tp!93506 () Bool)

(declare-fun b_and!44457 () Bool)

(assert (=> start!104916 (= tp!93506 b_and!44457)))

(declare-fun mapNonEmpty!49123 () Bool)

(declare-fun mapRes!49123 () Bool)

(declare-fun tp!93507 () Bool)

(declare-fun e!709554 () Bool)

(assert (=> mapNonEmpty!49123 (= mapRes!49123 (and tp!93507 e!709554))))

(declare-datatypes ((V!47463 0))(
  ( (V!47464 (val!15849 Int)) )
))
(declare-datatypes ((ValueCell!15023 0))(
  ( (ValueCellFull!15023 (v!18545 V!47463)) (EmptyCell!15023) )
))
(declare-fun mapRest!49123 () (Array (_ BitVec 32) ValueCell!15023))

(declare-fun mapValue!49123 () ValueCell!15023)

(declare-fun mapKey!49123 () (_ BitVec 32))

(declare-datatypes ((array!80799 0))(
  ( (array!80800 (arr!38961 (Array (_ BitVec 32) ValueCell!15023)) (size!39498 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80799)

(assert (=> mapNonEmpty!49123 (= (arr!38961 _values!914) (store mapRest!49123 mapKey!49123 mapValue!49123))))

(declare-fun b!1249953 () Bool)

(declare-fun e!709553 () Bool)

(declare-fun e!709549 () Bool)

(assert (=> b!1249953 (= e!709553 e!709549)))

(declare-fun res!833836 () Bool)

(assert (=> b!1249953 (=> res!833836 e!709549)))

(declare-datatypes ((tuple2!20560 0))(
  ( (tuple2!20561 (_1!10290 (_ BitVec 64)) (_2!10290 V!47463)) )
))
(declare-datatypes ((List!27821 0))(
  ( (Nil!27818) (Cons!27817 (h!29026 tuple2!20560) (t!41301 List!27821)) )
))
(declare-datatypes ((ListLongMap!18445 0))(
  ( (ListLongMap!18446 (toList!9238 List!27821)) )
))
(declare-fun lt!563951 () ListLongMap!18445)

(declare-fun contains!7494 (ListLongMap!18445 (_ BitVec 64)) Bool)

(assert (=> b!1249953 (= res!833836 (contains!7494 lt!563951 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47463)

(declare-datatypes ((array!80801 0))(
  ( (array!80802 (arr!38962 (Array (_ BitVec 32) (_ BitVec 64))) (size!39499 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80801)

(declare-fun minValueBefore!43 () V!47463)

(declare-fun getCurrentListMap!4460 (array!80801 array!80799 (_ BitVec 32) (_ BitVec 32) V!47463 V!47463 (_ BitVec 32) Int) ListLongMap!18445)

(assert (=> b!1249953 (= lt!563951 (getCurrentListMap!4460 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249954 () Bool)

(declare-fun e!709551 () Bool)

(assert (=> b!1249954 (= e!709551 (not e!709553))))

(declare-fun res!833833 () Bool)

(assert (=> b!1249954 (=> res!833833 e!709553)))

(assert (=> b!1249954 (= res!833833 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!563953 () ListLongMap!18445)

(declare-fun lt!563949 () ListLongMap!18445)

(assert (=> b!1249954 (= lt!563953 lt!563949)))

(declare-fun minValueAfter!43 () V!47463)

(declare-datatypes ((Unit!41459 0))(
  ( (Unit!41460) )
))
(declare-fun lt!563952 () Unit!41459)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!939 (array!80801 array!80799 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47463 V!47463 V!47463 V!47463 (_ BitVec 32) Int) Unit!41459)

(assert (=> b!1249954 (= lt!563952 (lemmaNoChangeToArrayThenSameMapNoExtras!939 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5621 (array!80801 array!80799 (_ BitVec 32) (_ BitVec 32) V!47463 V!47463 (_ BitVec 32) Int) ListLongMap!18445)

(assert (=> b!1249954 (= lt!563949 (getCurrentListMapNoExtraKeys!5621 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249954 (= lt!563953 (getCurrentListMapNoExtraKeys!5621 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249956 () Bool)

(declare-fun res!833834 () Bool)

(assert (=> b!1249956 (=> (not res!833834) (not e!709551))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80801 (_ BitVec 32)) Bool)

(assert (=> b!1249956 (= res!833834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1249957 () Bool)

(declare-fun tp_is_empty!31573 () Bool)

(assert (=> b!1249957 (= e!709554 tp_is_empty!31573)))

(declare-fun b!1249958 () Bool)

(declare-fun e!709550 () Bool)

(declare-fun e!709555 () Bool)

(assert (=> b!1249958 (= e!709550 (and e!709555 mapRes!49123))))

(declare-fun condMapEmpty!49123 () Bool)

(declare-fun mapDefault!49123 () ValueCell!15023)

