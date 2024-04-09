; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73398 () Bool)

(assert start!73398)

(declare-fun b_free!14285 () Bool)

(declare-fun b_next!14285 () Bool)

(assert (=> start!73398 (= b_free!14285 (not b_next!14285))))

(declare-fun tp!50359 () Bool)

(declare-fun b_and!23659 () Bool)

(assert (=> start!73398 (= tp!50359 b_and!23659)))

(declare-fun b!856104 () Bool)

(declare-fun res!581576 () Bool)

(declare-fun e!477254 () Bool)

(assert (=> b!856104 (=> (not res!581576) (not e!477254))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49012 0))(
  ( (array!49013 (arr!23533 (Array (_ BitVec 32) (_ BitVec 64))) (size!23974 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49012)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!856104 (= res!581576 (and (= (select (arr!23533 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!856105 () Bool)

(declare-fun res!581574 () Bool)

(assert (=> b!856105 (=> (not res!581574) (not e!477254))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856105 (= res!581574 (validKeyInArray!0 k!854))))

(declare-fun b!856106 () Bool)

(declare-fun res!581572 () Bool)

(assert (=> b!856106 (=> (not res!581572) (not e!477254))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26941 0))(
  ( (V!26942 (val!8258 Int)) )
))
(declare-datatypes ((ValueCell!7771 0))(
  ( (ValueCellFull!7771 (v!10679 V!26941)) (EmptyCell!7771) )
))
(declare-datatypes ((array!49014 0))(
  ( (array!49015 (arr!23534 (Array (_ BitVec 32) ValueCell!7771)) (size!23975 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49014)

(assert (=> b!856106 (= res!581572 (and (= (size!23975 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23974 _keys!868) (size!23975 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!856107 () Bool)

(declare-fun e!477258 () Bool)

(declare-fun e!477256 () Bool)

(declare-fun mapRes!26231 () Bool)

(assert (=> b!856107 (= e!477258 (and e!477256 mapRes!26231))))

(declare-fun condMapEmpty!26231 () Bool)

(declare-fun mapDefault!26231 () ValueCell!7771)

