; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74356 () Bool)

(assert start!74356)

(declare-fun b_free!15091 () Bool)

(declare-fun b_next!15091 () Bool)

(assert (=> start!74356 (= b_free!15091 (not b_next!15091))))

(declare-fun tp!52948 () Bool)

(declare-fun b_and!24885 () Bool)

(assert (=> start!74356 (= tp!52948 b_and!24885)))

(declare-fun b!874526 () Bool)

(declare-fun e!486928 () Bool)

(declare-fun tp_is_empty!17335 () Bool)

(assert (=> b!874526 (= e!486928 tp_is_empty!17335)))

(declare-fun b!874527 () Bool)

(declare-fun res!594437 () Bool)

(declare-fun e!486925 () Bool)

(assert (=> b!874527 (=> (not res!594437) (not e!486925))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50782 0))(
  ( (array!50783 (arr!24415 (Array (_ BitVec 32) (_ BitVec 64))) (size!24856 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50782)

(declare-datatypes ((V!28161 0))(
  ( (V!28162 (val!8715 Int)) )
))
(declare-datatypes ((ValueCell!8228 0))(
  ( (ValueCellFull!8228 (v!11140 V!28161)) (EmptyCell!8228) )
))
(declare-datatypes ((array!50784 0))(
  ( (array!50785 (arr!24416 (Array (_ BitVec 32) ValueCell!8228)) (size!24857 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50784)

(assert (=> b!874527 (= res!594437 (and (= (size!24857 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24856 _keys!868) (size!24857 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27611 () Bool)

(declare-fun mapRes!27611 () Bool)

(declare-fun tp!52949 () Bool)

(assert (=> mapNonEmpty!27611 (= mapRes!27611 (and tp!52949 e!486928))))

(declare-fun mapRest!27611 () (Array (_ BitVec 32) ValueCell!8228))

(declare-fun mapKey!27611 () (_ BitVec 32))

(declare-fun mapValue!27611 () ValueCell!8228)

(assert (=> mapNonEmpty!27611 (= (arr!24416 _values!688) (store mapRest!27611 mapKey!27611 mapValue!27611))))

(declare-fun b!874528 () Bool)

(declare-fun res!594432 () Bool)

(assert (=> b!874528 (=> (not res!594432) (not e!486925))))

(declare-datatypes ((List!17403 0))(
  ( (Nil!17400) (Cons!17399 (h!18530 (_ BitVec 64)) (t!24452 List!17403)) )
))
(declare-fun arrayNoDuplicates!0 (array!50782 (_ BitVec 32) List!17403) Bool)

(assert (=> b!874528 (= res!594432 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17400))))

(declare-fun b!874529 () Bool)

(declare-fun res!594438 () Bool)

(assert (=> b!874529 (=> (not res!594438) (not e!486925))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!874529 (= res!594438 (and (= (select (arr!24415 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!874530 () Bool)

(declare-fun res!594434 () Bool)

(assert (=> b!874530 (=> (not res!594434) (not e!486925))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874530 (= res!594434 (validMask!0 mask!1196))))

(declare-fun b!874531 () Bool)

(declare-fun res!594439 () Bool)

(assert (=> b!874531 (=> (not res!594439) (not e!486925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50782 (_ BitVec 32)) Bool)

(assert (=> b!874531 (= res!594439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!594433 () Bool)

(assert (=> start!74356 (=> (not res!594433) (not e!486925))))

(assert (=> start!74356 (= res!594433 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24856 _keys!868))))))

(assert (=> start!74356 e!486925))

(assert (=> start!74356 tp_is_empty!17335))

(assert (=> start!74356 true))

(assert (=> start!74356 tp!52948))

(declare-fun array_inv!19234 (array!50782) Bool)

(assert (=> start!74356 (array_inv!19234 _keys!868)))

(declare-fun e!486924 () Bool)

(declare-fun array_inv!19235 (array!50784) Bool)

(assert (=> start!74356 (and (array_inv!19235 _values!688) e!486924)))

(declare-fun b!874532 () Bool)

(declare-fun res!594436 () Bool)

(assert (=> b!874532 (=> (not res!594436) (not e!486925))))

(assert (=> b!874532 (= res!594436 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24856 _keys!868))))))

(declare-fun b!874533 () Bool)

(declare-fun e!486927 () Bool)

(assert (=> b!874533 (= e!486924 (and e!486927 mapRes!27611))))

(declare-fun condMapEmpty!27611 () Bool)

(declare-fun mapDefault!27611 () ValueCell!8228)

