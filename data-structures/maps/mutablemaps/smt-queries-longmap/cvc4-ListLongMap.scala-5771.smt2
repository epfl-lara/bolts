; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74560 () Bool)

(assert start!74560)

(declare-fun b_free!15221 () Bool)

(declare-fun b_next!15221 () Bool)

(assert (=> start!74560 (= b_free!15221 (not b_next!15221))))

(declare-fun tp!53345 () Bool)

(declare-fun b_and!25115 () Bool)

(assert (=> start!74560 (= tp!53345 b_and!25115)))

(declare-fun mapNonEmpty!27813 () Bool)

(declare-fun mapRes!27813 () Bool)

(declare-fun tp!53346 () Bool)

(declare-fun e!488643 () Bool)

(assert (=> mapNonEmpty!27813 (= mapRes!27813 (and tp!53346 e!488643))))

(declare-datatypes ((V!28333 0))(
  ( (V!28334 (val!8780 Int)) )
))
(declare-datatypes ((ValueCell!8293 0))(
  ( (ValueCellFull!8293 (v!11216 V!28333)) (EmptyCell!8293) )
))
(declare-fun mapRest!27813 () (Array (_ BitVec 32) ValueCell!8293))

(declare-fun mapValue!27813 () ValueCell!8293)

(declare-datatypes ((array!51040 0))(
  ( (array!51041 (arr!24542 (Array (_ BitVec 32) ValueCell!8293)) (size!24983 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51040)

(declare-fun mapKey!27813 () (_ BitVec 32))

(assert (=> mapNonEmpty!27813 (= (arr!24542 _values!688) (store mapRest!27813 mapKey!27813 mapValue!27813))))

(declare-fun b!877832 () Bool)

(declare-fun tp_is_empty!17465 () Bool)

(assert (=> b!877832 (= e!488643 tp_is_empty!17465)))

(declare-fun b!877833 () Bool)

(declare-fun res!596469 () Bool)

(declare-fun e!488642 () Bool)

(assert (=> b!877833 (=> (not res!596469) (not e!488642))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!877833 (= res!596469 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!27813 () Bool)

(assert (=> mapIsEmpty!27813 mapRes!27813))

(declare-fun b!877834 () Bool)

(declare-fun res!596464 () Bool)

(assert (=> b!877834 (=> (not res!596464) (not e!488642))))

(declare-datatypes ((array!51042 0))(
  ( (array!51043 (arr!24543 (Array (_ BitVec 32) (_ BitVec 64))) (size!24984 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51042)

(declare-datatypes ((List!17511 0))(
  ( (Nil!17508) (Cons!17507 (h!18638 (_ BitVec 64)) (t!24608 List!17511)) )
))
(declare-fun arrayNoDuplicates!0 (array!51042 (_ BitVec 32) List!17511) Bool)

(assert (=> b!877834 (= res!596464 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17508))))

(declare-fun b!877835 () Bool)

(declare-fun res!596468 () Bool)

(assert (=> b!877835 (=> (not res!596468) (not e!488642))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877835 (= res!596468 (validMask!0 mask!1196))))

(declare-fun b!877837 () Bool)

(declare-fun res!596463 () Bool)

(assert (=> b!877837 (=> (not res!596463) (not e!488642))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!877837 (= res!596463 (and (= (size!24983 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24984 _keys!868) (size!24983 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!877838 () Bool)

(declare-fun res!596462 () Bool)

(assert (=> b!877838 (=> (not res!596462) (not e!488642))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!877838 (= res!596462 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24984 _keys!868))))))

(declare-fun b!877839 () Bool)

(declare-fun e!488641 () Bool)

(assert (=> b!877839 (= e!488641 tp_is_empty!17465)))

(declare-fun b!877840 () Bool)

(declare-fun res!596466 () Bool)

(assert (=> b!877840 (=> (not res!596466) (not e!488642))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!877840 (= res!596466 (and (= (select (arr!24543 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!877841 () Bool)

(declare-fun e!488640 () Bool)

(assert (=> b!877841 (= e!488640 (and e!488641 mapRes!27813))))

(declare-fun condMapEmpty!27813 () Bool)

(declare-fun mapDefault!27813 () ValueCell!8293)

