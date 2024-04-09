; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74972 () Bool)

(assert start!74972)

(declare-fun b_free!15463 () Bool)

(declare-fun b_next!15463 () Bool)

(assert (=> start!74972 (= b_free!15463 (not b_next!15463))))

(declare-fun tp!54093 () Bool)

(declare-fun b_and!25643 () Bool)

(assert (=> start!74972 (= tp!54093 b_and!25643)))

(declare-fun mapIsEmpty!28197 () Bool)

(declare-fun mapRes!28197 () Bool)

(assert (=> mapIsEmpty!28197 mapRes!28197))

(declare-fun b!883933 () Bool)

(declare-fun e!491953 () Bool)

(assert (=> b!883933 (= e!491953 true)))

(declare-datatypes ((V!28657 0))(
  ( (V!28658 (val!8901 Int)) )
))
(declare-datatypes ((tuple2!11830 0))(
  ( (tuple2!11831 (_1!5925 (_ BitVec 64)) (_2!5925 V!28657)) )
))
(declare-datatypes ((List!17695 0))(
  ( (Nil!17692) (Cons!17691 (h!18822 tuple2!11830) (t!24968 List!17695)) )
))
(declare-datatypes ((ListLongMap!10613 0))(
  ( (ListLongMap!10614 (toList!5322 List!17695)) )
))
(declare-fun lt!400302 () ListLongMap!10613)

(declare-fun lt!400288 () tuple2!11830)

(declare-fun lt!400292 () ListLongMap!10613)

(declare-fun lt!400290 () tuple2!11830)

(declare-fun +!2525 (ListLongMap!10613 tuple2!11830) ListLongMap!10613)

(assert (=> b!883933 (= lt!400302 (+!2525 (+!2525 lt!400292 lt!400290) lt!400288))))

(declare-fun lt!400293 () V!28657)

(declare-datatypes ((Unit!30154 0))(
  ( (Unit!30155) )
))
(declare-fun lt!400295 () Unit!30154)

(declare-fun v!557 () V!28657)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51524 0))(
  ( (array!51525 (arr!24777 (Array (_ BitVec 32) (_ BitVec 64))) (size!25218 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51524)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!547 (ListLongMap!10613 (_ BitVec 64) V!28657 (_ BitVec 64) V!28657) Unit!30154)

(assert (=> b!883933 (= lt!400295 (addCommutativeForDiffKeys!547 lt!400292 k!854 v!557 (select (arr!24777 _keys!868) from!1053) lt!400293))))

(declare-fun b!883934 () Bool)

(declare-fun e!491950 () Unit!30154)

(declare-fun Unit!30156 () Unit!30154)

(assert (=> b!883934 (= e!491950 Unit!30156)))

(declare-fun b!883935 () Bool)

(declare-fun e!491948 () Bool)

(declare-fun tp_is_empty!17707 () Bool)

(assert (=> b!883935 (= e!491948 tp_is_empty!17707)))

(declare-fun b!883937 () Bool)

(declare-fun res!600621 () Bool)

(declare-fun e!491947 () Bool)

(assert (=> b!883937 (=> (not res!600621) (not e!491947))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8414 0))(
  ( (ValueCellFull!8414 (v!11366 V!28657)) (EmptyCell!8414) )
))
(declare-datatypes ((array!51526 0))(
  ( (array!51527 (arr!24778 (Array (_ BitVec 32) ValueCell!8414)) (size!25219 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51526)

(assert (=> b!883937 (= res!600621 (and (= (size!25219 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25218 _keys!868) (size!25219 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!883938 () Bool)

(declare-fun res!600618 () Bool)

(assert (=> b!883938 (=> (not res!600618) (not e!491947))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51524 (_ BitVec 32)) Bool)

(assert (=> b!883938 (= res!600618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!883939 () Bool)

(declare-fun res!600626 () Bool)

(assert (=> b!883939 (=> (not res!600626) (not e!491947))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!883939 (= res!600626 (and (= (select (arr!24777 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!883940 () Bool)

(declare-fun e!491954 () Bool)

(assert (=> b!883940 (= e!491954 (and e!491948 mapRes!28197))))

(declare-fun condMapEmpty!28197 () Bool)

(declare-fun mapDefault!28197 () ValueCell!8414)

