; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42480 () Bool)

(assert start!42480)

(declare-fun b_free!11927 () Bool)

(declare-fun b_next!11927 () Bool)

(assert (=> start!42480 (= b_free!11927 (not b_next!11927))))

(declare-fun tp!41817 () Bool)

(declare-fun b_and!20413 () Bool)

(assert (=> start!42480 (= tp!41817 b_and!20413)))

(declare-fun b!473682 () Bool)

(declare-fun e!277951 () Bool)

(assert (=> b!473682 (= e!277951 true)))

(declare-datatypes ((V!18911 0))(
  ( (V!18912 (val!6722 Int)) )
))
(declare-datatypes ((tuple2!8854 0))(
  ( (tuple2!8855 (_1!4437 (_ BitVec 64)) (_2!4437 V!18911)) )
))
(declare-datatypes ((List!8964 0))(
  ( (Nil!8961) (Cons!8960 (h!9816 tuple2!8854) (t!14944 List!8964)) )
))
(declare-datatypes ((ListLongMap!7781 0))(
  ( (ListLongMap!7782 (toList!3906 List!8964)) )
))
(declare-fun lt!215518 () ListLongMap!7781)

(declare-fun lt!215519 () tuple2!8854)

(declare-fun minValueBefore!38 () V!18911)

(declare-fun +!1712 (ListLongMap!7781 tuple2!8854) ListLongMap!7781)

(assert (=> b!473682 (= (+!1712 lt!215518 lt!215519) (+!1712 (+!1712 lt!215518 (tuple2!8855 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215519))))

(declare-fun minValueAfter!38 () V!18911)

(assert (=> b!473682 (= lt!215519 (tuple2!8855 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13935 0))(
  ( (Unit!13936) )
))
(declare-fun lt!215515 () Unit!13935)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!149 (ListLongMap!7781 (_ BitVec 64) V!18911 V!18911) Unit!13935)

(assert (=> b!473682 (= lt!215515 (addSameAsAddTwiceSameKeyDiffValues!149 lt!215518 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215520 () ListLongMap!7781)

(declare-fun zeroValue!794 () V!18911)

(assert (=> b!473682 (= lt!215518 (+!1712 lt!215520 (tuple2!8855 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!215514 () ListLongMap!7781)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30429 0))(
  ( (array!30430 (arr!14630 (Array (_ BitVec 32) (_ BitVec 64))) (size!14982 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30429)

(declare-datatypes ((ValueCell!6334 0))(
  ( (ValueCellFull!6334 (v!9010 V!18911)) (EmptyCell!6334) )
))
(declare-datatypes ((array!30431 0))(
  ( (array!30432 (arr!14631 (Array (_ BitVec 32) ValueCell!6334)) (size!14983 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30431)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2249 (array!30429 array!30431 (_ BitVec 32) (_ BitVec 32) V!18911 V!18911 (_ BitVec 32) Int) ListLongMap!7781)

(assert (=> b!473682 (= lt!215514 (getCurrentListMap!2249 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!215521 () ListLongMap!7781)

(assert (=> b!473682 (= lt!215521 (getCurrentListMap!2249 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473683 () Bool)

(declare-fun e!277953 () Bool)

(assert (=> b!473683 (= e!277953 (not e!277951))))

(declare-fun res!282992 () Bool)

(assert (=> b!473683 (=> res!282992 e!277951)))

(assert (=> b!473683 (= res!282992 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!215517 () ListLongMap!7781)

(assert (=> b!473683 (= lt!215520 lt!215517)))

(declare-fun lt!215516 () Unit!13935)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!258 (array!30429 array!30431 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18911 V!18911 V!18911 V!18911 (_ BitVec 32) Int) Unit!13935)

(assert (=> b!473683 (= lt!215516 (lemmaNoChangeToArrayThenSameMapNoExtras!258 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2063 (array!30429 array!30431 (_ BitVec 32) (_ BitVec 32) V!18911 V!18911 (_ BitVec 32) Int) ListLongMap!7781)

(assert (=> b!473683 (= lt!215517 (getCurrentListMapNoExtraKeys!2063 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473683 (= lt!215520 (getCurrentListMapNoExtraKeys!2063 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473684 () Bool)

(declare-fun e!277954 () Bool)

(declare-fun e!277955 () Bool)

(declare-fun mapRes!21748 () Bool)

(assert (=> b!473684 (= e!277954 (and e!277955 mapRes!21748))))

(declare-fun condMapEmpty!21748 () Bool)

(declare-fun mapDefault!21748 () ValueCell!6334)

