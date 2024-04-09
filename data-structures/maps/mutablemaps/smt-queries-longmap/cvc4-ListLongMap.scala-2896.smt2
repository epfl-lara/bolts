; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41530 () Bool)

(assert start!41530)

(declare-fun b_free!11189 () Bool)

(declare-fun b_next!11189 () Bool)

(assert (=> start!41530 (= b_free!11189 (not b_next!11189))))

(declare-fun tp!39565 () Bool)

(declare-fun b_and!19547 () Bool)

(assert (=> start!41530 (= tp!39565 b_and!19547)))

(declare-fun b!463636 () Bool)

(declare-fun e!270760 () Bool)

(declare-fun tp_is_empty!12617 () Bool)

(assert (=> b!463636 (= e!270760 tp_is_empty!12617)))

(declare-fun b!463637 () Bool)

(declare-fun e!270757 () Bool)

(assert (=> b!463637 (= e!270757 false)))

(declare-datatypes ((V!17927 0))(
  ( (V!17928 (val!6353 Int)) )
))
(declare-fun zeroValue!794 () V!17927)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28991 0))(
  ( (array!28992 (arr!13924 (Array (_ BitVec 32) (_ BitVec 64))) (size!14276 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28991)

(declare-datatypes ((ValueCell!5965 0))(
  ( (ValueCellFull!5965 (v!8636 V!17927)) (EmptyCell!5965) )
))
(declare-datatypes ((array!28993 0))(
  ( (array!28994 (arr!13925 (Array (_ BitVec 32) ValueCell!5965)) (size!14277 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28993)

(declare-datatypes ((tuple2!8302 0))(
  ( (tuple2!8303 (_1!4161 (_ BitVec 64)) (_2!4161 V!17927)) )
))
(declare-datatypes ((List!8427 0))(
  ( (Nil!8424) (Cons!8423 (h!9279 tuple2!8302) (t!14381 List!8427)) )
))
(declare-datatypes ((ListLongMap!7229 0))(
  ( (ListLongMap!7230 (toList!3630 List!8427)) )
))
(declare-fun lt!209454 () ListLongMap!7229)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!17927)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1798 (array!28991 array!28993 (_ BitVec 32) (_ BitVec 32) V!17927 V!17927 (_ BitVec 32) Int) ListLongMap!7229)

(assert (=> b!463637 (= lt!209454 (getCurrentListMapNoExtraKeys!1798 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!209453 () ListLongMap!7229)

(declare-fun minValueBefore!38 () V!17927)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!463637 (= lt!209453 (getCurrentListMapNoExtraKeys!1798 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463638 () Bool)

(declare-fun res!277280 () Bool)

(assert (=> b!463638 (=> (not res!277280) (not e!270757))))

(declare-datatypes ((List!8428 0))(
  ( (Nil!8425) (Cons!8424 (h!9280 (_ BitVec 64)) (t!14382 List!8428)) )
))
(declare-fun arrayNoDuplicates!0 (array!28991 (_ BitVec 32) List!8428) Bool)

(assert (=> b!463638 (= res!277280 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8425))))

(declare-fun mapNonEmpty!20602 () Bool)

(declare-fun mapRes!20602 () Bool)

(declare-fun tp!39564 () Bool)

(declare-fun e!270759 () Bool)

(assert (=> mapNonEmpty!20602 (= mapRes!20602 (and tp!39564 e!270759))))

(declare-fun mapRest!20602 () (Array (_ BitVec 32) ValueCell!5965))

(declare-fun mapValue!20602 () ValueCell!5965)

(declare-fun mapKey!20602 () (_ BitVec 32))

(assert (=> mapNonEmpty!20602 (= (arr!13925 _values!833) (store mapRest!20602 mapKey!20602 mapValue!20602))))

(declare-fun b!463639 () Bool)

(declare-fun e!270758 () Bool)

(assert (=> b!463639 (= e!270758 (and e!270760 mapRes!20602))))

(declare-fun condMapEmpty!20602 () Bool)

(declare-fun mapDefault!20602 () ValueCell!5965)

