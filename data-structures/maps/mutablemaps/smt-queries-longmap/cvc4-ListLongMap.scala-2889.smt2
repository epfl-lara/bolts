; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41476 () Bool)

(assert start!41476)

(declare-fun b_free!11147 () Bool)

(declare-fun b_next!11147 () Bool)

(assert (=> start!41476 (= b_free!11147 (not b_next!11147))))

(declare-fun tp!39436 () Bool)

(declare-fun b_and!19501 () Bool)

(assert (=> start!41476 (= tp!39436 b_and!19501)))

(declare-fun res!277001 () Bool)

(declare-fun e!270397 () Bool)

(assert (=> start!41476 (=> (not res!277001) (not e!270397))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41476 (= res!277001 (validMask!0 mask!1365))))

(assert (=> start!41476 e!270397))

(declare-fun tp_is_empty!12575 () Bool)

(assert (=> start!41476 tp_is_empty!12575))

(assert (=> start!41476 tp!39436))

(assert (=> start!41476 true))

(declare-datatypes ((array!28909 0))(
  ( (array!28910 (arr!13884 (Array (_ BitVec 32) (_ BitVec 64))) (size!14236 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28909)

(declare-fun array_inv!10016 (array!28909) Bool)

(assert (=> start!41476 (array_inv!10016 _keys!1025)))

(declare-datatypes ((V!17871 0))(
  ( (V!17872 (val!6332 Int)) )
))
(declare-datatypes ((ValueCell!5944 0))(
  ( (ValueCellFull!5944 (v!8615 V!17871)) (EmptyCell!5944) )
))
(declare-datatypes ((array!28911 0))(
  ( (array!28912 (arr!13885 (Array (_ BitVec 32) ValueCell!5944)) (size!14237 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28911)

(declare-fun e!270394 () Bool)

(declare-fun array_inv!10017 (array!28911) Bool)

(assert (=> start!41476 (and (array_inv!10017 _values!833) e!270394)))

(declare-fun b!463122 () Bool)

(assert (=> b!463122 (= e!270397 (bvsgt #b00000000000000000000000000000000 (size!14236 _keys!1025)))))

(declare-datatypes ((tuple2!8270 0))(
  ( (tuple2!8271 (_1!4145 (_ BitVec 64)) (_2!4145 V!17871)) )
))
(declare-datatypes ((List!8396 0))(
  ( (Nil!8393) (Cons!8392 (h!9248 tuple2!8270) (t!14348 List!8396)) )
))
(declare-datatypes ((ListLongMap!7197 0))(
  ( (ListLongMap!7198 (toList!3614 List!8396)) )
))
(declare-fun lt!209298 () ListLongMap!7197)

(declare-fun minValueBefore!38 () V!17871)

(declare-fun zeroValue!794 () V!17871)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1782 (array!28909 array!28911 (_ BitVec 32) (_ BitVec 32) V!17871 V!17871 (_ BitVec 32) Int) ListLongMap!7197)

(assert (=> b!463122 (= lt!209298 (getCurrentListMapNoExtraKeys!1782 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463123 () Bool)

(declare-fun e!270396 () Bool)

(declare-fun mapRes!20536 () Bool)

(assert (=> b!463123 (= e!270394 (and e!270396 mapRes!20536))))

(declare-fun condMapEmpty!20536 () Bool)

(declare-fun mapDefault!20536 () ValueCell!5944)

