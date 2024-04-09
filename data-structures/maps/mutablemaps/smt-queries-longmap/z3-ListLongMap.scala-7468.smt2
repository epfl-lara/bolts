; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94770 () Bool)

(assert start!94770)

(declare-fun b_free!21987 () Bool)

(declare-fun b_next!21987 () Bool)

(assert (=> start!94770 (= b_free!21987 (not b_next!21987))))

(declare-fun tp!77420 () Bool)

(declare-fun b_and!34835 () Bool)

(assert (=> start!94770 (= tp!77420 b_and!34835)))

(declare-fun mapIsEmpty!40402 () Bool)

(declare-fun mapRes!40402 () Bool)

(assert (=> mapIsEmpty!40402 mapRes!40402))

(declare-fun b!1071079 () Bool)

(declare-fun e!611572 () Bool)

(declare-fun tp_is_empty!25797 () Bool)

(assert (=> b!1071079 (= e!611572 tp_is_empty!25797)))

(declare-fun b!1071080 () Bool)

(declare-fun res!714593 () Bool)

(declare-fun e!611571 () Bool)

(assert (=> b!1071080 (=> (not res!714593) (not e!611571))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39531 0))(
  ( (V!39532 (val!12949 Int)) )
))
(declare-datatypes ((ValueCell!12195 0))(
  ( (ValueCellFull!12195 (v!15566 V!39531)) (EmptyCell!12195) )
))
(declare-datatypes ((array!68528 0))(
  ( (array!68529 (arr!32956 (Array (_ BitVec 32) ValueCell!12195)) (size!33493 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68528)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68530 0))(
  ( (array!68531 (arr!32957 (Array (_ BitVec 32) (_ BitVec 64))) (size!33494 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68530)

(assert (=> b!1071080 (= res!714593 (and (= (size!33493 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33494 _keys!1163) (size!33493 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16540 0))(
  ( (tuple2!16541 (_1!8280 (_ BitVec 64)) (_2!8280 V!39531)) )
))
(declare-datatypes ((List!23124 0))(
  ( (Nil!23121) (Cons!23120 (h!24329 tuple2!16540) (t!32464 List!23124)) )
))
(declare-datatypes ((ListLongMap!14521 0))(
  ( (ListLongMap!14522 (toList!7276 List!23124)) )
))
(declare-fun lt!473609 () ListLongMap!14521)

(declare-fun lt!473614 () ListLongMap!14521)

(declare-fun b!1071081 () Bool)

(declare-fun lt!473615 () tuple2!16540)

(declare-fun e!611568 () Bool)

(declare-fun +!3133 (ListLongMap!14521 tuple2!16540) ListLongMap!14521)

(assert (=> b!1071081 (= e!611568 (= lt!473609 (+!3133 lt!473614 lt!473615)))))

(declare-fun b!1071083 () Bool)

(declare-fun e!611566 () Bool)

(declare-fun e!611569 () Bool)

(assert (=> b!1071083 (= e!611566 (and e!611569 mapRes!40402))))

(declare-fun condMapEmpty!40402 () Bool)

(declare-fun mapDefault!40402 () ValueCell!12195)

(assert (=> b!1071083 (= condMapEmpty!40402 (= (arr!32956 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12195)) mapDefault!40402)))))

(declare-fun b!1071084 () Bool)

(assert (=> b!1071084 (= e!611569 tp_is_empty!25797)))

(declare-fun b!1071085 () Bool)

(declare-fun e!611567 () Bool)

(assert (=> b!1071085 (= e!611571 (not e!611567))))

(declare-fun res!714596 () Bool)

(assert (=> b!1071085 (=> res!714596 e!611567)))

(assert (=> b!1071085 (= res!714596 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!473616 () ListLongMap!14521)

(assert (=> b!1071085 (= lt!473616 lt!473614)))

(declare-fun zeroValueBefore!47 () V!39531)

(declare-datatypes ((Unit!35215 0))(
  ( (Unit!35216) )
))
(declare-fun lt!473612 () Unit!35215)

(declare-fun minValue!907 () V!39531)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39531)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!850 (array!68530 array!68528 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39531 V!39531 V!39531 V!39531 (_ BitVec 32) Int) Unit!35215)

(assert (=> b!1071085 (= lt!473612 (lemmaNoChangeToArrayThenSameMapNoExtras!850 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3811 (array!68530 array!68528 (_ BitVec 32) (_ BitVec 32) V!39531 V!39531 (_ BitVec 32) Int) ListLongMap!14521)

(assert (=> b!1071085 (= lt!473614 (getCurrentListMapNoExtraKeys!3811 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071085 (= lt!473616 (getCurrentListMapNoExtraKeys!3811 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071086 () Bool)

(declare-fun res!714594 () Bool)

(assert (=> b!1071086 (=> (not res!714594) (not e!611571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68530 (_ BitVec 32)) Bool)

(assert (=> b!1071086 (= res!714594 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!714595 () Bool)

(assert (=> start!94770 (=> (not res!714595) (not e!611571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94770 (= res!714595 (validMask!0 mask!1515))))

(assert (=> start!94770 e!611571))

(assert (=> start!94770 true))

(assert (=> start!94770 tp_is_empty!25797))

(declare-fun array_inv!25336 (array!68528) Bool)

(assert (=> start!94770 (and (array_inv!25336 _values!955) e!611566)))

(assert (=> start!94770 tp!77420))

(declare-fun array_inv!25337 (array!68530) Bool)

(assert (=> start!94770 (array_inv!25337 _keys!1163)))

(declare-fun b!1071082 () Bool)

(assert (=> b!1071082 (= e!611567 true)))

(declare-fun lt!473619 () ListLongMap!14521)

(declare-fun lt!473618 () ListLongMap!14521)

(declare-fun -!670 (ListLongMap!14521 (_ BitVec 64)) ListLongMap!14521)

(assert (=> b!1071082 (= lt!473619 (-!670 lt!473618 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!473611 () ListLongMap!14521)

(declare-fun lt!473608 () ListLongMap!14521)

(assert (=> b!1071082 (= lt!473611 lt!473608)))

(declare-fun lt!473610 () Unit!35215)

(declare-fun addCommutativeForDiffKeys!714 (ListLongMap!14521 (_ BitVec 64) V!39531 (_ BitVec 64) V!39531) Unit!35215)

(assert (=> b!1071082 (= lt!473610 (addCommutativeForDiffKeys!714 lt!473616 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!473607 () ListLongMap!14521)

(assert (=> b!1071082 (= (-!670 lt!473608 #b0000000000000000000000000000000000000000000000000000000000000000) lt!473607)))

(declare-fun lt!473617 () tuple2!16540)

(assert (=> b!1071082 (= lt!473608 (+!3133 lt!473607 lt!473617))))

(declare-fun lt!473613 () Unit!35215)

(declare-fun addThenRemoveForNewKeyIsSame!44 (ListLongMap!14521 (_ BitVec 64) V!39531) Unit!35215)

(assert (=> b!1071082 (= lt!473613 (addThenRemoveForNewKeyIsSame!44 lt!473607 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1071082 (= lt!473607 (+!3133 lt!473616 lt!473615))))

(assert (=> b!1071082 e!611568))

(declare-fun res!714597 () Bool)

(assert (=> b!1071082 (=> (not res!714597) (not e!611568))))

(assert (=> b!1071082 (= res!714597 (= lt!473618 lt!473611))))

(assert (=> b!1071082 (= lt!473611 (+!3133 (+!3133 lt!473616 lt!473617) lt!473615))))

(assert (=> b!1071082 (= lt!473615 (tuple2!16541 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071082 (= lt!473617 (tuple2!16541 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun getCurrentListMap!4142 (array!68530 array!68528 (_ BitVec 32) (_ BitVec 32) V!39531 V!39531 (_ BitVec 32) Int) ListLongMap!14521)

(assert (=> b!1071082 (= lt!473609 (getCurrentListMap!4142 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071082 (= lt!473618 (getCurrentListMap!4142 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071087 () Bool)

(declare-fun res!714592 () Bool)

(assert (=> b!1071087 (=> (not res!714592) (not e!611571))))

(declare-datatypes ((List!23125 0))(
  ( (Nil!23122) (Cons!23121 (h!24330 (_ BitVec 64)) (t!32465 List!23125)) )
))
(declare-fun arrayNoDuplicates!0 (array!68530 (_ BitVec 32) List!23125) Bool)

(assert (=> b!1071087 (= res!714592 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23122))))

(declare-fun mapNonEmpty!40402 () Bool)

(declare-fun tp!77421 () Bool)

(assert (=> mapNonEmpty!40402 (= mapRes!40402 (and tp!77421 e!611572))))

(declare-fun mapValue!40402 () ValueCell!12195)

(declare-fun mapRest!40402 () (Array (_ BitVec 32) ValueCell!12195))

(declare-fun mapKey!40402 () (_ BitVec 32))

(assert (=> mapNonEmpty!40402 (= (arr!32956 _values!955) (store mapRest!40402 mapKey!40402 mapValue!40402))))

(assert (= (and start!94770 res!714595) b!1071080))

(assert (= (and b!1071080 res!714593) b!1071086))

(assert (= (and b!1071086 res!714594) b!1071087))

(assert (= (and b!1071087 res!714592) b!1071085))

(assert (= (and b!1071085 (not res!714596)) b!1071082))

(assert (= (and b!1071082 res!714597) b!1071081))

(assert (= (and b!1071083 condMapEmpty!40402) mapIsEmpty!40402))

(assert (= (and b!1071083 (not condMapEmpty!40402)) mapNonEmpty!40402))

(get-info :version)

(assert (= (and mapNonEmpty!40402 ((_ is ValueCellFull!12195) mapValue!40402)) b!1071079))

(assert (= (and b!1071083 ((_ is ValueCellFull!12195) mapDefault!40402)) b!1071084))

(assert (= start!94770 b!1071083))

(declare-fun m!989575 () Bool)

(assert (=> b!1071082 m!989575))

(declare-fun m!989577 () Bool)

(assert (=> b!1071082 m!989577))

(declare-fun m!989579 () Bool)

(assert (=> b!1071082 m!989579))

(declare-fun m!989581 () Bool)

(assert (=> b!1071082 m!989581))

(declare-fun m!989583 () Bool)

(assert (=> b!1071082 m!989583))

(declare-fun m!989585 () Bool)

(assert (=> b!1071082 m!989585))

(declare-fun m!989587 () Bool)

(assert (=> b!1071082 m!989587))

(declare-fun m!989589 () Bool)

(assert (=> b!1071082 m!989589))

(declare-fun m!989591 () Bool)

(assert (=> b!1071082 m!989591))

(declare-fun m!989593 () Bool)

(assert (=> b!1071082 m!989593))

(assert (=> b!1071082 m!989587))

(declare-fun m!989595 () Bool)

(assert (=> b!1071086 m!989595))

(declare-fun m!989597 () Bool)

(assert (=> b!1071087 m!989597))

(declare-fun m!989599 () Bool)

(assert (=> b!1071085 m!989599))

(declare-fun m!989601 () Bool)

(assert (=> b!1071085 m!989601))

(declare-fun m!989603 () Bool)

(assert (=> b!1071085 m!989603))

(declare-fun m!989605 () Bool)

(assert (=> mapNonEmpty!40402 m!989605))

(declare-fun m!989607 () Bool)

(assert (=> start!94770 m!989607))

(declare-fun m!989609 () Bool)

(assert (=> start!94770 m!989609))

(declare-fun m!989611 () Bool)

(assert (=> start!94770 m!989611))

(declare-fun m!989613 () Bool)

(assert (=> b!1071081 m!989613))

(check-sat (not b_next!21987) (not mapNonEmpty!40402) tp_is_empty!25797 b_and!34835 (not b!1071086) (not b!1071085) (not b!1071082) (not b!1071087) (not b!1071081) (not start!94770))
(check-sat b_and!34835 (not b_next!21987))
