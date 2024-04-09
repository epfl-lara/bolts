; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75014 () Bool)

(assert start!75014)

(declare-fun b_free!15475 () Bool)

(declare-fun b_next!15475 () Bool)

(assert (=> start!75014 (= b_free!15475 (not b_next!15475))))

(declare-fun tp!54131 () Bool)

(declare-fun b_and!25683 () Bool)

(assert (=> start!75014 (= tp!54131 b_and!25683)))

(declare-fun b!884374 () Bool)

(declare-fun res!600888 () Bool)

(declare-fun e!492203 () Bool)

(assert (=> b!884374 (=> (not res!600888) (not e!492203))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!51548 0))(
  ( (array!51549 (arr!24788 (Array (_ BitVec 32) (_ BitVec 64))) (size!25229 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51548)

(assert (=> b!884374 (= res!600888 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25229 _keys!868))))))

(declare-fun b!884375 () Bool)

(declare-fun e!492201 () Bool)

(declare-fun tp_is_empty!17719 () Bool)

(assert (=> b!884375 (= e!492201 tp_is_empty!17719)))

(declare-fun b!884376 () Bool)

(declare-fun res!600885 () Bool)

(assert (=> b!884376 (=> (not res!600885) (not e!492203))))

(declare-datatypes ((List!17703 0))(
  ( (Nil!17700) (Cons!17699 (h!18830 (_ BitVec 64)) (t!24986 List!17703)) )
))
(declare-fun arrayNoDuplicates!0 (array!51548 (_ BitVec 32) List!17703) Bool)

(assert (=> b!884376 (= res!600885 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17700))))

(declare-fun b!884377 () Bool)

(declare-fun res!600883 () Bool)

(assert (=> b!884377 (=> (not res!600883) (not e!492203))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51548 (_ BitVec 32)) Bool)

(assert (=> b!884377 (= res!600883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!884378 () Bool)

(declare-fun res!600884 () Bool)

(assert (=> b!884378 (=> (not res!600884) (not e!492203))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!884378 (= res!600884 (and (= (select (arr!24788 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!884379 () Bool)

(declare-fun res!600879 () Bool)

(assert (=> b!884379 (=> (not res!600879) (not e!492203))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!28673 0))(
  ( (V!28674 (val!8907 Int)) )
))
(declare-datatypes ((ValueCell!8420 0))(
  ( (ValueCellFull!8420 (v!11376 V!28673)) (EmptyCell!8420) )
))
(declare-datatypes ((array!51550 0))(
  ( (array!51551 (arr!24789 (Array (_ BitVec 32) ValueCell!8420)) (size!25230 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51550)

(assert (=> b!884379 (= res!600879 (and (= (size!25230 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25229 _keys!868) (size!25230 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!884380 () Bool)

(declare-fun res!600880 () Bool)

(assert (=> b!884380 (=> (not res!600880) (not e!492203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!884380 (= res!600880 (validMask!0 mask!1196))))

(declare-fun b!884381 () Bool)

(declare-fun e!492202 () Bool)

(declare-fun e!492205 () Bool)

(declare-fun mapRes!28218 () Bool)

(assert (=> b!884381 (= e!492202 (and e!492205 mapRes!28218))))

(declare-fun condMapEmpty!28218 () Bool)

(declare-fun mapDefault!28218 () ValueCell!8420)

