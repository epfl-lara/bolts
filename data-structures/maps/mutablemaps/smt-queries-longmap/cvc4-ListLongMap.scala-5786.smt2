; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74690 () Bool)

(assert start!74690)

(declare-fun b_free!15311 () Bool)

(declare-fun b_next!15311 () Bool)

(assert (=> start!74690 (= b_free!15311 (not b_next!15311))))

(declare-fun tp!53621 () Bool)

(declare-fun b_and!25259 () Bool)

(assert (=> start!74690 (= tp!53621 b_and!25259)))

(declare-fun b!879732 () Bool)

(declare-fun res!597784 () Bool)

(declare-fun e!489614 () Bool)

(assert (=> b!879732 (=> (not res!597784) (not e!489614))))

(declare-datatypes ((array!51220 0))(
  ( (array!51221 (arr!24630 (Array (_ BitVec 32) (_ BitVec 64))) (size!25071 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51220)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51220 (_ BitVec 32)) Bool)

(assert (=> b!879732 (= res!597784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!879733 () Bool)

(declare-fun res!597776 () Bool)

(assert (=> b!879733 (=> (not res!597776) (not e!489614))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!879733 (= res!597776 (and (= (select (arr!24630 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!879734 () Bool)

(declare-fun res!597777 () Bool)

(assert (=> b!879734 (=> (not res!597777) (not e!489614))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!879734 (= res!597777 (validKeyInArray!0 k!854))))

(declare-fun b!879735 () Bool)

(declare-fun res!597778 () Bool)

(assert (=> b!879735 (=> (not res!597778) (not e!489614))))

(declare-datatypes ((List!17571 0))(
  ( (Nil!17568) (Cons!17567 (h!18698 (_ BitVec 64)) (t!24692 List!17571)) )
))
(declare-fun arrayNoDuplicates!0 (array!51220 (_ BitVec 32) List!17571) Bool)

(assert (=> b!879735 (= res!597778 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17568))))

(declare-fun res!597775 () Bool)

(assert (=> start!74690 (=> (not res!597775) (not e!489614))))

(assert (=> start!74690 (= res!597775 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25071 _keys!868))))))

(assert (=> start!74690 e!489614))

(declare-fun tp_is_empty!17555 () Bool)

(assert (=> start!74690 tp_is_empty!17555))

(assert (=> start!74690 true))

(assert (=> start!74690 tp!53621))

(declare-fun array_inv!19390 (array!51220) Bool)

(assert (=> start!74690 (array_inv!19390 _keys!868)))

(declare-datatypes ((V!28453 0))(
  ( (V!28454 (val!8825 Int)) )
))
(declare-datatypes ((ValueCell!8338 0))(
  ( (ValueCellFull!8338 (v!11269 V!28453)) (EmptyCell!8338) )
))
(declare-datatypes ((array!51222 0))(
  ( (array!51223 (arr!24631 (Array (_ BitVec 32) ValueCell!8338)) (size!25072 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51222)

(declare-fun e!489615 () Bool)

(declare-fun array_inv!19391 (array!51222) Bool)

(assert (=> start!74690 (and (array_inv!19391 _values!688) e!489615)))

(declare-fun mapNonEmpty!27954 () Bool)

(declare-fun mapRes!27954 () Bool)

(declare-fun tp!53622 () Bool)

(declare-fun e!489612 () Bool)

(assert (=> mapNonEmpty!27954 (= mapRes!27954 (and tp!53622 e!489612))))

(declare-fun mapKey!27954 () (_ BitVec 32))

(declare-fun mapRest!27954 () (Array (_ BitVec 32) ValueCell!8338))

(declare-fun mapValue!27954 () ValueCell!8338)

(assert (=> mapNonEmpty!27954 (= (arr!24631 _values!688) (store mapRest!27954 mapKey!27954 mapValue!27954))))

(declare-fun b!879736 () Bool)

(declare-fun e!489611 () Bool)

(assert (=> b!879736 (= e!489611 tp_is_empty!17555)))

(declare-fun b!879737 () Bool)

(declare-fun res!597781 () Bool)

(assert (=> b!879737 (=> (not res!597781) (not e!489614))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!879737 (= res!597781 (and (= (size!25072 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25071 _keys!868) (size!25072 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!879738 () Bool)

(declare-fun e!489616 () Bool)

(assert (=> b!879738 (= e!489616 true)))

(declare-datatypes ((tuple2!11696 0))(
  ( (tuple2!11697 (_1!5858 (_ BitVec 64)) (_2!5858 V!28453)) )
))
(declare-datatypes ((List!17572 0))(
  ( (Nil!17569) (Cons!17568 (h!18699 tuple2!11696) (t!24693 List!17572)) )
))
(declare-datatypes ((ListLongMap!10479 0))(
  ( (ListLongMap!10480 (toList!5255 List!17572)) )
))
(declare-fun lt!397777 () ListLongMap!10479)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!397779 () ListLongMap!10479)

(declare-fun +!2461 (ListLongMap!10479 tuple2!11696) ListLongMap!10479)

(declare-fun get!12962 (ValueCell!8338 V!28453) V!28453)

(declare-fun dynLambda!1231 (Int (_ BitVec 64)) V!28453)

(assert (=> b!879738 (= lt!397777 (+!2461 lt!397779 (tuple2!11697 (select (arr!24630 _keys!868) from!1053) (get!12962 (select (arr!24631 _values!688) from!1053) (dynLambda!1231 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!879739 () Bool)

(declare-fun e!489617 () Bool)

(assert (=> b!879739 (= e!489614 e!489617)))

(declare-fun res!597780 () Bool)

(assert (=> b!879739 (=> (not res!597780) (not e!489617))))

(assert (=> b!879739 (= res!597780 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!397776 () array!51222)

(declare-fun minValue!654 () V!28453)

(declare-fun zeroValue!654 () V!28453)

(declare-fun getCurrentListMapNoExtraKeys!3216 (array!51220 array!51222 (_ BitVec 32) (_ BitVec 32) V!28453 V!28453 (_ BitVec 32) Int) ListLongMap!10479)

(assert (=> b!879739 (= lt!397777 (getCurrentListMapNoExtraKeys!3216 _keys!868 lt!397776 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28453)

(assert (=> b!879739 (= lt!397776 (array!51223 (store (arr!24631 _values!688) i!612 (ValueCellFull!8338 v!557)) (size!25072 _values!688)))))

(declare-fun lt!397775 () ListLongMap!10479)

(assert (=> b!879739 (= lt!397775 (getCurrentListMapNoExtraKeys!3216 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!879740 () Bool)

(assert (=> b!879740 (= e!489617 (not e!489616))))

(declare-fun res!597782 () Bool)

(assert (=> b!879740 (=> res!597782 e!489616)))

(assert (=> b!879740 (= res!597782 (not (validKeyInArray!0 (select (arr!24630 _keys!868) from!1053))))))

(declare-fun lt!397778 () ListLongMap!10479)

(assert (=> b!879740 (= lt!397778 lt!397779)))

(declare-fun lt!397774 () ListLongMap!10479)

(assert (=> b!879740 (= lt!397779 (+!2461 lt!397774 (tuple2!11697 k!854 v!557)))))

(assert (=> b!879740 (= lt!397778 (getCurrentListMapNoExtraKeys!3216 _keys!868 lt!397776 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!879740 (= lt!397774 (getCurrentListMapNoExtraKeys!3216 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30000 0))(
  ( (Unit!30001) )
))
(declare-fun lt!397780 () Unit!30000)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!692 (array!51220 array!51222 (_ BitVec 32) (_ BitVec 32) V!28453 V!28453 (_ BitVec 32) (_ BitVec 64) V!28453 (_ BitVec 32) Int) Unit!30000)

(assert (=> b!879740 (= lt!397780 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!692 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!879741 () Bool)

(assert (=> b!879741 (= e!489615 (and e!489611 mapRes!27954))))

(declare-fun condMapEmpty!27954 () Bool)

(declare-fun mapDefault!27954 () ValueCell!8338)

