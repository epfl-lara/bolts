; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73290 () Bool)

(assert start!73290)

(declare-fun b_free!14177 () Bool)

(declare-fun b_next!14177 () Bool)

(assert (=> start!73290 (= b_free!14177 (not b_next!14177))))

(declare-fun tp!50035 () Bool)

(declare-fun b_and!23531 () Bool)

(assert (=> start!73290 (= tp!50035 b_and!23531)))

(declare-fun b!854164 () Bool)

(declare-fun res!580195 () Bool)

(declare-fun e!476333 () Bool)

(assert (=> b!854164 (=> (not res!580195) (not e!476333))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48806 0))(
  ( (array!48807 (arr!23430 (Array (_ BitVec 32) (_ BitVec 64))) (size!23871 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48806)

(assert (=> b!854164 (= res!580195 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23871 _keys!868))))))

(declare-fun b!854165 () Bool)

(declare-fun e!476335 () Bool)

(declare-datatypes ((V!26797 0))(
  ( (V!26798 (val!8204 Int)) )
))
(declare-datatypes ((tuple2!10800 0))(
  ( (tuple2!10801 (_1!5410 (_ BitVec 64)) (_2!5410 V!26797)) )
))
(declare-datatypes ((List!16674 0))(
  ( (Nil!16671) (Cons!16670 (h!17801 tuple2!10800) (t!23305 List!16674)) )
))
(declare-datatypes ((ListLongMap!9583 0))(
  ( (ListLongMap!9584 (toList!4807 List!16674)) )
))
(declare-fun call!38387 () ListLongMap!9583)

(declare-fun call!38386 () ListLongMap!9583)

(assert (=> b!854165 (= e!476335 (= call!38387 call!38386))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun bm!38383 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7717 0))(
  ( (ValueCellFull!7717 (v!10625 V!26797)) (EmptyCell!7717) )
))
(declare-datatypes ((array!48808 0))(
  ( (array!48809 (arr!23431 (Array (_ BitVec 32) ValueCell!7717)) (size!23872 (_ BitVec 32))) )
))
(declare-fun lt!385242 () array!48808)

(declare-fun minValue!654 () V!26797)

(declare-fun zeroValue!654 () V!26797)

(declare-fun getCurrentListMapNoExtraKeys!2789 (array!48806 array!48808 (_ BitVec 32) (_ BitVec 32) V!26797 V!26797 (_ BitVec 32) Int) ListLongMap!9583)

(assert (=> bm!38383 (= call!38387 (getCurrentListMapNoExtraKeys!2789 _keys!868 lt!385242 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854166 () Bool)

(declare-fun e!476340 () Bool)

(declare-fun e!476338 () Bool)

(declare-fun mapRes!26069 () Bool)

(assert (=> b!854166 (= e!476340 (and e!476338 mapRes!26069))))

(declare-fun condMapEmpty!26069 () Bool)

(declare-fun _values!688 () array!48808)

(declare-fun mapDefault!26069 () ValueCell!7717)

