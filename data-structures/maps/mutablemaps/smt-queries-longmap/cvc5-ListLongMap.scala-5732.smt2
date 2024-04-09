; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74216 () Bool)

(assert start!74216)

(declare-fun mapNonEmpty!27443 () Bool)

(declare-fun mapRes!27443 () Bool)

(declare-fun tp!52643 () Bool)

(declare-fun e!485955 () Bool)

(assert (=> mapNonEmpty!27443 (= mapRes!27443 (and tp!52643 e!485955))))

(declare-datatypes ((V!28017 0))(
  ( (V!28018 (val!8661 Int)) )
))
(declare-datatypes ((ValueCell!8174 0))(
  ( (ValueCellFull!8174 (v!11082 V!28017)) (EmptyCell!8174) )
))
(declare-fun mapValue!27443 () ValueCell!8174)

(declare-fun mapRest!27443 () (Array (_ BitVec 32) ValueCell!8174))

(declare-datatypes ((array!50574 0))(
  ( (array!50575 (arr!24313 (Array (_ BitVec 32) ValueCell!8174)) (size!24754 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50574)

(declare-fun mapKey!27443 () (_ BitVec 32))

(assert (=> mapNonEmpty!27443 (= (arr!24313 _values!688) (store mapRest!27443 mapKey!27443 mapValue!27443))))

(declare-fun b!872533 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!50576 0))(
  ( (array!50577 (arr!24314 (Array (_ BitVec 32) (_ BitVec 64))) (size!24755 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50576)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun e!485956 () Bool)

(assert (=> b!872533 (= e!485956 (and (= (select (arr!24314 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24755 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsge (bvsub (size!24755 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (bvsub (size!24755 _keys!868) from!1053))))))

(declare-fun b!872534 () Bool)

(declare-fun res!593110 () Bool)

(assert (=> b!872534 (=> (not res!593110) (not e!485956))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!872534 (= res!593110 (validKeyInArray!0 k!854))))

(declare-fun b!872535 () Bool)

(declare-fun res!593113 () Bool)

(assert (=> b!872535 (=> (not res!593113) (not e!485956))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!872535 (= res!593113 (and (= (size!24754 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24755 _keys!868) (size!24754 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!593109 () Bool)

(assert (=> start!74216 (=> (not res!593109) (not e!485956))))

(assert (=> start!74216 (= res!593109 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24755 _keys!868))))))

(assert (=> start!74216 e!485956))

(assert (=> start!74216 true))

(declare-fun array_inv!19166 (array!50576) Bool)

(assert (=> start!74216 (array_inv!19166 _keys!868)))

(declare-fun e!485954 () Bool)

(declare-fun array_inv!19167 (array!50574) Bool)

(assert (=> start!74216 (and (array_inv!19167 _values!688) e!485954)))

(declare-fun b!872536 () Bool)

(declare-fun res!593115 () Bool)

(assert (=> b!872536 (=> (not res!593115) (not e!485956))))

(declare-datatypes ((List!17333 0))(
  ( (Nil!17330) (Cons!17329 (h!18460 (_ BitVec 64)) (t!24378 List!17333)) )
))
(declare-fun arrayNoDuplicates!0 (array!50576 (_ BitVec 32) List!17333) Bool)

(assert (=> b!872536 (= res!593115 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17330))))

(declare-fun b!872537 () Bool)

(declare-fun res!593111 () Bool)

(assert (=> b!872537 (=> (not res!593111) (not e!485956))))

(assert (=> b!872537 (= res!593111 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24755 _keys!868))))))

(declare-fun b!872538 () Bool)

(declare-fun res!593114 () Bool)

(assert (=> b!872538 (=> (not res!593114) (not e!485956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872538 (= res!593114 (validMask!0 mask!1196))))

(declare-fun b!872539 () Bool)

(declare-fun e!485958 () Bool)

(assert (=> b!872539 (= e!485954 (and e!485958 mapRes!27443))))

(declare-fun condMapEmpty!27443 () Bool)

(declare-fun mapDefault!27443 () ValueCell!8174)

