; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95850 () Bool)

(assert start!95850)

(declare-fun b_free!22467 () Bool)

(declare-fun b_next!22467 () Bool)

(assert (=> start!95850 (= b_free!22467 (not b_next!22467))))

(declare-fun tp!79251 () Bool)

(declare-fun b_and!35627 () Bool)

(assert (=> start!95850 (= tp!79251 b_and!35627)))

(declare-fun b!1084035 () Bool)

(declare-fun e!619397 () Bool)

(declare-fun e!619396 () Bool)

(assert (=> b!1084035 (= e!619397 e!619396)))

(declare-fun res!722765 () Bool)

(assert (=> b!1084035 (=> (not res!722765) (not e!619396))))

(declare-datatypes ((array!69840 0))(
  ( (array!69841 (arr!33590 (Array (_ BitVec 32) (_ BitVec 64))) (size!34127 (_ BitVec 32))) )
))
(declare-fun lt!480439 () array!69840)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69840 (_ BitVec 32)) Bool)

(assert (=> b!1084035 (= res!722765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480439 mask!1414))))

(declare-fun _keys!1070 () array!69840)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1084035 (= lt!480439 (array!69841 (store (arr!33590 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34127 _keys!1070)))))

(declare-fun b!1084036 () Bool)

(declare-fun res!722760 () Bool)

