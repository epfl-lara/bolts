; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95970 () Bool)

(assert start!95970)

(declare-fun b_free!22587 () Bool)

(declare-fun b_next!22587 () Bool)

(assert (=> start!95970 (= b_free!22587 (not b_next!22587))))

(declare-fun tp!79610 () Bool)

(declare-fun b_and!35867 () Bool)

(assert (=> start!95970 (= tp!79610 b_and!35867)))

(declare-fun b!1086595 () Bool)

(declare-fun e!620751 () Bool)

(declare-fun e!620748 () Bool)

(assert (=> b!1086595 (= e!620751 e!620748)))

(declare-fun res!724667 () Bool)

(assert (=> b!1086595 (=> (not res!724667) (not e!620748))))

(declare-datatypes ((array!70074 0))(
  ( (array!70075 (arr!33707 (Array (_ BitVec 32) (_ BitVec 64))) (size!34244 (_ BitVec 32))) )
))
(declare-fun lt!483061 () array!70074)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70074 (_ BitVec 32)) Bool)

(assert (=> b!1086595 (= res!724667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!483061 mask!1414))))

(declare-fun _keys!1070 () array!70074)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1086595 (= lt!483061 (array!70075 (store (arr!33707 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34244 _keys!1070)))))

(declare-fun b!1086596 () Bool)

(declare-fun e!620746 () Bool)

(declare-fun e!620749 () Bool)

(declare-fun mapRes!41638 () Bool)

(assert (=> b!1086596 (= e!620746 (and e!620749 mapRes!41638))))

(declare-fun condMapEmpty!41638 () Bool)

