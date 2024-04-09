; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72938 () Bool)

(assert start!72938)

(declare-fun b_free!13825 () Bool)

(declare-fun b_next!13825 () Bool)

(assert (=> start!72938 (= b_free!13825 (not b_next!13825))))

(declare-fun tp!48979 () Bool)

(declare-fun b_and!22929 () Bool)

(assert (=> start!72938 (= tp!48979 b_and!22929)))

(declare-fun b!846346 () Bool)

(declare-fun res!575124 () Bool)

(declare-fun e!472395 () Bool)

(assert (=> b!846346 (=> (not res!575124) (not e!472395))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!48120 0))(
  ( (array!48121 (arr!23087 (Array (_ BitVec 32) (_ BitVec 64))) (size!23528 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48120)

(declare-datatypes ((V!26329 0))(
  ( (V!26330 (val!8028 Int)) )
))
(declare-datatypes ((ValueCell!7541 0))(
  ( (ValueCellFull!7541 (v!10449 V!26329)) (EmptyCell!7541) )
))
(declare-datatypes ((array!48122 0))(
  ( (array!48123 (arr!23088 (Array (_ BitVec 32) ValueCell!7541)) (size!23529 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48122)

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!846346 (= res!575124 (and (= (size!23529 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23528 _keys!868) (size!23529 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25541 () Bool)

(declare-fun mapRes!25541 () Bool)

(assert (=> mapIsEmpty!25541 mapRes!25541))

(declare-fun b!846347 () Bool)

(declare-fun res!575126 () Bool)

(assert (=> b!846347 (=> (not res!575126) (not e!472395))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!846347 (= res!575126 (and (= (select (arr!23087 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!846348 () Bool)

(declare-fun e!472391 () Bool)

(declare-fun tp_is_empty!15961 () Bool)

(assert (=> b!846348 (= e!472391 tp_is_empty!15961)))

(declare-fun b!846349 () Bool)

(declare-fun e!472394 () Bool)

(assert (=> b!846349 (= e!472394 tp_is_empty!15961)))

(declare-fun b!846350 () Bool)

(declare-fun res!575130 () Bool)

(assert (=> b!846350 (=> (not res!575130) (not e!472395))))

(assert (=> b!846350 (= res!575130 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23528 _keys!868))))))

(declare-fun b!846351 () Bool)

(declare-fun e!472392 () Bool)

(assert (=> b!846351 (= e!472392 (and e!472394 mapRes!25541))))

(declare-fun condMapEmpty!25541 () Bool)

(declare-fun mapDefault!25541 () ValueCell!7541)

