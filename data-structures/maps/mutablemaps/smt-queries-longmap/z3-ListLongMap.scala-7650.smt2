; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96258 () Bool)

(assert start!96258)

(declare-fun b_free!22875 () Bool)

(declare-fun b_next!22875 () Bool)

(assert (=> start!96258 (= b_free!22875 (not b_next!22875))))

(declare-fun tp!80475 () Bool)

(declare-fun b_and!36443 () Bool)

(assert (=> start!96258 (= tp!80475 b_and!36443)))

(declare-fun b!1092849 () Bool)

(declare-fun res!729335 () Bool)

(declare-fun e!624101 () Bool)

(assert (=> b!1092849 (=> (not res!729335) (not e!624101))))

(declare-datatypes ((array!70628 0))(
  ( (array!70629 (arr!33984 (Array (_ BitVec 32) (_ BitVec 64))) (size!34521 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70628)

(declare-datatypes ((List!23876 0))(
  ( (Nil!23873) (Cons!23872 (h!25081 (_ BitVec 64)) (t!33816 List!23876)) )
))
(declare-fun arrayNoDuplicates!0 (array!70628 (_ BitVec 32) List!23876) Bool)

(assert (=> b!1092849 (= res!729335 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23873))))

(declare-fun b!1092850 () Bool)

(declare-fun res!729334 () Bool)

(assert (=> b!1092850 (=> (not res!729334) (not e!624101))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1092850 (= res!729334 (= (select (arr!33984 _keys!1070) i!650) k0!904))))

(declare-fun b!1092851 () Bool)

(declare-fun res!729336 () Bool)

(assert (=> b!1092851 (=> (not res!729336) (not e!624101))))

(assert (=> b!1092851 (= res!729336 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34521 _keys!1070))))))

(declare-fun b!1092852 () Bool)

(declare-fun res!729337 () Bool)

(assert (=> b!1092852 (=> (not res!729337) (not e!624101))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70628 (_ BitVec 32)) Bool)

