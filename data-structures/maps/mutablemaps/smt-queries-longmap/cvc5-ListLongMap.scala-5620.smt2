; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73532 () Bool)

(assert start!73532)

(declare-fun b_free!14419 () Bool)

(declare-fun b_next!14419 () Bool)

(assert (=> start!73532 (= b_free!14419 (not b_next!14419))))

(declare-fun tp!50762 () Bool)

(declare-fun b_and!23835 () Bool)

(assert (=> start!73532 (= tp!50762 b_and!23835)))

(declare-fun mapNonEmpty!26432 () Bool)

(declare-fun mapRes!26432 () Bool)

(declare-fun tp!50761 () Bool)

(declare-fun e!478557 () Bool)

(assert (=> mapNonEmpty!26432 (= mapRes!26432 (and tp!50761 e!478557))))

(declare-datatypes ((V!27121 0))(
  ( (V!27122 (val!8325 Int)) )
))
(declare-datatypes ((ValueCell!7838 0))(
  ( (ValueCellFull!7838 (v!10746 V!27121)) (EmptyCell!7838) )
))
(declare-fun mapValue!26432 () ValueCell!7838)

(declare-fun mapKey!26432 () (_ BitVec 32))

(declare-fun mapRest!26432 () (Array (_ BitVec 32) ValueCell!7838))

(declare-datatypes ((array!49268 0))(
  ( (array!49269 (arr!23661 (Array (_ BitVec 32) ValueCell!7838)) (size!24102 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49268)

(assert (=> mapNonEmpty!26432 (= (arr!23661 _values!688) (store mapRest!26432 mapKey!26432 mapValue!26432))))

(declare-fun b!858652 () Bool)

(declare-fun res!583472 () Bool)

(declare-fun e!478558 () Bool)

(assert (=> b!858652 (=> (not res!583472) (not e!478558))))

(declare-datatypes ((array!49270 0))(
  ( (array!49271 (arr!23662 (Array (_ BitVec 32) (_ BitVec 64))) (size!24103 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49270)

(declare-datatypes ((List!16846 0))(
  ( (Nil!16843) (Cons!16842 (h!17973 (_ BitVec 64)) (t!23539 List!16846)) )
))
(declare-fun arrayNoDuplicates!0 (array!49270 (_ BitVec 32) List!16846) Bool)

(assert (=> b!858652 (= res!583472 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16843))))

(declare-fun b!858653 () Bool)

(declare-fun e!478556 () Bool)

(assert (=> b!858653 (= e!478558 e!478556)))

(declare-fun res!583481 () Bool)

(assert (=> b!858653 (=> (not res!583481) (not e!478556))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!858653 (= res!583481 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386863 () array!49268)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27121)

(declare-fun zeroValue!654 () V!27121)

(declare-datatypes ((tuple2!10974 0))(
  ( (tuple2!10975 (_1!5497 (_ BitVec 64)) (_2!5497 V!27121)) )
))
(declare-datatypes ((List!16847 0))(
  ( (Nil!16844) (Cons!16843 (h!17974 tuple2!10974) (t!23540 List!16847)) )
))
(declare-datatypes ((ListLongMap!9757 0))(
  ( (ListLongMap!9758 (toList!4894 List!16847)) )
))
(declare-fun lt!386858 () ListLongMap!9757)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2876 (array!49270 array!49268 (_ BitVec 32) (_ BitVec 32) V!27121 V!27121 (_ BitVec 32) Int) ListLongMap!9757)

(assert (=> b!858653 (= lt!386858 (getCurrentListMapNoExtraKeys!2876 _keys!868 lt!386863 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27121)

(assert (=> b!858653 (= lt!386863 (array!49269 (store (arr!23661 _values!688) i!612 (ValueCellFull!7838 v!557)) (size!24102 _values!688)))))

(declare-fun lt!386862 () ListLongMap!9757)

(assert (=> b!858653 (= lt!386862 (getCurrentListMapNoExtraKeys!2876 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!858654 () Bool)

(declare-fun e!478555 () Bool)

(declare-fun e!478554 () Bool)

(assert (=> b!858654 (= e!478555 (and e!478554 mapRes!26432))))

(declare-fun condMapEmpty!26432 () Bool)

(declare-fun mapDefault!26432 () ValueCell!7838)

