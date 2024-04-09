; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73280 () Bool)

(assert start!73280)

(declare-fun b_free!14167 () Bool)

(declare-fun b_next!14167 () Bool)

(assert (=> start!73280 (= b_free!14167 (not b_next!14167))))

(declare-fun tp!50005 () Bool)

(declare-fun b_and!23511 () Bool)

(assert (=> start!73280 (= tp!50005 b_and!23511)))

(declare-fun b!853929 () Bool)

(declare-fun e!476213 () Bool)

(declare-fun tp_is_empty!16303 () Bool)

(assert (=> b!853929 (= e!476213 tp_is_empty!16303)))

(declare-fun b!853930 () Bool)

(declare-fun e!476218 () Bool)

(declare-fun e!476219 () Bool)

(assert (=> b!853930 (= e!476218 e!476219)))

(declare-fun res!580049 () Bool)

(assert (=> b!853930 (=> (not res!580049) (not e!476219))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!853930 (= res!580049 (= from!1053 i!612))))

(declare-datatypes ((V!26785 0))(
  ( (V!26786 (val!8199 Int)) )
))
(declare-datatypes ((tuple2!10792 0))(
  ( (tuple2!10793 (_1!5406 (_ BitVec 64)) (_2!5406 V!26785)) )
))
(declare-datatypes ((List!16668 0))(
  ( (Nil!16665) (Cons!16664 (h!17795 tuple2!10792) (t!23289 List!16668)) )
))
(declare-datatypes ((ListLongMap!9575 0))(
  ( (ListLongMap!9576 (toList!4803 List!16668)) )
))
(declare-fun lt!385093 () ListLongMap!9575)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7712 0))(
  ( (ValueCellFull!7712 (v!10620 V!26785)) (EmptyCell!7712) )
))
(declare-datatypes ((array!48786 0))(
  ( (array!48787 (arr!23420 (Array (_ BitVec 32) ValueCell!7712)) (size!23861 (_ BitVec 32))) )
))
(declare-fun lt!385097 () array!48786)

(declare-datatypes ((array!48788 0))(
  ( (array!48789 (arr!23421 (Array (_ BitVec 32) (_ BitVec 64))) (size!23862 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48788)

(declare-fun minValue!654 () V!26785)

(declare-fun zeroValue!654 () V!26785)

(declare-fun getCurrentListMapNoExtraKeys!2785 (array!48788 array!48786 (_ BitVec 32) (_ BitVec 32) V!26785 V!26785 (_ BitVec 32) Int) ListLongMap!9575)

(assert (=> b!853930 (= lt!385093 (getCurrentListMapNoExtraKeys!2785 _keys!868 lt!385097 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26785)

(declare-fun _values!688 () array!48786)

(assert (=> b!853930 (= lt!385097 (array!48787 (store (arr!23420 _values!688) i!612 (ValueCellFull!7712 v!557)) (size!23861 _values!688)))))

(declare-fun lt!385090 () ListLongMap!9575)

(assert (=> b!853930 (= lt!385090 (getCurrentListMapNoExtraKeys!2785 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!853931 () Bool)

(declare-fun e!476214 () Bool)

(declare-fun mapRes!26054 () Bool)

(assert (=> b!853931 (= e!476214 (and e!476213 mapRes!26054))))

(declare-fun condMapEmpty!26054 () Bool)

(declare-fun mapDefault!26054 () ValueCell!7712)

