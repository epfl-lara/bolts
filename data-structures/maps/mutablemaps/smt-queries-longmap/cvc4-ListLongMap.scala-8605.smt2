; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104914 () Bool)

(assert start!104914)

(declare-fun b_free!26669 () Bool)

(declare-fun b_next!26669 () Bool)

(assert (=> start!104914 (= b_free!26669 (not b_next!26669))))

(declare-fun tp!93500 () Bool)

(declare-fun b_and!44455 () Bool)

(assert (=> start!104914 (= tp!93500 b_and!44455)))

(declare-fun mapIsEmpty!49120 () Bool)

(declare-fun mapRes!49120 () Bool)

(assert (=> mapIsEmpty!49120 mapRes!49120))

(declare-fun res!833816 () Bool)

(declare-fun e!709534 () Bool)

(assert (=> start!104914 (=> (not res!833816) (not e!709534))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104914 (= res!833816 (validMask!0 mask!1466))))

(assert (=> start!104914 e!709534))

(assert (=> start!104914 true))

(assert (=> start!104914 tp!93500))

(declare-fun tp_is_empty!31571 () Bool)

(assert (=> start!104914 tp_is_empty!31571))

(declare-datatypes ((array!80795 0))(
  ( (array!80796 (arr!38959 (Array (_ BitVec 32) (_ BitVec 64))) (size!39496 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80795)

(declare-fun array_inv!29655 (array!80795) Bool)

(assert (=> start!104914 (array_inv!29655 _keys!1118)))

(declare-datatypes ((V!47459 0))(
  ( (V!47460 (val!15848 Int)) )
))
(declare-datatypes ((ValueCell!15022 0))(
  ( (ValueCellFull!15022 (v!18544 V!47459)) (EmptyCell!15022) )
))
(declare-datatypes ((array!80797 0))(
  ( (array!80798 (arr!38960 (Array (_ BitVec 32) ValueCell!15022)) (size!39497 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80797)

(declare-fun e!709532 () Bool)

(declare-fun array_inv!29656 (array!80797) Bool)

(assert (=> start!104914 (and (array_inv!29656 _values!914) e!709532)))

(declare-fun b!1249926 () Bool)

(declare-fun e!709528 () Bool)

(assert (=> b!1249926 (= e!709528 tp_is_empty!31571)))

(declare-fun b!1249927 () Bool)

(declare-fun e!709530 () Bool)

(assert (=> b!1249927 (= e!709534 (not e!709530))))

(declare-fun res!833815 () Bool)

(assert (=> b!1249927 (=> res!833815 e!709530)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1249927 (= res!833815 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20558 0))(
  ( (tuple2!20559 (_1!10289 (_ BitVec 64)) (_2!10289 V!47459)) )
))
(declare-datatypes ((List!27820 0))(
  ( (Nil!27817) (Cons!27816 (h!29025 tuple2!20558) (t!41300 List!27820)) )
))
(declare-datatypes ((ListLongMap!18443 0))(
  ( (ListLongMap!18444 (toList!9237 List!27820)) )
))
(declare-fun lt!563935 () ListLongMap!18443)

(declare-fun lt!563938 () ListLongMap!18443)

(assert (=> b!1249927 (= lt!563935 lt!563938)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47459)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47459)

(declare-datatypes ((Unit!41457 0))(
  ( (Unit!41458) )
))
(declare-fun lt!563937 () Unit!41457)

(declare-fun minValueBefore!43 () V!47459)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!938 (array!80795 array!80797 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47459 V!47459 V!47459 V!47459 (_ BitVec 32) Int) Unit!41457)

(assert (=> b!1249927 (= lt!563937 (lemmaNoChangeToArrayThenSameMapNoExtras!938 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5620 (array!80795 array!80797 (_ BitVec 32) (_ BitVec 32) V!47459 V!47459 (_ BitVec 32) Int) ListLongMap!18443)

(assert (=> b!1249927 (= lt!563938 (getCurrentListMapNoExtraKeys!5620 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249927 (= lt!563935 (getCurrentListMapNoExtraKeys!5620 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249928 () Bool)

(declare-fun e!709533 () Bool)

(assert (=> b!1249928 (= e!709530 e!709533)))

(declare-fun res!833813 () Bool)

(assert (=> b!1249928 (=> res!833813 e!709533)))

(declare-fun lt!563936 () ListLongMap!18443)

(declare-fun contains!7493 (ListLongMap!18443 (_ BitVec 64)) Bool)

(assert (=> b!1249928 (= res!833813 (contains!7493 lt!563936 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4459 (array!80795 array!80797 (_ BitVec 32) (_ BitVec 32) V!47459 V!47459 (_ BitVec 32) Int) ListLongMap!18443)

(assert (=> b!1249928 (= lt!563936 (getCurrentListMap!4459 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249929 () Bool)

(assert (=> b!1249929 (= e!709533 true)))

(declare-fun -!2010 (ListLongMap!18443 (_ BitVec 64)) ListLongMap!18443)

(assert (=> b!1249929 (= (-!2010 lt!563936 #b1000000000000000000000000000000000000000000000000000000000000000) lt!563936)))

(declare-fun lt!563934 () Unit!41457)

(declare-fun removeNotPresentStillSame!77 (ListLongMap!18443 (_ BitVec 64)) Unit!41457)

(assert (=> b!1249929 (= lt!563934 (removeNotPresentStillSame!77 lt!563936 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1249930 () Bool)

(declare-fun res!833818 () Bool)

(assert (=> b!1249930 (=> (not res!833818) (not e!709534))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80795 (_ BitVec 32)) Bool)

(assert (=> b!1249930 (= res!833818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49120 () Bool)

(declare-fun tp!93501 () Bool)

(assert (=> mapNonEmpty!49120 (= mapRes!49120 (and tp!93501 e!709528))))

(declare-fun mapRest!49120 () (Array (_ BitVec 32) ValueCell!15022))

(declare-fun mapKey!49120 () (_ BitVec 32))

(declare-fun mapValue!49120 () ValueCell!15022)

(assert (=> mapNonEmpty!49120 (= (arr!38960 _values!914) (store mapRest!49120 mapKey!49120 mapValue!49120))))

(declare-fun b!1249931 () Bool)

(declare-fun res!833817 () Bool)

(assert (=> b!1249931 (=> (not res!833817) (not e!709534))))

(assert (=> b!1249931 (= res!833817 (and (= (size!39497 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39496 _keys!1118) (size!39497 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1249932 () Bool)

(declare-fun e!709529 () Bool)

(assert (=> b!1249932 (= e!709529 tp_is_empty!31571)))

(declare-fun b!1249933 () Bool)

(assert (=> b!1249933 (= e!709532 (and e!709529 mapRes!49120))))

(declare-fun condMapEmpty!49120 () Bool)

(declare-fun mapDefault!49120 () ValueCell!15022)