(declare-datatypes ((V!40579 0))(
  ( (V!40580 (val!13351 Int)) )
))
(declare-datatypes ((ValueCell!12585 0))(
  ( (ValueCellFull!12585 (v!15973 V!40579)) (EmptyCell!12585) )
))
(declare-datatypes ((array!70076 0))(
  ( (array!70077 (arr!33708 (Array (_ BitVec 32) ValueCell!12585)) (size!34245 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70076)

(declare-fun mapDefault!41638 () ValueCell!12585)

(assert (=> b!1086596 (= condMapEmpty!41638 (= (arr!33708 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12585)) mapDefault!41638)))))

(declare-fun b!1086597 () Bool)

(declare-fun e!620747 () Bool)

(declare-fun e!620752 () Bool)

(assert (=> b!1086597 (= e!620747 e!620752)))

(declare-fun res!724663 () Bool)

(assert (=> b!1086597 (=> res!724663 e!620752)))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1086597 (= res!724663 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((tuple2!17004 0))(
  ( (tuple2!17005 (_1!8512 (_ BitVec 64)) (_2!8512 V!40579)) )
))
(declare-datatypes ((List!23644 0))(
  ( (Nil!23641) (Cons!23640 (h!24849 tuple2!17004) (t!33296 List!23644)) )
))
(declare-datatypes ((ListLongMap!14985 0))(
  ( (ListLongMap!14986 (toList!7508 List!23644)) )
))
(declare-fun lt!483066 () ListLongMap!14985)

(declare-fun lt!483063 () ListLongMap!14985)

(assert (=> b!1086597 (= lt!483066 lt!483063)))

(declare-fun lt!483074 () ListLongMap!14985)

(declare-fun -!789 (ListLongMap!14985 (_ BitVec 64)) ListLongMap!14985)

(assert (=> b!1086597 (= lt!483066 (-!789 lt!483074 k0!904))))

(declare-datatypes ((Unit!35693 0))(
  ( (Unit!35694) )
))
(declare-fun lt!483065 () Unit!35693)

(declare-fun lt!483073 () ListLongMap!14985)

(declare-fun zeroValue!831 () V!40579)

(declare-fun addRemoveCommutativeForDiffKeys!32 (ListLongMap!14985 (_ BitVec 64) V!40579 (_ BitVec 64)) Unit!35693)

(assert (=> b!1086597 (= lt!483065 (addRemoveCommutativeForDiffKeys!32 lt!483073 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!483067 () ListLongMap!14985)

(declare-fun lt!483070 () tuple2!17004)

(declare-fun +!3236 (ListLongMap!14985 tuple2!17004) ListLongMap!14985)

(assert (=> b!1086597 (= lt!483067 (+!3236 lt!483063 lt!483070))))

(declare-fun lt!483060 () ListLongMap!14985)

(declare-fun lt!483071 () tuple2!17004)

(assert (=> b!1086597 (= lt!483063 (+!3236 lt!483060 lt!483071))))

(declare-fun lt!483068 () ListLongMap!14985)

(declare-fun lt!483064 () ListLongMap!14985)

(assert (=> b!1086597 (= lt!483068 lt!483064)))

(assert (=> b!1086597 (= lt!483064 (+!3236 lt!483074 lt!483070))))

(assert (=> b!1086597 (= lt!483074 (+!3236 lt!483073 lt!483071))))

(declare-fun lt!483059 () ListLongMap!14985)

(assert (=> b!1086597 (= lt!483067 (+!3236 (+!3236 lt!483059 lt!483071) lt!483070))))

(declare-fun minValue!831 () V!40579)

(assert (=> b!1086597 (= lt!483070 (tuple2!17005 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1086597 (= lt!483071 (tuple2!17005 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1086598 () Bool)

(declare-fun res!724664 () Bool)

(assert (=> b!1086598 (=> (not res!724664) (not e!620751))))

(assert (=> b!1086598 (= res!724664 (= (select (arr!33707 _keys!1070) i!650) k0!904))))

(declare-fun mapNonEmpty!41638 () Bool)

(declare-fun tp!79611 () Bool)

(declare-fun e!620750 () Bool)

(assert (=> mapNonEmpty!41638 (= mapRes!41638 (and tp!79611 e!620750))))

(declare-fun mapKey!41638 () (_ BitVec 32))

(declare-fun mapValue!41638 () ValueCell!12585)

(declare-fun mapRest!41638 () (Array (_ BitVec 32) ValueCell!12585))

(assert (=> mapNonEmpty!41638 (= (arr!33708 _values!874) (store mapRest!41638 mapKey!41638 mapValue!41638))))

(declare-fun b!1086599 () Bool)

(declare-fun res!724670 () Bool)

(assert (=> b!1086599 (=> (not res!724670) (not e!620751))))

(declare-datatypes ((List!23645 0))(
  ( (Nil!23642) (Cons!23641 (h!24850 (_ BitVec 64)) (t!33297 List!23645)) )
))
(declare-fun arrayNoDuplicates!0 (array!70074 (_ BitVec 32) List!23645) Bool)

(assert (=> b!1086599 (= res!724670 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23642))))

(declare-fun b!1086600 () Bool)

(declare-fun tp_is_empty!26589 () Bool)

(assert (=> b!1086600 (= e!620749 tp_is_empty!26589)))

(declare-fun b!1086601 () Bool)

(declare-fun res!724662 () Bool)

(assert (=> b!1086601 (=> (not res!724662) (not e!620751))))

(assert (=> b!1086601 (= res!724662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1086602 () Bool)

(assert (=> b!1086602 (= e!620750 tp_is_empty!26589)))

(declare-fun mapIsEmpty!41638 () Bool)

(assert (=> mapIsEmpty!41638 mapRes!41638))

(declare-fun b!1086603 () Bool)

(assert (=> b!1086603 (= e!620752 true)))

(assert (=> b!1086603 (= (-!789 lt!483064 k0!904) (+!3236 lt!483066 lt!483070))))

(declare-fun lt!483069 () Unit!35693)

(assert (=> b!1086603 (= lt!483069 (addRemoveCommutativeForDiffKeys!32 lt!483074 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1086604 () Bool)

(declare-fun res!724661 () Bool)

(assert (=> b!1086604 (=> (not res!724661) (not e!620748))))

(assert (=> b!1086604 (= res!724661 (arrayNoDuplicates!0 lt!483061 #b00000000000000000000000000000000 Nil!23642))))

(declare-fun b!1086605 () Bool)

(assert (=> b!1086605 (= e!620748 (not e!620747))))

(declare-fun res!724668 () Bool)

(assert (=> b!1086605 (=> res!724668 e!620747)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1086605 (= res!724668 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4262 (array!70074 array!70076 (_ BitVec 32) (_ BitVec 32) V!40579 V!40579 (_ BitVec 32) Int) ListLongMap!14985)

(assert (=> b!1086605 (= lt!483068 (getCurrentListMap!4262 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483072 () array!70076)

(assert (=> b!1086605 (= lt!483067 (getCurrentListMap!4262 lt!483061 lt!483072 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1086605 (and (= lt!483059 lt!483060) (= lt!483060 lt!483059))))

(assert (=> b!1086605 (= lt!483060 (-!789 lt!483073 k0!904))))

(declare-fun lt!483058 () Unit!35693)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!68 (array!70074 array!70076 (_ BitVec 32) (_ BitVec 32) V!40579 V!40579 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35693)

(assert (=> b!1086605 (= lt!483058 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!68 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4014 (array!70074 array!70076 (_ BitVec 32) (_ BitVec 32) V!40579 V!40579 (_ BitVec 32) Int) ListLongMap!14985)

(assert (=> b!1086605 (= lt!483059 (getCurrentListMapNoExtraKeys!4014 lt!483061 lt!483072 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2150 (Int (_ BitVec 64)) V!40579)

(assert (=> b!1086605 (= lt!483072 (array!70077 (store (arr!33708 _values!874) i!650 (ValueCellFull!12585 (dynLambda!2150 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34245 _values!874)))))

(assert (=> b!1086605 (= lt!483073 (getCurrentListMapNoExtraKeys!4014 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70074 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086605 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!483062 () Unit!35693)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70074 (_ BitVec 64) (_ BitVec 32)) Unit!35693)

(assert (=> b!1086605 (= lt!483062 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun res!724666 () Bool)

(assert (=> start!95970 (=> (not res!724666) (not e!620751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95970 (= res!724666 (validMask!0 mask!1414))))

(assert (=> start!95970 e!620751))

(assert (=> start!95970 tp!79610))

(assert (=> start!95970 true))

(assert (=> start!95970 tp_is_empty!26589))

(declare-fun array_inv!25860 (array!70074) Bool)

(assert (=> start!95970 (array_inv!25860 _keys!1070)))

(declare-fun array_inv!25861 (array!70076) Bool)

(assert (=> start!95970 (and (array_inv!25861 _values!874) e!620746)))

(declare-fun b!1086606 () Bool)

(declare-fun res!724665 () Bool)

(assert (=> b!1086606 (=> (not res!724665) (not e!620751))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1086606 (= res!724665 (validKeyInArray!0 k0!904))))

(declare-fun b!1086607 () Bool)

(declare-fun res!724660 () Bool)

(assert (=> b!1086607 (=> (not res!724660) (not e!620751))))

(assert (=> b!1086607 (= res!724660 (and (= (size!34245 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34244 _keys!1070) (size!34245 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1086608 () Bool)

(declare-fun res!724669 () Bool)

(assert (=> b!1086608 (=> (not res!724669) (not e!620751))))

(assert (=> b!1086608 (= res!724669 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34244 _keys!1070))))))

(assert (= (and start!95970 res!724666) b!1086607))

(assert (= (and b!1086607 res!724660) b!1086601))

(assert (= (and b!1086601 res!724662) b!1086599))

(assert (= (and b!1086599 res!724670) b!1086608))

(assert (= (and b!1086608 res!724669) b!1086606))

(assert (= (and b!1086606 res!724665) b!1086598))

(assert (= (and b!1086598 res!724664) b!1086595))

(assert (= (and b!1086595 res!724667) b!1086604))

(assert (= (and b!1086604 res!724661) b!1086605))

(assert (= (and b!1086605 (not res!724668)) b!1086597))

(assert (= (and b!1086597 (not res!724663)) b!1086603))

(assert (= (and b!1086596 condMapEmpty!41638) mapIsEmpty!41638))

(assert (= (and b!1086596 (not condMapEmpty!41638)) mapNonEmpty!41638))

(get-info :version)

(assert (= (and mapNonEmpty!41638 ((_ is ValueCellFull!12585) mapValue!41638)) b!1086602))

(assert (= (and b!1086596 ((_ is ValueCellFull!12585) mapDefault!41638)) b!1086600))

(assert (= start!95970 b!1086596))

(declare-fun b_lambda!17287 () Bool)

(assert (=> (not b_lambda!17287) (not b!1086605)))

(declare-fun t!33295 () Bool)

(declare-fun tb!7473 () Bool)

(assert (=> (and start!95970 (= defaultEntry!882 defaultEntry!882) t!33295) tb!7473))

(declare-fun result!15457 () Bool)

(assert (=> tb!7473 (= result!15457 tp_is_empty!26589)))

(assert (=> b!1086605 t!33295))

(declare-fun b_and!35869 () Bool)

(assert (= b_and!35867 (and (=> t!33295 result!15457) b_and!35869)))

(declare-fun m!1005325 () Bool)

(assert (=> b!1086601 m!1005325))

(declare-fun m!1005327 () Bool)

(assert (=> b!1086603 m!1005327))

(declare-fun m!1005329 () Bool)

(assert (=> b!1086603 m!1005329))

(declare-fun m!1005331 () Bool)

(assert (=> b!1086603 m!1005331))

(declare-fun m!1005333 () Bool)

(assert (=> b!1086595 m!1005333))

(declare-fun m!1005335 () Bool)

(assert (=> b!1086595 m!1005335))

(declare-fun m!1005337 () Bool)

(assert (=> start!95970 m!1005337))

(declare-fun m!1005339 () Bool)

(assert (=> start!95970 m!1005339))

(declare-fun m!1005341 () Bool)

(assert (=> start!95970 m!1005341))

(declare-fun m!1005343 () Bool)

(assert (=> b!1086605 m!1005343))

(declare-fun m!1005345 () Bool)

(assert (=> b!1086605 m!1005345))

(declare-fun m!1005347 () Bool)

(assert (=> b!1086605 m!1005347))

(declare-fun m!1005349 () Bool)

(assert (=> b!1086605 m!1005349))

(declare-fun m!1005351 () Bool)

(assert (=> b!1086605 m!1005351))

(declare-fun m!1005353 () Bool)

(assert (=> b!1086605 m!1005353))

(declare-fun m!1005355 () Bool)

(assert (=> b!1086605 m!1005355))

(declare-fun m!1005357 () Bool)

(assert (=> b!1086605 m!1005357))

(declare-fun m!1005359 () Bool)

(assert (=> b!1086605 m!1005359))

(declare-fun m!1005361 () Bool)

(assert (=> b!1086605 m!1005361))

(declare-fun m!1005363 () Bool)

(assert (=> b!1086606 m!1005363))

(declare-fun m!1005365 () Bool)

(assert (=> b!1086599 m!1005365))

(declare-fun m!1005367 () Bool)

(assert (=> b!1086597 m!1005367))

(declare-fun m!1005369 () Bool)

(assert (=> b!1086597 m!1005369))

(declare-fun m!1005371 () Bool)

(assert (=> b!1086597 m!1005371))

(declare-fun m!1005373 () Bool)

(assert (=> b!1086597 m!1005373))

(assert (=> b!1086597 m!1005373))

(declare-fun m!1005375 () Bool)

(assert (=> b!1086597 m!1005375))

(declare-fun m!1005377 () Bool)

(assert (=> b!1086597 m!1005377))

(declare-fun m!1005379 () Bool)

(assert (=> b!1086597 m!1005379))

(declare-fun m!1005381 () Bool)

(assert (=> b!1086597 m!1005381))

(declare-fun m!1005383 () Bool)

(assert (=> b!1086598 m!1005383))

(declare-fun m!1005385 () Bool)

(assert (=> mapNonEmpty!41638 m!1005385))

(declare-fun m!1005387 () Bool)

(assert (=> b!1086604 m!1005387))

(check-sat (not b_next!22587) (not b!1086605) (not b!1086603) (not b!1086606) (not b!1086597) (not b!1086604) b_and!35869 (not b!1086595) (not b!1086599) (not b_lambda!17287) tp_is_empty!26589 (not b!1086601) (not start!95970) (not mapNonEmpty!41638))
(check-sat b_and!35869 (not b_next!22587))
