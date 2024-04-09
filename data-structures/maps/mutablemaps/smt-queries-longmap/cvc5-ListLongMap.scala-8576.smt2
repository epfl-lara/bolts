; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104710 () Bool)

(assert start!104710)

(declare-fun b_free!26491 () Bool)

(declare-fun b_next!26491 () Bool)

(assert (=> start!104710 (= b_free!26491 (not b_next!26491))))

(declare-fun tp!92961 () Bool)

(declare-fun b_and!44265 () Bool)

(assert (=> start!104710 (= tp!92961 b_and!44265)))

(declare-fun b!1247874 () Bool)

(declare-fun res!832662 () Bool)

(declare-fun e!708068 () Bool)

(assert (=> b!1247874 (=> (not res!832662) (not e!708068))))

(declare-datatypes ((array!80455 0))(
  ( (array!80456 (arr!38791 (Array (_ BitVec 32) (_ BitVec 64))) (size!39328 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80455)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80455 (_ BitVec 32)) Bool)

(assert (=> b!1247874 (= res!832662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1247875 () Bool)

(assert (=> b!1247875 (= e!708068 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((V!47223 0))(
  ( (V!47224 (val!15759 Int)) )
))
(declare-fun zeroValue!871 () V!47223)

(declare-datatypes ((ValueCell!14933 0))(
  ( (ValueCellFull!14933 (v!18455 V!47223)) (EmptyCell!14933) )
))
(declare-datatypes ((array!80457 0))(
  ( (array!80458 (arr!38792 (Array (_ BitVec 32) ValueCell!14933)) (size!39329 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80457)

(declare-fun minValueBefore!43 () V!47223)

(declare-datatypes ((tuple2!20452 0))(
  ( (tuple2!20453 (_1!10236 (_ BitVec 64)) (_2!10236 V!47223)) )
))
(declare-datatypes ((List!27709 0))(
  ( (Nil!27706) (Cons!27705 (h!28914 tuple2!20452) (t!41185 List!27709)) )
))
(declare-datatypes ((ListLongMap!18337 0))(
  ( (ListLongMap!18338 (toList!9184 List!27709)) )
))
(declare-fun lt!563277 () ListLongMap!18337)

(declare-fun getCurrentListMapNoExtraKeys!5567 (array!80455 array!80457 (_ BitVec 32) (_ BitVec 32) V!47223 V!47223 (_ BitVec 32) Int) ListLongMap!18337)

(assert (=> b!1247875 (= lt!563277 (getCurrentListMapNoExtraKeys!5567 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1247876 () Bool)

(declare-fun e!708067 () Bool)

(declare-fun tp_is_empty!31393 () Bool)

(assert (=> b!1247876 (= e!708067 tp_is_empty!31393)))

(declare-fun b!1247877 () Bool)

(declare-fun res!832663 () Bool)

(assert (=> b!1247877 (=> (not res!832663) (not e!708068))))

(declare-datatypes ((List!27710 0))(
  ( (Nil!27707) (Cons!27706 (h!28915 (_ BitVec 64)) (t!41186 List!27710)) )
))
(declare-fun arrayNoDuplicates!0 (array!80455 (_ BitVec 32) List!27710) Bool)

(assert (=> b!1247877 (= res!832663 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27707))))

(declare-fun b!1247878 () Bool)

(declare-fun res!832665 () Bool)

(assert (=> b!1247878 (=> (not res!832665) (not e!708068))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247878 (= res!832665 (and (= (size!39329 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39328 _keys!1118) (size!39329 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!48847 () Bool)

(declare-fun mapRes!48847 () Bool)

(declare-fun tp!92960 () Bool)

(assert (=> mapNonEmpty!48847 (= mapRes!48847 (and tp!92960 e!708067))))

(declare-fun mapKey!48847 () (_ BitVec 32))

(declare-fun mapValue!48847 () ValueCell!14933)

(declare-fun mapRest!48847 () (Array (_ BitVec 32) ValueCell!14933))

(assert (=> mapNonEmpty!48847 (= (arr!38792 _values!914) (store mapRest!48847 mapKey!48847 mapValue!48847))))

(declare-fun res!832664 () Bool)

(assert (=> start!104710 (=> (not res!832664) (not e!708068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104710 (= res!832664 (validMask!0 mask!1466))))

(assert (=> start!104710 e!708068))

(assert (=> start!104710 true))

(assert (=> start!104710 tp!92961))

(assert (=> start!104710 tp_is_empty!31393))

(declare-fun array_inv!29537 (array!80455) Bool)

(assert (=> start!104710 (array_inv!29537 _keys!1118)))

(declare-fun e!708069 () Bool)

(declare-fun array_inv!29538 (array!80457) Bool)

(assert (=> start!104710 (and (array_inv!29538 _values!914) e!708069)))

(declare-fun mapIsEmpty!48847 () Bool)

(assert (=> mapIsEmpty!48847 mapRes!48847))

(declare-fun b!1247879 () Bool)

(declare-fun e!708066 () Bool)

(assert (=> b!1247879 (= e!708069 (and e!708066 mapRes!48847))))

(declare-fun condMapEmpty!48847 () Bool)

(declare-fun mapDefault!48847 () ValueCell!14933)

