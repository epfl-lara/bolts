; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74362 () Bool)

(assert start!74362)

(declare-fun b_free!15097 () Bool)

(declare-fun b_next!15097 () Bool)

(assert (=> start!74362 (= b_free!15097 (not b_next!15097))))

(declare-fun tp!52966 () Bool)

(declare-fun b_and!24891 () Bool)

(assert (=> start!74362 (= tp!52966 b_and!24891)))

(declare-fun b!874625 () Bool)

(declare-fun e!486970 () Bool)

(assert (=> b!874625 (= e!486970 false)))

(declare-datatypes ((V!28169 0))(
  ( (V!28170 (val!8718 Int)) )
))
(declare-datatypes ((tuple2!11518 0))(
  ( (tuple2!11519 (_1!5769 (_ BitVec 64)) (_2!5769 V!28169)) )
))
(declare-datatypes ((List!17408 0))(
  ( (Nil!17405) (Cons!17404 (h!18535 tuple2!11518) (t!24457 List!17408)) )
))
(declare-datatypes ((ListLongMap!10301 0))(
  ( (ListLongMap!10302 (toList!5166 List!17408)) )
))
(declare-fun lt!395950 () ListLongMap!10301)

(declare-fun v!557 () V!28169)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!50794 0))(
  ( (array!50795 (arr!24421 (Array (_ BitVec 32) (_ BitVec 64))) (size!24862 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50794)

(declare-datatypes ((ValueCell!8231 0))(
  ( (ValueCellFull!8231 (v!11143 V!28169)) (EmptyCell!8231) )
))
(declare-datatypes ((array!50796 0))(
  ( (array!50797 (arr!24422 (Array (_ BitVec 32) ValueCell!8231)) (size!24863 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50796)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28169)

(declare-fun zeroValue!654 () V!28169)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3130 (array!50794 array!50796 (_ BitVec 32) (_ BitVec 32) V!28169 V!28169 (_ BitVec 32) Int) ListLongMap!10301)

(assert (=> b!874625 (= lt!395950 (getCurrentListMapNoExtraKeys!3130 _keys!868 (array!50797 (store (arr!24422 _values!688) i!612 (ValueCellFull!8231 v!557)) (size!24863 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395949 () ListLongMap!10301)

(assert (=> b!874625 (= lt!395949 (getCurrentListMapNoExtraKeys!3130 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!27620 () Bool)

(declare-fun mapRes!27620 () Bool)

(declare-fun tp!52967 () Bool)

(declare-fun e!486973 () Bool)

(assert (=> mapNonEmpty!27620 (= mapRes!27620 (and tp!52967 e!486973))))

(declare-fun mapValue!27620 () ValueCell!8231)

(declare-fun mapRest!27620 () (Array (_ BitVec 32) ValueCell!8231))

(declare-fun mapKey!27620 () (_ BitVec 32))

(assert (=> mapNonEmpty!27620 (= (arr!24422 _values!688) (store mapRest!27620 mapKey!27620 mapValue!27620))))

(declare-fun b!874626 () Bool)

(declare-fun e!486971 () Bool)

(declare-fun e!486972 () Bool)

(assert (=> b!874626 (= e!486971 (and e!486972 mapRes!27620))))

(declare-fun condMapEmpty!27620 () Bool)

(declare-fun mapDefault!27620 () ValueCell!8231)

