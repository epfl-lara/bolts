; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104910 () Bool)

(assert start!104910)

(declare-fun b_free!26665 () Bool)

(declare-fun b_next!26665 () Bool)

(assert (=> start!104910 (= b_free!26665 (not b_next!26665))))

(declare-fun tp!93489 () Bool)

(declare-fun b_and!44451 () Bool)

(assert (=> start!104910 (= tp!93489 b_and!44451)))

(declare-fun b!1249872 () Bool)

(declare-fun e!709488 () Bool)

(declare-fun tp_is_empty!31567 () Bool)

(assert (=> b!1249872 (= e!709488 tp_is_empty!31567)))

(declare-fun b!1249873 () Bool)

(declare-fun res!833778 () Bool)

(declare-fun e!709490 () Bool)

(assert (=> b!1249873 (=> (not res!833778) (not e!709490))))

(declare-datatypes ((array!80787 0))(
  ( (array!80788 (arr!38955 (Array (_ BitVec 32) (_ BitVec 64))) (size!39492 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80787)

(declare-datatypes ((List!27816 0))(
  ( (Nil!27813) (Cons!27812 (h!29021 (_ BitVec 64)) (t!41296 List!27816)) )
))
(declare-fun arrayNoDuplicates!0 (array!80787 (_ BitVec 32) List!27816) Bool)

(assert (=> b!1249873 (= res!833778 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27813))))

(declare-fun b!1249874 () Bool)

(declare-fun e!709492 () Bool)

(assert (=> b!1249874 (= e!709490 (not e!709492))))

(declare-fun res!833779 () Bool)

(assert (=> b!1249874 (=> res!833779 e!709492)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1249874 (= res!833779 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!47455 0))(
  ( (V!47456 (val!15846 Int)) )
))
(declare-datatypes ((tuple2!20554 0))(
  ( (tuple2!20555 (_1!10287 (_ BitVec 64)) (_2!10287 V!47455)) )
))
(declare-datatypes ((List!27817 0))(
  ( (Nil!27814) (Cons!27813 (h!29022 tuple2!20554) (t!41297 List!27817)) )
))
(declare-datatypes ((ListLongMap!18439 0))(
  ( (ListLongMap!18440 (toList!9235 List!27817)) )
))
(declare-fun lt!563906 () ListLongMap!18439)

(declare-fun lt!563904 () ListLongMap!18439)

(assert (=> b!1249874 (= lt!563906 lt!563904)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41453 0))(
  ( (Unit!41454) )
))
(declare-fun lt!563905 () Unit!41453)

(declare-fun minValueAfter!43 () V!47455)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47455)

(declare-datatypes ((ValueCell!15020 0))(
  ( (ValueCellFull!15020 (v!18542 V!47455)) (EmptyCell!15020) )
))
(declare-datatypes ((array!80789 0))(
  ( (array!80790 (arr!38956 (Array (_ BitVec 32) ValueCell!15020)) (size!39493 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80789)

(declare-fun minValueBefore!43 () V!47455)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!936 (array!80787 array!80789 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47455 V!47455 V!47455 V!47455 (_ BitVec 32) Int) Unit!41453)

(assert (=> b!1249874 (= lt!563905 (lemmaNoChangeToArrayThenSameMapNoExtras!936 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5618 (array!80787 array!80789 (_ BitVec 32) (_ BitVec 32) V!47455 V!47455 (_ BitVec 32) Int) ListLongMap!18439)

(assert (=> b!1249874 (= lt!563904 (getCurrentListMapNoExtraKeys!5618 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249874 (= lt!563906 (getCurrentListMapNoExtraKeys!5618 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249875 () Bool)

(declare-fun e!709486 () Bool)

(declare-fun e!709489 () Bool)

(declare-fun mapRes!49114 () Bool)

(assert (=> b!1249875 (= e!709486 (and e!709489 mapRes!49114))))

(declare-fun condMapEmpty!49114 () Bool)

(declare-fun mapDefault!49114 () ValueCell!15020)

