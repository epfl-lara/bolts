; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74694 () Bool)

(assert start!74694)

(declare-fun b_free!15315 () Bool)

(declare-fun b_next!15315 () Bool)

(assert (=> start!74694 (= b_free!15315 (not b_next!15315))))

(declare-fun tp!53633 () Bool)

(declare-fun b_and!25267 () Bool)

(assert (=> start!74694 (= tp!53633 b_and!25267)))

(declare-fun mapNonEmpty!27960 () Bool)

(declare-fun mapRes!27960 () Bool)

(declare-fun tp!53634 () Bool)

(declare-fun e!489653 () Bool)

(assert (=> mapNonEmpty!27960 (= mapRes!27960 (and tp!53634 e!489653))))

(declare-datatypes ((V!28459 0))(
  ( (V!28460 (val!8827 Int)) )
))
(declare-datatypes ((ValueCell!8340 0))(
  ( (ValueCellFull!8340 (v!11271 V!28459)) (EmptyCell!8340) )
))
(declare-fun mapValue!27960 () ValueCell!8340)

(declare-fun mapKey!27960 () (_ BitVec 32))

(declare-fun mapRest!27960 () (Array (_ BitVec 32) ValueCell!8340))

(declare-datatypes ((array!51228 0))(
  ( (array!51229 (arr!24634 (Array (_ BitVec 32) ValueCell!8340)) (size!25075 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51228)

(assert (=> mapNonEmpty!27960 (= (arr!24634 _values!688) (store mapRest!27960 mapKey!27960 mapValue!27960))))

(declare-fun b!879814 () Bool)

(declare-fun res!597841 () Bool)

(declare-fun e!489658 () Bool)

(assert (=> b!879814 (=> (not res!597841) (not e!489658))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!879814 (= res!597841 (validKeyInArray!0 k0!854))))

(declare-fun b!879815 () Bool)

(declare-fun tp_is_empty!17559 () Bool)

(assert (=> b!879815 (= e!489653 tp_is_empty!17559)))

(declare-fun b!879816 () Bool)

(declare-fun e!489655 () Bool)

(declare-fun e!489659 () Bool)

(assert (=> b!879816 (= e!489655 (and e!489659 mapRes!27960))))

(declare-fun condMapEmpty!27960 () Bool)

(declare-fun mapDefault!27960 () ValueCell!8340)

(assert (=> b!879816 (= condMapEmpty!27960 (= (arr!24634 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8340)) mapDefault!27960)))))

(declare-fun mapIsEmpty!27960 () Bool)

(assert (=> mapIsEmpty!27960 mapRes!27960))

(declare-fun b!879817 () Bool)

(declare-fun res!597835 () Bool)

(assert (=> b!879817 (=> (not res!597835) (not e!489658))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51230 0))(
  ( (array!51231 (arr!24635 (Array (_ BitVec 32) (_ BitVec 64))) (size!25076 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51230)

(assert (=> b!879817 (= res!597835 (and (= (size!25075 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25076 _keys!868) (size!25075 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!879818 () Bool)

(declare-fun res!597840 () Bool)

(assert (=> b!879818 (=> (not res!597840) (not e!489658))))

(declare-datatypes ((List!17575 0))(
  ( (Nil!17572) (Cons!17571 (h!18702 (_ BitVec 64)) (t!24700 List!17575)) )
))
(declare-fun arrayNoDuplicates!0 (array!51230 (_ BitVec 32) List!17575) Bool)

(assert (=> b!879818 (= res!597840 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17572))))

(declare-fun b!879819 () Bool)

(declare-fun res!597837 () Bool)

(assert (=> b!879819 (=> (not res!597837) (not e!489658))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!879819 (= res!597837 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25076 _keys!868))))))

(declare-fun res!597843 () Bool)

(assert (=> start!74694 (=> (not res!597843) (not e!489658))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74694 (= res!597843 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25076 _keys!868))))))

(assert (=> start!74694 e!489658))

(assert (=> start!74694 tp_is_empty!17559))

(assert (=> start!74694 true))

(assert (=> start!74694 tp!53633))

(declare-fun array_inv!19394 (array!51230) Bool)

(assert (=> start!74694 (array_inv!19394 _keys!868)))

(declare-fun array_inv!19395 (array!51228) Bool)

(assert (=> start!74694 (and (array_inv!19395 _values!688) e!489655)))

(declare-fun b!879820 () Bool)

(declare-fun e!489654 () Bool)

(assert (=> b!879820 (= e!489658 e!489654)))

(declare-fun res!597839 () Bool)

(assert (=> b!879820 (=> (not res!597839) (not e!489654))))

(assert (=> b!879820 (= res!597839 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11700 0))(
  ( (tuple2!11701 (_1!5860 (_ BitVec 64)) (_2!5860 V!28459)) )
))
(declare-datatypes ((List!17576 0))(
  ( (Nil!17573) (Cons!17572 (h!18703 tuple2!11700) (t!24701 List!17576)) )
))
(declare-datatypes ((ListLongMap!10483 0))(
  ( (ListLongMap!10484 (toList!5257 List!17576)) )
))
(declare-fun lt!397817 () ListLongMap!10483)

(declare-fun minValue!654 () V!28459)

(declare-fun zeroValue!654 () V!28459)

(declare-fun lt!397819 () array!51228)

(declare-fun getCurrentListMapNoExtraKeys!3218 (array!51230 array!51228 (_ BitVec 32) (_ BitVec 32) V!28459 V!28459 (_ BitVec 32) Int) ListLongMap!10483)

(assert (=> b!879820 (= lt!397817 (getCurrentListMapNoExtraKeys!3218 _keys!868 lt!397819 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28459)

(assert (=> b!879820 (= lt!397819 (array!51229 (store (arr!24634 _values!688) i!612 (ValueCellFull!8340 v!557)) (size!25075 _values!688)))))

(declare-fun lt!397820 () ListLongMap!10483)

(assert (=> b!879820 (= lt!397820 (getCurrentListMapNoExtraKeys!3218 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!879821 () Bool)

(declare-fun res!597842 () Bool)

(assert (=> b!879821 (=> (not res!597842) (not e!489658))))

(assert (=> b!879821 (= res!597842 (and (= (select (arr!24635 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!879822 () Bool)

(declare-fun e!489657 () Bool)

(assert (=> b!879822 (= e!489654 (not e!489657))))

(declare-fun res!597844 () Bool)

(assert (=> b!879822 (=> res!597844 e!489657)))

(assert (=> b!879822 (= res!597844 (not (validKeyInArray!0 (select (arr!24635 _keys!868) from!1053))))))

(declare-fun lt!397818 () ListLongMap!10483)

(declare-fun lt!397821 () ListLongMap!10483)

(assert (=> b!879822 (= lt!397818 lt!397821)))

(declare-fun lt!397816 () ListLongMap!10483)

(declare-fun +!2463 (ListLongMap!10483 tuple2!11700) ListLongMap!10483)

(assert (=> b!879822 (= lt!397821 (+!2463 lt!397816 (tuple2!11701 k0!854 v!557)))))

(assert (=> b!879822 (= lt!397818 (getCurrentListMapNoExtraKeys!3218 _keys!868 lt!397819 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!879822 (= lt!397816 (getCurrentListMapNoExtraKeys!3218 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30004 0))(
  ( (Unit!30005) )
))
(declare-fun lt!397822 () Unit!30004)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!694 (array!51230 array!51228 (_ BitVec 32) (_ BitVec 32) V!28459 V!28459 (_ BitVec 32) (_ BitVec 64) V!28459 (_ BitVec 32) Int) Unit!30004)

(assert (=> b!879822 (= lt!397822 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!694 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!879823 () Bool)

(declare-fun res!597836 () Bool)

(assert (=> b!879823 (=> (not res!597836) (not e!489658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!879823 (= res!597836 (validMask!0 mask!1196))))

(declare-fun b!879824 () Bool)

(declare-fun res!597838 () Bool)

(assert (=> b!879824 (=> (not res!597838) (not e!489658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51230 (_ BitVec 32)) Bool)

(assert (=> b!879824 (= res!597838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!879825 () Bool)

(assert (=> b!879825 (= e!489657 (or (not (= (select (arr!24635 _keys!868) from!1053) k0!854)) (bvsge (size!25076 _keys!868) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!25076 _keys!868))))))

(declare-fun get!12965 (ValueCell!8340 V!28459) V!28459)

(declare-fun dynLambda!1232 (Int (_ BitVec 64)) V!28459)

(assert (=> b!879825 (= lt!397817 (+!2463 lt!397821 (tuple2!11701 (select (arr!24635 _keys!868) from!1053) (get!12965 (select (arr!24634 _values!688) from!1053) (dynLambda!1232 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!879826 () Bool)

(assert (=> b!879826 (= e!489659 tp_is_empty!17559)))

(assert (= (and start!74694 res!597843) b!879823))

(assert (= (and b!879823 res!597836) b!879817))

(assert (= (and b!879817 res!597835) b!879824))

(assert (= (and b!879824 res!597838) b!879818))

(assert (= (and b!879818 res!597840) b!879819))

(assert (= (and b!879819 res!597837) b!879814))

(assert (= (and b!879814 res!597841) b!879821))

(assert (= (and b!879821 res!597842) b!879820))

(assert (= (and b!879820 res!597839) b!879822))

(assert (= (and b!879822 (not res!597844)) b!879825))

(assert (= (and b!879816 condMapEmpty!27960) mapIsEmpty!27960))

(assert (= (and b!879816 (not condMapEmpty!27960)) mapNonEmpty!27960))

(get-info :version)

(assert (= (and mapNonEmpty!27960 ((_ is ValueCellFull!8340) mapValue!27960)) b!879815))

(assert (= (and b!879816 ((_ is ValueCellFull!8340) mapDefault!27960)) b!879826))

(assert (= start!74694 b!879816))

(declare-fun b_lambda!12453 () Bool)

(assert (=> (not b_lambda!12453) (not b!879825)))

(declare-fun t!24699 () Bool)

(declare-fun tb!4981 () Bool)

(assert (=> (and start!74694 (= defaultEntry!696 defaultEntry!696) t!24699) tb!4981))

(declare-fun result!9579 () Bool)

(assert (=> tb!4981 (= result!9579 tp_is_empty!17559)))

(assert (=> b!879825 t!24699))

(declare-fun b_and!25269 () Bool)

(assert (= b_and!25267 (and (=> t!24699 result!9579) b_and!25269)))

(declare-fun m!819683 () Bool)

(assert (=> start!74694 m!819683))

(declare-fun m!819685 () Bool)

(assert (=> start!74694 m!819685))

(declare-fun m!819687 () Bool)

(assert (=> b!879821 m!819687))

(declare-fun m!819689 () Bool)

(assert (=> b!879825 m!819689))

(declare-fun m!819691 () Bool)

(assert (=> b!879825 m!819691))

(declare-fun m!819693 () Bool)

(assert (=> b!879825 m!819693))

(declare-fun m!819695 () Bool)

(assert (=> b!879825 m!819695))

(assert (=> b!879825 m!819691))

(declare-fun m!819697 () Bool)

(assert (=> b!879825 m!819697))

(assert (=> b!879825 m!819693))

(declare-fun m!819699 () Bool)

(assert (=> b!879820 m!819699))

(declare-fun m!819701 () Bool)

(assert (=> b!879820 m!819701))

(declare-fun m!819703 () Bool)

(assert (=> b!879820 m!819703))

(declare-fun m!819705 () Bool)

(assert (=> b!879824 m!819705))

(declare-fun m!819707 () Bool)

(assert (=> b!879814 m!819707))

(declare-fun m!819709 () Bool)

(assert (=> b!879822 m!819709))

(declare-fun m!819711 () Bool)

(assert (=> b!879822 m!819711))

(assert (=> b!879822 m!819697))

(declare-fun m!819713 () Bool)

(assert (=> b!879822 m!819713))

(assert (=> b!879822 m!819697))

(declare-fun m!819715 () Bool)

(assert (=> b!879822 m!819715))

(declare-fun m!819717 () Bool)

(assert (=> b!879822 m!819717))

(declare-fun m!819719 () Bool)

(assert (=> b!879823 m!819719))

(declare-fun m!819721 () Bool)

(assert (=> mapNonEmpty!27960 m!819721))

(declare-fun m!819723 () Bool)

(assert (=> b!879818 m!819723))

(check-sat (not b!879823) b_and!25269 (not b_next!15315) (not b!879820) (not start!74694) tp_is_empty!17559 (not b!879818) (not mapNonEmpty!27960) (not b!879824) (not b!879814) (not b_lambda!12453) (not b!879825) (not b!879822))
(check-sat b_and!25269 (not b_next!15315))
