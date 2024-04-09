; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74624 () Bool)

(assert start!74624)

(declare-fun b_free!15285 () Bool)

(declare-fun b_next!15285 () Bool)

(assert (=> start!74624 (= b_free!15285 (not b_next!15285))))

(declare-fun tp!53537 () Bool)

(declare-fun b_and!25179 () Bool)

(assert (=> start!74624 (= tp!53537 b_and!25179)))

(declare-fun b!878943 () Bool)

(declare-fun res!597286 () Bool)

(declare-fun e!489174 () Bool)

(assert (=> b!878943 (=> (not res!597286) (not e!489174))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878943 (= res!597286 (validMask!0 mask!1196))))

(declare-fun b!878944 () Bool)

(declare-fun res!597291 () Bool)

(assert (=> b!878944 (=> (not res!597291) (not e!489174))))

(declare-datatypes ((array!51164 0))(
  ( (array!51165 (arr!24604 (Array (_ BitVec 32) (_ BitVec 64))) (size!25045 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51164)

(declare-datatypes ((List!17552 0))(
  ( (Nil!17549) (Cons!17548 (h!18679 (_ BitVec 64)) (t!24649 List!17552)) )
))
(declare-fun arrayNoDuplicates!0 (array!51164 (_ BitVec 32) List!17552) Bool)

(assert (=> b!878944 (= res!597291 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17549))))

(declare-fun b!878945 () Bool)

(declare-fun e!489175 () Bool)

(declare-fun e!489177 () Bool)

(assert (=> b!878945 (= e!489175 (not e!489177))))

(declare-fun res!597287 () Bool)

(assert (=> b!878945 (=> res!597287 e!489177)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878945 (= res!597287 (not (validKeyInArray!0 (select (arr!24604 _keys!868) from!1053))))))

(declare-datatypes ((V!28419 0))(
  ( (V!28420 (val!8812 Int)) )
))
(declare-fun v!557 () V!28419)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((ValueCell!8325 0))(
  ( (ValueCellFull!8325 (v!11248 V!28419)) (EmptyCell!8325) )
))
(declare-datatypes ((array!51166 0))(
  ( (array!51167 (arr!24605 (Array (_ BitVec 32) ValueCell!8325)) (size!25046 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51166)

(declare-fun minValue!654 () V!28419)

(declare-fun zeroValue!654 () V!28419)

(declare-fun lt!397375 () array!51166)

(declare-datatypes ((tuple2!11676 0))(
  ( (tuple2!11677 (_1!5848 (_ BitVec 64)) (_2!5848 V!28419)) )
))
(declare-datatypes ((List!17553 0))(
  ( (Nil!17550) (Cons!17549 (h!18680 tuple2!11676) (t!24650 List!17553)) )
))
(declare-datatypes ((ListLongMap!10459 0))(
  ( (ListLongMap!10460 (toList!5245 List!17553)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3207 (array!51164 array!51166 (_ BitVec 32) (_ BitVec 32) V!28419 V!28419 (_ BitVec 32) Int) ListLongMap!10459)

(declare-fun +!2451 (ListLongMap!10459 tuple2!11676) ListLongMap!10459)

(assert (=> b!878945 (= (getCurrentListMapNoExtraKeys!3207 _keys!868 lt!397375 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2451 (getCurrentListMapNoExtraKeys!3207 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11677 k0!854 v!557)))))

(declare-datatypes ((Unit!29982 0))(
  ( (Unit!29983) )
))
(declare-fun lt!397373 () Unit!29982)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!683 (array!51164 array!51166 (_ BitVec 32) (_ BitVec 32) V!28419 V!28419 (_ BitVec 32) (_ BitVec 64) V!28419 (_ BitVec 32) Int) Unit!29982)

(assert (=> b!878945 (= lt!397373 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!683 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!878946 () Bool)

(declare-fun e!489178 () Bool)

(declare-fun tp_is_empty!17529 () Bool)

(assert (=> b!878946 (= e!489178 tp_is_empty!17529)))

(declare-fun b!878947 () Bool)

(assert (=> b!878947 (= e!489177 (bvslt from!1053 (size!25046 _values!688)))))

(declare-fun b!878948 () Bool)

(declare-fun res!597294 () Bool)

(assert (=> b!878948 (=> (not res!597294) (not e!489174))))

(assert (=> b!878948 (= res!597294 (and (= (select (arr!24604 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!878949 () Bool)

(declare-fun res!597285 () Bool)

(assert (=> b!878949 (=> (not res!597285) (not e!489174))))

(assert (=> b!878949 (= res!597285 (validKeyInArray!0 k0!854))))

(declare-fun b!878950 () Bool)

(assert (=> b!878950 (= e!489174 e!489175)))

(declare-fun res!597289 () Bool)

(assert (=> b!878950 (=> (not res!597289) (not e!489175))))

(assert (=> b!878950 (= res!597289 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!397376 () ListLongMap!10459)

(assert (=> b!878950 (= lt!397376 (getCurrentListMapNoExtraKeys!3207 _keys!868 lt!397375 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!878950 (= lt!397375 (array!51167 (store (arr!24605 _values!688) i!612 (ValueCellFull!8325 v!557)) (size!25046 _values!688)))))

(declare-fun lt!397374 () ListLongMap!10459)

(assert (=> b!878950 (= lt!397374 (getCurrentListMapNoExtraKeys!3207 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!27909 () Bool)

(declare-fun mapRes!27909 () Bool)

(assert (=> mapIsEmpty!27909 mapRes!27909))

(declare-fun res!597290 () Bool)

(assert (=> start!74624 (=> (not res!597290) (not e!489174))))

(assert (=> start!74624 (= res!597290 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25045 _keys!868))))))

(assert (=> start!74624 e!489174))

(assert (=> start!74624 tp_is_empty!17529))

(assert (=> start!74624 true))

(assert (=> start!74624 tp!53537))

(declare-fun array_inv!19370 (array!51164) Bool)

(assert (=> start!74624 (array_inv!19370 _keys!868)))

(declare-fun e!489180 () Bool)

(declare-fun array_inv!19371 (array!51166) Bool)

(assert (=> start!74624 (and (array_inv!19371 _values!688) e!489180)))

(declare-fun mapNonEmpty!27909 () Bool)

(declare-fun tp!53538 () Bool)

(declare-fun e!489179 () Bool)

(assert (=> mapNonEmpty!27909 (= mapRes!27909 (and tp!53538 e!489179))))

(declare-fun mapRest!27909 () (Array (_ BitVec 32) ValueCell!8325))

(declare-fun mapValue!27909 () ValueCell!8325)

(declare-fun mapKey!27909 () (_ BitVec 32))

(assert (=> mapNonEmpty!27909 (= (arr!24605 _values!688) (store mapRest!27909 mapKey!27909 mapValue!27909))))

(declare-fun b!878951 () Bool)

(assert (=> b!878951 (= e!489180 (and e!489178 mapRes!27909))))

(declare-fun condMapEmpty!27909 () Bool)

(declare-fun mapDefault!27909 () ValueCell!8325)

(assert (=> b!878951 (= condMapEmpty!27909 (= (arr!24605 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8325)) mapDefault!27909)))))

(declare-fun b!878952 () Bool)

(assert (=> b!878952 (= e!489179 tp_is_empty!17529)))

(declare-fun b!878953 () Bool)

(declare-fun res!597293 () Bool)

(assert (=> b!878953 (=> (not res!597293) (not e!489174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51164 (_ BitVec 32)) Bool)

(assert (=> b!878953 (= res!597293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878954 () Bool)

(declare-fun res!597292 () Bool)

(assert (=> b!878954 (=> (not res!597292) (not e!489174))))

(assert (=> b!878954 (= res!597292 (and (= (size!25046 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25045 _keys!868) (size!25046 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!878955 () Bool)

(declare-fun res!597288 () Bool)

(assert (=> b!878955 (=> (not res!597288) (not e!489174))))

(assert (=> b!878955 (= res!597288 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25045 _keys!868))))))

(assert (= (and start!74624 res!597290) b!878943))

(assert (= (and b!878943 res!597286) b!878954))

(assert (= (and b!878954 res!597292) b!878953))

(assert (= (and b!878953 res!597293) b!878944))

(assert (= (and b!878944 res!597291) b!878955))

(assert (= (and b!878955 res!597288) b!878949))

(assert (= (and b!878949 res!597285) b!878948))

(assert (= (and b!878948 res!597294) b!878950))

(assert (= (and b!878950 res!597289) b!878945))

(assert (= (and b!878945 (not res!597287)) b!878947))

(assert (= (and b!878951 condMapEmpty!27909) mapIsEmpty!27909))

(assert (= (and b!878951 (not condMapEmpty!27909)) mapNonEmpty!27909))

(get-info :version)

(assert (= (and mapNonEmpty!27909 ((_ is ValueCellFull!8325) mapValue!27909)) b!878952))

(assert (= (and b!878951 ((_ is ValueCellFull!8325) mapDefault!27909)) b!878946))

(assert (= start!74624 b!878951))

(declare-fun m!818773 () Bool)

(assert (=> b!878949 m!818773))

(declare-fun m!818775 () Bool)

(assert (=> b!878945 m!818775))

(declare-fun m!818777 () Bool)

(assert (=> b!878945 m!818777))

(assert (=> b!878945 m!818775))

(declare-fun m!818779 () Bool)

(assert (=> b!878945 m!818779))

(declare-fun m!818781 () Bool)

(assert (=> b!878945 m!818781))

(declare-fun m!818783 () Bool)

(assert (=> b!878945 m!818783))

(assert (=> b!878945 m!818779))

(declare-fun m!818785 () Bool)

(assert (=> b!878945 m!818785))

(declare-fun m!818787 () Bool)

(assert (=> b!878953 m!818787))

(declare-fun m!818789 () Bool)

(assert (=> b!878948 m!818789))

(declare-fun m!818791 () Bool)

(assert (=> b!878943 m!818791))

(declare-fun m!818793 () Bool)

(assert (=> mapNonEmpty!27909 m!818793))

(declare-fun m!818795 () Bool)

(assert (=> b!878944 m!818795))

(declare-fun m!818797 () Bool)

(assert (=> b!878950 m!818797))

(declare-fun m!818799 () Bool)

(assert (=> b!878950 m!818799))

(declare-fun m!818801 () Bool)

(assert (=> b!878950 m!818801))

(declare-fun m!818803 () Bool)

(assert (=> start!74624 m!818803))

(declare-fun m!818805 () Bool)

(assert (=> start!74624 m!818805))

(check-sat (not b!878943) (not mapNonEmpty!27909) (not b_next!15285) (not b!878950) b_and!25179 (not start!74624) (not b!878953) (not b!878949) (not b!878944) (not b!878945) tp_is_empty!17529)
(check-sat b_and!25179 (not b_next!15285))
