; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104750 () Bool)

(assert start!104750)

(declare-fun b_free!26531 () Bool)

(declare-fun b_next!26531 () Bool)

(assert (=> start!104750 (= b_free!26531 (not b_next!26531))))

(declare-fun tp!93081 () Bool)

(declare-fun b_and!44305 () Bool)

(assert (=> start!104750 (= tp!93081 b_and!44305)))

(declare-fun b!1248294 () Bool)

(declare-fun e!708369 () Bool)

(assert (=> b!1248294 (= e!708369 false)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((V!47275 0))(
  ( (V!47276 (val!15779 Int)) )
))
(declare-fun zeroValue!871 () V!47275)

(declare-datatypes ((array!80533 0))(
  ( (array!80534 (arr!38830 (Array (_ BitVec 32) (_ BitVec 64))) (size!39367 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80533)

(declare-fun minValueBefore!43 () V!47275)

(declare-datatypes ((tuple2!20480 0))(
  ( (tuple2!20481 (_1!10250 (_ BitVec 64)) (_2!10250 V!47275)) )
))
(declare-datatypes ((List!27738 0))(
  ( (Nil!27735) (Cons!27734 (h!28943 tuple2!20480) (t!41214 List!27738)) )
))
(declare-datatypes ((ListLongMap!18365 0))(
  ( (ListLongMap!18366 (toList!9198 List!27738)) )
))
(declare-fun lt!563337 () ListLongMap!18365)

(declare-datatypes ((ValueCell!14953 0))(
  ( (ValueCellFull!14953 (v!18475 V!47275)) (EmptyCell!14953) )
))
(declare-datatypes ((array!80535 0))(
  ( (array!80536 (arr!38831 (Array (_ BitVec 32) ValueCell!14953)) (size!39368 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80535)

(declare-fun getCurrentListMapNoExtraKeys!5581 (array!80533 array!80535 (_ BitVec 32) (_ BitVec 32) V!47275 V!47275 (_ BitVec 32) Int) ListLongMap!18365)

(assert (=> b!1248294 (= lt!563337 (getCurrentListMapNoExtraKeys!5581 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!48907 () Bool)

(declare-fun mapRes!48907 () Bool)

(declare-fun tp!93080 () Bool)

(declare-fun e!708366 () Bool)

(assert (=> mapNonEmpty!48907 (= mapRes!48907 (and tp!93080 e!708366))))

(declare-fun mapKey!48907 () (_ BitVec 32))

(declare-fun mapValue!48907 () ValueCell!14953)

(declare-fun mapRest!48907 () (Array (_ BitVec 32) ValueCell!14953))

(assert (=> mapNonEmpty!48907 (= (arr!38831 _values!914) (store mapRest!48907 mapKey!48907 mapValue!48907))))

(declare-fun b!1248295 () Bool)

(declare-fun tp_is_empty!31433 () Bool)

(assert (=> b!1248295 (= e!708366 tp_is_empty!31433)))

(declare-fun b!1248296 () Bool)

(declare-fun res!832904 () Bool)

(assert (=> b!1248296 (=> (not res!832904) (not e!708369))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80533 (_ BitVec 32)) Bool)

(assert (=> b!1248296 (= res!832904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!48907 () Bool)

(assert (=> mapIsEmpty!48907 mapRes!48907))

(declare-fun b!1248298 () Bool)

(declare-fun res!832905 () Bool)

(assert (=> b!1248298 (=> (not res!832905) (not e!708369))))

(declare-datatypes ((List!27739 0))(
  ( (Nil!27736) (Cons!27735 (h!28944 (_ BitVec 64)) (t!41215 List!27739)) )
))
(declare-fun arrayNoDuplicates!0 (array!80533 (_ BitVec 32) List!27739) Bool)

(assert (=> b!1248298 (= res!832905 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27736))))

(declare-fun b!1248299 () Bool)

(declare-fun e!708367 () Bool)

(assert (=> b!1248299 (= e!708367 tp_is_empty!31433)))

(declare-fun b!1248300 () Bool)

(declare-fun e!708368 () Bool)

(assert (=> b!1248300 (= e!708368 (and e!708367 mapRes!48907))))

(declare-fun condMapEmpty!48907 () Bool)

(declare-fun mapDefault!48907 () ValueCell!14953)

