; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73732 () Bool)

(assert start!73732)

(declare-fun b_free!14619 () Bool)

(declare-fun b_next!14619 () Bool)

(assert (=> start!73732 (= b_free!14619 (not b_next!14619))))

(declare-fun tp!51362 () Bool)

(declare-fun b_and!24235 () Bool)

(assert (=> start!73732 (= tp!51362 b_and!24235)))

(declare-fun b!863575 () Bool)

(declare-fun e!481134 () Bool)

(assert (=> b!863575 (= e!481134 true)))

(declare-datatypes ((V!27387 0))(
  ( (V!27388 (val!8425 Int)) )
))
(declare-datatypes ((tuple2!11150 0))(
  ( (tuple2!11151 (_1!5585 (_ BitVec 64)) (_2!5585 V!27387)) )
))
(declare-datatypes ((List!17018 0))(
  ( (Nil!17015) (Cons!17014 (h!18145 tuple2!11150) (t!23911 List!17018)) )
))
(declare-datatypes ((ListLongMap!9933 0))(
  ( (ListLongMap!9934 (toList!4982 List!17018)) )
))
(declare-fun lt!390456 () ListLongMap!9933)

(declare-fun lt!390451 () tuple2!11150)

(declare-fun lt!390458 () tuple2!11150)

(declare-fun lt!390463 () ListLongMap!9933)

(declare-fun +!2279 (ListLongMap!9933 tuple2!11150) ListLongMap!9933)

(assert (=> b!863575 (= lt!390456 (+!2279 (+!2279 lt!390463 lt!390451) lt!390458))))

(declare-datatypes ((Unit!29494 0))(
  ( (Unit!29495) )
))
(declare-fun lt!390460 () Unit!29494)

(declare-fun lt!390453 () V!27387)

