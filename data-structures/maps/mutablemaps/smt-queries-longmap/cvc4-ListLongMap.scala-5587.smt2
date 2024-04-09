; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73338 () Bool)

(assert start!73338)

(declare-fun b_free!14225 () Bool)

(declare-fun b_next!14225 () Bool)

(assert (=> start!73338 (= b_free!14225 (not b_next!14225))))

(declare-fun tp!50180 () Bool)

(declare-fun b_and!23599 () Bool)

(assert (=> start!73338 (= tp!50180 b_and!23599)))

(declare-fun mapIsEmpty!26141 () Bool)

(declare-fun mapRes!26141 () Bool)

(assert (=> mapIsEmpty!26141 mapRes!26141))

(declare-fun b!855088 () Bool)

(declare-fun res!580830 () Bool)

(declare-fun e!476777 () Bool)

(assert (=> b!855088 (=> (not res!580830) (not e!476777))))

(declare-datatypes ((array!48898 0))(
  ( (array!48899 (arr!23476 (Array (_ BitVec 32) (_ BitVec 64))) (size!23917 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48898)

(declare-datatypes ((List!16707 0))(
  ( (Nil!16704) (Cons!16703 (h!17834 (_ BitVec 64)) (t!23356 List!16707)) )
))
(declare-fun arrayNoDuplicates!0 (array!48898 (_ BitVec 32) List!16707) Bool)

(assert (=> b!855088 (= res!580830 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16704))))

(declare-fun res!580825 () Bool)

(assert (=> start!73338 (=> (not res!580825) (not e!476777))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73338 (= res!580825 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23917 _keys!868))))))

(assert (=> start!73338 e!476777))

(declare-fun tp_is_empty!16361 () Bool)

(assert (=> start!73338 tp_is_empty!16361))

(assert (=> start!73338 true))

(assert (=> start!73338 tp!50180))

(declare-fun array_inv!18588 (array!48898) Bool)

(assert (=> start!73338 (array_inv!18588 _keys!868)))

(declare-datatypes ((V!26861 0))(
  ( (V!26862 (val!8228 Int)) )
))
(declare-datatypes ((ValueCell!7741 0))(
  ( (ValueCellFull!7741 (v!10649 V!26861)) (EmptyCell!7741) )
))
(declare-datatypes ((array!48900 0))(
  ( (array!48901 (arr!23477 (Array (_ BitVec 32) ValueCell!7741)) (size!23918 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48900)

(declare-fun e!476781 () Bool)

(declare-fun array_inv!18589 (array!48900) Bool)

(assert (=> start!73338 (and (array_inv!18589 _values!688) e!476781)))

(declare-fun b!855089 () Bool)

(declare-fun res!580827 () Bool)

(assert (=> b!855089 (=> (not res!580827) (not e!476777))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48898 (_ BitVec 32)) Bool)

(assert (=> b!855089 (= res!580827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!855090 () Bool)

(declare-fun res!580829 () Bool)

(assert (=> b!855090 (=> (not res!580829) (not e!476777))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855090 (= res!580829 (validKeyInArray!0 k!854))))

(declare-fun b!855091 () Bool)

(declare-fun e!476780 () Bool)

(assert (=> b!855091 (= e!476780 tp_is_empty!16361)))

(declare-fun b!855092 () Bool)

(declare-fun res!580824 () Bool)

(assert (=> b!855092 (=> (not res!580824) (not e!476777))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!855092 (= res!580824 (and (= (select (arr!23476 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!855093 () Bool)

(declare-fun e!476778 () Bool)

(assert (=> b!855093 (= e!476778 tp_is_empty!16361)))

(declare-fun b!855094 () Bool)

(declare-fun res!580826 () Bool)

(assert (=> b!855094 (=> (not res!580826) (not e!476777))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!855094 (= res!580826 (and (= (size!23918 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23917 _keys!868) (size!23918 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!855095 () Bool)

(declare-fun res!580823 () Bool)

(assert (=> b!855095 (=> (not res!580823) (not e!476777))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855095 (= res!580823 (validMask!0 mask!1196))))

(declare-fun b!855096 () Bool)

(assert (=> b!855096 (= e!476781 (and e!476780 mapRes!26141))))

(declare-fun condMapEmpty!26141 () Bool)

(declare-fun mapDefault!26141 () ValueCell!7741)

