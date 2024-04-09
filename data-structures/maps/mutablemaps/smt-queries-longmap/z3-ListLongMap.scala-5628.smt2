; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73582 () Bool)

(assert start!73582)

(declare-fun b_free!14469 () Bool)

(declare-fun b_next!14469 () Bool)

(assert (=> start!73582 (= b_free!14469 (not b_next!14469))))

(declare-fun tp!50911 () Bool)

(declare-fun b_and!23935 () Bool)

(assert (=> start!73582 (= tp!50911 b_and!23935)))

(declare-fun b!859875 () Bool)

(declare-fun e!479195 () Bool)

(declare-fun e!479194 () Bool)

(declare-fun mapRes!26507 () Bool)

(assert (=> b!859875 (= e!479195 (and e!479194 mapRes!26507))))

(declare-fun condMapEmpty!26507 () Bool)

(declare-datatypes ((V!27187 0))(
  ( (V!27188 (val!8350 Int)) )
))
(declare-datatypes ((ValueCell!7863 0))(
  ( (ValueCellFull!7863 (v!10771 V!27187)) (EmptyCell!7863) )
))
(declare-datatypes ((array!49368 0))(
  ( (array!49369 (arr!23711 (Array (_ BitVec 32) ValueCell!7863)) (size!24152 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49368)

(declare-fun mapDefault!26507 () ValueCell!7863)

(assert (=> b!859875 (= condMapEmpty!26507 (= (arr!23711 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7863)) mapDefault!26507)))))

(declare-fun res!584420 () Bool)

(declare-fun e!479199 () Bool)

(assert (=> start!73582 (=> (not res!584420) (not e!479199))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49370 0))(
  ( (array!49371 (arr!23712 (Array (_ BitVec 32) (_ BitVec 64))) (size!24153 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49370)

(assert (=> start!73582 (= res!584420 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24153 _keys!868))))))

(assert (=> start!73582 e!479199))

(declare-fun tp_is_empty!16605 () Bool)

(assert (=> start!73582 tp_is_empty!16605))

(assert (=> start!73582 true))

(assert (=> start!73582 tp!50911))

(declare-fun array_inv!18746 (array!49370) Bool)

(assert (=> start!73582 (array_inv!18746 _keys!868)))

(declare-fun array_inv!18747 (array!49368) Bool)

(assert (=> start!73582 (and (array_inv!18747 _values!688) e!479195)))

(declare-fun b!859876 () Bool)

(declare-fun e!479196 () Bool)

(declare-fun e!479198 () Bool)

(assert (=> b!859876 (= e!479196 e!479198)))

(declare-fun res!584424 () Bool)

(assert (=> b!859876 (=> res!584424 e!479198)))

(assert (=> b!859876 (= res!584424 (or (bvsge (size!24153 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24153 _keys!868)) (bvsge from!1053 (size!24153 _keys!868))))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!49370 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!859876 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29284 0))(
  ( (Unit!29285) )
))
(declare-fun lt!387548 () Unit!29284)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49370 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29284)

(assert (=> b!859876 (= lt!387548 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-datatypes ((List!16893 0))(
  ( (Nil!16890) (Cons!16889 (h!18020 (_ BitVec 64)) (t!23636 List!16893)) )
))
(declare-fun arrayNoDuplicates!0 (array!49370 (_ BitVec 32) List!16893) Bool)

(assert (=> b!859876 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16890)))

(declare-fun lt!387543 () Unit!29284)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49370 (_ BitVec 32) (_ BitVec 32)) Unit!29284)

