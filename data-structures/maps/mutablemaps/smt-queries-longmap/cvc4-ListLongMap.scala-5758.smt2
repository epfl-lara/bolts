; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74408 () Bool)

(assert start!74408)

(declare-fun b_free!15143 () Bool)

(declare-fun b_next!15143 () Bool)

(assert (=> start!74408 (= b_free!15143 (not b_next!15143))))

(declare-fun tp!53104 () Bool)

(declare-fun b_and!24941 () Bool)

(assert (=> start!74408 (= tp!53104 b_and!24941)))

(declare-fun b!875591 () Bool)

(declare-fun e!487471 () Bool)

(declare-datatypes ((V!28229 0))(
  ( (V!28230 (val!8741 Int)) )
))
(declare-datatypes ((tuple2!11558 0))(
  ( (tuple2!11559 (_1!5789 (_ BitVec 64)) (_2!5789 V!28229)) )
))
(declare-datatypes ((List!17444 0))(
  ( (Nil!17441) (Cons!17440 (h!18571 tuple2!11558) (t!24499 List!17444)) )
))
(declare-datatypes ((ListLongMap!10341 0))(
  ( (ListLongMap!10342 (toList!5186 List!17444)) )
))
(declare-fun call!38654 () ListLongMap!10341)

(declare-fun call!38655 () ListLongMap!10341)

(assert (=> b!875591 (= e!487471 (= call!38654 call!38655))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!8254 0))(
  ( (ValueCellFull!8254 (v!11166 V!28229)) (EmptyCell!8254) )
))
(declare-datatypes ((array!50882 0))(
  ( (array!50883 (arr!24465 (Array (_ BitVec 32) ValueCell!8254)) (size!24906 (_ BitVec 32))) )
))
(declare-fun lt!396213 () array!50882)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!50884 0))(
  ( (array!50885 (arr!24466 (Array (_ BitVec 32) (_ BitVec 64))) (size!24907 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50884)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28229)

(declare-fun zeroValue!654 () V!28229)

(declare-fun b!875592 () Bool)

(declare-fun e!487470 () Bool)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!396214 () ListLongMap!10341)

(declare-fun +!2426 (ListLongMap!10341 tuple2!11558) ListLongMap!10341)

(declare-fun getCurrentListMapNoExtraKeys!3149 (array!50884 array!50882 (_ BitVec 32) (_ BitVec 32) V!28229 V!28229 (_ BitVec 32) Int) ListLongMap!10341)

(declare-fun get!12876 (ValueCell!8254 V!28229) V!28229)

(declare-fun dynLambda!1210 (Int (_ BitVec 64)) V!28229)

(assert (=> b!875592 (= e!487470 (= lt!396214 (+!2426 (getCurrentListMapNoExtraKeys!3149 _keys!868 lt!396213 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11559 (select (arr!24466 _keys!868) from!1053) (get!12876 (select (arr!24465 lt!396213) from!1053) (dynLambda!1210 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun res!595155 () Bool)

(declare-fun e!487465 () Bool)

(assert (=> start!74408 (=> (not res!595155) (not e!487465))))

(assert (=> start!74408 (= res!595155 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24907 _keys!868))))))

(assert (=> start!74408 e!487465))

(declare-fun tp_is_empty!17387 () Bool)

(assert (=> start!74408 tp_is_empty!17387))

(assert (=> start!74408 true))

(assert (=> start!74408 tp!53104))

(declare-fun array_inv!19270 (array!50884) Bool)

(assert (=> start!74408 (array_inv!19270 _keys!868)))

(declare-fun _values!688 () array!50882)

(declare-fun e!487467 () Bool)

(declare-fun array_inv!19271 (array!50882) Bool)

(assert (=> start!74408 (and (array_inv!19271 _values!688) e!487467)))

(declare-fun b!875593 () Bool)

(declare-fun e!487468 () Bool)

(assert (=> b!875593 (= e!487468 (not e!487470))))

(declare-fun res!595154 () Bool)

(assert (=> b!875593 (=> res!595154 e!487470)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!875593 (= res!595154 (not (validKeyInArray!0 (select (arr!24466 _keys!868) from!1053))))))

(assert (=> b!875593 e!487471))

(declare-fun c!92446 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!875593 (= c!92446 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29912 0))(
  ( (Unit!29913) )
))
(declare-fun lt!396211 () Unit!29912)

(declare-fun v!557 () V!28229)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!660 (array!50884 array!50882 (_ BitVec 32) (_ BitVec 32) V!28229 V!28229 (_ BitVec 32) (_ BitVec 64) V!28229 (_ BitVec 32) Int) Unit!29912)

(assert (=> b!875593 (= lt!396211 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!660 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875594 () Bool)

(declare-fun res!595159 () Bool)

(assert (=> b!875594 (=> (not res!595159) (not e!487465))))

(declare-datatypes ((List!17445 0))(
  ( (Nil!17442) (Cons!17441 (h!18572 (_ BitVec 64)) (t!24500 List!17445)) )
))
(declare-fun arrayNoDuplicates!0 (array!50884 (_ BitVec 32) List!17445) Bool)

(assert (=> b!875594 (= res!595159 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17442))))

(declare-fun b!875595 () Bool)

(declare-fun e!487466 () Bool)

(assert (=> b!875595 (= e!487466 tp_is_empty!17387)))

(declare-fun b!875596 () Bool)

(declare-fun res!595162 () Bool)

(assert (=> b!875596 (=> (not res!595162) (not e!487465))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50884 (_ BitVec 32)) Bool)

(assert (=> b!875596 (= res!595162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!875597 () Bool)

(declare-fun res!595156 () Bool)

(assert (=> b!875597 (=> (not res!595156) (not e!487465))))

(assert (=> b!875597 (= res!595156 (validKeyInArray!0 k!854))))

(declare-fun bm!38651 () Bool)

(assert (=> bm!38651 (= call!38654 (getCurrentListMapNoExtraKeys!3149 _keys!868 lt!396213 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875598 () Bool)

(assert (=> b!875598 (= e!487465 e!487468)))

(declare-fun res!595160 () Bool)

(assert (=> b!875598 (=> (not res!595160) (not e!487468))))

(assert (=> b!875598 (= res!595160 (= from!1053 i!612))))

(assert (=> b!875598 (= lt!396214 (getCurrentListMapNoExtraKeys!3149 _keys!868 lt!396213 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!875598 (= lt!396213 (array!50883 (store (arr!24465 _values!688) i!612 (ValueCellFull!8254 v!557)) (size!24906 _values!688)))))

(declare-fun lt!396212 () ListLongMap!10341)

(assert (=> b!875598 (= lt!396212 (getCurrentListMapNoExtraKeys!3149 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!27689 () Bool)

(declare-fun mapRes!27689 () Bool)

(assert (=> mapIsEmpty!27689 mapRes!27689))

(declare-fun b!875599 () Bool)

(declare-fun res!595157 () Bool)

(assert (=> b!875599 (=> (not res!595157) (not e!487465))))

(assert (=> b!875599 (= res!595157 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24907 _keys!868))))))

(declare-fun b!875600 () Bool)

(assert (=> b!875600 (= e!487467 (and e!487466 mapRes!27689))))

(declare-fun condMapEmpty!27689 () Bool)

(declare-fun mapDefault!27689 () ValueCell!8254)

