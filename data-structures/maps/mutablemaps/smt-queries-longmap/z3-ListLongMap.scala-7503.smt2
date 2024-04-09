; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95136 () Bool)

(assert start!95136)

(declare-fun b_free!22197 () Bool)

(declare-fun b_next!22197 () Bool)

(assert (=> start!95136 (= b_free!22197 (not b_next!22197))))

(declare-fun tp!78074 () Bool)

(declare-fun b_and!35135 () Bool)

(assert (=> start!95136 (= tp!78074 b_and!35135)))

(declare-fun b!1075013 () Bool)

(declare-fun e!614385 () Bool)

(declare-fun e!614384 () Bool)

(declare-fun mapRes!40741 () Bool)

(assert (=> b!1075013 (= e!614385 (and e!614384 mapRes!40741))))

(declare-fun condMapEmpty!40741 () Bool)

(declare-datatypes ((V!39811 0))(
  ( (V!39812 (val!13054 Int)) )
))
(declare-datatypes ((ValueCell!12300 0))(
  ( (ValueCellFull!12300 (v!15678 V!39811)) (EmptyCell!12300) )
))
(declare-datatypes ((array!68944 0))(
  ( (array!68945 (arr!33156 (Array (_ BitVec 32) ValueCell!12300)) (size!33693 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68944)

(declare-fun mapDefault!40741 () ValueCell!12300)

(assert (=> b!1075013 (= condMapEmpty!40741 (= (arr!33156 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12300)) mapDefault!40741)))))

(declare-fun b!1075014 () Bool)

(declare-fun tp_is_empty!26007 () Bool)

(assert (=> b!1075014 (= e!614384 tp_is_empty!26007)))

(declare-fun b!1075015 () Bool)

(declare-fun e!614387 () Bool)

(assert (=> b!1075015 (= e!614387 tp_is_empty!26007)))

(declare-fun mapNonEmpty!40741 () Bool)

(declare-fun tp!78075 () Bool)

(assert (=> mapNonEmpty!40741 (= mapRes!40741 (and tp!78075 e!614387))))

(declare-fun mapKey!40741 () (_ BitVec 32))

(declare-fun mapValue!40741 () ValueCell!12300)

(declare-fun mapRest!40741 () (Array (_ BitVec 32) ValueCell!12300))

(assert (=> mapNonEmpty!40741 (= (arr!33156 _values!955) (store mapRest!40741 mapKey!40741 mapValue!40741))))

(declare-fun b!1075016 () Bool)

(declare-fun e!614383 () Bool)

(assert (=> b!1075016 (= e!614383 true)))

(declare-datatypes ((tuple2!16696 0))(
  ( (tuple2!16697 (_1!8358 (_ BitVec 64)) (_2!8358 V!39811)) )
))
(declare-datatypes ((List!23270 0))(
  ( (Nil!23267) (Cons!23266 (h!24475 tuple2!16696) (t!32626 List!23270)) )
))
(declare-datatypes ((ListLongMap!14677 0))(
  ( (ListLongMap!14678 (toList!7354 List!23270)) )
))
(declare-fun lt!477098 () ListLongMap!14677)

(declare-fun lt!477101 () ListLongMap!14677)

(declare-fun -!709 (ListLongMap!14677 (_ BitVec 64)) ListLongMap!14677)

(assert (=> b!1075016 (= lt!477098 (-!709 lt!477101 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!477096 () ListLongMap!14677)

(declare-fun lt!477099 () ListLongMap!14677)

(assert (=> b!1075016 (= (-!709 lt!477096 #b0000000000000000000000000000000000000000000000000000000000000000) lt!477099)))

(declare-datatypes ((Unit!35339 0))(
  ( (Unit!35340) )
))
(declare-fun lt!477102 () Unit!35339)

(declare-fun zeroValueBefore!47 () V!39811)

(declare-fun addThenRemoveForNewKeyIsSame!82 (ListLongMap!14677 (_ BitVec 64) V!39811) Unit!35339)

(assert (=> b!1075016 (= lt!477102 (addThenRemoveForNewKeyIsSame!82 lt!477099 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!477100 () ListLongMap!14677)

(declare-fun lt!477097 () ListLongMap!14677)

(assert (=> b!1075016 (and (= lt!477101 lt!477096) (= lt!477100 lt!477097))))

(declare-fun +!3182 (ListLongMap!14677 tuple2!16696) ListLongMap!14677)

(assert (=> b!1075016 (= lt!477096 (+!3182 lt!477099 (tuple2!16697 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun minValue!907 () V!39811)

(declare-datatypes ((array!68946 0))(
  ( (array!68947 (arr!33157 (Array (_ BitVec 32) (_ BitVec 64))) (size!33694 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68946)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39811)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun getCurrentListMap!4192 (array!68946 array!68944 (_ BitVec 32) (_ BitVec 32) V!39811 V!39811 (_ BitVec 32) Int) ListLongMap!14677)

(assert (=> b!1075016 (= lt!477100 (getCurrentListMap!4192 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1075016 (= lt!477101 (getCurrentListMap!4192 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40741 () Bool)

(assert (=> mapIsEmpty!40741 mapRes!40741))

(declare-fun b!1075017 () Bool)

(declare-fun res!716810 () Bool)

(declare-fun e!614382 () Bool)

(assert (=> b!1075017 (=> (not res!716810) (not e!614382))))

(declare-datatypes ((List!23271 0))(
  ( (Nil!23268) (Cons!23267 (h!24476 (_ BitVec 64)) (t!32627 List!23271)) )
))
(declare-fun arrayNoDuplicates!0 (array!68946 (_ BitVec 32) List!23271) Bool)

(assert (=> b!1075017 (= res!716810 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23268))))

(declare-fun b!1075019 () Bool)

(declare-fun res!716811 () Bool)

(assert (=> b!1075019 (=> (not res!716811) (not e!614382))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68946 (_ BitVec 32)) Bool)

(assert (=> b!1075019 (= res!716811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1075020 () Bool)

(assert (=> b!1075020 (= e!614382 (not e!614383))))

(declare-fun res!716809 () Bool)

(assert (=> b!1075020 (=> res!716809 e!614383)))

(assert (=> b!1075020 (= res!716809 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1075020 (= lt!477099 lt!477097)))

(declare-fun lt!477095 () Unit!35339)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!900 (array!68946 array!68944 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39811 V!39811 V!39811 V!39811 (_ BitVec 32) Int) Unit!35339)

(assert (=> b!1075020 (= lt!477095 (lemmaNoChangeToArrayThenSameMapNoExtras!900 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3881 (array!68946 array!68944 (_ BitVec 32) (_ BitVec 32) V!39811 V!39811 (_ BitVec 32) Int) ListLongMap!14677)

(assert (=> b!1075020 (= lt!477097 (getCurrentListMapNoExtraKeys!3881 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1075020 (= lt!477099 (getCurrentListMapNoExtraKeys!3881 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1075018 () Bool)

(declare-fun res!716807 () Bool)

(assert (=> b!1075018 (=> (not res!716807) (not e!614382))))

(assert (=> b!1075018 (= res!716807 (and (= (size!33693 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33694 _keys!1163) (size!33693 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!716808 () Bool)

(assert (=> start!95136 (=> (not res!716808) (not e!614382))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95136 (= res!716808 (validMask!0 mask!1515))))

(assert (=> start!95136 e!614382))

(assert (=> start!95136 true))

(assert (=> start!95136 tp_is_empty!26007))

(declare-fun array_inv!25474 (array!68944) Bool)

(assert (=> start!95136 (and (array_inv!25474 _values!955) e!614385)))

(assert (=> start!95136 tp!78074))

(declare-fun array_inv!25475 (array!68946) Bool)

(assert (=> start!95136 (array_inv!25475 _keys!1163)))

(assert (= (and start!95136 res!716808) b!1075018))

(assert (= (and b!1075018 res!716807) b!1075019))

(assert (= (and b!1075019 res!716811) b!1075017))

(assert (= (and b!1075017 res!716810) b!1075020))

(assert (= (and b!1075020 (not res!716809)) b!1075016))

(assert (= (and b!1075013 condMapEmpty!40741) mapIsEmpty!40741))

(assert (= (and b!1075013 (not condMapEmpty!40741)) mapNonEmpty!40741))

(get-info :version)

(assert (= (and mapNonEmpty!40741 ((_ is ValueCellFull!12300) mapValue!40741)) b!1075015))

(assert (= (and b!1075013 ((_ is ValueCellFull!12300) mapDefault!40741)) b!1075014))

(assert (= start!95136 b!1075013))

(declare-fun m!994011 () Bool)

(assert (=> b!1075017 m!994011))

(declare-fun m!994013 () Bool)

(assert (=> mapNonEmpty!40741 m!994013))

(declare-fun m!994015 () Bool)

(assert (=> b!1075020 m!994015))

(declare-fun m!994017 () Bool)

(assert (=> b!1075020 m!994017))

(declare-fun m!994019 () Bool)

(assert (=> b!1075020 m!994019))

(declare-fun m!994021 () Bool)

(assert (=> b!1075019 m!994021))

(declare-fun m!994023 () Bool)

(assert (=> start!95136 m!994023))

(declare-fun m!994025 () Bool)

(assert (=> start!95136 m!994025))

(declare-fun m!994027 () Bool)

(assert (=> start!95136 m!994027))

(declare-fun m!994029 () Bool)

(assert (=> b!1075016 m!994029))

(declare-fun m!994031 () Bool)

(assert (=> b!1075016 m!994031))

(declare-fun m!994033 () Bool)

(assert (=> b!1075016 m!994033))

(declare-fun m!994035 () Bool)

(assert (=> b!1075016 m!994035))

(declare-fun m!994037 () Bool)

(assert (=> b!1075016 m!994037))

(declare-fun m!994039 () Bool)

(assert (=> b!1075016 m!994039))

(check-sat (not b!1075017) tp_is_empty!26007 (not mapNonEmpty!40741) (not start!95136) b_and!35135 (not b!1075016) (not b!1075019) (not b!1075020) (not b_next!22197))
(check-sat b_and!35135 (not b_next!22197))
