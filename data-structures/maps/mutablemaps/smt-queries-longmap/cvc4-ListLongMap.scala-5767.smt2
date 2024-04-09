; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74536 () Bool)

(assert start!74536)

(declare-fun b_free!15197 () Bool)

(declare-fun b_next!15197 () Bool)

(assert (=> start!74536 (= b_free!15197 (not b_next!15197))))

(declare-fun tp!53274 () Bool)

(declare-fun b_and!25091 () Bool)

(assert (=> start!74536 (= tp!53274 b_and!25091)))

(declare-fun mapIsEmpty!27777 () Bool)

(declare-fun mapRes!27777 () Bool)

(assert (=> mapIsEmpty!27777 mapRes!27777))

(declare-fun b!877436 () Bool)

(declare-fun res!596174 () Bool)

(declare-fun e!488461 () Bool)

(assert (=> b!877436 (=> (not res!596174) (not e!488461))))

(declare-datatypes ((array!50992 0))(
  ( (array!50993 (arr!24518 (Array (_ BitVec 32) (_ BitVec 64))) (size!24959 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50992)

(declare-datatypes ((List!17489 0))(
  ( (Nil!17486) (Cons!17485 (h!18616 (_ BitVec 64)) (t!24586 List!17489)) )
))
(declare-fun arrayNoDuplicates!0 (array!50992 (_ BitVec 32) List!17489) Bool)

(assert (=> b!877436 (= res!596174 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17486))))

(declare-fun b!877437 () Bool)

(assert (=> b!877437 (= e!488461 false)))

(declare-datatypes ((V!28301 0))(
  ( (V!28302 (val!8768 Int)) )
))
(declare-fun v!557 () V!28301)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11608 0))(
  ( (tuple2!11609 (_1!5814 (_ BitVec 64)) (_2!5814 V!28301)) )
))
(declare-datatypes ((List!17490 0))(
  ( (Nil!17487) (Cons!17486 (h!18617 tuple2!11608) (t!24587 List!17490)) )
))
(declare-datatypes ((ListLongMap!10391 0))(
  ( (ListLongMap!10392 (toList!5211 List!17490)) )
))
(declare-fun lt!397045 () ListLongMap!10391)

(declare-datatypes ((ValueCell!8281 0))(
  ( (ValueCellFull!8281 (v!11204 V!28301)) (EmptyCell!8281) )
))
(declare-datatypes ((array!50994 0))(
  ( (array!50995 (arr!24519 (Array (_ BitVec 32) ValueCell!8281)) (size!24960 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50994)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28301)

(declare-fun zeroValue!654 () V!28301)

(declare-fun getCurrentListMapNoExtraKeys!3173 (array!50992 array!50994 (_ BitVec 32) (_ BitVec 32) V!28301 V!28301 (_ BitVec 32) Int) ListLongMap!10391)

(assert (=> b!877437 (= lt!397045 (getCurrentListMapNoExtraKeys!3173 _keys!868 (array!50995 (store (arr!24519 _values!688) i!612 (ValueCellFull!8281 v!557)) (size!24960 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397046 () ListLongMap!10391)

(assert (=> b!877437 (= lt!397046 (getCurrentListMapNoExtraKeys!3173 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!877438 () Bool)

(declare-fun e!488460 () Bool)

(declare-fun tp_is_empty!17441 () Bool)

(assert (=> b!877438 (= e!488460 tp_is_empty!17441)))

(declare-fun b!877439 () Bool)

(declare-fun e!488462 () Bool)

(assert (=> b!877439 (= e!488462 (and e!488460 mapRes!27777))))

(declare-fun condMapEmpty!27777 () Bool)

(declare-fun mapDefault!27777 () ValueCell!8281)

