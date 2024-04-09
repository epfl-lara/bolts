; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96174 () Bool)

(assert start!96174)

(declare-fun b_free!22791 () Bool)

(declare-fun b_next!22791 () Bool)

(assert (=> start!96174 (= b_free!22791 (not b_next!22791))))

(declare-fun tp!80223 () Bool)

(declare-fun b_and!36275 () Bool)

(assert (=> start!96174 (= tp!80223 b_and!36275)))

(declare-fun b!1091101 () Bool)

(declare-fun e!623199 () Bool)

(declare-fun e!623197 () Bool)

(declare-fun mapRes!41944 () Bool)

(assert (=> b!1091101 (= e!623199 (and e!623197 mapRes!41944))))

(declare-fun condMapEmpty!41944 () Bool)

(declare-datatypes ((V!40851 0))(
  ( (V!40852 (val!13453 Int)) )
))
(declare-datatypes ((ValueCell!12687 0))(
  ( (ValueCellFull!12687 (v!16075 V!40851)) (EmptyCell!12687) )
))
(declare-datatypes ((array!70472 0))(
  ( (array!70473 (arr!33906 (Array (_ BitVec 32) ValueCell!12687)) (size!34443 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70472)

(declare-fun mapDefault!41944 () ValueCell!12687)

(assert (=> b!1091101 (= condMapEmpty!41944 (= (arr!33906 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12687)) mapDefault!41944)))))

(declare-fun res!728048 () Bool)

(declare-fun e!623194 () Bool)

(assert (=> start!96174 (=> (not res!728048) (not e!623194))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96174 (= res!728048 (validMask!0 mask!1414))))

(assert (=> start!96174 e!623194))

(assert (=> start!96174 tp!80223))

(assert (=> start!96174 true))

(declare-fun tp_is_empty!26793 () Bool)

(assert (=> start!96174 tp_is_empty!26793))

(declare-datatypes ((array!70474 0))(
  ( (array!70475 (arr!33907 (Array (_ BitVec 32) (_ BitVec 64))) (size!34444 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70474)

(declare-fun array_inv!26002 (array!70474) Bool)

(assert (=> start!96174 (array_inv!26002 _keys!1070)))

(declare-fun array_inv!26003 (array!70472) Bool)

(assert (=> start!96174 (and (array_inv!26003 _values!874) e!623199)))

(declare-fun b!1091102 () Bool)

(declare-fun res!728045 () Bool)

(declare-fun e!623196 () Bool)

(assert (=> b!1091102 (=> (not res!728045) (not e!623196))))

(declare-fun lt!487152 () array!70474)

(declare-datatypes ((List!23819 0))(
  ( (Nil!23816) (Cons!23815 (h!25024 (_ BitVec 64)) (t!33675 List!23819)) )
))
(declare-fun arrayNoDuplicates!0 (array!70474 (_ BitVec 32) List!23819) Bool)

(assert (=> b!1091102 (= res!728045 (arrayNoDuplicates!0 lt!487152 #b00000000000000000000000000000000 Nil!23816))))

(declare-fun b!1091103 () Bool)

(declare-fun e!623198 () Bool)

(declare-fun e!623195 () Bool)

(assert (=> b!1091103 (= e!623198 e!623195)))

(declare-fun res!728051 () Bool)

(assert (=> b!1091103 (=> res!728051 e!623195)))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1091103 (= res!728051 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((tuple2!17180 0))(
  ( (tuple2!17181 (_1!8600 (_ BitVec 64)) (_2!8600 V!40851)) )
))
(declare-datatypes ((List!23820 0))(
  ( (Nil!23817) (Cons!23816 (h!25025 tuple2!17180) (t!33676 List!23820)) )
))
(declare-datatypes ((ListLongMap!15161 0))(
  ( (ListLongMap!15162 (toList!7596 List!23820)) )
))
(declare-fun lt!487150 () ListLongMap!15161)

(declare-fun lt!487148 () ListLongMap!15161)

(assert (=> b!1091103 (= lt!487150 lt!487148)))

(declare-fun lt!487153 () ListLongMap!15161)

(declare-fun lt!487144 () tuple2!17180)

(declare-fun +!3304 (ListLongMap!15161 tuple2!17180) ListLongMap!15161)

(assert (=> b!1091103 (= lt!487148 (+!3304 lt!487153 lt!487144))))

(declare-fun lt!487145 () ListLongMap!15161)

(declare-fun lt!487149 () ListLongMap!15161)

(assert (=> b!1091103 (= lt!487145 lt!487149)))

(declare-fun lt!487142 () ListLongMap!15161)

(assert (=> b!1091103 (= lt!487149 (+!3304 lt!487142 lt!487144))))

(declare-fun lt!487143 () ListLongMap!15161)

(assert (=> b!1091103 (= lt!487145 (+!3304 lt!487143 lt!487144))))

(declare-fun minValue!831 () V!40851)

(assert (=> b!1091103 (= lt!487144 (tuple2!17181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1091104 () Bool)

(declare-fun res!728054 () Bool)

(assert (=> b!1091104 (=> (not res!728054) (not e!623194))))

(assert (=> b!1091104 (= res!728054 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23816))))

(declare-fun b!1091105 () Bool)

(declare-fun res!728050 () Bool)

(assert (=> b!1091105 (=> (not res!728050) (not e!623194))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1091105 (= res!728050 (validKeyInArray!0 k0!904))))

(declare-fun b!1091106 () Bool)

(declare-fun e!623200 () Bool)

(assert (=> b!1091106 (= e!623200 tp_is_empty!26793)))

(declare-fun b!1091107 () Bool)

(assert (=> b!1091107 (= e!623196 (not e!623198))))

(declare-fun res!728049 () Bool)

(assert (=> b!1091107 (=> res!728049 e!623198)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1091107 (= res!728049 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40851)

(declare-fun getCurrentListMap!4335 (array!70474 array!70472 (_ BitVec 32) (_ BitVec 32) V!40851 V!40851 (_ BitVec 32) Int) ListLongMap!15161)

(assert (=> b!1091107 (= lt!487150 (getCurrentListMap!4335 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487151 () array!70472)

(assert (=> b!1091107 (= lt!487145 (getCurrentListMap!4335 lt!487152 lt!487151 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1091107 (and (= lt!487143 lt!487142) (= lt!487142 lt!487143))))

(declare-fun -!874 (ListLongMap!15161 (_ BitVec 64)) ListLongMap!15161)

(assert (=> b!1091107 (= lt!487142 (-!874 lt!487153 k0!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35863 0))(
  ( (Unit!35864) )
))
(declare-fun lt!487146 () Unit!35863)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!141 (array!70474 array!70472 (_ BitVec 32) (_ BitVec 32) V!40851 V!40851 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35863)

(assert (=> b!1091107 (= lt!487146 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!141 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4087 (array!70474 array!70472 (_ BitVec 32) (_ BitVec 32) V!40851 V!40851 (_ BitVec 32) Int) ListLongMap!15161)

(assert (=> b!1091107 (= lt!487143 (getCurrentListMapNoExtraKeys!4087 lt!487152 lt!487151 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2223 (Int (_ BitVec 64)) V!40851)

(assert (=> b!1091107 (= lt!487151 (array!70473 (store (arr!33906 _values!874) i!650 (ValueCellFull!12687 (dynLambda!2223 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34443 _values!874)))))

(assert (=> b!1091107 (= lt!487153 (getCurrentListMapNoExtraKeys!4087 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70474 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1091107 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!487147 () Unit!35863)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70474 (_ BitVec 64) (_ BitVec 32)) Unit!35863)

(assert (=> b!1091107 (= lt!487147 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapIsEmpty!41944 () Bool)

(assert (=> mapIsEmpty!41944 mapRes!41944))

(declare-fun b!1091108 () Bool)

(assert (=> b!1091108 (= e!623197 tp_is_empty!26793)))

(declare-fun b!1091109 () Bool)

(declare-fun res!728047 () Bool)

(assert (=> b!1091109 (=> (not res!728047) (not e!623194))))

(assert (=> b!1091109 (= res!728047 (= (select (arr!33907 _keys!1070) i!650) k0!904))))

(declare-fun b!1091110 () Bool)

(assert (=> b!1091110 (= e!623194 e!623196)))

(declare-fun res!728046 () Bool)

(assert (=> b!1091110 (=> (not res!728046) (not e!623196))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70474 (_ BitVec 32)) Bool)

(assert (=> b!1091110 (= res!728046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!487152 mask!1414))))

(assert (=> b!1091110 (= lt!487152 (array!70475 (store (arr!33907 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34444 _keys!1070)))))

(declare-fun b!1091111 () Bool)

(declare-fun res!728044 () Bool)

(assert (=> b!1091111 (=> (not res!728044) (not e!623194))))

(assert (=> b!1091111 (= res!728044 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34444 _keys!1070))))))

(declare-fun b!1091112 () Bool)

(declare-fun res!728053 () Bool)

(assert (=> b!1091112 (=> (not res!728053) (not e!623194))))

(assert (=> b!1091112 (= res!728053 (and (= (size!34443 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34444 _keys!1070) (size!34443 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1091113 () Bool)

(assert (=> b!1091113 (= e!623195 true)))

(assert (=> b!1091113 (= (-!874 lt!487148 k0!904) lt!487149)))

(declare-fun lt!487154 () Unit!35863)

(declare-fun addRemoveCommutativeForDiffKeys!102 (ListLongMap!15161 (_ BitVec 64) V!40851 (_ BitVec 64)) Unit!35863)

(assert (=> b!1091113 (= lt!487154 (addRemoveCommutativeForDiffKeys!102 lt!487153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun mapNonEmpty!41944 () Bool)

(declare-fun tp!80222 () Bool)

(assert (=> mapNonEmpty!41944 (= mapRes!41944 (and tp!80222 e!623200))))

(declare-fun mapKey!41944 () (_ BitVec 32))

(declare-fun mapRest!41944 () (Array (_ BitVec 32) ValueCell!12687))

(declare-fun mapValue!41944 () ValueCell!12687)

(assert (=> mapNonEmpty!41944 (= (arr!33906 _values!874) (store mapRest!41944 mapKey!41944 mapValue!41944))))

(declare-fun b!1091114 () Bool)

(declare-fun res!728052 () Bool)

(assert (=> b!1091114 (=> (not res!728052) (not e!623194))))

(assert (=> b!1091114 (= res!728052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(assert (= (and start!96174 res!728048) b!1091112))

(assert (= (and b!1091112 res!728053) b!1091114))

(assert (= (and b!1091114 res!728052) b!1091104))

(assert (= (and b!1091104 res!728054) b!1091111))

(assert (= (and b!1091111 res!728044) b!1091105))

(assert (= (and b!1091105 res!728050) b!1091109))

(assert (= (and b!1091109 res!728047) b!1091110))

(assert (= (and b!1091110 res!728046) b!1091102))

(assert (= (and b!1091102 res!728045) b!1091107))

(assert (= (and b!1091107 (not res!728049)) b!1091103))

(assert (= (and b!1091103 (not res!728051)) b!1091113))

(assert (= (and b!1091101 condMapEmpty!41944) mapIsEmpty!41944))

(assert (= (and b!1091101 (not condMapEmpty!41944)) mapNonEmpty!41944))

(get-info :version)

(assert (= (and mapNonEmpty!41944 ((_ is ValueCellFull!12687) mapValue!41944)) b!1091106))

(assert (= (and b!1091101 ((_ is ValueCellFull!12687) mapDefault!41944)) b!1091108))

(assert (= start!96174 b!1091101))

(declare-fun b_lambda!17491 () Bool)

(assert (=> (not b_lambda!17491) (not b!1091107)))

(declare-fun t!33674 () Bool)

(declare-fun tb!7677 () Bool)

(assert (=> (and start!96174 (= defaultEntry!882 defaultEntry!882) t!33674) tb!7677))

(declare-fun result!15865 () Bool)

(assert (=> tb!7677 (= result!15865 tp_is_empty!26793)))

(assert (=> b!1091107 t!33674))

(declare-fun b_and!36277 () Bool)

(assert (= b_and!36275 (and (=> t!33674 result!15865) b_and!36277)))

(declare-fun m!1010773 () Bool)

(assert (=> b!1091105 m!1010773))

(declare-fun m!1010775 () Bool)

(assert (=> b!1091107 m!1010775))

(declare-fun m!1010777 () Bool)

(assert (=> b!1091107 m!1010777))

(declare-fun m!1010779 () Bool)

(assert (=> b!1091107 m!1010779))

(declare-fun m!1010781 () Bool)

(assert (=> b!1091107 m!1010781))

(declare-fun m!1010783 () Bool)

(assert (=> b!1091107 m!1010783))

(declare-fun m!1010785 () Bool)

(assert (=> b!1091107 m!1010785))

(declare-fun m!1010787 () Bool)

(assert (=> b!1091107 m!1010787))

(declare-fun m!1010789 () Bool)

(assert (=> b!1091107 m!1010789))

(declare-fun m!1010791 () Bool)

(assert (=> b!1091107 m!1010791))

(declare-fun m!1010793 () Bool)

(assert (=> b!1091107 m!1010793))

(declare-fun m!1010795 () Bool)

(assert (=> b!1091113 m!1010795))

(declare-fun m!1010797 () Bool)

(assert (=> b!1091113 m!1010797))

(declare-fun m!1010799 () Bool)

(assert (=> b!1091103 m!1010799))

(declare-fun m!1010801 () Bool)

(assert (=> b!1091103 m!1010801))

(declare-fun m!1010803 () Bool)

(assert (=> b!1091103 m!1010803))

(declare-fun m!1010805 () Bool)

(assert (=> b!1091109 m!1010805))

(declare-fun m!1010807 () Bool)

(assert (=> mapNonEmpty!41944 m!1010807))

(declare-fun m!1010809 () Bool)

(assert (=> b!1091114 m!1010809))

(declare-fun m!1010811 () Bool)

(assert (=> b!1091102 m!1010811))

(declare-fun m!1010813 () Bool)

(assert (=> b!1091110 m!1010813))

(declare-fun m!1010815 () Bool)

(assert (=> b!1091110 m!1010815))

(declare-fun m!1010817 () Bool)

(assert (=> start!96174 m!1010817))

(declare-fun m!1010819 () Bool)

(assert (=> start!96174 m!1010819))

(declare-fun m!1010821 () Bool)

(assert (=> start!96174 m!1010821))

(declare-fun m!1010823 () Bool)

(assert (=> b!1091104 m!1010823))

(check-sat (not b!1091110) (not start!96174) (not b!1091107) (not b_lambda!17491) (not b_next!22791) (not b!1091102) (not b!1091114) tp_is_empty!26793 (not b!1091103) (not b!1091113) (not b!1091105) (not b!1091104) (not mapNonEmpty!41944) b_and!36277)
(check-sat b_and!36277 (not b_next!22791))
