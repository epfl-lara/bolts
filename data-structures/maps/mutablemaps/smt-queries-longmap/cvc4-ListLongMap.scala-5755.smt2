; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74390 () Bool)

(assert start!74390)

(declare-fun b_free!15125 () Bool)

(declare-fun b_next!15125 () Bool)

(assert (=> start!74390 (= b_free!15125 (not b_next!15125))))

(declare-fun tp!53051 () Bool)

(declare-fun b_and!24919 () Bool)

(assert (=> start!74390 (= tp!53051 b_and!24919)))

(declare-fun b!875182 () Bool)

(declare-fun e!487248 () Bool)

(declare-fun e!487249 () Bool)

(assert (=> b!875182 (= e!487248 e!487249)))

(declare-fun res!594892 () Bool)

(assert (=> b!875182 (=> (not res!594892) (not e!487249))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!875182 (= res!594892 (= from!1053 i!612))))

(declare-datatypes ((V!28205 0))(
  ( (V!28206 (val!8732 Int)) )
))
(declare-datatypes ((tuple2!11542 0))(
  ( (tuple2!11543 (_1!5781 (_ BitVec 64)) (_2!5781 V!28205)) )
))
(declare-datatypes ((List!17429 0))(
  ( (Nil!17426) (Cons!17425 (h!18556 tuple2!11542) (t!24478 List!17429)) )
))
(declare-datatypes ((ListLongMap!10325 0))(
  ( (ListLongMap!10326 (toList!5178 List!17429)) )
))
(declare-fun lt!396088 () ListLongMap!10325)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50848 0))(
  ( (array!50849 (arr!24448 (Array (_ BitVec 32) (_ BitVec 64))) (size!24889 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50848)

(declare-fun minValue!654 () V!28205)

(declare-fun zeroValue!654 () V!28205)

(declare-datatypes ((ValueCell!8245 0))(
  ( (ValueCellFull!8245 (v!11157 V!28205)) (EmptyCell!8245) )
))
(declare-datatypes ((array!50850 0))(
  ( (array!50851 (arr!24449 (Array (_ BitVec 32) ValueCell!8245)) (size!24890 (_ BitVec 32))) )
))
(declare-fun lt!396086 () array!50850)

(declare-fun getCurrentListMapNoExtraKeys!3141 (array!50848 array!50850 (_ BitVec 32) (_ BitVec 32) V!28205 V!28205 (_ BitVec 32) Int) ListLongMap!10325)

(assert (=> b!875182 (= lt!396088 (getCurrentListMapNoExtraKeys!3141 _keys!868 lt!396086 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28205)

(declare-fun _values!688 () array!50850)

(assert (=> b!875182 (= lt!396086 (array!50851 (store (arr!24449 _values!688) i!612 (ValueCellFull!8245 v!557)) (size!24890 _values!688)))))

(declare-fun lt!396085 () ListLongMap!10325)

(assert (=> b!875182 (= lt!396085 (getCurrentListMapNoExtraKeys!3141 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!875183 () Bool)

(declare-fun res!594891 () Bool)

(assert (=> b!875183 (=> (not res!594891) (not e!487248))))

(declare-datatypes ((List!17430 0))(
  ( (Nil!17427) (Cons!17426 (h!18557 (_ BitVec 64)) (t!24479 List!17430)) )
))
(declare-fun arrayNoDuplicates!0 (array!50848 (_ BitVec 32) List!17430) Bool)

(assert (=> b!875183 (= res!594891 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17427))))

(declare-fun b!875184 () Bool)

(declare-fun e!487250 () Bool)

(declare-fun call!38600 () ListLongMap!10325)

(declare-fun call!38601 () ListLongMap!10325)

(assert (=> b!875184 (= e!487250 (= call!38600 call!38601))))

(declare-fun b!875185 () Bool)

(declare-fun res!594888 () Bool)

(assert (=> b!875185 (=> (not res!594888) (not e!487248))))

(assert (=> b!875185 (= res!594888 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24889 _keys!868))))))

(declare-fun res!594883 () Bool)

(assert (=> start!74390 (=> (not res!594883) (not e!487248))))

(assert (=> start!74390 (= res!594883 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24889 _keys!868))))))

(assert (=> start!74390 e!487248))

(declare-fun tp_is_empty!17369 () Bool)

(assert (=> start!74390 tp_is_empty!17369))

(assert (=> start!74390 true))

(assert (=> start!74390 tp!53051))

(declare-fun array_inv!19258 (array!50848) Bool)

(assert (=> start!74390 (array_inv!19258 _keys!868)))

(declare-fun e!487251 () Bool)

(declare-fun array_inv!19259 (array!50850) Bool)

(assert (=> start!74390 (and (array_inv!19259 _values!688) e!487251)))

(declare-fun b!875186 () Bool)

(declare-fun e!487252 () Bool)

(assert (=> b!875186 (= e!487252 tp_is_empty!17369)))

(declare-fun b!875187 () Bool)

(declare-fun res!594885 () Bool)

(assert (=> b!875187 (=> (not res!594885) (not e!487248))))

(assert (=> b!875187 (= res!594885 (and (= (size!24890 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24889 _keys!868) (size!24890 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!875188 () Bool)

(declare-fun res!594890 () Bool)

(assert (=> b!875188 (=> (not res!594890) (not e!487248))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!875188 (= res!594890 (and (= (select (arr!24448 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!875189 () Bool)

(declare-fun e!487255 () Bool)

(declare-fun mapRes!27662 () Bool)

(assert (=> b!875189 (= e!487251 (and e!487255 mapRes!27662))))

(declare-fun condMapEmpty!27662 () Bool)

(declare-fun mapDefault!27662 () ValueCell!8245)

