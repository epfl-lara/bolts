; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94620 () Bool)

(assert start!94620)

(declare-fun b_free!21867 () Bool)

(declare-fun b_next!21867 () Bool)

(assert (=> start!94620 (= b_free!21867 (not b_next!21867))))

(declare-fun tp!77055 () Bool)

(declare-fun b_and!34697 () Bool)

(assert (=> start!94620 (= tp!77055 b_and!34697)))

(declare-fun b!1069441 () Bool)

(declare-fun e!610376 () Bool)

(assert (=> b!1069441 (= e!610376 (not true))))

(declare-datatypes ((V!39371 0))(
  ( (V!39372 (val!12889 Int)) )
))
(declare-datatypes ((tuple2!16452 0))(
  ( (tuple2!16453 (_1!8236 (_ BitVec 64)) (_2!8236 V!39371)) )
))
(declare-datatypes ((List!23040 0))(
  ( (Nil!23037) (Cons!23036 (h!24245 tuple2!16452) (t!32376 List!23040)) )
))
(declare-datatypes ((ListLongMap!14433 0))(
  ( (ListLongMap!14434 (toList!7232 List!23040)) )
))
(declare-fun lt!472610 () ListLongMap!14433)

(declare-fun lt!472611 () ListLongMap!14433)

(assert (=> b!1069441 (= lt!472610 lt!472611)))

(declare-fun zeroValueBefore!47 () V!39371)

(declare-datatypes ((Unit!35130 0))(
  ( (Unit!35131) )
))
(declare-fun lt!472612 () Unit!35130)

