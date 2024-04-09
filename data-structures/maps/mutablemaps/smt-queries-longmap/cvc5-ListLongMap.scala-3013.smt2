; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42420 () Bool)

(assert start!42420)

(declare-fun b_free!11887 () Bool)

(declare-fun b_next!11887 () Bool)

(assert (=> start!42420 (= b_free!11887 (not b_next!11887))))

(declare-fun tp!41695 () Bool)

(declare-fun b_and!20361 () Bool)

(assert (=> start!42420 (= tp!41695 b_and!20361)))

(declare-fun b!473021 () Bool)

(declare-fun e!277481 () Bool)

(declare-fun e!277477 () Bool)

(assert (=> b!473021 (= e!277481 (not e!277477))))

(declare-fun res!282615 () Bool)

(assert (=> b!473021 (=> res!282615 e!277477)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!473021 (= res!282615 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18859 0))(
  ( (V!18860 (val!6702 Int)) )
))
(declare-datatypes ((tuple2!8822 0))(
  ( (tuple2!8823 (_1!4421 (_ BitVec 64)) (_2!4421 V!18859)) )
))
(declare-datatypes ((List!8936 0))(
  ( (Nil!8933) (Cons!8932 (h!9788 tuple2!8822) (t!14914 List!8936)) )
))
(declare-datatypes ((ListLongMap!7749 0))(
  ( (ListLongMap!7750 (toList!3890 List!8936)) )
))
(declare-fun lt!214884 () ListLongMap!7749)

(declare-fun lt!214883 () ListLongMap!7749)

(assert (=> b!473021 (= lt!214884 lt!214883)))

(declare-fun minValueBefore!38 () V!18859)

(declare-fun zeroValue!794 () V!18859)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13901 0))(
  ( (Unit!13902) )
))
(declare-fun lt!214882 () Unit!13901)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30351 0))(
  ( (array!30352 (arr!14592 (Array (_ BitVec 32) (_ BitVec 64))) (size!14944 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30351)

(declare-datatypes ((ValueCell!6314 0))(
  ( (ValueCellFull!6314 (v!8989 V!18859)) (EmptyCell!6314) )
))
(declare-datatypes ((array!30353 0))(
  ( (array!30354 (arr!14593 (Array (_ BitVec 32) ValueCell!6314)) (size!14945 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30353)

(declare-fun minValueAfter!38 () V!18859)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!244 (array!30351 array!30353 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18859 V!18859 V!18859 V!18859 (_ BitVec 32) Int) Unit!13901)

(assert (=> b!473021 (= lt!214882 (lemmaNoChangeToArrayThenSameMapNoExtras!244 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2049 (array!30351 array!30353 (_ BitVec 32) (_ BitVec 32) V!18859 V!18859 (_ BitVec 32) Int) ListLongMap!7749)

(assert (=> b!473021 (= lt!214883 (getCurrentListMapNoExtraKeys!2049 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473021 (= lt!214884 (getCurrentListMapNoExtraKeys!2049 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473022 () Bool)

(declare-fun e!277479 () Bool)

(declare-fun e!277480 () Bool)

(declare-fun mapRes!21685 () Bool)

(assert (=> b!473022 (= e!277479 (and e!277480 mapRes!21685))))

(declare-fun condMapEmpty!21685 () Bool)

(declare-fun mapDefault!21685 () ValueCell!6314)

