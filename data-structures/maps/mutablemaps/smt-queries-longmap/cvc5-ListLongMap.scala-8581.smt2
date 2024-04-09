; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104740 () Bool)

(assert start!104740)

(declare-fun b_free!26521 () Bool)

(declare-fun b_next!26521 () Bool)

(assert (=> start!104740 (= b_free!26521 (not b_next!26521))))

(declare-fun tp!93051 () Bool)

(declare-fun b_and!44295 () Bool)

(assert (=> start!104740 (= tp!93051 b_and!44295)))

(declare-fun b!1248189 () Bool)

(declare-fun e!708292 () Bool)

(declare-fun tp_is_empty!31423 () Bool)

(assert (=> b!1248189 (= e!708292 tp_is_empty!31423)))

(declare-fun b!1248190 () Bool)

(declare-fun e!708291 () Bool)

(assert (=> b!1248190 (= e!708291 tp_is_empty!31423)))

(declare-fun mapNonEmpty!48892 () Bool)

(declare-fun mapRes!48892 () Bool)

(declare-fun tp!93050 () Bool)

(assert (=> mapNonEmpty!48892 (= mapRes!48892 (and tp!93050 e!708292))))

(declare-datatypes ((V!47263 0))(
  ( (V!47264 (val!15774 Int)) )
))
(declare-datatypes ((ValueCell!14948 0))(
  ( (ValueCellFull!14948 (v!18470 V!47263)) (EmptyCell!14948) )
))
(declare-fun mapValue!48892 () ValueCell!14948)

(declare-fun mapKey!48892 () (_ BitVec 32))

(declare-fun mapRest!48892 () (Array (_ BitVec 32) ValueCell!14948))

(declare-datatypes ((array!80513 0))(
  ( (array!80514 (arr!38820 (Array (_ BitVec 32) ValueCell!14948)) (size!39357 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80513)

(assert (=> mapNonEmpty!48892 (= (arr!38820 _values!914) (store mapRest!48892 mapKey!48892 mapValue!48892))))

(declare-fun b!1248192 () Bool)

(declare-fun e!708294 () Bool)

(assert (=> b!1248192 (= e!708294 false)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!20474 0))(
  ( (tuple2!20475 (_1!10247 (_ BitVec 64)) (_2!10247 V!47263)) )
))
(declare-datatypes ((List!27731 0))(
  ( (Nil!27728) (Cons!27727 (h!28936 tuple2!20474) (t!41207 List!27731)) )
))
(declare-datatypes ((ListLongMap!18359 0))(
  ( (ListLongMap!18360 (toList!9195 List!27731)) )
))
(declare-fun lt!563322 () ListLongMap!18359)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47263)

(declare-datatypes ((array!80515 0))(
  ( (array!80516 (arr!38821 (Array (_ BitVec 32) (_ BitVec 64))) (size!39358 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80515)

(declare-fun minValueBefore!43 () V!47263)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5578 (array!80515 array!80513 (_ BitVec 32) (_ BitVec 32) V!47263 V!47263 (_ BitVec 32) Int) ListLongMap!18359)

(assert (=> b!1248192 (= lt!563322 (getCurrentListMapNoExtraKeys!5578 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!48892 () Bool)

(assert (=> mapIsEmpty!48892 mapRes!48892))

(declare-fun b!1248193 () Bool)

(declare-fun res!832843 () Bool)

(assert (=> b!1248193 (=> (not res!832843) (not e!708294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80515 (_ BitVec 32)) Bool)

(assert (=> b!1248193 (= res!832843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248194 () Bool)

(declare-fun res!832845 () Bool)

(assert (=> b!1248194 (=> (not res!832845) (not e!708294))))

(declare-datatypes ((List!27732 0))(
  ( (Nil!27729) (Cons!27728 (h!28937 (_ BitVec 64)) (t!41208 List!27732)) )
))
(declare-fun arrayNoDuplicates!0 (array!80515 (_ BitVec 32) List!27732) Bool)

(assert (=> b!1248194 (= res!832845 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27729))))

(declare-fun b!1248195 () Bool)

(declare-fun res!832844 () Bool)

(assert (=> b!1248195 (=> (not res!832844) (not e!708294))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1248195 (= res!832844 (and (= (size!39357 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39358 _keys!1118) (size!39357 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1248191 () Bool)

(declare-fun e!708293 () Bool)

(assert (=> b!1248191 (= e!708293 (and e!708291 mapRes!48892))))

(declare-fun condMapEmpty!48892 () Bool)

(declare-fun mapDefault!48892 () ValueCell!14948)

