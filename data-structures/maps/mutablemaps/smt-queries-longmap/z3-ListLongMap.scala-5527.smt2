; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72976 () Bool)

(assert start!72976)

(declare-fun b_free!13863 () Bool)

(declare-fun b_next!13863 () Bool)

(assert (=> start!72976 (= b_free!13863 (not b_next!13863))))

(declare-fun tp!49093 () Bool)

(declare-fun b_and!22967 () Bool)

(assert (=> start!72976 (= tp!49093 b_and!22967)))

(declare-fun b!846973 () Bool)

(declare-fun res!575580 () Bool)

(declare-fun e!472676 () Bool)

(assert (=> b!846973 (=> (not res!575580) (not e!472676))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48194 0))(
  ( (array!48195 (arr!23124 (Array (_ BitVec 32) (_ BitVec 64))) (size!23565 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48194)

(declare-datatypes ((V!26379 0))(
  ( (V!26380 (val!8047 Int)) )
))
(declare-datatypes ((ValueCell!7560 0))(
  ( (ValueCellFull!7560 (v!10468 V!26379)) (EmptyCell!7560) )
))
(declare-datatypes ((array!48196 0))(
  ( (array!48197 (arr!23125 (Array (_ BitVec 32) ValueCell!7560)) (size!23566 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48196)

(assert (=> b!846973 (= res!575580 (and (= (size!23566 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23565 _keys!868) (size!23566 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!846974 () Bool)

(declare-fun e!472678 () Bool)

(declare-fun tp_is_empty!15999 () Bool)

(assert (=> b!846974 (= e!472678 tp_is_empty!15999)))

(declare-fun b!846975 () Bool)

(assert (=> b!846975 (= e!472676 false)))

(declare-fun v!557 () V!26379)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10524 0))(
  ( (tuple2!10525 (_1!5272 (_ BitVec 64)) (_2!5272 V!26379)) )
))
(declare-datatypes ((List!16437 0))(
  ( (Nil!16434) (Cons!16433 (h!17564 tuple2!10524) (t!22816 List!16437)) )
))
(declare-datatypes ((ListLongMap!9307 0))(
  ( (ListLongMap!9308 (toList!4669 List!16437)) )
))
(declare-fun lt!381605 () ListLongMap!9307)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26379)

(declare-fun zeroValue!654 () V!26379)

(declare-fun getCurrentListMapNoExtraKeys!2658 (array!48194 array!48196 (_ BitVec 32) (_ BitVec 32) V!26379 V!26379 (_ BitVec 32) Int) ListLongMap!9307)

(assert (=> b!846975 (= lt!381605 (getCurrentListMapNoExtraKeys!2658 _keys!868 (array!48197 (store (arr!23125 _values!688) i!612 (ValueCellFull!7560 v!557)) (size!23566 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381606 () ListLongMap!9307)

(assert (=> b!846975 (= lt!381606 (getCurrentListMapNoExtraKeys!2658 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!846976 () Bool)

(declare-fun res!575579 () Bool)

(assert (=> b!846976 (=> (not res!575579) (not e!472676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846976 (= res!575579 (validMask!0 mask!1196))))

(declare-fun res!575584 () Bool)

(assert (=> start!72976 (=> (not res!575584) (not e!472676))))

(assert (=> start!72976 (= res!575584 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23565 _keys!868))))))

(assert (=> start!72976 e!472676))

(assert (=> start!72976 tp_is_empty!15999))

(assert (=> start!72976 true))

(assert (=> start!72976 tp!49093))

(declare-fun array_inv!18348 (array!48194) Bool)

(assert (=> start!72976 (array_inv!18348 _keys!868)))

(declare-fun e!472677 () Bool)

(declare-fun array_inv!18349 (array!48196) Bool)

(assert (=> start!72976 (and (array_inv!18349 _values!688) e!472677)))

(declare-fun b!846977 () Bool)

(declare-fun res!575581 () Bool)

(assert (=> b!846977 (=> (not res!575581) (not e!472676))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48194 (_ BitVec 32)) Bool)

(assert (=> b!846977 (= res!575581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!846978 () Bool)

(declare-fun res!575586 () Bool)

(assert (=> b!846978 (=> (not res!575586) (not e!472676))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!846978 (= res!575586 (and (= (select (arr!23124 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!25598 () Bool)

(declare-fun mapRes!25598 () Bool)

(declare-fun tp!49094 () Bool)

(assert (=> mapNonEmpty!25598 (= mapRes!25598 (and tp!49094 e!472678))))

(declare-fun mapKey!25598 () (_ BitVec 32))

(declare-fun mapValue!25598 () ValueCell!7560)

(declare-fun mapRest!25598 () (Array (_ BitVec 32) ValueCell!7560))

(assert (=> mapNonEmpty!25598 (= (arr!23125 _values!688) (store mapRest!25598 mapKey!25598 mapValue!25598))))

(declare-fun b!846979 () Bool)

(declare-fun res!575583 () Bool)

(assert (=> b!846979 (=> (not res!575583) (not e!472676))))

(declare-datatypes ((List!16438 0))(
  ( (Nil!16435) (Cons!16434 (h!17565 (_ BitVec 64)) (t!22817 List!16438)) )
))
(declare-fun arrayNoDuplicates!0 (array!48194 (_ BitVec 32) List!16438) Bool)

(assert (=> b!846979 (= res!575583 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16435))))

(declare-fun b!846980 () Bool)

(declare-fun res!575585 () Bool)

(assert (=> b!846980 (=> (not res!575585) (not e!472676))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846980 (= res!575585 (validKeyInArray!0 k0!854))))

(declare-fun b!846981 () Bool)

(declare-fun e!472679 () Bool)

(assert (=> b!846981 (= e!472677 (and e!472679 mapRes!25598))))

(declare-fun condMapEmpty!25598 () Bool)

(declare-fun mapDefault!25598 () ValueCell!7560)

(assert (=> b!846981 (= condMapEmpty!25598 (= (arr!23125 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7560)) mapDefault!25598)))))

(declare-fun b!846982 () Bool)

(assert (=> b!846982 (= e!472679 tp_is_empty!15999)))

(declare-fun mapIsEmpty!25598 () Bool)

(assert (=> mapIsEmpty!25598 mapRes!25598))

(declare-fun b!846983 () Bool)

(declare-fun res!575582 () Bool)

(assert (=> b!846983 (=> (not res!575582) (not e!472676))))

(assert (=> b!846983 (= res!575582 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23565 _keys!868))))))

(assert (= (and start!72976 res!575584) b!846976))

(assert (= (and b!846976 res!575579) b!846973))

(assert (= (and b!846973 res!575580) b!846977))

(assert (= (and b!846977 res!575581) b!846979))

(assert (= (and b!846979 res!575583) b!846983))

(assert (= (and b!846983 res!575582) b!846980))

(assert (= (and b!846980 res!575585) b!846978))

(assert (= (and b!846978 res!575586) b!846975))

(assert (= (and b!846981 condMapEmpty!25598) mapIsEmpty!25598))

(assert (= (and b!846981 (not condMapEmpty!25598)) mapNonEmpty!25598))

(get-info :version)

(assert (= (and mapNonEmpty!25598 ((_ is ValueCellFull!7560) mapValue!25598)) b!846974))

(assert (= (and b!846981 ((_ is ValueCellFull!7560) mapDefault!25598)) b!846982))

(assert (= start!72976 b!846981))

(declare-fun m!788253 () Bool)

(assert (=> mapNonEmpty!25598 m!788253))

(declare-fun m!788255 () Bool)

(assert (=> b!846979 m!788255))

(declare-fun m!788257 () Bool)

(assert (=> b!846975 m!788257))

(declare-fun m!788259 () Bool)

(assert (=> b!846975 m!788259))

(declare-fun m!788261 () Bool)

(assert (=> b!846975 m!788261))

(declare-fun m!788263 () Bool)

(assert (=> b!846976 m!788263))

(declare-fun m!788265 () Bool)

(assert (=> b!846980 m!788265))

(declare-fun m!788267 () Bool)

(assert (=> b!846978 m!788267))

(declare-fun m!788269 () Bool)

(assert (=> start!72976 m!788269))

(declare-fun m!788271 () Bool)

(assert (=> start!72976 m!788271))

(declare-fun m!788273 () Bool)

(assert (=> b!846977 m!788273))

(check-sat (not b!846976) (not mapNonEmpty!25598) (not b!846979) tp_is_empty!15999 (not start!72976) (not b!846980) (not b!846975) (not b_next!13863) (not b!846977) b_and!22967)
(check-sat b_and!22967 (not b_next!13863))
