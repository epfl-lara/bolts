; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41978 () Bool)

(assert start!41978)

(declare-fun b_free!11543 () Bool)

(declare-fun b_next!11543 () Bool)

(assert (=> start!41978 (= b_free!11543 (not b_next!11543))))

(declare-fun tp!40645 () Bool)

(declare-fun b_and!19959 () Bool)

(assert (=> start!41978 (= tp!40645 b_and!19959)))

(declare-fun b!468375 () Bool)

(declare-fun res!279972 () Bool)

(declare-fun e!274143 () Bool)

(assert (=> b!468375 (=> (not res!279972) (not e!274143))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29675 0))(
  ( (array!29676 (arr!14260 (Array (_ BitVec 32) (_ BitVec 64))) (size!14612 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29675)

(declare-datatypes ((V!18399 0))(
  ( (V!18400 (val!6530 Int)) )
))
(declare-datatypes ((ValueCell!6142 0))(
  ( (ValueCellFull!6142 (v!8815 V!18399)) (EmptyCell!6142) )
))
(declare-datatypes ((array!29677 0))(
  ( (array!29678 (arr!14261 (Array (_ BitVec 32) ValueCell!6142)) (size!14613 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29677)

(assert (=> b!468375 (= res!279972 (and (= (size!14613 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14612 _keys!1025) (size!14613 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!279971 () Bool)

(assert (=> start!41978 (=> (not res!279971) (not e!274143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41978 (= res!279971 (validMask!0 mask!1365))))

(assert (=> start!41978 e!274143))

(declare-fun tp_is_empty!12971 () Bool)

(assert (=> start!41978 tp_is_empty!12971))

(assert (=> start!41978 tp!40645))

(assert (=> start!41978 true))

(declare-fun array_inv!10284 (array!29675) Bool)

(assert (=> start!41978 (array_inv!10284 _keys!1025)))

(declare-fun e!274141 () Bool)

(declare-fun array_inv!10285 (array!29677) Bool)

(assert (=> start!41978 (and (array_inv!10285 _values!833) e!274141)))

(declare-fun b!468376 () Bool)

(declare-fun res!279974 () Bool)

(assert (=> b!468376 (=> (not res!279974) (not e!274143))))

(declare-datatypes ((List!8680 0))(
  ( (Nil!8677) (Cons!8676 (h!9532 (_ BitVec 64)) (t!14646 List!8680)) )
))
(declare-fun arrayNoDuplicates!0 (array!29675 (_ BitVec 32) List!8680) Bool)

(assert (=> b!468376 (= res!279974 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8677))))

(declare-fun b!468377 () Bool)

(declare-fun e!274146 () Bool)

(assert (=> b!468377 (= e!274146 tp_is_empty!12971)))

(declare-fun b!468378 () Bool)

(declare-fun e!274144 () Bool)

(assert (=> b!468378 (= e!274144 tp_is_empty!12971)))

(declare-fun b!468379 () Bool)

(declare-fun e!274145 () Bool)

(assert (=> b!468379 (= e!274145 true)))

(declare-datatypes ((tuple2!8560 0))(
  ( (tuple2!8561 (_1!4290 (_ BitVec 64)) (_2!4290 V!18399)) )
))
(declare-datatypes ((List!8681 0))(
  ( (Nil!8678) (Cons!8677 (h!9533 tuple2!8560) (t!14647 List!8681)) )
))
(declare-datatypes ((ListLongMap!7487 0))(
  ( (ListLongMap!7488 (toList!3759 List!8681)) )
))
(declare-fun lt!211917 () ListLongMap!7487)

(declare-fun lt!211918 () tuple2!8560)

(declare-fun minValueBefore!38 () V!18399)

(declare-fun +!1651 (ListLongMap!7487 tuple2!8560) ListLongMap!7487)

(assert (=> b!468379 (= (+!1651 lt!211917 lt!211918) (+!1651 (+!1651 lt!211917 (tuple2!8561 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!211918))))

(declare-fun minValueAfter!38 () V!18399)

(assert (=> b!468379 (= lt!211918 (tuple2!8561 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13640 0))(
  ( (Unit!13641) )
))
(declare-fun lt!211921 () Unit!13640)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!92 (ListLongMap!7487 (_ BitVec 64) V!18399 V!18399) Unit!13640)

(assert (=> b!468379 (= lt!211921 (addSameAsAddTwiceSameKeyDiffValues!92 lt!211917 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!211922 () ListLongMap!7487)

(declare-fun zeroValue!794 () V!18399)

(declare-fun defaultEntry!841 () Int)

(declare-fun getCurrentListMap!2173 (array!29675 array!29677 (_ BitVec 32) (_ BitVec 32) V!18399 V!18399 (_ BitVec 32) Int) ListLongMap!7487)

(assert (=> b!468379 (= lt!211922 (getCurrentListMap!2173 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!211919 () ListLongMap!7487)

(assert (=> b!468379 (= lt!211919 (getCurrentListMap!2173 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468380 () Bool)

(declare-fun mapRes!21151 () Bool)

(assert (=> b!468380 (= e!274141 (and e!274146 mapRes!21151))))

(declare-fun condMapEmpty!21151 () Bool)

(declare-fun mapDefault!21151 () ValueCell!6142)

