; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96096 () Bool)

(assert start!96096)

(declare-fun b_free!22713 () Bool)

(declare-fun b_next!22713 () Bool)

(assert (=> start!96096 (= b_free!22713 (not b_next!22713))))

(declare-fun tp!79989 () Bool)

(declare-fun b_and!36119 () Bool)

(assert (=> start!96096 (= tp!79989 b_and!36119)))

(declare-fun b!1089377 () Bool)

(declare-fun res!726753 () Bool)

(declare-fun e!622263 () Bool)

(assert (=> b!1089377 (=> (not res!726753) (not e!622263))))

(declare-datatypes ((array!70320 0))(
  ( (array!70321 (arr!33830 (Array (_ BitVec 32) (_ BitVec 64))) (size!34367 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70320)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1089377 (= res!726753 (= (select (arr!33830 _keys!1070) i!650) k0!904))))

(declare-fun b!1089378 () Bool)

(declare-fun res!726754 () Bool)

(assert (=> b!1089378 (=> (not res!726754) (not e!622263))))

(assert (=> b!1089378 (= res!726754 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34367 _keys!1070))))))

(declare-fun mapIsEmpty!41827 () Bool)

(declare-fun mapRes!41827 () Bool)

(assert (=> mapIsEmpty!41827 mapRes!41827))

(declare-fun b!1089379 () Bool)

(declare-fun e!622264 () Bool)

(assert (=> b!1089379 (= e!622263 e!622264)))

(declare-fun res!726756 () Bool)

(assert (=> b!1089379 (=> (not res!726756) (not e!622264))))

(declare-fun lt!485655 () array!70320)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70320 (_ BitVec 32)) Bool)

(assert (=> b!1089379 (= res!726756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485655 mask!1414))))

