; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74596 () Bool)

(assert start!74596)

(declare-fun b_free!15257 () Bool)

(declare-fun b_next!15257 () Bool)

(assert (=> start!74596 (= b_free!15257 (not b_next!15257))))

(declare-fun tp!53454 () Bool)

(declare-fun b_and!25151 () Bool)

(assert (=> start!74596 (= tp!53454 b_and!25151)))

(declare-fun b!878426 () Bool)

(declare-fun res!596898 () Bool)

(declare-fun e!488910 () Bool)

(assert (=> b!878426 (=> (not res!596898) (not e!488910))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878426 (= res!596898 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27867 () Bool)

(declare-fun mapRes!27867 () Bool)

(assert (=> mapIsEmpty!27867 mapRes!27867))

(declare-fun b!878427 () Bool)

(declare-fun res!596901 () Bool)

(assert (=> b!878427 (=> (not res!596901) (not e!488910))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51108 0))(
  ( (array!51109 (arr!24576 (Array (_ BitVec 32) (_ BitVec 64))) (size!25017 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51108)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!878427 (= res!596901 (and (= (select (arr!24576 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!878428 () Bool)

(assert (=> b!878428 (= e!488910 false)))

(declare-datatypes ((V!28381 0))(
  ( (V!28382 (val!8798 Int)) )
))
(declare-fun v!557 () V!28381)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!11652 0))(
  ( (tuple2!11653 (_1!5836 (_ BitVec 64)) (_2!5836 V!28381)) )
))
(declare-datatypes ((List!17533 0))(
  ( (Nil!17530) (Cons!17529 (h!18660 tuple2!11652) (t!24630 List!17533)) )
))
(declare-datatypes ((ListLongMap!10435 0))(
  ( (ListLongMap!10436 (toList!5233 List!17533)) )
))
(declare-fun lt!397225 () ListLongMap!10435)

(declare-datatypes ((ValueCell!8311 0))(
  ( (ValueCellFull!8311 (v!11234 V!28381)) (EmptyCell!8311) )
))
(declare-datatypes ((array!51110 0))(
  ( (array!51111 (arr!24577 (Array (_ BitVec 32) ValueCell!8311)) (size!25018 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51110)

(declare-fun minValue!654 () V!28381)

(declare-fun zeroValue!654 () V!28381)

(declare-fun getCurrentListMapNoExtraKeys!3195 (array!51108 array!51110 (_ BitVec 32) (_ BitVec 32) V!28381 V!28381 (_ BitVec 32) Int) ListLongMap!10435)

(assert (=> b!878428 (= lt!397225 (getCurrentListMapNoExtraKeys!3195 _keys!868 (array!51111 (store (arr!24577 _values!688) i!612 (ValueCellFull!8311 v!557)) (size!25018 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397226 () ListLongMap!10435)

(assert (=> b!878428 (= lt!397226 (getCurrentListMapNoExtraKeys!3195 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!878429 () Bool)

(declare-fun e!488911 () Bool)

(declare-fun tp_is_empty!17501 () Bool)

(assert (=> b!878429 (= e!488911 tp_is_empty!17501)))

(declare-fun b!878430 () Bool)

(declare-fun res!596894 () Bool)

(assert (=> b!878430 (=> (not res!596894) (not e!488910))))

(assert (=> b!878430 (= res!596894 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25017 _keys!868))))))

(declare-fun b!878431 () Bool)

(declare-fun e!488912 () Bool)

(declare-fun e!488909 () Bool)

(assert (=> b!878431 (= e!488912 (and e!488909 mapRes!27867))))

(declare-fun condMapEmpty!27867 () Bool)

(declare-fun mapDefault!27867 () ValueCell!8311)

