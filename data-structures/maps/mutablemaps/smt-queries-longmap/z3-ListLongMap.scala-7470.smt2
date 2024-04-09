; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94782 () Bool)

(assert start!94782)

(declare-fun b_free!21999 () Bool)

(declare-fun b_next!21999 () Bool)

(assert (=> start!94782 (= b_free!21999 (not b_next!21999))))

(declare-fun tp!77457 () Bool)

(declare-fun b_and!34847 () Bool)

(assert (=> start!94782 (= tp!77457 b_and!34847)))

(declare-fun mapNonEmpty!40420 () Bool)

(declare-fun mapRes!40420 () Bool)

(declare-fun tp!77456 () Bool)

(declare-fun e!611694 () Bool)

(assert (=> mapNonEmpty!40420 (= mapRes!40420 (and tp!77456 e!611694))))

(declare-fun mapKey!40420 () (_ BitVec 32))

(declare-datatypes ((V!39547 0))(
  ( (V!39548 (val!12955 Int)) )
))
(declare-datatypes ((ValueCell!12201 0))(
  ( (ValueCellFull!12201 (v!15572 V!39547)) (EmptyCell!12201) )
))
(declare-fun mapRest!40420 () (Array (_ BitVec 32) ValueCell!12201))

(declare-fun mapValue!40420 () ValueCell!12201)

