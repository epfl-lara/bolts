; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94920 () Bool)

(assert start!94920)

(declare-fun b_free!22089 () Bool)

(declare-fun b_next!22089 () Bool)

(assert (=> start!94920 (= b_free!22089 (not b_next!22089))))

(declare-fun tp!77732 () Bool)

(declare-fun b_and!34961 () Bool)

(assert (=> start!94920 (= tp!77732 b_and!34961)))

(declare-fun b!1072830 () Bool)

(declare-fun e!612877 () Bool)

(declare-fun tp_is_empty!25899 () Bool)

(assert (=> b!1072830 (= e!612877 tp_is_empty!25899)))

(declare-fun mapNonEmpty!40561 () Bool)

(declare-fun mapRes!40561 () Bool)

(declare-fun tp!77733 () Bool)

(declare-fun e!612874 () Bool)

(assert (=> mapNonEmpty!40561 (= mapRes!40561 (and tp!77733 e!612874))))

(declare-fun mapKey!40561 () (_ BitVec 32))

(declare-datatypes ((V!39667 0))(
  ( (V!39668 (val!13000 Int)) )
))
(declare-datatypes ((ValueCell!12246 0))(
  ( (ValueCellFull!12246 (v!15619 V!39667)) (EmptyCell!12246) )
))
(declare-datatypes ((array!68728 0))(
  ( (array!68729 (arr!33054 (Array (_ BitVec 32) ValueCell!12246)) (size!33591 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68728)

(declare-fun mapRest!40561 () (Array (_ BitVec 32) ValueCell!12246))

(declare-fun mapValue!40561 () ValueCell!12246)

(assert (=> mapNonEmpty!40561 (= (arr!33054 _values!955) (store mapRest!40561 mapKey!40561 mapValue!40561))))

(declare-fun b!1072831 () Bool)

(assert (=> b!1072831 (= e!612874 tp_is_empty!25899)))

(declare-fun b!1072832 () Bool)

(declare-fun res!715683 () Bool)

(declare-fun e!612876 () Bool)

(assert (=> b!1072832 (=> (not res!715683) (not e!612876))))

(declare-datatypes ((array!68730 0))(
  ( (array!68731 (arr!33055 (Array (_ BitVec 32) (_ BitVec 64))) (size!33592 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68730)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68730 (_ BitVec 32)) Bool)

(assert (=> b!1072832 (= res!715683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1072833 () Bool)

(declare-fun res!715680 () Bool)

(assert (=> b!1072833 (=> (not res!715680) (not e!612876))))

(declare-datatypes ((List!23201 0))(
  ( (Nil!23198) (Cons!23197 (h!24406 (_ BitVec 64)) (t!32545 List!23201)) )
))
(declare-fun arrayNoDuplicates!0 (array!68730 (_ BitVec 32) List!23201) Bool)

(assert (=> b!1072833 (= res!715680 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23198))))

(declare-fun res!715681 () Bool)

(assert (=> start!94920 (=> (not res!715681) (not e!612876))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94920 (= res!715681 (validMask!0 mask!1515))))

(assert (=> start!94920 e!612876))

(assert (=> start!94920 true))

(assert (=> start!94920 tp_is_empty!25899))

(declare-fun e!612873 () Bool)

(declare-fun array_inv!25408 (array!68728) Bool)

(assert (=> start!94920 (and (array_inv!25408 _values!955) e!612873)))

(assert (=> start!94920 tp!77732))

(declare-fun array_inv!25409 (array!68730) Bool)

(assert (=> start!94920 (array_inv!25409 _keys!1163)))

(declare-fun b!1072834 () Bool)

(assert (=> b!1072834 (= e!612873 (and e!612877 mapRes!40561))))

(declare-fun condMapEmpty!40561 () Bool)

(declare-fun mapDefault!40561 () ValueCell!12246)

(assert (=> b!1072834 (= condMapEmpty!40561 (= (arr!33054 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12246)) mapDefault!40561)))))

(declare-fun mapIsEmpty!40561 () Bool)

(assert (=> mapIsEmpty!40561 mapRes!40561))

(declare-fun b!1072835 () Bool)

(declare-fun res!715682 () Bool)

(assert (=> b!1072835 (=> (not res!715682) (not e!612876))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072835 (= res!715682 (and (= (size!33591 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33592 _keys!1163) (size!33591 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072836 () Bool)

(assert (=> b!1072836 (= e!612876 (not true))))

(declare-datatypes ((tuple2!16622 0))(
  ( (tuple2!16623 (_1!8321 (_ BitVec 64)) (_2!8321 V!39667)) )
))
(declare-datatypes ((List!23202 0))(
  ( (Nil!23199) (Cons!23198 (h!24407 tuple2!16622) (t!32546 List!23202)) )
))
(declare-datatypes ((ListLongMap!14603 0))(
  ( (ListLongMap!14604 (toList!7317 List!23202)) )
))
(declare-fun lt!475861 () ListLongMap!14603)

(declare-fun lt!475860 () ListLongMap!14603)

(assert (=> b!1072836 (= lt!475861 lt!475860)))

(declare-fun zeroValueBefore!47 () V!39667)

(declare-datatypes ((Unit!35297 0))(
  ( (Unit!35298) )
))
(declare-fun lt!475862 () Unit!35297)

(declare-fun minValue!907 () V!39667)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39667)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!886 (array!68730 array!68728 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39667 V!39667 V!39667 V!39667 (_ BitVec 32) Int) Unit!35297)

(assert (=> b!1072836 (= lt!475862 (lemmaNoChangeToArrayThenSameMapNoExtras!886 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3847 (array!68730 array!68728 (_ BitVec 32) (_ BitVec 32) V!39667 V!39667 (_ BitVec 32) Int) ListLongMap!14603)

(assert (=> b!1072836 (= lt!475860 (getCurrentListMapNoExtraKeys!3847 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072836 (= lt!475861 (getCurrentListMapNoExtraKeys!3847 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94920 res!715681) b!1072835))

(assert (= (and b!1072835 res!715682) b!1072832))

(assert (= (and b!1072832 res!715683) b!1072833))

(assert (= (and b!1072833 res!715680) b!1072836))

(assert (= (and b!1072834 condMapEmpty!40561) mapIsEmpty!40561))

(assert (= (and b!1072834 (not condMapEmpty!40561)) mapNonEmpty!40561))

(get-info :version)

(assert (= (and mapNonEmpty!40561 ((_ is ValueCellFull!12246) mapValue!40561)) b!1072831))

(assert (= (and b!1072834 ((_ is ValueCellFull!12246) mapDefault!40561)) b!1072830))

(assert (= start!94920 b!1072834))

(declare-fun m!992081 () Bool)

(assert (=> start!94920 m!992081))

(declare-fun m!992083 () Bool)

(assert (=> start!94920 m!992083))

(declare-fun m!992085 () Bool)

(assert (=> start!94920 m!992085))

(declare-fun m!992087 () Bool)

(assert (=> mapNonEmpty!40561 m!992087))

(declare-fun m!992089 () Bool)

(assert (=> b!1072836 m!992089))

(declare-fun m!992091 () Bool)

(assert (=> b!1072836 m!992091))

(declare-fun m!992093 () Bool)

(assert (=> b!1072836 m!992093))

(declare-fun m!992095 () Bool)

(assert (=> b!1072832 m!992095))

(declare-fun m!992097 () Bool)

(assert (=> b!1072833 m!992097))

(check-sat (not start!94920) (not b!1072836) (not mapNonEmpty!40561) b_and!34961 tp_is_empty!25899 (not b!1072833) (not b!1072832) (not b_next!22089))
(check-sat b_and!34961 (not b_next!22089))
