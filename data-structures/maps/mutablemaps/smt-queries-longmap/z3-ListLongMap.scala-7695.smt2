; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96660 () Bool)

(assert start!96660)

(declare-fun b_free!23097 () Bool)

(declare-fun b_next!23097 () Bool)

(assert (=> start!96660 (= b_free!23097 (not b_next!23097))))

(declare-fun tp!81230 () Bool)

(declare-fun b_and!36931 () Bool)

(assert (=> start!96660 (= tp!81230 b_and!36931)))

(declare-fun b!1098776 () Bool)

(declare-fun res!733347 () Bool)

(declare-fun e!627184 () Bool)

(assert (=> b!1098776 (=> (not res!733347) (not e!627184))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71162 0))(
  ( (array!71163 (arr!34245 (Array (_ BitVec 32) (_ BitVec 64))) (size!34782 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71162)

(assert (=> b!1098776 (= res!733347 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34782 _keys!1070))))))

(declare-fun b!1098777 () Bool)

(declare-fun e!627185 () Bool)

(declare-fun e!627183 () Bool)

(assert (=> b!1098777 (= e!627185 e!627183)))

(declare-fun res!733350 () Bool)

(assert (=> b!1098777 (=> res!733350 e!627183)))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1098777 (= res!733350 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((V!41323 0))(
  ( (V!41324 (val!13630 Int)) )
))
(declare-datatypes ((tuple2!17382 0))(
  ( (tuple2!17383 (_1!8701 (_ BitVec 64)) (_2!8701 V!41323)) )
))
(declare-datatypes ((List!24058 0))(
  ( (Nil!24055) (Cons!24054 (h!25263 tuple2!17382) (t!34208 List!24058)) )
))
(declare-datatypes ((ListLongMap!15363 0))(
  ( (ListLongMap!15364 (toList!7697 List!24058)) )
))
(declare-fun lt!491695 () ListLongMap!15363)

(declare-fun lt!491703 () ListLongMap!15363)

(assert (=> b!1098777 (= lt!491695 lt!491703)))

(declare-fun lt!491707 () ListLongMap!15363)

(declare-fun -!942 (ListLongMap!15363 (_ BitVec 64)) ListLongMap!15363)

(assert (=> b!1098777 (= lt!491695 (-!942 lt!491707 k0!904))))

(declare-datatypes ((Unit!36071 0))(
  ( (Unit!36072) )
))
(declare-fun lt!491710 () Unit!36071)

(declare-fun lt!491701 () ListLongMap!15363)

(declare-fun zeroValue!831 () V!41323)

(declare-fun addRemoveCommutativeForDiffKeys!123 (ListLongMap!15363 (_ BitVec 64) V!41323 (_ BitVec 64)) Unit!36071)

