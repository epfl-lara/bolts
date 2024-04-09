; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74470 () Bool)

(assert start!74470)

(declare-fun b_free!15185 () Bool)

(declare-fun b_next!15185 () Bool)

(assert (=> start!74470 (= b_free!15185 (not b_next!15185))))

(declare-fun tp!53233 () Bool)

(declare-fun b_and!25041 () Bool)

(assert (=> start!74470 (= tp!53233 b_and!25041)))

(declare-fun b!876708 () Bool)

(declare-fun res!595839 () Bool)

(declare-fun e!488056 () Bool)

(assert (=> b!876708 (=> (not res!595839) (not e!488056))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!876708 (= res!595839 (validKeyInArray!0 k!854))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!28285 0))(
  ( (V!28286 (val!8762 Int)) )
))
(declare-datatypes ((ValueCell!8275 0))(
  ( (ValueCellFull!8275 (v!11191 V!28285)) (EmptyCell!8275) )
))
(declare-datatypes ((array!50966 0))(
  ( (array!50967 (arr!24506 (Array (_ BitVec 32) ValueCell!8275)) (size!24947 (_ BitVec 32))) )
))
(declare-fun lt!396695 () array!50966)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50968 0))(
  ( (array!50969 (arr!24507 (Array (_ BitVec 32) (_ BitVec 64))) (size!24948 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50968)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28285)

(declare-fun zeroValue!654 () V!28285)

(declare-datatypes ((tuple2!11598 0))(
  ( (tuple2!11599 (_1!5809 (_ BitVec 64)) (_2!5809 V!28285)) )
))
(declare-datatypes ((List!17479 0))(
  ( (Nil!17476) (Cons!17475 (h!18606 tuple2!11598) (t!24576 List!17479)) )
))
(declare-datatypes ((ListLongMap!10381 0))(
  ( (ListLongMap!10382 (toList!5206 List!17479)) )
))
(declare-fun call!38799 () ListLongMap!10381)

(declare-fun bm!38795 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3168 (array!50968 array!50966 (_ BitVec 32) (_ BitVec 32) V!28285 V!28285 (_ BitVec 32) Int) ListLongMap!10381)

(assert (=> bm!38795 (= call!38799 (getCurrentListMapNoExtraKeys!3168 _keys!868 lt!396695 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876709 () Bool)

(declare-fun e!488052 () Bool)

(declare-fun tp_is_empty!17429 () Bool)

(assert (=> b!876709 (= e!488052 tp_is_empty!17429)))

(declare-fun b!876710 () Bool)

(declare-fun res!595840 () Bool)

(assert (=> b!876710 (=> (not res!595840) (not e!488056))))

(declare-datatypes ((List!17480 0))(
  ( (Nil!17477) (Cons!17476 (h!18607 (_ BitVec 64)) (t!24577 List!17480)) )
))
(declare-fun arrayNoDuplicates!0 (array!50968 (_ BitVec 32) List!17480) Bool)

(assert (=> b!876710 (= res!595840 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17477))))

(declare-fun b!876711 () Bool)

(declare-fun e!488050 () Bool)

(declare-fun e!488057 () Bool)

(declare-fun mapRes!27755 () Bool)

(assert (=> b!876711 (= e!488050 (and e!488057 mapRes!27755))))

(declare-fun condMapEmpty!27755 () Bool)

(declare-fun _values!688 () array!50966)

(declare-fun mapDefault!27755 () ValueCell!8275)

