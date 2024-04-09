; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74592 () Bool)

(assert start!74592)

(declare-fun b_free!15253 () Bool)

(declare-fun b_next!15253 () Bool)

(assert (=> start!74592 (= b_free!15253 (not b_next!15253))))

(declare-fun tp!53442 () Bool)

(declare-fun b_and!25147 () Bool)

(assert (=> start!74592 (= tp!53442 b_and!25147)))

(declare-fun b!878360 () Bool)

(declare-fun e!488880 () Bool)

(declare-fun tp_is_empty!17497 () Bool)

(assert (=> b!878360 (= e!488880 tp_is_empty!17497)))

(declare-fun mapIsEmpty!27861 () Bool)

(declare-fun mapRes!27861 () Bool)

(assert (=> mapIsEmpty!27861 mapRes!27861))

(declare-fun b!878361 () Bool)

(declare-fun res!596852 () Bool)

(declare-fun e!488879 () Bool)

(assert (=> b!878361 (=> (not res!596852) (not e!488879))))

(declare-datatypes ((array!51100 0))(
  ( (array!51101 (arr!24572 (Array (_ BitVec 32) (_ BitVec 64))) (size!25013 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51100)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51100 (_ BitVec 32)) Bool)

(assert (=> b!878361 (= res!596852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878362 () Bool)

(assert (=> b!878362 (= e!488879 false)))

(declare-datatypes ((V!28377 0))(
  ( (V!28378 (val!8796 Int)) )
))
(declare-fun v!557 () V!28377)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!8309 0))(
  ( (ValueCellFull!8309 (v!11232 V!28377)) (EmptyCell!8309) )
))
(declare-datatypes ((array!51102 0))(
  ( (array!51103 (arr!24573 (Array (_ BitVec 32) ValueCell!8309)) (size!25014 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51102)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28377)

(declare-fun zeroValue!654 () V!28377)

(declare-datatypes ((tuple2!11648 0))(
  ( (tuple2!11649 (_1!5834 (_ BitVec 64)) (_2!5834 V!28377)) )
))
(declare-datatypes ((List!17530 0))(
  ( (Nil!17527) (Cons!17526 (h!18657 tuple2!11648) (t!24627 List!17530)) )
))
(declare-datatypes ((ListLongMap!10431 0))(
  ( (ListLongMap!10432 (toList!5231 List!17530)) )
))
(declare-fun lt!397214 () ListLongMap!10431)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3193 (array!51100 array!51102 (_ BitVec 32) (_ BitVec 32) V!28377 V!28377 (_ BitVec 32) Int) ListLongMap!10431)

(assert (=> b!878362 (= lt!397214 (getCurrentListMapNoExtraKeys!3193 _keys!868 (array!51103 (store (arr!24573 _values!688) i!612 (ValueCellFull!8309 v!557)) (size!25014 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397213 () ListLongMap!10431)

(assert (=> b!878362 (= lt!397213 (getCurrentListMapNoExtraKeys!3193 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!878363 () Bool)

(declare-fun e!488882 () Bool)

(assert (=> b!878363 (= e!488882 (and e!488880 mapRes!27861))))

(declare-fun condMapEmpty!27861 () Bool)

(declare-fun mapDefault!27861 () ValueCell!8309)