(assert (=> b!1092852 (= res!729337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1092853 () Bool)

(declare-fun res!729330 () Bool)

(assert (=> b!1092853 (=> (not res!729330) (not e!624101))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40963 0))(
  ( (V!40964 (val!13495 Int)) )
))
(declare-datatypes ((ValueCell!12729 0))(
  ( (ValueCellFull!12729 (v!16117 V!40963)) (EmptyCell!12729) )
))
(declare-datatypes ((array!70630 0))(
  ( (array!70631 (arr!33985 (Array (_ BitVec 32) ValueCell!12729)) (size!34522 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70630)

(assert (=> b!1092853 (= res!729330 (and (= (size!34522 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34521 _keys!1070) (size!34522 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1092854 () Bool)

(declare-fun e!624104 () Bool)

(declare-fun e!624105 () Bool)

(declare-fun mapRes!42070 () Bool)

(assert (=> b!1092854 (= e!624104 (and e!624105 mapRes!42070))))

(declare-fun condMapEmpty!42070 () Bool)

(declare-fun mapDefault!42070 () ValueCell!12729)

(assert (=> b!1092854 (= condMapEmpty!42070 (= (arr!33985 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12729)) mapDefault!42070)))))

(declare-fun mapNonEmpty!42070 () Bool)

(declare-fun tp!80474 () Bool)

(declare-fun e!624106 () Bool)

(assert (=> mapNonEmpty!42070 (= mapRes!42070 (and tp!80474 e!624106))))

(declare-fun mapValue!42070 () ValueCell!12729)

(declare-fun mapRest!42070 () (Array (_ BitVec 32) ValueCell!12729))

(declare-fun mapKey!42070 () (_ BitVec 32))

(assert (=> mapNonEmpty!42070 (= (arr!33985 _values!874) (store mapRest!42070 mapKey!42070 mapValue!42070))))

(declare-fun b!1092855 () Bool)

(declare-fun e!624103 () Bool)

(assert (=> b!1092855 (= e!624101 e!624103)))

(declare-fun res!729333 () Bool)

(assert (=> b!1092855 (=> (not res!729333) (not e!624103))))

(declare-fun lt!488587 () array!70628)

(assert (=> b!1092855 (= res!729333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488587 mask!1414))))

(assert (=> b!1092855 (= lt!488587 (array!70629 (store (arr!33984 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34521 _keys!1070)))))

(declare-fun b!1092856 () Bool)

(declare-fun res!729331 () Bool)

(assert (=> b!1092856 (=> (not res!729331) (not e!624103))))

(assert (=> b!1092856 (= res!729331 (arrayNoDuplicates!0 lt!488587 #b00000000000000000000000000000000 Nil!23873))))

(declare-fun mapIsEmpty!42070 () Bool)

(assert (=> mapIsEmpty!42070 mapRes!42070))

(declare-fun res!729332 () Bool)

(assert (=> start!96258 (=> (not res!729332) (not e!624101))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96258 (= res!729332 (validMask!0 mask!1414))))

(assert (=> start!96258 e!624101))

(assert (=> start!96258 tp!80475))

(assert (=> start!96258 true))

(declare-fun tp_is_empty!26877 () Bool)

(assert (=> start!96258 tp_is_empty!26877))

(declare-fun array_inv!26048 (array!70628) Bool)

(assert (=> start!96258 (array_inv!26048 _keys!1070)))

(declare-fun array_inv!26049 (array!70630) Bool)

(assert (=> start!96258 (and (array_inv!26049 _values!874) e!624104)))

(declare-fun b!1092857 () Bool)

(assert (=> b!1092857 (= e!624103 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40963)

(declare-datatypes ((tuple2!17234 0))(
  ( (tuple2!17235 (_1!8627 (_ BitVec 64)) (_2!8627 V!40963)) )
))
(declare-datatypes ((List!23877 0))(
  ( (Nil!23874) (Cons!23873 (h!25082 tuple2!17234) (t!33817 List!23877)) )
))
(declare-datatypes ((ListLongMap!15215 0))(
  ( (ListLongMap!15216 (toList!7623 List!23877)) )
))
(declare-fun lt!488580 () ListLongMap!15215)

(declare-fun zeroValue!831 () V!40963)

(declare-fun getCurrentListMap!4358 (array!70628 array!70630 (_ BitVec 32) (_ BitVec 32) V!40963 V!40963 (_ BitVec 32) Int) ListLongMap!15215)

(assert (=> b!1092857 (= lt!488580 (getCurrentListMap!4358 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488584 () array!70630)

(declare-fun lt!488585 () ListLongMap!15215)

(assert (=> b!1092857 (= lt!488585 (getCurrentListMap!4358 lt!488587 lt!488584 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488586 () ListLongMap!15215)

(declare-fun lt!488588 () ListLongMap!15215)

(assert (=> b!1092857 (and (= lt!488586 lt!488588) (= lt!488588 lt!488586))))

(declare-fun lt!488581 () ListLongMap!15215)

(declare-fun -!899 (ListLongMap!15215 (_ BitVec 64)) ListLongMap!15215)

(assert (=> b!1092857 (= lt!488588 (-!899 lt!488581 k0!904))))

(declare-datatypes ((Unit!35913 0))(
  ( (Unit!35914) )
))
(declare-fun lt!488583 () Unit!35913)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!164 (array!70628 array!70630 (_ BitVec 32) (_ BitVec 32) V!40963 V!40963 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35913)

(assert (=> b!1092857 (= lt!488583 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!164 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4110 (array!70628 array!70630 (_ BitVec 32) (_ BitVec 32) V!40963 V!40963 (_ BitVec 32) Int) ListLongMap!15215)

(assert (=> b!1092857 (= lt!488586 (getCurrentListMapNoExtraKeys!4110 lt!488587 lt!488584 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2246 (Int (_ BitVec 64)) V!40963)

(assert (=> b!1092857 (= lt!488584 (array!70631 (store (arr!33985 _values!874) i!650 (ValueCellFull!12729 (dynLambda!2246 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34522 _values!874)))))

(assert (=> b!1092857 (= lt!488581 (getCurrentListMapNoExtraKeys!4110 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70628 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1092857 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!488582 () Unit!35913)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70628 (_ BitVec 64) (_ BitVec 32)) Unit!35913)

(assert (=> b!1092857 (= lt!488582 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1092858 () Bool)

(declare-fun res!729338 () Bool)

(assert (=> b!1092858 (=> (not res!729338) (not e!624101))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1092858 (= res!729338 (validKeyInArray!0 k0!904))))

(declare-fun b!1092859 () Bool)

(assert (=> b!1092859 (= e!624105 tp_is_empty!26877)))

(declare-fun b!1092860 () Bool)

(assert (=> b!1092860 (= e!624106 tp_is_empty!26877)))

(assert (= (and start!96258 res!729332) b!1092853))

(assert (= (and b!1092853 res!729330) b!1092852))

(assert (= (and b!1092852 res!729337) b!1092849))

(assert (= (and b!1092849 res!729335) b!1092851))

(assert (= (and b!1092851 res!729336) b!1092858))

(assert (= (and b!1092858 res!729338) b!1092850))

(assert (= (and b!1092850 res!729334) b!1092855))

(assert (= (and b!1092855 res!729333) b!1092856))

(assert (= (and b!1092856 res!729331) b!1092857))

(assert (= (and b!1092854 condMapEmpty!42070) mapIsEmpty!42070))

(assert (= (and b!1092854 (not condMapEmpty!42070)) mapNonEmpty!42070))

(get-info :version)

(assert (= (and mapNonEmpty!42070 ((_ is ValueCellFull!12729) mapValue!42070)) b!1092860))

(assert (= (and b!1092854 ((_ is ValueCellFull!12729) mapDefault!42070)) b!1092859))

(assert (= start!96258 b!1092854))

(declare-fun b_lambda!17575 () Bool)

(assert (=> (not b_lambda!17575) (not b!1092857)))

(declare-fun t!33815 () Bool)

(declare-fun tb!7761 () Bool)

(assert (=> (and start!96258 (= defaultEntry!882 defaultEntry!882) t!33815) tb!7761))

(declare-fun result!16033 () Bool)

(assert (=> tb!7761 (= result!16033 tp_is_empty!26877)))

(assert (=> b!1092857 t!33815))

(declare-fun b_and!36445 () Bool)

(assert (= b_and!36443 (and (=> t!33815 result!16033) b_and!36445)))

(declare-fun m!1012797 () Bool)

(assert (=> b!1092856 m!1012797))

(declare-fun m!1012799 () Bool)

(assert (=> b!1092849 m!1012799))

(declare-fun m!1012801 () Bool)

(assert (=> b!1092852 m!1012801))

(declare-fun m!1012803 () Bool)

(assert (=> b!1092855 m!1012803))

(declare-fun m!1012805 () Bool)

(assert (=> b!1092855 m!1012805))

(declare-fun m!1012807 () Bool)

(assert (=> mapNonEmpty!42070 m!1012807))

(declare-fun m!1012809 () Bool)

(assert (=> b!1092858 m!1012809))

(declare-fun m!1012811 () Bool)

(assert (=> start!96258 m!1012811))

(declare-fun m!1012813 () Bool)

(assert (=> start!96258 m!1012813))

(declare-fun m!1012815 () Bool)

(assert (=> start!96258 m!1012815))

(declare-fun m!1012817 () Bool)

(assert (=> b!1092850 m!1012817))

(declare-fun m!1012819 () Bool)

(assert (=> b!1092857 m!1012819))

(declare-fun m!1012821 () Bool)

(assert (=> b!1092857 m!1012821))

(declare-fun m!1012823 () Bool)

(assert (=> b!1092857 m!1012823))

(declare-fun m!1012825 () Bool)

(assert (=> b!1092857 m!1012825))

(declare-fun m!1012827 () Bool)

(assert (=> b!1092857 m!1012827))

(declare-fun m!1012829 () Bool)

(assert (=> b!1092857 m!1012829))

(declare-fun m!1012831 () Bool)

(assert (=> b!1092857 m!1012831))

(declare-fun m!1012833 () Bool)

(assert (=> b!1092857 m!1012833))

(declare-fun m!1012835 () Bool)

(assert (=> b!1092857 m!1012835))

(declare-fun m!1012837 () Bool)

(assert (=> b!1092857 m!1012837))

(check-sat (not b_next!22875) (not b!1092857) (not b_lambda!17575) (not b!1092855) (not start!96258) b_and!36445 (not mapNonEmpty!42070) (not b!1092852) (not b!1092849) tp_is_empty!26877 (not b!1092858) (not b!1092856))
(check-sat b_and!36445 (not b_next!22875))
