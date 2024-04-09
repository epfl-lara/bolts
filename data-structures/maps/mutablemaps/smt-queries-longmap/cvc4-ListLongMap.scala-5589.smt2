; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73350 () Bool)

(assert start!73350)

(declare-fun b_free!14237 () Bool)

(declare-fun b_next!14237 () Bool)

(assert (=> start!73350 (= b_free!14237 (not b_next!14237))))

(declare-fun tp!50216 () Bool)

(declare-fun b_and!23611 () Bool)

(assert (=> start!73350 (= tp!50216 b_and!23611)))

(declare-fun b!855286 () Bool)

(declare-fun e!476868 () Bool)

(declare-fun tp_is_empty!16373 () Bool)

(assert (=> b!855286 (= e!476868 tp_is_empty!16373)))

(declare-fun b!855287 () Bool)

(declare-fun res!580971 () Bool)

(declare-fun e!476869 () Bool)

(assert (=> b!855287 (=> (not res!580971) (not e!476869))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48922 0))(
  ( (array!48923 (arr!23488 (Array (_ BitVec 32) (_ BitVec 64))) (size!23929 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48922)

(declare-datatypes ((V!26877 0))(
  ( (V!26878 (val!8234 Int)) )
))
(declare-datatypes ((ValueCell!7747 0))(
  ( (ValueCellFull!7747 (v!10655 V!26877)) (EmptyCell!7747) )
))
(declare-datatypes ((array!48924 0))(
  ( (array!48925 (arr!23489 (Array (_ BitVec 32) ValueCell!7747)) (size!23930 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48924)

(assert (=> b!855287 (= res!580971 (and (= (size!23930 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23929 _keys!868) (size!23930 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!855288 () Bool)

(declare-fun res!580967 () Bool)

(assert (=> b!855288 (=> (not res!580967) (not e!476869))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!855288 (= res!580967 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23929 _keys!868))))))

(declare-fun b!855289 () Bool)

(declare-fun res!580969 () Bool)

(assert (=> b!855289 (=> (not res!580969) (not e!476869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855289 (= res!580969 (validMask!0 mask!1196))))

(declare-fun b!855290 () Bool)

(assert (=> b!855290 (= e!476869 false)))

(declare-fun v!557 () V!26877)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10838 0))(
  ( (tuple2!10839 (_1!5429 (_ BitVec 64)) (_2!5429 V!26877)) )
))
(declare-datatypes ((List!16714 0))(
  ( (Nil!16711) (Cons!16710 (h!17841 tuple2!10838) (t!23363 List!16714)) )
))
(declare-datatypes ((ListLongMap!9621 0))(
  ( (ListLongMap!9622 (toList!4826 List!16714)) )
))
(declare-fun lt!385644 () ListLongMap!9621)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26877)

(declare-fun zeroValue!654 () V!26877)

(declare-fun getCurrentListMapNoExtraKeys!2808 (array!48922 array!48924 (_ BitVec 32) (_ BitVec 32) V!26877 V!26877 (_ BitVec 32) Int) ListLongMap!9621)

(assert (=> b!855290 (= lt!385644 (getCurrentListMapNoExtraKeys!2808 _keys!868 (array!48925 (store (arr!23489 _values!688) i!612 (ValueCellFull!7747 v!557)) (size!23930 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385643 () ListLongMap!9621)

(assert (=> b!855290 (= lt!385643 (getCurrentListMapNoExtraKeys!2808 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855291 () Bool)

(declare-fun res!580968 () Bool)

(assert (=> b!855291 (=> (not res!580968) (not e!476869))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855291 (= res!580968 (validKeyInArray!0 k!854))))

(declare-fun b!855292 () Bool)

(declare-fun e!476871 () Bool)

(declare-fun mapRes!26159 () Bool)

(assert (=> b!855292 (= e!476871 (and e!476868 mapRes!26159))))

(declare-fun condMapEmpty!26159 () Bool)

(declare-fun mapDefault!26159 () ValueCell!7747)

