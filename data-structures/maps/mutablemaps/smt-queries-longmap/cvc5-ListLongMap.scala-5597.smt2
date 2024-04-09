; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73394 () Bool)

(assert start!73394)

(declare-fun b_free!14281 () Bool)

(declare-fun b_next!14281 () Bool)

(assert (=> start!73394 (= b_free!14281 (not b_next!14281))))

(declare-fun tp!50347 () Bool)

(declare-fun b_and!23655 () Bool)

(assert (=> start!73394 (= tp!50347 b_and!23655)))

(declare-fun b!856032 () Bool)

(declare-fun e!477221 () Bool)

(declare-fun tp_is_empty!16417 () Bool)

(assert (=> b!856032 (= e!477221 tp_is_empty!16417)))

(declare-fun mapIsEmpty!26225 () Bool)

(declare-fun mapRes!26225 () Bool)

(assert (=> mapIsEmpty!26225 mapRes!26225))

(declare-fun b!856033 () Bool)

(declare-fun e!477217 () Bool)

(declare-fun e!477220 () Bool)

(assert (=> b!856033 (= e!477217 e!477220)))

(declare-fun res!581522 () Bool)

(assert (=> b!856033 (=> (not res!581522) (not e!477220))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!856033 (= res!581522 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26937 0))(
  ( (V!26938 (val!8256 Int)) )
))
(declare-datatypes ((ValueCell!7769 0))(
  ( (ValueCellFull!7769 (v!10677 V!26937)) (EmptyCell!7769) )
))
(declare-datatypes ((array!49004 0))(
  ( (array!49005 (arr!23529 (Array (_ BitVec 32) ValueCell!7769)) (size!23970 (_ BitVec 32))) )
))
(declare-fun lt!385816 () array!49004)

(declare-datatypes ((array!49006 0))(
  ( (array!49007 (arr!23530 (Array (_ BitVec 32) (_ BitVec 64))) (size!23971 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49006)

(declare-datatypes ((tuple2!10872 0))(
  ( (tuple2!10873 (_1!5446 (_ BitVec 64)) (_2!5446 V!26937)) )
))
(declare-datatypes ((List!16747 0))(
  ( (Nil!16744) (Cons!16743 (h!17874 tuple2!10872) (t!23396 List!16747)) )
))
(declare-datatypes ((ListLongMap!9655 0))(
  ( (ListLongMap!9656 (toList!4843 List!16747)) )
))
(declare-fun lt!385817 () ListLongMap!9655)

(declare-fun minValue!654 () V!26937)

(declare-fun zeroValue!654 () V!26937)

(declare-fun getCurrentListMapNoExtraKeys!2825 (array!49006 array!49004 (_ BitVec 32) (_ BitVec 32) V!26937 V!26937 (_ BitVec 32) Int) ListLongMap!9655)

(assert (=> b!856033 (= lt!385817 (getCurrentListMapNoExtraKeys!2825 _keys!868 lt!385816 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26937)

(declare-fun _values!688 () array!49004)

(assert (=> b!856033 (= lt!385816 (array!49005 (store (arr!23529 _values!688) i!612 (ValueCellFull!7769 v!557)) (size!23970 _values!688)))))

(declare-fun lt!385818 () ListLongMap!9655)

(assert (=> b!856033 (= lt!385818 (getCurrentListMapNoExtraKeys!2825 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!856034 () Bool)

(declare-fun res!581517 () Bool)

(assert (=> b!856034 (=> (not res!581517) (not e!477217))))

(assert (=> b!856034 (= res!581517 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23971 _keys!868))))))

(declare-fun b!856035 () Bool)

(declare-fun e!477218 () Bool)

(declare-fun e!477219 () Bool)

(assert (=> b!856035 (= e!477218 (and e!477219 mapRes!26225))))

(declare-fun condMapEmpty!26225 () Bool)

(declare-fun mapDefault!26225 () ValueCell!7769)

