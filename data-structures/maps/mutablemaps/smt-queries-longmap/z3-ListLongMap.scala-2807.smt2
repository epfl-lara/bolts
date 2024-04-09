; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40740 () Bool)

(assert start!40740)

(declare-fun b_free!10743 () Bool)

(declare-fun b_next!10743 () Bool)

(assert (=> start!40740 (= b_free!10743 (not b_next!10743))))

(declare-fun tp!38048 () Bool)

(declare-fun b_and!18771 () Bool)

(assert (=> start!40740 (= tp!38048 b_and!18771)))

(declare-fun b!450939 () Bool)

(declare-fun res!268564 () Bool)

(declare-fun e!264182 () Bool)

(assert (=> b!450939 (=> (not res!268564) (not e!264182))))

(declare-datatypes ((array!27929 0))(
  ( (array!27930 (arr!13407 (Array (_ BitVec 32) (_ BitVec 64))) (size!13759 (_ BitVec 32))) )
))
(declare-fun lt!204775 () array!27929)

(declare-datatypes ((List!8051 0))(
  ( (Nil!8048) (Cons!8047 (h!8903 (_ BitVec 64)) (t!13825 List!8051)) )
))
(declare-fun arrayNoDuplicates!0 (array!27929 (_ BitVec 32) List!8051) Bool)

