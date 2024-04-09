; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104716 () Bool)

(assert start!104716)

(declare-fun b_free!26497 () Bool)

(declare-fun b_next!26497 () Bool)

(assert (=> start!104716 (= b_free!26497 (not b_next!26497))))

(declare-fun tp!92978 () Bool)

(declare-fun b_and!44271 () Bool)

(assert (=> start!104716 (= tp!92978 b_and!44271)))

(declare-fun res!832700 () Bool)

(declare-fun e!708111 () Bool)

(assert (=> start!104716 (=> (not res!832700) (not e!708111))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104716 (= res!832700 (validMask!0 mask!1466))))

(assert (=> start!104716 e!708111))

(assert (=> start!104716 true))

(assert (=> start!104716 tp!92978))

(declare-fun tp_is_empty!31399 () Bool)

(assert (=> start!104716 tp_is_empty!31399))

(declare-datatypes ((array!80467 0))(
  ( (array!80468 (arr!38797 (Array (_ BitVec 32) (_ BitVec 64))) (size!39334 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80467)

(declare-fun array_inv!29543 (array!80467) Bool)

(assert (=> start!104716 (array_inv!29543 _keys!1118)))

(declare-datatypes ((V!47231 0))(
  ( (V!47232 (val!15762 Int)) )
))
(declare-datatypes ((ValueCell!14936 0))(
  ( (ValueCellFull!14936 (v!18458 V!47231)) (EmptyCell!14936) )
))
(declare-datatypes ((array!80469 0))(
  ( (array!80470 (arr!38798 (Array (_ BitVec 32) ValueCell!14936)) (size!39335 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80469)

(declare-fun e!708113 () Bool)

(declare-fun array_inv!29544 (array!80469) Bool)

(assert (=> start!104716 (and (array_inv!29544 _values!914) e!708113)))

(declare-fun b!1247937 () Bool)

(assert (=> b!1247937 (= e!708111 false)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!20456 0))(
  ( (tuple2!20457 (_1!10238 (_ BitVec 64)) (_2!10238 V!47231)) )
))
(declare-datatypes ((List!27714 0))(
  ( (Nil!27711) (Cons!27710 (h!28919 tuple2!20456) (t!41190 List!27714)) )
))
(declare-datatypes ((ListLongMap!18341 0))(
  ( (ListLongMap!18342 (toList!9186 List!27714)) )
))
(declare-fun lt!563286 () ListLongMap!18341)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47231)

(declare-fun minValueBefore!43 () V!47231)

(declare-fun getCurrentListMapNoExtraKeys!5569 (array!80467 array!80469 (_ BitVec 32) (_ BitVec 32) V!47231 V!47231 (_ BitVec 32) Int) ListLongMap!18341)

(assert (=> b!1247937 (= lt!563286 (getCurrentListMapNoExtraKeys!5569 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1247938 () Bool)

(declare-fun res!832701 () Bool)

(assert (=> b!1247938 (=> (not res!832701) (not e!708111))))

(declare-datatypes ((List!27715 0))(
  ( (Nil!27712) (Cons!27711 (h!28920 (_ BitVec 64)) (t!41191 List!27715)) )
))
(declare-fun arrayNoDuplicates!0 (array!80467 (_ BitVec 32) List!27715) Bool)

(assert (=> b!1247938 (= res!832701 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27712))))

(declare-fun mapIsEmpty!48856 () Bool)

(declare-fun mapRes!48856 () Bool)

(assert (=> mapIsEmpty!48856 mapRes!48856))

(declare-fun b!1247939 () Bool)

(declare-fun res!832698 () Bool)

(assert (=> b!1247939 (=> (not res!832698) (not e!708111))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247939 (= res!832698 (and (= (size!39335 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39334 _keys!1118) (size!39335 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1247940 () Bool)

(declare-fun e!708114 () Bool)

(assert (=> b!1247940 (= e!708114 tp_is_empty!31399)))

(declare-fun b!1247941 () Bool)

(declare-fun res!832699 () Bool)

(assert (=> b!1247941 (=> (not res!832699) (not e!708111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80467 (_ BitVec 32)) Bool)

(assert (=> b!1247941 (= res!832699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!48856 () Bool)

(declare-fun tp!92979 () Bool)

(assert (=> mapNonEmpty!48856 (= mapRes!48856 (and tp!92979 e!708114))))

(declare-fun mapKey!48856 () (_ BitVec 32))

(declare-fun mapValue!48856 () ValueCell!14936)

(declare-fun mapRest!48856 () (Array (_ BitVec 32) ValueCell!14936))

(assert (=> mapNonEmpty!48856 (= (arr!38798 _values!914) (store mapRest!48856 mapKey!48856 mapValue!48856))))

(declare-fun b!1247942 () Bool)

(declare-fun e!708112 () Bool)

(assert (=> b!1247942 (= e!708113 (and e!708112 mapRes!48856))))

(declare-fun condMapEmpty!48856 () Bool)

(declare-fun mapDefault!48856 () ValueCell!14936)

