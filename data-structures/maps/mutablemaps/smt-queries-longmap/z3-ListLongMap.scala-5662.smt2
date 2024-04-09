; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73786 () Bool)

(assert start!73786)

(declare-fun b_free!14673 () Bool)

(declare-fun b_next!14673 () Bool)

(assert (=> start!73786 (= b_free!14673 (not b_next!14673))))

(declare-fun tp!51524 () Bool)

(declare-fun b_and!24343 () Bool)

(assert (=> start!73786 (= tp!51524 b_and!24343)))

(declare-fun b!864925 () Bool)

(declare-fun res!587817 () Bool)

(declare-fun e!481866 () Bool)

(assert (=> b!864925 (=> (not res!587817) (not e!481866))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!864925 (= res!587817 (validMask!0 mask!1196))))

(declare-fun b!864926 () Bool)

(declare-fun e!481865 () Bool)

(assert (=> b!864926 (= e!481865 true)))

(declare-datatypes ((V!27459 0))(
  ( (V!27460 (val!8452 Int)) )
))
(declare-datatypes ((tuple2!11200 0))(
  ( (tuple2!11201 (_1!5610 (_ BitVec 64)) (_2!5610 V!27459)) )
))
(declare-datatypes ((List!17065 0))(
  ( (Nil!17062) (Cons!17061 (h!18192 tuple2!11200) (t!24012 List!17065)) )
))
(declare-datatypes ((ListLongMap!9983 0))(
  ( (ListLongMap!9984 (toList!5007 List!17065)) )
))
(declare-fun lt!391747 () ListLongMap!9983)

(declare-fun lt!391757 () tuple2!11200)

(declare-fun lt!391752 () tuple2!11200)

(declare-fun lt!391751 () ListLongMap!9983)

(declare-fun +!2303 (ListLongMap!9983 tuple2!11200) ListLongMap!9983)

(assert (=> b!864926 (= lt!391751 (+!2303 (+!2303 lt!391747 lt!391757) lt!391752))))

(declare-fun lt!391753 () V!27459)

