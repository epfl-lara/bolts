; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42412 () Bool)

(assert start!42412)

(declare-fun b_free!11879 () Bool)

(declare-fun b_next!11879 () Bool)

(assert (=> start!42412 (= b_free!11879 (not b_next!11879))))

(declare-fun tp!41670 () Bool)

(declare-fun b_and!20353 () Bool)

(assert (=> start!42412 (= tp!41670 b_and!20353)))

(declare-fun b!472925 () Bool)

(declare-fun e!277409 () Bool)

(declare-fun tp_is_empty!13307 () Bool)

(assert (=> b!472925 (= e!277409 tp_is_empty!13307)))

(declare-fun b!472926 () Bool)

(declare-fun res!282556 () Bool)

(declare-fun e!277406 () Bool)

(assert (=> b!472926 (=> (not res!282556) (not e!277406))))

(declare-datatypes ((array!30337 0))(
  ( (array!30338 (arr!14585 (Array (_ BitVec 32) (_ BitVec 64))) (size!14937 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30337)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30337 (_ BitVec 32)) Bool)

(assert (=> b!472926 (= res!282556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!472927 () Bool)

(declare-fun res!282552 () Bool)

(assert (=> b!472927 (=> (not res!282552) (not e!277406))))

(declare-datatypes ((List!8931 0))(
  ( (Nil!8928) (Cons!8927 (h!9783 (_ BitVec 64)) (t!14909 List!8931)) )
))
(declare-fun arrayNoDuplicates!0 (array!30337 (_ BitVec 32) List!8931) Bool)

(assert (=> b!472927 (= res!282552 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8928))))

(declare-fun b!472928 () Bool)

(declare-fun e!277408 () Bool)

(assert (=> b!472928 (= e!277406 (not e!277408))))

(declare-fun res!282554 () Bool)

(assert (=> b!472928 (=> res!282554 e!277408)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!472928 (= res!282554 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18847 0))(
  ( (V!18848 (val!6698 Int)) )
))
(declare-datatypes ((tuple2!8816 0))(
  ( (tuple2!8817 (_1!4418 (_ BitVec 64)) (_2!4418 V!18847)) )
))
(declare-datatypes ((List!8932 0))(
  ( (Nil!8929) (Cons!8928 (h!9784 tuple2!8816) (t!14910 List!8932)) )
))
(declare-datatypes ((ListLongMap!7743 0))(
  ( (ListLongMap!7744 (toList!3887 List!8932)) )
))
(declare-fun lt!214787 () ListLongMap!7743)

(declare-fun lt!214784 () ListLongMap!7743)

(assert (=> b!472928 (= lt!214787 lt!214784)))

(declare-fun minValueBefore!38 () V!18847)

(declare-fun zeroValue!794 () V!18847)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13895 0))(
  ( (Unit!13896) )
))
(declare-fun lt!214789 () Unit!13895)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6310 0))(
  ( (ValueCellFull!6310 (v!8985 V!18847)) (EmptyCell!6310) )
))
(declare-datatypes ((array!30339 0))(
  ( (array!30340 (arr!14586 (Array (_ BitVec 32) ValueCell!6310)) (size!14938 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30339)

(declare-fun minValueAfter!38 () V!18847)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!241 (array!30337 array!30339 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18847 V!18847 V!18847 V!18847 (_ BitVec 32) Int) Unit!13895)

(assert (=> b!472928 (= lt!214789 (lemmaNoChangeToArrayThenSameMapNoExtras!241 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2046 (array!30337 array!30339 (_ BitVec 32) (_ BitVec 32) V!18847 V!18847 (_ BitVec 32) Int) ListLongMap!7743)

(assert (=> b!472928 (= lt!214784 (getCurrentListMapNoExtraKeys!2046 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472928 (= lt!214787 (getCurrentListMapNoExtraKeys!2046 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472929 () Bool)

(assert (=> b!472929 (= e!277408 true)))

(declare-fun lt!214790 () ListLongMap!7743)

(declare-fun lt!214788 () tuple2!8816)

(declare-fun +!1696 (ListLongMap!7743 tuple2!8816) ListLongMap!7743)

(assert (=> b!472929 (= (+!1696 lt!214790 lt!214788) (+!1696 (+!1696 lt!214790 (tuple2!8817 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!214788))))

(assert (=> b!472929 (= lt!214788 (tuple2!8817 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!214785 () Unit!13895)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!133 (ListLongMap!7743 (_ BitVec 64) V!18847 V!18847) Unit!13895)

(assert (=> b!472929 (= lt!214785 (addSameAsAddTwiceSameKeyDiffValues!133 lt!214790 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> b!472929 (= lt!214790 (+!1696 lt!214787 (tuple2!8817 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!214786 () ListLongMap!7743)

(declare-fun getCurrentListMap!2233 (array!30337 array!30339 (_ BitVec 32) (_ BitVec 32) V!18847 V!18847 (_ BitVec 32) Int) ListLongMap!7743)

(assert (=> b!472929 (= lt!214786 (getCurrentListMap!2233 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!214783 () ListLongMap!7743)

(assert (=> b!472929 (= lt!214783 (getCurrentListMap!2233 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472930 () Bool)

(declare-fun e!277405 () Bool)

(declare-fun mapRes!21673 () Bool)

(assert (=> b!472930 (= e!277405 (and e!277409 mapRes!21673))))

(declare-fun condMapEmpty!21673 () Bool)

(declare-fun mapDefault!21673 () ValueCell!6310)