(declare-fun v!557 () V!27387)

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!49654 0))(
  ( (array!49655 (arr!23854 (Array (_ BitVec 32) (_ BitVec 64))) (size!24295 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49654)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!491 (ListLongMap!9933 (_ BitVec 64) V!27387 (_ BitVec 64) V!27387) Unit!29494)

(assert (=> b!863575 (= lt!390460 (addCommutativeForDiffKeys!491 lt!390463 k0!854 v!557 (select (arr!23854 _keys!868) from!1053) lt!390453))))

(declare-fun b!863576 () Bool)

(declare-fun res!586930 () Bool)

(declare-fun e!481137 () Bool)

(assert (=> b!863576 (=> (not res!586930) (not e!481137))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49654 (_ BitVec 32)) Bool)

(assert (=> b!863576 (= res!586930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!863577 () Bool)

(declare-fun res!586926 () Bool)

(assert (=> b!863577 (=> (not res!586926) (not e!481137))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863577 (= res!586926 (validKeyInArray!0 k0!854))))

(declare-fun b!863578 () Bool)

(declare-fun e!481132 () Bool)

(declare-fun tp_is_empty!16755 () Bool)

(assert (=> b!863578 (= e!481132 tp_is_empty!16755)))

(declare-fun b!863579 () Bool)

(declare-fun e!481131 () Bool)

(declare-fun e!481136 () Bool)

(assert (=> b!863579 (= e!481131 (not e!481136))))

(declare-fun res!586929 () Bool)

(assert (=> b!863579 (=> res!586929 e!481136)))

(assert (=> b!863579 (= res!586929 (not (validKeyInArray!0 (select (arr!23854 _keys!868) from!1053))))))

(declare-fun lt!390464 () ListLongMap!9933)

(declare-fun lt!390452 () ListLongMap!9933)

(assert (=> b!863579 (= lt!390464 lt!390452)))

(assert (=> b!863579 (= lt!390452 (+!2279 lt!390463 lt!390458))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27387)

(declare-fun zeroValue!654 () V!27387)

(declare-datatypes ((ValueCell!7938 0))(
  ( (ValueCellFull!7938 (v!10846 V!27387)) (EmptyCell!7938) )
))
(declare-datatypes ((array!49656 0))(
  ( (array!49657 (arr!23855 (Array (_ BitVec 32) ValueCell!7938)) (size!24296 (_ BitVec 32))) )
))
(declare-fun lt!390454 () array!49656)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2956 (array!49654 array!49656 (_ BitVec 32) (_ BitVec 32) V!27387 V!27387 (_ BitVec 32) Int) ListLongMap!9933)

(assert (=> b!863579 (= lt!390464 (getCurrentListMapNoExtraKeys!2956 _keys!868 lt!390454 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!863579 (= lt!390458 (tuple2!11151 k0!854 v!557))))

(declare-fun _values!688 () array!49656)

(assert (=> b!863579 (= lt!390463 (getCurrentListMapNoExtraKeys!2956 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!390462 () Unit!29494)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!525 (array!49654 array!49656 (_ BitVec 32) (_ BitVec 32) V!27387 V!27387 (_ BitVec 32) (_ BitVec 64) V!27387 (_ BitVec 32) Int) Unit!29494)

(assert (=> b!863579 (= lt!390462 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!525 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!863581 () Bool)

(declare-fun res!586932 () Bool)

(assert (=> b!863581 (=> (not res!586932) (not e!481137))))

(assert (=> b!863581 (= res!586932 (and (= (select (arr!23854 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!26732 () Bool)

(declare-fun mapRes!26732 () Bool)

(declare-fun tp!51361 () Bool)

(declare-fun e!481130 () Bool)

(assert (=> mapNonEmpty!26732 (= mapRes!26732 (and tp!51361 e!481130))))

(declare-fun mapKey!26732 () (_ BitVec 32))

(declare-fun mapRest!26732 () (Array (_ BitVec 32) ValueCell!7938))

(declare-fun mapValue!26732 () ValueCell!7938)

(assert (=> mapNonEmpty!26732 (= (arr!23855 _values!688) (store mapRest!26732 mapKey!26732 mapValue!26732))))

(declare-fun b!863582 () Bool)

(declare-fun e!481135 () Unit!29494)

(declare-fun Unit!29496 () Unit!29494)

(assert (=> b!863582 (= e!481135 Unit!29496)))

(declare-fun lt!390457 () Unit!29494)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49654 (_ BitVec 32) (_ BitVec 32)) Unit!29494)

(assert (=> b!863582 (= lt!390457 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17019 0))(
  ( (Nil!17016) (Cons!17015 (h!18146 (_ BitVec 64)) (t!23912 List!17019)) )
))
(declare-fun arrayNoDuplicates!0 (array!49654 (_ BitVec 32) List!17019) Bool)

(assert (=> b!863582 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17016)))

(declare-fun lt!390455 () Unit!29494)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49654 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29494)

(assert (=> b!863582 (= lt!390455 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49654 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!863582 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!390461 () Unit!29494)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49654 (_ BitVec 64) (_ BitVec 32) List!17019) Unit!29494)

(assert (=> b!863582 (= lt!390461 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17016))))

(assert (=> b!863582 false))

(declare-fun b!863583 () Bool)

(declare-fun res!586927 () Bool)

(assert (=> b!863583 (=> (not res!586927) (not e!481137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!863583 (= res!586927 (validMask!0 mask!1196))))

(declare-fun b!863584 () Bool)

(declare-fun e!481133 () Bool)

(assert (=> b!863584 (= e!481133 (and e!481132 mapRes!26732))))

(declare-fun condMapEmpty!26732 () Bool)

(declare-fun mapDefault!26732 () ValueCell!7938)

(assert (=> b!863584 (= condMapEmpty!26732 (= (arr!23855 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7938)) mapDefault!26732)))))

(declare-fun b!863585 () Bool)

(declare-fun Unit!29497 () Unit!29494)

(assert (=> b!863585 (= e!481135 Unit!29497)))

(declare-fun b!863586 () Bool)

(declare-fun res!586931 () Bool)

(assert (=> b!863586 (=> (not res!586931) (not e!481137))))

(assert (=> b!863586 (= res!586931 (and (= (size!24296 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24295 _keys!868) (size!24296 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!863587 () Bool)

(assert (=> b!863587 (= e!481137 e!481131)))

(declare-fun res!586928 () Bool)

(assert (=> b!863587 (=> (not res!586928) (not e!481131))))

(assert (=> b!863587 (= res!586928 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!390450 () ListLongMap!9933)

(assert (=> b!863587 (= lt!390450 (getCurrentListMapNoExtraKeys!2956 _keys!868 lt!390454 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!863587 (= lt!390454 (array!49657 (store (arr!23855 _values!688) i!612 (ValueCellFull!7938 v!557)) (size!24296 _values!688)))))

(declare-fun lt!390465 () ListLongMap!9933)

(assert (=> b!863587 (= lt!390465 (getCurrentListMapNoExtraKeys!2956 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!586935 () Bool)

(assert (=> start!73732 (=> (not res!586935) (not e!481137))))

(assert (=> start!73732 (= res!586935 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24295 _keys!868))))))

(assert (=> start!73732 e!481137))

(assert (=> start!73732 tp_is_empty!16755))

(assert (=> start!73732 true))

(assert (=> start!73732 tp!51362))

(declare-fun array_inv!18844 (array!49654) Bool)

(assert (=> start!73732 (array_inv!18844 _keys!868)))

(declare-fun array_inv!18845 (array!49656) Bool)

(assert (=> start!73732 (and (array_inv!18845 _values!688) e!481133)))

(declare-fun b!863580 () Bool)

(declare-fun res!586933 () Bool)

(assert (=> b!863580 (=> (not res!586933) (not e!481137))))

(assert (=> b!863580 (= res!586933 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17016))))

(declare-fun mapIsEmpty!26732 () Bool)

(assert (=> mapIsEmpty!26732 mapRes!26732))

(declare-fun b!863588 () Bool)

(assert (=> b!863588 (= e!481136 e!481134)))

(declare-fun res!586925 () Bool)

(assert (=> b!863588 (=> res!586925 e!481134)))

(assert (=> b!863588 (= res!586925 (= k0!854 (select (arr!23854 _keys!868) from!1053)))))

(assert (=> b!863588 (not (= (select (arr!23854 _keys!868) from!1053) k0!854))))

(declare-fun lt!390459 () Unit!29494)

(assert (=> b!863588 (= lt!390459 e!481135)))

(declare-fun c!92067 () Bool)

(assert (=> b!863588 (= c!92067 (= (select (arr!23854 _keys!868) from!1053) k0!854))))

(assert (=> b!863588 (= lt!390450 lt!390456)))

(assert (=> b!863588 (= lt!390456 (+!2279 lt!390452 lt!390451))))

(assert (=> b!863588 (= lt!390451 (tuple2!11151 (select (arr!23854 _keys!868) from!1053) lt!390453))))

(declare-fun get!12609 (ValueCell!7938 V!27387) V!27387)

(declare-fun dynLambda!1153 (Int (_ BitVec 64)) V!27387)

(assert (=> b!863588 (= lt!390453 (get!12609 (select (arr!23855 _values!688) from!1053) (dynLambda!1153 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!863589 () Bool)

(declare-fun res!586934 () Bool)

(assert (=> b!863589 (=> (not res!586934) (not e!481137))))

(assert (=> b!863589 (= res!586934 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24295 _keys!868))))))

(declare-fun b!863590 () Bool)

(assert (=> b!863590 (= e!481130 tp_is_empty!16755)))

(assert (= (and start!73732 res!586935) b!863583))

(assert (= (and b!863583 res!586927) b!863586))

(assert (= (and b!863586 res!586931) b!863576))

(assert (= (and b!863576 res!586930) b!863580))

(assert (= (and b!863580 res!586933) b!863589))

(assert (= (and b!863589 res!586934) b!863577))

(assert (= (and b!863577 res!586926) b!863581))

(assert (= (and b!863581 res!586932) b!863587))

(assert (= (and b!863587 res!586928) b!863579))

(assert (= (and b!863579 (not res!586929)) b!863588))

(assert (= (and b!863588 c!92067) b!863582))

(assert (= (and b!863588 (not c!92067)) b!863585))

(assert (= (and b!863588 (not res!586925)) b!863575))

(assert (= (and b!863584 condMapEmpty!26732) mapIsEmpty!26732))

(assert (= (and b!863584 (not condMapEmpty!26732)) mapNonEmpty!26732))

(get-info :version)

(assert (= (and mapNonEmpty!26732 ((_ is ValueCellFull!7938) mapValue!26732)) b!863590))

(assert (= (and b!863584 ((_ is ValueCellFull!7938) mapDefault!26732)) b!863578))

(assert (= start!73732 b!863584))

(declare-fun b_lambda!12001 () Bool)

(assert (=> (not b_lambda!12001) (not b!863588)))

(declare-fun t!23910 () Bool)

(declare-fun tb!4749 () Bool)

(assert (=> (and start!73732 (= defaultEntry!696 defaultEntry!696) t!23910) tb!4749))

(declare-fun result!9101 () Bool)

(assert (=> tb!4749 (= result!9101 tp_is_empty!16755)))

(assert (=> b!863588 t!23910))

(declare-fun b_and!24237 () Bool)

(assert (= b_and!24235 (and (=> t!23910 result!9101) b_and!24237)))

(declare-fun m!804905 () Bool)

(assert (=> start!73732 m!804905))

(declare-fun m!804907 () Bool)

(assert (=> start!73732 m!804907))

(declare-fun m!804909 () Bool)

(assert (=> b!863580 m!804909))

(declare-fun m!804911 () Bool)

(assert (=> b!863581 m!804911))

(declare-fun m!804913 () Bool)

(assert (=> b!863576 m!804913))

(declare-fun m!804915 () Bool)

(assert (=> b!863583 m!804915))

(declare-fun m!804917 () Bool)

(assert (=> b!863575 m!804917))

(assert (=> b!863575 m!804917))

(declare-fun m!804919 () Bool)

(assert (=> b!863575 m!804919))

(declare-fun m!804921 () Bool)

(assert (=> b!863575 m!804921))

(assert (=> b!863575 m!804921))

(declare-fun m!804923 () Bool)

(assert (=> b!863575 m!804923))

(declare-fun m!804925 () Bool)

(assert (=> b!863588 m!804925))

(declare-fun m!804927 () Bool)

(assert (=> b!863588 m!804927))

(declare-fun m!804929 () Bool)

(assert (=> b!863588 m!804929))

(declare-fun m!804931 () Bool)

(assert (=> b!863588 m!804931))

(assert (=> b!863588 m!804927))

(assert (=> b!863588 m!804921))

(assert (=> b!863588 m!804929))

(declare-fun m!804933 () Bool)

(assert (=> mapNonEmpty!26732 m!804933))

(declare-fun m!804935 () Bool)

(assert (=> b!863577 m!804935))

(declare-fun m!804937 () Bool)

(assert (=> b!863582 m!804937))

(declare-fun m!804939 () Bool)

(assert (=> b!863582 m!804939))

(declare-fun m!804941 () Bool)

(assert (=> b!863582 m!804941))

(declare-fun m!804943 () Bool)

(assert (=> b!863582 m!804943))

(declare-fun m!804945 () Bool)

(assert (=> b!863582 m!804945))

(declare-fun m!804947 () Bool)

(assert (=> b!863579 m!804947))

(declare-fun m!804949 () Bool)

(assert (=> b!863579 m!804949))

(assert (=> b!863579 m!804921))

(declare-fun m!804951 () Bool)

(assert (=> b!863579 m!804951))

(assert (=> b!863579 m!804921))

(declare-fun m!804953 () Bool)

(assert (=> b!863579 m!804953))

(declare-fun m!804955 () Bool)

(assert (=> b!863579 m!804955))

(declare-fun m!804957 () Bool)

(assert (=> b!863587 m!804957))

(declare-fun m!804959 () Bool)

(assert (=> b!863587 m!804959))

(declare-fun m!804961 () Bool)

(assert (=> b!863587 m!804961))

(check-sat (not b!863575) (not b_lambda!12001) (not b!863587) (not b!863576) b_and!24237 (not b!863580) (not b!863588) (not start!73732) (not b!863579) tp_is_empty!16755 (not b_next!14619) (not b!863583) (not mapNonEmpty!26732) (not b!863582) (not b!863577))
(check-sat b_and!24237 (not b_next!14619))