(assert (=> b!450939 (= res!268564 (arrayNoDuplicates!0 lt!204775 #b00000000000000000000000000000000 Nil!8048))))

(declare-fun b!450940 () Bool)

(declare-fun res!268563 () Bool)

(declare-fun e!264175 () Bool)

(assert (=> b!450940 (=> (not res!268563) (not e!264175))))

(declare-fun _keys!709 () array!27929)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27929 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!450940 (= res!268563 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-datatypes ((V!17213 0))(
  ( (V!17214 (val!6085 Int)) )
))
(declare-datatypes ((tuple2!7944 0))(
  ( (tuple2!7945 (_1!3982 (_ BitVec 64)) (_2!3982 V!17213)) )
))
(declare-datatypes ((List!8052 0))(
  ( (Nil!8049) (Cons!8048 (h!8904 tuple2!7944) (t!13826 List!8052)) )
))
(declare-datatypes ((ListLongMap!6871 0))(
  ( (ListLongMap!6872 (toList!3451 List!8052)) )
))
(declare-fun call!29818 () ListLongMap!6871)

(declare-fun e!264179 () Bool)

(declare-fun b!450941 () Bool)

(declare-fun call!29819 () ListLongMap!6871)

(declare-fun v!412 () V!17213)

(declare-fun +!1519 (ListLongMap!6871 tuple2!7944) ListLongMap!6871)

(assert (=> b!450941 (= e!264179 (= call!29818 (+!1519 call!29819 (tuple2!7945 k0!794 v!412))))))

(declare-fun b!450942 () Bool)

(declare-fun e!264181 () Bool)

(declare-fun e!264180 () Bool)

(assert (=> b!450942 (= e!264181 (not e!264180))))

(declare-fun res!268566 () Bool)

(assert (=> b!450942 (=> res!268566 e!264180)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!450942 (= res!268566 (validKeyInArray!0 (select (arr!13407 _keys!709) from!863)))))

(assert (=> b!450942 e!264179))

(declare-fun c!55946 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!450942 (= c!55946 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!17213)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5697 0))(
  ( (ValueCellFull!5697 (v!8336 V!17213)) (EmptyCell!5697) )
))
(declare-datatypes ((array!27931 0))(
  ( (array!27932 (arr!13408 (Array (_ BitVec 32) ValueCell!5697)) (size!13760 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27931)

(declare-fun zeroValue!515 () V!17213)

(declare-datatypes ((Unit!13143 0))(
  ( (Unit!13144) )
))
(declare-fun lt!204773 () Unit!13143)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!690 (array!27929 array!27931 (_ BitVec 32) (_ BitVec 32) V!17213 V!17213 (_ BitVec 32) (_ BitVec 64) V!17213 (_ BitVec 32) Int) Unit!13143)

(assert (=> b!450942 (= lt!204773 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!690 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450943 () Bool)

(assert (=> b!450943 (= e!264175 e!264182)))

(declare-fun res!268565 () Bool)

(assert (=> b!450943 (=> (not res!268565) (not e!264182))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27929 (_ BitVec 32)) Bool)

(assert (=> b!450943 (= res!268565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204775 mask!1025))))

(assert (=> b!450943 (= lt!204775 (array!27930 (store (arr!13407 _keys!709) i!563 k0!794) (size!13759 _keys!709)))))

(declare-fun bm!29815 () Bool)

(declare-fun lt!204772 () array!27931)

(declare-fun getCurrentListMapNoExtraKeys!1628 (array!27929 array!27931 (_ BitVec 32) (_ BitVec 32) V!17213 V!17213 (_ BitVec 32) Int) ListLongMap!6871)

(assert (=> bm!29815 (= call!29819 (getCurrentListMapNoExtraKeys!1628 (ite c!55946 _keys!709 lt!204775) (ite c!55946 _values!549 lt!204772) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450944 () Bool)

(declare-fun e!264178 () Bool)

(declare-fun e!264177 () Bool)

(declare-fun mapRes!19755 () Bool)

(assert (=> b!450944 (= e!264178 (and e!264177 mapRes!19755))))

(declare-fun condMapEmpty!19755 () Bool)

(declare-fun mapDefault!19755 () ValueCell!5697)

(assert (=> b!450944 (= condMapEmpty!19755 (= (arr!13408 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5697)) mapDefault!19755)))))

(declare-fun b!450945 () Bool)

(declare-fun res!268561 () Bool)

(assert (=> b!450945 (=> (not res!268561) (not e!264182))))

(assert (=> b!450945 (= res!268561 (bvsle from!863 i!563))))

(declare-fun lt!204774 () ListLongMap!6871)

(declare-fun b!450946 () Bool)

(declare-fun get!6607 (ValueCell!5697 V!17213) V!17213)

(declare-fun dynLambda!844 (Int (_ BitVec 64)) V!17213)

(assert (=> b!450946 (= e!264180 (= lt!204774 (+!1519 (getCurrentListMapNoExtraKeys!1628 lt!204775 lt!204772 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7945 (select (arr!13407 lt!204775) from!863) (get!6607 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!450947 () Bool)

(declare-fun tp_is_empty!12081 () Bool)

(assert (=> b!450947 (= e!264177 tp_is_empty!12081)))

(declare-fun b!450948 () Bool)

(assert (=> b!450948 (= e!264179 (= call!29819 call!29818))))

(declare-fun bm!29816 () Bool)

(assert (=> bm!29816 (= call!29818 (getCurrentListMapNoExtraKeys!1628 (ite c!55946 lt!204775 _keys!709) (ite c!55946 lt!204772 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!268562 () Bool)

(assert (=> start!40740 (=> (not res!268562) (not e!264175))))

(assert (=> start!40740 (= res!268562 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13759 _keys!709))))))

(assert (=> start!40740 e!264175))

(assert (=> start!40740 tp_is_empty!12081))

(assert (=> start!40740 tp!38048))

(assert (=> start!40740 true))

(declare-fun array_inv!9702 (array!27931) Bool)

(assert (=> start!40740 (and (array_inv!9702 _values!549) e!264178)))

(declare-fun array_inv!9703 (array!27929) Bool)

(assert (=> start!40740 (array_inv!9703 _keys!709)))

(declare-fun b!450949 () Bool)

(assert (=> b!450949 (= e!264182 e!264181)))

(declare-fun res!268559 () Bool)

(assert (=> b!450949 (=> (not res!268559) (not e!264181))))

(assert (=> b!450949 (= res!268559 (= from!863 i!563))))

(assert (=> b!450949 (= lt!204774 (getCurrentListMapNoExtraKeys!1628 lt!204775 lt!204772 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!450949 (= lt!204772 (array!27932 (store (arr!13408 _values!549) i!563 (ValueCellFull!5697 v!412)) (size!13760 _values!549)))))

(declare-fun lt!204771 () ListLongMap!6871)

(assert (=> b!450949 (= lt!204771 (getCurrentListMapNoExtraKeys!1628 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!19755 () Bool)

(assert (=> mapIsEmpty!19755 mapRes!19755))

(declare-fun b!450950 () Bool)

(declare-fun res!268569 () Bool)

(assert (=> b!450950 (=> (not res!268569) (not e!264175))))

(assert (=> b!450950 (= res!268569 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13759 _keys!709))))))

(declare-fun b!450951 () Bool)

(declare-fun res!268560 () Bool)

(assert (=> b!450951 (=> (not res!268560) (not e!264175))))

(assert (=> b!450951 (= res!268560 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8048))))

(declare-fun b!450952 () Bool)

(declare-fun e!264176 () Bool)

(assert (=> b!450952 (= e!264176 tp_is_empty!12081)))

(declare-fun b!450953 () Bool)

(declare-fun res!268567 () Bool)

(assert (=> b!450953 (=> (not res!268567) (not e!264175))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!450953 (= res!268567 (validMask!0 mask!1025))))

(declare-fun b!450954 () Bool)

(declare-fun res!268558 () Bool)

(assert (=> b!450954 (=> (not res!268558) (not e!264175))))

(assert (=> b!450954 (= res!268558 (or (= (select (arr!13407 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13407 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!450955 () Bool)

(declare-fun res!268556 () Bool)

(assert (=> b!450955 (=> (not res!268556) (not e!264175))))

(assert (=> b!450955 (= res!268556 (and (= (size!13760 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13759 _keys!709) (size!13760 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!19755 () Bool)

(declare-fun tp!38049 () Bool)

(assert (=> mapNonEmpty!19755 (= mapRes!19755 (and tp!38049 e!264176))))

(declare-fun mapRest!19755 () (Array (_ BitVec 32) ValueCell!5697))

(declare-fun mapKey!19755 () (_ BitVec 32))

(declare-fun mapValue!19755 () ValueCell!5697)

(assert (=> mapNonEmpty!19755 (= (arr!13408 _values!549) (store mapRest!19755 mapKey!19755 mapValue!19755))))

(declare-fun b!450956 () Bool)

(declare-fun res!268557 () Bool)

(assert (=> b!450956 (=> (not res!268557) (not e!264175))))

(assert (=> b!450956 (= res!268557 (validKeyInArray!0 k0!794))))

(declare-fun b!450957 () Bool)

(declare-fun res!268568 () Bool)

(assert (=> b!450957 (=> (not res!268568) (not e!264175))))

(assert (=> b!450957 (= res!268568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!40740 res!268562) b!450953))

(assert (= (and b!450953 res!268567) b!450955))

(assert (= (and b!450955 res!268556) b!450957))

(assert (= (and b!450957 res!268568) b!450951))

(assert (= (and b!450951 res!268560) b!450950))

(assert (= (and b!450950 res!268569) b!450956))

(assert (= (and b!450956 res!268557) b!450954))

(assert (= (and b!450954 res!268558) b!450940))

(assert (= (and b!450940 res!268563) b!450943))

(assert (= (and b!450943 res!268565) b!450939))

(assert (= (and b!450939 res!268564) b!450945))

(assert (= (and b!450945 res!268561) b!450949))

(assert (= (and b!450949 res!268559) b!450942))

(assert (= (and b!450942 c!55946) b!450941))

(assert (= (and b!450942 (not c!55946)) b!450948))

(assert (= (or b!450941 b!450948) bm!29816))

(assert (= (or b!450941 b!450948) bm!29815))

(assert (= (and b!450942 (not res!268566)) b!450946))

(assert (= (and b!450944 condMapEmpty!19755) mapIsEmpty!19755))

(assert (= (and b!450944 (not condMapEmpty!19755)) mapNonEmpty!19755))

(get-info :version)

(assert (= (and mapNonEmpty!19755 ((_ is ValueCellFull!5697) mapValue!19755)) b!450952))

(assert (= (and b!450944 ((_ is ValueCellFull!5697) mapDefault!19755)) b!450947))

(assert (= start!40740 b!450944))

(declare-fun b_lambda!9509 () Bool)

(assert (=> (not b_lambda!9509) (not b!450946)))

(declare-fun t!13824 () Bool)

(declare-fun tb!3731 () Bool)

(assert (=> (and start!40740 (= defaultEntry!557 defaultEntry!557) t!13824) tb!3731))

(declare-fun result!6989 () Bool)

(assert (=> tb!3731 (= result!6989 tp_is_empty!12081)))

(assert (=> b!450946 t!13824))

(declare-fun b_and!18773 () Bool)

(assert (= b_and!18771 (and (=> t!13824 result!6989) b_and!18773)))

(declare-fun m!434715 () Bool)

(assert (=> b!450941 m!434715))

(declare-fun m!434717 () Bool)

(assert (=> b!450953 m!434717))

(declare-fun m!434719 () Bool)

(assert (=> b!450942 m!434719))

(assert (=> b!450942 m!434719))

(declare-fun m!434721 () Bool)

(assert (=> b!450942 m!434721))

(declare-fun m!434723 () Bool)

(assert (=> b!450942 m!434723))

(declare-fun m!434725 () Bool)

(assert (=> bm!29815 m!434725))

(declare-fun m!434727 () Bool)

(assert (=> bm!29816 m!434727))

(declare-fun m!434729 () Bool)

(assert (=> start!40740 m!434729))

(declare-fun m!434731 () Bool)

(assert (=> start!40740 m!434731))

(declare-fun m!434733 () Bool)

(assert (=> b!450956 m!434733))

(declare-fun m!434735 () Bool)

(assert (=> b!450946 m!434735))

(declare-fun m!434737 () Bool)

(assert (=> b!450946 m!434737))

(assert (=> b!450946 m!434735))

(declare-fun m!434739 () Bool)

(assert (=> b!450946 m!434739))

(declare-fun m!434741 () Bool)

(assert (=> b!450946 m!434741))

(declare-fun m!434743 () Bool)

(assert (=> b!450946 m!434743))

(assert (=> b!450946 m!434741))

(assert (=> b!450946 m!434739))

(declare-fun m!434745 () Bool)

(assert (=> b!450946 m!434745))

(declare-fun m!434747 () Bool)

(assert (=> b!450939 m!434747))

(declare-fun m!434749 () Bool)

(assert (=> b!450940 m!434749))

(declare-fun m!434751 () Bool)

(assert (=> b!450943 m!434751))

(declare-fun m!434753 () Bool)

(assert (=> b!450943 m!434753))

(declare-fun m!434755 () Bool)

(assert (=> b!450954 m!434755))

(declare-fun m!434757 () Bool)

(assert (=> b!450949 m!434757))

(declare-fun m!434759 () Bool)

(assert (=> b!450949 m!434759))

(declare-fun m!434761 () Bool)

(assert (=> b!450949 m!434761))

(declare-fun m!434763 () Bool)

(assert (=> b!450957 m!434763))

(declare-fun m!434765 () Bool)

(assert (=> b!450951 m!434765))

(declare-fun m!434767 () Bool)

(assert (=> mapNonEmpty!19755 m!434767))

(check-sat (not b!450940) (not b!450941) (not b_next!10743) (not mapNonEmpty!19755) (not bm!29816) (not b!450956) (not b!450942) (not b!450943) (not start!40740) (not b_lambda!9509) (not b!450946) (not b!450939) b_and!18773 (not b!450949) tp_is_empty!12081 (not bm!29815) (not b!450953) (not b!450957) (not b!450951))
(check-sat b_and!18773 (not b_next!10743))
(get-model)

(declare-fun b_lambda!9513 () Bool)

(assert (= b_lambda!9509 (or (and start!40740 b_free!10743) b_lambda!9513)))

(check-sat (not b!450940) (not b!450941) (not b_next!10743) (not mapNonEmpty!19755) (not bm!29816) (not b!450956) (not b!450942) (not b!450943) (not start!40740) (not b!450939) b_and!18773 (not b!450949) tp_is_empty!12081 (not bm!29815) (not b!450953) (not b!450946) (not b_lambda!9513) (not b!450957) (not b!450951))
(check-sat b_and!18773 (not b_next!10743))
(get-model)

(declare-fun d!74135 () Bool)

(declare-fun e!264213 () Bool)

(assert (=> d!74135 e!264213))

(declare-fun res!268617 () Bool)

(assert (=> d!74135 (=> (not res!268617) (not e!264213))))

(declare-fun lt!204802 () ListLongMap!6871)

(declare-fun contains!2496 (ListLongMap!6871 (_ BitVec 64)) Bool)

(assert (=> d!74135 (= res!268617 (contains!2496 lt!204802 (_1!3982 (tuple2!7945 (select (arr!13407 lt!204775) from!863) (get!6607 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!204801 () List!8052)

(assert (=> d!74135 (= lt!204802 (ListLongMap!6872 lt!204801))))

(declare-fun lt!204799 () Unit!13143)

(declare-fun lt!204800 () Unit!13143)

(assert (=> d!74135 (= lt!204799 lt!204800)))

(declare-datatypes ((Option!374 0))(
  ( (Some!373 (v!8341 V!17213)) (None!372) )
))
(declare-fun getValueByKey!368 (List!8052 (_ BitVec 64)) Option!374)

(assert (=> d!74135 (= (getValueByKey!368 lt!204801 (_1!3982 (tuple2!7945 (select (arr!13407 lt!204775) from!863) (get!6607 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!373 (_2!3982 (tuple2!7945 (select (arr!13407 lt!204775) from!863) (get!6607 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!192 (List!8052 (_ BitVec 64) V!17213) Unit!13143)

(assert (=> d!74135 (= lt!204800 (lemmaContainsTupThenGetReturnValue!192 lt!204801 (_1!3982 (tuple2!7945 (select (arr!13407 lt!204775) from!863) (get!6607 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!3982 (tuple2!7945 (select (arr!13407 lt!204775) from!863) (get!6607 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun insertStrictlySorted!194 (List!8052 (_ BitVec 64) V!17213) List!8052)

(assert (=> d!74135 (= lt!204801 (insertStrictlySorted!194 (toList!3451 (getCurrentListMapNoExtraKeys!1628 lt!204775 lt!204772 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557)) (_1!3982 (tuple2!7945 (select (arr!13407 lt!204775) from!863) (get!6607 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!3982 (tuple2!7945 (select (arr!13407 lt!204775) from!863) (get!6607 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74135 (= (+!1519 (getCurrentListMapNoExtraKeys!1628 lt!204775 lt!204772 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7945 (select (arr!13407 lt!204775) from!863) (get!6607 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!204802)))

(declare-fun b!451023 () Bool)

(declare-fun res!268616 () Bool)

(assert (=> b!451023 (=> (not res!268616) (not e!264213))))

(assert (=> b!451023 (= res!268616 (= (getValueByKey!368 (toList!3451 lt!204802) (_1!3982 (tuple2!7945 (select (arr!13407 lt!204775) from!863) (get!6607 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!373 (_2!3982 (tuple2!7945 (select (arr!13407 lt!204775) from!863) (get!6607 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!451024 () Bool)

(declare-fun contains!2497 (List!8052 tuple2!7944) Bool)

(assert (=> b!451024 (= e!264213 (contains!2497 (toList!3451 lt!204802) (tuple2!7945 (select (arr!13407 lt!204775) from!863) (get!6607 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!74135 res!268617) b!451023))

(assert (= (and b!451023 res!268616) b!451024))

(declare-fun m!434823 () Bool)

(assert (=> d!74135 m!434823))

(declare-fun m!434825 () Bool)

(assert (=> d!74135 m!434825))

(declare-fun m!434827 () Bool)

(assert (=> d!74135 m!434827))

(declare-fun m!434829 () Bool)

(assert (=> d!74135 m!434829))

(declare-fun m!434831 () Bool)

(assert (=> b!451023 m!434831))

(declare-fun m!434833 () Bool)

(assert (=> b!451024 m!434833))

(assert (=> b!450946 d!74135))

(declare-fun b!451049 () Bool)

(declare-fun lt!204820 () Unit!13143)

(declare-fun lt!204822 () Unit!13143)

(assert (=> b!451049 (= lt!204820 lt!204822)))

(declare-fun lt!204819 () (_ BitVec 64))

(declare-fun lt!204817 () (_ BitVec 64))

(declare-fun lt!204823 () V!17213)

(declare-fun lt!204821 () ListLongMap!6871)

(assert (=> b!451049 (not (contains!2496 (+!1519 lt!204821 (tuple2!7945 lt!204817 lt!204823)) lt!204819))))

(declare-fun addStillNotContains!147 (ListLongMap!6871 (_ BitVec 64) V!17213 (_ BitVec 64)) Unit!13143)

(assert (=> b!451049 (= lt!204822 (addStillNotContains!147 lt!204821 lt!204817 lt!204823 lt!204819))))

(assert (=> b!451049 (= lt!204819 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!451049 (= lt!204823 (get!6607 (select (arr!13408 lt!204772) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!451049 (= lt!204817 (select (arr!13407 lt!204775) (bvadd #b00000000000000000000000000000001 from!863)))))

(declare-fun call!29828 () ListLongMap!6871)

(assert (=> b!451049 (= lt!204821 call!29828)))

(declare-fun e!264233 () ListLongMap!6871)

(assert (=> b!451049 (= e!264233 (+!1519 call!29828 (tuple2!7945 (select (arr!13407 lt!204775) (bvadd #b00000000000000000000000000000001 from!863)) (get!6607 (select (arr!13408 lt!204772) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!29825 () Bool)

(assert (=> bm!29825 (= call!29828 (getCurrentListMapNoExtraKeys!1628 lt!204775 lt!204772 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!451050 () Bool)

(declare-fun e!264234 () Bool)

(declare-fun e!264229 () Bool)

(assert (=> b!451050 (= e!264234 e!264229)))

(declare-fun c!55958 () Bool)

(declare-fun e!264232 () Bool)

(assert (=> b!451050 (= c!55958 e!264232)))

(declare-fun res!268629 () Bool)

(assert (=> b!451050 (=> (not res!268629) (not e!264232))))

(assert (=> b!451050 (= res!268629 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13759 lt!204775)))))

(declare-fun b!451051 () Bool)

(declare-fun e!264230 () ListLongMap!6871)

(assert (=> b!451051 (= e!264230 (ListLongMap!6872 Nil!8049))))

(declare-fun b!451052 () Bool)

(assert (=> b!451052 (= e!264230 e!264233)))

(declare-fun c!55959 () Bool)

(assert (=> b!451052 (= c!55959 (validKeyInArray!0 (select (arr!13407 lt!204775) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun lt!204818 () ListLongMap!6871)

(declare-fun b!451053 () Bool)

(declare-fun e!264231 () Bool)

(assert (=> b!451053 (= e!264231 (= lt!204818 (getCurrentListMapNoExtraKeys!1628 lt!204775 lt!204772 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!451054 () Bool)

(assert (=> b!451054 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13759 lt!204775)))))

(assert (=> b!451054 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13760 lt!204772)))))

(declare-fun e!264228 () Bool)

(declare-fun apply!312 (ListLongMap!6871 (_ BitVec 64)) V!17213)

(assert (=> b!451054 (= e!264228 (= (apply!312 lt!204818 (select (arr!13407 lt!204775) (bvadd #b00000000000000000000000000000001 from!863))) (get!6607 (select (arr!13408 lt!204772) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!74137 () Bool)

(assert (=> d!74137 e!264234))

(declare-fun res!268628 () Bool)

(assert (=> d!74137 (=> (not res!268628) (not e!264234))))

(assert (=> d!74137 (= res!268628 (not (contains!2496 lt!204818 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74137 (= lt!204818 e!264230)))

(declare-fun c!55960 () Bool)

(assert (=> d!74137 (= c!55960 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!13759 lt!204775)))))

(assert (=> d!74137 (validMask!0 mask!1025)))

(assert (=> d!74137 (= (getCurrentListMapNoExtraKeys!1628 lt!204775 lt!204772 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!204818)))

(declare-fun b!451055 () Bool)

(declare-fun res!268626 () Bool)

(assert (=> b!451055 (=> (not res!268626) (not e!264234))))

(assert (=> b!451055 (= res!268626 (not (contains!2496 lt!204818 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!451056 () Bool)

(assert (=> b!451056 (= e!264229 e!264231)))

(declare-fun c!55961 () Bool)

(assert (=> b!451056 (= c!55961 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13759 lt!204775)))))

(declare-fun b!451057 () Bool)

(assert (=> b!451057 (= e!264229 e!264228)))

(assert (=> b!451057 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13759 lt!204775)))))

(declare-fun res!268627 () Bool)

(assert (=> b!451057 (= res!268627 (contains!2496 lt!204818 (select (arr!13407 lt!204775) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!451057 (=> (not res!268627) (not e!264228))))

(declare-fun b!451058 () Bool)

(assert (=> b!451058 (= e!264232 (validKeyInArray!0 (select (arr!13407 lt!204775) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!451058 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(declare-fun b!451059 () Bool)

(assert (=> b!451059 (= e!264233 call!29828)))

(declare-fun b!451060 () Bool)

(declare-fun isEmpty!563 (ListLongMap!6871) Bool)

(assert (=> b!451060 (= e!264231 (isEmpty!563 lt!204818))))

(assert (= (and d!74137 c!55960) b!451051))

(assert (= (and d!74137 (not c!55960)) b!451052))

(assert (= (and b!451052 c!55959) b!451049))

(assert (= (and b!451052 (not c!55959)) b!451059))

(assert (= (or b!451049 b!451059) bm!29825))

(assert (= (and d!74137 res!268628) b!451055))

(assert (= (and b!451055 res!268626) b!451050))

(assert (= (and b!451050 res!268629) b!451058))

(assert (= (and b!451050 c!55958) b!451057))

(assert (= (and b!451050 (not c!55958)) b!451056))

(assert (= (and b!451057 res!268627) b!451054))

(assert (= (and b!451056 c!55961) b!451053))

(assert (= (and b!451056 (not c!55961)) b!451060))

(declare-fun b_lambda!9515 () Bool)

(assert (=> (not b_lambda!9515) (not b!451049)))

(assert (=> b!451049 t!13824))

(declare-fun b_and!18779 () Bool)

(assert (= b_and!18773 (and (=> t!13824 result!6989) b_and!18779)))

(declare-fun b_lambda!9517 () Bool)

(assert (=> (not b_lambda!9517) (not b!451054)))

(assert (=> b!451054 t!13824))

(declare-fun b_and!18781 () Bool)

(assert (= b_and!18779 (and (=> t!13824 result!6989) b_and!18781)))

(declare-fun m!434835 () Bool)

(assert (=> b!451052 m!434835))

(assert (=> b!451052 m!434835))

(declare-fun m!434837 () Bool)

(assert (=> b!451052 m!434837))

(declare-fun m!434839 () Bool)

(assert (=> bm!29825 m!434839))

(assert (=> b!451058 m!434835))

(assert (=> b!451058 m!434835))

(assert (=> b!451058 m!434837))

(declare-fun m!434841 () Bool)

(assert (=> b!451055 m!434841))

(declare-fun m!434843 () Bool)

(assert (=> b!451060 m!434843))

(assert (=> b!451057 m!434835))

(assert (=> b!451057 m!434835))

(declare-fun m!434845 () Bool)

(assert (=> b!451057 m!434845))

(assert (=> b!451049 m!434741))

(declare-fun m!434847 () Bool)

(assert (=> b!451049 m!434847))

(assert (=> b!451049 m!434741))

(declare-fun m!434849 () Bool)

(assert (=> b!451049 m!434849))

(assert (=> b!451049 m!434835))

(declare-fun m!434851 () Bool)

(assert (=> b!451049 m!434851))

(assert (=> b!451049 m!434847))

(declare-fun m!434853 () Bool)

(assert (=> b!451049 m!434853))

(declare-fun m!434855 () Bool)

(assert (=> b!451049 m!434855))

(assert (=> b!451049 m!434853))

(declare-fun m!434857 () Bool)

(assert (=> b!451049 m!434857))

(assert (=> b!451054 m!434741))

(assert (=> b!451054 m!434847))

(assert (=> b!451054 m!434741))

(assert (=> b!451054 m!434849))

(assert (=> b!451054 m!434835))

(assert (=> b!451054 m!434847))

(assert (=> b!451054 m!434835))

(declare-fun m!434859 () Bool)

(assert (=> b!451054 m!434859))

(assert (=> b!451053 m!434839))

(declare-fun m!434861 () Bool)

(assert (=> d!74137 m!434861))

(assert (=> d!74137 m!434717))

(assert (=> b!450946 d!74137))

(declare-fun d!74139 () Bool)

(declare-fun c!55964 () Bool)

(assert (=> d!74139 (= c!55964 ((_ is ValueCellFull!5697) (select (arr!13408 lt!204772) from!863)))))

(declare-fun e!264237 () V!17213)

(assert (=> d!74139 (= (get!6607 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)) e!264237)))

(declare-fun b!451065 () Bool)

(declare-fun get!6609 (ValueCell!5697 V!17213) V!17213)

(assert (=> b!451065 (= e!264237 (get!6609 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!451066 () Bool)

(declare-fun get!6610 (ValueCell!5697 V!17213) V!17213)

(assert (=> b!451066 (= e!264237 (get!6610 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74139 c!55964) b!451065))

(assert (= (and d!74139 (not c!55964)) b!451066))

(assert (=> b!451065 m!434739))

(assert (=> b!451065 m!434741))

(declare-fun m!434863 () Bool)

(assert (=> b!451065 m!434863))

(assert (=> b!451066 m!434739))

(assert (=> b!451066 m!434741))

(declare-fun m!434865 () Bool)

(assert (=> b!451066 m!434865))

(assert (=> b!450946 d!74139))

(declare-fun b!451067 () Bool)

(declare-fun lt!204827 () Unit!13143)

(declare-fun lt!204829 () Unit!13143)

(assert (=> b!451067 (= lt!204827 lt!204829)))

(declare-fun lt!204824 () (_ BitVec 64))

(declare-fun lt!204826 () (_ BitVec 64))

(declare-fun lt!204828 () ListLongMap!6871)

(declare-fun lt!204830 () V!17213)

(assert (=> b!451067 (not (contains!2496 (+!1519 lt!204828 (tuple2!7945 lt!204824 lt!204830)) lt!204826))))

(assert (=> b!451067 (= lt!204829 (addStillNotContains!147 lt!204828 lt!204824 lt!204830 lt!204826))))

(assert (=> b!451067 (= lt!204826 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!451067 (= lt!204830 (get!6607 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!451067 (= lt!204824 (select (arr!13407 lt!204775) from!863))))

(declare-fun call!29829 () ListLongMap!6871)

(assert (=> b!451067 (= lt!204828 call!29829)))

(declare-fun e!264243 () ListLongMap!6871)

(assert (=> b!451067 (= e!264243 (+!1519 call!29829 (tuple2!7945 (select (arr!13407 lt!204775) from!863) (get!6607 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!29826 () Bool)

(assert (=> bm!29826 (= call!29829 (getCurrentListMapNoExtraKeys!1628 lt!204775 lt!204772 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!451068 () Bool)

(declare-fun e!264244 () Bool)

(declare-fun e!264239 () Bool)

(assert (=> b!451068 (= e!264244 e!264239)))

(declare-fun c!55965 () Bool)

(declare-fun e!264242 () Bool)

(assert (=> b!451068 (= c!55965 e!264242)))

(declare-fun res!268633 () Bool)

(assert (=> b!451068 (=> (not res!268633) (not e!264242))))

(assert (=> b!451068 (= res!268633 (bvslt from!863 (size!13759 lt!204775)))))

(declare-fun b!451069 () Bool)

(declare-fun e!264240 () ListLongMap!6871)

(assert (=> b!451069 (= e!264240 (ListLongMap!6872 Nil!8049))))

(declare-fun b!451070 () Bool)

(assert (=> b!451070 (= e!264240 e!264243)))

(declare-fun c!55966 () Bool)

(assert (=> b!451070 (= c!55966 (validKeyInArray!0 (select (arr!13407 lt!204775) from!863)))))

(declare-fun e!264241 () Bool)

(declare-fun b!451071 () Bool)

(declare-fun lt!204825 () ListLongMap!6871)

(assert (=> b!451071 (= e!264241 (= lt!204825 (getCurrentListMapNoExtraKeys!1628 lt!204775 lt!204772 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!451072 () Bool)

(assert (=> b!451072 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13759 lt!204775)))))

(assert (=> b!451072 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13760 lt!204772)))))

(declare-fun e!264238 () Bool)

(assert (=> b!451072 (= e!264238 (= (apply!312 lt!204825 (select (arr!13407 lt!204775) from!863)) (get!6607 (select (arr!13408 lt!204772) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!74141 () Bool)

(assert (=> d!74141 e!264244))

(declare-fun res!268632 () Bool)

(assert (=> d!74141 (=> (not res!268632) (not e!264244))))

(assert (=> d!74141 (= res!268632 (not (contains!2496 lt!204825 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74141 (= lt!204825 e!264240)))

(declare-fun c!55967 () Bool)

(assert (=> d!74141 (= c!55967 (bvsge from!863 (size!13759 lt!204775)))))

(assert (=> d!74141 (validMask!0 mask!1025)))

(assert (=> d!74141 (= (getCurrentListMapNoExtraKeys!1628 lt!204775 lt!204772 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!204825)))

(declare-fun b!451073 () Bool)

(declare-fun res!268630 () Bool)

(assert (=> b!451073 (=> (not res!268630) (not e!264244))))

(assert (=> b!451073 (= res!268630 (not (contains!2496 lt!204825 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!451074 () Bool)

(assert (=> b!451074 (= e!264239 e!264241)))

(declare-fun c!55968 () Bool)

(assert (=> b!451074 (= c!55968 (bvslt from!863 (size!13759 lt!204775)))))

(declare-fun b!451075 () Bool)

(assert (=> b!451075 (= e!264239 e!264238)))

(assert (=> b!451075 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13759 lt!204775)))))

(declare-fun res!268631 () Bool)

(assert (=> b!451075 (= res!268631 (contains!2496 lt!204825 (select (arr!13407 lt!204775) from!863)))))

(assert (=> b!451075 (=> (not res!268631) (not e!264238))))

(declare-fun b!451076 () Bool)

(assert (=> b!451076 (= e!264242 (validKeyInArray!0 (select (arr!13407 lt!204775) from!863)))))

(assert (=> b!451076 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!451077 () Bool)

(assert (=> b!451077 (= e!264243 call!29829)))

(declare-fun b!451078 () Bool)

(assert (=> b!451078 (= e!264241 (isEmpty!563 lt!204825))))

(assert (= (and d!74141 c!55967) b!451069))

(assert (= (and d!74141 (not c!55967)) b!451070))

(assert (= (and b!451070 c!55966) b!451067))

(assert (= (and b!451070 (not c!55966)) b!451077))

(assert (= (or b!451067 b!451077) bm!29826))

(assert (= (and d!74141 res!268632) b!451073))

(assert (= (and b!451073 res!268630) b!451068))

(assert (= (and b!451068 res!268633) b!451076))

(assert (= (and b!451068 c!55965) b!451075))

(assert (= (and b!451068 (not c!55965)) b!451074))

(assert (= (and b!451075 res!268631) b!451072))

(assert (= (and b!451074 c!55968) b!451071))

(assert (= (and b!451074 (not c!55968)) b!451078))

(declare-fun b_lambda!9519 () Bool)

(assert (=> (not b_lambda!9519) (not b!451067)))

(assert (=> b!451067 t!13824))

(declare-fun b_and!18783 () Bool)

(assert (= b_and!18781 (and (=> t!13824 result!6989) b_and!18783)))

(declare-fun b_lambda!9521 () Bool)

(assert (=> (not b_lambda!9521) (not b!451072)))

(assert (=> b!451072 t!13824))

(declare-fun b_and!18785 () Bool)

(assert (= b_and!18783 (and (=> t!13824 result!6989) b_and!18785)))

(assert (=> b!451070 m!434745))

(assert (=> b!451070 m!434745))

(declare-fun m!434867 () Bool)

(assert (=> b!451070 m!434867))

(declare-fun m!434869 () Bool)

(assert (=> bm!29826 m!434869))

(assert (=> b!451076 m!434745))

(assert (=> b!451076 m!434745))

(assert (=> b!451076 m!434867))

(declare-fun m!434871 () Bool)

(assert (=> b!451073 m!434871))

(declare-fun m!434873 () Bool)

(assert (=> b!451078 m!434873))

(assert (=> b!451075 m!434745))

(assert (=> b!451075 m!434745))

(declare-fun m!434875 () Bool)

(assert (=> b!451075 m!434875))

(assert (=> b!451067 m!434741))

(assert (=> b!451067 m!434739))

(assert (=> b!451067 m!434741))

(assert (=> b!451067 m!434743))

(assert (=> b!451067 m!434745))

(declare-fun m!434877 () Bool)

(assert (=> b!451067 m!434877))

(assert (=> b!451067 m!434739))

(declare-fun m!434879 () Bool)

(assert (=> b!451067 m!434879))

(declare-fun m!434881 () Bool)

(assert (=> b!451067 m!434881))

(assert (=> b!451067 m!434879))

(declare-fun m!434883 () Bool)

(assert (=> b!451067 m!434883))

(assert (=> b!451072 m!434741))

(assert (=> b!451072 m!434739))

(assert (=> b!451072 m!434741))

(assert (=> b!451072 m!434743))

(assert (=> b!451072 m!434745))

(assert (=> b!451072 m!434739))

(assert (=> b!451072 m!434745))

(declare-fun m!434885 () Bool)

(assert (=> b!451072 m!434885))

(assert (=> b!451071 m!434869))

(declare-fun m!434887 () Bool)

(assert (=> d!74141 m!434887))

(assert (=> d!74141 m!434717))

(assert (=> b!450949 d!74141))

(declare-fun b!451079 () Bool)

(declare-fun lt!204834 () Unit!13143)

(declare-fun lt!204836 () Unit!13143)

(assert (=> b!451079 (= lt!204834 lt!204836)))

(declare-fun lt!204831 () (_ BitVec 64))

(declare-fun lt!204837 () V!17213)

(declare-fun lt!204833 () (_ BitVec 64))

(declare-fun lt!204835 () ListLongMap!6871)

(assert (=> b!451079 (not (contains!2496 (+!1519 lt!204835 (tuple2!7945 lt!204831 lt!204837)) lt!204833))))

(assert (=> b!451079 (= lt!204836 (addStillNotContains!147 lt!204835 lt!204831 lt!204837 lt!204833))))

(assert (=> b!451079 (= lt!204833 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!451079 (= lt!204837 (get!6607 (select (arr!13408 _values!549) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!451079 (= lt!204831 (select (arr!13407 _keys!709) from!863))))

(declare-fun call!29830 () ListLongMap!6871)

(assert (=> b!451079 (= lt!204835 call!29830)))

(declare-fun e!264250 () ListLongMap!6871)

(assert (=> b!451079 (= e!264250 (+!1519 call!29830 (tuple2!7945 (select (arr!13407 _keys!709) from!863) (get!6607 (select (arr!13408 _values!549) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!29827 () Bool)

(assert (=> bm!29827 (= call!29830 (getCurrentListMapNoExtraKeys!1628 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!451080 () Bool)

(declare-fun e!264251 () Bool)

(declare-fun e!264246 () Bool)

(assert (=> b!451080 (= e!264251 e!264246)))

(declare-fun c!55969 () Bool)

(declare-fun e!264249 () Bool)

(assert (=> b!451080 (= c!55969 e!264249)))

(declare-fun res!268637 () Bool)

(assert (=> b!451080 (=> (not res!268637) (not e!264249))))

(assert (=> b!451080 (= res!268637 (bvslt from!863 (size!13759 _keys!709)))))

(declare-fun b!451081 () Bool)

(declare-fun e!264247 () ListLongMap!6871)

(assert (=> b!451081 (= e!264247 (ListLongMap!6872 Nil!8049))))

(declare-fun b!451082 () Bool)

(assert (=> b!451082 (= e!264247 e!264250)))

(declare-fun c!55970 () Bool)

(assert (=> b!451082 (= c!55970 (validKeyInArray!0 (select (arr!13407 _keys!709) from!863)))))

(declare-fun lt!204832 () ListLongMap!6871)

(declare-fun b!451083 () Bool)

(declare-fun e!264248 () Bool)

(assert (=> b!451083 (= e!264248 (= lt!204832 (getCurrentListMapNoExtraKeys!1628 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!451084 () Bool)

(assert (=> b!451084 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13759 _keys!709)))))

(assert (=> b!451084 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13760 _values!549)))))

(declare-fun e!264245 () Bool)

(assert (=> b!451084 (= e!264245 (= (apply!312 lt!204832 (select (arr!13407 _keys!709) from!863)) (get!6607 (select (arr!13408 _values!549) from!863) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!74143 () Bool)

(assert (=> d!74143 e!264251))

(declare-fun res!268636 () Bool)

(assert (=> d!74143 (=> (not res!268636) (not e!264251))))

(assert (=> d!74143 (= res!268636 (not (contains!2496 lt!204832 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74143 (= lt!204832 e!264247)))

(declare-fun c!55971 () Bool)

(assert (=> d!74143 (= c!55971 (bvsge from!863 (size!13759 _keys!709)))))

(assert (=> d!74143 (validMask!0 mask!1025)))

(assert (=> d!74143 (= (getCurrentListMapNoExtraKeys!1628 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!204832)))

(declare-fun b!451085 () Bool)

(declare-fun res!268634 () Bool)

(assert (=> b!451085 (=> (not res!268634) (not e!264251))))

(assert (=> b!451085 (= res!268634 (not (contains!2496 lt!204832 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!451086 () Bool)

(assert (=> b!451086 (= e!264246 e!264248)))

(declare-fun c!55972 () Bool)

(assert (=> b!451086 (= c!55972 (bvslt from!863 (size!13759 _keys!709)))))

(declare-fun b!451087 () Bool)

(assert (=> b!451087 (= e!264246 e!264245)))

(assert (=> b!451087 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13759 _keys!709)))))

(declare-fun res!268635 () Bool)

(assert (=> b!451087 (= res!268635 (contains!2496 lt!204832 (select (arr!13407 _keys!709) from!863)))))

(assert (=> b!451087 (=> (not res!268635) (not e!264245))))

(declare-fun b!451088 () Bool)

(assert (=> b!451088 (= e!264249 (validKeyInArray!0 (select (arr!13407 _keys!709) from!863)))))

(assert (=> b!451088 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!451089 () Bool)

(assert (=> b!451089 (= e!264250 call!29830)))

(declare-fun b!451090 () Bool)

(assert (=> b!451090 (= e!264248 (isEmpty!563 lt!204832))))

(assert (= (and d!74143 c!55971) b!451081))

(assert (= (and d!74143 (not c!55971)) b!451082))

(assert (= (and b!451082 c!55970) b!451079))

(assert (= (and b!451082 (not c!55970)) b!451089))

(assert (= (or b!451079 b!451089) bm!29827))

(assert (= (and d!74143 res!268636) b!451085))

(assert (= (and b!451085 res!268634) b!451080))

(assert (= (and b!451080 res!268637) b!451088))

(assert (= (and b!451080 c!55969) b!451087))

(assert (= (and b!451080 (not c!55969)) b!451086))

(assert (= (and b!451087 res!268635) b!451084))

(assert (= (and b!451086 c!55972) b!451083))

(assert (= (and b!451086 (not c!55972)) b!451090))

(declare-fun b_lambda!9523 () Bool)

(assert (=> (not b_lambda!9523) (not b!451079)))

(assert (=> b!451079 t!13824))

(declare-fun b_and!18787 () Bool)

(assert (= b_and!18785 (and (=> t!13824 result!6989) b_and!18787)))

(declare-fun b_lambda!9525 () Bool)

(assert (=> (not b_lambda!9525) (not b!451084)))

(assert (=> b!451084 t!13824))

(declare-fun b_and!18789 () Bool)

(assert (= b_and!18787 (and (=> t!13824 result!6989) b_and!18789)))

(assert (=> b!451082 m!434719))

(assert (=> b!451082 m!434719))

(assert (=> b!451082 m!434721))

(declare-fun m!434889 () Bool)

(assert (=> bm!29827 m!434889))

(assert (=> b!451088 m!434719))

(assert (=> b!451088 m!434719))

(assert (=> b!451088 m!434721))

(declare-fun m!434891 () Bool)

(assert (=> b!451085 m!434891))

(declare-fun m!434893 () Bool)

(assert (=> b!451090 m!434893))

(assert (=> b!451087 m!434719))

(assert (=> b!451087 m!434719))

(declare-fun m!434895 () Bool)

(assert (=> b!451087 m!434895))

(assert (=> b!451079 m!434741))

(declare-fun m!434897 () Bool)

(assert (=> b!451079 m!434897))

(assert (=> b!451079 m!434741))

(declare-fun m!434899 () Bool)

(assert (=> b!451079 m!434899))

(assert (=> b!451079 m!434719))

(declare-fun m!434901 () Bool)

(assert (=> b!451079 m!434901))

(assert (=> b!451079 m!434897))

(declare-fun m!434903 () Bool)

(assert (=> b!451079 m!434903))

(declare-fun m!434905 () Bool)

(assert (=> b!451079 m!434905))

(assert (=> b!451079 m!434903))

(declare-fun m!434907 () Bool)

(assert (=> b!451079 m!434907))

(assert (=> b!451084 m!434741))

(assert (=> b!451084 m!434897))

(assert (=> b!451084 m!434741))

(assert (=> b!451084 m!434899))

(assert (=> b!451084 m!434719))

(assert (=> b!451084 m!434897))

(assert (=> b!451084 m!434719))

(declare-fun m!434909 () Bool)

(assert (=> b!451084 m!434909))

(assert (=> b!451083 m!434889))

(declare-fun m!434911 () Bool)

(assert (=> d!74143 m!434911))

(assert (=> d!74143 m!434717))

(assert (=> b!450949 d!74143))

(declare-fun d!74145 () Bool)

(declare-fun res!268642 () Bool)

(declare-fun e!264256 () Bool)

(assert (=> d!74145 (=> res!268642 e!264256)))

(assert (=> d!74145 (= res!268642 (= (select (arr!13407 _keys!709) #b00000000000000000000000000000000) k0!794))))

(assert (=> d!74145 (= (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000) e!264256)))

(declare-fun b!451095 () Bool)

(declare-fun e!264257 () Bool)

(assert (=> b!451095 (= e!264256 e!264257)))

(declare-fun res!268643 () Bool)

(assert (=> b!451095 (=> (not res!268643) (not e!264257))))

(assert (=> b!451095 (= res!268643 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!13759 _keys!709)))))

(declare-fun b!451096 () Bool)

(assert (=> b!451096 (= e!264257 (arrayContainsKey!0 _keys!709 k0!794 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!74145 (not res!268642)) b!451095))

(assert (= (and b!451095 res!268643) b!451096))

(declare-fun m!434913 () Bool)

(assert (=> d!74145 m!434913))

(declare-fun m!434915 () Bool)

(assert (=> b!451096 m!434915))

(assert (=> b!450940 d!74145))

(declare-fun b!451105 () Bool)

(declare-fun e!264265 () Bool)

(declare-fun e!264264 () Bool)

(assert (=> b!451105 (= e!264265 e!264264)))

(declare-fun c!55975 () Bool)

(assert (=> b!451105 (= c!55975 (validKeyInArray!0 (select (arr!13407 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun bm!29830 () Bool)

(declare-fun call!29833 () Bool)

(assert (=> bm!29830 (= call!29833 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(declare-fun d!74147 () Bool)

(declare-fun res!268649 () Bool)

(assert (=> d!74147 (=> res!268649 e!264265)))

(assert (=> d!74147 (= res!268649 (bvsge #b00000000000000000000000000000000 (size!13759 _keys!709)))))

(assert (=> d!74147 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!264265)))

(declare-fun b!451106 () Bool)

(declare-fun e!264266 () Bool)

(assert (=> b!451106 (= e!264264 e!264266)))

(declare-fun lt!204845 () (_ BitVec 64))

(assert (=> b!451106 (= lt!204845 (select (arr!13407 _keys!709) #b00000000000000000000000000000000))))

(declare-fun lt!204844 () Unit!13143)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!27929 (_ BitVec 64) (_ BitVec 32)) Unit!13143)

(assert (=> b!451106 (= lt!204844 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!204845 #b00000000000000000000000000000000))))

(assert (=> b!451106 (arrayContainsKey!0 _keys!709 lt!204845 #b00000000000000000000000000000000)))

(declare-fun lt!204846 () Unit!13143)

(assert (=> b!451106 (= lt!204846 lt!204844)))

(declare-fun res!268648 () Bool)

(declare-datatypes ((SeekEntryResult!3519 0))(
  ( (MissingZero!3519 (index!16255 (_ BitVec 32))) (Found!3519 (index!16256 (_ BitVec 32))) (Intermediate!3519 (undefined!4331 Bool) (index!16257 (_ BitVec 32)) (x!42292 (_ BitVec 32))) (Undefined!3519) (MissingVacant!3519 (index!16258 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!27929 (_ BitVec 32)) SeekEntryResult!3519)

(assert (=> b!451106 (= res!268648 (= (seekEntryOrOpen!0 (select (arr!13407 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3519 #b00000000000000000000000000000000)))))

(assert (=> b!451106 (=> (not res!268648) (not e!264266))))

(declare-fun b!451107 () Bool)

(assert (=> b!451107 (= e!264266 call!29833)))

(declare-fun b!451108 () Bool)

(assert (=> b!451108 (= e!264264 call!29833)))

(assert (= (and d!74147 (not res!268649)) b!451105))

(assert (= (and b!451105 c!55975) b!451106))

(assert (= (and b!451105 (not c!55975)) b!451108))

(assert (= (and b!451106 res!268648) b!451107))

(assert (= (or b!451107 b!451108) bm!29830))

(assert (=> b!451105 m!434913))

(assert (=> b!451105 m!434913))

(declare-fun m!434917 () Bool)

(assert (=> b!451105 m!434917))

(declare-fun m!434919 () Bool)

(assert (=> bm!29830 m!434919))

(assert (=> b!451106 m!434913))

(declare-fun m!434921 () Bool)

(assert (=> b!451106 m!434921))

(declare-fun m!434923 () Bool)

(assert (=> b!451106 m!434923))

(assert (=> b!451106 m!434913))

(declare-fun m!434925 () Bool)

(assert (=> b!451106 m!434925))

(assert (=> b!450957 d!74147))

(declare-fun b!451109 () Bool)

(declare-fun lt!204850 () Unit!13143)

(declare-fun lt!204852 () Unit!13143)

(assert (=> b!451109 (= lt!204850 lt!204852)))

(declare-fun lt!204847 () (_ BitVec 64))

(declare-fun lt!204851 () ListLongMap!6871)

(declare-fun lt!204853 () V!17213)

(declare-fun lt!204849 () (_ BitVec 64))

(assert (=> b!451109 (not (contains!2496 (+!1519 lt!204851 (tuple2!7945 lt!204847 lt!204853)) lt!204849))))

(assert (=> b!451109 (= lt!204852 (addStillNotContains!147 lt!204851 lt!204847 lt!204853 lt!204849))))

(assert (=> b!451109 (= lt!204849 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!451109 (= lt!204853 (get!6607 (select (arr!13408 (ite c!55946 lt!204772 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!451109 (= lt!204847 (select (arr!13407 (ite c!55946 lt!204775 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)))))

(declare-fun call!29834 () ListLongMap!6871)

(assert (=> b!451109 (= lt!204851 call!29834)))

(declare-fun e!264272 () ListLongMap!6871)

(assert (=> b!451109 (= e!264272 (+!1519 call!29834 (tuple2!7945 (select (arr!13407 (ite c!55946 lt!204775 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6607 (select (arr!13408 (ite c!55946 lt!204772 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!29831 () Bool)

(assert (=> bm!29831 (= call!29834 (getCurrentListMapNoExtraKeys!1628 (ite c!55946 lt!204775 _keys!709) (ite c!55946 lt!204772 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!451110 () Bool)

(declare-fun e!264273 () Bool)

(declare-fun e!264268 () Bool)

(assert (=> b!451110 (= e!264273 e!264268)))

(declare-fun c!55976 () Bool)

(declare-fun e!264271 () Bool)

(assert (=> b!451110 (= c!55976 e!264271)))

(declare-fun res!268653 () Bool)

(assert (=> b!451110 (=> (not res!268653) (not e!264271))))

(assert (=> b!451110 (= res!268653 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13759 (ite c!55946 lt!204775 _keys!709))))))

(declare-fun b!451111 () Bool)

(declare-fun e!264269 () ListLongMap!6871)

(assert (=> b!451111 (= e!264269 (ListLongMap!6872 Nil!8049))))

(declare-fun b!451112 () Bool)

(assert (=> b!451112 (= e!264269 e!264272)))

(declare-fun c!55977 () Bool)

(assert (=> b!451112 (= c!55977 (validKeyInArray!0 (select (arr!13407 (ite c!55946 lt!204775 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun lt!204848 () ListLongMap!6871)

(declare-fun b!451113 () Bool)

(declare-fun e!264270 () Bool)

(assert (=> b!451113 (= e!264270 (= lt!204848 (getCurrentListMapNoExtraKeys!1628 (ite c!55946 lt!204775 _keys!709) (ite c!55946 lt!204772 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!451114 () Bool)

(assert (=> b!451114 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13759 (ite c!55946 lt!204775 _keys!709))))))

(assert (=> b!451114 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13760 (ite c!55946 lt!204772 _values!549))))))

(declare-fun e!264267 () Bool)

(assert (=> b!451114 (= e!264267 (= (apply!312 lt!204848 (select (arr!13407 (ite c!55946 lt!204775 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))) (get!6607 (select (arr!13408 (ite c!55946 lt!204772 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!74149 () Bool)

(assert (=> d!74149 e!264273))

(declare-fun res!268652 () Bool)

(assert (=> d!74149 (=> (not res!268652) (not e!264273))))

(assert (=> d!74149 (= res!268652 (not (contains!2496 lt!204848 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74149 (= lt!204848 e!264269)))

(declare-fun c!55978 () Bool)

(assert (=> d!74149 (= c!55978 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!13759 (ite c!55946 lt!204775 _keys!709))))))

(assert (=> d!74149 (validMask!0 mask!1025)))

(assert (=> d!74149 (= (getCurrentListMapNoExtraKeys!1628 (ite c!55946 lt!204775 _keys!709) (ite c!55946 lt!204772 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!204848)))

(declare-fun b!451115 () Bool)

(declare-fun res!268650 () Bool)

(assert (=> b!451115 (=> (not res!268650) (not e!264273))))

(assert (=> b!451115 (= res!268650 (not (contains!2496 lt!204848 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!451116 () Bool)

(assert (=> b!451116 (= e!264268 e!264270)))

(declare-fun c!55979 () Bool)

(assert (=> b!451116 (= c!55979 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13759 (ite c!55946 lt!204775 _keys!709))))))

(declare-fun b!451117 () Bool)

(assert (=> b!451117 (= e!264268 e!264267)))

(assert (=> b!451117 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13759 (ite c!55946 lt!204775 _keys!709))))))

(declare-fun res!268651 () Bool)

(assert (=> b!451117 (= res!268651 (contains!2496 lt!204848 (select (arr!13407 (ite c!55946 lt!204775 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!451117 (=> (not res!268651) (not e!264267))))

(declare-fun b!451118 () Bool)

(assert (=> b!451118 (= e!264271 (validKeyInArray!0 (select (arr!13407 (ite c!55946 lt!204775 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!451118 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(declare-fun b!451119 () Bool)

(assert (=> b!451119 (= e!264272 call!29834)))

(declare-fun b!451120 () Bool)

(assert (=> b!451120 (= e!264270 (isEmpty!563 lt!204848))))

(assert (= (and d!74149 c!55978) b!451111))

(assert (= (and d!74149 (not c!55978)) b!451112))

(assert (= (and b!451112 c!55977) b!451109))

(assert (= (and b!451112 (not c!55977)) b!451119))

(assert (= (or b!451109 b!451119) bm!29831))

(assert (= (and d!74149 res!268652) b!451115))

(assert (= (and b!451115 res!268650) b!451110))

(assert (= (and b!451110 res!268653) b!451118))

(assert (= (and b!451110 c!55976) b!451117))

(assert (= (and b!451110 (not c!55976)) b!451116))

(assert (= (and b!451117 res!268651) b!451114))

(assert (= (and b!451116 c!55979) b!451113))

(assert (= (and b!451116 (not c!55979)) b!451120))

(declare-fun b_lambda!9527 () Bool)

(assert (=> (not b_lambda!9527) (not b!451109)))

(assert (=> b!451109 t!13824))

(declare-fun b_and!18791 () Bool)

(assert (= b_and!18789 (and (=> t!13824 result!6989) b_and!18791)))

(declare-fun b_lambda!9529 () Bool)

(assert (=> (not b_lambda!9529) (not b!451114)))

(assert (=> b!451114 t!13824))

(declare-fun b_and!18793 () Bool)

(assert (= b_and!18791 (and (=> t!13824 result!6989) b_and!18793)))

(declare-fun m!434927 () Bool)

(assert (=> b!451112 m!434927))

(assert (=> b!451112 m!434927))

(declare-fun m!434929 () Bool)

(assert (=> b!451112 m!434929))

(declare-fun m!434931 () Bool)

(assert (=> bm!29831 m!434931))

(assert (=> b!451118 m!434927))

(assert (=> b!451118 m!434927))

(assert (=> b!451118 m!434929))

(declare-fun m!434933 () Bool)

(assert (=> b!451115 m!434933))

(declare-fun m!434935 () Bool)

(assert (=> b!451120 m!434935))

(assert (=> b!451117 m!434927))

(assert (=> b!451117 m!434927))

(declare-fun m!434937 () Bool)

(assert (=> b!451117 m!434937))

(assert (=> b!451109 m!434741))

(declare-fun m!434939 () Bool)

(assert (=> b!451109 m!434939))

(assert (=> b!451109 m!434741))

(declare-fun m!434941 () Bool)

(assert (=> b!451109 m!434941))

(assert (=> b!451109 m!434927))

(declare-fun m!434943 () Bool)

(assert (=> b!451109 m!434943))

(assert (=> b!451109 m!434939))

(declare-fun m!434945 () Bool)

(assert (=> b!451109 m!434945))

(declare-fun m!434947 () Bool)

(assert (=> b!451109 m!434947))

(assert (=> b!451109 m!434945))

(declare-fun m!434949 () Bool)

(assert (=> b!451109 m!434949))

(assert (=> b!451114 m!434741))

(assert (=> b!451114 m!434939))

(assert (=> b!451114 m!434741))

(assert (=> b!451114 m!434941))

(assert (=> b!451114 m!434927))

(assert (=> b!451114 m!434939))

(assert (=> b!451114 m!434927))

(declare-fun m!434951 () Bool)

(assert (=> b!451114 m!434951))

(assert (=> b!451113 m!434931))

(declare-fun m!434953 () Bool)

(assert (=> d!74149 m!434953))

(assert (=> d!74149 m!434717))

(assert (=> bm!29816 d!74149))

(declare-fun d!74151 () Bool)

(declare-fun res!268661 () Bool)

(declare-fun e!264285 () Bool)

(assert (=> d!74151 (=> res!268661 e!264285)))

(assert (=> d!74151 (= res!268661 (bvsge #b00000000000000000000000000000000 (size!13759 lt!204775)))))

(assert (=> d!74151 (= (arrayNoDuplicates!0 lt!204775 #b00000000000000000000000000000000 Nil!8048) e!264285)))

(declare-fun b!451131 () Bool)

(declare-fun e!264283 () Bool)

(declare-fun e!264284 () Bool)

(assert (=> b!451131 (= e!264283 e!264284)))

(declare-fun c!55982 () Bool)

(assert (=> b!451131 (= c!55982 (validKeyInArray!0 (select (arr!13407 lt!204775) #b00000000000000000000000000000000)))))

(declare-fun bm!29834 () Bool)

(declare-fun call!29837 () Bool)

(assert (=> bm!29834 (= call!29837 (arrayNoDuplicates!0 lt!204775 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!55982 (Cons!8047 (select (arr!13407 lt!204775) #b00000000000000000000000000000000) Nil!8048) Nil!8048)))))

(declare-fun b!451132 () Bool)

(declare-fun e!264282 () Bool)

(declare-fun contains!2498 (List!8051 (_ BitVec 64)) Bool)

(assert (=> b!451132 (= e!264282 (contains!2498 Nil!8048 (select (arr!13407 lt!204775) #b00000000000000000000000000000000)))))

(declare-fun b!451133 () Bool)

(assert (=> b!451133 (= e!264284 call!29837)))

(declare-fun b!451134 () Bool)

(assert (=> b!451134 (= e!264285 e!264283)))

(declare-fun res!268662 () Bool)

(assert (=> b!451134 (=> (not res!268662) (not e!264283))))

(assert (=> b!451134 (= res!268662 (not e!264282))))

(declare-fun res!268660 () Bool)

(assert (=> b!451134 (=> (not res!268660) (not e!264282))))

(assert (=> b!451134 (= res!268660 (validKeyInArray!0 (select (arr!13407 lt!204775) #b00000000000000000000000000000000)))))

(declare-fun b!451135 () Bool)

(assert (=> b!451135 (= e!264284 call!29837)))

(assert (= (and d!74151 (not res!268661)) b!451134))

(assert (= (and b!451134 res!268660) b!451132))

(assert (= (and b!451134 res!268662) b!451131))

(assert (= (and b!451131 c!55982) b!451133))

(assert (= (and b!451131 (not c!55982)) b!451135))

(assert (= (or b!451133 b!451135) bm!29834))

(declare-fun m!434955 () Bool)

(assert (=> b!451131 m!434955))

(assert (=> b!451131 m!434955))

(declare-fun m!434957 () Bool)

(assert (=> b!451131 m!434957))

(assert (=> bm!29834 m!434955))

(declare-fun m!434959 () Bool)

(assert (=> bm!29834 m!434959))

(assert (=> b!451132 m!434955))

(assert (=> b!451132 m!434955))

(declare-fun m!434961 () Bool)

(assert (=> b!451132 m!434961))

(assert (=> b!451134 m!434955))

(assert (=> b!451134 m!434955))

(assert (=> b!451134 m!434957))

(assert (=> b!450939 d!74151))

(declare-fun d!74153 () Bool)

(assert (=> d!74153 (= (validKeyInArray!0 k0!794) (and (not (= k0!794 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!794 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!450956 d!74153))

(declare-fun d!74155 () Bool)

(declare-fun res!268664 () Bool)

(declare-fun e!264289 () Bool)

(assert (=> d!74155 (=> res!268664 e!264289)))

(assert (=> d!74155 (= res!268664 (bvsge #b00000000000000000000000000000000 (size!13759 _keys!709)))))

(assert (=> d!74155 (= (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8048) e!264289)))

(declare-fun b!451136 () Bool)

(declare-fun e!264287 () Bool)

(declare-fun e!264288 () Bool)

(assert (=> b!451136 (= e!264287 e!264288)))

(declare-fun c!55983 () Bool)

(assert (=> b!451136 (= c!55983 (validKeyInArray!0 (select (arr!13407 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun bm!29835 () Bool)

(declare-fun call!29838 () Bool)

(assert (=> bm!29835 (= call!29838 (arrayNoDuplicates!0 _keys!709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!55983 (Cons!8047 (select (arr!13407 _keys!709) #b00000000000000000000000000000000) Nil!8048) Nil!8048)))))

(declare-fun b!451137 () Bool)

(declare-fun e!264286 () Bool)

(assert (=> b!451137 (= e!264286 (contains!2498 Nil!8048 (select (arr!13407 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!451138 () Bool)

(assert (=> b!451138 (= e!264288 call!29838)))

(declare-fun b!451139 () Bool)

(assert (=> b!451139 (= e!264289 e!264287)))

(declare-fun res!268665 () Bool)

(assert (=> b!451139 (=> (not res!268665) (not e!264287))))

(assert (=> b!451139 (= res!268665 (not e!264286))))

(declare-fun res!268663 () Bool)

(assert (=> b!451139 (=> (not res!268663) (not e!264286))))

(assert (=> b!451139 (= res!268663 (validKeyInArray!0 (select (arr!13407 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!451140 () Bool)

(assert (=> b!451140 (= e!264288 call!29838)))

(assert (= (and d!74155 (not res!268664)) b!451139))

(assert (= (and b!451139 res!268663) b!451137))

(assert (= (and b!451139 res!268665) b!451136))

(assert (= (and b!451136 c!55983) b!451138))

(assert (= (and b!451136 (not c!55983)) b!451140))

(assert (= (or b!451138 b!451140) bm!29835))

(assert (=> b!451136 m!434913))

(assert (=> b!451136 m!434913))

(assert (=> b!451136 m!434917))

(assert (=> bm!29835 m!434913))

(declare-fun m!434963 () Bool)

(assert (=> bm!29835 m!434963))

(assert (=> b!451137 m!434913))

(assert (=> b!451137 m!434913))

(declare-fun m!434965 () Bool)

(assert (=> b!451137 m!434965))

(assert (=> b!451139 m!434913))

(assert (=> b!451139 m!434913))

(assert (=> b!451139 m!434917))

(assert (=> b!450951 d!74155))

(declare-fun b!451141 () Bool)

(declare-fun e!264291 () Bool)

(declare-fun e!264290 () Bool)

(assert (=> b!451141 (= e!264291 e!264290)))

(declare-fun c!55984 () Bool)

(assert (=> b!451141 (= c!55984 (validKeyInArray!0 (select (arr!13407 lt!204775) #b00000000000000000000000000000000)))))

(declare-fun bm!29836 () Bool)

(declare-fun call!29839 () Bool)

(assert (=> bm!29836 (= call!29839 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!204775 mask!1025))))

(declare-fun d!74157 () Bool)

(declare-fun res!268667 () Bool)

(assert (=> d!74157 (=> res!268667 e!264291)))

(assert (=> d!74157 (= res!268667 (bvsge #b00000000000000000000000000000000 (size!13759 lt!204775)))))

(assert (=> d!74157 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204775 mask!1025) e!264291)))

(declare-fun b!451142 () Bool)

(declare-fun e!264292 () Bool)

(assert (=> b!451142 (= e!264290 e!264292)))

(declare-fun lt!204855 () (_ BitVec 64))

(assert (=> b!451142 (= lt!204855 (select (arr!13407 lt!204775) #b00000000000000000000000000000000))))

(declare-fun lt!204854 () Unit!13143)

(assert (=> b!451142 (= lt!204854 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!204775 lt!204855 #b00000000000000000000000000000000))))

(assert (=> b!451142 (arrayContainsKey!0 lt!204775 lt!204855 #b00000000000000000000000000000000)))

(declare-fun lt!204856 () Unit!13143)

(assert (=> b!451142 (= lt!204856 lt!204854)))

(declare-fun res!268666 () Bool)

(assert (=> b!451142 (= res!268666 (= (seekEntryOrOpen!0 (select (arr!13407 lt!204775) #b00000000000000000000000000000000) lt!204775 mask!1025) (Found!3519 #b00000000000000000000000000000000)))))

(assert (=> b!451142 (=> (not res!268666) (not e!264292))))

(declare-fun b!451143 () Bool)

(assert (=> b!451143 (= e!264292 call!29839)))

(declare-fun b!451144 () Bool)

(assert (=> b!451144 (= e!264290 call!29839)))

(assert (= (and d!74157 (not res!268667)) b!451141))

(assert (= (and b!451141 c!55984) b!451142))

(assert (= (and b!451141 (not c!55984)) b!451144))

(assert (= (and b!451142 res!268666) b!451143))

(assert (= (or b!451143 b!451144) bm!29836))

(assert (=> b!451141 m!434955))

(assert (=> b!451141 m!434955))

(assert (=> b!451141 m!434957))

(declare-fun m!434967 () Bool)

(assert (=> bm!29836 m!434967))

(assert (=> b!451142 m!434955))

(declare-fun m!434969 () Bool)

(assert (=> b!451142 m!434969))

(declare-fun m!434971 () Bool)

(assert (=> b!451142 m!434971))

(assert (=> b!451142 m!434955))

(declare-fun m!434973 () Bool)

(assert (=> b!451142 m!434973))

(assert (=> b!450943 d!74157))

(declare-fun d!74159 () Bool)

(assert (=> d!74159 (= (validKeyInArray!0 (select (arr!13407 _keys!709) from!863)) (and (not (= (select (arr!13407 _keys!709) from!863) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!13407 _keys!709) from!863) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!450942 d!74159))

(declare-fun b!451151 () Bool)

(declare-fun e!264297 () Bool)

(declare-fun e!264298 () Bool)

(assert (=> b!451151 (= e!264297 e!264298)))

(declare-fun c!55987 () Bool)

(assert (=> b!451151 (= c!55987 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun b!451152 () Bool)

(declare-fun call!29845 () ListLongMap!6871)

(declare-fun call!29844 () ListLongMap!6871)

(assert (=> b!451152 (= e!264298 (= call!29845 call!29844))))

(declare-fun bm!29841 () Bool)

(assert (=> bm!29841 (= call!29844 (getCurrentListMapNoExtraKeys!1628 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451153 () Bool)

(assert (=> b!451153 (= e!264298 (= call!29845 (+!1519 call!29844 (tuple2!7945 k0!794 v!412))))))

(declare-fun d!74161 () Bool)

(assert (=> d!74161 e!264297))

(declare-fun res!268670 () Bool)

(assert (=> d!74161 (=> (not res!268670) (not e!264297))))

(assert (=> d!74161 (= res!268670 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13759 _keys!709)))) (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13760 _values!549)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13759 _keys!709)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13760 _values!549))))))))

(declare-fun lt!204859 () Unit!13143)

(declare-fun choose!1334 (array!27929 array!27931 (_ BitVec 32) (_ BitVec 32) V!17213 V!17213 (_ BitVec 32) (_ BitVec 64) V!17213 (_ BitVec 32) Int) Unit!13143)

(assert (=> d!74161 (= lt!204859 (choose!1334 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> d!74161 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13759 _keys!709)))))

(assert (=> d!74161 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!690 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!204859)))

(declare-fun bm!29842 () Bool)

(assert (=> bm!29842 (= call!29845 (getCurrentListMapNoExtraKeys!1628 (array!27930 (store (arr!13407 _keys!709) i!563 k0!794) (size!13759 _keys!709)) (array!27932 (store (arr!13408 _values!549) i!563 (ValueCellFull!5697 v!412)) (size!13760 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and d!74161 res!268670) b!451151))

(assert (= (and b!451151 c!55987) b!451153))

(assert (= (and b!451151 (not c!55987)) b!451152))

(assert (= (or b!451153 b!451152) bm!29841))

(assert (= (or b!451153 b!451152) bm!29842))

(declare-fun m!434975 () Bool)

(assert (=> bm!29841 m!434975))

(declare-fun m!434977 () Bool)

(assert (=> b!451153 m!434977))

(declare-fun m!434979 () Bool)

(assert (=> d!74161 m!434979))

(assert (=> bm!29842 m!434753))

(assert (=> bm!29842 m!434759))

(declare-fun m!434981 () Bool)

(assert (=> bm!29842 m!434981))

(assert (=> b!450942 d!74161))

(declare-fun d!74163 () Bool)

(declare-fun e!264299 () Bool)

(assert (=> d!74163 e!264299))

(declare-fun res!268672 () Bool)

(assert (=> d!74163 (=> (not res!268672) (not e!264299))))

(declare-fun lt!204863 () ListLongMap!6871)

(assert (=> d!74163 (= res!268672 (contains!2496 lt!204863 (_1!3982 (tuple2!7945 k0!794 v!412))))))

(declare-fun lt!204862 () List!8052)

(assert (=> d!74163 (= lt!204863 (ListLongMap!6872 lt!204862))))

(declare-fun lt!204860 () Unit!13143)

(declare-fun lt!204861 () Unit!13143)

(assert (=> d!74163 (= lt!204860 lt!204861)))

(assert (=> d!74163 (= (getValueByKey!368 lt!204862 (_1!3982 (tuple2!7945 k0!794 v!412))) (Some!373 (_2!3982 (tuple2!7945 k0!794 v!412))))))

(assert (=> d!74163 (= lt!204861 (lemmaContainsTupThenGetReturnValue!192 lt!204862 (_1!3982 (tuple2!7945 k0!794 v!412)) (_2!3982 (tuple2!7945 k0!794 v!412))))))

(assert (=> d!74163 (= lt!204862 (insertStrictlySorted!194 (toList!3451 call!29819) (_1!3982 (tuple2!7945 k0!794 v!412)) (_2!3982 (tuple2!7945 k0!794 v!412))))))

(assert (=> d!74163 (= (+!1519 call!29819 (tuple2!7945 k0!794 v!412)) lt!204863)))

(declare-fun b!451154 () Bool)

(declare-fun res!268671 () Bool)

(assert (=> b!451154 (=> (not res!268671) (not e!264299))))

(assert (=> b!451154 (= res!268671 (= (getValueByKey!368 (toList!3451 lt!204863) (_1!3982 (tuple2!7945 k0!794 v!412))) (Some!373 (_2!3982 (tuple2!7945 k0!794 v!412)))))))

(declare-fun b!451155 () Bool)

(assert (=> b!451155 (= e!264299 (contains!2497 (toList!3451 lt!204863) (tuple2!7945 k0!794 v!412)))))

(assert (= (and d!74163 res!268672) b!451154))

(assert (= (and b!451154 res!268671) b!451155))

(declare-fun m!434983 () Bool)

(assert (=> d!74163 m!434983))

(declare-fun m!434985 () Bool)

(assert (=> d!74163 m!434985))

(declare-fun m!434987 () Bool)

(assert (=> d!74163 m!434987))

(declare-fun m!434989 () Bool)

(assert (=> d!74163 m!434989))

(declare-fun m!434991 () Bool)

(assert (=> b!451154 m!434991))

(declare-fun m!434993 () Bool)

(assert (=> b!451155 m!434993))

(assert (=> b!450941 d!74163))

(declare-fun d!74165 () Bool)

(assert (=> d!74165 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!450953 d!74165))

(declare-fun b!451156 () Bool)

(declare-fun lt!204867 () Unit!13143)

(declare-fun lt!204869 () Unit!13143)

(assert (=> b!451156 (= lt!204867 lt!204869)))

(declare-fun lt!204870 () V!17213)

(declare-fun lt!204864 () (_ BitVec 64))

(declare-fun lt!204866 () (_ BitVec 64))

(declare-fun lt!204868 () ListLongMap!6871)

(assert (=> b!451156 (not (contains!2496 (+!1519 lt!204868 (tuple2!7945 lt!204864 lt!204870)) lt!204866))))

(assert (=> b!451156 (= lt!204869 (addStillNotContains!147 lt!204868 lt!204864 lt!204870 lt!204866))))

(assert (=> b!451156 (= lt!204866 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!451156 (= lt!204870 (get!6607 (select (arr!13408 (ite c!55946 _values!549 lt!204772)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!451156 (= lt!204864 (select (arr!13407 (ite c!55946 _keys!709 lt!204775)) (bvadd #b00000000000000000000000000000001 from!863)))))

(declare-fun call!29846 () ListLongMap!6871)

(assert (=> b!451156 (= lt!204868 call!29846)))

(declare-fun e!264305 () ListLongMap!6871)

(assert (=> b!451156 (= e!264305 (+!1519 call!29846 (tuple2!7945 (select (arr!13407 (ite c!55946 _keys!709 lt!204775)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6607 (select (arr!13408 (ite c!55946 _values!549 lt!204772)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!29843 () Bool)

(assert (=> bm!29843 (= call!29846 (getCurrentListMapNoExtraKeys!1628 (ite c!55946 _keys!709 lt!204775) (ite c!55946 _values!549 lt!204772) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!451157 () Bool)

(declare-fun e!264306 () Bool)

(declare-fun e!264301 () Bool)

(assert (=> b!451157 (= e!264306 e!264301)))

(declare-fun c!55988 () Bool)

(declare-fun e!264304 () Bool)

(assert (=> b!451157 (= c!55988 e!264304)))

(declare-fun res!268676 () Bool)

(assert (=> b!451157 (=> (not res!268676) (not e!264304))))

(assert (=> b!451157 (= res!268676 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13759 (ite c!55946 _keys!709 lt!204775))))))

(declare-fun b!451158 () Bool)

(declare-fun e!264302 () ListLongMap!6871)

(assert (=> b!451158 (= e!264302 (ListLongMap!6872 Nil!8049))))

(declare-fun b!451159 () Bool)

(assert (=> b!451159 (= e!264302 e!264305)))

(declare-fun c!55989 () Bool)

(assert (=> b!451159 (= c!55989 (validKeyInArray!0 (select (arr!13407 (ite c!55946 _keys!709 lt!204775)) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!451160 () Bool)

(declare-fun e!264303 () Bool)

(declare-fun lt!204865 () ListLongMap!6871)

(assert (=> b!451160 (= e!264303 (= lt!204865 (getCurrentListMapNoExtraKeys!1628 (ite c!55946 _keys!709 lt!204775) (ite c!55946 _values!549 lt!204772) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!451161 () Bool)

(assert (=> b!451161 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13759 (ite c!55946 _keys!709 lt!204775))))))

(assert (=> b!451161 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13760 (ite c!55946 _values!549 lt!204772))))))

(declare-fun e!264300 () Bool)

(assert (=> b!451161 (= e!264300 (= (apply!312 lt!204865 (select (arr!13407 (ite c!55946 _keys!709 lt!204775)) (bvadd #b00000000000000000000000000000001 from!863))) (get!6607 (select (arr!13408 (ite c!55946 _values!549 lt!204772)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!844 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!74167 () Bool)

(assert (=> d!74167 e!264306))

(declare-fun res!268675 () Bool)

(assert (=> d!74167 (=> (not res!268675) (not e!264306))))

(assert (=> d!74167 (= res!268675 (not (contains!2496 lt!204865 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74167 (= lt!204865 e!264302)))

(declare-fun c!55990 () Bool)

(assert (=> d!74167 (= c!55990 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!13759 (ite c!55946 _keys!709 lt!204775))))))

(assert (=> d!74167 (validMask!0 mask!1025)))

(assert (=> d!74167 (= (getCurrentListMapNoExtraKeys!1628 (ite c!55946 _keys!709 lt!204775) (ite c!55946 _values!549 lt!204772) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!204865)))

(declare-fun b!451162 () Bool)

(declare-fun res!268673 () Bool)

(assert (=> b!451162 (=> (not res!268673) (not e!264306))))

(assert (=> b!451162 (= res!268673 (not (contains!2496 lt!204865 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!451163 () Bool)

(assert (=> b!451163 (= e!264301 e!264303)))

(declare-fun c!55991 () Bool)

(assert (=> b!451163 (= c!55991 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13759 (ite c!55946 _keys!709 lt!204775))))))

(declare-fun b!451164 () Bool)

(assert (=> b!451164 (= e!264301 e!264300)))

(assert (=> b!451164 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13759 (ite c!55946 _keys!709 lt!204775))))))

(declare-fun res!268674 () Bool)

(assert (=> b!451164 (= res!268674 (contains!2496 lt!204865 (select (arr!13407 (ite c!55946 _keys!709 lt!204775)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!451164 (=> (not res!268674) (not e!264300))))

(declare-fun b!451165 () Bool)

(assert (=> b!451165 (= e!264304 (validKeyInArray!0 (select (arr!13407 (ite c!55946 _keys!709 lt!204775)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!451165 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(declare-fun b!451166 () Bool)

(assert (=> b!451166 (= e!264305 call!29846)))

(declare-fun b!451167 () Bool)

(assert (=> b!451167 (= e!264303 (isEmpty!563 lt!204865))))

(assert (= (and d!74167 c!55990) b!451158))

(assert (= (and d!74167 (not c!55990)) b!451159))

(assert (= (and b!451159 c!55989) b!451156))

(assert (= (and b!451159 (not c!55989)) b!451166))

(assert (= (or b!451156 b!451166) bm!29843))

(assert (= (and d!74167 res!268675) b!451162))

(assert (= (and b!451162 res!268673) b!451157))

(assert (= (and b!451157 res!268676) b!451165))

(assert (= (and b!451157 c!55988) b!451164))

(assert (= (and b!451157 (not c!55988)) b!451163))

(assert (= (and b!451164 res!268674) b!451161))

(assert (= (and b!451163 c!55991) b!451160))

(assert (= (and b!451163 (not c!55991)) b!451167))

(declare-fun b_lambda!9531 () Bool)

(assert (=> (not b_lambda!9531) (not b!451156)))

(assert (=> b!451156 t!13824))

(declare-fun b_and!18795 () Bool)

(assert (= b_and!18793 (and (=> t!13824 result!6989) b_and!18795)))

(declare-fun b_lambda!9533 () Bool)

(assert (=> (not b_lambda!9533) (not b!451161)))

(assert (=> b!451161 t!13824))

(declare-fun b_and!18797 () Bool)

(assert (= b_and!18795 (and (=> t!13824 result!6989) b_and!18797)))

(declare-fun m!434995 () Bool)

(assert (=> b!451159 m!434995))

(assert (=> b!451159 m!434995))

(declare-fun m!434997 () Bool)

(assert (=> b!451159 m!434997))

(declare-fun m!434999 () Bool)

(assert (=> bm!29843 m!434999))

(assert (=> b!451165 m!434995))

(assert (=> b!451165 m!434995))

(assert (=> b!451165 m!434997))

(declare-fun m!435001 () Bool)

(assert (=> b!451162 m!435001))

(declare-fun m!435003 () Bool)

(assert (=> b!451167 m!435003))

(assert (=> b!451164 m!434995))

(assert (=> b!451164 m!434995))

(declare-fun m!435005 () Bool)

(assert (=> b!451164 m!435005))

(assert (=> b!451156 m!434741))

(declare-fun m!435007 () Bool)

(assert (=> b!451156 m!435007))

(assert (=> b!451156 m!434741))

(declare-fun m!435009 () Bool)

(assert (=> b!451156 m!435009))

(assert (=> b!451156 m!434995))

(declare-fun m!435011 () Bool)

(assert (=> b!451156 m!435011))

(assert (=> b!451156 m!435007))

(declare-fun m!435013 () Bool)

(assert (=> b!451156 m!435013))

(declare-fun m!435015 () Bool)

(assert (=> b!451156 m!435015))

(assert (=> b!451156 m!435013))

(declare-fun m!435017 () Bool)

(assert (=> b!451156 m!435017))

(assert (=> b!451161 m!434741))

(assert (=> b!451161 m!435007))

(assert (=> b!451161 m!434741))

(assert (=> b!451161 m!435009))

(assert (=> b!451161 m!434995))

(assert (=> b!451161 m!435007))

(assert (=> b!451161 m!434995))

(declare-fun m!435019 () Bool)

(assert (=> b!451161 m!435019))

(assert (=> b!451160 m!434999))

(declare-fun m!435021 () Bool)

(assert (=> d!74167 m!435021))

(assert (=> d!74167 m!434717))

(assert (=> bm!29815 d!74167))

(declare-fun d!74169 () Bool)

(assert (=> d!74169 (= (array_inv!9702 _values!549) (bvsge (size!13760 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!40740 d!74169))

(declare-fun d!74171 () Bool)

(assert (=> d!74171 (= (array_inv!9703 _keys!709) (bvsge (size!13759 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!40740 d!74171))

(declare-fun mapIsEmpty!19761 () Bool)

(declare-fun mapRes!19761 () Bool)

(assert (=> mapIsEmpty!19761 mapRes!19761))

(declare-fun mapNonEmpty!19761 () Bool)

(declare-fun tp!38058 () Bool)

(declare-fun e!264312 () Bool)

(assert (=> mapNonEmpty!19761 (= mapRes!19761 (and tp!38058 e!264312))))

(declare-fun mapKey!19761 () (_ BitVec 32))

(declare-fun mapRest!19761 () (Array (_ BitVec 32) ValueCell!5697))

(declare-fun mapValue!19761 () ValueCell!5697)

(assert (=> mapNonEmpty!19761 (= mapRest!19755 (store mapRest!19761 mapKey!19761 mapValue!19761))))

(declare-fun b!451175 () Bool)

(declare-fun e!264311 () Bool)

(assert (=> b!451175 (= e!264311 tp_is_empty!12081)))

(declare-fun b!451174 () Bool)

(assert (=> b!451174 (= e!264312 tp_is_empty!12081)))

(declare-fun condMapEmpty!19761 () Bool)

(declare-fun mapDefault!19761 () ValueCell!5697)

(assert (=> mapNonEmpty!19755 (= condMapEmpty!19761 (= mapRest!19755 ((as const (Array (_ BitVec 32) ValueCell!5697)) mapDefault!19761)))))

(assert (=> mapNonEmpty!19755 (= tp!38049 (and e!264311 mapRes!19761))))

(assert (= (and mapNonEmpty!19755 condMapEmpty!19761) mapIsEmpty!19761))

(assert (= (and mapNonEmpty!19755 (not condMapEmpty!19761)) mapNonEmpty!19761))

(assert (= (and mapNonEmpty!19761 ((_ is ValueCellFull!5697) mapValue!19761)) b!451174))

(assert (= (and mapNonEmpty!19755 ((_ is ValueCellFull!5697) mapDefault!19761)) b!451175))

(declare-fun m!435023 () Bool)

(assert (=> mapNonEmpty!19761 m!435023))

(declare-fun b_lambda!9535 () Bool)

(assert (= b_lambda!9517 (or (and start!40740 b_free!10743) b_lambda!9535)))

(declare-fun b_lambda!9537 () Bool)

(assert (= b_lambda!9527 (or (and start!40740 b_free!10743) b_lambda!9537)))

(declare-fun b_lambda!9539 () Bool)

(assert (= b_lambda!9525 (or (and start!40740 b_free!10743) b_lambda!9539)))

(declare-fun b_lambda!9541 () Bool)

(assert (= b_lambda!9515 (or (and start!40740 b_free!10743) b_lambda!9541)))

(declare-fun b_lambda!9543 () Bool)

(assert (= b_lambda!9523 (or (and start!40740 b_free!10743) b_lambda!9543)))

(declare-fun b_lambda!9545 () Bool)

(assert (= b_lambda!9529 (or (and start!40740 b_free!10743) b_lambda!9545)))

(declare-fun b_lambda!9547 () Bool)

(assert (= b_lambda!9521 (or (and start!40740 b_free!10743) b_lambda!9547)))

(declare-fun b_lambda!9549 () Bool)

(assert (= b_lambda!9533 (or (and start!40740 b_free!10743) b_lambda!9549)))

(declare-fun b_lambda!9551 () Bool)

(assert (= b_lambda!9519 (or (and start!40740 b_free!10743) b_lambda!9551)))

(declare-fun b_lambda!9553 () Bool)

(assert (= b_lambda!9531 (or (and start!40740 b_free!10743) b_lambda!9553)))

(check-sat (not b!451159) (not b!451088) (not b!451114) (not b!451073) (not b!451055) (not b!451113) (not bm!29831) (not b!451052) (not b!451120) (not b!451141) (not b!451067) (not bm!29825) (not b!451105) (not bm!29843) (not b!451054) (not b!451155) (not b_next!10743) (not b!451161) (not b!451165) (not b!451060) (not b!451164) (not b!451160) (not b!451065) (not b!451024) (not b!451162) (not d!74141) (not b!451058) (not b!451082) (not b!451137) (not b!451090) (not d!74163) (not b!451154) (not b!451076) (not b!451084) (not bm!29835) (not b!451085) (not b!451057) (not b_lambda!9545) (not b!451106) (not bm!29836) (not b!451134) (not b!451023) (not b!451118) (not d!74143) (not mapNonEmpty!19761) (not b_lambda!9543) (not b!451066) (not b!451071) (not b!451153) (not d!74161) (not d!74135) (not bm!29834) (not b_lambda!9535) (not bm!29826) (not b!451053) (not b!451132) (not bm!29827) (not bm!29841) (not b!451117) (not b!451079) (not b_lambda!9539) (not b!451156) (not b!451167) tp_is_empty!12081 (not b_lambda!9551) (not bm!29830) (not b!451115) (not bm!29842) (not b_lambda!9537) (not d!74137) (not b!451072) (not b!451075) (not b!451139) (not b!451078) (not b_lambda!9553) (not b!451142) (not d!74149) (not b_lambda!9513) (not b!451109) (not b_lambda!9547) (not b!451049) (not b!451083) (not b!451096) (not b!451136) (not b!451087) (not b!451070) (not b_lambda!9549) (not b!451112) b_and!18797 (not b_lambda!9541) (not b!451131) (not d!74167))
(check-sat b_and!18797 (not b_next!10743))
