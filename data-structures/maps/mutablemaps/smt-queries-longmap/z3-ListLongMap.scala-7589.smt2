; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95892 () Bool)

(assert start!95892)

(declare-fun b_free!22509 () Bool)

(declare-fun b_next!22509 () Bool)

(assert (=> start!95892 (= b_free!22509 (not b_next!22509))))

(declare-fun tp!79376 () Bool)

(declare-fun b_and!35711 () Bool)

(assert (=> start!95892 (= tp!79376 b_and!35711)))

(declare-fun mapIsEmpty!41521 () Bool)

(declare-fun mapRes!41521 () Bool)

(assert (=> mapIsEmpty!41521 mapRes!41521))

(declare-fun b!1084879 () Bool)

(declare-fun e!619815 () Bool)

(declare-fun e!619812 () Bool)

(assert (=> b!1084879 (= e!619815 (not e!619812))))

(declare-fun res!723383 () Bool)

(assert (=> b!1084879 (=> res!723383 e!619812)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1084879 (= res!723383 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40475 0))(
  ( (V!40476 (val!13312 Int)) )
))
(declare-fun minValue!831 () V!40475)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!16940 0))(
  ( (tuple2!16941 (_1!8480 (_ BitVec 64)) (_2!8480 V!40475)) )
))
(declare-datatypes ((List!23582 0))(
  ( (Nil!23579) (Cons!23578 (h!24787 tuple2!16940) (t!33156 List!23582)) )
))
(declare-datatypes ((ListLongMap!14921 0))(
  ( (ListLongMap!14922 (toList!7476 List!23582)) )
))
(declare-fun lt!481069 () ListLongMap!14921)

(declare-fun zeroValue!831 () V!40475)

