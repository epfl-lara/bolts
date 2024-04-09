; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42518 () Bool)

(assert start!42518)

(declare-fun b_free!11965 () Bool)

(declare-fun b_next!11965 () Bool)

(assert (=> start!42518 (= b_free!11965 (not b_next!11965))))

(declare-fun tp!41932 () Bool)

(declare-fun b_and!20451 () Bool)

(assert (=> start!42518 (= tp!41932 b_and!20451)))

(declare-fun b!474138 () Bool)

(declare-fun res!283276 () Bool)

(declare-fun e!278296 () Bool)

(assert (=> b!474138 (=> (not res!283276) (not e!278296))))

(declare-datatypes ((array!30503 0))(
  ( (array!30504 (arr!14667 (Array (_ BitVec 32) (_ BitVec 64))) (size!15019 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30503)

(declare-datatypes ((List!8993 0))(
  ( (Nil!8990) (Cons!8989 (h!9845 (_ BitVec 64)) (t!14973 List!8993)) )
))
(declare-fun arrayNoDuplicates!0 (array!30503 (_ BitVec 32) List!8993) Bool)

(assert (=> b!474138 (= res!283276 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8990))))

(declare-fun b!474139 () Bool)

(declare-fun e!278295 () Bool)

(assert (=> b!474139 (= e!278295 (bvsle #b00000000000000000000000000000000 (size!15019 _keys!1025)))))

(declare-datatypes ((V!18963 0))(
  ( (V!18964 (val!6741 Int)) )
))
(declare-datatypes ((tuple2!8882 0))(
  ( (tuple2!8883 (_1!4451 (_ BitVec 64)) (_2!4451 V!18963)) )
))
(declare-datatypes ((List!8994 0))(
  ( (Nil!8991) (Cons!8990 (h!9846 tuple2!8882) (t!14974 List!8994)) )
))
(declare-datatypes ((ListLongMap!7809 0))(
  ( (ListLongMap!7810 (toList!3920 List!8994)) )
))
(declare-fun lt!215974 () ListLongMap!7809)

(declare-fun lt!215971 () tuple2!8882)

(declare-fun minValueBefore!38 () V!18963)

(declare-fun +!1725 (ListLongMap!7809 tuple2!8882) ListLongMap!7809)

(assert (=> b!474139 (= (+!1725 lt!215974 lt!215971) (+!1725 (+!1725 lt!215974 (tuple2!8883 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215971))))

(declare-fun minValueAfter!38 () V!18963)

(assert (=> b!474139 (= lt!215971 (tuple2!8883 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13963 0))(
  ( (Unit!13964) )
))
(declare-fun lt!215970 () Unit!13963)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!162 (ListLongMap!7809 (_ BitVec 64) V!18963 V!18963) Unit!13963)

(assert (=> b!474139 (= lt!215970 (addSameAsAddTwiceSameKeyDiffValues!162 lt!215974 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215976 () ListLongMap!7809)

(declare-fun zeroValue!794 () V!18963)

(assert (=> b!474139 (= lt!215974 (+!1725 lt!215976 (tuple2!8883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!215973 () ListLongMap!7809)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6353 0))(
  ( (ValueCellFull!6353 (v!9029 V!18963)) (EmptyCell!6353) )
))
(declare-datatypes ((array!30505 0))(
  ( (array!30506 (arr!14668 (Array (_ BitVec 32) ValueCell!6353)) (size!15020 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30505)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2262 (array!30503 array!30505 (_ BitVec 32) (_ BitVec 32) V!18963 V!18963 (_ BitVec 32) Int) ListLongMap!7809)

(assert (=> b!474139 (= lt!215973 (getCurrentListMap!2262 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!215977 () ListLongMap!7809)

(assert (=> b!474139 (= lt!215977 (getCurrentListMap!2262 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474140 () Bool)

(declare-fun e!278292 () Bool)

(declare-fun e!278293 () Bool)

(declare-fun mapRes!21805 () Bool)

(assert (=> b!474140 (= e!278292 (and e!278293 mapRes!21805))))

(declare-fun condMapEmpty!21805 () Bool)

(declare-fun mapDefault!21805 () ValueCell!6353)

