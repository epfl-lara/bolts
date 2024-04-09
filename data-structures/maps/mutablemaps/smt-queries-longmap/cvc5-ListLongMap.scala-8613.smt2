; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104958 () Bool)

(assert start!104958)

(declare-fun b_free!26713 () Bool)

(declare-fun b_next!26713 () Bool)

(assert (=> start!104958 (= b_free!26713 (not b_next!26713))))

(declare-fun tp!93632 () Bool)

(declare-fun b_and!44499 () Bool)

(assert (=> start!104958 (= tp!93632 b_and!44499)))

(declare-fun b!1250520 () Bool)

(declare-fun e!709992 () Bool)

(declare-fun tp_is_empty!31615 () Bool)

(assert (=> b!1250520 (= e!709992 tp_is_empty!31615)))

(declare-fun mapNonEmpty!49186 () Bool)

(declare-fun mapRes!49186 () Bool)

(declare-fun tp!93633 () Bool)

(declare-fun e!709993 () Bool)

(assert (=> mapNonEmpty!49186 (= mapRes!49186 (and tp!93633 e!709993))))

(declare-fun mapKey!49186 () (_ BitVec 32))

(declare-datatypes ((V!47519 0))(
  ( (V!47520 (val!15870 Int)) )
))
(declare-datatypes ((ValueCell!15044 0))(
  ( (ValueCellFull!15044 (v!18566 V!47519)) (EmptyCell!15044) )
))
(declare-fun mapValue!49186 () ValueCell!15044)

(declare-datatypes ((array!80879 0))(
  ( (array!80880 (arr!39001 (Array (_ BitVec 32) ValueCell!15044)) (size!39538 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80879)

(declare-fun mapRest!49186 () (Array (_ BitVec 32) ValueCell!15044))

(assert (=> mapNonEmpty!49186 (= (arr!39001 _values!914) (store mapRest!49186 mapKey!49186 mapValue!49186))))

(declare-fun mapIsEmpty!49186 () Bool)

(assert (=> mapIsEmpty!49186 mapRes!49186))

(declare-fun res!834214 () Bool)

(declare-fun e!709995 () Bool)

(assert (=> start!104958 (=> (not res!834214) (not e!709995))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104958 (= res!834214 (validMask!0 mask!1466))))

(assert (=> start!104958 e!709995))

(assert (=> start!104958 true))

(assert (=> start!104958 tp!93632))

(assert (=> start!104958 tp_is_empty!31615))

(declare-datatypes ((array!80881 0))(
  ( (array!80882 (arr!39002 (Array (_ BitVec 32) (_ BitVec 64))) (size!39539 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80881)

(declare-fun array_inv!29685 (array!80881) Bool)

(assert (=> start!104958 (array_inv!29685 _keys!1118)))

(declare-fun e!709990 () Bool)

(declare-fun array_inv!29686 (array!80879) Bool)

(assert (=> start!104958 (and (array_inv!29686 _values!914) e!709990)))

(declare-fun b!1250521 () Bool)

(declare-fun res!834212 () Bool)

(assert (=> b!1250521 (=> (not res!834212) (not e!709995))))

(declare-datatypes ((List!27854 0))(
  ( (Nil!27851) (Cons!27850 (h!29059 (_ BitVec 64)) (t!41334 List!27854)) )
))
(declare-fun arrayNoDuplicates!0 (array!80881 (_ BitVec 32) List!27854) Bool)

(assert (=> b!1250521 (= res!834212 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27851))))

(declare-fun b!1250522 () Bool)

(declare-fun e!709996 () Bool)

(assert (=> b!1250522 (= e!709995 (not e!709996))))

(declare-fun res!834213 () Bool)

(assert (=> b!1250522 (=> res!834213 e!709996)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1250522 (= res!834213 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20598 0))(
  ( (tuple2!20599 (_1!10309 (_ BitVec 64)) (_2!10309 V!47519)) )
))
(declare-datatypes ((List!27855 0))(
  ( (Nil!27852) (Cons!27851 (h!29060 tuple2!20598) (t!41335 List!27855)) )
))
(declare-datatypes ((ListLongMap!18483 0))(
  ( (ListLongMap!18484 (toList!9257 List!27855)) )
))
(declare-fun lt!564265 () ListLongMap!18483)

(declare-fun lt!564264 () ListLongMap!18483)

(assert (=> b!1250522 (= lt!564265 lt!564264)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41491 0))(
  ( (Unit!41492) )
))
(declare-fun lt!564268 () Unit!41491)

(declare-fun minValueAfter!43 () V!47519)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47519)

(declare-fun minValueBefore!43 () V!47519)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!954 (array!80881 array!80879 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47519 V!47519 V!47519 V!47519 (_ BitVec 32) Int) Unit!41491)

(assert (=> b!1250522 (= lt!564268 (lemmaNoChangeToArrayThenSameMapNoExtras!954 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5636 (array!80881 array!80879 (_ BitVec 32) (_ BitVec 32) V!47519 V!47519 (_ BitVec 32) Int) ListLongMap!18483)

(assert (=> b!1250522 (= lt!564264 (getCurrentListMapNoExtraKeys!5636 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250522 (= lt!564265 (getCurrentListMapNoExtraKeys!5636 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250523 () Bool)

(declare-fun res!834209 () Bool)

(assert (=> b!1250523 (=> (not res!834209) (not e!709995))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80881 (_ BitVec 32)) Bool)

(assert (=> b!1250523 (= res!834209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1250524 () Bool)

(assert (=> b!1250524 (= e!709993 tp_is_empty!31615)))

(declare-fun b!1250525 () Bool)

(declare-fun res!834211 () Bool)

(assert (=> b!1250525 (=> (not res!834211) (not e!709995))))

(assert (=> b!1250525 (= res!834211 (and (= (size!39538 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39539 _keys!1118) (size!39538 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1250526 () Bool)

(declare-fun e!709994 () Bool)

(assert (=> b!1250526 (= e!709996 e!709994)))

(declare-fun res!834210 () Bool)

(assert (=> b!1250526 (=> res!834210 e!709994)))

(declare-fun lt!564267 () ListLongMap!18483)

(declare-fun contains!7508 (ListLongMap!18483 (_ BitVec 64)) Bool)

(assert (=> b!1250526 (= res!834210 (contains!7508 lt!564267 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4474 (array!80881 array!80879 (_ BitVec 32) (_ BitVec 32) V!47519 V!47519 (_ BitVec 32) Int) ListLongMap!18483)

(assert (=> b!1250526 (= lt!564267 (getCurrentListMap!4474 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250527 () Bool)

(assert (=> b!1250527 (= e!709994 (bvsle #b00000000000000000000000000000000 (size!39539 _keys!1118)))))

(declare-fun -!2022 (ListLongMap!18483 (_ BitVec 64)) ListLongMap!18483)

(assert (=> b!1250527 (= (-!2022 lt!564267 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564267)))

(declare-fun lt!564266 () Unit!41491)

(declare-fun removeNotPresentStillSame!89 (ListLongMap!18483 (_ BitVec 64)) Unit!41491)

(assert (=> b!1250527 (= lt!564266 (removeNotPresentStillSame!89 lt!564267 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1250528 () Bool)

(assert (=> b!1250528 (= e!709990 (and e!709992 mapRes!49186))))

(declare-fun condMapEmpty!49186 () Bool)

(declare-fun mapDefault!49186 () ValueCell!15044)

