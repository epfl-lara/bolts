; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42360 () Bool)

(assert start!42360)

(declare-fun b_free!11843 () Bool)

(declare-fun b_next!11843 () Bool)

(assert (=> start!42360 (= b_free!11843 (not b_next!11843))))

(declare-fun tp!41559 () Bool)

(declare-fun b_and!20307 () Bool)

(assert (=> start!42360 (= tp!41559 b_and!20307)))

(declare-fun b!472345 () Bool)

(declare-fun e!276992 () Bool)

(declare-fun e!276987 () Bool)

(assert (=> b!472345 (= e!276992 (not e!276987))))

(declare-fun res!282227 () Bool)

(assert (=> b!472345 (=> res!282227 e!276987)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!472345 (= res!282227 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18799 0))(
  ( (V!18800 (val!6680 Int)) )
))
(declare-datatypes ((tuple2!8786 0))(
  ( (tuple2!8787 (_1!4403 (_ BitVec 64)) (_2!4403 V!18799)) )
))
(declare-datatypes ((List!8901 0))(
  ( (Nil!8898) (Cons!8897 (h!9753 tuple2!8786) (t!14877 List!8901)) )
))
(declare-datatypes ((ListLongMap!7713 0))(
  ( (ListLongMap!7714 (toList!3872 List!8901)) )
))
(declare-fun lt!214357 () ListLongMap!7713)

(declare-fun lt!214359 () ListLongMap!7713)

(assert (=> b!472345 (= lt!214357 lt!214359)))

(declare-fun zeroValue!794 () V!18799)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13864 0))(
  ( (Unit!13865) )
))
(declare-fun lt!214358 () Unit!13864)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueBefore!38 () V!18799)

(declare-datatypes ((array!30263 0))(
  ( (array!30264 (arr!14549 (Array (_ BitVec 32) (_ BitVec 64))) (size!14901 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30263)

(declare-datatypes ((ValueCell!6292 0))(
  ( (ValueCellFull!6292 (v!8967 V!18799)) (EmptyCell!6292) )
))
(declare-datatypes ((array!30265 0))(
  ( (array!30266 (arr!14550 (Array (_ BitVec 32) ValueCell!6292)) (size!14902 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30265)

(declare-fun minValueAfter!38 () V!18799)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!226 (array!30263 array!30265 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18799 V!18799 V!18799 V!18799 (_ BitVec 32) Int) Unit!13864)

(assert (=> b!472345 (= lt!214358 (lemmaNoChangeToArrayThenSameMapNoExtras!226 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2031 (array!30263 array!30265 (_ BitVec 32) (_ BitVec 32) V!18799 V!18799 (_ BitVec 32) Int) ListLongMap!7713)

(assert (=> b!472345 (= lt!214359 (getCurrentListMapNoExtraKeys!2031 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472345 (= lt!214357 (getCurrentListMapNoExtraKeys!2031 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472346 () Bool)

(declare-fun res!282228 () Bool)

(assert (=> b!472346 (=> (not res!282228) (not e!276992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30263 (_ BitVec 32)) Bool)

(assert (=> b!472346 (= res!282228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!282224 () Bool)

(assert (=> start!42360 (=> (not res!282224) (not e!276992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42360 (= res!282224 (validMask!0 mask!1365))))

(assert (=> start!42360 e!276992))

(declare-fun tp_is_empty!13271 () Bool)

(assert (=> start!42360 tp_is_empty!13271))

(assert (=> start!42360 tp!41559))

(assert (=> start!42360 true))

(declare-fun array_inv!10494 (array!30263) Bool)

(assert (=> start!42360 (array_inv!10494 _keys!1025)))

(declare-fun e!276990 () Bool)

(declare-fun array_inv!10495 (array!30265) Bool)

(assert (=> start!42360 (and (array_inv!10495 _values!833) e!276990)))

(declare-fun b!472347 () Bool)

(declare-fun res!282225 () Bool)

(assert (=> b!472347 (=> (not res!282225) (not e!276992))))

(declare-datatypes ((List!8902 0))(
  ( (Nil!8899) (Cons!8898 (h!9754 (_ BitVec 64)) (t!14878 List!8902)) )
))
(declare-fun arrayNoDuplicates!0 (array!30263 (_ BitVec 32) List!8902) Bool)

(assert (=> b!472347 (= res!282225 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8899))))

(declare-fun mapIsEmpty!21616 () Bool)

(declare-fun mapRes!21616 () Bool)

(assert (=> mapIsEmpty!21616 mapRes!21616))

(declare-fun b!472348 () Bool)

(declare-fun e!276988 () Bool)

(assert (=> b!472348 (= e!276990 (and e!276988 mapRes!21616))))

(declare-fun condMapEmpty!21616 () Bool)

(declare-fun mapDefault!21616 () ValueCell!6292)

