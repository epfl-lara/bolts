; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41466 () Bool)

(assert start!41466)

(declare-fun b_free!11137 () Bool)

(declare-fun b_next!11137 () Bool)

(assert (=> start!41466 (= b_free!11137 (not b_next!11137))))

(declare-fun tp!39406 () Bool)

(declare-fun b_and!19491 () Bool)

(assert (=> start!41466 (= tp!39406 b_and!19491)))

(declare-fun b!463017 () Bool)

(declare-fun res!276941 () Bool)

(declare-fun e!270322 () Bool)

(assert (=> b!463017 (=> (not res!276941) (not e!270322))))

(declare-datatypes ((array!28889 0))(
  ( (array!28890 (arr!13874 (Array (_ BitVec 32) (_ BitVec 64))) (size!14226 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28889)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28889 (_ BitVec 32)) Bool)

(assert (=> b!463017 (= res!276941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463018 () Bool)

(declare-fun e!270318 () Bool)

(declare-fun tp_is_empty!12565 () Bool)

(assert (=> b!463018 (= e!270318 tp_is_empty!12565)))

(declare-fun b!463019 () Bool)

(declare-fun res!276942 () Bool)

(assert (=> b!463019 (=> (not res!276942) (not e!270322))))

(declare-datatypes ((List!8387 0))(
  ( (Nil!8384) (Cons!8383 (h!9239 (_ BitVec 64)) (t!14339 List!8387)) )
))
(declare-fun arrayNoDuplicates!0 (array!28889 (_ BitVec 32) List!8387) Bool)

(assert (=> b!463019 (= res!276942 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8384))))

(declare-fun b!463020 () Bool)

(assert (=> b!463020 (= e!270322 false)))

(declare-datatypes ((V!17859 0))(
  ( (V!17860 (val!6327 Int)) )
))
(declare-datatypes ((tuple2!8260 0))(
  ( (tuple2!8261 (_1!4140 (_ BitVec 64)) (_2!4140 V!17859)) )
))
(declare-datatypes ((List!8388 0))(
  ( (Nil!8385) (Cons!8384 (h!9240 tuple2!8260) (t!14340 List!8388)) )
))
(declare-datatypes ((ListLongMap!7187 0))(
  ( (ListLongMap!7188 (toList!3609 List!8388)) )
))
(declare-fun lt!209283 () ListLongMap!7187)

(declare-fun minValueBefore!38 () V!17859)

(declare-fun zeroValue!794 () V!17859)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5939 0))(
  ( (ValueCellFull!5939 (v!8610 V!17859)) (EmptyCell!5939) )
))
(declare-datatypes ((array!28891 0))(
  ( (array!28892 (arr!13875 (Array (_ BitVec 32) ValueCell!5939)) (size!14227 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28891)

(declare-fun getCurrentListMapNoExtraKeys!1777 (array!28889 array!28891 (_ BitVec 32) (_ BitVec 32) V!17859 V!17859 (_ BitVec 32) Int) ListLongMap!7187)

(assert (=> b!463020 (= lt!209283 (getCurrentListMapNoExtraKeys!1777 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463021 () Bool)

(declare-fun e!270321 () Bool)

(declare-fun e!270320 () Bool)

(declare-fun mapRes!20521 () Bool)

(assert (=> b!463021 (= e!270321 (and e!270320 mapRes!20521))))

(declare-fun condMapEmpty!20521 () Bool)

(declare-fun mapDefault!20521 () ValueCell!5939)

