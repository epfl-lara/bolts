; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75018 () Bool)

(assert start!75018)

(declare-fun b_free!15479 () Bool)

(declare-fun b_next!15479 () Bool)

(assert (=> start!75018 (= b_free!15479 (not b_next!15479))))

(declare-fun tp!54144 () Bool)

(declare-fun b_and!25687 () Bool)

(assert (=> start!75018 (= tp!54144 b_and!25687)))

(declare-fun b!884452 () Bool)

(declare-fun e!492242 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((V!28677 0))(
  ( (V!28678 (val!8909 Int)) )
))
(declare-datatypes ((ValueCell!8422 0))(
  ( (ValueCellFull!8422 (v!11378 V!28677)) (EmptyCell!8422) )
))
(declare-datatypes ((array!51556 0))(
  ( (array!51557 (arr!24792 (Array (_ BitVec 32) ValueCell!8422)) (size!25233 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51556)

(assert (=> b!884452 (= e!492242 (bvslt i!612 (size!25233 _values!688)))))

(declare-fun b!884453 () Bool)

(declare-fun res!600942 () Bool)

(declare-fun e!492243 () Bool)

(assert (=> b!884453 (=> (not res!600942) (not e!492243))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51558 0))(
  ( (array!51559 (arr!24793 (Array (_ BitVec 32) (_ BitVec 64))) (size!25234 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51558)

(assert (=> b!884453 (= res!600942 (and (= (size!25233 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25234 _keys!868) (size!25233 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!884454 () Bool)

(declare-fun res!600946 () Bool)

(assert (=> b!884454 (=> (not res!600946) (not e!492243))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!884454 (= res!600946 (validKeyInArray!0 k!854))))

(declare-fun res!600943 () Bool)

(assert (=> start!75018 (=> (not res!600943) (not e!492243))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!75018 (= res!600943 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25234 _keys!868))))))

(assert (=> start!75018 e!492243))

(declare-fun tp_is_empty!17723 () Bool)

(assert (=> start!75018 tp_is_empty!17723))

(assert (=> start!75018 true))

(assert (=> start!75018 tp!54144))

(declare-fun array_inv!19494 (array!51558) Bool)

(assert (=> start!75018 (array_inv!19494 _keys!868)))

(declare-fun e!492245 () Bool)

(declare-fun array_inv!19495 (array!51556) Bool)

(assert (=> start!75018 (and (array_inv!19495 _values!688) e!492245)))

(declare-fun b!884455 () Bool)

(declare-fun res!600945 () Bool)

(assert (=> b!884455 (=> (not res!600945) (not e!492243))))

(declare-datatypes ((List!17706 0))(
  ( (Nil!17703) (Cons!17702 (h!18833 (_ BitVec 64)) (t!24989 List!17706)) )
))
(declare-fun arrayNoDuplicates!0 (array!51558 (_ BitVec 32) List!17706) Bool)

(assert (=> b!884455 (= res!600945 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17703))))

(declare-fun b!884456 () Bool)

(declare-fun res!600941 () Bool)

(assert (=> b!884456 (=> (not res!600941) (not e!492243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!884456 (= res!600941 (validMask!0 mask!1196))))

(declare-fun b!884457 () Bool)

(declare-fun e!492241 () Bool)

(assert (=> b!884457 (= e!492241 (not e!492242))))

(declare-fun res!600944 () Bool)

(assert (=> b!884457 (=> res!600944 e!492242)))

(assert (=> b!884457 (= res!600944 (validKeyInArray!0 (select (arr!24793 _keys!868) from!1053)))))

(declare-fun lt!400672 () array!51556)

(declare-fun v!557 () V!28677)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28677)

(declare-fun zeroValue!654 () V!28677)

(declare-datatypes ((tuple2!11842 0))(
  ( (tuple2!11843 (_1!5931 (_ BitVec 64)) (_2!5931 V!28677)) )
))
(declare-datatypes ((List!17707 0))(
  ( (Nil!17704) (Cons!17703 (h!18834 tuple2!11842) (t!24990 List!17707)) )
))
(declare-datatypes ((ListLongMap!10625 0))(
  ( (ListLongMap!10626 (toList!5328 List!17707)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3282 (array!51558 array!51556 (_ BitVec 32) (_ BitVec 32) V!28677 V!28677 (_ BitVec 32) Int) ListLongMap!10625)

(declare-fun +!2531 (ListLongMap!10625 tuple2!11842) ListLongMap!10625)

(assert (=> b!884457 (= (getCurrentListMapNoExtraKeys!3282 _keys!868 lt!400672 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2531 (getCurrentListMapNoExtraKeys!3282 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11843 k!854 v!557)))))

(declare-datatypes ((Unit!30171 0))(
  ( (Unit!30172) )
))
(declare-fun lt!400670 () Unit!30171)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!752 (array!51558 array!51556 (_ BitVec 32) (_ BitVec 32) V!28677 V!28677 (_ BitVec 32) (_ BitVec 64) V!28677 (_ BitVec 32) Int) Unit!30171)

(assert (=> b!884457 (= lt!400670 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!752 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!884458 () Bool)

(declare-fun res!600947 () Bool)

(assert (=> b!884458 (=> (not res!600947) (not e!492243))))

(assert (=> b!884458 (= res!600947 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25234 _keys!868))))))

(declare-fun b!884459 () Bool)

(assert (=> b!884459 (= e!492243 e!492241)))

(declare-fun res!600948 () Bool)

(assert (=> b!884459 (=> (not res!600948) (not e!492241))))

(assert (=> b!884459 (= res!600948 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!400673 () ListLongMap!10625)

(assert (=> b!884459 (= lt!400673 (getCurrentListMapNoExtraKeys!3282 _keys!868 lt!400672 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!884459 (= lt!400672 (array!51557 (store (arr!24792 _values!688) i!612 (ValueCellFull!8422 v!557)) (size!25233 _values!688)))))

(declare-fun lt!400671 () ListLongMap!10625)

(assert (=> b!884459 (= lt!400671 (getCurrentListMapNoExtraKeys!3282 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!28224 () Bool)

(declare-fun mapRes!28224 () Bool)

(assert (=> mapIsEmpty!28224 mapRes!28224))

(declare-fun b!884460 () Bool)

(declare-fun e!492247 () Bool)

(assert (=> b!884460 (= e!492247 tp_is_empty!17723)))

(declare-fun b!884461 () Bool)

(declare-fun e!492246 () Bool)

(assert (=> b!884461 (= e!492245 (and e!492246 mapRes!28224))))

(declare-fun condMapEmpty!28224 () Bool)

(declare-fun mapDefault!28224 () ValueCell!8422)

