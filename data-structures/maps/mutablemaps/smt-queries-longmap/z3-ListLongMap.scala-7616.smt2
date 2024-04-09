; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96054 () Bool)

(assert start!96054)

(declare-fun b_free!22671 () Bool)

(declare-fun b_next!22671 () Bool)

(assert (=> start!96054 (= b_free!22671 (not b_next!22671))))

(declare-fun tp!79862 () Bool)

(declare-fun b_and!36035 () Bool)

(assert (=> start!96054 (= tp!79862 b_and!36035)))

(declare-fun b!1088452 () Bool)

(declare-fun res!726063 () Bool)

(declare-fun e!621755 () Bool)

(assert (=> b!1088452 (=> (not res!726063) (not e!621755))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1088452 (= res!726063 (validKeyInArray!0 k0!904))))

(declare-fun mapIsEmpty!41764 () Bool)

(declare-fun mapRes!41764 () Bool)

(assert (=> mapIsEmpty!41764 mapRes!41764))

(declare-fun b!1088453 () Bool)

(declare-fun e!621759 () Bool)

(declare-fun tp_is_empty!26673 () Bool)

(assert (=> b!1088453 (= e!621759 tp_is_empty!26673)))

(declare-fun mapNonEmpty!41764 () Bool)

(declare-fun tp!79863 () Bool)

(assert (=> mapNonEmpty!41764 (= mapRes!41764 (and tp!79863 e!621759))))

