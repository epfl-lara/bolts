; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94950 () Bool)

(assert start!94950)

(declare-fun b_free!22119 () Bool)

(declare-fun b_next!22119 () Bool)

(assert (=> start!94950 (= b_free!22119 (not b_next!22119))))

(declare-fun tp!77823 () Bool)

(declare-fun b_and!34991 () Bool)

(assert (=> start!94950 (= tp!77823 b_and!34991)))

(declare-fun b!1073145 () Bool)

(declare-fun res!715863 () Bool)

(declare-fun e!613101 () Bool)

(assert (=> b!1073145 (=> (not res!715863) (not e!613101))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39707 0))(
  ( (V!39708 (val!13015 Int)) )
))
(declare-datatypes ((ValueCell!12261 0))(
  ( (ValueCellFull!12261 (v!15634 V!39707)) (EmptyCell!12261) )
))
(declare-datatypes ((array!68786 0))(
  ( (array!68787 (arr!33083 (Array (_ BitVec 32) ValueCell!12261)) (size!33620 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68786)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68788 0))(
  ( (array!68789 (arr!33084 (Array (_ BitVec 32) (_ BitVec 64))) (size!33621 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68788)

(assert (=> b!1073145 (= res!715863 (and (= (size!33620 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33621 _keys!1163) (size!33620 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1073146 () Bool)

(declare-fun res!715861 () Bool)

(assert (=> b!1073146 (=> (not res!715861) (not e!613101))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68788 (_ BitVec 32)) Bool)

(assert (=> b!1073146 (= res!715861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!40606 () Bool)

(declare-fun mapRes!40606 () Bool)

(assert (=> mapIsEmpty!40606 mapRes!40606))

(declare-fun res!715862 () Bool)

(assert (=> start!94950 (=> (not res!715862) (not e!613101))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94950 (= res!715862 (validMask!0 mask!1515))))

(assert (=> start!94950 e!613101))

(assert (=> start!94950 true))

(declare-fun tp_is_empty!25929 () Bool)

(assert (=> start!94950 tp_is_empty!25929))

(declare-fun e!613099 () Bool)

(declare-fun array_inv!25428 (array!68786) Bool)

(assert (=> start!94950 (and (array_inv!25428 _values!955) e!613099)))

(assert (=> start!94950 tp!77823))

(declare-fun array_inv!25429 (array!68788) Bool)

(assert (=> start!94950 (array_inv!25429 _keys!1163)))

(declare-fun b!1073147 () Bool)

(declare-fun e!613098 () Bool)

(assert (=> b!1073147 (= e!613098 tp_is_empty!25929)))

(declare-fun b!1073148 () Bool)

(declare-fun res!715860 () Bool)

(assert (=> b!1073148 (=> (not res!715860) (not e!613101))))

(declare-datatypes ((List!23220 0))(
  ( (Nil!23217) (Cons!23216 (h!24425 (_ BitVec 64)) (t!32564 List!23220)) )
))
(declare-fun arrayNoDuplicates!0 (array!68788 (_ BitVec 32) List!23220) Bool)

(assert (=> b!1073148 (= res!715860 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23217))))

(declare-fun b!1073149 () Bool)

(assert (=> b!1073149 (= e!613101 false)))

(declare-datatypes ((tuple2!16640 0))(
  ( (tuple2!16641 (_1!8330 (_ BitVec 64)) (_2!8330 V!39707)) )
))
(declare-datatypes ((List!23221 0))(
  ( (Nil!23218) (Cons!23217 (h!24426 tuple2!16640) (t!32565 List!23221)) )
))
(declare-datatypes ((ListLongMap!14621 0))(
  ( (ListLongMap!14622 (toList!7326 List!23221)) )
))
(declare-fun lt!475954 () ListLongMap!14621)

(declare-fun minValue!907 () V!39707)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39707)

(declare-fun getCurrentListMapNoExtraKeys!3856 (array!68788 array!68786 (_ BitVec 32) (_ BitVec 32) V!39707 V!39707 (_ BitVec 32) Int) ListLongMap!14621)

(assert (=> b!1073149 (= lt!475954 (getCurrentListMapNoExtraKeys!3856 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39707)

(declare-fun lt!475955 () ListLongMap!14621)

(assert (=> b!1073149 (= lt!475955 (getCurrentListMapNoExtraKeys!3856 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1073150 () Bool)

(declare-fun e!613100 () Bool)

(assert (=> b!1073150 (= e!613100 tp_is_empty!25929)))

(declare-fun b!1073151 () Bool)

(assert (=> b!1073151 (= e!613099 (and e!613098 mapRes!40606))))

(declare-fun condMapEmpty!40606 () Bool)

(declare-fun mapDefault!40606 () ValueCell!12261)

(assert (=> b!1073151 (= condMapEmpty!40606 (= (arr!33083 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12261)) mapDefault!40606)))))

(declare-fun mapNonEmpty!40606 () Bool)

(declare-fun tp!77822 () Bool)

(assert (=> mapNonEmpty!40606 (= mapRes!40606 (and tp!77822 e!613100))))

(declare-fun mapValue!40606 () ValueCell!12261)

(declare-fun mapKey!40606 () (_ BitVec 32))

(declare-fun mapRest!40606 () (Array (_ BitVec 32) ValueCell!12261))

(assert (=> mapNonEmpty!40606 (= (arr!33083 _values!955) (store mapRest!40606 mapKey!40606 mapValue!40606))))

(assert (= (and start!94950 res!715862) b!1073145))

(assert (= (and b!1073145 res!715863) b!1073146))

(assert (= (and b!1073146 res!715861) b!1073148))

(assert (= (and b!1073148 res!715860) b!1073149))

(assert (= (and b!1073151 condMapEmpty!40606) mapIsEmpty!40606))

(assert (= (and b!1073151 (not condMapEmpty!40606)) mapNonEmpty!40606))

(get-info :version)

(assert (= (and mapNonEmpty!40606 ((_ is ValueCellFull!12261) mapValue!40606)) b!1073150))

(assert (= (and b!1073151 ((_ is ValueCellFull!12261) mapDefault!40606)) b!1073147))

(assert (= start!94950 b!1073151))

(declare-fun m!992325 () Bool)

(assert (=> mapNonEmpty!40606 m!992325))

(declare-fun m!992327 () Bool)

(assert (=> b!1073146 m!992327))

(declare-fun m!992329 () Bool)

(assert (=> start!94950 m!992329))

(declare-fun m!992331 () Bool)

(assert (=> start!94950 m!992331))

(declare-fun m!992333 () Bool)

(assert (=> start!94950 m!992333))

(declare-fun m!992335 () Bool)

(assert (=> b!1073149 m!992335))

(declare-fun m!992337 () Bool)

(assert (=> b!1073149 m!992337))

(declare-fun m!992339 () Bool)

(assert (=> b!1073148 m!992339))

(check-sat (not start!94950) (not b!1073148) (not b!1073146) b_and!34991 tp_is_empty!25929 (not b_next!22119) (not b!1073149) (not mapNonEmpty!40606))
(check-sat b_and!34991 (not b_next!22119))