(declare-fun v!557 () V!27459)

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!49762 0))(
  ( (array!49763 (arr!23908 (Array (_ BitVec 32) (_ BitVec 64))) (size!24349 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49762)

(declare-datatypes ((Unit!29582 0))(
  ( (Unit!29583) )
))
(declare-fun lt!391759 () Unit!29582)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!511 (ListLongMap!9983 (_ BitVec 64) V!27459 (_ BitVec 64) V!27459) Unit!29582)

(assert (=> b!864926 (= lt!391759 (addCommutativeForDiffKeys!511 lt!391747 k0!854 v!557 (select (arr!23908 _keys!868) from!1053) lt!391753))))

(declare-fun b!864927 () Bool)

(declare-fun e!481861 () Bool)

(declare-fun e!481862 () Bool)

(declare-fun mapRes!26813 () Bool)

(assert (=> b!864927 (= e!481861 (and e!481862 mapRes!26813))))

(declare-fun condMapEmpty!26813 () Bool)

(declare-datatypes ((ValueCell!7965 0))(
  ( (ValueCellFull!7965 (v!10873 V!27459)) (EmptyCell!7965) )
))
(declare-datatypes ((array!49764 0))(
  ( (array!49765 (arr!23909 (Array (_ BitVec 32) ValueCell!7965)) (size!24350 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49764)

(declare-fun mapDefault!26813 () ValueCell!7965)

(assert (=> b!864927 (= condMapEmpty!26813 (= (arr!23909 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7965)) mapDefault!26813)))))

(declare-fun b!864928 () Bool)

(declare-fun e!481864 () Bool)

(declare-fun tp_is_empty!16809 () Bool)

(assert (=> b!864928 (= e!481864 tp_is_empty!16809)))

(declare-fun b!864929 () Bool)

(declare-fun res!587826 () Bool)

(assert (=> b!864929 (=> (not res!587826) (not e!481866))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864929 (= res!587826 (validKeyInArray!0 k0!854))))

(declare-fun b!864930 () Bool)

(declare-fun res!587816 () Bool)

(assert (=> b!864930 (=> (not res!587816) (not e!481866))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!864930 (= res!587816 (and (= (size!24350 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24349 _keys!868) (size!24350 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!864931 () Bool)

(declare-fun res!587821 () Bool)

(assert (=> b!864931 (=> (not res!587821) (not e!481866))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!864931 (= res!587821 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24349 _keys!868))))))

(declare-fun b!864932 () Bool)

(declare-fun e!481860 () Bool)

(declare-fun e!481859 () Bool)

(assert (=> b!864932 (= e!481860 (not e!481859))))

(declare-fun res!587819 () Bool)

(assert (=> b!864932 (=> res!587819 e!481859)))

(assert (=> b!864932 (= res!587819 (not (validKeyInArray!0 (select (arr!23908 _keys!868) from!1053))))))

(declare-fun lt!391746 () ListLongMap!9983)

(declare-fun lt!391749 () ListLongMap!9983)

(assert (=> b!864932 (= lt!391746 lt!391749)))

(assert (=> b!864932 (= lt!391749 (+!2303 lt!391747 lt!391752))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!391756 () array!49764)

(declare-fun minValue!654 () V!27459)

(declare-fun zeroValue!654 () V!27459)

(declare-fun getCurrentListMapNoExtraKeys!2978 (array!49762 array!49764 (_ BitVec 32) (_ BitVec 32) V!27459 V!27459 (_ BitVec 32) Int) ListLongMap!9983)

(assert (=> b!864932 (= lt!391746 (getCurrentListMapNoExtraKeys!2978 _keys!868 lt!391756 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!864932 (= lt!391752 (tuple2!11201 k0!854 v!557))))

(assert (=> b!864932 (= lt!391747 (getCurrentListMapNoExtraKeys!2978 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!391754 () Unit!29582)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!544 (array!49762 array!49764 (_ BitVec 32) (_ BitVec 32) V!27459 V!27459 (_ BitVec 32) (_ BitVec 64) V!27459 (_ BitVec 32) Int) Unit!29582)

(assert (=> b!864932 (= lt!391754 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!544 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!864933 () Bool)

(declare-fun e!481858 () Unit!29582)

(declare-fun Unit!29584 () Unit!29582)

(assert (=> b!864933 (= e!481858 Unit!29584)))

(declare-fun lt!391758 () Unit!29582)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49762 (_ BitVec 32) (_ BitVec 32)) Unit!29582)

(assert (=> b!864933 (= lt!391758 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17066 0))(
  ( (Nil!17063) (Cons!17062 (h!18193 (_ BitVec 64)) (t!24013 List!17066)) )
))
(declare-fun arrayNoDuplicates!0 (array!49762 (_ BitVec 32) List!17066) Bool)

(assert (=> b!864933 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17063)))

(declare-fun lt!391750 () Unit!29582)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49762 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29582)

(assert (=> b!864933 (= lt!391750 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!864933 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!391755 () Unit!29582)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49762 (_ BitVec 64) (_ BitVec 32) List!17066) Unit!29582)

(assert (=> b!864933 (= lt!391755 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17063))))

(assert (=> b!864933 false))

(declare-fun b!864934 () Bool)

(declare-fun res!587824 () Bool)

(assert (=> b!864934 (=> (not res!587824) (not e!481866))))

(assert (=> b!864934 (= res!587824 (and (= (select (arr!23908 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!864935 () Bool)

(declare-fun res!587818 () Bool)

(assert (=> b!864935 (=> (not res!587818) (not e!481866))))

(assert (=> b!864935 (= res!587818 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17063))))

(declare-fun mapIsEmpty!26813 () Bool)

(assert (=> mapIsEmpty!26813 mapRes!26813))

(declare-fun b!864936 () Bool)

(assert (=> b!864936 (= e!481862 tp_is_empty!16809)))

(declare-fun b!864937 () Bool)

(declare-fun Unit!29585 () Unit!29582)

(assert (=> b!864937 (= e!481858 Unit!29585)))

(declare-fun mapNonEmpty!26813 () Bool)

(declare-fun tp!51523 () Bool)

(assert (=> mapNonEmpty!26813 (= mapRes!26813 (and tp!51523 e!481864))))

(declare-fun mapRest!26813 () (Array (_ BitVec 32) ValueCell!7965))

(declare-fun mapKey!26813 () (_ BitVec 32))

(declare-fun mapValue!26813 () ValueCell!7965)

(assert (=> mapNonEmpty!26813 (= (arr!23909 _values!688) (store mapRest!26813 mapKey!26813 mapValue!26813))))

(declare-fun b!864938 () Bool)

(declare-fun res!587825 () Bool)

(assert (=> b!864938 (=> (not res!587825) (not e!481866))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49762 (_ BitVec 32)) Bool)

(assert (=> b!864938 (= res!587825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!864939 () Bool)

(assert (=> b!864939 (= e!481859 e!481865)))

(declare-fun res!587823 () Bool)

(assert (=> b!864939 (=> res!587823 e!481865)))

(assert (=> b!864939 (= res!587823 (= k0!854 (select (arr!23908 _keys!868) from!1053)))))

(assert (=> b!864939 (not (= (select (arr!23908 _keys!868) from!1053) k0!854))))

(declare-fun lt!391760 () Unit!29582)

(assert (=> b!864939 (= lt!391760 e!481858)))

(declare-fun c!92148 () Bool)

(assert (=> b!864939 (= c!92148 (= (select (arr!23908 _keys!868) from!1053) k0!854))))

(declare-fun lt!391761 () ListLongMap!9983)

(assert (=> b!864939 (= lt!391761 lt!391751)))

(assert (=> b!864939 (= lt!391751 (+!2303 lt!391749 lt!391757))))

(assert (=> b!864939 (= lt!391757 (tuple2!11201 (select (arr!23908 _keys!868) from!1053) lt!391753))))

(declare-fun get!12645 (ValueCell!7965 V!27459) V!27459)

(declare-fun dynLambda!1171 (Int (_ BitVec 64)) V!27459)

(assert (=> b!864939 (= lt!391753 (get!12645 (select (arr!23909 _values!688) from!1053) (dynLambda!1171 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!864940 () Bool)

(assert (=> b!864940 (= e!481866 e!481860)))

(declare-fun res!587822 () Bool)

(assert (=> b!864940 (=> (not res!587822) (not e!481860))))

(assert (=> b!864940 (= res!587822 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!864940 (= lt!391761 (getCurrentListMapNoExtraKeys!2978 _keys!868 lt!391756 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!864940 (= lt!391756 (array!49765 (store (arr!23909 _values!688) i!612 (ValueCellFull!7965 v!557)) (size!24350 _values!688)))))

(declare-fun lt!391748 () ListLongMap!9983)

(assert (=> b!864940 (= lt!391748 (getCurrentListMapNoExtraKeys!2978 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!587820 () Bool)

(assert (=> start!73786 (=> (not res!587820) (not e!481866))))

(assert (=> start!73786 (= res!587820 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24349 _keys!868))))))

(assert (=> start!73786 e!481866))

(assert (=> start!73786 tp_is_empty!16809))

(assert (=> start!73786 true))

(assert (=> start!73786 tp!51524))

(declare-fun array_inv!18884 (array!49762) Bool)

(assert (=> start!73786 (array_inv!18884 _keys!868)))

(declare-fun array_inv!18885 (array!49764) Bool)

(assert (=> start!73786 (and (array_inv!18885 _values!688) e!481861)))

(assert (= (and start!73786 res!587820) b!864925))

(assert (= (and b!864925 res!587817) b!864930))

(assert (= (and b!864930 res!587816) b!864938))

(assert (= (and b!864938 res!587825) b!864935))

(assert (= (and b!864935 res!587818) b!864931))

(assert (= (and b!864931 res!587821) b!864929))

(assert (= (and b!864929 res!587826) b!864934))

(assert (= (and b!864934 res!587824) b!864940))

(assert (= (and b!864940 res!587822) b!864932))

(assert (= (and b!864932 (not res!587819)) b!864939))

(assert (= (and b!864939 c!92148) b!864933))

(assert (= (and b!864939 (not c!92148)) b!864937))

(assert (= (and b!864939 (not res!587823)) b!864926))

(assert (= (and b!864927 condMapEmpty!26813) mapIsEmpty!26813))

(assert (= (and b!864927 (not condMapEmpty!26813)) mapNonEmpty!26813))

(get-info :version)

(assert (= (and mapNonEmpty!26813 ((_ is ValueCellFull!7965) mapValue!26813)) b!864928))

(assert (= (and b!864927 ((_ is ValueCellFull!7965) mapDefault!26813)) b!864936))

(assert (= start!73786 b!864927))

(declare-fun b_lambda!12055 () Bool)

(assert (=> (not b_lambda!12055) (not b!864939)))

(declare-fun t!24011 () Bool)

(declare-fun tb!4803 () Bool)

(assert (=> (and start!73786 (= defaultEntry!696 defaultEntry!696) t!24011) tb!4803))

(declare-fun result!9209 () Bool)

(assert (=> tb!4803 (= result!9209 tp_is_empty!16809)))

(assert (=> b!864939 t!24011))

(declare-fun b_and!24345 () Bool)

(assert (= b_and!24343 (and (=> t!24011 result!9209) b_and!24345)))

(declare-fun m!806471 () Bool)

(assert (=> b!864926 m!806471))

(assert (=> b!864926 m!806471))

(declare-fun m!806473 () Bool)

(assert (=> b!864926 m!806473))

(declare-fun m!806475 () Bool)

(assert (=> b!864926 m!806475))

(assert (=> b!864926 m!806475))

(declare-fun m!806477 () Bool)

(assert (=> b!864926 m!806477))

(declare-fun m!806479 () Bool)

(assert (=> start!73786 m!806479))

(declare-fun m!806481 () Bool)

(assert (=> start!73786 m!806481))

(declare-fun m!806483 () Bool)

(assert (=> b!864940 m!806483))

(declare-fun m!806485 () Bool)

(assert (=> b!864940 m!806485))

(declare-fun m!806487 () Bool)

(assert (=> b!864940 m!806487))

(declare-fun m!806489 () Bool)

(assert (=> b!864938 m!806489))

(declare-fun m!806491 () Bool)

(assert (=> b!864932 m!806491))

(declare-fun m!806493 () Bool)

(assert (=> b!864932 m!806493))

(declare-fun m!806495 () Bool)

(assert (=> b!864932 m!806495))

(assert (=> b!864932 m!806475))

(declare-fun m!806497 () Bool)

(assert (=> b!864932 m!806497))

(assert (=> b!864932 m!806475))

(declare-fun m!806499 () Bool)

(assert (=> b!864932 m!806499))

(declare-fun m!806501 () Bool)

(assert (=> b!864929 m!806501))

(declare-fun m!806503 () Bool)

(assert (=> b!864925 m!806503))

(declare-fun m!806505 () Bool)

(assert (=> b!864935 m!806505))

(declare-fun m!806507 () Bool)

(assert (=> b!864939 m!806507))

(declare-fun m!806509 () Bool)

(assert (=> b!864939 m!806509))

(declare-fun m!806511 () Bool)

(assert (=> b!864939 m!806511))

(declare-fun m!806513 () Bool)

(assert (=> b!864939 m!806513))

(assert (=> b!864939 m!806509))

(assert (=> b!864939 m!806475))

(assert (=> b!864939 m!806511))

(declare-fun m!806515 () Bool)

(assert (=> b!864934 m!806515))

(declare-fun m!806517 () Bool)

(assert (=> b!864933 m!806517))

(declare-fun m!806519 () Bool)

(assert (=> b!864933 m!806519))

(declare-fun m!806521 () Bool)

(assert (=> b!864933 m!806521))

(declare-fun m!806523 () Bool)

(assert (=> b!864933 m!806523))

(declare-fun m!806525 () Bool)

(assert (=> b!864933 m!806525))

(declare-fun m!806527 () Bool)

(assert (=> mapNonEmpty!26813 m!806527))

(check-sat (not b_lambda!12055) (not b!864932) (not b!864926) tp_is_empty!16809 (not b!864929) (not b!864935) (not mapNonEmpty!26813) b_and!24345 (not b_next!14673) (not b!864940) (not start!73786) (not b!864938) (not b!864939) (not b!864933) (not b!864925))
(check-sat b_and!24345 (not b_next!14673))
