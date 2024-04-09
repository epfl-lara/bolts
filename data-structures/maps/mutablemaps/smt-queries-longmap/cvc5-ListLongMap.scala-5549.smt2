; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73106 () Bool)

(assert start!73106)

(declare-fun b_free!13993 () Bool)

(declare-fun b_next!13993 () Bool)

(assert (=> start!73106 (= b_free!13993 (not b_next!13993))))

(declare-fun tp!49484 () Bool)

(declare-fun b_and!23163 () Bool)

(assert (=> start!73106 (= tp!49484 b_and!23163)))

(declare-fun b!849840 () Bool)

(declare-fun res!577440 () Bool)

(declare-fun e!474128 () Bool)

(assert (=> b!849840 (=> (not res!577440) (not e!474128))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!48450 0))(
  ( (array!48451 (arr!23252 (Array (_ BitVec 32) (_ BitVec 64))) (size!23693 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48450)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!849840 (= res!577440 (and (= (select (arr!23252 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!25793 () Bool)

(declare-fun mapRes!25793 () Bool)

(assert (=> mapIsEmpty!25793 mapRes!25793))

(declare-datatypes ((V!26553 0))(
  ( (V!26554 (val!8112 Int)) )
))
(declare-fun v!557 () V!26553)

(declare-datatypes ((tuple2!10640 0))(
  ( (tuple2!10641 (_1!5330 (_ BitVec 64)) (_2!5330 V!26553)) )
))
(declare-datatypes ((List!16539 0))(
  ( (Nil!16536) (Cons!16535 (h!17666 tuple2!10640) (t!22986 List!16539)) )
))
(declare-datatypes ((ListLongMap!9423 0))(
  ( (ListLongMap!9424 (toList!4727 List!16539)) )
))
(declare-fun call!37835 () ListLongMap!9423)

(declare-fun call!37834 () ListLongMap!9423)

(declare-fun e!474129 () Bool)

(declare-fun b!849841 () Bool)

(declare-fun +!2072 (ListLongMap!9423 tuple2!10640) ListLongMap!9423)

(assert (=> b!849841 (= e!474129 (= call!37834 (+!2072 call!37835 (tuple2!10641 k!854 v!557))))))

(declare-fun b!849842 () Bool)

(declare-fun res!577436 () Bool)

(assert (=> b!849842 (=> (not res!577436) (not e!474128))))

(declare-datatypes ((List!16540 0))(
  ( (Nil!16537) (Cons!16536 (h!17667 (_ BitVec 64)) (t!22987 List!16540)) )
))
(declare-fun arrayNoDuplicates!0 (array!48450 (_ BitVec 32) List!16540) Bool)

(assert (=> b!849842 (= res!577436 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16537))))

(declare-fun b!849843 () Bool)

(assert (=> b!849843 (= e!474129 (= call!37834 call!37835))))

(declare-fun b!849844 () Bool)

(declare-fun res!577435 () Bool)

(assert (=> b!849844 (=> (not res!577435) (not e!474128))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849844 (= res!577435 (validKeyInArray!0 k!854))))

(declare-fun b!849845 () Bool)

(declare-fun e!474132 () Bool)

(declare-fun tp_is_empty!16129 () Bool)

(assert (=> b!849845 (= e!474132 tp_is_empty!16129)))

(declare-fun b!849846 () Bool)

(declare-fun e!474131 () Bool)

(declare-fun e!474125 () Bool)

(assert (=> b!849846 (= e!474131 (and e!474125 mapRes!25793))))

(declare-fun condMapEmpty!25793 () Bool)

(declare-datatypes ((ValueCell!7625 0))(
  ( (ValueCellFull!7625 (v!10533 V!26553)) (EmptyCell!7625) )
))
(declare-datatypes ((array!48452 0))(
  ( (array!48453 (arr!23253 (Array (_ BitVec 32) ValueCell!7625)) (size!23694 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48452)

(declare-fun mapDefault!25793 () ValueCell!7625)