(assert (=> b!1084036 (=> (not res!722760) (not e!619397))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40419 0))(
  ( (V!40420 (val!13291 Int)) )
))
(declare-datatypes ((ValueCell!12525 0))(
  ( (ValueCellFull!12525 (v!15913 V!40419)) (EmptyCell!12525) )
))
(declare-datatypes ((array!69842 0))(
  ( (array!69843 (arr!33591 (Array (_ BitVec 32) ValueCell!12525)) (size!34128 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69842)

(assert (=> b!1084036 (= res!722760 (and (= (size!34128 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34127 _keys!1070) (size!34128 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1084037 () Bool)

(declare-fun res!722761 () Bool)

(assert (=> b!1084037 (=> (not res!722761) (not e!619397))))

(assert (=> b!1084037 (= res!722761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!41458 () Bool)

(declare-fun mapRes!41458 () Bool)

(declare-fun tp!79250 () Bool)

(declare-fun e!619395 () Bool)

(assert (=> mapNonEmpty!41458 (= mapRes!41458 (and tp!79250 e!619395))))

(declare-fun mapValue!41458 () ValueCell!12525)

(declare-fun mapRest!41458 () (Array (_ BitVec 32) ValueCell!12525))

(declare-fun mapKey!41458 () (_ BitVec 32))

(assert (=> mapNonEmpty!41458 (= (arr!33591 _values!874) (store mapRest!41458 mapKey!41458 mapValue!41458))))

(declare-fun b!1084038 () Bool)

(declare-fun res!722763 () Bool)

(assert (=> b!1084038 (=> (not res!722763) (not e!619397))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1084038 (= res!722763 (validKeyInArray!0 k0!904))))

(declare-fun b!1084039 () Bool)

(declare-fun res!722762 () Bool)

(assert (=> b!1084039 (=> (not res!722762) (not e!619397))))

(assert (=> b!1084039 (= res!722762 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34127 _keys!1070))))))

(declare-fun b!1084040 () Bool)

(declare-fun e!619394 () Bool)

(declare-fun tp_is_empty!26469 () Bool)

(assert (=> b!1084040 (= e!619394 tp_is_empty!26469)))

(declare-fun b!1084041 () Bool)

(declare-fun e!619398 () Bool)

(assert (=> b!1084041 (= e!619398 (and e!619394 mapRes!41458))))

(declare-fun condMapEmpty!41458 () Bool)

(declare-fun mapDefault!41458 () ValueCell!12525)

(assert (=> b!1084041 (= condMapEmpty!41458 (= (arr!33591 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12525)) mapDefault!41458)))))

(declare-fun b!1084042 () Bool)

(declare-fun res!722766 () Bool)

(assert (=> b!1084042 (=> (not res!722766) (not e!619397))))

(declare-datatypes ((List!23549 0))(
  ( (Nil!23546) (Cons!23545 (h!24754 (_ BitVec 64)) (t!33081 List!23549)) )
))
(declare-fun arrayNoDuplicates!0 (array!69840 (_ BitVec 32) List!23549) Bool)

(assert (=> b!1084042 (= res!722766 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23546))))

(declare-fun b!1084043 () Bool)

(declare-fun res!722767 () Bool)

(assert (=> b!1084043 (=> (not res!722767) (not e!619397))))

(assert (=> b!1084043 (= res!722767 (= (select (arr!33590 _keys!1070) i!650) k0!904))))

(declare-fun res!722764 () Bool)

(assert (=> start!95850 (=> (not res!722764) (not e!619397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95850 (= res!722764 (validMask!0 mask!1414))))

(assert (=> start!95850 e!619397))

(assert (=> start!95850 tp!79251))

(assert (=> start!95850 true))

(assert (=> start!95850 tp_is_empty!26469))

(declare-fun array_inv!25776 (array!69840) Bool)

(assert (=> start!95850 (array_inv!25776 _keys!1070)))

(declare-fun array_inv!25777 (array!69842) Bool)

(assert (=> start!95850 (and (array_inv!25777 _values!874) e!619398)))

(declare-fun b!1084044 () Bool)

(assert (=> b!1084044 (= e!619395 tp_is_empty!26469)))

(declare-fun mapIsEmpty!41458 () Bool)

(assert (=> mapIsEmpty!41458 mapRes!41458))

(declare-fun b!1084045 () Bool)

(assert (=> b!1084045 (= e!619396 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40419)

(declare-fun zeroValue!831 () V!40419)

(declare-datatypes ((tuple2!16908 0))(
  ( (tuple2!16909 (_1!8464 (_ BitVec 64)) (_2!8464 V!40419)) )
))
(declare-datatypes ((List!23550 0))(
  ( (Nil!23547) (Cons!23546 (h!24755 tuple2!16908) (t!33082 List!23550)) )
))
(declare-datatypes ((ListLongMap!14889 0))(
  ( (ListLongMap!14890 (toList!7460 List!23550)) )
))
(declare-fun lt!480444 () ListLongMap!14889)

(declare-fun lt!480442 () array!69842)

(declare-fun getCurrentListMap!4219 (array!69840 array!69842 (_ BitVec 32) (_ BitVec 32) V!40419 V!40419 (_ BitVec 32) Int) ListLongMap!14889)

(assert (=> b!1084045 (= lt!480444 (getCurrentListMap!4219 lt!480439 lt!480442 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480446 () ListLongMap!14889)

(declare-fun lt!480441 () ListLongMap!14889)

(assert (=> b!1084045 (and (= lt!480446 lt!480441) (= lt!480441 lt!480446))))

(declare-fun lt!480443 () ListLongMap!14889)

(declare-fun -!742 (ListLongMap!14889 (_ BitVec 64)) ListLongMap!14889)

(assert (=> b!1084045 (= lt!480441 (-!742 lt!480443 k0!904))))

(declare-datatypes ((Unit!35599 0))(
  ( (Unit!35600) )
))
(declare-fun lt!480440 () Unit!35599)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!25 (array!69840 array!69842 (_ BitVec 32) (_ BitVec 32) V!40419 V!40419 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35599)

(assert (=> b!1084045 (= lt!480440 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!25 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3971 (array!69840 array!69842 (_ BitVec 32) (_ BitVec 32) V!40419 V!40419 (_ BitVec 32) Int) ListLongMap!14889)

(assert (=> b!1084045 (= lt!480446 (getCurrentListMapNoExtraKeys!3971 lt!480439 lt!480442 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2107 (Int (_ BitVec 64)) V!40419)

(assert (=> b!1084045 (= lt!480442 (array!69843 (store (arr!33591 _values!874) i!650 (ValueCellFull!12525 (dynLambda!2107 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34128 _values!874)))))

(assert (=> b!1084045 (= lt!480443 (getCurrentListMapNoExtraKeys!3971 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1084045 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!480445 () Unit!35599)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69840 (_ BitVec 64) (_ BitVec 32)) Unit!35599)

(assert (=> b!1084045 (= lt!480445 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1084046 () Bool)

(declare-fun res!722768 () Bool)

(assert (=> b!1084046 (=> (not res!722768) (not e!619396))))

(assert (=> b!1084046 (= res!722768 (arrayNoDuplicates!0 lt!480439 #b00000000000000000000000000000000 Nil!23546))))

(assert (= (and start!95850 res!722764) b!1084036))

(assert (= (and b!1084036 res!722760) b!1084037))

(assert (= (and b!1084037 res!722761) b!1084042))

(assert (= (and b!1084042 res!722766) b!1084039))

(assert (= (and b!1084039 res!722762) b!1084038))

(assert (= (and b!1084038 res!722763) b!1084043))

(assert (= (and b!1084043 res!722767) b!1084035))

(assert (= (and b!1084035 res!722765) b!1084046))

(assert (= (and b!1084046 res!722768) b!1084045))

(assert (= (and b!1084041 condMapEmpty!41458) mapIsEmpty!41458))

(assert (= (and b!1084041 (not condMapEmpty!41458)) mapNonEmpty!41458))

(get-info :version)

(assert (= (and mapNonEmpty!41458 ((_ is ValueCellFull!12525) mapValue!41458)) b!1084044))

(assert (= (and b!1084041 ((_ is ValueCellFull!12525) mapDefault!41458)) b!1084040))

(assert (= start!95850 b!1084041))

(declare-fun b_lambda!17167 () Bool)

(assert (=> (not b_lambda!17167) (not b!1084045)))

(declare-fun t!33080 () Bool)

(declare-fun tb!7353 () Bool)

(assert (=> (and start!95850 (= defaultEntry!882 defaultEntry!882) t!33080) tb!7353))

(declare-fun result!15217 () Bool)

(assert (=> tb!7353 (= result!15217 tp_is_empty!26469)))

(assert (=> b!1084045 t!33080))

(declare-fun b_and!35629 () Bool)

(assert (= b_and!35627 (and (=> t!33080 result!15217) b_and!35629)))

(declare-fun m!1001869 () Bool)

(assert (=> b!1084042 m!1001869))

(declare-fun m!1001871 () Bool)

(assert (=> b!1084045 m!1001871))

(declare-fun m!1001873 () Bool)

(assert (=> b!1084045 m!1001873))

(declare-fun m!1001875 () Bool)

(assert (=> b!1084045 m!1001875))

(declare-fun m!1001877 () Bool)

(assert (=> b!1084045 m!1001877))

(declare-fun m!1001879 () Bool)

(assert (=> b!1084045 m!1001879))

(declare-fun m!1001881 () Bool)

(assert (=> b!1084045 m!1001881))

(declare-fun m!1001883 () Bool)

(assert (=> b!1084045 m!1001883))

(declare-fun m!1001885 () Bool)

(assert (=> b!1084045 m!1001885))

(declare-fun m!1001887 () Bool)

(assert (=> b!1084045 m!1001887))

(declare-fun m!1001889 () Bool)

(assert (=> mapNonEmpty!41458 m!1001889))

(declare-fun m!1001891 () Bool)

(assert (=> b!1084038 m!1001891))

(declare-fun m!1001893 () Bool)

(assert (=> b!1084046 m!1001893))

(declare-fun m!1001895 () Bool)

(assert (=> b!1084035 m!1001895))

(declare-fun m!1001897 () Bool)

(assert (=> b!1084035 m!1001897))

(declare-fun m!1001899 () Bool)

(assert (=> start!95850 m!1001899))

(declare-fun m!1001901 () Bool)

(assert (=> start!95850 m!1001901))

(declare-fun m!1001903 () Bool)

(assert (=> start!95850 m!1001903))

(declare-fun m!1001905 () Bool)

(assert (=> b!1084037 m!1001905))

(declare-fun m!1001907 () Bool)

(assert (=> b!1084043 m!1001907))

(check-sat (not b_next!22467) (not b!1084035) (not b!1084046) (not mapNonEmpty!41458) (not b!1084038) (not start!95850) tp_is_empty!26469 b_and!35629 (not b!1084037) (not b!1084042) (not b_lambda!17167) (not b!1084045))
(check-sat b_and!35629 (not b_next!22467))
