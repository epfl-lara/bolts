; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74920 () Bool)

(assert start!74920)

(declare-fun b_free!15411 () Bool)

(declare-fun b_next!15411 () Bool)

(assert (=> start!74920 (= b_free!15411 (not b_next!15411))))

(declare-fun tp!53936 () Bool)

(declare-fun b_and!25539 () Bool)

(assert (=> start!74920 (= tp!53936 b_and!25539)))

(declare-fun b!882683 () Bool)

(declare-fun e!491301 () Bool)

(declare-fun e!491305 () Bool)

(assert (=> b!882683 (= e!491301 e!491305)))

(declare-fun res!599775 () Bool)

(assert (=> b!882683 (=> res!599775 e!491305)))

(declare-datatypes ((array!51422 0))(
  ( (array!51423 (arr!24726 (Array (_ BitVec 32) (_ BitVec 64))) (size!25167 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51422)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!882683 (= res!599775 (or (bvsge (size!25167 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25167 _keys!868)) (bvsge from!1053 (size!25167 _keys!868))))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!51422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!882683 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-datatypes ((Unit!30084 0))(
  ( (Unit!30085) )
))
(declare-fun lt!399398 () Unit!30084)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51422 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30084)

(assert (=> b!882683 (= lt!399398 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-datatypes ((List!17652 0))(
  ( (Nil!17649) (Cons!17648 (h!18779 (_ BitVec 64)) (t!24873 List!17652)) )
))
(declare-fun arrayNoDuplicates!0 (array!51422 (_ BitVec 32) List!17652) Bool)

(assert (=> b!882683 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17649)))

(declare-fun lt!399401 () Unit!30084)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51422 (_ BitVec 32) (_ BitVec 32)) Unit!30084)

(assert (=> b!882683 (= lt!399401 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun res!599771 () Bool)

(declare-fun e!491302 () Bool)

(assert (=> start!74920 (=> (not res!599771) (not e!491302))))

(assert (=> start!74920 (= res!599771 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25167 _keys!868))))))

(assert (=> start!74920 e!491302))

(declare-fun tp_is_empty!17655 () Bool)

(assert (=> start!74920 tp_is_empty!17655))

(assert (=> start!74920 true))

(assert (=> start!74920 tp!53936))

(declare-fun array_inv!19454 (array!51422) Bool)

(assert (=> start!74920 (array_inv!19454 _keys!868)))

