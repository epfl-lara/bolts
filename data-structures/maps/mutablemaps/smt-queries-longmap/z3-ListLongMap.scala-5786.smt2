; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74688 () Bool)

(assert start!74688)

(declare-fun b_free!15309 () Bool)

(declare-fun b_next!15309 () Bool)

(assert (=> start!74688 (= b_free!15309 (not b_next!15309))))

(declare-fun tp!53615 () Bool)

(declare-fun b_and!25255 () Bool)

(assert (=> start!74688 (= tp!53615 b_and!25255)))

(declare-fun b!879691 () Bool)

(declare-fun res!597748 () Bool)

(declare-fun e!489593 () Bool)

(assert (=> b!879691 (=> (not res!597748) (not e!489593))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!879691 (= res!597748 (validMask!0 mask!1196))))

(declare-fun res!597752 () Bool)

(assert (=> start!74688 (=> (not res!597752) (not e!489593))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!51216 0))(
  ( (array!51217 (arr!24628 (Array (_ BitVec 32) (_ BitVec 64))) (size!25069 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51216)

(assert (=> start!74688 (= res!597752 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25069 _keys!868))))))

(assert (=> start!74688 e!489593))

(declare-fun tp_is_empty!17553 () Bool)

(assert (=> start!74688 tp_is_empty!17553))

(assert (=> start!74688 true))

(assert (=> start!74688 tp!53615))

(declare-fun array_inv!19388 (array!51216) Bool)

(assert (=> start!74688 (array_inv!19388 _keys!868)))

(declare-datatypes ((V!28451 0))(
  ( (V!28452 (val!8824 Int)) )
))
(declare-datatypes ((ValueCell!8337 0))(
  ( (ValueCellFull!8337 (v!11268 V!28451)) (EmptyCell!8337) )
))
(declare-datatypes ((array!51218 0))(
  ( (array!51219 (arr!24629 (Array (_ BitVec 32) ValueCell!8337)) (size!25070 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51218)

(declare-fun e!489595 () Bool)

(declare-fun array_inv!19389 (array!51218) Bool)

(assert (=> start!74688 (and (array_inv!19389 _values!688) e!489595)))

(declare-fun b!879692 () Bool)

(declare-fun e!489596 () Bool)

(declare-fun mapRes!27951 () Bool)

(assert (=> b!879692 (= e!489595 (and e!489596 mapRes!27951))))

(declare-fun condMapEmpty!27951 () Bool)

(declare-fun mapDefault!27951 () ValueCell!8337)

(assert (=> b!879692 (= condMapEmpty!27951 (= (arr!24629 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8337)) mapDefault!27951)))))

(declare-fun b!879693 () Bool)

(declare-fun e!489594 () Bool)

(assert (=> b!879693 (= e!489594 true)))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11694 0))(
  ( (tuple2!11695 (_1!5857 (_ BitVec 64)) (_2!5857 V!28451)) )
))
(declare-datatypes ((List!17569 0))(
  ( (Nil!17566) (Cons!17565 (h!18696 tuple2!11694) (t!24688 List!17569)) )
))
(declare-datatypes ((ListLongMap!10477 0))(
  ( (ListLongMap!10478 (toList!5254 List!17569)) )
))
(declare-fun lt!397755 () ListLongMap!10477)

(declare-fun lt!397759 () ListLongMap!10477)

(declare-fun +!2460 (ListLongMap!10477 tuple2!11694) ListLongMap!10477)

(declare-fun get!12961 (ValueCell!8337 V!28451) V!28451)

(declare-fun dynLambda!1230 (Int (_ BitVec 64)) V!28451)

