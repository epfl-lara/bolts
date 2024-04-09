; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96156 () Bool)

(assert start!96156)

(declare-fun b_free!22773 () Bool)

(declare-fun b_next!22773 () Bool)

(assert (=> start!96156 (= b_free!22773 (not b_next!22773))))

(declare-fun tp!80168 () Bool)

(declare-fun b_and!36239 () Bool)

(assert (=> start!96156 (= tp!80168 b_and!36239)))

(declare-fun mapIsEmpty!41917 () Bool)

(declare-fun mapRes!41917 () Bool)

(assert (=> mapIsEmpty!41917 mapRes!41917))

(declare-fun b!1090705 () Bool)

(declare-fun e!622977 () Bool)

(declare-fun tp_is_empty!26775 () Bool)

(assert (=> b!1090705 (= e!622977 tp_is_empty!26775)))

(declare-fun b!1090706 () Bool)

(declare-fun e!622984 () Bool)

(assert (=> b!1090706 (= e!622984 tp_is_empty!26775)))

(declare-fun b!1090707 () Bool)

(declare-fun res!727750 () Bool)

(declare-fun e!622980 () Bool)

(assert (=> b!1090707 (=> (not res!727750) (not e!622980))))

(declare-datatypes ((array!70438 0))(
  ( (array!70439 (arr!33889 (Array (_ BitVec 32) (_ BitVec 64))) (size!34426 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70438)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70438 (_ BitVec 32)) Bool)

(assert (=> b!1090707 (= res!727750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1090708 () Bool)

(declare-fun e!622981 () Bool)

(assert (=> b!1090708 (= e!622981 (and e!622977 mapRes!41917))))

(declare-fun condMapEmpty!41917 () Bool)

(declare-datatypes ((V!40827 0))(
  ( (V!40828 (val!13444 Int)) )
))
(declare-datatypes ((ValueCell!12678 0))(
  ( (ValueCellFull!12678 (v!16066 V!40827)) (EmptyCell!12678) )
))
(declare-datatypes ((array!70440 0))(
  ( (array!70441 (arr!33890 (Array (_ BitVec 32) ValueCell!12678)) (size!34427 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70440)

(declare-fun mapDefault!41917 () ValueCell!12678)

(assert (=> b!1090708 (= condMapEmpty!41917 (= (arr!33890 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12678)) mapDefault!41917)))))

(declare-fun b!1090709 () Bool)

(declare-fun res!727756 () Bool)

(assert (=> b!1090709 (=> (not res!727756) (not e!622980))))

(declare-datatypes ((List!23803 0))(
  ( (Nil!23800) (Cons!23799 (h!25008 (_ BitVec 64)) (t!33641 List!23803)) )
))
(declare-fun arrayNoDuplicates!0 (array!70438 (_ BitVec 32) List!23803) Bool)

(assert (=> b!1090709 (= res!727756 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23800))))

(declare-fun res!727752 () Bool)

(assert (=> start!96156 (=> (not res!727752) (not e!622980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96156 (= res!727752 (validMask!0 mask!1414))))

(assert (=> start!96156 e!622980))

(assert (=> start!96156 tp!80168))

(assert (=> start!96156 true))

(assert (=> start!96156 tp_is_empty!26775))

(declare-fun array_inv!25988 (array!70438) Bool)

(assert (=> start!96156 (array_inv!25988 _keys!1070)))

(declare-fun array_inv!25989 (array!70440) Bool)

(assert (=> start!96156 (and (array_inv!25989 _values!874) e!622981)))

(declare-fun b!1090710 () Bool)

(declare-fun e!622982 () Bool)

(declare-fun e!622979 () Bool)

(assert (=> b!1090710 (= e!622982 (not e!622979))))

(declare-fun res!727747 () Bool)

(assert (=> b!1090710 (=> res!727747 e!622979)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1090710 (= res!727747 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40827)

(declare-fun zeroValue!831 () V!40827)

(declare-datatypes ((tuple2!17164 0))(
  ( (tuple2!17165 (_1!8592 (_ BitVec 64)) (_2!8592 V!40827)) )
))
(declare-datatypes ((List!23804 0))(
  ( (Nil!23801) (Cons!23800 (h!25009 tuple2!17164) (t!33642 List!23804)) )
))
(declare-datatypes ((ListLongMap!15145 0))(
  ( (ListLongMap!15146 (toList!7588 List!23804)) )
))
(declare-fun lt!486799 () ListLongMap!15145)

(declare-fun getCurrentListMap!4328 (array!70438 array!70440 (_ BitVec 32) (_ BitVec 32) V!40827 V!40827 (_ BitVec 32) Int) ListLongMap!15145)

(assert (=> b!1090710 (= lt!486799 (getCurrentListMap!4328 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486801 () ListLongMap!15145)

(declare-fun lt!486798 () array!70438)

(declare-fun lt!486800 () array!70440)

(assert (=> b!1090710 (= lt!486801 (getCurrentListMap!4328 lt!486798 lt!486800 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486795 () ListLongMap!15145)

(declare-fun lt!486797 () ListLongMap!15145)

(assert (=> b!1090710 (and (= lt!486795 lt!486797) (= lt!486797 lt!486795))))

(declare-fun lt!486793 () ListLongMap!15145)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!866 (ListLongMap!15145 (_ BitVec 64)) ListLongMap!15145)

(assert (=> b!1090710 (= lt!486797 (-!866 lt!486793 k0!904))))

(declare-datatypes ((Unit!35847 0))(
  ( (Unit!35848) )
))
(declare-fun lt!486802 () Unit!35847)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!134 (array!70438 array!70440 (_ BitVec 32) (_ BitVec 32) V!40827 V!40827 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35847)

(assert (=> b!1090710 (= lt!486802 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!134 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4080 (array!70438 array!70440 (_ BitVec 32) (_ BitVec 32) V!40827 V!40827 (_ BitVec 32) Int) ListLongMap!15145)

(assert (=> b!1090710 (= lt!486795 (getCurrentListMapNoExtraKeys!4080 lt!486798 lt!486800 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2216 (Int (_ BitVec 64)) V!40827)

(assert (=> b!1090710 (= lt!486800 (array!70441 (store (arr!33890 _values!874) i!650 (ValueCellFull!12678 (dynLambda!2216 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34427 _values!874)))))

(assert (=> b!1090710 (= lt!486793 (getCurrentListMapNoExtraKeys!4080 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1090710 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!486794 () Unit!35847)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70438 (_ BitVec 64) (_ BitVec 32)) Unit!35847)

(assert (=> b!1090710 (= lt!486794 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1090711 () Bool)

(declare-fun res!727757 () Bool)

(assert (=> b!1090711 (=> (not res!727757) (not e!622980))))

(assert (=> b!1090711 (= res!727757 (= (select (arr!33889 _keys!1070) i!650) k0!904))))

(declare-fun b!1090712 () Bool)

(declare-fun e!622983 () Bool)

(assert (=> b!1090712 (= e!622979 e!622983)))

(declare-fun res!727748 () Bool)

(assert (=> b!1090712 (=> res!727748 e!622983)))

(assert (=> b!1090712 (= res!727748 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!486796 () ListLongMap!15145)

(assert (=> b!1090712 (= lt!486799 lt!486796)))

(declare-fun lt!486803 () tuple2!17164)

(declare-fun +!3297 (ListLongMap!15145 tuple2!17164) ListLongMap!15145)

(assert (=> b!1090712 (= lt!486796 (+!3297 lt!486793 lt!486803))))

(declare-fun lt!486792 () ListLongMap!15145)

(assert (=> b!1090712 (= lt!486801 lt!486792)))

(assert (=> b!1090712 (= lt!486792 (+!3297 lt!486797 lt!486803))))

(assert (=> b!1090712 (= lt!486801 (+!3297 lt!486795 lt!486803))))

(assert (=> b!1090712 (= lt!486803 (tuple2!17165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1090713 () Bool)

(declare-fun res!727755 () Bool)

(assert (=> b!1090713 (=> (not res!727755) (not e!622980))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090713 (= res!727755 (validKeyInArray!0 k0!904))))

(declare-fun b!1090714 () Bool)

(declare-fun res!727749 () Bool)

(assert (=> b!1090714 (=> (not res!727749) (not e!622980))))

(assert (=> b!1090714 (= res!727749 (and (= (size!34427 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34426 _keys!1070) (size!34427 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!41917 () Bool)

(declare-fun tp!80169 () Bool)

(assert (=> mapNonEmpty!41917 (= mapRes!41917 (and tp!80169 e!622984))))

(declare-fun mapValue!41917 () ValueCell!12678)

(declare-fun mapKey!41917 () (_ BitVec 32))

(declare-fun mapRest!41917 () (Array (_ BitVec 32) ValueCell!12678))

(assert (=> mapNonEmpty!41917 (= (arr!33890 _values!874) (store mapRest!41917 mapKey!41917 mapValue!41917))))

(declare-fun b!1090715 () Bool)

(assert (=> b!1090715 (= e!622980 e!622982)))

(declare-fun res!727751 () Bool)

(assert (=> b!1090715 (=> (not res!727751) (not e!622982))))

(assert (=> b!1090715 (= res!727751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486798 mask!1414))))

(assert (=> b!1090715 (= lt!486798 (array!70439 (store (arr!33889 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34426 _keys!1070)))))

(declare-fun b!1090716 () Bool)

(assert (=> b!1090716 (= e!622983 true)))

(assert (=> b!1090716 (= (-!866 lt!486796 k0!904) lt!486792)))

(declare-fun lt!486791 () Unit!35847)

(declare-fun addRemoveCommutativeForDiffKeys!94 (ListLongMap!15145 (_ BitVec 64) V!40827 (_ BitVec 64)) Unit!35847)

(assert (=> b!1090716 (= lt!486791 (addRemoveCommutativeForDiffKeys!94 lt!486793 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1090717 () Bool)

(declare-fun res!727754 () Bool)

(assert (=> b!1090717 (=> (not res!727754) (not e!622980))))

(assert (=> b!1090717 (= res!727754 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34426 _keys!1070))))))

(declare-fun b!1090718 () Bool)

(declare-fun res!727753 () Bool)

(assert (=> b!1090718 (=> (not res!727753) (not e!622982))))

(assert (=> b!1090718 (= res!727753 (arrayNoDuplicates!0 lt!486798 #b00000000000000000000000000000000 Nil!23800))))

(assert (= (and start!96156 res!727752) b!1090714))

(assert (= (and b!1090714 res!727749) b!1090707))

(assert (= (and b!1090707 res!727750) b!1090709))

(assert (= (and b!1090709 res!727756) b!1090717))

(assert (= (and b!1090717 res!727754) b!1090713))

(assert (= (and b!1090713 res!727755) b!1090711))

(assert (= (and b!1090711 res!727757) b!1090715))

(assert (= (and b!1090715 res!727751) b!1090718))

(assert (= (and b!1090718 res!727753) b!1090710))

(assert (= (and b!1090710 (not res!727747)) b!1090712))

(assert (= (and b!1090712 (not res!727748)) b!1090716))

(assert (= (and b!1090708 condMapEmpty!41917) mapIsEmpty!41917))

(assert (= (and b!1090708 (not condMapEmpty!41917)) mapNonEmpty!41917))

(get-info :version)

(assert (= (and mapNonEmpty!41917 ((_ is ValueCellFull!12678) mapValue!41917)) b!1090706))

(assert (= (and b!1090708 ((_ is ValueCellFull!12678) mapDefault!41917)) b!1090705))

(assert (= start!96156 b!1090708))

(declare-fun b_lambda!17473 () Bool)

(assert (=> (not b_lambda!17473) (not b!1090710)))

(declare-fun t!33640 () Bool)

(declare-fun tb!7659 () Bool)

(assert (=> (and start!96156 (= defaultEntry!882 defaultEntry!882) t!33640) tb!7659))

(declare-fun result!15829 () Bool)

(assert (=> tb!7659 (= result!15829 tp_is_empty!26775)))

(assert (=> b!1090710 t!33640))

(declare-fun b_and!36241 () Bool)

(assert (= b_and!36239 (and (=> t!33640 result!15829) b_and!36241)))

(declare-fun m!1010305 () Bool)

(assert (=> b!1090711 m!1010305))

(declare-fun m!1010307 () Bool)

(assert (=> b!1090715 m!1010307))

(declare-fun m!1010309 () Bool)

(assert (=> b!1090715 m!1010309))

(declare-fun m!1010311 () Bool)

(assert (=> b!1090710 m!1010311))

(declare-fun m!1010313 () Bool)

(assert (=> b!1090710 m!1010313))

(declare-fun m!1010315 () Bool)

(assert (=> b!1090710 m!1010315))

(declare-fun m!1010317 () Bool)

(assert (=> b!1090710 m!1010317))

(declare-fun m!1010319 () Bool)

(assert (=> b!1090710 m!1010319))

(declare-fun m!1010321 () Bool)

(assert (=> b!1090710 m!1010321))

(declare-fun m!1010323 () Bool)

(assert (=> b!1090710 m!1010323))

(declare-fun m!1010325 () Bool)

(assert (=> b!1090710 m!1010325))

(declare-fun m!1010327 () Bool)

(assert (=> b!1090710 m!1010327))

(declare-fun m!1010329 () Bool)

(assert (=> b!1090710 m!1010329))

(declare-fun m!1010331 () Bool)

(assert (=> b!1090716 m!1010331))

(declare-fun m!1010333 () Bool)

(assert (=> b!1090716 m!1010333))

(declare-fun m!1010335 () Bool)

(assert (=> b!1090709 m!1010335))

(declare-fun m!1010337 () Bool)

(assert (=> start!96156 m!1010337))

(declare-fun m!1010339 () Bool)

(assert (=> start!96156 m!1010339))

(declare-fun m!1010341 () Bool)

(assert (=> start!96156 m!1010341))

(declare-fun m!1010343 () Bool)

(assert (=> b!1090718 m!1010343))

(declare-fun m!1010345 () Bool)

(assert (=> b!1090713 m!1010345))

(declare-fun m!1010347 () Bool)

(assert (=> mapNonEmpty!41917 m!1010347))

(declare-fun m!1010349 () Bool)

(assert (=> b!1090712 m!1010349))

(declare-fun m!1010351 () Bool)

(assert (=> b!1090712 m!1010351))

(declare-fun m!1010353 () Bool)

(assert (=> b!1090712 m!1010353))

(declare-fun m!1010355 () Bool)

(assert (=> b!1090707 m!1010355))

(check-sat (not b!1090716) (not b!1090715) tp_is_empty!26775 (not b!1090710) (not b!1090718) (not mapNonEmpty!41917) (not start!96156) (not b!1090707) (not b_lambda!17473) b_and!36241 (not b!1090709) (not b!1090713) (not b_next!22773) (not b!1090712))
(check-sat b_and!36241 (not b_next!22773))
