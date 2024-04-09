; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73898 () Bool)

(assert start!73898)

(declare-fun b_free!14785 () Bool)

(declare-fun b_next!14785 () Bool)

(assert (=> start!73898 (= b_free!14785 (not b_next!14785))))

(declare-fun tp!51859 () Bool)

(declare-fun b_and!24555 () Bool)

(assert (=> start!73898 (= tp!51859 b_and!24555)))

(declare-fun b!867633 () Bool)

(declare-fun res!589627 () Bool)

(declare-fun e!483310 () Bool)

(assert (=> b!867633 (=> (not res!589627) (not e!483310))))

(declare-datatypes ((array!49980 0))(
  ( (array!49981 (arr!24017 (Array (_ BitVec 32) (_ BitVec 64))) (size!24458 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49980)

(declare-datatypes ((List!17155 0))(
  ( (Nil!17152) (Cons!17151 (h!18282 (_ BitVec 64)) (t!24200 List!17155)) )
))
(declare-fun arrayNoDuplicates!0 (array!49980 (_ BitVec 32) List!17155) Bool)

(assert (=> b!867633 (= res!589627 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17152))))

(declare-fun b!867634 () Bool)

(declare-fun e!483315 () Bool)

(declare-fun tp_is_empty!16921 () Bool)

(assert (=> b!867634 (= e!483315 tp_is_empty!16921)))

(declare-fun b!867635 () Bool)

(declare-fun res!589626 () Bool)

(assert (=> b!867635 (=> (not res!589626) (not e!483310))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867635 (= res!589626 (validMask!0 mask!1196))))

(declare-fun b!867636 () Bool)

(declare-fun res!589631 () Bool)

(assert (=> b!867636 (=> (not res!589631) (not e!483310))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!867636 (= res!589631 (validKeyInArray!0 k!854))))

(declare-fun b!867637 () Bool)

(declare-fun e!483312 () Bool)

(declare-fun mapRes!26981 () Bool)

(assert (=> b!867637 (= e!483312 (and e!483315 mapRes!26981))))

(declare-fun condMapEmpty!26981 () Bool)

(declare-datatypes ((V!27609 0))(
  ( (V!27610 (val!8508 Int)) )
))
(declare-datatypes ((ValueCell!8021 0))(
  ( (ValueCellFull!8021 (v!10929 V!27609)) (EmptyCell!8021) )
))
(declare-datatypes ((array!49982 0))(
  ( (array!49983 (arr!24018 (Array (_ BitVec 32) ValueCell!8021)) (size!24459 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49982)

(declare-fun mapDefault!26981 () ValueCell!8021)

