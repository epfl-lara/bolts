; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104794 () Bool)

(assert start!104794)

(declare-fun b_free!26563 () Bool)

(declare-fun b_next!26563 () Bool)

(assert (=> start!104794 (= b_free!26563 (not b_next!26563))))

(declare-fun tp!93179 () Bool)

(declare-fun b_and!44341 () Bool)

(assert (=> start!104794 (= tp!93179 b_and!44341)))

(declare-fun b!1248703 () Bool)

(declare-fun e!708656 () Bool)

(declare-fun tp_is_empty!31465 () Bool)

(assert (=> b!1248703 (= e!708656 tp_is_empty!31465)))

(declare-fun mapNonEmpty!48958 () Bool)

(declare-fun mapRes!48958 () Bool)

(declare-fun tp!93180 () Bool)

(declare-fun e!708653 () Bool)

(assert (=> mapNonEmpty!48958 (= mapRes!48958 (and tp!93180 e!708653))))

(declare-datatypes ((V!47319 0))(
  ( (V!47320 (val!15795 Int)) )
))
(declare-datatypes ((ValueCell!14969 0))(
  ( (ValueCellFull!14969 (v!18491 V!47319)) (EmptyCell!14969) )
))
(declare-fun mapRest!48958 () (Array (_ BitVec 32) ValueCell!14969))

(declare-fun mapValue!48958 () ValueCell!14969)

(declare-datatypes ((array!80597 0))(
  ( (array!80598 (arr!38861 (Array (_ BitVec 32) ValueCell!14969)) (size!39398 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80597)

(declare-fun mapKey!48958 () (_ BitVec 32))

(assert (=> mapNonEmpty!48958 (= (arr!38861 _values!914) (store mapRest!48958 mapKey!48958 mapValue!48958))))

(declare-fun b!1248704 () Bool)

(declare-fun res!833121 () Bool)

(declare-fun e!708655 () Bool)

(assert (=> b!1248704 (=> (not res!833121) (not e!708655))))

(declare-datatypes ((array!80599 0))(
  ( (array!80600 (arr!38862 (Array (_ BitVec 32) (_ BitVec 64))) (size!39399 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80599)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80599 (_ BitVec 32)) Bool)

(assert (=> b!1248704 (= res!833121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248705 () Bool)

(declare-fun res!833123 () Bool)

(assert (=> b!1248705 (=> (not res!833123) (not e!708655))))

(declare-datatypes ((List!27756 0))(
  ( (Nil!27753) (Cons!27752 (h!28961 (_ BitVec 64)) (t!41234 List!27756)) )
))
(declare-fun arrayNoDuplicates!0 (array!80599 (_ BitVec 32) List!27756) Bool)

(assert (=> b!1248705 (= res!833123 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27753))))

(declare-fun b!1248706 () Bool)

(assert (=> b!1248706 (= e!708655 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47319)

(declare-datatypes ((tuple2!20498 0))(
  ( (tuple2!20499 (_1!10259 (_ BitVec 64)) (_2!10259 V!47319)) )
))
(declare-datatypes ((List!27757 0))(
  ( (Nil!27754) (Cons!27753 (h!28962 tuple2!20498) (t!41235 List!27757)) )
))
(declare-datatypes ((ListLongMap!18383 0))(
  ( (ListLongMap!18384 (toList!9207 List!27757)) )
))
(declare-fun lt!563453 () ListLongMap!18383)

(declare-fun minValueAfter!43 () V!47319)

(declare-fun getCurrentListMapNoExtraKeys!5590 (array!80599 array!80597 (_ BitVec 32) (_ BitVec 32) V!47319 V!47319 (_ BitVec 32) Int) ListLongMap!18383)

(assert (=> b!1248706 (= lt!563453 (getCurrentListMapNoExtraKeys!5590 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun minValueBefore!43 () V!47319)

(declare-fun lt!563454 () ListLongMap!18383)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1248706 (= lt!563454 (getCurrentListMapNoExtraKeys!5590 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1248707 () Bool)

(declare-fun e!708654 () Bool)

(assert (=> b!1248707 (= e!708654 (and e!708656 mapRes!48958))))

(declare-fun condMapEmpty!48958 () Bool)

(declare-fun mapDefault!48958 () ValueCell!14969)

