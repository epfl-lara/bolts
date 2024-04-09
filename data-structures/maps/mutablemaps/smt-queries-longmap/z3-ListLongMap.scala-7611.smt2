; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96024 () Bool)

(assert start!96024)

(declare-fun b_free!22641 () Bool)

(declare-fun b_next!22641 () Bool)

(assert (=> start!96024 (= b_free!22641 (not b_next!22641))))

(declare-fun tp!79772 () Bool)

(declare-fun b_and!35975 () Bool)

(assert (=> start!96024 (= tp!79772 b_and!35975)))

(declare-fun mapNonEmpty!41719 () Bool)

(declare-fun mapRes!41719 () Bool)

(declare-fun tp!79773 () Bool)

(declare-fun e!621393 () Bool)

(assert (=> mapNonEmpty!41719 (= mapRes!41719 (and tp!79773 e!621393))))

(declare-datatypes ((V!40651 0))(
  ( (V!40652 (val!13378 Int)) )
))
(declare-datatypes ((ValueCell!12612 0))(
  ( (ValueCellFull!12612 (v!16000 V!40651)) (EmptyCell!12612) )
))
(declare-fun mapValue!41719 () ValueCell!12612)

(declare-datatypes ((array!70178 0))(
  ( (array!70179 (arr!33759 (Array (_ BitVec 32) ValueCell!12612)) (size!34296 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70178)

(declare-fun mapKey!41719 () (_ BitVec 32))

(declare-fun mapRest!41719 () (Array (_ BitVec 32) ValueCell!12612))

(assert (=> mapNonEmpty!41719 (= (arr!33759 _values!874) (store mapRest!41719 mapKey!41719 mapValue!41719))))

(declare-fun b!1087792 () Bool)

(declare-fun res!725564 () Bool)

(declare-fun e!621397 () Bool)

(assert (=> b!1087792 (=> (not res!725564) (not e!621397))))

(declare-datatypes ((array!70180 0))(
  ( (array!70181 (arr!33760 (Array (_ BitVec 32) (_ BitVec 64))) (size!34297 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70180)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1087792 (= res!725564 (= (select (arr!33760 _keys!1070) i!650) k0!904))))

(declare-fun res!725563 () Bool)

(assert (=> start!96024 (=> (not res!725563) (not e!621397))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96024 (= res!725563 (validMask!0 mask!1414))))

(assert (=> start!96024 e!621397))

(assert (=> start!96024 tp!79772))

(assert (=> start!96024 true))

(declare-fun tp_is_empty!26643 () Bool)

(assert (=> start!96024 tp_is_empty!26643))

(declare-fun array_inv!25902 (array!70180) Bool)

(assert (=> start!96024 (array_inv!25902 _keys!1070)))

(declare-fun e!621396 () Bool)

(declare-fun array_inv!25903 (array!70178) Bool)

(assert (=> start!96024 (and (array_inv!25903 _values!874) e!621396)))

(declare-fun b!1087793 () Bool)

(assert (=> b!1087793 (= e!621393 tp_is_empty!26643)))

(declare-fun b!1087794 () Bool)

(declare-fun res!725570 () Bool)

(declare-fun e!621395 () Bool)

(assert (=> b!1087794 (=> (not res!725570) (not e!621395))))

(declare-fun lt!484253 () array!70180)

(declare-datatypes ((List!23689 0))(
  ( (Nil!23686) (Cons!23685 (h!24894 (_ BitVec 64)) (t!33395 List!23689)) )
))
(declare-fun arrayNoDuplicates!0 (array!70180 (_ BitVec 32) List!23689) Bool)

(assert (=> b!1087794 (= res!725570 (arrayNoDuplicates!0 lt!484253 #b00000000000000000000000000000000 Nil!23686))))

(declare-fun b!1087795 () Bool)

(declare-fun e!621400 () Bool)

(assert (=> b!1087795 (= e!621400 true)))

(declare-datatypes ((tuple2!17048 0))(
  ( (tuple2!17049 (_1!8534 (_ BitVec 64)) (_2!8534 V!40651)) )
))
(declare-datatypes ((List!23690 0))(
  ( (Nil!23687) (Cons!23686 (h!24895 tuple2!17048) (t!33396 List!23690)) )
))
(declare-datatypes ((ListLongMap!15029 0))(
  ( (ListLongMap!15030 (toList!7530 List!23690)) )
))
(declare-fun lt!484246 () ListLongMap!15029)

(declare-fun lt!484250 () ListLongMap!15029)

(declare-fun -!810 (ListLongMap!15029 (_ BitVec 64)) ListLongMap!15029)

(assert (=> b!1087795 (= (-!810 lt!484246 k0!904) lt!484250)))

(declare-fun lt!484247 () ListLongMap!15029)

(declare-datatypes ((Unit!35735 0))(
  ( (Unit!35736) )
))
(declare-fun lt!484244 () Unit!35735)

(declare-fun zeroValue!831 () V!40651)

(declare-fun addRemoveCommutativeForDiffKeys!49 (ListLongMap!15029 (_ BitVec 64) V!40651 (_ BitVec 64)) Unit!35735)

(assert (=> b!1087795 (= lt!484244 (addRemoveCommutativeForDiffKeys!49 lt!484247 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun b!1087796 () Bool)

(declare-fun e!621398 () Bool)

(assert (=> b!1087796 (= e!621396 (and e!621398 mapRes!41719))))

(declare-fun condMapEmpty!41719 () Bool)

(declare-fun mapDefault!41719 () ValueCell!12612)

(assert (=> b!1087796 (= condMapEmpty!41719 (= (arr!33759 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12612)) mapDefault!41719)))))

(declare-fun b!1087797 () Bool)

(declare-fun e!621399 () Bool)

(assert (=> b!1087797 (= e!621399 e!621400)))

(declare-fun res!725569 () Bool)

(assert (=> b!1087797 (=> res!725569 e!621400)))

(assert (=> b!1087797 (= res!725569 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!484254 () ListLongMap!15029)

(assert (=> b!1087797 (= lt!484254 lt!484250)))

(declare-fun lt!484248 () ListLongMap!15029)

(declare-fun lt!484252 () tuple2!17048)

(declare-fun +!3253 (ListLongMap!15029 tuple2!17048) ListLongMap!15029)

(assert (=> b!1087797 (= lt!484250 (+!3253 lt!484248 lt!484252))))

(declare-fun lt!484251 () ListLongMap!15029)

(assert (=> b!1087797 (= lt!484251 lt!484246)))

(assert (=> b!1087797 (= lt!484246 (+!3253 lt!484247 lt!484252))))

(declare-fun lt!484255 () ListLongMap!15029)

(assert (=> b!1087797 (= lt!484254 (+!3253 lt!484255 lt!484252))))

(assert (=> b!1087797 (= lt!484252 (tuple2!17049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1087798 () Bool)

(assert (=> b!1087798 (= e!621395 (not e!621399))))

(declare-fun res!725560 () Bool)

(assert (=> b!1087798 (=> res!725560 e!621399)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1087798 (= res!725560 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40651)

(declare-fun getCurrentListMap!4282 (array!70180 array!70178 (_ BitVec 32) (_ BitVec 32) V!40651 V!40651 (_ BitVec 32) Int) ListLongMap!15029)

(assert (=> b!1087798 (= lt!484251 (getCurrentListMap!4282 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484249 () array!70178)

(assert (=> b!1087798 (= lt!484254 (getCurrentListMap!4282 lt!484253 lt!484249 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1087798 (and (= lt!484255 lt!484248) (= lt!484248 lt!484255))))

(assert (=> b!1087798 (= lt!484248 (-!810 lt!484247 k0!904))))

(declare-fun lt!484256 () Unit!35735)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!88 (array!70180 array!70178 (_ BitVec 32) (_ BitVec 32) V!40651 V!40651 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35735)

(assert (=> b!1087798 (= lt!484256 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!88 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4034 (array!70180 array!70178 (_ BitVec 32) (_ BitVec 32) V!40651 V!40651 (_ BitVec 32) Int) ListLongMap!15029)

(assert (=> b!1087798 (= lt!484255 (getCurrentListMapNoExtraKeys!4034 lt!484253 lt!484249 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2170 (Int (_ BitVec 64)) V!40651)

(assert (=> b!1087798 (= lt!484249 (array!70179 (store (arr!33759 _values!874) i!650 (ValueCellFull!12612 (dynLambda!2170 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34296 _values!874)))))

(assert (=> b!1087798 (= lt!484247 (getCurrentListMapNoExtraKeys!4034 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70180 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1087798 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!484245 () Unit!35735)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70180 (_ BitVec 64) (_ BitVec 32)) Unit!35735)

(assert (=> b!1087798 (= lt!484245 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapIsEmpty!41719 () Bool)

(assert (=> mapIsEmpty!41719 mapRes!41719))

(declare-fun b!1087799 () Bool)

(declare-fun res!725562 () Bool)

(assert (=> b!1087799 (=> (not res!725562) (not e!621397))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70180 (_ BitVec 32)) Bool)

(assert (=> b!1087799 (= res!725562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1087800 () Bool)

(declare-fun res!725565 () Bool)

(assert (=> b!1087800 (=> (not res!725565) (not e!621397))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1087800 (= res!725565 (validKeyInArray!0 k0!904))))

(declare-fun b!1087801 () Bool)

(declare-fun res!725567 () Bool)

(assert (=> b!1087801 (=> (not res!725567) (not e!621397))))

(assert (=> b!1087801 (= res!725567 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23686))))

(declare-fun b!1087802 () Bool)

(assert (=> b!1087802 (= e!621397 e!621395)))

(declare-fun res!725568 () Bool)

(assert (=> b!1087802 (=> (not res!725568) (not e!621395))))

(assert (=> b!1087802 (= res!725568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484253 mask!1414))))

(assert (=> b!1087802 (= lt!484253 (array!70181 (store (arr!33760 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34297 _keys!1070)))))

(declare-fun b!1087803 () Bool)

(assert (=> b!1087803 (= e!621398 tp_is_empty!26643)))

(declare-fun b!1087804 () Bool)

(declare-fun res!725566 () Bool)

(assert (=> b!1087804 (=> (not res!725566) (not e!621397))))

(assert (=> b!1087804 (= res!725566 (and (= (size!34296 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34297 _keys!1070) (size!34296 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1087805 () Bool)

(declare-fun res!725561 () Bool)

(assert (=> b!1087805 (=> (not res!725561) (not e!621397))))

(assert (=> b!1087805 (= res!725561 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34297 _keys!1070))))))

(assert (= (and start!96024 res!725563) b!1087804))

(assert (= (and b!1087804 res!725566) b!1087799))

(assert (= (and b!1087799 res!725562) b!1087801))

(assert (= (and b!1087801 res!725567) b!1087805))

(assert (= (and b!1087805 res!725561) b!1087800))

(assert (= (and b!1087800 res!725565) b!1087792))

(assert (= (and b!1087792 res!725564) b!1087802))

(assert (= (and b!1087802 res!725568) b!1087794))

(assert (= (and b!1087794 res!725570) b!1087798))

(assert (= (and b!1087798 (not res!725560)) b!1087797))

(assert (= (and b!1087797 (not res!725569)) b!1087795))

(assert (= (and b!1087796 condMapEmpty!41719) mapIsEmpty!41719))

(assert (= (and b!1087796 (not condMapEmpty!41719)) mapNonEmpty!41719))

(get-info :version)

(assert (= (and mapNonEmpty!41719 ((_ is ValueCellFull!12612) mapValue!41719)) b!1087793))

(assert (= (and b!1087796 ((_ is ValueCellFull!12612) mapDefault!41719)) b!1087803))

(assert (= start!96024 b!1087796))

(declare-fun b_lambda!17341 () Bool)

(assert (=> (not b_lambda!17341) (not b!1087798)))

(declare-fun t!33394 () Bool)

(declare-fun tb!7527 () Bool)

(assert (=> (and start!96024 (= defaultEntry!882 defaultEntry!882) t!33394) tb!7527))

(declare-fun result!15565 () Bool)

(assert (=> tb!7527 (= result!15565 tp_is_empty!26643)))

(assert (=> b!1087798 t!33394))

(declare-fun b_and!35977 () Bool)

(assert (= b_and!35975 (and (=> t!33394 result!15565) b_and!35977)))

(declare-fun m!1006885 () Bool)

(assert (=> b!1087802 m!1006885))

(declare-fun m!1006887 () Bool)

(assert (=> b!1087802 m!1006887))

(declare-fun m!1006889 () Bool)

(assert (=> b!1087798 m!1006889))

(declare-fun m!1006891 () Bool)

(assert (=> b!1087798 m!1006891))

(declare-fun m!1006893 () Bool)

(assert (=> b!1087798 m!1006893))

(declare-fun m!1006895 () Bool)

(assert (=> b!1087798 m!1006895))

(declare-fun m!1006897 () Bool)

(assert (=> b!1087798 m!1006897))

(declare-fun m!1006899 () Bool)

(assert (=> b!1087798 m!1006899))

(declare-fun m!1006901 () Bool)

(assert (=> b!1087798 m!1006901))

(declare-fun m!1006903 () Bool)

(assert (=> b!1087798 m!1006903))

(declare-fun m!1006905 () Bool)

(assert (=> b!1087798 m!1006905))

(declare-fun m!1006907 () Bool)

(assert (=> b!1087798 m!1006907))

(declare-fun m!1006909 () Bool)

(assert (=> b!1087794 m!1006909))

(declare-fun m!1006911 () Bool)

(assert (=> b!1087795 m!1006911))

(declare-fun m!1006913 () Bool)

(assert (=> b!1087795 m!1006913))

(declare-fun m!1006915 () Bool)

(assert (=> b!1087792 m!1006915))

(declare-fun m!1006917 () Bool)

(assert (=> b!1087801 m!1006917))

(declare-fun m!1006919 () Bool)

(assert (=> b!1087800 m!1006919))

(declare-fun m!1006921 () Bool)

(assert (=> mapNonEmpty!41719 m!1006921))

(declare-fun m!1006923 () Bool)

(assert (=> start!96024 m!1006923))

(declare-fun m!1006925 () Bool)

(assert (=> start!96024 m!1006925))

(declare-fun m!1006927 () Bool)

(assert (=> start!96024 m!1006927))

(declare-fun m!1006929 () Bool)

(assert (=> b!1087799 m!1006929))

(declare-fun m!1006931 () Bool)

(assert (=> b!1087797 m!1006931))

(declare-fun m!1006933 () Bool)

(assert (=> b!1087797 m!1006933))

(declare-fun m!1006935 () Bool)

(assert (=> b!1087797 m!1006935))

(check-sat (not b_next!22641) (not b!1087800) (not b!1087798) b_and!35977 (not b!1087801) (not start!96024) (not b!1087802) (not b!1087799) (not b!1087794) (not b!1087797) (not b!1087795) (not b_lambda!17341) tp_is_empty!26643 (not mapNonEmpty!41719))
(check-sat b_and!35977 (not b_next!22641))