(assert (=> b!1089379 (= lt!485655 (array!70321 (store (arr!33830 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34367 _keys!1070)))))

(declare-fun b!1089380 () Bool)

(declare-fun e!622262 () Bool)

(declare-fun tp_is_empty!26715 () Bool)

(assert (=> b!1089380 (= e!622262 tp_is_empty!26715)))

(declare-fun b!1089381 () Bool)

(declare-fun e!622257 () Bool)

(assert (=> b!1089381 (= e!622257 tp_is_empty!26715)))

(declare-fun b!1089382 () Bool)

(declare-fun res!726751 () Bool)

(assert (=> b!1089382 (=> (not res!726751) (not e!622264))))

(declare-datatypes ((List!23755 0))(
  ( (Nil!23752) (Cons!23751 (h!24960 (_ BitVec 64)) (t!33533 List!23755)) )
))
(declare-fun arrayNoDuplicates!0 (array!70320 (_ BitVec 32) List!23755) Bool)

(assert (=> b!1089382 (= res!726751 (arrayNoDuplicates!0 lt!485655 #b00000000000000000000000000000000 Nil!23752))))

(declare-fun mapNonEmpty!41827 () Bool)

(declare-fun tp!79988 () Bool)

(assert (=> mapNonEmpty!41827 (= mapRes!41827 (and tp!79988 e!622257))))

(declare-datatypes ((V!40747 0))(
  ( (V!40748 (val!13414 Int)) )
))
(declare-datatypes ((ValueCell!12648 0))(
  ( (ValueCellFull!12648 (v!16036 V!40747)) (EmptyCell!12648) )
))
(declare-fun mapRest!41827 () (Array (_ BitVec 32) ValueCell!12648))

(declare-datatypes ((array!70322 0))(
  ( (array!70323 (arr!33831 (Array (_ BitVec 32) ValueCell!12648)) (size!34368 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70322)

(declare-fun mapKey!41827 () (_ BitVec 32))

(declare-fun mapValue!41827 () ValueCell!12648)

(assert (=> mapNonEmpty!41827 (= (arr!33831 _values!874) (store mapRest!41827 mapKey!41827 mapValue!41827))))

(declare-fun b!1089383 () Bool)

(declare-fun res!726748 () Bool)

(assert (=> b!1089383 (=> (not res!726748) (not e!622263))))

(assert (=> b!1089383 (= res!726748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!726755 () Bool)

(assert (=> start!96096 (=> (not res!726755) (not e!622263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96096 (= res!726755 (validMask!0 mask!1414))))

(assert (=> start!96096 e!622263))

(assert (=> start!96096 tp!79989))

(assert (=> start!96096 true))

(assert (=> start!96096 tp_is_empty!26715))

(declare-fun array_inv!25954 (array!70320) Bool)

(assert (=> start!96096 (array_inv!25954 _keys!1070)))

(declare-fun e!622258 () Bool)

(declare-fun array_inv!25955 (array!70322) Bool)

(assert (=> start!96096 (and (array_inv!25955 _values!874) e!622258)))

(declare-fun b!1089376 () Bool)

(declare-fun res!726749 () Bool)

(assert (=> b!1089376 (=> (not res!726749) (not e!622263))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1089376 (= res!726749 (and (= (size!34368 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34367 _keys!1070) (size!34368 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1089384 () Bool)

(declare-fun res!726750 () Bool)

(assert (=> b!1089384 (=> (not res!726750) (not e!622263))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1089384 (= res!726750 (validKeyInArray!0 k0!904))))

(declare-fun b!1089385 () Bool)

(assert (=> b!1089385 (= e!622258 (and e!622262 mapRes!41827))))

(declare-fun condMapEmpty!41827 () Bool)

(declare-fun mapDefault!41827 () ValueCell!12648)

(assert (=> b!1089385 (= condMapEmpty!41827 (= (arr!33831 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12648)) mapDefault!41827)))))

(declare-fun b!1089386 () Bool)

(declare-fun e!622259 () Bool)

(declare-fun e!622261 () Bool)

(assert (=> b!1089386 (= e!622259 e!622261)))

(declare-fun res!726758 () Bool)

(assert (=> b!1089386 (=> res!726758 e!622261)))

(assert (=> b!1089386 (= res!726758 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((tuple2!17116 0))(
  ( (tuple2!17117 (_1!8568 (_ BitVec 64)) (_2!8568 V!40747)) )
))
(declare-datatypes ((List!23756 0))(
  ( (Nil!23753) (Cons!23752 (h!24961 tuple2!17116) (t!33534 List!23756)) )
))
(declare-datatypes ((ListLongMap!15097 0))(
  ( (ListLongMap!15098 (toList!7564 List!23756)) )
))
(declare-fun lt!485650 () ListLongMap!15097)

(declare-fun lt!485654 () ListLongMap!15097)

(assert (=> b!1089386 (= lt!485650 lt!485654)))

(declare-fun lt!485653 () ListLongMap!15097)

(declare-fun lt!485659 () tuple2!17116)

(declare-fun +!3279 (ListLongMap!15097 tuple2!17116) ListLongMap!15097)

(assert (=> b!1089386 (= lt!485654 (+!3279 lt!485653 lt!485659))))

(declare-fun lt!485651 () ListLongMap!15097)

(declare-fun lt!485649 () ListLongMap!15097)

(assert (=> b!1089386 (= lt!485651 lt!485649)))

(declare-fun lt!485652 () ListLongMap!15097)

(assert (=> b!1089386 (= lt!485649 (+!3279 lt!485652 lt!485659))))

(declare-fun lt!485660 () ListLongMap!15097)

(assert (=> b!1089386 (= lt!485650 (+!3279 lt!485660 lt!485659))))

(declare-fun zeroValue!831 () V!40747)

(assert (=> b!1089386 (= lt!485659 (tuple2!17117 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1089387 () Bool)

(assert (=> b!1089387 (= e!622261 true)))

(declare-fun -!842 (ListLongMap!15097 (_ BitVec 64)) ListLongMap!15097)

(assert (=> b!1089387 (= (-!842 lt!485649 k0!904) lt!485654)))

(declare-datatypes ((Unit!35799 0))(
  ( (Unit!35800) )
))
(declare-fun lt!485648 () Unit!35799)

(declare-fun addRemoveCommutativeForDiffKeys!75 (ListLongMap!15097 (_ BitVec 64) V!40747 (_ BitVec 64)) Unit!35799)

(assert (=> b!1089387 (= lt!485648 (addRemoveCommutativeForDiffKeys!75 lt!485652 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun b!1089388 () Bool)

(declare-fun res!726757 () Bool)

(assert (=> b!1089388 (=> (not res!726757) (not e!622263))))

(assert (=> b!1089388 (= res!726757 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23752))))

(declare-fun b!1089389 () Bool)

(assert (=> b!1089389 (= e!622264 (not e!622259))))

(declare-fun res!726752 () Bool)

(assert (=> b!1089389 (=> res!726752 e!622259)))

(assert (=> b!1089389 (= res!726752 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40747)

(declare-fun getCurrentListMap!4308 (array!70320 array!70322 (_ BitVec 32) (_ BitVec 32) V!40747 V!40747 (_ BitVec 32) Int) ListLongMap!15097)

(assert (=> b!1089389 (= lt!485651 (getCurrentListMap!4308 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485658 () array!70322)

(assert (=> b!1089389 (= lt!485650 (getCurrentListMap!4308 lt!485655 lt!485658 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1089389 (and (= lt!485660 lt!485653) (= lt!485653 lt!485660))))

(assert (=> b!1089389 (= lt!485653 (-!842 lt!485652 k0!904))))

(declare-fun lt!485656 () Unit!35799)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!114 (array!70320 array!70322 (_ BitVec 32) (_ BitVec 32) V!40747 V!40747 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35799)

(assert (=> b!1089389 (= lt!485656 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!114 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4060 (array!70320 array!70322 (_ BitVec 32) (_ BitVec 32) V!40747 V!40747 (_ BitVec 32) Int) ListLongMap!15097)

(assert (=> b!1089389 (= lt!485660 (getCurrentListMapNoExtraKeys!4060 lt!485655 lt!485658 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2196 (Int (_ BitVec 64)) V!40747)

(assert (=> b!1089389 (= lt!485658 (array!70323 (store (arr!33831 _values!874) i!650 (ValueCellFull!12648 (dynLambda!2196 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34368 _values!874)))))

(assert (=> b!1089389 (= lt!485652 (getCurrentListMapNoExtraKeys!4060 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70320 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1089389 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!485657 () Unit!35799)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70320 (_ BitVec 64) (_ BitVec 32)) Unit!35799)

(assert (=> b!1089389 (= lt!485657 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(assert (= (and start!96096 res!726755) b!1089376))

(assert (= (and b!1089376 res!726749) b!1089383))

(assert (= (and b!1089383 res!726748) b!1089388))

(assert (= (and b!1089388 res!726757) b!1089378))

(assert (= (and b!1089378 res!726754) b!1089384))

(assert (= (and b!1089384 res!726750) b!1089377))

(assert (= (and b!1089377 res!726753) b!1089379))

(assert (= (and b!1089379 res!726756) b!1089382))

(assert (= (and b!1089382 res!726751) b!1089389))

(assert (= (and b!1089389 (not res!726752)) b!1089386))

(assert (= (and b!1089386 (not res!726758)) b!1089387))

(assert (= (and b!1089385 condMapEmpty!41827) mapIsEmpty!41827))

(assert (= (and b!1089385 (not condMapEmpty!41827)) mapNonEmpty!41827))

(get-info :version)

(assert (= (and mapNonEmpty!41827 ((_ is ValueCellFull!12648) mapValue!41827)) b!1089381))

(assert (= (and b!1089385 ((_ is ValueCellFull!12648) mapDefault!41827)) b!1089380))

(assert (= start!96096 b!1089385))

(declare-fun b_lambda!17413 () Bool)

(assert (=> (not b_lambda!17413) (not b!1089389)))

(declare-fun t!33532 () Bool)

(declare-fun tb!7599 () Bool)

(assert (=> (and start!96096 (= defaultEntry!882 defaultEntry!882) t!33532) tb!7599))

(declare-fun result!15709 () Bool)

(assert (=> tb!7599 (= result!15709 tp_is_empty!26715)))

(assert (=> b!1089389 t!33532))

(declare-fun b_and!36121 () Bool)

(assert (= b_and!36119 (and (=> t!33532 result!15709) b_and!36121)))

(declare-fun m!1008757 () Bool)

(assert (=> b!1089379 m!1008757))

(declare-fun m!1008759 () Bool)

(assert (=> b!1089379 m!1008759))

(declare-fun m!1008761 () Bool)

(assert (=> b!1089387 m!1008761))

(declare-fun m!1008763 () Bool)

(assert (=> b!1089387 m!1008763))

(declare-fun m!1008765 () Bool)

(assert (=> b!1089389 m!1008765))

(declare-fun m!1008767 () Bool)

(assert (=> b!1089389 m!1008767))

(declare-fun m!1008769 () Bool)

(assert (=> b!1089389 m!1008769))

(declare-fun m!1008771 () Bool)

(assert (=> b!1089389 m!1008771))

(declare-fun m!1008773 () Bool)

(assert (=> b!1089389 m!1008773))

(declare-fun m!1008775 () Bool)

(assert (=> b!1089389 m!1008775))

(declare-fun m!1008777 () Bool)

(assert (=> b!1089389 m!1008777))

(declare-fun m!1008779 () Bool)

(assert (=> b!1089389 m!1008779))

(declare-fun m!1008781 () Bool)

(assert (=> b!1089389 m!1008781))

(declare-fun m!1008783 () Bool)

(assert (=> b!1089389 m!1008783))

(declare-fun m!1008785 () Bool)

(assert (=> start!96096 m!1008785))

(declare-fun m!1008787 () Bool)

(assert (=> start!96096 m!1008787))

(declare-fun m!1008789 () Bool)

(assert (=> start!96096 m!1008789))

(declare-fun m!1008791 () Bool)

(assert (=> b!1089383 m!1008791))

(declare-fun m!1008793 () Bool)

(assert (=> b!1089377 m!1008793))

(declare-fun m!1008795 () Bool)

(assert (=> b!1089388 m!1008795))

(declare-fun m!1008797 () Bool)

(assert (=> b!1089382 m!1008797))

(declare-fun m!1008799 () Bool)

(assert (=> mapNonEmpty!41827 m!1008799))

(declare-fun m!1008801 () Bool)

(assert (=> b!1089384 m!1008801))

(declare-fun m!1008803 () Bool)

(assert (=> b!1089386 m!1008803))

(declare-fun m!1008805 () Bool)

(assert (=> b!1089386 m!1008805))

(declare-fun m!1008807 () Bool)

(assert (=> b!1089386 m!1008807))

(check-sat (not b!1089387) (not b!1089386) (not start!96096) (not b!1089383) (not b!1089389) b_and!36121 (not b_next!22713) (not b!1089379) (not b!1089388) (not b!1089382) (not mapNonEmpty!41827) (not b!1089384) tp_is_empty!26715 (not b_lambda!17413))
(check-sat b_and!36121 (not b_next!22713))
