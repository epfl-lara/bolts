; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74628 () Bool)

(assert start!74628)

(declare-fun b_free!15289 () Bool)

(declare-fun b_next!15289 () Bool)

(assert (=> start!74628 (= b_free!15289 (not b_next!15289))))

(declare-fun tp!53550 () Bool)

(declare-fun b_and!25183 () Bool)

(assert (=> start!74628 (= tp!53550 b_and!25183)))

(declare-fun b!879021 () Bool)

(declare-fun res!597347 () Bool)

(declare-fun e!489217 () Bool)

(assert (=> b!879021 (=> (not res!597347) (not e!489217))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!51172 0))(
  ( (array!51173 (arr!24608 (Array (_ BitVec 32) (_ BitVec 64))) (size!25049 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51172)

(assert (=> b!879021 (= res!597347 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25049 _keys!868))))))

(declare-fun b!879022 () Bool)

(declare-fun res!597345 () Bool)

(assert (=> b!879022 (=> (not res!597345) (not e!489217))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!879022 (= res!597345 (and (= (select (arr!24608 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!879023 () Bool)

(declare-fun res!597348 () Bool)

(assert (=> b!879023 (=> (not res!597348) (not e!489217))))

(declare-datatypes ((List!17556 0))(
  ( (Nil!17553) (Cons!17552 (h!18683 (_ BitVec 64)) (t!24655 List!17556)) )
))
(declare-fun arrayNoDuplicates!0 (array!51172 (_ BitVec 32) List!17556) Bool)

(assert (=> b!879023 (= res!597348 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17553))))

(declare-datatypes ((V!28425 0))(
  ( (V!28426 (val!8814 Int)) )
))
(declare-datatypes ((tuple2!11680 0))(
  ( (tuple2!11681 (_1!5850 (_ BitVec 64)) (_2!5850 V!28425)) )
))
(declare-datatypes ((List!17557 0))(
  ( (Nil!17554) (Cons!17553 (h!18684 tuple2!11680) (t!24656 List!17557)) )
))
(declare-datatypes ((ListLongMap!10463 0))(
  ( (ListLongMap!10464 (toList!5247 List!17557)) )
))
(declare-fun lt!397404 () ListLongMap!10463)

(declare-fun lt!397405 () ListLongMap!10463)

(declare-fun defaultEntry!696 () Int)

(declare-fun b!879024 () Bool)

(declare-fun e!489219 () Bool)

(declare-datatypes ((ValueCell!8327 0))(
  ( (ValueCellFull!8327 (v!11250 V!28425)) (EmptyCell!8327) )
))
(declare-datatypes ((array!51174 0))(
  ( (array!51175 (arr!24609 (Array (_ BitVec 32) ValueCell!8327)) (size!25050 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51174)

(declare-fun +!2453 (ListLongMap!10463 tuple2!11680) ListLongMap!10463)

(declare-fun get!12945 (ValueCell!8327 V!28425) V!28425)

(declare-fun dynLambda!1224 (Int (_ BitVec 64)) V!28425)

(assert (=> b!879024 (= e!489219 (= lt!397405 (+!2453 lt!397404 (tuple2!11681 (select (arr!24608 _keys!868) from!1053) (get!12945 (select (arr!24609 _values!688) from!1053) (dynLambda!1224 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!879025 () Bool)

(declare-fun e!489216 () Bool)

(declare-fun e!489220 () Bool)

(declare-fun mapRes!27915 () Bool)

(assert (=> b!879025 (= e!489216 (and e!489220 mapRes!27915))))

(declare-fun condMapEmpty!27915 () Bool)

(declare-fun mapDefault!27915 () ValueCell!8327)

