; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94694 () Bool)

(assert start!94694)

(declare-fun b_free!21927 () Bool)

(declare-fun b_next!21927 () Bool)

(assert (=> start!94694 (= b_free!21927 (not b_next!21927))))

(declare-fun tp!77238 () Bool)

(declare-fun b_and!34765 () Bool)

(assert (=> start!94694 (= tp!77238 b_and!34765)))

(declare-fun mapIsEmpty!40309 () Bool)

(declare-fun mapRes!40309 () Bool)

(assert (=> mapIsEmpty!40309 mapRes!40309))

(declare-fun b!1070179 () Bool)

(declare-fun e!610904 () Bool)

(declare-fun e!610900 () Bool)

(assert (=> b!1070179 (= e!610904 (and e!610900 mapRes!40309))))

(declare-fun condMapEmpty!40309 () Bool)

(declare-datatypes ((V!39451 0))(
  ( (V!39452 (val!12919 Int)) )
))
(declare-datatypes ((ValueCell!12165 0))(
  ( (ValueCellFull!12165 (v!15536 V!39451)) (EmptyCell!12165) )
))
(declare-datatypes ((array!68420 0))(
  ( (array!68421 (arr!32903 (Array (_ BitVec 32) ValueCell!12165)) (size!33440 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68420)

(declare-fun mapDefault!40309 () ValueCell!12165)

(assert (=> b!1070179 (= condMapEmpty!40309 (= (arr!32903 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12165)) mapDefault!40309)))))

(declare-fun b!1070180 () Bool)

(declare-fun e!610901 () Bool)

(declare-fun tp_is_empty!25737 () Bool)

(assert (=> b!1070180 (= e!610901 tp_is_empty!25737)))

(declare-fun b!1070181 () Bool)

(declare-fun res!714054 () Bool)

(declare-fun e!610905 () Bool)

(assert (=> b!1070181 (=> (not res!714054) (not e!610905))))

(declare-datatypes ((array!68422 0))(
  ( (array!68423 (arr!32904 (Array (_ BitVec 32) (_ BitVec 64))) (size!33441 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68422)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68422 (_ BitVec 32)) Bool)

(assert (=> b!1070181 (= res!714054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1070182 () Bool)

(declare-fun e!610903 () Bool)

(assert (=> b!1070182 (= e!610903 true)))

(declare-fun zeroValueBefore!47 () V!39451)

(declare-datatypes ((tuple2!16498 0))(
  ( (tuple2!16499 (_1!8259 (_ BitVec 64)) (_2!8259 V!39451)) )
))
(declare-datatypes ((List!23083 0))(
  ( (Nil!23080) (Cons!23079 (h!24288 tuple2!16498) (t!32421 List!23083)) )
))
(declare-datatypes ((ListLongMap!14479 0))(
  ( (ListLongMap!14480 (toList!7255 List!23083)) )
))
(declare-fun lt!472946 () ListLongMap!14479)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39451)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4121 (array!68422 array!68420 (_ BitVec 32) (_ BitVec 32) V!39451 V!39451 (_ BitVec 32) Int) ListLongMap!14479)

(assert (=> b!1070182 (= lt!472946 (getCurrentListMap!4121 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070183 () Bool)

(declare-fun res!714052 () Bool)

(assert (=> b!1070183 (=> (not res!714052) (not e!610905))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1070183 (= res!714052 (and (= (size!33440 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33441 _keys!1163) (size!33440 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1070184 () Bool)

(declare-fun res!714053 () Bool)

(assert (=> b!1070184 (=> (not res!714053) (not e!610905))))

(declare-datatypes ((List!23084 0))(
  ( (Nil!23081) (Cons!23080 (h!24289 (_ BitVec 64)) (t!32422 List!23084)) )
))
(declare-fun arrayNoDuplicates!0 (array!68422 (_ BitVec 32) List!23084) Bool)

(assert (=> b!1070184 (= res!714053 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23081))))

(declare-fun mapNonEmpty!40309 () Bool)

(declare-fun tp!77237 () Bool)

(assert (=> mapNonEmpty!40309 (= mapRes!40309 (and tp!77237 e!610901))))

(declare-fun mapKey!40309 () (_ BitVec 32))

(declare-fun mapValue!40309 () ValueCell!12165)

(declare-fun mapRest!40309 () (Array (_ BitVec 32) ValueCell!12165))

(assert (=> mapNonEmpty!40309 (= (arr!32903 _values!955) (store mapRest!40309 mapKey!40309 mapValue!40309))))

(declare-fun b!1070186 () Bool)

(assert (=> b!1070186 (= e!610905 (not e!610903))))

(declare-fun res!714056 () Bool)

(assert (=> b!1070186 (=> res!714056 e!610903)))

(assert (=> b!1070186 (= res!714056 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!472944 () ListLongMap!14479)

(declare-fun lt!472945 () ListLongMap!14479)

(assert (=> b!1070186 (= lt!472944 lt!472945)))

(declare-datatypes ((Unit!35174 0))(
  ( (Unit!35175) )
))
(declare-fun lt!472943 () Unit!35174)

(declare-fun zeroValueAfter!47 () V!39451)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!830 (array!68422 array!68420 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39451 V!39451 V!39451 V!39451 (_ BitVec 32) Int) Unit!35174)

(assert (=> b!1070186 (= lt!472943 (lemmaNoChangeToArrayThenSameMapNoExtras!830 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3791 (array!68422 array!68420 (_ BitVec 32) (_ BitVec 32) V!39451 V!39451 (_ BitVec 32) Int) ListLongMap!14479)

(assert (=> b!1070186 (= lt!472945 (getCurrentListMapNoExtraKeys!3791 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070186 (= lt!472944 (getCurrentListMapNoExtraKeys!3791 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!714055 () Bool)

(assert (=> start!94694 (=> (not res!714055) (not e!610905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94694 (= res!714055 (validMask!0 mask!1515))))

(assert (=> start!94694 e!610905))

(assert (=> start!94694 true))

(assert (=> start!94694 tp_is_empty!25737))

(declare-fun array_inv!25300 (array!68420) Bool)

(assert (=> start!94694 (and (array_inv!25300 _values!955) e!610904)))

(assert (=> start!94694 tp!77238))

(declare-fun array_inv!25301 (array!68422) Bool)

(assert (=> start!94694 (array_inv!25301 _keys!1163)))

(declare-fun b!1070185 () Bool)

(assert (=> b!1070185 (= e!610900 tp_is_empty!25737)))

(assert (= (and start!94694 res!714055) b!1070183))

(assert (= (and b!1070183 res!714052) b!1070181))

(assert (= (and b!1070181 res!714054) b!1070184))

(assert (= (and b!1070184 res!714053) b!1070186))

(assert (= (and b!1070186 (not res!714056)) b!1070182))

(assert (= (and b!1070179 condMapEmpty!40309) mapIsEmpty!40309))

(assert (= (and b!1070179 (not condMapEmpty!40309)) mapNonEmpty!40309))

(get-info :version)

(assert (= (and mapNonEmpty!40309 ((_ is ValueCellFull!12165) mapValue!40309)) b!1070180))

(assert (= (and b!1070179 ((_ is ValueCellFull!12165) mapDefault!40309)) b!1070185))

(assert (= start!94694 b!1070179))

(declare-fun m!988699 () Bool)

(assert (=> b!1070181 m!988699))

(declare-fun m!988701 () Bool)

(assert (=> b!1070184 m!988701))

(declare-fun m!988703 () Bool)

(assert (=> b!1070186 m!988703))

(declare-fun m!988705 () Bool)

(assert (=> b!1070186 m!988705))

(declare-fun m!988707 () Bool)

(assert (=> b!1070186 m!988707))

(declare-fun m!988709 () Bool)

(assert (=> b!1070182 m!988709))

(declare-fun m!988711 () Bool)

(assert (=> mapNonEmpty!40309 m!988711))

(declare-fun m!988713 () Bool)

(assert (=> start!94694 m!988713))

(declare-fun m!988715 () Bool)

(assert (=> start!94694 m!988715))

(declare-fun m!988717 () Bool)

(assert (=> start!94694 m!988717))

(check-sat (not start!94694) (not b_next!21927) b_and!34765 (not b!1070181) (not b!1070184) tp_is_empty!25737 (not b!1070186) (not b!1070182) (not mapNonEmpty!40309))
(check-sat b_and!34765 (not b_next!21927))
