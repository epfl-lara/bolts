; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94626 () Bool)

(assert start!94626)

(declare-fun b_free!21873 () Bool)

(declare-fun b_next!21873 () Bool)

(assert (=> start!94626 (= b_free!21873 (not b_next!21873))))

(declare-fun tp!77073 () Bool)

(declare-fun b_and!34703 () Bool)

(assert (=> start!94626 (= tp!77073 b_and!34703)))

(declare-fun mapIsEmpty!40225 () Bool)

(declare-fun mapRes!40225 () Bool)

(assert (=> mapIsEmpty!40225 mapRes!40225))

(declare-fun b!1069505 () Bool)

(declare-fun e!610419 () Bool)

(assert (=> b!1069505 (= e!610419 (not true))))

(declare-datatypes ((V!39379 0))(
  ( (V!39380 (val!12892 Int)) )
))
(declare-datatypes ((tuple2!16456 0))(
  ( (tuple2!16457 (_1!8238 (_ BitVec 64)) (_2!8238 V!39379)) )
))
(declare-datatypes ((List!23044 0))(
  ( (Nil!23041) (Cons!23040 (h!24249 tuple2!16456) (t!32380 List!23044)) )
))
(declare-datatypes ((ListLongMap!14437 0))(
  ( (ListLongMap!14438 (toList!7234 List!23044)) )
))
(declare-fun lt!472637 () ListLongMap!14437)

(declare-fun lt!472639 () ListLongMap!14437)

(assert (=> b!1069505 (= lt!472637 lt!472639)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((Unit!35134 0))(
  ( (Unit!35135) )
))
(declare-fun lt!472638 () Unit!35134)

(declare-datatypes ((ValueCell!12138 0))(
  ( (ValueCellFull!12138 (v!15509 V!39379)) (EmptyCell!12138) )
))
(declare-datatypes ((array!68314 0))(
  ( (array!68315 (arr!32851 (Array (_ BitVec 32) ValueCell!12138)) (size!33388 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68314)

(declare-fun minValue!907 () V!39379)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39379)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39379)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68316 0))(
  ( (array!68317 (arr!32852 (Array (_ BitVec 32) (_ BitVec 64))) (size!33389 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68316)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!810 (array!68316 array!68314 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39379 V!39379 V!39379 V!39379 (_ BitVec 32) Int) Unit!35134)

(assert (=> b!1069505 (= lt!472638 (lemmaNoChangeToArrayThenSameMapNoExtras!810 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3771 (array!68316 array!68314 (_ BitVec 32) (_ BitVec 32) V!39379 V!39379 (_ BitVec 32) Int) ListLongMap!14437)

(assert (=> b!1069505 (= lt!472639 (getCurrentListMapNoExtraKeys!3771 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069505 (= lt!472637 (getCurrentListMapNoExtraKeys!3771 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40225 () Bool)

(declare-fun tp!77072 () Bool)

(declare-fun e!610418 () Bool)

(assert (=> mapNonEmpty!40225 (= mapRes!40225 (and tp!77072 e!610418))))

(declare-fun mapRest!40225 () (Array (_ BitVec 32) ValueCell!12138))

(declare-fun mapValue!40225 () ValueCell!12138)

(declare-fun mapKey!40225 () (_ BitVec 32))

(assert (=> mapNonEmpty!40225 (= (arr!32851 _values!955) (store mapRest!40225 mapKey!40225 mapValue!40225))))

(declare-fun b!1069506 () Bool)

(declare-fun e!610420 () Bool)

(declare-fun e!610417 () Bool)

(assert (=> b!1069506 (= e!610420 (and e!610417 mapRes!40225))))

(declare-fun condMapEmpty!40225 () Bool)

(declare-fun mapDefault!40225 () ValueCell!12138)

(assert (=> b!1069506 (= condMapEmpty!40225 (= (arr!32851 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12138)) mapDefault!40225)))))

(declare-fun b!1069507 () Bool)

(declare-fun tp_is_empty!25683 () Bool)

(assert (=> b!1069507 (= e!610418 tp_is_empty!25683)))

(declare-fun b!1069508 () Bool)

(declare-fun res!713674 () Bool)

(assert (=> b!1069508 (=> (not res!713674) (not e!610419))))

(assert (=> b!1069508 (= res!713674 (and (= (size!33388 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33389 _keys!1163) (size!33388 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1069504 () Bool)

(declare-fun res!713676 () Bool)

(assert (=> b!1069504 (=> (not res!713676) (not e!610419))))

(declare-datatypes ((List!23045 0))(
  ( (Nil!23042) (Cons!23041 (h!24250 (_ BitVec 64)) (t!32381 List!23045)) )
))
(declare-fun arrayNoDuplicates!0 (array!68316 (_ BitVec 32) List!23045) Bool)

(assert (=> b!1069504 (= res!713676 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23042))))

(declare-fun res!713677 () Bool)

(assert (=> start!94626 (=> (not res!713677) (not e!610419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94626 (= res!713677 (validMask!0 mask!1515))))

(assert (=> start!94626 e!610419))

(assert (=> start!94626 true))

(assert (=> start!94626 tp_is_empty!25683))

(declare-fun array_inv!25266 (array!68314) Bool)

(assert (=> start!94626 (and (array_inv!25266 _values!955) e!610420)))

(assert (=> start!94626 tp!77073))

(declare-fun array_inv!25267 (array!68316) Bool)

(assert (=> start!94626 (array_inv!25267 _keys!1163)))

(declare-fun b!1069509 () Bool)

(declare-fun res!713675 () Bool)

(assert (=> b!1069509 (=> (not res!713675) (not e!610419))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68316 (_ BitVec 32)) Bool)

(assert (=> b!1069509 (= res!713675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1069510 () Bool)

(assert (=> b!1069510 (= e!610417 tp_is_empty!25683)))

(assert (= (and start!94626 res!713677) b!1069508))

(assert (= (and b!1069508 res!713674) b!1069509))

(assert (= (and b!1069509 res!713675) b!1069504))

(assert (= (and b!1069504 res!713676) b!1069505))

(assert (= (and b!1069506 condMapEmpty!40225) mapIsEmpty!40225))

(assert (= (and b!1069506 (not condMapEmpty!40225)) mapNonEmpty!40225))

(get-info :version)

(assert (= (and mapNonEmpty!40225 ((_ is ValueCellFull!12138) mapValue!40225)) b!1069507))

(assert (= (and b!1069506 ((_ is ValueCellFull!12138) mapDefault!40225)) b!1069510))

(assert (= start!94626 b!1069506))

(declare-fun m!988133 () Bool)

(assert (=> b!1069505 m!988133))

(declare-fun m!988135 () Bool)

(assert (=> b!1069505 m!988135))

(declare-fun m!988137 () Bool)

(assert (=> b!1069505 m!988137))

(declare-fun m!988139 () Bool)

(assert (=> mapNonEmpty!40225 m!988139))

(declare-fun m!988141 () Bool)

(assert (=> start!94626 m!988141))

(declare-fun m!988143 () Bool)

(assert (=> start!94626 m!988143))

(declare-fun m!988145 () Bool)

(assert (=> start!94626 m!988145))

(declare-fun m!988147 () Bool)

(assert (=> b!1069504 m!988147))

(declare-fun m!988149 () Bool)

(assert (=> b!1069509 m!988149))

(check-sat (not b!1069505) (not b!1069504) b_and!34703 tp_is_empty!25683 (not b!1069509) (not b_next!21873) (not start!94626) (not mapNonEmpty!40225))
(check-sat b_and!34703 (not b_next!21873))