(declare-datatypes ((ValueCell!12135 0))(
  ( (ValueCellFull!12135 (v!15506 V!39371)) (EmptyCell!12135) )
))
(declare-datatypes ((array!68302 0))(
  ( (array!68303 (arr!32845 (Array (_ BitVec 32) ValueCell!12135)) (size!33382 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68302)

(declare-fun minValue!907 () V!39371)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39371)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68304 0))(
  ( (array!68305 (arr!32846 (Array (_ BitVec 32) (_ BitVec 64))) (size!33383 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68304)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!808 (array!68304 array!68302 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39371 V!39371 V!39371 V!39371 (_ BitVec 32) Int) Unit!35130)

(assert (=> b!1069441 (= lt!472612 (lemmaNoChangeToArrayThenSameMapNoExtras!808 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3769 (array!68304 array!68302 (_ BitVec 32) (_ BitVec 32) V!39371 V!39371 (_ BitVec 32) Int) ListLongMap!14433)

(assert (=> b!1069441 (= lt!472611 (getCurrentListMapNoExtraKeys!3769 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069441 (= lt!472610 (getCurrentListMapNoExtraKeys!3769 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069442 () Bool)

(declare-fun res!713638 () Bool)

(assert (=> b!1069442 (=> (not res!713638) (not e!610376))))

(assert (=> b!1069442 (= res!713638 (and (= (size!33382 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33383 _keys!1163) (size!33382 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1069443 () Bool)

(declare-fun res!713639 () Bool)

(assert (=> b!1069443 (=> (not res!713639) (not e!610376))))

(declare-datatypes ((List!23041 0))(
  ( (Nil!23038) (Cons!23037 (h!24246 (_ BitVec 64)) (t!32377 List!23041)) )
))
(declare-fun arrayNoDuplicates!0 (array!68304 (_ BitVec 32) List!23041) Bool)

(assert (=> b!1069443 (= res!713639 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23038))))

(declare-fun mapIsEmpty!40216 () Bool)

(declare-fun mapRes!40216 () Bool)

(assert (=> mapIsEmpty!40216 mapRes!40216))

(declare-fun b!1069444 () Bool)

(declare-fun res!713640 () Bool)

(assert (=> b!1069444 (=> (not res!713640) (not e!610376))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68304 (_ BitVec 32)) Bool)

(assert (=> b!1069444 (= res!713640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1069445 () Bool)

(declare-fun e!610374 () Bool)

(declare-fun tp_is_empty!25677 () Bool)

(assert (=> b!1069445 (= e!610374 tp_is_empty!25677)))

(declare-fun b!1069446 () Bool)

(declare-fun e!610375 () Bool)

(declare-fun e!610372 () Bool)

(assert (=> b!1069446 (= e!610375 (and e!610372 mapRes!40216))))

(declare-fun condMapEmpty!40216 () Bool)

(declare-fun mapDefault!40216 () ValueCell!12135)

(assert (=> b!1069446 (= condMapEmpty!40216 (= (arr!32845 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12135)) mapDefault!40216)))))

(declare-fun b!1069447 () Bool)

(assert (=> b!1069447 (= e!610372 tp_is_empty!25677)))

(declare-fun mapNonEmpty!40216 () Bool)

(declare-fun tp!77054 () Bool)

(assert (=> mapNonEmpty!40216 (= mapRes!40216 (and tp!77054 e!610374))))

(declare-fun mapKey!40216 () (_ BitVec 32))

(declare-fun mapRest!40216 () (Array (_ BitVec 32) ValueCell!12135))

(declare-fun mapValue!40216 () ValueCell!12135)

(assert (=> mapNonEmpty!40216 (= (arr!32845 _values!955) (store mapRest!40216 mapKey!40216 mapValue!40216))))

(declare-fun res!713641 () Bool)

(assert (=> start!94620 (=> (not res!713641) (not e!610376))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94620 (= res!713641 (validMask!0 mask!1515))))

(assert (=> start!94620 e!610376))

(assert (=> start!94620 true))

(assert (=> start!94620 tp_is_empty!25677))

(declare-fun array_inv!25262 (array!68302) Bool)

(assert (=> start!94620 (and (array_inv!25262 _values!955) e!610375)))

(assert (=> start!94620 tp!77055))

(declare-fun array_inv!25263 (array!68304) Bool)

(assert (=> start!94620 (array_inv!25263 _keys!1163)))

(assert (= (and start!94620 res!713641) b!1069442))

(assert (= (and b!1069442 res!713638) b!1069444))

(assert (= (and b!1069444 res!713640) b!1069443))

(assert (= (and b!1069443 res!713639) b!1069441))

(assert (= (and b!1069446 condMapEmpty!40216) mapIsEmpty!40216))

(assert (= (and b!1069446 (not condMapEmpty!40216)) mapNonEmpty!40216))

(get-info :version)

(assert (= (and mapNonEmpty!40216 ((_ is ValueCellFull!12135) mapValue!40216)) b!1069445))

(assert (= (and b!1069446 ((_ is ValueCellFull!12135) mapDefault!40216)) b!1069447))

(assert (= start!94620 b!1069446))

(declare-fun m!988079 () Bool)

(assert (=> b!1069441 m!988079))

(declare-fun m!988081 () Bool)

(assert (=> b!1069441 m!988081))

(declare-fun m!988083 () Bool)

(assert (=> b!1069441 m!988083))

(declare-fun m!988085 () Bool)

(assert (=> b!1069443 m!988085))

(declare-fun m!988087 () Bool)

(assert (=> start!94620 m!988087))

(declare-fun m!988089 () Bool)

(assert (=> start!94620 m!988089))

(declare-fun m!988091 () Bool)

(assert (=> start!94620 m!988091))

(declare-fun m!988093 () Bool)

(assert (=> b!1069444 m!988093))

(declare-fun m!988095 () Bool)

(assert (=> mapNonEmpty!40216 m!988095))

(check-sat (not b_next!21867) (not start!94620) (not b!1069444) (not mapNonEmpty!40216) tp_is_empty!25677 (not b!1069443) b_and!34697 (not b!1069441))
(check-sat b_and!34697 (not b_next!21867))
