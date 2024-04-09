; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94854 () Bool)

(assert start!94854)

(declare-fun b_free!22047 () Bool)

(declare-fun b_next!22047 () Bool)

(assert (=> start!94854 (= b_free!22047 (not b_next!22047))))

(declare-fun tp!77604 () Bool)

(declare-fun b_and!34907 () Bool)

(assert (=> start!94854 (= tp!77604 b_and!34907)))

(declare-fun b!1072081 () Bool)

(declare-fun res!715224 () Bool)

(declare-fun e!612325 () Bool)

(assert (=> b!1072081 (=> (not res!715224) (not e!612325))))

(declare-datatypes ((array!68644 0))(
  ( (array!68645 (arr!33013 (Array (_ BitVec 32) (_ BitVec 64))) (size!33550 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68644)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68644 (_ BitVec 32)) Bool)

(assert (=> b!1072081 (= res!715224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-datatypes ((V!39611 0))(
  ( (V!39612 (val!12979 Int)) )
))
(declare-datatypes ((tuple2!16588 0))(
  ( (tuple2!16589 (_1!8304 (_ BitVec 64)) (_2!8304 V!39611)) )
))
(declare-datatypes ((List!23168 0))(
  ( (Nil!23165) (Cons!23164 (h!24373 tuple2!16588) (t!32510 List!23168)) )
))
(declare-datatypes ((ListLongMap!14569 0))(
  ( (ListLongMap!14570 (toList!7300 List!23168)) )
))
(declare-fun lt!474938 () ListLongMap!14569)

(declare-fun b!1072082 () Bool)

(declare-fun e!612322 () Bool)

(declare-fun lt!474941 () tuple2!16588)

(declare-fun lt!474934 () ListLongMap!14569)

(declare-fun +!3155 (ListLongMap!14569 tuple2!16588) ListLongMap!14569)

(assert (=> b!1072082 (= e!612322 (= lt!474934 (+!3155 lt!474938 lt!474941)))))

(declare-fun b!1072083 () Bool)

(declare-fun res!715227 () Bool)

(assert (=> b!1072083 (=> (not res!715227) (not e!612325))))

(declare-datatypes ((List!23169 0))(
  ( (Nil!23166) (Cons!23165 (h!24374 (_ BitVec 64)) (t!32511 List!23169)) )
))
(declare-fun arrayNoDuplicates!0 (array!68644 (_ BitVec 32) List!23169) Bool)

(assert (=> b!1072083 (= res!715227 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23166))))

(declare-fun b!1072084 () Bool)

(declare-fun e!612321 () Bool)

(assert (=> b!1072084 (= e!612321 true)))

(declare-fun lt!474942 () ListLongMap!14569)

(declare-fun lt!474937 () ListLongMap!14569)

(declare-fun -!690 (ListLongMap!14569 (_ BitVec 64)) ListLongMap!14569)

(assert (=> b!1072084 (= lt!474942 (-!690 lt!474937 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!474940 () ListLongMap!14569)

(declare-fun lt!474946 () ListLongMap!14569)

(assert (=> b!1072084 (= lt!474940 lt!474946)))

(declare-fun zeroValueBefore!47 () V!39611)

(declare-datatypes ((Unit!35261 0))(
  ( (Unit!35262) )
))
(declare-fun lt!474935 () Unit!35261)

(declare-fun minValue!907 () V!39611)

(declare-fun lt!474939 () ListLongMap!14569)

(declare-fun addCommutativeForDiffKeys!734 (ListLongMap!14569 (_ BitVec 64) V!39611 (_ BitVec 64) V!39611) Unit!35261)

(assert (=> b!1072084 (= lt!474935 (addCommutativeForDiffKeys!734 lt!474939 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!474945 () ListLongMap!14569)

(assert (=> b!1072084 (= (-!690 lt!474946 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474945)))

(declare-fun lt!474936 () tuple2!16588)

(assert (=> b!1072084 (= lt!474946 (+!3155 lt!474945 lt!474936))))

(declare-fun lt!474944 () Unit!35261)

(declare-fun addThenRemoveForNewKeyIsSame!64 (ListLongMap!14569 (_ BitVec 64) V!39611) Unit!35261)

(assert (=> b!1072084 (= lt!474944 (addThenRemoveForNewKeyIsSame!64 lt!474945 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1072084 (= lt!474945 (+!3155 lt!474939 lt!474941))))

(assert (=> b!1072084 e!612322))

(declare-fun res!715222 () Bool)

(assert (=> b!1072084 (=> (not res!715222) (not e!612322))))

(assert (=> b!1072084 (= res!715222 (= lt!474937 lt!474940))))

(assert (=> b!1072084 (= lt!474940 (+!3155 (+!3155 lt!474939 lt!474936) lt!474941))))

(assert (=> b!1072084 (= lt!474941 (tuple2!16589 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1072084 (= lt!474936 (tuple2!16589 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-datatypes ((ValueCell!12225 0))(
  ( (ValueCellFull!12225 (v!15597 V!39611)) (EmptyCell!12225) )
))
(declare-datatypes ((array!68646 0))(
  ( (array!68647 (arr!33014 (Array (_ BitVec 32) ValueCell!12225)) (size!33551 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68646)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39611)

(declare-fun getCurrentListMap!4162 (array!68644 array!68646 (_ BitVec 32) (_ BitVec 32) V!39611 V!39611 (_ BitVec 32) Int) ListLongMap!14569)

(assert (=> b!1072084 (= lt!474934 (getCurrentListMap!4162 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072084 (= lt!474937 (getCurrentListMap!4162 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072085 () Bool)

(declare-fun e!612323 () Bool)

(declare-fun e!612319 () Bool)

(declare-fun mapRes!40495 () Bool)

(assert (=> b!1072085 (= e!612323 (and e!612319 mapRes!40495))))

(declare-fun condMapEmpty!40495 () Bool)

(declare-fun mapDefault!40495 () ValueCell!12225)

(assert (=> b!1072085 (= condMapEmpty!40495 (= (arr!33014 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12225)) mapDefault!40495)))))

(declare-fun b!1072086 () Bool)

(declare-fun e!612320 () Bool)

(declare-fun tp_is_empty!25857 () Bool)

(assert (=> b!1072086 (= e!612320 tp_is_empty!25857)))

(declare-fun b!1072087 () Bool)

(assert (=> b!1072087 (= e!612319 tp_is_empty!25857)))

(declare-fun b!1072088 () Bool)

(assert (=> b!1072088 (= e!612325 (not e!612321))))

(declare-fun res!715225 () Bool)

(assert (=> b!1072088 (=> res!715225 e!612321)))

(assert (=> b!1072088 (= res!715225 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1072088 (= lt!474939 lt!474938)))

(declare-fun lt!474943 () Unit!35261)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!870 (array!68644 array!68646 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39611 V!39611 V!39611 V!39611 (_ BitVec 32) Int) Unit!35261)

(assert (=> b!1072088 (= lt!474943 (lemmaNoChangeToArrayThenSameMapNoExtras!870 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3831 (array!68644 array!68646 (_ BitVec 32) (_ BitVec 32) V!39611 V!39611 (_ BitVec 32) Int) ListLongMap!14569)

(assert (=> b!1072088 (= lt!474938 (getCurrentListMapNoExtraKeys!3831 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072088 (= lt!474939 (getCurrentListMapNoExtraKeys!3831 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40495 () Bool)

(declare-fun tp!77603 () Bool)

(assert (=> mapNonEmpty!40495 (= mapRes!40495 (and tp!77603 e!612320))))

(declare-fun mapValue!40495 () ValueCell!12225)

(declare-fun mapKey!40495 () (_ BitVec 32))

(declare-fun mapRest!40495 () (Array (_ BitVec 32) ValueCell!12225))

(assert (=> mapNonEmpty!40495 (= (arr!33014 _values!955) (store mapRest!40495 mapKey!40495 mapValue!40495))))

(declare-fun mapIsEmpty!40495 () Bool)

(assert (=> mapIsEmpty!40495 mapRes!40495))

(declare-fun res!715223 () Bool)

(assert (=> start!94854 (=> (not res!715223) (not e!612325))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94854 (= res!715223 (validMask!0 mask!1515))))

(assert (=> start!94854 e!612325))

(assert (=> start!94854 true))

(assert (=> start!94854 tp_is_empty!25857))

(declare-fun array_inv!25378 (array!68646) Bool)

(assert (=> start!94854 (and (array_inv!25378 _values!955) e!612323)))

(assert (=> start!94854 tp!77604))

(declare-fun array_inv!25379 (array!68644) Bool)

(assert (=> start!94854 (array_inv!25379 _keys!1163)))

(declare-fun b!1072089 () Bool)

(declare-fun res!715226 () Bool)

(assert (=> b!1072089 (=> (not res!715226) (not e!612325))))

(assert (=> b!1072089 (= res!715226 (and (= (size!33551 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33550 _keys!1163) (size!33551 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!94854 res!715223) b!1072089))

(assert (= (and b!1072089 res!715226) b!1072081))

(assert (= (and b!1072081 res!715224) b!1072083))

(assert (= (and b!1072083 res!715227) b!1072088))

(assert (= (and b!1072088 (not res!715225)) b!1072084))

(assert (= (and b!1072084 res!715222) b!1072082))

(assert (= (and b!1072085 condMapEmpty!40495) mapIsEmpty!40495))

(assert (= (and b!1072085 (not condMapEmpty!40495)) mapNonEmpty!40495))

(get-info :version)

(assert (= (and mapNonEmpty!40495 ((_ is ValueCellFull!12225) mapValue!40495)) b!1072086))

(assert (= (and b!1072085 ((_ is ValueCellFull!12225) mapDefault!40495)) b!1072087))

(assert (= start!94854 b!1072085))

(declare-fun m!991019 () Bool)

(assert (=> b!1072082 m!991019))

(declare-fun m!991021 () Bool)

(assert (=> start!94854 m!991021))

(declare-fun m!991023 () Bool)

(assert (=> start!94854 m!991023))

(declare-fun m!991025 () Bool)

(assert (=> start!94854 m!991025))

(declare-fun m!991027 () Bool)

(assert (=> b!1072084 m!991027))

(declare-fun m!991029 () Bool)

(assert (=> b!1072084 m!991029))

(declare-fun m!991031 () Bool)

(assert (=> b!1072084 m!991031))

(declare-fun m!991033 () Bool)

(assert (=> b!1072084 m!991033))

(declare-fun m!991035 () Bool)

(assert (=> b!1072084 m!991035))

(declare-fun m!991037 () Bool)

(assert (=> b!1072084 m!991037))

(declare-fun m!991039 () Bool)

(assert (=> b!1072084 m!991039))

(declare-fun m!991041 () Bool)

(assert (=> b!1072084 m!991041))

(declare-fun m!991043 () Bool)

(assert (=> b!1072084 m!991043))

(assert (=> b!1072084 m!991027))

(declare-fun m!991045 () Bool)

(assert (=> b!1072084 m!991045))

(declare-fun m!991047 () Bool)

(assert (=> b!1072088 m!991047))

(declare-fun m!991049 () Bool)

(assert (=> b!1072088 m!991049))

(declare-fun m!991051 () Bool)

(assert (=> b!1072088 m!991051))

(declare-fun m!991053 () Bool)

(assert (=> mapNonEmpty!40495 m!991053))

(declare-fun m!991055 () Bool)

(assert (=> b!1072081 m!991055))

(declare-fun m!991057 () Bool)

(assert (=> b!1072083 m!991057))

(check-sat (not mapNonEmpty!40495) b_and!34907 tp_is_empty!25857 (not b!1072088) (not start!94854) (not b!1072083) (not b_next!22047) (not b!1072081) (not b!1072082) (not b!1072084))
(check-sat b_and!34907 (not b_next!22047))