(assert (=> b!879693 (= lt!397759 (+!2460 lt!397755 (tuple2!11695 (select (arr!24628 _keys!868) from!1053) (get!12961 (select (arr!24629 _values!688) from!1053) (dynLambda!1230 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!879694 () Bool)

(declare-fun res!597754 () Bool)

(assert (=> b!879694 (=> (not res!597754) (not e!489593))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!879694 (= res!597754 (validKeyInArray!0 k0!854))))

(declare-fun b!879695 () Bool)

(declare-fun res!597746 () Bool)

(assert (=> b!879695 (=> (not res!597746) (not e!489593))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!879695 (= res!597746 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25069 _keys!868))))))

(declare-fun b!879696 () Bool)

(declare-fun res!597753 () Bool)

(assert (=> b!879696 (=> (not res!597753) (not e!489593))))

(declare-datatypes ((List!17570 0))(
  ( (Nil!17567) (Cons!17566 (h!18697 (_ BitVec 64)) (t!24689 List!17570)) )
))
(declare-fun arrayNoDuplicates!0 (array!51216 (_ BitVec 32) List!17570) Bool)

(assert (=> b!879696 (= res!597753 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17567))))

(declare-fun mapNonEmpty!27951 () Bool)

(declare-fun tp!53616 () Bool)

(declare-fun e!489592 () Bool)

(assert (=> mapNonEmpty!27951 (= mapRes!27951 (and tp!53616 e!489592))))

(declare-fun mapKey!27951 () (_ BitVec 32))

(declare-fun mapRest!27951 () (Array (_ BitVec 32) ValueCell!8337))

(declare-fun mapValue!27951 () ValueCell!8337)

(assert (=> mapNonEmpty!27951 (= (arr!24629 _values!688) (store mapRest!27951 mapKey!27951 mapValue!27951))))

(declare-fun b!879697 () Bool)

(declare-fun e!489591 () Bool)

(assert (=> b!879697 (= e!489593 e!489591)))

(declare-fun res!597745 () Bool)

(assert (=> b!879697 (=> (not res!597745) (not e!489591))))

(assert (=> b!879697 (= res!597745 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!397756 () array!51218)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28451)

(declare-fun zeroValue!654 () V!28451)

(declare-fun getCurrentListMapNoExtraKeys!3215 (array!51216 array!51218 (_ BitVec 32) (_ BitVec 32) V!28451 V!28451 (_ BitVec 32) Int) ListLongMap!10477)

(assert (=> b!879697 (= lt!397759 (getCurrentListMapNoExtraKeys!3215 _keys!868 lt!397756 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28451)

(assert (=> b!879697 (= lt!397756 (array!51219 (store (arr!24629 _values!688) i!612 (ValueCellFull!8337 v!557)) (size!25070 _values!688)))))

(declare-fun lt!397753 () ListLongMap!10477)

(assert (=> b!879697 (= lt!397753 (getCurrentListMapNoExtraKeys!3215 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!879698 () Bool)

(declare-fun res!597750 () Bool)

(assert (=> b!879698 (=> (not res!597750) (not e!489593))))

(assert (=> b!879698 (= res!597750 (and (= (size!25070 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25069 _keys!868) (size!25070 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!879699 () Bool)

(assert (=> b!879699 (= e!489592 tp_is_empty!17553)))

(declare-fun b!879700 () Bool)

(assert (=> b!879700 (= e!489596 tp_is_empty!17553)))

(declare-fun b!879701 () Bool)

(declare-fun res!597749 () Bool)

(assert (=> b!879701 (=> (not res!597749) (not e!489593))))

(assert (=> b!879701 (= res!597749 (and (= (select (arr!24628 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!879702 () Bool)

(declare-fun res!597751 () Bool)

(assert (=> b!879702 (=> (not res!597751) (not e!489593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51216 (_ BitVec 32)) Bool)

(assert (=> b!879702 (= res!597751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!27951 () Bool)

(assert (=> mapIsEmpty!27951 mapRes!27951))

(declare-fun b!879703 () Bool)

(assert (=> b!879703 (= e!489591 (not e!489594))))

(declare-fun res!597747 () Bool)

(assert (=> b!879703 (=> res!597747 e!489594)))

(assert (=> b!879703 (= res!597747 (not (validKeyInArray!0 (select (arr!24628 _keys!868) from!1053))))))

(declare-fun lt!397757 () ListLongMap!10477)

(assert (=> b!879703 (= lt!397757 lt!397755)))

(declare-fun lt!397754 () ListLongMap!10477)

(assert (=> b!879703 (= lt!397755 (+!2460 lt!397754 (tuple2!11695 k0!854 v!557)))))

(assert (=> b!879703 (= lt!397757 (getCurrentListMapNoExtraKeys!3215 _keys!868 lt!397756 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!879703 (= lt!397754 (getCurrentListMapNoExtraKeys!3215 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29998 0))(
  ( (Unit!29999) )
))
(declare-fun lt!397758 () Unit!29998)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!691 (array!51216 array!51218 (_ BitVec 32) (_ BitVec 32) V!28451 V!28451 (_ BitVec 32) (_ BitVec 64) V!28451 (_ BitVec 32) Int) Unit!29998)

(assert (=> b!879703 (= lt!397758 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!691 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!74688 res!597752) b!879691))

(assert (= (and b!879691 res!597748) b!879698))

(assert (= (and b!879698 res!597750) b!879702))

(assert (= (and b!879702 res!597751) b!879696))

(assert (= (and b!879696 res!597753) b!879695))

(assert (= (and b!879695 res!597746) b!879694))

(assert (= (and b!879694 res!597754) b!879701))

(assert (= (and b!879701 res!597749) b!879697))

(assert (= (and b!879697 res!597745) b!879703))

(assert (= (and b!879703 (not res!597747)) b!879693))

(assert (= (and b!879692 condMapEmpty!27951) mapIsEmpty!27951))

(assert (= (and b!879692 (not condMapEmpty!27951)) mapNonEmpty!27951))

(get-info :version)

(assert (= (and mapNonEmpty!27951 ((_ is ValueCellFull!8337) mapValue!27951)) b!879699))

(assert (= (and b!879692 ((_ is ValueCellFull!8337) mapDefault!27951)) b!879700))

(assert (= start!74688 b!879692))

(declare-fun b_lambda!12447 () Bool)

(assert (=> (not b_lambda!12447) (not b!879693)))

(declare-fun t!24687 () Bool)

(declare-fun tb!4975 () Bool)

(assert (=> (and start!74688 (= defaultEntry!696 defaultEntry!696) t!24687) tb!4975))

(declare-fun result!9567 () Bool)

(assert (=> tb!4975 (= result!9567 tp_is_empty!17553)))

(assert (=> b!879693 t!24687))

(declare-fun b_and!25257 () Bool)

(assert (= b_and!25255 (and (=> t!24687 result!9567) b_and!25257)))

(declare-fun m!819557 () Bool)

(assert (=> b!879696 m!819557))

(declare-fun m!819559 () Bool)

(assert (=> mapNonEmpty!27951 m!819559))

(declare-fun m!819561 () Bool)

(assert (=> b!879697 m!819561))

(declare-fun m!819563 () Bool)

(assert (=> b!879697 m!819563))

(declare-fun m!819565 () Bool)

(assert (=> b!879697 m!819565))

(declare-fun m!819567 () Bool)

(assert (=> b!879701 m!819567))

(declare-fun m!819569 () Bool)

(assert (=> b!879703 m!819569))

(declare-fun m!819571 () Bool)

(assert (=> b!879703 m!819571))

(declare-fun m!819573 () Bool)

(assert (=> b!879703 m!819573))

(declare-fun m!819575 () Bool)

(assert (=> b!879703 m!819575))

(declare-fun m!819577 () Bool)

(assert (=> b!879703 m!819577))

(assert (=> b!879703 m!819571))

(declare-fun m!819579 () Bool)

(assert (=> b!879703 m!819579))

(declare-fun m!819581 () Bool)

(assert (=> b!879691 m!819581))

(declare-fun m!819583 () Bool)

(assert (=> b!879693 m!819583))

(declare-fun m!819585 () Bool)

(assert (=> b!879693 m!819585))

(declare-fun m!819587 () Bool)

(assert (=> b!879693 m!819587))

(declare-fun m!819589 () Bool)

(assert (=> b!879693 m!819589))

(assert (=> b!879693 m!819585))

(assert (=> b!879693 m!819571))

(assert (=> b!879693 m!819587))

(declare-fun m!819591 () Bool)

(assert (=> b!879694 m!819591))

(declare-fun m!819593 () Bool)

(assert (=> start!74688 m!819593))

(declare-fun m!819595 () Bool)

(assert (=> start!74688 m!819595))

(declare-fun m!819597 () Bool)

(assert (=> b!879702 m!819597))

(check-sat tp_is_empty!17553 (not b_lambda!12447) b_and!25257 (not b!879693) (not start!74688) (not b_next!15309) (not b!879702) (not b!879691) (not b!879694) (not b!879696) (not mapNonEmpty!27951) (not b!879703) (not b!879697))
(check-sat b_and!25257 (not b_next!15309))