(assert (=> b!1098777 (= lt!491710 (addRemoveCommutativeForDiffKeys!123 lt!491701 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!491708 () ListLongMap!15363)

(declare-fun lt!491697 () tuple2!17382)

(declare-fun +!3332 (ListLongMap!15363 tuple2!17382) ListLongMap!15363)

(assert (=> b!1098777 (= lt!491708 (+!3332 lt!491703 lt!491697))))

(declare-fun lt!491699 () ListLongMap!15363)

(declare-fun lt!491700 () tuple2!17382)

(assert (=> b!1098777 (= lt!491703 (+!3332 lt!491699 lt!491700))))

(declare-fun lt!491698 () ListLongMap!15363)

(declare-fun lt!491696 () ListLongMap!15363)

(assert (=> b!1098777 (= lt!491698 lt!491696)))

(assert (=> b!1098777 (= lt!491696 (+!3332 lt!491707 lt!491697))))

(assert (=> b!1098777 (= lt!491707 (+!3332 lt!491701 lt!491700))))

(declare-fun lt!491704 () ListLongMap!15363)

(assert (=> b!1098777 (= lt!491708 (+!3332 (+!3332 lt!491704 lt!491700) lt!491697))))

(declare-fun minValue!831 () V!41323)

(assert (=> b!1098777 (= lt!491697 (tuple2!17383 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1098777 (= lt!491700 (tuple2!17383 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1098778 () Bool)

(declare-fun res!733344 () Bool)

(assert (=> b!1098778 (=> (not res!733344) (not e!627184))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12864 0))(
  ( (ValueCellFull!12864 (v!16256 V!41323)) (EmptyCell!12864) )
))
(declare-datatypes ((array!71164 0))(
  ( (array!71165 (arr!34246 (Array (_ BitVec 32) ValueCell!12864)) (size!34783 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71164)

(assert (=> b!1098778 (= res!733344 (and (= (size!34783 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34782 _keys!1070) (size!34783 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!733352 () Bool)

(assert (=> start!96660 (=> (not res!733352) (not e!627184))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96660 (= res!733352 (validMask!0 mask!1414))))

(assert (=> start!96660 e!627184))

(assert (=> start!96660 tp!81230))

(assert (=> start!96660 true))

(declare-fun tp_is_empty!27147 () Bool)

(assert (=> start!96660 tp_is_empty!27147))

(declare-fun array_inv!26240 (array!71162) Bool)

(assert (=> start!96660 (array_inv!26240 _keys!1070)))

(declare-fun e!627188 () Bool)

(declare-fun array_inv!26241 (array!71164) Bool)

(assert (=> start!96660 (and (array_inv!26241 _values!874) e!627188)))

(declare-fun b!1098779 () Bool)

(declare-fun res!733348 () Bool)

(assert (=> b!1098779 (=> (not res!733348) (not e!627184))))

(declare-datatypes ((List!24059 0))(
  ( (Nil!24056) (Cons!24055 (h!25264 (_ BitVec 64)) (t!34209 List!24059)) )
))
(declare-fun arrayNoDuplicates!0 (array!71162 (_ BitVec 32) List!24059) Bool)

(assert (=> b!1098779 (= res!733348 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24056))))

(declare-fun b!1098780 () Bool)

(declare-fun e!627186 () Bool)

(assert (=> b!1098780 (= e!627186 tp_is_empty!27147)))

(declare-fun b!1098781 () Bool)

(declare-fun e!627187 () Bool)

(assert (=> b!1098781 (= e!627187 tp_is_empty!27147)))

(declare-fun mapIsEmpty!42493 () Bool)

(declare-fun mapRes!42493 () Bool)

(assert (=> mapIsEmpty!42493 mapRes!42493))

(declare-fun b!1098782 () Bool)

(assert (=> b!1098782 (= e!627188 (and e!627187 mapRes!42493))))

(declare-fun condMapEmpty!42493 () Bool)

(declare-fun mapDefault!42493 () ValueCell!12864)

(assert (=> b!1098782 (= condMapEmpty!42493 (= (arr!34246 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12864)) mapDefault!42493)))))

(declare-fun b!1098783 () Bool)

(assert (=> b!1098783 (= e!627183 true)))

(assert (=> b!1098783 (= (-!942 lt!491696 k0!904) (+!3332 lt!491695 lt!491697))))

(declare-fun lt!491709 () Unit!36071)

(assert (=> b!1098783 (= lt!491709 (addRemoveCommutativeForDiffKeys!123 lt!491707 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1098784 () Bool)

(declare-fun res!733354 () Bool)

(assert (=> b!1098784 (=> (not res!733354) (not e!627184))))

(assert (=> b!1098784 (= res!733354 (= (select (arr!34245 _keys!1070) i!650) k0!904))))

(declare-fun mapNonEmpty!42493 () Bool)

(declare-fun tp!81231 () Bool)

(assert (=> mapNonEmpty!42493 (= mapRes!42493 (and tp!81231 e!627186))))

(declare-fun mapValue!42493 () ValueCell!12864)

(declare-fun mapRest!42493 () (Array (_ BitVec 32) ValueCell!12864))

(declare-fun mapKey!42493 () (_ BitVec 32))

(assert (=> mapNonEmpty!42493 (= (arr!34246 _values!874) (store mapRest!42493 mapKey!42493 mapValue!42493))))

(declare-fun b!1098785 () Bool)

(declare-fun res!733345 () Bool)

(assert (=> b!1098785 (=> (not res!733345) (not e!627184))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1098785 (= res!733345 (validKeyInArray!0 k0!904))))

(declare-fun b!1098786 () Bool)

(declare-fun e!627181 () Bool)

(assert (=> b!1098786 (= e!627181 (not e!627185))))

(declare-fun res!733351 () Bool)

(assert (=> b!1098786 (=> res!733351 e!627185)))

(assert (=> b!1098786 (= res!733351 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4392 (array!71162 array!71164 (_ BitVec 32) (_ BitVec 32) V!41323 V!41323 (_ BitVec 32) Int) ListLongMap!15363)

(assert (=> b!1098786 (= lt!491698 (getCurrentListMap!4392 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491702 () array!71164)

(declare-fun lt!491705 () array!71162)

(assert (=> b!1098786 (= lt!491708 (getCurrentListMap!4392 lt!491705 lt!491702 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1098786 (and (= lt!491704 lt!491699) (= lt!491699 lt!491704))))

(assert (=> b!1098786 (= lt!491699 (-!942 lt!491701 k0!904))))

(declare-fun lt!491706 () Unit!36071)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!204 (array!71162 array!71164 (_ BitVec 32) (_ BitVec 32) V!41323 V!41323 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36071)

(assert (=> b!1098786 (= lt!491706 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!204 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4179 (array!71162 array!71164 (_ BitVec 32) (_ BitVec 32) V!41323 V!41323 (_ BitVec 32) Int) ListLongMap!15363)

(assert (=> b!1098786 (= lt!491704 (getCurrentListMapNoExtraKeys!4179 lt!491705 lt!491702 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2310 (Int (_ BitVec 64)) V!41323)

(assert (=> b!1098786 (= lt!491702 (array!71165 (store (arr!34246 _values!874) i!650 (ValueCellFull!12864 (dynLambda!2310 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34783 _values!874)))))

(assert (=> b!1098786 (= lt!491701 (getCurrentListMapNoExtraKeys!4179 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71162 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1098786 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!491694 () Unit!36071)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71162 (_ BitVec 64) (_ BitVec 32)) Unit!36071)

(assert (=> b!1098786 (= lt!491694 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1098787 () Bool)

(assert (=> b!1098787 (= e!627184 e!627181)))

(declare-fun res!733349 () Bool)

(assert (=> b!1098787 (=> (not res!733349) (not e!627181))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71162 (_ BitVec 32)) Bool)

(assert (=> b!1098787 (= res!733349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!491705 mask!1414))))

(assert (=> b!1098787 (= lt!491705 (array!71163 (store (arr!34245 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34782 _keys!1070)))))

(declare-fun b!1098788 () Bool)

(declare-fun res!733353 () Bool)

(assert (=> b!1098788 (=> (not res!733353) (not e!627181))))

(assert (=> b!1098788 (= res!733353 (arrayNoDuplicates!0 lt!491705 #b00000000000000000000000000000000 Nil!24056))))

(declare-fun b!1098789 () Bool)

(declare-fun res!733346 () Bool)

(assert (=> b!1098789 (=> (not res!733346) (not e!627184))))

(assert (=> b!1098789 (= res!733346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(assert (= (and start!96660 res!733352) b!1098778))

(assert (= (and b!1098778 res!733344) b!1098789))

(assert (= (and b!1098789 res!733346) b!1098779))

(assert (= (and b!1098779 res!733348) b!1098776))

(assert (= (and b!1098776 res!733347) b!1098785))

(assert (= (and b!1098785 res!733345) b!1098784))

(assert (= (and b!1098784 res!733354) b!1098787))

(assert (= (and b!1098787 res!733349) b!1098788))

(assert (= (and b!1098788 res!733353) b!1098786))

(assert (= (and b!1098786 (not res!733351)) b!1098777))

(assert (= (and b!1098777 (not res!733350)) b!1098783))

(assert (= (and b!1098782 condMapEmpty!42493) mapIsEmpty!42493))

(assert (= (and b!1098782 (not condMapEmpty!42493)) mapNonEmpty!42493))

(get-info :version)

(assert (= (and mapNonEmpty!42493 ((_ is ValueCellFull!12864) mapValue!42493)) b!1098780))

(assert (= (and b!1098782 ((_ is ValueCellFull!12864) mapDefault!42493)) b!1098781))

(assert (= start!96660 b!1098782))

(declare-fun b_lambda!17905 () Bool)

(assert (=> (not b_lambda!17905) (not b!1098786)))

(declare-fun t!34207 () Bool)

(declare-fun tb!7971 () Bool)

(assert (=> (and start!96660 (= defaultEntry!882 defaultEntry!882) t!34207) tb!7971))

(declare-fun result!16465 () Bool)

(assert (=> tb!7971 (= result!16465 tp_is_empty!27147)))

(assert (=> b!1098786 t!34207))

(declare-fun b_and!36933 () Bool)

(assert (= b_and!36931 (and (=> t!34207 result!16465) b_and!36933)))

(declare-fun m!1018711 () Bool)

(assert (=> b!1098788 m!1018711))

(declare-fun m!1018713 () Bool)

(assert (=> start!96660 m!1018713))

(declare-fun m!1018715 () Bool)

(assert (=> start!96660 m!1018715))

(declare-fun m!1018717 () Bool)

(assert (=> start!96660 m!1018717))

(declare-fun m!1018719 () Bool)

(assert (=> b!1098784 m!1018719))

(declare-fun m!1018721 () Bool)

(assert (=> b!1098786 m!1018721))

(declare-fun m!1018723 () Bool)

(assert (=> b!1098786 m!1018723))

(declare-fun m!1018725 () Bool)

(assert (=> b!1098786 m!1018725))

(declare-fun m!1018727 () Bool)

(assert (=> b!1098786 m!1018727))

(declare-fun m!1018729 () Bool)

(assert (=> b!1098786 m!1018729))

(declare-fun m!1018731 () Bool)

(assert (=> b!1098786 m!1018731))

(declare-fun m!1018733 () Bool)

(assert (=> b!1098786 m!1018733))

(declare-fun m!1018735 () Bool)

(assert (=> b!1098786 m!1018735))

(declare-fun m!1018737 () Bool)

(assert (=> b!1098786 m!1018737))

(declare-fun m!1018739 () Bool)

(assert (=> b!1098786 m!1018739))

(declare-fun m!1018741 () Bool)

(assert (=> b!1098787 m!1018741))

(declare-fun m!1018743 () Bool)

(assert (=> b!1098787 m!1018743))

(declare-fun m!1018745 () Bool)

(assert (=> b!1098777 m!1018745))

(declare-fun m!1018747 () Bool)

(assert (=> b!1098777 m!1018747))

(declare-fun m!1018749 () Bool)

(assert (=> b!1098777 m!1018749))

(declare-fun m!1018751 () Bool)

(assert (=> b!1098777 m!1018751))

(declare-fun m!1018753 () Bool)

(assert (=> b!1098777 m!1018753))

(declare-fun m!1018755 () Bool)

(assert (=> b!1098777 m!1018755))

(declare-fun m!1018757 () Bool)

(assert (=> b!1098777 m!1018757))

(assert (=> b!1098777 m!1018751))

(declare-fun m!1018759 () Bool)

(assert (=> b!1098777 m!1018759))

(declare-fun m!1018761 () Bool)

(assert (=> b!1098785 m!1018761))

(declare-fun m!1018763 () Bool)

(assert (=> b!1098783 m!1018763))

(declare-fun m!1018765 () Bool)

(assert (=> b!1098783 m!1018765))

(declare-fun m!1018767 () Bool)

(assert (=> b!1098783 m!1018767))

(declare-fun m!1018769 () Bool)

(assert (=> b!1098789 m!1018769))

(declare-fun m!1018771 () Bool)

(assert (=> b!1098779 m!1018771))

(declare-fun m!1018773 () Bool)

(assert (=> mapNonEmpty!42493 m!1018773))

(check-sat (not b!1098786) (not b_next!23097) (not b!1098788) (not b!1098777) b_and!36933 (not start!96660) (not b!1098787) (not mapNonEmpty!42493) (not b!1098785) (not b!1098779) (not b_lambda!17905) (not b!1098789) (not b!1098783) tp_is_empty!27147)
(check-sat b_and!36933 (not b_next!23097))