(declare-datatypes ((V!40691 0))(
  ( (V!40692 (val!13393 Int)) )
))
(declare-datatypes ((ValueCell!12627 0))(
  ( (ValueCellFull!12627 (v!16015 V!40691)) (EmptyCell!12627) )
))
(declare-datatypes ((array!70238 0))(
  ( (array!70239 (arr!33789 (Array (_ BitVec 32) ValueCell!12627)) (size!34326 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70238)

(declare-fun mapValue!41764 () ValueCell!12627)

(declare-fun mapKey!41764 () (_ BitVec 32))

(declare-fun mapRest!41764 () (Array (_ BitVec 32) ValueCell!12627))

(assert (=> mapNonEmpty!41764 (= (arr!33789 _values!874) (store mapRest!41764 mapKey!41764 mapValue!41764))))

(declare-fun b!1088454 () Bool)

(declare-fun e!621753 () Bool)

(declare-fun e!621754 () Bool)

(assert (=> b!1088454 (= e!621753 (and e!621754 mapRes!41764))))

(declare-fun condMapEmpty!41764 () Bool)

(declare-fun mapDefault!41764 () ValueCell!12627)

(assert (=> b!1088454 (= condMapEmpty!41764 (= (arr!33789 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12627)) mapDefault!41764)))))

(declare-fun b!1088455 () Bool)

(declare-fun res!726064 () Bool)

(declare-fun e!621757 () Bool)

(assert (=> b!1088455 (=> (not res!726064) (not e!621757))))

(declare-datatypes ((array!70240 0))(
  ( (array!70241 (arr!33790 (Array (_ BitVec 32) (_ BitVec 64))) (size!34327 (_ BitVec 32))) )
))
(declare-fun lt!484836 () array!70240)

(declare-datatypes ((List!23716 0))(
  ( (Nil!23713) (Cons!23712 (h!24921 (_ BitVec 64)) (t!33452 List!23716)) )
))
(declare-fun arrayNoDuplicates!0 (array!70240 (_ BitVec 32) List!23716) Bool)

(assert (=> b!1088455 (= res!726064 (arrayNoDuplicates!0 lt!484836 #b00000000000000000000000000000000 Nil!23713))))

(declare-fun b!1088456 () Bool)

(assert (=> b!1088456 (= e!621754 tp_is_empty!26673)))

(declare-fun b!1088457 () Bool)

(declare-fun e!621760 () Bool)

(assert (=> b!1088457 (= e!621757 (not e!621760))))

(declare-fun res!726065 () Bool)

(assert (=> b!1088457 (=> res!726065 e!621760)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1088457 (= res!726065 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40691)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17076 0))(
  ( (tuple2!17077 (_1!8548 (_ BitVec 64)) (_2!8548 V!40691)) )
))
(declare-datatypes ((List!23717 0))(
  ( (Nil!23714) (Cons!23713 (h!24922 tuple2!17076) (t!33453 List!23717)) )
))
(declare-datatypes ((ListLongMap!15057 0))(
  ( (ListLongMap!15058 (toList!7544 List!23717)) )
))
(declare-fun lt!484831 () ListLongMap!15057)

(declare-fun zeroValue!831 () V!40691)

(declare-fun _keys!1070 () array!70240)

(declare-fun getCurrentListMap!4294 (array!70240 array!70238 (_ BitVec 32) (_ BitVec 32) V!40691 V!40691 (_ BitVec 32) Int) ListLongMap!15057)

(assert (=> b!1088457 (= lt!484831 (getCurrentListMap!4294 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484841 () ListLongMap!15057)

(declare-fun lt!484839 () array!70238)

(assert (=> b!1088457 (= lt!484841 (getCurrentListMap!4294 lt!484836 lt!484839 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484833 () ListLongMap!15057)

(declare-fun lt!484832 () ListLongMap!15057)

(assert (=> b!1088457 (and (= lt!484833 lt!484832) (= lt!484832 lt!484833))))

(declare-fun lt!484835 () ListLongMap!15057)

(declare-fun -!824 (ListLongMap!15057 (_ BitVec 64)) ListLongMap!15057)

(assert (=> b!1088457 (= lt!484832 (-!824 lt!484835 k0!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35763 0))(
  ( (Unit!35764) )
))
(declare-fun lt!484834 () Unit!35763)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!100 (array!70240 array!70238 (_ BitVec 32) (_ BitVec 32) V!40691 V!40691 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35763)

(assert (=> b!1088457 (= lt!484834 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!100 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4046 (array!70240 array!70238 (_ BitVec 32) (_ BitVec 32) V!40691 V!40691 (_ BitVec 32) Int) ListLongMap!15057)

(assert (=> b!1088457 (= lt!484833 (getCurrentListMapNoExtraKeys!4046 lt!484836 lt!484839 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2182 (Int (_ BitVec 64)) V!40691)

(assert (=> b!1088457 (= lt!484839 (array!70239 (store (arr!33789 _values!874) i!650 (ValueCellFull!12627 (dynLambda!2182 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34326 _values!874)))))

(assert (=> b!1088457 (= lt!484835 (getCurrentListMapNoExtraKeys!4046 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70240 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1088457 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!484837 () Unit!35763)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70240 (_ BitVec 64) (_ BitVec 32)) Unit!35763)

(assert (=> b!1088457 (= lt!484837 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1088458 () Bool)

(declare-fun res!726058 () Bool)

(assert (=> b!1088458 (=> (not res!726058) (not e!621755))))

(assert (=> b!1088458 (= res!726058 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34327 _keys!1070))))))

(declare-fun b!1088459 () Bool)

(declare-fun res!726062 () Bool)

(assert (=> b!1088459 (=> (not res!726062) (not e!621755))))

(assert (=> b!1088459 (= res!726062 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23713))))

(declare-fun b!1088460 () Bool)

(assert (=> b!1088460 (= e!621755 e!621757)))

(declare-fun res!726061 () Bool)

(assert (=> b!1088460 (=> (not res!726061) (not e!621757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70240 (_ BitVec 32)) Bool)

(assert (=> b!1088460 (= res!726061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484836 mask!1414))))

(assert (=> b!1088460 (= lt!484836 (array!70241 (store (arr!33790 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34327 _keys!1070)))))

(declare-fun b!1088461 () Bool)

(declare-fun res!726060 () Bool)

(assert (=> b!1088461 (=> (not res!726060) (not e!621755))))

(assert (=> b!1088461 (= res!726060 (and (= (size!34326 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34327 _keys!1070) (size!34326 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!726055 () Bool)

(assert (=> start!96054 (=> (not res!726055) (not e!621755))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96054 (= res!726055 (validMask!0 mask!1414))))

(assert (=> start!96054 e!621755))

(assert (=> start!96054 tp!79862))

(assert (=> start!96054 true))

(assert (=> start!96054 tp_is_empty!26673))

(declare-fun array_inv!25926 (array!70240) Bool)

(assert (=> start!96054 (array_inv!25926 _keys!1070)))

(declare-fun array_inv!25927 (array!70238) Bool)

(assert (=> start!96054 (and (array_inv!25927 _values!874) e!621753)))

(declare-fun b!1088462 () Bool)

(declare-fun res!726057 () Bool)

(assert (=> b!1088462 (=> (not res!726057) (not e!621755))))

(assert (=> b!1088462 (= res!726057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1088463 () Bool)

(declare-fun res!726059 () Bool)

(assert (=> b!1088463 (=> (not res!726059) (not e!621755))))

(assert (=> b!1088463 (= res!726059 (= (select (arr!33790 _keys!1070) i!650) k0!904))))

(declare-fun b!1088464 () Bool)

(declare-fun e!621756 () Bool)

(assert (=> b!1088464 (= e!621760 e!621756)))

(declare-fun res!726056 () Bool)

(assert (=> b!1088464 (=> res!726056 e!621756)))

(assert (=> b!1088464 (= res!726056 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!484829 () ListLongMap!15057)

(assert (=> b!1088464 (= lt!484841 lt!484829)))

(declare-fun lt!484838 () tuple2!17076)

(declare-fun +!3264 (ListLongMap!15057 tuple2!17076) ListLongMap!15057)

(assert (=> b!1088464 (= lt!484829 (+!3264 lt!484832 lt!484838))))

(declare-fun lt!484830 () ListLongMap!15057)

(assert (=> b!1088464 (= lt!484831 lt!484830)))

(assert (=> b!1088464 (= lt!484830 (+!3264 lt!484835 lt!484838))))

(assert (=> b!1088464 (= lt!484841 (+!3264 lt!484833 lt!484838))))

(assert (=> b!1088464 (= lt!484838 (tuple2!17077 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1088465 () Bool)

(assert (=> b!1088465 (= e!621756 (bvsle #b00000000000000000000000000000000 (size!34327 _keys!1070)))))

(assert (=> b!1088465 (= (-!824 lt!484830 k0!904) lt!484829)))

(declare-fun lt!484840 () Unit!35763)

(declare-fun addRemoveCommutativeForDiffKeys!61 (ListLongMap!15057 (_ BitVec 64) V!40691 (_ BitVec 64)) Unit!35763)

(assert (=> b!1088465 (= lt!484840 (addRemoveCommutativeForDiffKeys!61 lt!484835 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(assert (= (and start!96054 res!726055) b!1088461))

(assert (= (and b!1088461 res!726060) b!1088462))

(assert (= (and b!1088462 res!726057) b!1088459))

(assert (= (and b!1088459 res!726062) b!1088458))

(assert (= (and b!1088458 res!726058) b!1088452))

(assert (= (and b!1088452 res!726063) b!1088463))

(assert (= (and b!1088463 res!726059) b!1088460))

(assert (= (and b!1088460 res!726061) b!1088455))

(assert (= (and b!1088455 res!726064) b!1088457))

(assert (= (and b!1088457 (not res!726065)) b!1088464))

(assert (= (and b!1088464 (not res!726056)) b!1088465))

(assert (= (and b!1088454 condMapEmpty!41764) mapIsEmpty!41764))

(assert (= (and b!1088454 (not condMapEmpty!41764)) mapNonEmpty!41764))

(get-info :version)

(assert (= (and mapNonEmpty!41764 ((_ is ValueCellFull!12627) mapValue!41764)) b!1088453))

(assert (= (and b!1088454 ((_ is ValueCellFull!12627) mapDefault!41764)) b!1088456))

(assert (= start!96054 b!1088454))

(declare-fun b_lambda!17371 () Bool)

(assert (=> (not b_lambda!17371) (not b!1088457)))

(declare-fun t!33451 () Bool)

(declare-fun tb!7557 () Bool)

(assert (=> (and start!96054 (= defaultEntry!882 defaultEntry!882) t!33451) tb!7557))

(declare-fun result!15625 () Bool)

(assert (=> tb!7557 (= result!15625 tp_is_empty!26673)))

(assert (=> b!1088457 t!33451))

(declare-fun b_and!36037 () Bool)

(assert (= b_and!36035 (and (=> t!33451 result!15625) b_and!36037)))

(declare-fun m!1007665 () Bool)

(assert (=> b!1088465 m!1007665))

(declare-fun m!1007667 () Bool)

(assert (=> b!1088465 m!1007667))

(declare-fun m!1007669 () Bool)

(assert (=> b!1088464 m!1007669))

(declare-fun m!1007671 () Bool)

(assert (=> b!1088464 m!1007671))

(declare-fun m!1007673 () Bool)

(assert (=> b!1088464 m!1007673))

(declare-fun m!1007675 () Bool)

(assert (=> b!1088457 m!1007675))

(declare-fun m!1007677 () Bool)

(assert (=> b!1088457 m!1007677))

(declare-fun m!1007679 () Bool)

(assert (=> b!1088457 m!1007679))

(declare-fun m!1007681 () Bool)

(assert (=> b!1088457 m!1007681))

(declare-fun m!1007683 () Bool)

(assert (=> b!1088457 m!1007683))

(declare-fun m!1007685 () Bool)

(assert (=> b!1088457 m!1007685))

(declare-fun m!1007687 () Bool)

(assert (=> b!1088457 m!1007687))

(declare-fun m!1007689 () Bool)

(assert (=> b!1088457 m!1007689))

(declare-fun m!1007691 () Bool)

(assert (=> b!1088457 m!1007691))

(declare-fun m!1007693 () Bool)

(assert (=> b!1088457 m!1007693))

(declare-fun m!1007695 () Bool)

(assert (=> start!96054 m!1007695))

(declare-fun m!1007697 () Bool)

(assert (=> start!96054 m!1007697))

(declare-fun m!1007699 () Bool)

(assert (=> start!96054 m!1007699))

(declare-fun m!1007701 () Bool)

(assert (=> b!1088455 m!1007701))

(declare-fun m!1007703 () Bool)

(assert (=> b!1088452 m!1007703))

(declare-fun m!1007705 () Bool)

(assert (=> b!1088459 m!1007705))

(declare-fun m!1007707 () Bool)

(assert (=> b!1088462 m!1007707))

(declare-fun m!1007709 () Bool)

(assert (=> b!1088463 m!1007709))

(declare-fun m!1007711 () Bool)

(assert (=> mapNonEmpty!41764 m!1007711))

(declare-fun m!1007713 () Bool)

(assert (=> b!1088460 m!1007713))

(declare-fun m!1007715 () Bool)

(assert (=> b!1088460 m!1007715))

(check-sat (not b!1088455) (not start!96054) (not b!1088462) (not b!1088452) tp_is_empty!26673 (not b!1088465) (not mapNonEmpty!41764) (not b_next!22671) (not b!1088464) (not b_lambda!17371) (not b!1088459) b_and!36037 (not b!1088457) (not b!1088460))
(check-sat b_and!36037 (not b_next!22671))
