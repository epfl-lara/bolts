; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96060 () Bool)

(assert start!96060)

(declare-fun b_free!22677 () Bool)

(declare-fun b_next!22677 () Bool)

(assert (=> start!96060 (= b_free!22677 (not b_next!22677))))

(declare-fun tp!79881 () Bool)

(declare-fun b_and!36047 () Bool)

(assert (=> start!96060 (= tp!79881 b_and!36047)))

(declare-fun b!1088584 () Bool)

(declare-fun e!621827 () Bool)

(declare-fun tp_is_empty!26679 () Bool)

(assert (=> b!1088584 (= e!621827 tp_is_empty!26679)))

(declare-fun b!1088585 () Bool)

(declare-fun res!726164 () Bool)

(declare-fun e!621830 () Bool)

(assert (=> b!1088585 (=> (not res!726164) (not e!621830))))

(declare-datatypes ((array!70250 0))(
  ( (array!70251 (arr!33795 (Array (_ BitVec 32) (_ BitVec 64))) (size!34332 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70250)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1088585 (= res!726164 (= (select (arr!33795 _keys!1070) i!650) k0!904))))

(declare-fun res!726158 () Bool)

(assert (=> start!96060 (=> (not res!726158) (not e!621830))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96060 (= res!726158 (validMask!0 mask!1414))))

(assert (=> start!96060 e!621830))

(assert (=> start!96060 tp!79881))

(assert (=> start!96060 true))

(assert (=> start!96060 tp_is_empty!26679))

(declare-fun array_inv!25930 (array!70250) Bool)

(assert (=> start!96060 (array_inv!25930 _keys!1070)))

(declare-datatypes ((V!40699 0))(
  ( (V!40700 (val!13396 Int)) )
))
(declare-datatypes ((ValueCell!12630 0))(
  ( (ValueCellFull!12630 (v!16018 V!40699)) (EmptyCell!12630) )
))
(declare-datatypes ((array!70252 0))(
  ( (array!70253 (arr!33796 (Array (_ BitVec 32) ValueCell!12630)) (size!34333 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70252)

(declare-fun e!621831 () Bool)

(declare-fun array_inv!25931 (array!70252) Bool)

(assert (=> start!96060 (and (array_inv!25931 _values!874) e!621831)))

(declare-fun b!1088586 () Bool)

(declare-fun e!621828 () Bool)

(declare-fun e!621829 () Bool)

(assert (=> b!1088586 (= e!621828 e!621829)))

(declare-fun res!726156 () Bool)

(assert (=> b!1088586 (=> res!726156 e!621829)))

(assert (=> b!1088586 (= res!726156 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((tuple2!17082 0))(
  ( (tuple2!17083 (_1!8551 (_ BitVec 64)) (_2!8551 V!40699)) )
))
(declare-datatypes ((List!23721 0))(
  ( (Nil!23718) (Cons!23717 (h!24926 tuple2!17082) (t!33463 List!23721)) )
))
(declare-datatypes ((ListLongMap!15063 0))(
  ( (ListLongMap!15064 (toList!7547 List!23721)) )
))
(declare-fun lt!484954 () ListLongMap!15063)

(declare-fun lt!484948 () ListLongMap!15063)

(assert (=> b!1088586 (= lt!484954 lt!484948)))

(declare-fun lt!484952 () ListLongMap!15063)

(declare-fun lt!484950 () tuple2!17082)

(declare-fun +!3266 (ListLongMap!15063 tuple2!17082) ListLongMap!15063)

(assert (=> b!1088586 (= lt!484948 (+!3266 lt!484952 lt!484950))))

(declare-fun lt!484951 () ListLongMap!15063)

(declare-fun lt!484955 () ListLongMap!15063)

(assert (=> b!1088586 (= lt!484951 lt!484955)))

(declare-fun lt!484949 () ListLongMap!15063)

(assert (=> b!1088586 (= lt!484955 (+!3266 lt!484949 lt!484950))))

(declare-fun lt!484958 () ListLongMap!15063)

(assert (=> b!1088586 (= lt!484954 (+!3266 lt!484958 lt!484950))))

(declare-fun zeroValue!831 () V!40699)

(assert (=> b!1088586 (= lt!484950 (tuple2!17083 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1088587 () Bool)

(declare-fun res!726159 () Bool)

(assert (=> b!1088587 (=> (not res!726159) (not e!621830))))

(declare-datatypes ((List!23722 0))(
  ( (Nil!23719) (Cons!23718 (h!24927 (_ BitVec 64)) (t!33464 List!23722)) )
))
(declare-fun arrayNoDuplicates!0 (array!70250 (_ BitVec 32) List!23722) Bool)

(assert (=> b!1088587 (= res!726159 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23719))))

(declare-fun mapIsEmpty!41773 () Bool)

(declare-fun mapRes!41773 () Bool)

(assert (=> mapIsEmpty!41773 mapRes!41773))

(declare-fun b!1088588 () Bool)

(declare-fun res!726157 () Bool)

(assert (=> b!1088588 (=> (not res!726157) (not e!621830))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1088588 (= res!726157 (validKeyInArray!0 k0!904))))

(declare-fun mapNonEmpty!41773 () Bool)

(declare-fun tp!79880 () Bool)

(assert (=> mapNonEmpty!41773 (= mapRes!41773 (and tp!79880 e!621827))))

(declare-fun mapValue!41773 () ValueCell!12630)

(declare-fun mapKey!41773 () (_ BitVec 32))

(declare-fun mapRest!41773 () (Array (_ BitVec 32) ValueCell!12630))

(assert (=> mapNonEmpty!41773 (= (arr!33796 _values!874) (store mapRest!41773 mapKey!41773 mapValue!41773))))

(declare-fun b!1088589 () Bool)

(declare-fun e!621825 () Bool)

(assert (=> b!1088589 (= e!621830 e!621825)))

(declare-fun res!726161 () Bool)

(assert (=> b!1088589 (=> (not res!726161) (not e!621825))))

(declare-fun lt!484947 () array!70250)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70250 (_ BitVec 32)) Bool)

(assert (=> b!1088589 (= res!726161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484947 mask!1414))))

(assert (=> b!1088589 (= lt!484947 (array!70251 (store (arr!33795 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34332 _keys!1070)))))

(declare-fun b!1088590 () Bool)

(declare-fun res!726155 () Bool)

(assert (=> b!1088590 (=> (not res!726155) (not e!621830))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1088590 (= res!726155 (and (= (size!34333 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34332 _keys!1070) (size!34333 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1088591 () Bool)

(declare-fun res!726162 () Bool)

(assert (=> b!1088591 (=> (not res!726162) (not e!621825))))

(assert (=> b!1088591 (= res!726162 (arrayNoDuplicates!0 lt!484947 #b00000000000000000000000000000000 Nil!23719))))

(declare-fun b!1088592 () Bool)

(declare-fun e!621826 () Bool)

(assert (=> b!1088592 (= e!621826 tp_is_empty!26679)))

(declare-fun b!1088593 () Bool)

(declare-fun res!726160 () Bool)

(assert (=> b!1088593 (=> (not res!726160) (not e!621830))))

(assert (=> b!1088593 (= res!726160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1088594 () Bool)

(assert (=> b!1088594 (= e!621831 (and e!621826 mapRes!41773))))

(declare-fun condMapEmpty!41773 () Bool)

(declare-fun mapDefault!41773 () ValueCell!12630)

(assert (=> b!1088594 (= condMapEmpty!41773 (= (arr!33796 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12630)) mapDefault!41773)))))

(declare-fun b!1088595 () Bool)

(declare-fun res!726154 () Bool)

(assert (=> b!1088595 (=> (not res!726154) (not e!621830))))

(assert (=> b!1088595 (= res!726154 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34332 _keys!1070))))))

(declare-fun b!1088596 () Bool)

(assert (=> b!1088596 (= e!621829 true)))

(declare-fun -!827 (ListLongMap!15063 (_ BitVec 64)) ListLongMap!15063)

(assert (=> b!1088596 (= (-!827 lt!484955 k0!904) lt!484948)))

(declare-datatypes ((Unit!35769 0))(
  ( (Unit!35770) )
))
(declare-fun lt!484956 () Unit!35769)

(declare-fun addRemoveCommutativeForDiffKeys!63 (ListLongMap!15063 (_ BitVec 64) V!40699 (_ BitVec 64)) Unit!35769)

(assert (=> b!1088596 (= lt!484956 (addRemoveCommutativeForDiffKeys!63 lt!484949 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun b!1088597 () Bool)

(assert (=> b!1088597 (= e!621825 (not e!621828))))

(declare-fun res!726163 () Bool)

(assert (=> b!1088597 (=> res!726163 e!621828)))

(assert (=> b!1088597 (= res!726163 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40699)

(declare-fun getCurrentListMap!4296 (array!70250 array!70252 (_ BitVec 32) (_ BitVec 32) V!40699 V!40699 (_ BitVec 32) Int) ListLongMap!15063)

(assert (=> b!1088597 (= lt!484951 (getCurrentListMap!4296 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484946 () array!70252)

(assert (=> b!1088597 (= lt!484954 (getCurrentListMap!4296 lt!484947 lt!484946 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1088597 (and (= lt!484958 lt!484952) (= lt!484952 lt!484958))))

(assert (=> b!1088597 (= lt!484952 (-!827 lt!484949 k0!904))))

(declare-fun lt!484953 () Unit!35769)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!102 (array!70250 array!70252 (_ BitVec 32) (_ BitVec 32) V!40699 V!40699 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35769)

(assert (=> b!1088597 (= lt!484953 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!102 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4048 (array!70250 array!70252 (_ BitVec 32) (_ BitVec 32) V!40699 V!40699 (_ BitVec 32) Int) ListLongMap!15063)

(assert (=> b!1088597 (= lt!484958 (getCurrentListMapNoExtraKeys!4048 lt!484947 lt!484946 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2184 (Int (_ BitVec 64)) V!40699)

(assert (=> b!1088597 (= lt!484946 (array!70253 (store (arr!33796 _values!874) i!650 (ValueCellFull!12630 (dynLambda!2184 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34333 _values!874)))))

(assert (=> b!1088597 (= lt!484949 (getCurrentListMapNoExtraKeys!4048 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70250 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1088597 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!484957 () Unit!35769)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70250 (_ BitVec 64) (_ BitVec 32)) Unit!35769)

(assert (=> b!1088597 (= lt!484957 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(assert (= (and start!96060 res!726158) b!1088590))

(assert (= (and b!1088590 res!726155) b!1088593))

(assert (= (and b!1088593 res!726160) b!1088587))

(assert (= (and b!1088587 res!726159) b!1088595))

(assert (= (and b!1088595 res!726154) b!1088588))

(assert (= (and b!1088588 res!726157) b!1088585))

(assert (= (and b!1088585 res!726164) b!1088589))

(assert (= (and b!1088589 res!726161) b!1088591))

(assert (= (and b!1088591 res!726162) b!1088597))

(assert (= (and b!1088597 (not res!726163)) b!1088586))

(assert (= (and b!1088586 (not res!726156)) b!1088596))

(assert (= (and b!1088594 condMapEmpty!41773) mapIsEmpty!41773))

(assert (= (and b!1088594 (not condMapEmpty!41773)) mapNonEmpty!41773))

(get-info :version)

(assert (= (and mapNonEmpty!41773 ((_ is ValueCellFull!12630) mapValue!41773)) b!1088584))

(assert (= (and b!1088594 ((_ is ValueCellFull!12630) mapDefault!41773)) b!1088592))

(assert (= start!96060 b!1088594))

(declare-fun b_lambda!17377 () Bool)

(assert (=> (not b_lambda!17377) (not b!1088597)))

(declare-fun t!33462 () Bool)

(declare-fun tb!7563 () Bool)

(assert (=> (and start!96060 (= defaultEntry!882 defaultEntry!882) t!33462) tb!7563))

(declare-fun result!15637 () Bool)

(assert (=> tb!7563 (= result!15637 tp_is_empty!26679)))

(assert (=> b!1088597 t!33462))

(declare-fun b_and!36049 () Bool)

(assert (= b_and!36047 (and (=> t!33462 result!15637) b_and!36049)))

(declare-fun m!1007821 () Bool)

(assert (=> b!1088587 m!1007821))

(declare-fun m!1007823 () Bool)

(assert (=> b!1088593 m!1007823))

(declare-fun m!1007825 () Bool)

(assert (=> b!1088596 m!1007825))

(declare-fun m!1007827 () Bool)

(assert (=> b!1088596 m!1007827))

(declare-fun m!1007829 () Bool)

(assert (=> mapNonEmpty!41773 m!1007829))

(declare-fun m!1007831 () Bool)

(assert (=> b!1088586 m!1007831))

(declare-fun m!1007833 () Bool)

(assert (=> b!1088586 m!1007833))

(declare-fun m!1007835 () Bool)

(assert (=> b!1088586 m!1007835))

(declare-fun m!1007837 () Bool)

(assert (=> start!96060 m!1007837))

(declare-fun m!1007839 () Bool)

(assert (=> start!96060 m!1007839))

(declare-fun m!1007841 () Bool)

(assert (=> start!96060 m!1007841))

(declare-fun m!1007843 () Bool)

(assert (=> b!1088585 m!1007843))

(declare-fun m!1007845 () Bool)

(assert (=> b!1088588 m!1007845))

(declare-fun m!1007847 () Bool)

(assert (=> b!1088589 m!1007847))

(declare-fun m!1007849 () Bool)

(assert (=> b!1088589 m!1007849))

(declare-fun m!1007851 () Bool)

(assert (=> b!1088591 m!1007851))

(declare-fun m!1007853 () Bool)

(assert (=> b!1088597 m!1007853))

(declare-fun m!1007855 () Bool)

(assert (=> b!1088597 m!1007855))

(declare-fun m!1007857 () Bool)

(assert (=> b!1088597 m!1007857))

(declare-fun m!1007859 () Bool)

(assert (=> b!1088597 m!1007859))

(declare-fun m!1007861 () Bool)

(assert (=> b!1088597 m!1007861))

(declare-fun m!1007863 () Bool)

(assert (=> b!1088597 m!1007863))

(declare-fun m!1007865 () Bool)

(assert (=> b!1088597 m!1007865))

(declare-fun m!1007867 () Bool)

(assert (=> b!1088597 m!1007867))

(declare-fun m!1007869 () Bool)

(assert (=> b!1088597 m!1007869))

(declare-fun m!1007871 () Bool)

(assert (=> b!1088597 m!1007871))

(check-sat (not b_next!22677) (not b!1088597) b_and!36049 (not b!1088591) (not mapNonEmpty!41773) (not b!1088596) (not b!1088593) (not b!1088587) (not b!1088586) tp_is_empty!26679 (not b!1088589) (not b_lambda!17377) (not start!96060) (not b!1088588))
(check-sat b_and!36049 (not b_next!22677))
