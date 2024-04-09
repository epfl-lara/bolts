; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95888 () Bool)

(assert start!95888)

(declare-fun b_free!22505 () Bool)

(declare-fun b_next!22505 () Bool)

(assert (=> start!95888 (= b_free!22505 (not b_next!22505))))

(declare-fun tp!79365 () Bool)

(declare-fun b_and!35703 () Bool)

(assert (=> start!95888 (= tp!79365 b_and!35703)))

(declare-fun b!1084792 () Bool)

(declare-fun res!723317 () Bool)

(declare-fun e!619763 () Bool)

(assert (=> b!1084792 (=> (not res!723317) (not e!619763))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69916 0))(
  ( (array!69917 (arr!33628 (Array (_ BitVec 32) (_ BitVec 64))) (size!34165 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69916)

(declare-datatypes ((V!40469 0))(
  ( (V!40470 (val!13310 Int)) )
))
(declare-datatypes ((ValueCell!12544 0))(
  ( (ValueCellFull!12544 (v!15932 V!40469)) (EmptyCell!12544) )
))
(declare-datatypes ((array!69918 0))(
  ( (array!69919 (arr!33629 (Array (_ BitVec 32) ValueCell!12544)) (size!34166 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69918)

(assert (=> b!1084792 (= res!723317 (and (= (size!34166 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34165 _keys!1070) (size!34166 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1084793 () Bool)

(declare-fun res!723308 () Bool)

(assert (=> b!1084793 (=> (not res!723308) (not e!619763))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1084793 (= res!723308 (= (select (arr!33628 _keys!1070) i!650) k!904))))

(declare-fun b!1084794 () Bool)

(declare-fun res!723312 () Bool)

(assert (=> b!1084794 (=> (not res!723312) (not e!619763))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1084794 (= res!723312 (validKeyInArray!0 k!904))))

(declare-fun b!1084795 () Bool)

(declare-fun res!723315 () Bool)

(declare-fun e!619766 () Bool)

(assert (=> b!1084795 (=> (not res!723315) (not e!619766))))

(declare-fun lt!480971 () array!69916)

(declare-datatypes ((List!23578 0))(
  ( (Nil!23575) (Cons!23574 (h!24783 (_ BitVec 64)) (t!33148 List!23578)) )
))
(declare-fun arrayNoDuplicates!0 (array!69916 (_ BitVec 32) List!23578) Bool)

(assert (=> b!1084795 (= res!723315 (arrayNoDuplicates!0 lt!480971 #b00000000000000000000000000000000 Nil!23575))))

(declare-fun b!1084796 () Bool)

(assert (=> b!1084796 (= e!619763 e!619766)))

(declare-fun res!723313 () Bool)

(assert (=> b!1084796 (=> (not res!723313) (not e!619766))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69916 (_ BitVec 32)) Bool)

(assert (=> b!1084796 (= res!723313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480971 mask!1414))))

(assert (=> b!1084796 (= lt!480971 (array!69917 (store (arr!33628 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34165 _keys!1070)))))

(declare-fun b!1084797 () Bool)

(declare-fun res!723309 () Bool)

(assert (=> b!1084797 (=> (not res!723309) (not e!619763))))

(assert (=> b!1084797 (= res!723309 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34165 _keys!1070))))))

(declare-fun b!1084798 () Bool)

(declare-fun e!619765 () Bool)

(assert (=> b!1084798 (= e!619766 (not e!619765))))

(declare-fun res!723310 () Bool)

(assert (=> b!1084798 (=> res!723310 e!619765)))

(assert (=> b!1084798 (= res!723310 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40469)

(declare-datatypes ((tuple2!16936 0))(
  ( (tuple2!16937 (_1!8478 (_ BitVec 64)) (_2!8478 V!40469)) )
))
(declare-datatypes ((List!23579 0))(
  ( (Nil!23576) (Cons!23575 (h!24784 tuple2!16936) (t!33149 List!23579)) )
))
(declare-datatypes ((ListLongMap!14917 0))(
  ( (ListLongMap!14918 (toList!7474 List!23579)) )
))
(declare-fun lt!480982 () ListLongMap!14917)

(declare-fun zeroValue!831 () V!40469)

(declare-fun getCurrentListMap!4231 (array!69916 array!69918 (_ BitVec 32) (_ BitVec 32) V!40469 V!40469 (_ BitVec 32) Int) ListLongMap!14917)

(assert (=> b!1084798 (= lt!480982 (getCurrentListMap!4231 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480979 () array!69918)

(declare-fun lt!480974 () ListLongMap!14917)

(assert (=> b!1084798 (= lt!480974 (getCurrentListMap!4231 lt!480971 lt!480979 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480983 () ListLongMap!14917)

(declare-fun lt!480980 () ListLongMap!14917)

(assert (=> b!1084798 (and (= lt!480983 lt!480980) (= lt!480980 lt!480983))))

(declare-fun lt!480976 () ListLongMap!14917)

(declare-fun -!755 (ListLongMap!14917 (_ BitVec 64)) ListLongMap!14917)

(assert (=> b!1084798 (= lt!480980 (-!755 lt!480976 k!904))))

(declare-datatypes ((Unit!35625 0))(
  ( (Unit!35626) )
))
(declare-fun lt!480975 () Unit!35625)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!37 (array!69916 array!69918 (_ BitVec 32) (_ BitVec 32) V!40469 V!40469 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35625)

(assert (=> b!1084798 (= lt!480975 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!37 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3983 (array!69916 array!69918 (_ BitVec 32) (_ BitVec 32) V!40469 V!40469 (_ BitVec 32) Int) ListLongMap!14917)

(assert (=> b!1084798 (= lt!480983 (getCurrentListMapNoExtraKeys!3983 lt!480971 lt!480979 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2119 (Int (_ BitVec 64)) V!40469)

(assert (=> b!1084798 (= lt!480979 (array!69919 (store (arr!33629 _values!874) i!650 (ValueCellFull!12544 (dynLambda!2119 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34166 _values!874)))))

(assert (=> b!1084798 (= lt!480976 (getCurrentListMapNoExtraKeys!3983 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69916 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1084798 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!480973 () Unit!35625)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69916 (_ BitVec 64) (_ BitVec 32)) Unit!35625)

(assert (=> b!1084798 (= lt!480973 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun mapIsEmpty!41515 () Bool)

(declare-fun mapRes!41515 () Bool)

(assert (=> mapIsEmpty!41515 mapRes!41515))

(declare-fun res!723316 () Bool)

(assert (=> start!95888 (=> (not res!723316) (not e!619763))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95888 (= res!723316 (validMask!0 mask!1414))))

(assert (=> start!95888 e!619763))

(assert (=> start!95888 tp!79365))

(assert (=> start!95888 true))

(declare-fun tp_is_empty!26507 () Bool)

(assert (=> start!95888 tp_is_empty!26507))

(declare-fun array_inv!25804 (array!69916) Bool)

(assert (=> start!95888 (array_inv!25804 _keys!1070)))

(declare-fun e!619764 () Bool)

(declare-fun array_inv!25805 (array!69918) Bool)

(assert (=> start!95888 (and (array_inv!25805 _values!874) e!619764)))

(declare-fun b!1084799 () Bool)

(declare-fun e!619762 () Bool)

(assert (=> b!1084799 (= e!619764 (and e!619762 mapRes!41515))))

(declare-fun condMapEmpty!41515 () Bool)

(declare-fun mapDefault!41515 () ValueCell!12544)