(declare-datatypes ((array!68552 0))(
  ( (array!68553 (arr!32968 (Array (_ BitVec 32) ValueCell!12201)) (size!33505 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68552)

(assert (=> mapNonEmpty!40420 (= (arr!32968 _values!955) (store mapRest!40420 mapKey!40420 mapValue!40420))))

(declare-datatypes ((tuple2!16548 0))(
  ( (tuple2!16549 (_1!8284 (_ BitVec 64)) (_2!8284 V!39547)) )
))
(declare-fun lt!473843 () tuple2!16548)

(declare-datatypes ((List!23132 0))(
  ( (Nil!23129) (Cons!23128 (h!24337 tuple2!16548) (t!32472 List!23132)) )
))
(declare-datatypes ((ListLongMap!14529 0))(
  ( (ListLongMap!14530 (toList!7280 List!23132)) )
))
(declare-fun lt!473850 () ListLongMap!14529)

(declare-fun b!1071241 () Bool)

(declare-fun e!611695 () Bool)

(declare-fun lt!473845 () ListLongMap!14529)

(declare-fun +!3137 (ListLongMap!14529 tuple2!16548) ListLongMap!14529)

(assert (=> b!1071241 (= e!611695 (= lt!473850 (+!3137 lt!473845 lt!473843)))))

(declare-fun b!1071242 () Bool)

(declare-fun res!714703 () Bool)

(declare-fun e!611693 () Bool)

(assert (=> b!1071242 (=> (not res!714703) (not e!611693))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68554 0))(
  ( (array!68555 (arr!32969 (Array (_ BitVec 32) (_ BitVec 64))) (size!33506 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68554)

(assert (=> b!1071242 (= res!714703 (and (= (size!33505 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33506 _keys!1163) (size!33505 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1071243 () Bool)

(declare-fun e!611692 () Bool)

(assert (=> b!1071243 (= e!611692 true)))

(declare-fun lt!473842 () ListLongMap!14529)

(declare-fun lt!473853 () ListLongMap!14529)

(declare-fun -!674 (ListLongMap!14529 (_ BitVec 64)) ListLongMap!14529)

(assert (=> b!1071243 (= lt!473842 (-!674 lt!473853 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!473847 () ListLongMap!14529)

(declare-fun lt!473849 () ListLongMap!14529)

(assert (=> b!1071243 (= lt!473847 lt!473849)))

(declare-fun zeroValueBefore!47 () V!39547)

(declare-fun lt!473852 () ListLongMap!14529)

(declare-fun minValue!907 () V!39547)

(declare-datatypes ((Unit!35223 0))(
  ( (Unit!35224) )
))
(declare-fun lt!473851 () Unit!35223)

(declare-fun addCommutativeForDiffKeys!718 (ListLongMap!14529 (_ BitVec 64) V!39547 (_ BitVec 64) V!39547) Unit!35223)

(assert (=> b!1071243 (= lt!473851 (addCommutativeForDiffKeys!718 lt!473852 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!473846 () ListLongMap!14529)

(assert (=> b!1071243 (= (-!674 lt!473849 #b0000000000000000000000000000000000000000000000000000000000000000) lt!473846)))

(declare-fun lt!473844 () tuple2!16548)

(assert (=> b!1071243 (= lt!473849 (+!3137 lt!473846 lt!473844))))

(declare-fun lt!473848 () Unit!35223)

(declare-fun addThenRemoveForNewKeyIsSame!48 (ListLongMap!14529 (_ BitVec 64) V!39547) Unit!35223)

(assert (=> b!1071243 (= lt!473848 (addThenRemoveForNewKeyIsSame!48 lt!473846 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1071243 (= lt!473846 (+!3137 lt!473852 lt!473843))))

(assert (=> b!1071243 e!611695))

(declare-fun res!714700 () Bool)

(assert (=> b!1071243 (=> (not res!714700) (not e!611695))))

(assert (=> b!1071243 (= res!714700 (= lt!473853 lt!473847))))

(assert (=> b!1071243 (= lt!473847 (+!3137 (+!3137 lt!473852 lt!473844) lt!473843))))

(assert (=> b!1071243 (= lt!473843 (tuple2!16549 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071243 (= lt!473844 (tuple2!16549 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39547)

(declare-fun getCurrentListMap!4146 (array!68554 array!68552 (_ BitVec 32) (_ BitVec 32) V!39547 V!39547 (_ BitVec 32) Int) ListLongMap!14529)

(assert (=> b!1071243 (= lt!473850 (getCurrentListMap!4146 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071243 (= lt!473853 (getCurrentListMap!4146 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071244 () Bool)

(declare-fun e!611698 () Bool)

(declare-fun e!611697 () Bool)

(assert (=> b!1071244 (= e!611698 (and e!611697 mapRes!40420))))

(declare-fun condMapEmpty!40420 () Bool)

(declare-fun mapDefault!40420 () ValueCell!12201)

(assert (=> b!1071244 (= condMapEmpty!40420 (= (arr!32968 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12201)) mapDefault!40420)))))

(declare-fun b!1071245 () Bool)

(declare-fun res!714702 () Bool)

(assert (=> b!1071245 (=> (not res!714702) (not e!611693))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68554 (_ BitVec 32)) Bool)

(assert (=> b!1071245 (= res!714702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!40420 () Bool)

(assert (=> mapIsEmpty!40420 mapRes!40420))

(declare-fun b!1071246 () Bool)

(assert (=> b!1071246 (= e!611693 (not e!611692))))

(declare-fun res!714705 () Bool)

(assert (=> b!1071246 (=> res!714705 e!611692)))

(assert (=> b!1071246 (= res!714705 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1071246 (= lt!473852 lt!473845)))

(declare-fun lt!473841 () Unit!35223)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!854 (array!68554 array!68552 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39547 V!39547 V!39547 V!39547 (_ BitVec 32) Int) Unit!35223)

(assert (=> b!1071246 (= lt!473841 (lemmaNoChangeToArrayThenSameMapNoExtras!854 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3815 (array!68554 array!68552 (_ BitVec 32) (_ BitVec 32) V!39547 V!39547 (_ BitVec 32) Int) ListLongMap!14529)

(assert (=> b!1071246 (= lt!473845 (getCurrentListMapNoExtraKeys!3815 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071246 (= lt!473852 (getCurrentListMapNoExtraKeys!3815 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071247 () Bool)

(declare-fun tp_is_empty!25809 () Bool)

(assert (=> b!1071247 (= e!611694 tp_is_empty!25809)))

(declare-fun res!714704 () Bool)

(assert (=> start!94782 (=> (not res!714704) (not e!611693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94782 (= res!714704 (validMask!0 mask!1515))))

(assert (=> start!94782 e!611693))

(assert (=> start!94782 true))

(assert (=> start!94782 tp_is_empty!25809))

(declare-fun array_inv!25348 (array!68552) Bool)

(assert (=> start!94782 (and (array_inv!25348 _values!955) e!611698)))

(assert (=> start!94782 tp!77457))

(declare-fun array_inv!25349 (array!68554) Bool)

(assert (=> start!94782 (array_inv!25349 _keys!1163)))

(declare-fun b!1071248 () Bool)

(declare-fun res!714701 () Bool)

(assert (=> b!1071248 (=> (not res!714701) (not e!611693))))

(declare-datatypes ((List!23133 0))(
  ( (Nil!23130) (Cons!23129 (h!24338 (_ BitVec 64)) (t!32473 List!23133)) )
))
(declare-fun arrayNoDuplicates!0 (array!68554 (_ BitVec 32) List!23133) Bool)

(assert (=> b!1071248 (= res!714701 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23130))))

(declare-fun b!1071249 () Bool)

(assert (=> b!1071249 (= e!611697 tp_is_empty!25809)))

(assert (= (and start!94782 res!714704) b!1071242))

(assert (= (and b!1071242 res!714703) b!1071245))

(assert (= (and b!1071245 res!714702) b!1071248))

(assert (= (and b!1071248 res!714701) b!1071246))

(assert (= (and b!1071246 (not res!714705)) b!1071243))

(assert (= (and b!1071243 res!714700) b!1071241))

(assert (= (and b!1071244 condMapEmpty!40420) mapIsEmpty!40420))

(assert (= (and b!1071244 (not condMapEmpty!40420)) mapNonEmpty!40420))

(get-info :version)

(assert (= (and mapNonEmpty!40420 ((_ is ValueCellFull!12201) mapValue!40420)) b!1071247))

(assert (= (and b!1071244 ((_ is ValueCellFull!12201) mapDefault!40420)) b!1071249))

(assert (= start!94782 b!1071244))

(declare-fun m!989815 () Bool)

(assert (=> b!1071243 m!989815))

(declare-fun m!989817 () Bool)

(assert (=> b!1071243 m!989817))

(declare-fun m!989819 () Bool)

(assert (=> b!1071243 m!989819))

(assert (=> b!1071243 m!989815))

(declare-fun m!989821 () Bool)

(assert (=> b!1071243 m!989821))

(declare-fun m!989823 () Bool)

(assert (=> b!1071243 m!989823))

(declare-fun m!989825 () Bool)

(assert (=> b!1071243 m!989825))

(declare-fun m!989827 () Bool)

(assert (=> b!1071243 m!989827))

(declare-fun m!989829 () Bool)

(assert (=> b!1071243 m!989829))

(declare-fun m!989831 () Bool)

(assert (=> b!1071243 m!989831))

(declare-fun m!989833 () Bool)

(assert (=> b!1071243 m!989833))

(declare-fun m!989835 () Bool)

(assert (=> b!1071246 m!989835))

(declare-fun m!989837 () Bool)

(assert (=> b!1071246 m!989837))

(declare-fun m!989839 () Bool)

(assert (=> b!1071246 m!989839))

(declare-fun m!989841 () Bool)

(assert (=> start!94782 m!989841))

(declare-fun m!989843 () Bool)

(assert (=> start!94782 m!989843))

(declare-fun m!989845 () Bool)

(assert (=> start!94782 m!989845))

(declare-fun m!989847 () Bool)

(assert (=> mapNonEmpty!40420 m!989847))

(declare-fun m!989849 () Bool)

(assert (=> b!1071248 m!989849))

(declare-fun m!989851 () Bool)

(assert (=> b!1071245 m!989851))

(declare-fun m!989853 () Bool)

(assert (=> b!1071241 m!989853))

(check-sat (not mapNonEmpty!40420) (not b_next!21999) (not start!94782) (not b!1071241) (not b!1071246) (not b!1071248) (not b!1071245) b_and!34847 tp_is_empty!25809 (not b!1071243))
(check-sat b_and!34847 (not b_next!21999))
