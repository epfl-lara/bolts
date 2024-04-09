; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94632 () Bool)

(assert start!94632)

(declare-fun b_free!21879 () Bool)

(declare-fun b_next!21879 () Bool)

(assert (=> start!94632 (= b_free!21879 (not b_next!21879))))

(declare-fun tp!77091 () Bool)

(declare-fun b_and!34709 () Bool)

(assert (=> start!94632 (= tp!77091 b_and!34709)))

(declare-fun b!1069567 () Bool)

(declare-fun e!610462 () Bool)

(declare-fun e!610465 () Bool)

(declare-fun mapRes!40234 () Bool)

(assert (=> b!1069567 (= e!610462 (and e!610465 mapRes!40234))))

(declare-fun condMapEmpty!40234 () Bool)

(declare-datatypes ((V!39387 0))(
  ( (V!39388 (val!12895 Int)) )
))
(declare-datatypes ((ValueCell!12141 0))(
  ( (ValueCellFull!12141 (v!15512 V!39387)) (EmptyCell!12141) )
))
(declare-datatypes ((array!68326 0))(
  ( (array!68327 (arr!32857 (Array (_ BitVec 32) ValueCell!12141)) (size!33394 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68326)

(declare-fun mapDefault!40234 () ValueCell!12141)

(assert (=> b!1069567 (= condMapEmpty!40234 (= (arr!32857 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12141)) mapDefault!40234)))))

(declare-fun b!1069568 () Bool)

(declare-fun tp_is_empty!25689 () Bool)

(assert (=> b!1069568 (= e!610465 tp_is_empty!25689)))

(declare-fun b!1069569 () Bool)

(declare-fun e!610463 () Bool)

(assert (=> b!1069569 (= e!610463 (not true))))

(declare-datatypes ((tuple2!16462 0))(
  ( (tuple2!16463 (_1!8241 (_ BitVec 64)) (_2!8241 V!39387)) )
))
(declare-datatypes ((List!23049 0))(
  ( (Nil!23046) (Cons!23045 (h!24254 tuple2!16462) (t!32385 List!23049)) )
))
(declare-datatypes ((ListLongMap!14443 0))(
  ( (ListLongMap!14444 (toList!7237 List!23049)) )
))
(declare-fun lt!472664 () ListLongMap!14443)

(declare-fun lt!472665 () ListLongMap!14443)

(assert (=> b!1069569 (= lt!472664 lt!472665)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39387)

(declare-datatypes ((Unit!35140 0))(
  ( (Unit!35141) )
))
(declare-fun lt!472666 () Unit!35140)

(declare-fun minValue!907 () V!39387)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39387)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68328 0))(
  ( (array!68329 (arr!32858 (Array (_ BitVec 32) (_ BitVec 64))) (size!33395 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68328)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!813 (array!68328 array!68326 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39387 V!39387 V!39387 V!39387 (_ BitVec 32) Int) Unit!35140)

(assert (=> b!1069569 (= lt!472666 (lemmaNoChangeToArrayThenSameMapNoExtras!813 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3774 (array!68328 array!68326 (_ BitVec 32) (_ BitVec 32) V!39387 V!39387 (_ BitVec 32) Int) ListLongMap!14443)

(assert (=> b!1069569 (= lt!472665 (getCurrentListMapNoExtraKeys!3774 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069569 (= lt!472664 (getCurrentListMapNoExtraKeys!3774 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069570 () Bool)

(declare-fun e!610466 () Bool)

(assert (=> b!1069570 (= e!610466 tp_is_empty!25689)))

(declare-fun mapNonEmpty!40234 () Bool)

(declare-fun tp!77090 () Bool)

(assert (=> mapNonEmpty!40234 (= mapRes!40234 (and tp!77090 e!610466))))

(declare-fun mapKey!40234 () (_ BitVec 32))

(declare-fun mapRest!40234 () (Array (_ BitVec 32) ValueCell!12141))

(declare-fun mapValue!40234 () ValueCell!12141)

(assert (=> mapNonEmpty!40234 (= (arr!32857 _values!955) (store mapRest!40234 mapKey!40234 mapValue!40234))))

(declare-fun b!1069571 () Bool)

(declare-fun res!713712 () Bool)

(assert (=> b!1069571 (=> (not res!713712) (not e!610463))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68328 (_ BitVec 32)) Bool)

(assert (=> b!1069571 (= res!713712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1069572 () Bool)

(declare-fun res!713711 () Bool)

(assert (=> b!1069572 (=> (not res!713711) (not e!610463))))

(declare-datatypes ((List!23050 0))(
  ( (Nil!23047) (Cons!23046 (h!24255 (_ BitVec 64)) (t!32386 List!23050)) )
))
(declare-fun arrayNoDuplicates!0 (array!68328 (_ BitVec 32) List!23050) Bool)

(assert (=> b!1069572 (= res!713711 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23047))))

(declare-fun b!1069573 () Bool)

(declare-fun res!713710 () Bool)

(assert (=> b!1069573 (=> (not res!713710) (not e!610463))))

(assert (=> b!1069573 (= res!713710 (and (= (size!33394 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33395 _keys!1163) (size!33394 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!713713 () Bool)

(assert (=> start!94632 (=> (not res!713713) (not e!610463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94632 (= res!713713 (validMask!0 mask!1515))))

(assert (=> start!94632 e!610463))

(assert (=> start!94632 true))

(assert (=> start!94632 tp_is_empty!25689))

(declare-fun array_inv!25272 (array!68326) Bool)

(assert (=> start!94632 (and (array_inv!25272 _values!955) e!610462)))

(assert (=> start!94632 tp!77091))

(declare-fun array_inv!25273 (array!68328) Bool)

(assert (=> start!94632 (array_inv!25273 _keys!1163)))

(declare-fun mapIsEmpty!40234 () Bool)

(assert (=> mapIsEmpty!40234 mapRes!40234))

(assert (= (and start!94632 res!713713) b!1069573))

(assert (= (and b!1069573 res!713710) b!1069571))

(assert (= (and b!1069571 res!713712) b!1069572))

(assert (= (and b!1069572 res!713711) b!1069569))

(assert (= (and b!1069567 condMapEmpty!40234) mapIsEmpty!40234))

(assert (= (and b!1069567 (not condMapEmpty!40234)) mapNonEmpty!40234))

(get-info :version)

(assert (= (and mapNonEmpty!40234 ((_ is ValueCellFull!12141) mapValue!40234)) b!1069570))

(assert (= (and b!1069567 ((_ is ValueCellFull!12141) mapDefault!40234)) b!1069568))

(assert (= start!94632 b!1069567))

(declare-fun m!988187 () Bool)

(assert (=> start!94632 m!988187))

(declare-fun m!988189 () Bool)

(assert (=> start!94632 m!988189))

(declare-fun m!988191 () Bool)

(assert (=> start!94632 m!988191))

(declare-fun m!988193 () Bool)

(assert (=> b!1069569 m!988193))

(declare-fun m!988195 () Bool)

(assert (=> b!1069569 m!988195))

(declare-fun m!988197 () Bool)

(assert (=> b!1069569 m!988197))

(declare-fun m!988199 () Bool)

(assert (=> mapNonEmpty!40234 m!988199))

(declare-fun m!988201 () Bool)

(assert (=> b!1069571 m!988201))

(declare-fun m!988203 () Bool)

(assert (=> b!1069572 m!988203))

(check-sat tp_is_empty!25689 (not b!1069569) b_and!34709 (not b_next!21879) (not start!94632) (not b!1069572) (not b!1069571) (not mapNonEmpty!40234))
(check-sat b_and!34709 (not b_next!21879))