(declare-datatypes ((array!69924 0))(
  ( (array!69925 (arr!33632 (Array (_ BitVec 32) (_ BitVec 64))) (size!34169 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69924)

(declare-datatypes ((ValueCell!12546 0))(
  ( (ValueCellFull!12546 (v!15934 V!40475)) (EmptyCell!12546) )
))
(declare-datatypes ((array!69926 0))(
  ( (array!69927 (arr!33633 (Array (_ BitVec 32) ValueCell!12546)) (size!34170 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69926)

(declare-fun getCurrentListMap!4233 (array!69924 array!69926 (_ BitVec 32) (_ BitVec 32) V!40475 V!40475 (_ BitVec 32) Int) ListLongMap!14921)

(assert (=> b!1084879 (= lt!481069 (getCurrentListMap!4233 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481073 () ListLongMap!14921)

(declare-fun lt!481079 () array!69926)

(declare-fun lt!481075 () array!69924)

(assert (=> b!1084879 (= lt!481073 (getCurrentListMap!4233 lt!481075 lt!481079 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481070 () ListLongMap!14921)

(declare-fun lt!481076 () ListLongMap!14921)

(assert (=> b!1084879 (and (= lt!481070 lt!481076) (= lt!481076 lt!481070))))

(declare-fun lt!481077 () ListLongMap!14921)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!757 (ListLongMap!14921 (_ BitVec 64)) ListLongMap!14921)

(assert (=> b!1084879 (= lt!481076 (-!757 lt!481077 k0!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35629 0))(
  ( (Unit!35630) )
))
(declare-fun lt!481082 () Unit!35629)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!39 (array!69924 array!69926 (_ BitVec 32) (_ BitVec 32) V!40475 V!40475 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35629)

(assert (=> b!1084879 (= lt!481082 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!39 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3985 (array!69924 array!69926 (_ BitVec 32) (_ BitVec 32) V!40475 V!40475 (_ BitVec 32) Int) ListLongMap!14921)

(assert (=> b!1084879 (= lt!481070 (getCurrentListMapNoExtraKeys!3985 lt!481075 lt!481079 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2121 (Int (_ BitVec 64)) V!40475)

(assert (=> b!1084879 (= lt!481079 (array!69927 (store (arr!33633 _values!874) i!650 (ValueCellFull!12546 (dynLambda!2121 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34170 _values!874)))))

(assert (=> b!1084879 (= lt!481077 (getCurrentListMapNoExtraKeys!3985 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69924 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1084879 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!481084 () Unit!35629)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69924 (_ BitVec 64) (_ BitVec 32)) Unit!35629)

(assert (=> b!1084879 (= lt!481084 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1084880 () Bool)

(declare-fun res!723378 () Bool)

(assert (=> b!1084880 (=> (not res!723378) (not e!619815))))

(declare-datatypes ((List!23583 0))(
  ( (Nil!23580) (Cons!23579 (h!24788 (_ BitVec 64)) (t!33157 List!23583)) )
))
(declare-fun arrayNoDuplicates!0 (array!69924 (_ BitVec 32) List!23583) Bool)

(assert (=> b!1084880 (= res!723378 (arrayNoDuplicates!0 lt!481075 #b00000000000000000000000000000000 Nil!23580))))

(declare-fun res!723373 () Bool)

(declare-fun e!619809 () Bool)

(assert (=> start!95892 (=> (not res!723373) (not e!619809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95892 (= res!723373 (validMask!0 mask!1414))))

(assert (=> start!95892 e!619809))

(assert (=> start!95892 tp!79376))

(assert (=> start!95892 true))

(declare-fun tp_is_empty!26511 () Bool)

(assert (=> start!95892 tp_is_empty!26511))

(declare-fun array_inv!25808 (array!69924) Bool)

(assert (=> start!95892 (array_inv!25808 _keys!1070)))

(declare-fun e!619810 () Bool)

(declare-fun array_inv!25809 (array!69926) Bool)

(assert (=> start!95892 (and (array_inv!25809 _values!874) e!619810)))

(declare-fun b!1084881 () Bool)

(declare-fun res!723381 () Bool)

(assert (=> b!1084881 (=> (not res!723381) (not e!619809))))

(assert (=> b!1084881 (= res!723381 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34169 _keys!1070))))))

(declare-fun b!1084882 () Bool)

(declare-fun res!723380 () Bool)

(assert (=> b!1084882 (=> (not res!723380) (not e!619809))))

(assert (=> b!1084882 (= res!723380 (and (= (size!34170 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34169 _keys!1070) (size!34170 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1084883 () Bool)

(declare-fun e!619813 () Bool)

(assert (=> b!1084883 (= e!619812 e!619813)))

(declare-fun res!723382 () Bool)

(assert (=> b!1084883 (=> res!723382 e!619813)))

(assert (=> b!1084883 (= res!723382 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!481085 () ListLongMap!14921)

(declare-fun lt!481071 () ListLongMap!14921)

(assert (=> b!1084883 (= lt!481085 lt!481071)))

(declare-fun lt!481083 () ListLongMap!14921)

(assert (=> b!1084883 (= lt!481085 (-!757 lt!481083 k0!904))))

(declare-fun lt!481072 () Unit!35629)

(declare-fun addRemoveCommutativeForDiffKeys!4 (ListLongMap!14921 (_ BitVec 64) V!40475 (_ BitVec 64)) Unit!35629)

(assert (=> b!1084883 (= lt!481072 (addRemoveCommutativeForDiffKeys!4 lt!481077 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!481078 () tuple2!16940)

(declare-fun +!3208 (ListLongMap!14921 tuple2!16940) ListLongMap!14921)

(assert (=> b!1084883 (= lt!481073 (+!3208 lt!481071 lt!481078))))

(declare-fun lt!481080 () tuple2!16940)

(assert (=> b!1084883 (= lt!481071 (+!3208 lt!481076 lt!481080))))

(declare-fun lt!481074 () ListLongMap!14921)

(assert (=> b!1084883 (= lt!481069 lt!481074)))

(assert (=> b!1084883 (= lt!481074 (+!3208 lt!481083 lt!481078))))

(assert (=> b!1084883 (= lt!481083 (+!3208 lt!481077 lt!481080))))

(assert (=> b!1084883 (= lt!481073 (+!3208 (+!3208 lt!481070 lt!481080) lt!481078))))

(assert (=> b!1084883 (= lt!481078 (tuple2!16941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1084883 (= lt!481080 (tuple2!16941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1084884 () Bool)

(assert (=> b!1084884 (= e!619813 true)))

(assert (=> b!1084884 (= (-!757 lt!481074 k0!904) (+!3208 lt!481085 lt!481078))))

(declare-fun lt!481081 () Unit!35629)

(assert (=> b!1084884 (= lt!481081 (addRemoveCommutativeForDiffKeys!4 lt!481083 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1084885 () Bool)

(declare-fun res!723377 () Bool)

(assert (=> b!1084885 (=> (not res!723377) (not e!619809))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1084885 (= res!723377 (validKeyInArray!0 k0!904))))

(declare-fun b!1084886 () Bool)

(declare-fun e!619814 () Bool)

(assert (=> b!1084886 (= e!619810 (and e!619814 mapRes!41521))))

(declare-fun condMapEmpty!41521 () Bool)

(declare-fun mapDefault!41521 () ValueCell!12546)

(assert (=> b!1084886 (= condMapEmpty!41521 (= (arr!33633 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12546)) mapDefault!41521)))))

(declare-fun mapNonEmpty!41521 () Bool)

(declare-fun tp!79377 () Bool)

(declare-fun e!619816 () Bool)

(assert (=> mapNonEmpty!41521 (= mapRes!41521 (and tp!79377 e!619816))))

(declare-fun mapRest!41521 () (Array (_ BitVec 32) ValueCell!12546))

(declare-fun mapValue!41521 () ValueCell!12546)

(declare-fun mapKey!41521 () (_ BitVec 32))

(assert (=> mapNonEmpty!41521 (= (arr!33633 _values!874) (store mapRest!41521 mapKey!41521 mapValue!41521))))

(declare-fun b!1084887 () Bool)

(declare-fun res!723379 () Bool)

(assert (=> b!1084887 (=> (not res!723379) (not e!619809))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69924 (_ BitVec 32)) Bool)

(assert (=> b!1084887 (= res!723379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1084888 () Bool)

(declare-fun res!723374 () Bool)

(assert (=> b!1084888 (=> (not res!723374) (not e!619809))))

(assert (=> b!1084888 (= res!723374 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23580))))

(declare-fun b!1084889 () Bool)

(assert (=> b!1084889 (= e!619809 e!619815)))

(declare-fun res!723376 () Bool)

(assert (=> b!1084889 (=> (not res!723376) (not e!619815))))

(assert (=> b!1084889 (= res!723376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!481075 mask!1414))))

(assert (=> b!1084889 (= lt!481075 (array!69925 (store (arr!33632 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34169 _keys!1070)))))

(declare-fun b!1084890 () Bool)

(assert (=> b!1084890 (= e!619814 tp_is_empty!26511)))

(declare-fun b!1084891 () Bool)

(assert (=> b!1084891 (= e!619816 tp_is_empty!26511)))

(declare-fun b!1084892 () Bool)

(declare-fun res!723375 () Bool)

(assert (=> b!1084892 (=> (not res!723375) (not e!619809))))

(assert (=> b!1084892 (= res!723375 (= (select (arr!33632 _keys!1070) i!650) k0!904))))

(assert (= (and start!95892 res!723373) b!1084882))

(assert (= (and b!1084882 res!723380) b!1084887))

(assert (= (and b!1084887 res!723379) b!1084888))

(assert (= (and b!1084888 res!723374) b!1084881))

(assert (= (and b!1084881 res!723381) b!1084885))

(assert (= (and b!1084885 res!723377) b!1084892))

(assert (= (and b!1084892 res!723375) b!1084889))

(assert (= (and b!1084889 res!723376) b!1084880))

(assert (= (and b!1084880 res!723378) b!1084879))

(assert (= (and b!1084879 (not res!723383)) b!1084883))

(assert (= (and b!1084883 (not res!723382)) b!1084884))

(assert (= (and b!1084886 condMapEmpty!41521) mapIsEmpty!41521))

(assert (= (and b!1084886 (not condMapEmpty!41521)) mapNonEmpty!41521))

(get-info :version)

(assert (= (and mapNonEmpty!41521 ((_ is ValueCellFull!12546) mapValue!41521)) b!1084891))

(assert (= (and b!1084886 ((_ is ValueCellFull!12546) mapDefault!41521)) b!1084890))

(assert (= start!95892 b!1084886))

(declare-fun b_lambda!17209 () Bool)

(assert (=> (not b_lambda!17209) (not b!1084879)))

(declare-fun t!33155 () Bool)

(declare-fun tb!7395 () Bool)

(assert (=> (and start!95892 (= defaultEntry!882 defaultEntry!882) t!33155) tb!7395))

(declare-fun result!15301 () Bool)

(assert (=> tb!7395 (= result!15301 tp_is_empty!26511)))

(assert (=> b!1084879 t!33155))

(declare-fun b_and!35713 () Bool)

(assert (= b_and!35711 (and (=> t!33155 result!15301) b_and!35713)))

(declare-fun m!1002829 () Bool)

(assert (=> b!1084879 m!1002829))

(declare-fun m!1002831 () Bool)

(assert (=> b!1084879 m!1002831))

(declare-fun m!1002833 () Bool)

(assert (=> b!1084879 m!1002833))

(declare-fun m!1002835 () Bool)

(assert (=> b!1084879 m!1002835))

(declare-fun m!1002837 () Bool)

(assert (=> b!1084879 m!1002837))

(declare-fun m!1002839 () Bool)

(assert (=> b!1084879 m!1002839))

(declare-fun m!1002841 () Bool)

(assert (=> b!1084879 m!1002841))

(declare-fun m!1002843 () Bool)

(assert (=> b!1084879 m!1002843))

(declare-fun m!1002845 () Bool)

(assert (=> b!1084879 m!1002845))

(declare-fun m!1002847 () Bool)

(assert (=> b!1084879 m!1002847))

(declare-fun m!1002849 () Bool)

(assert (=> b!1084884 m!1002849))

(declare-fun m!1002851 () Bool)

(assert (=> b!1084884 m!1002851))

(declare-fun m!1002853 () Bool)

(assert (=> b!1084884 m!1002853))

(declare-fun m!1002855 () Bool)

(assert (=> b!1084892 m!1002855))

(declare-fun m!1002857 () Bool)

(assert (=> b!1084883 m!1002857))

(declare-fun m!1002859 () Bool)

(assert (=> b!1084883 m!1002859))

(declare-fun m!1002861 () Bool)

(assert (=> b!1084883 m!1002861))

(assert (=> b!1084883 m!1002859))

(declare-fun m!1002863 () Bool)

(assert (=> b!1084883 m!1002863))

(declare-fun m!1002865 () Bool)

(assert (=> b!1084883 m!1002865))

(declare-fun m!1002867 () Bool)

(assert (=> b!1084883 m!1002867))

(declare-fun m!1002869 () Bool)

(assert (=> b!1084883 m!1002869))

(declare-fun m!1002871 () Bool)

(assert (=> b!1084883 m!1002871))

(declare-fun m!1002873 () Bool)

(assert (=> b!1084887 m!1002873))

(declare-fun m!1002875 () Bool)

(assert (=> b!1084885 m!1002875))

(declare-fun m!1002877 () Bool)

(assert (=> mapNonEmpty!41521 m!1002877))

(declare-fun m!1002879 () Bool)

(assert (=> b!1084880 m!1002879))

(declare-fun m!1002881 () Bool)

(assert (=> start!95892 m!1002881))

(declare-fun m!1002883 () Bool)

(assert (=> start!95892 m!1002883))

(declare-fun m!1002885 () Bool)

(assert (=> start!95892 m!1002885))

(declare-fun m!1002887 () Bool)

(assert (=> b!1084888 m!1002887))

(declare-fun m!1002889 () Bool)

(assert (=> b!1084889 m!1002889))

(declare-fun m!1002891 () Bool)

(assert (=> b!1084889 m!1002891))

(check-sat (not b!1084889) b_and!35713 (not b!1084888) (not b!1084879) (not b!1084887) (not b_lambda!17209) (not mapNonEmpty!41521) (not start!95892) (not b!1084884) (not b!1084880) (not b_next!22509) (not b!1084883) (not b!1084885) tp_is_empty!26511)
(check-sat b_and!35713 (not b_next!22509))