(assert (=> b!859876 (= lt!387543 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!859877 () Bool)

(declare-fun res!584422 () Bool)

(assert (=> b!859877 (=> (not res!584422) (not e!479199))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!859877 (= res!584422 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!26507 () Bool)

(declare-fun tp!50912 () Bool)

(declare-fun e!479202 () Bool)

(assert (=> mapNonEmpty!26507 (= mapRes!26507 (and tp!50912 e!479202))))

(declare-fun mapKey!26507 () (_ BitVec 32))

(declare-fun mapValue!26507 () ValueCell!7863)

(declare-fun mapRest!26507 () (Array (_ BitVec 32) ValueCell!7863))

(assert (=> mapNonEmpty!26507 (= (arr!23711 _values!688) (store mapRest!26507 mapKey!26507 mapValue!26507))))

(declare-fun b!859878 () Bool)

(declare-fun res!584421 () Bool)

(assert (=> b!859878 (=> (not res!584421) (not e!479199))))

(assert (=> b!859878 (= res!584421 (and (= (select (arr!23712 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!859879 () Bool)

(assert (=> b!859879 (= e!479202 tp_is_empty!16605)))

(declare-fun b!859880 () Bool)

(declare-fun res!584431 () Bool)

(assert (=> b!859880 (=> (not res!584431) (not e!479199))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!859880 (= res!584431 (validMask!0 mask!1196))))

(declare-fun b!859881 () Bool)

(assert (=> b!859881 (= e!479198 true)))

(declare-fun lt!387540 () Bool)

(declare-fun contains!4227 (List!16893 (_ BitVec 64)) Bool)

(assert (=> b!859881 (= lt!387540 (contains!4227 Nil!16890 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!859882 () Bool)

(declare-fun e!479201 () Bool)

(assert (=> b!859882 (= e!479201 e!479196)))

(declare-fun res!584425 () Bool)

(assert (=> b!859882 (=> res!584425 e!479196)))

(assert (=> b!859882 (= res!584425 (not (= (select (arr!23712 _keys!868) from!1053) k0!854)))))

(declare-datatypes ((tuple2!11022 0))(
  ( (tuple2!11023 (_1!5521 (_ BitVec 64)) (_2!5521 V!27187)) )
))
(declare-datatypes ((List!16894 0))(
  ( (Nil!16891) (Cons!16890 (h!18021 tuple2!11022) (t!23637 List!16894)) )
))
(declare-datatypes ((ListLongMap!9805 0))(
  ( (ListLongMap!9806 (toList!4918 List!16894)) )
))
(declare-fun lt!387546 () ListLongMap!9805)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!387541 () ListLongMap!9805)

(declare-fun +!2220 (ListLongMap!9805 tuple2!11022) ListLongMap!9805)

(declare-fun get!12511 (ValueCell!7863 V!27187) V!27187)

(declare-fun dynLambda!1105 (Int (_ BitVec 64)) V!27187)

(assert (=> b!859882 (= lt!387546 (+!2220 lt!387541 (tuple2!11023 (select (arr!23712 _keys!868) from!1053) (get!12511 (select (arr!23711 _values!688) from!1053) (dynLambda!1105 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!859883 () Bool)

(declare-fun res!584433 () Bool)

(assert (=> b!859883 (=> res!584433 e!479198)))

(assert (=> b!859883 (= res!584433 (contains!4227 Nil!16890 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!859884 () Bool)

(declare-fun res!584426 () Bool)

(assert (=> b!859884 (=> (not res!584426) (not e!479199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49370 (_ BitVec 32)) Bool)

(assert (=> b!859884 (= res!584426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!859885 () Bool)

(declare-fun res!584430 () Bool)

(assert (=> b!859885 (=> (not res!584430) (not e!479199))))

(assert (=> b!859885 (= res!584430 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24153 _keys!868))))))

(declare-fun b!859886 () Bool)

(declare-fun res!584423 () Bool)

(assert (=> b!859886 (=> (not res!584423) (not e!479199))))

(assert (=> b!859886 (= res!584423 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16890))))

(declare-fun b!859887 () Bool)

(declare-fun e!479197 () Bool)

(assert (=> b!859887 (= e!479199 e!479197)))

(declare-fun res!584428 () Bool)

(assert (=> b!859887 (=> (not res!584428) (not e!479197))))

(assert (=> b!859887 (= res!584428 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!387542 () array!49368)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27187)

(declare-fun zeroValue!654 () V!27187)

(declare-fun getCurrentListMapNoExtraKeys!2898 (array!49370 array!49368 (_ BitVec 32) (_ BitVec 32) V!27187 V!27187 (_ BitVec 32) Int) ListLongMap!9805)

(assert (=> b!859887 (= lt!387546 (getCurrentListMapNoExtraKeys!2898 _keys!868 lt!387542 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27187)

(assert (=> b!859887 (= lt!387542 (array!49369 (store (arr!23711 _values!688) i!612 (ValueCellFull!7863 v!557)) (size!24152 _values!688)))))

(declare-fun lt!387549 () ListLongMap!9805)

(assert (=> b!859887 (= lt!387549 (getCurrentListMapNoExtraKeys!2898 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!859888 () Bool)

(declare-fun res!584432 () Bool)

(assert (=> b!859888 (=> (not res!584432) (not e!479199))))

(assert (=> b!859888 (= res!584432 (and (= (size!24152 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24153 _keys!868) (size!24152 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!859889 () Bool)

(declare-fun res!584427 () Bool)

(assert (=> b!859889 (=> res!584427 e!479198)))

(declare-fun noDuplicate!1308 (List!16893) Bool)

(assert (=> b!859889 (= res!584427 (not (noDuplicate!1308 Nil!16890)))))

(declare-fun mapIsEmpty!26507 () Bool)

(assert (=> mapIsEmpty!26507 mapRes!26507))

(declare-fun b!859890 () Bool)

(assert (=> b!859890 (= e!479194 tp_is_empty!16605)))

(declare-fun b!859891 () Bool)

(assert (=> b!859891 (= e!479197 (not e!479201))))

(declare-fun res!584429 () Bool)

(assert (=> b!859891 (=> res!584429 e!479201)))

(assert (=> b!859891 (= res!584429 (not (validKeyInArray!0 (select (arr!23712 _keys!868) from!1053))))))

(declare-fun lt!387545 () ListLongMap!9805)

(assert (=> b!859891 (= lt!387545 lt!387541)))

(declare-fun lt!387544 () ListLongMap!9805)

(assert (=> b!859891 (= lt!387541 (+!2220 lt!387544 (tuple2!11023 k0!854 v!557)))))

(assert (=> b!859891 (= lt!387545 (getCurrentListMapNoExtraKeys!2898 _keys!868 lt!387542 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!859891 (= lt!387544 (getCurrentListMapNoExtraKeys!2898 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!387547 () Unit!29284)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!476 (array!49370 array!49368 (_ BitVec 32) (_ BitVec 32) V!27187 V!27187 (_ BitVec 32) (_ BitVec 64) V!27187 (_ BitVec 32) Int) Unit!29284)

(assert (=> b!859891 (= lt!387547 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!476 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73582 res!584420) b!859880))

(assert (= (and b!859880 res!584431) b!859888))

(assert (= (and b!859888 res!584432) b!859884))

(assert (= (and b!859884 res!584426) b!859886))

(assert (= (and b!859886 res!584423) b!859885))

(assert (= (and b!859885 res!584430) b!859877))

(assert (= (and b!859877 res!584422) b!859878))

(assert (= (and b!859878 res!584421) b!859887))

(assert (= (and b!859887 res!584428) b!859891))

(assert (= (and b!859891 (not res!584429)) b!859882))

(assert (= (and b!859882 (not res!584425)) b!859876))

(assert (= (and b!859876 (not res!584424)) b!859889))

(assert (= (and b!859889 (not res!584427)) b!859883))

(assert (= (and b!859883 (not res!584433)) b!859881))

(assert (= (and b!859875 condMapEmpty!26507) mapIsEmpty!26507))

(assert (= (and b!859875 (not condMapEmpty!26507)) mapNonEmpty!26507))

(get-info :version)

(assert (= (and mapNonEmpty!26507 ((_ is ValueCellFull!7863) mapValue!26507)) b!859879))

(assert (= (and b!859875 ((_ is ValueCellFull!7863) mapDefault!26507)) b!859890))

(assert (= start!73582 b!859875))

(declare-fun b_lambda!11851 () Bool)

(assert (=> (not b_lambda!11851) (not b!859882)))

(declare-fun t!23635 () Bool)

(declare-fun tb!4599 () Bool)

(assert (=> (and start!73582 (= defaultEntry!696 defaultEntry!696) t!23635) tb!4599))

(declare-fun result!8801 () Bool)

(assert (=> tb!4599 (= result!8801 tp_is_empty!16605)))

(assert (=> b!859882 t!23635))

(declare-fun b_and!23937 () Bool)

(assert (= b_and!23935 (and (=> t!23635 result!8801) b_and!23937)))

(declare-fun m!800763 () Bool)

(assert (=> b!859876 m!800763))

(declare-fun m!800765 () Bool)

(assert (=> b!859876 m!800765))

(declare-fun m!800767 () Bool)

(assert (=> b!859876 m!800767))

(declare-fun m!800769 () Bool)

(assert (=> b!859876 m!800769))

(declare-fun m!800771 () Bool)

(assert (=> start!73582 m!800771))

(declare-fun m!800773 () Bool)

(assert (=> start!73582 m!800773))

(declare-fun m!800775 () Bool)

(assert (=> b!859878 m!800775))

(declare-fun m!800777 () Bool)

(assert (=> b!859877 m!800777))

(declare-fun m!800779 () Bool)

(assert (=> b!859891 m!800779))

(declare-fun m!800781 () Bool)

(assert (=> b!859891 m!800781))

(assert (=> b!859891 m!800779))

(declare-fun m!800783 () Bool)

(assert (=> b!859891 m!800783))

(declare-fun m!800785 () Bool)

(assert (=> b!859891 m!800785))

(declare-fun m!800787 () Bool)

(assert (=> b!859891 m!800787))

(declare-fun m!800789 () Bool)

(assert (=> b!859891 m!800789))

(declare-fun m!800791 () Bool)

(assert (=> b!859884 m!800791))

(declare-fun m!800793 () Bool)

(assert (=> b!859882 m!800793))

(declare-fun m!800795 () Bool)

(assert (=> b!859882 m!800795))

(declare-fun m!800797 () Bool)

(assert (=> b!859882 m!800797))

(declare-fun m!800799 () Bool)

(assert (=> b!859882 m!800799))

(assert (=> b!859882 m!800795))

(assert (=> b!859882 m!800779))

(assert (=> b!859882 m!800797))

(declare-fun m!800801 () Bool)

(assert (=> b!859886 m!800801))

(declare-fun m!800803 () Bool)

(assert (=> b!859883 m!800803))

(declare-fun m!800805 () Bool)

(assert (=> b!859887 m!800805))

(declare-fun m!800807 () Bool)

(assert (=> b!859887 m!800807))

(declare-fun m!800809 () Bool)

(assert (=> b!859887 m!800809))

(declare-fun m!800811 () Bool)

(assert (=> b!859881 m!800811))

(declare-fun m!800813 () Bool)

(assert (=> b!859889 m!800813))

(declare-fun m!800815 () Bool)

(assert (=> mapNonEmpty!26507 m!800815))

(declare-fun m!800817 () Bool)

(assert (=> b!859880 m!800817))

(check-sat (not b!859886) (not b!859880) tp_is_empty!16605 (not b!859882) (not b_lambda!11851) (not mapNonEmpty!26507) (not start!73582) (not b_next!14469) (not b!859884) (not b!859877) (not b!859887) (not b!859876) (not b!859891) (not b!859881) (not b!859883) (not b!859889) b_and!23937)
(check-sat b_and!23937 (not b_next!14469))