(declare-datatypes ((V!28587 0))(
  ( (V!28588 (val!8875 Int)) )
))
(declare-datatypes ((ValueCell!8388 0))(
  ( (ValueCellFull!8388 (v!11340 V!28587)) (EmptyCell!8388) )
))
(declare-datatypes ((array!51424 0))(
  ( (array!51425 (arr!24727 (Array (_ BitVec 32) ValueCell!8388)) (size!25168 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51424)

(declare-fun e!491299 () Bool)

(declare-fun array_inv!19455 (array!51424) Bool)

(assert (=> start!74920 (and (array_inv!19455 _values!688) e!491299)))

(declare-fun b!882684 () Bool)

(declare-fun e!491300 () Bool)

(assert (=> b!882684 (= e!491302 e!491300)))

(declare-fun res!599766 () Bool)

(assert (=> b!882684 (=> (not res!599766) (not e!491300))))

(assert (=> b!882684 (= res!599766 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11784 0))(
  ( (tuple2!11785 (_1!5902 (_ BitVec 64)) (_2!5902 V!28587)) )
))
(declare-datatypes ((List!17653 0))(
  ( (Nil!17650) (Cons!17649 (h!18780 tuple2!11784) (t!24874 List!17653)) )
))
(declare-datatypes ((ListLongMap!10567 0))(
  ( (ListLongMap!10568 (toList!5299 List!17653)) )
))
(declare-fun lt!399400 () ListLongMap!10567)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!399403 () array!51424)

(declare-fun minValue!654 () V!28587)

(declare-fun zeroValue!654 () V!28587)

(declare-fun getCurrentListMapNoExtraKeys!3257 (array!51422 array!51424 (_ BitVec 32) (_ BitVec 32) V!28587 V!28587 (_ BitVec 32) Int) ListLongMap!10567)

(assert (=> b!882684 (= lt!399400 (getCurrentListMapNoExtraKeys!3257 _keys!868 lt!399403 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28587)

(assert (=> b!882684 (= lt!399403 (array!51425 (store (arr!24727 _values!688) i!612 (ValueCellFull!8388 v!557)) (size!25168 _values!688)))))

(declare-fun lt!399402 () ListLongMap!10567)

(assert (=> b!882684 (= lt!399402 (getCurrentListMapNoExtraKeys!3257 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!882685 () Bool)

(declare-fun e!491303 () Bool)

(assert (=> b!882685 (= e!491303 e!491301)))

(declare-fun res!599768 () Bool)

(assert (=> b!882685 (=> res!599768 e!491301)))

(assert (=> b!882685 (= res!599768 (not (= (select (arr!24726 _keys!868) from!1053) k0!854)))))

(declare-fun lt!399405 () ListLongMap!10567)

(declare-fun +!2504 (ListLongMap!10567 tuple2!11784) ListLongMap!10567)

(declare-fun get!13038 (ValueCell!8388 V!28587) V!28587)

(declare-fun dynLambda!1263 (Int (_ BitVec 64)) V!28587)

(assert (=> b!882685 (= lt!399400 (+!2504 lt!399405 (tuple2!11785 (select (arr!24726 _keys!868) from!1053) (get!13038 (select (arr!24727 _values!688) from!1053) (dynLambda!1263 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!882686 () Bool)

(assert (=> b!882686 (= e!491300 (not e!491303))))

(declare-fun res!599779 () Bool)

(assert (=> b!882686 (=> res!599779 e!491303)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!882686 (= res!599779 (not (validKeyInArray!0 (select (arr!24726 _keys!868) from!1053))))))

(declare-fun lt!399406 () ListLongMap!10567)

(assert (=> b!882686 (= lt!399406 lt!399405)))

(declare-fun lt!399397 () ListLongMap!10567)

(assert (=> b!882686 (= lt!399405 (+!2504 lt!399397 (tuple2!11785 k0!854 v!557)))))

(assert (=> b!882686 (= lt!399406 (getCurrentListMapNoExtraKeys!3257 _keys!868 lt!399403 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!882686 (= lt!399397 (getCurrentListMapNoExtraKeys!3257 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!399404 () Unit!30084)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!730 (array!51422 array!51424 (_ BitVec 32) (_ BitVec 32) V!28587 V!28587 (_ BitVec 32) (_ BitVec 64) V!28587 (_ BitVec 32) Int) Unit!30084)

(assert (=> b!882686 (= lt!399404 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!730 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!882687 () Bool)

(declare-fun res!599767 () Bool)

(assert (=> b!882687 (=> (not res!599767) (not e!491302))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51422 (_ BitVec 32)) Bool)

(assert (=> b!882687 (= res!599767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!882688 () Bool)

(declare-fun res!599773 () Bool)

(assert (=> b!882688 (=> (not res!599773) (not e!491302))))

(assert (=> b!882688 (= res!599773 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25167 _keys!868))))))

(declare-fun mapIsEmpty!28119 () Bool)

(declare-fun mapRes!28119 () Bool)

(assert (=> mapIsEmpty!28119 mapRes!28119))

(declare-fun b!882689 () Bool)

(declare-fun res!599776 () Bool)

(assert (=> b!882689 (=> (not res!599776) (not e!491302))))

(assert (=> b!882689 (= res!599776 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17649))))

(declare-fun b!882690 () Bool)

(declare-fun e!491306 () Bool)

(assert (=> b!882690 (= e!491306 tp_is_empty!17655)))

(declare-fun b!882691 () Bool)

(declare-fun res!599772 () Bool)

(assert (=> b!882691 (=> res!599772 e!491305)))

(declare-fun contains!4270 (List!17652 (_ BitVec 64)) Bool)

(assert (=> b!882691 (= res!599772 (contains!4270 Nil!17649 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!882692 () Bool)

(declare-fun res!599774 () Bool)

(assert (=> b!882692 (=> res!599774 e!491305)))

(declare-fun noDuplicate!1322 (List!17652) Bool)

(assert (=> b!882692 (= res!599774 (not (noDuplicate!1322 Nil!17649)))))

(declare-fun b!882693 () Bool)

(declare-fun res!599778 () Bool)

(assert (=> b!882693 (=> (not res!599778) (not e!491302))))

(assert (=> b!882693 (= res!599778 (and (= (size!25168 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25167 _keys!868) (size!25168 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!882694 () Bool)

(declare-fun e!491304 () Bool)

(assert (=> b!882694 (= e!491299 (and e!491304 mapRes!28119))))

(declare-fun condMapEmpty!28119 () Bool)

(declare-fun mapDefault!28119 () ValueCell!8388)

(assert (=> b!882694 (= condMapEmpty!28119 (= (arr!24727 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8388)) mapDefault!28119)))))

(declare-fun b!882695 () Bool)

(assert (=> b!882695 (= e!491304 tp_is_empty!17655)))

(declare-fun b!882696 () Bool)

(declare-fun res!599777 () Bool)

(assert (=> b!882696 (=> (not res!599777) (not e!491302))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!882696 (= res!599777 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!28119 () Bool)

(declare-fun tp!53937 () Bool)

(assert (=> mapNonEmpty!28119 (= mapRes!28119 (and tp!53937 e!491306))))

(declare-fun mapKey!28119 () (_ BitVec 32))

(declare-fun mapValue!28119 () ValueCell!8388)

(declare-fun mapRest!28119 () (Array (_ BitVec 32) ValueCell!8388))

(assert (=> mapNonEmpty!28119 (= (arr!24727 _values!688) (store mapRest!28119 mapKey!28119 mapValue!28119))))

(declare-fun b!882697 () Bool)

(declare-fun res!599770 () Bool)

(assert (=> b!882697 (=> (not res!599770) (not e!491302))))

(assert (=> b!882697 (= res!599770 (and (= (select (arr!24726 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!882698 () Bool)

(assert (=> b!882698 (= e!491305 true)))

(declare-fun lt!399399 () Bool)

(assert (=> b!882698 (= lt!399399 (contains!4270 Nil!17649 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!882699 () Bool)

(declare-fun res!599769 () Bool)

(assert (=> b!882699 (=> (not res!599769) (not e!491302))))

(assert (=> b!882699 (= res!599769 (validKeyInArray!0 k0!854))))

(assert (= (and start!74920 res!599771) b!882696))

(assert (= (and b!882696 res!599777) b!882693))

(assert (= (and b!882693 res!599778) b!882687))

(assert (= (and b!882687 res!599767) b!882689))

(assert (= (and b!882689 res!599776) b!882688))

(assert (= (and b!882688 res!599773) b!882699))

(assert (= (and b!882699 res!599769) b!882697))

(assert (= (and b!882697 res!599770) b!882684))

(assert (= (and b!882684 res!599766) b!882686))

(assert (= (and b!882686 (not res!599779)) b!882685))

(assert (= (and b!882685 (not res!599768)) b!882683))

(assert (= (and b!882683 (not res!599775)) b!882692))

(assert (= (and b!882692 (not res!599774)) b!882691))

(assert (= (and b!882691 (not res!599772)) b!882698))

(assert (= (and b!882694 condMapEmpty!28119) mapIsEmpty!28119))

(assert (= (and b!882694 (not condMapEmpty!28119)) mapNonEmpty!28119))

(get-info :version)

(assert (= (and mapNonEmpty!28119 ((_ is ValueCellFull!8388) mapValue!28119)) b!882690))

(assert (= (and b!882694 ((_ is ValueCellFull!8388) mapDefault!28119)) b!882695))

(assert (= start!74920 b!882694))

(declare-fun b_lambda!12719 () Bool)

(assert (=> (not b_lambda!12719) (not b!882685)))

(declare-fun t!24872 () Bool)

(declare-fun tb!5077 () Bool)

(assert (=> (and start!74920 (= defaultEntry!696 defaultEntry!696) t!24872) tb!5077))

(declare-fun result!9781 () Bool)

(assert (=> tb!5077 (= result!9781 tp_is_empty!17655)))

(assert (=> b!882685 t!24872))

(declare-fun b_and!25541 () Bool)

(assert (= b_and!25539 (and (=> t!24872 result!9781) b_and!25541)))

(declare-fun m!822785 () Bool)

(assert (=> b!882685 m!822785))

(declare-fun m!822787 () Bool)

(assert (=> b!882685 m!822787))

(declare-fun m!822789 () Bool)

(assert (=> b!882685 m!822789))

(declare-fun m!822791 () Bool)

(assert (=> b!882685 m!822791))

(assert (=> b!882685 m!822785))

(assert (=> b!882685 m!822789))

(declare-fun m!822793 () Bool)

(assert (=> b!882685 m!822793))

(declare-fun m!822795 () Bool)

(assert (=> mapNonEmpty!28119 m!822795))

(declare-fun m!822797 () Bool)

(assert (=> b!882686 m!822797))

(declare-fun m!822799 () Bool)

(assert (=> b!882686 m!822799))

(assert (=> b!882686 m!822787))

(declare-fun m!822801 () Bool)

(assert (=> b!882686 m!822801))

(assert (=> b!882686 m!822787))

(declare-fun m!822803 () Bool)

(assert (=> b!882686 m!822803))

(declare-fun m!822805 () Bool)

(assert (=> b!882686 m!822805))

(declare-fun m!822807 () Bool)

(assert (=> b!882692 m!822807))

(declare-fun m!822809 () Bool)

(assert (=> b!882689 m!822809))

(declare-fun m!822811 () Bool)

(assert (=> b!882683 m!822811))

(declare-fun m!822813 () Bool)

(assert (=> b!882683 m!822813))

(declare-fun m!822815 () Bool)

(assert (=> b!882683 m!822815))

(declare-fun m!822817 () Bool)

(assert (=> b!882683 m!822817))

(declare-fun m!822819 () Bool)

(assert (=> b!882698 m!822819))

(declare-fun m!822821 () Bool)

(assert (=> start!74920 m!822821))

(declare-fun m!822823 () Bool)

(assert (=> start!74920 m!822823))

(declare-fun m!822825 () Bool)

(assert (=> b!882696 m!822825))

(declare-fun m!822827 () Bool)

(assert (=> b!882691 m!822827))

(declare-fun m!822829 () Bool)

(assert (=> b!882699 m!822829))

(declare-fun m!822831 () Bool)

(assert (=> b!882687 m!822831))

(declare-fun m!822833 () Bool)

(assert (=> b!882684 m!822833))

(declare-fun m!822835 () Bool)

(assert (=> b!882684 m!822835))

(declare-fun m!822837 () Bool)

(assert (=> b!882684 m!822837))

(declare-fun m!822839 () Bool)

(assert (=> b!882697 m!822839))

(check-sat b_and!25541 tp_is_empty!17655 (not mapNonEmpty!28119) (not start!74920) (not b!882691) (not b!882692) (not b!882684) (not b!882685) (not b!882696) (not b!882683) (not b!882699) (not b!882686) (not b!882698) (not b_lambda!12719) (not b!882689) (not b!882687) (not b_next!15411))
(check-sat b_and!25541 (not b_next!15411))
