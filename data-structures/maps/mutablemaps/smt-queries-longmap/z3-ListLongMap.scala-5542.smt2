; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73066 () Bool)

(assert start!73066)

(declare-fun b_free!13953 () Bool)

(declare-fun b_next!13953 () Bool)

(assert (=> start!73066 (= b_free!13953 (not b_next!13953))))

(declare-fun tp!49364 () Bool)

(declare-fun b_and!23083 () Bool)

(assert (=> start!73066 (= tp!49364 b_and!23083)))

(declare-fun mapIsEmpty!25733 () Bool)

(declare-fun mapRes!25733 () Bool)

(assert (=> mapIsEmpty!25733 mapRes!25733))

(declare-fun b!848900 () Bool)

(declare-fun e!473650 () Bool)

(declare-fun e!473648 () Bool)

(assert (=> b!848900 (= e!473650 (and e!473648 mapRes!25733))))

(declare-fun condMapEmpty!25733 () Bool)

(declare-datatypes ((V!26499 0))(
  ( (V!26500 (val!8092 Int)) )
))
(declare-datatypes ((ValueCell!7605 0))(
  ( (ValueCellFull!7605 (v!10513 V!26499)) (EmptyCell!7605) )
))
(declare-datatypes ((array!48370 0))(
  ( (array!48371 (arr!23212 (Array (_ BitVec 32) ValueCell!7605)) (size!23653 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48370)

(declare-fun mapDefault!25733 () ValueCell!7605)

(assert (=> b!848900 (= condMapEmpty!25733 (= (arr!23212 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7605)) mapDefault!25733)))))

(declare-fun mapNonEmpty!25733 () Bool)

(declare-fun tp!49363 () Bool)

(declare-fun e!473649 () Bool)

(assert (=> mapNonEmpty!25733 (= mapRes!25733 (and tp!49363 e!473649))))

(declare-fun mapRest!25733 () (Array (_ BitVec 32) ValueCell!7605))

(declare-fun mapKey!25733 () (_ BitVec 32))

(declare-fun mapValue!25733 () ValueCell!7605)

(assert (=> mapNonEmpty!25733 (= (arr!23212 _values!688) (store mapRest!25733 mapKey!25733 mapValue!25733))))

(declare-fun b!848902 () Bool)

(declare-fun res!576837 () Bool)

(declare-fun e!473651 () Bool)

(assert (=> b!848902 (=> (not res!576837) (not e!473651))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!848902 (= res!576837 (validMask!0 mask!1196))))

(declare-fun b!848903 () Bool)

(declare-fun res!576839 () Bool)

(assert (=> b!848903 (=> (not res!576839) (not e!473651))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48372 0))(
  ( (array!48373 (arr!23213 (Array (_ BitVec 32) (_ BitVec 64))) (size!23654 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48372)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!848903 (= res!576839 (and (= (select (arr!23213 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!848904 () Bool)

(declare-fun res!576838 () Bool)

(assert (=> b!848904 (=> (not res!576838) (not e!473651))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!848904 (= res!576838 (and (= (size!23653 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23654 _keys!868) (size!23653 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!848905 () Bool)

(declare-fun tp_is_empty!16089 () Bool)

(assert (=> b!848905 (= e!473648 tp_is_empty!16089)))

(declare-datatypes ((tuple2!10602 0))(
  ( (tuple2!10603 (_1!5311 (_ BitVec 64)) (_2!5311 V!26499)) )
))
(declare-datatypes ((List!16504 0))(
  ( (Nil!16501) (Cons!16500 (h!17631 tuple2!10602) (t!22911 List!16504)) )
))
(declare-datatypes ((ListLongMap!9385 0))(
  ( (ListLongMap!9386 (toList!4708 List!16504)) )
))
(declare-fun call!37715 () ListLongMap!9385)

(declare-fun v!557 () V!26499)

(declare-fun call!37714 () ListLongMap!9385)

(declare-fun b!848906 () Bool)

(declare-fun e!473647 () Bool)

(declare-fun +!2054 (ListLongMap!9385 tuple2!10602) ListLongMap!9385)

(assert (=> b!848906 (= e!473647 (= call!37714 (+!2054 call!37715 (tuple2!10603 k0!854 v!557))))))

(declare-fun b!848907 () Bool)

(declare-fun res!576831 () Bool)

(assert (=> b!848907 (=> (not res!576831) (not e!473651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!848907 (= res!576831 (validKeyInArray!0 k0!854))))

(declare-fun b!848908 () Bool)

(declare-fun res!576840 () Bool)

(assert (=> b!848908 (=> (not res!576840) (not e!473651))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48372 (_ BitVec 32)) Bool)

(assert (=> b!848908 (= res!576840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!37711 () Bool)

(declare-fun minValue!654 () V!26499)

(declare-fun zeroValue!654 () V!26499)

(declare-fun getCurrentListMapNoExtraKeys!2696 (array!48372 array!48370 (_ BitVec 32) (_ BitVec 32) V!26499 V!26499 (_ BitVec 32) Int) ListLongMap!9385)

(assert (=> bm!37711 (= call!37715 (getCurrentListMapNoExtraKeys!2696 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848909 () Bool)

(declare-fun res!576832 () Bool)

(assert (=> b!848909 (=> (not res!576832) (not e!473651))))

(assert (=> b!848909 (= res!576832 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23654 _keys!868))))))

(declare-fun res!576836 () Bool)

(assert (=> start!73066 (=> (not res!576836) (not e!473651))))

(assert (=> start!73066 (= res!576836 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23654 _keys!868))))))

(assert (=> start!73066 e!473651))

(assert (=> start!73066 tp_is_empty!16089))

(assert (=> start!73066 true))

(assert (=> start!73066 tp!49364))

(declare-fun array_inv!18412 (array!48372) Bool)

(assert (=> start!73066 (array_inv!18412 _keys!868)))

(declare-fun array_inv!18413 (array!48370) Bool)

(assert (=> start!73066 (and (array_inv!18413 _values!688) e!473650)))

(declare-fun b!848901 () Bool)

(assert (=> b!848901 (= e!473649 tp_is_empty!16089)))

(declare-fun b!848910 () Bool)

(declare-fun e!473645 () Bool)

(assert (=> b!848910 (= e!473651 e!473645)))

(declare-fun res!576835 () Bool)

(assert (=> b!848910 (=> (not res!576835) (not e!473645))))

(assert (=> b!848910 (= res!576835 (= from!1053 i!612))))

(declare-fun lt!382120 () ListLongMap!9385)

(declare-fun lt!382122 () array!48370)

(assert (=> b!848910 (= lt!382120 (getCurrentListMapNoExtraKeys!2696 _keys!868 lt!382122 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!848910 (= lt!382122 (array!48371 (store (arr!23212 _values!688) i!612 (ValueCellFull!7605 v!557)) (size!23653 _values!688)))))

(declare-fun lt!382119 () ListLongMap!9385)

(assert (=> b!848910 (= lt!382119 (getCurrentListMapNoExtraKeys!2696 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!848911 () Bool)

(declare-fun e!473652 () Bool)

(assert (=> b!848911 (= e!473652 true)))

(declare-fun get!12224 (ValueCell!7605 V!26499) V!26499)

(declare-fun dynLambda!990 (Int (_ BitVec 64)) V!26499)

(assert (=> b!848911 (= lt!382120 (+!2054 (getCurrentListMapNoExtraKeys!2696 _keys!868 lt!382122 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10603 (select (arr!23213 _keys!868) from!1053) (get!12224 (select (arr!23212 lt!382122) from!1053) (dynLambda!990 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!848912 () Bool)

(assert (=> b!848912 (= e!473647 (= call!37714 call!37715))))

(declare-fun b!848913 () Bool)

(declare-fun res!576833 () Bool)

(assert (=> b!848913 (=> (not res!576833) (not e!473651))))

(declare-datatypes ((List!16505 0))(
  ( (Nil!16502) (Cons!16501 (h!17632 (_ BitVec 64)) (t!22912 List!16505)) )
))
(declare-fun arrayNoDuplicates!0 (array!48372 (_ BitVec 32) List!16505) Bool)

(assert (=> b!848913 (= res!576833 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16502))))

(declare-fun bm!37712 () Bool)

(assert (=> bm!37712 (= call!37714 (getCurrentListMapNoExtraKeys!2696 _keys!868 lt!382122 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848914 () Bool)

(assert (=> b!848914 (= e!473645 (not e!473652))))

(declare-fun res!576834 () Bool)

(assert (=> b!848914 (=> res!576834 e!473652)))

(assert (=> b!848914 (= res!576834 (not (validKeyInArray!0 (select (arr!23213 _keys!868) from!1053))))))

(assert (=> b!848914 e!473647))

(declare-fun c!91518 () Bool)

(assert (=> b!848914 (= c!91518 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28966 0))(
  ( (Unit!28967) )
))
(declare-fun lt!382121 () Unit!28966)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!332 (array!48372 array!48370 (_ BitVec 32) (_ BitVec 32) V!26499 V!26499 (_ BitVec 32) (_ BitVec 64) V!26499 (_ BitVec 32) Int) Unit!28966)

(assert (=> b!848914 (= lt!382121 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!332 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73066 res!576836) b!848902))

(assert (= (and b!848902 res!576837) b!848904))

(assert (= (and b!848904 res!576838) b!848908))

(assert (= (and b!848908 res!576840) b!848913))

(assert (= (and b!848913 res!576833) b!848909))

(assert (= (and b!848909 res!576832) b!848907))

(assert (= (and b!848907 res!576831) b!848903))

(assert (= (and b!848903 res!576839) b!848910))

(assert (= (and b!848910 res!576835) b!848914))

(assert (= (and b!848914 c!91518) b!848906))

(assert (= (and b!848914 (not c!91518)) b!848912))

(assert (= (or b!848906 b!848912) bm!37711))

(assert (= (or b!848906 b!848912) bm!37712))

(assert (= (and b!848914 (not res!576834)) b!848911))

(assert (= (and b!848900 condMapEmpty!25733) mapIsEmpty!25733))

(assert (= (and b!848900 (not condMapEmpty!25733)) mapNonEmpty!25733))

(get-info :version)

(assert (= (and mapNonEmpty!25733 ((_ is ValueCellFull!7605) mapValue!25733)) b!848901))

(assert (= (and b!848900 ((_ is ValueCellFull!7605) mapDefault!25733)) b!848905))

(assert (= start!73066 b!848900))

(declare-fun b_lambda!11515 () Bool)

(assert (=> (not b_lambda!11515) (not b!848911)))

(declare-fun t!22910 () Bool)

(declare-fun tb!4263 () Bool)

(assert (=> (and start!73066 (= defaultEntry!696 defaultEntry!696) t!22910) tb!4263))

(declare-fun result!8129 () Bool)

(assert (=> tb!4263 (= result!8129 tp_is_empty!16089)))

(assert (=> b!848911 t!22910))

(declare-fun b_and!23085 () Bool)

(assert (= b_and!23083 (and (=> t!22910 result!8129) b_and!23085)))

(declare-fun m!789731 () Bool)

(assert (=> b!848907 m!789731))

(declare-fun m!789733 () Bool)

(assert (=> b!848906 m!789733))

(declare-fun m!789735 () Bool)

(assert (=> b!848911 m!789735))

(declare-fun m!789737 () Bool)

(assert (=> b!848911 m!789737))

(assert (=> b!848911 m!789737))

(declare-fun m!789739 () Bool)

(assert (=> b!848911 m!789739))

(assert (=> b!848911 m!789735))

(declare-fun m!789741 () Bool)

(assert (=> b!848911 m!789741))

(declare-fun m!789743 () Bool)

(assert (=> b!848911 m!789743))

(declare-fun m!789745 () Bool)

(assert (=> b!848911 m!789745))

(assert (=> b!848911 m!789741))

(declare-fun m!789747 () Bool)

(assert (=> b!848908 m!789747))

(declare-fun m!789749 () Bool)

(assert (=> bm!37711 m!789749))

(declare-fun m!789751 () Bool)

(assert (=> b!848913 m!789751))

(declare-fun m!789753 () Bool)

(assert (=> b!848902 m!789753))

(assert (=> b!848914 m!789745))

(assert (=> b!848914 m!789745))

(declare-fun m!789755 () Bool)

(assert (=> b!848914 m!789755))

(declare-fun m!789757 () Bool)

(assert (=> b!848914 m!789757))

(declare-fun m!789759 () Bool)

(assert (=> b!848910 m!789759))

(declare-fun m!789761 () Bool)

(assert (=> b!848910 m!789761))

(declare-fun m!789763 () Bool)

(assert (=> b!848910 m!789763))

(assert (=> bm!37712 m!789737))

(declare-fun m!789765 () Bool)

(assert (=> start!73066 m!789765))

(declare-fun m!789767 () Bool)

(assert (=> start!73066 m!789767))

(declare-fun m!789769 () Bool)

(assert (=> b!848903 m!789769))

(declare-fun m!789771 () Bool)

(assert (=> mapNonEmpty!25733 m!789771))

(check-sat (not b_lambda!11515) (not b!848910) (not start!73066) (not b_next!13953) (not b!848914) (not b!848911) (not bm!37712) (not b!848908) (not b!848913) b_and!23085 (not b!848907) (not b!848902) (not b!848906) tp_is_empty!16089 (not mapNonEmpty!25733) (not bm!37711))
(check-sat b_and!23085 (not b_next!13953))
