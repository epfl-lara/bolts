; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94932 () Bool)

(assert start!94932)

(declare-fun b_free!22101 () Bool)

(declare-fun b_next!22101 () Bool)

(assert (=> start!94932 (= b_free!22101 (not b_next!22101))))

(declare-fun tp!77769 () Bool)

(declare-fun b_and!34973 () Bool)

(assert (=> start!94932 (= tp!77769 b_and!34973)))

(declare-fun res!715754 () Bool)

(declare-fun e!612965 () Bool)

(assert (=> start!94932 (=> (not res!715754) (not e!612965))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94932 (= res!715754 (validMask!0 mask!1515))))

(assert (=> start!94932 e!612965))

(assert (=> start!94932 true))

(declare-fun tp_is_empty!25911 () Bool)

(assert (=> start!94932 tp_is_empty!25911))

(declare-datatypes ((V!39683 0))(
  ( (V!39684 (val!13006 Int)) )
))
(declare-datatypes ((ValueCell!12252 0))(
  ( (ValueCellFull!12252 (v!15625 V!39683)) (EmptyCell!12252) )
))
(declare-datatypes ((array!68750 0))(
  ( (array!68751 (arr!33065 (Array (_ BitVec 32) ValueCell!12252)) (size!33602 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68750)

(declare-fun e!612963 () Bool)

(declare-fun array_inv!25416 (array!68750) Bool)

(assert (=> start!94932 (and (array_inv!25416 _values!955) e!612963)))

(assert (=> start!94932 tp!77769))

(declare-datatypes ((array!68752 0))(
  ( (array!68753 (arr!33066 (Array (_ BitVec 32) (_ BitVec 64))) (size!33603 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68752)

(declare-fun array_inv!25417 (array!68752) Bool)

(assert (=> start!94932 (array_inv!25417 _keys!1163)))

(declare-fun b!1072956 () Bool)

(declare-fun res!715755 () Bool)

(assert (=> b!1072956 (=> (not res!715755) (not e!612965))))

(declare-datatypes ((List!23208 0))(
  ( (Nil!23205) (Cons!23204 (h!24413 (_ BitVec 64)) (t!32552 List!23208)) )
))
(declare-fun arrayNoDuplicates!0 (array!68752 (_ BitVec 32) List!23208) Bool)

(assert (=> b!1072956 (= res!715755 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23205))))

(declare-fun mapNonEmpty!40579 () Bool)

(declare-fun mapRes!40579 () Bool)

(declare-fun tp!77768 () Bool)

(declare-fun e!612964 () Bool)

(assert (=> mapNonEmpty!40579 (= mapRes!40579 (and tp!77768 e!612964))))

(declare-fun mapKey!40579 () (_ BitVec 32))

(declare-fun mapValue!40579 () ValueCell!12252)

(declare-fun mapRest!40579 () (Array (_ BitVec 32) ValueCell!12252))

(assert (=> mapNonEmpty!40579 (= (arr!33065 _values!955) (store mapRest!40579 mapKey!40579 mapValue!40579))))

(declare-fun b!1072957 () Bool)

(declare-fun e!612967 () Bool)

(assert (=> b!1072957 (= e!612967 tp_is_empty!25911)))

(declare-fun mapIsEmpty!40579 () Bool)

(assert (=> mapIsEmpty!40579 mapRes!40579))

(declare-fun b!1072958 () Bool)

(declare-fun res!715753 () Bool)

(assert (=> b!1072958 (=> (not res!715753) (not e!612965))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68752 (_ BitVec 32)) Bool)

(assert (=> b!1072958 (= res!715753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1072959 () Bool)

(declare-fun res!715752 () Bool)

(assert (=> b!1072959 (=> (not res!715752) (not e!612965))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072959 (= res!715752 (and (= (size!33602 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33603 _keys!1163) (size!33602 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072960 () Bool)

(assert (=> b!1072960 (= e!612963 (and e!612967 mapRes!40579))))

(declare-fun condMapEmpty!40579 () Bool)

(declare-fun mapDefault!40579 () ValueCell!12252)

(assert (=> b!1072960 (= condMapEmpty!40579 (= (arr!33065 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12252)) mapDefault!40579)))))

(declare-fun b!1072961 () Bool)

(assert (=> b!1072961 (= e!612965 false)))

(declare-fun minValue!907 () V!39683)

(declare-datatypes ((tuple2!16628 0))(
  ( (tuple2!16629 (_1!8324 (_ BitVec 64)) (_2!8324 V!39683)) )
))
(declare-datatypes ((List!23209 0))(
  ( (Nil!23206) (Cons!23205 (h!24414 tuple2!16628) (t!32553 List!23209)) )
))
(declare-datatypes ((ListLongMap!14609 0))(
  ( (ListLongMap!14610 (toList!7320 List!23209)) )
))
(declare-fun lt!475901 () ListLongMap!14609)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39683)

(declare-fun getCurrentListMapNoExtraKeys!3850 (array!68752 array!68750 (_ BitVec 32) (_ BitVec 32) V!39683 V!39683 (_ BitVec 32) Int) ListLongMap!14609)

(assert (=> b!1072961 (= lt!475901 (getCurrentListMapNoExtraKeys!3850 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39683)

(declare-fun lt!475900 () ListLongMap!14609)

(assert (=> b!1072961 (= lt!475900 (getCurrentListMapNoExtraKeys!3850 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072962 () Bool)

(assert (=> b!1072962 (= e!612964 tp_is_empty!25911)))

(assert (= (and start!94932 res!715754) b!1072959))

(assert (= (and b!1072959 res!715752) b!1072958))

(assert (= (and b!1072958 res!715753) b!1072956))

(assert (= (and b!1072956 res!715755) b!1072961))

(assert (= (and b!1072960 condMapEmpty!40579) mapIsEmpty!40579))

(assert (= (and b!1072960 (not condMapEmpty!40579)) mapNonEmpty!40579))

(get-info :version)

(assert (= (and mapNonEmpty!40579 ((_ is ValueCellFull!12252) mapValue!40579)) b!1072962))

(assert (= (and b!1072960 ((_ is ValueCellFull!12252) mapDefault!40579)) b!1072957))

(assert (= start!94932 b!1072960))

(declare-fun m!992181 () Bool)

(assert (=> b!1072961 m!992181))

(declare-fun m!992183 () Bool)

(assert (=> b!1072961 m!992183))

(declare-fun m!992185 () Bool)

(assert (=> b!1072958 m!992185))

(declare-fun m!992187 () Bool)

(assert (=> b!1072956 m!992187))

(declare-fun m!992189 () Bool)

(assert (=> start!94932 m!992189))

(declare-fun m!992191 () Bool)

(assert (=> start!94932 m!992191))

(declare-fun m!992193 () Bool)

(assert (=> start!94932 m!992193))

(declare-fun m!992195 () Bool)

(assert (=> mapNonEmpty!40579 m!992195))

(check-sat (not b!1072956) (not b!1072961) (not start!94932) (not b!1072958) b_and!34973 (not b_next!22101) (not mapNonEmpty!40579) tp_is_empty!25911)
(check-sat b_and!34973 (not b_next!22101))
