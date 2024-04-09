; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104786 () Bool)

(assert start!104786)

(declare-fun b_free!26555 () Bool)

(declare-fun b_next!26555 () Bool)

(assert (=> start!104786 (= b_free!26555 (not b_next!26555))))

(declare-fun tp!93155 () Bool)

(declare-fun b_and!44333 () Bool)

(assert (=> start!104786 (= tp!93155 b_and!44333)))

(declare-fun res!833075 () Bool)

(declare-fun e!708594 () Bool)

(assert (=> start!104786 (=> (not res!833075) (not e!708594))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104786 (= res!833075 (validMask!0 mask!1466))))

(assert (=> start!104786 e!708594))

(assert (=> start!104786 true))

(assert (=> start!104786 tp!93155))

(declare-fun tp_is_empty!31457 () Bool)

(assert (=> start!104786 tp_is_empty!31457))

(declare-datatypes ((array!80583 0))(
  ( (array!80584 (arr!38854 (Array (_ BitVec 32) (_ BitVec 64))) (size!39391 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80583)

(declare-fun array_inv!29579 (array!80583) Bool)

(assert (=> start!104786 (array_inv!29579 _keys!1118)))

(declare-datatypes ((V!47307 0))(
  ( (V!47308 (val!15791 Int)) )
))
(declare-datatypes ((ValueCell!14965 0))(
  ( (ValueCellFull!14965 (v!18487 V!47307)) (EmptyCell!14965) )
))
(declare-datatypes ((array!80585 0))(
  ( (array!80586 (arr!38855 (Array (_ BitVec 32) ValueCell!14965)) (size!39392 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80585)

(declare-fun e!708597 () Bool)

(declare-fun array_inv!29580 (array!80585) Bool)

(assert (=> start!104786 (and (array_inv!29580 _values!914) e!708597)))

(declare-fun b!1248619 () Bool)

(assert (=> b!1248619 (= e!708594 false)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!20494 0))(
  ( (tuple2!20495 (_1!10257 (_ BitVec 64)) (_2!10257 V!47307)) )
))
(declare-datatypes ((List!27752 0))(
  ( (Nil!27749) (Cons!27748 (h!28957 tuple2!20494) (t!41230 List!27752)) )
))
(declare-datatypes ((ListLongMap!18379 0))(
  ( (ListLongMap!18380 (toList!9205 List!27752)) )
))
(declare-fun lt!563430 () ListLongMap!18379)

(declare-fun minValueAfter!43 () V!47307)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47307)

(declare-fun getCurrentListMapNoExtraKeys!5588 (array!80583 array!80585 (_ BitVec 32) (_ BitVec 32) V!47307 V!47307 (_ BitVec 32) Int) ListLongMap!18379)

(assert (=> b!1248619 (= lt!563430 (getCurrentListMapNoExtraKeys!5588 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun minValueBefore!43 () V!47307)

(declare-fun lt!563429 () ListLongMap!18379)

(assert (=> b!1248619 (= lt!563429 (getCurrentListMapNoExtraKeys!5588 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1248620 () Bool)

(declare-fun e!708595 () Bool)

(assert (=> b!1248620 (= e!708595 tp_is_empty!31457)))

(declare-fun b!1248621 () Bool)

(declare-fun mapRes!48946 () Bool)

(assert (=> b!1248621 (= e!708597 (and e!708595 mapRes!48946))))

(declare-fun condMapEmpty!48946 () Bool)

(declare-fun mapDefault!48946 () ValueCell!14965)

