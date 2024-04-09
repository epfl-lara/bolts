; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94412 () Bool)

(assert start!94412)

(declare-fun b_free!21717 () Bool)

(declare-fun b_next!21717 () Bool)

(assert (=> start!94412 (= b_free!21717 (not b_next!21717))))

(declare-fun tp!76595 () Bool)

(declare-fun b_and!34519 () Bool)

(assert (=> start!94412 (= tp!76595 b_and!34519)))

(declare-fun b!1067134 () Bool)

(declare-fun res!712253 () Bool)

(declare-fun e!608661 () Bool)

(assert (=> b!1067134 (=> (not res!712253) (not e!608661))))

(declare-datatypes ((array!68010 0))(
  ( (array!68011 (arr!32702 (Array (_ BitVec 32) (_ BitVec 64))) (size!33239 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68010)

(declare-datatypes ((List!22932 0))(
  ( (Nil!22929) (Cons!22928 (h!24137 (_ BitVec 64)) (t!32262 List!22932)) )
))
(declare-fun arrayNoDuplicates!0 (array!68010 (_ BitVec 32) List!22932) Bool)

(assert (=> b!1067134 (= res!712253 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22929))))

(declare-fun b!1067135 () Bool)

(assert (=> b!1067135 (= e!608661 (not true))))

(declare-datatypes ((V!39171 0))(
  ( (V!39172 (val!12814 Int)) )
))
(declare-datatypes ((tuple2!16342 0))(
  ( (tuple2!16343 (_1!8181 (_ BitVec 64)) (_2!8181 V!39171)) )
))
(declare-datatypes ((List!22933 0))(
  ( (Nil!22930) (Cons!22929 (h!24138 tuple2!16342) (t!32263 List!22933)) )
))
(declare-datatypes ((ListLongMap!14323 0))(
  ( (ListLongMap!14324 (toList!7177 List!22933)) )
))
(declare-fun lt!471316 () ListLongMap!14323)

(declare-fun lt!471314 () ListLongMap!14323)

(assert (=> b!1067135 (= lt!471316 lt!471314)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39171)

(declare-datatypes ((ValueCell!12060 0))(
  ( (ValueCellFull!12060 (v!15429 V!39171)) (EmptyCell!12060) )
))
(declare-datatypes ((array!68012 0))(
  ( (array!68013 (arr!32703 (Array (_ BitVec 32) ValueCell!12060)) (size!33240 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68012)

(declare-fun minValue!907 () V!39171)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39171)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((Unit!35020 0))(
  ( (Unit!35021) )
))
(declare-fun lt!471315 () Unit!35020)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!761 (array!68010 array!68012 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39171 V!39171 V!39171 V!39171 (_ BitVec 32) Int) Unit!35020)

(assert (=> b!1067135 (= lt!471315 (lemmaNoChangeToArrayThenSameMapNoExtras!761 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3722 (array!68010 array!68012 (_ BitVec 32) (_ BitVec 32) V!39171 V!39171 (_ BitVec 32) Int) ListLongMap!14323)

(assert (=> b!1067135 (= lt!471314 (getCurrentListMapNoExtraKeys!3722 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067135 (= lt!471316 (getCurrentListMapNoExtraKeys!3722 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067136 () Bool)

(declare-fun res!712254 () Bool)

(assert (=> b!1067136 (=> (not res!712254) (not e!608661))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68010 (_ BitVec 32)) Bool)

(assert (=> b!1067136 (= res!712254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39982 () Bool)

(declare-fun mapRes!39982 () Bool)

(declare-fun tp!76596 () Bool)

(declare-fun e!608659 () Bool)

(assert (=> mapNonEmpty!39982 (= mapRes!39982 (and tp!76596 e!608659))))

(declare-fun mapRest!39982 () (Array (_ BitVec 32) ValueCell!12060))

(declare-fun mapKey!39982 () (_ BitVec 32))

(declare-fun mapValue!39982 () ValueCell!12060)

(assert (=> mapNonEmpty!39982 (= (arr!32703 _values!955) (store mapRest!39982 mapKey!39982 mapValue!39982))))

(declare-fun b!1067137 () Bool)

(declare-fun e!608662 () Bool)

(declare-fun e!608660 () Bool)

(assert (=> b!1067137 (= e!608662 (and e!608660 mapRes!39982))))

(declare-fun condMapEmpty!39982 () Bool)

(declare-fun mapDefault!39982 () ValueCell!12060)

(assert (=> b!1067137 (= condMapEmpty!39982 (= (arr!32703 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12060)) mapDefault!39982)))))

(declare-fun mapIsEmpty!39982 () Bool)

(assert (=> mapIsEmpty!39982 mapRes!39982))

(declare-fun b!1067138 () Bool)

(declare-fun tp_is_empty!25527 () Bool)

(assert (=> b!1067138 (= e!608660 tp_is_empty!25527)))

(declare-fun res!712252 () Bool)

(assert (=> start!94412 (=> (not res!712252) (not e!608661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94412 (= res!712252 (validMask!0 mask!1515))))

(assert (=> start!94412 e!608661))

(assert (=> start!94412 true))

(assert (=> start!94412 tp_is_empty!25527))

(declare-fun array_inv!25154 (array!68012) Bool)

(assert (=> start!94412 (and (array_inv!25154 _values!955) e!608662)))

(assert (=> start!94412 tp!76595))

(declare-fun array_inv!25155 (array!68010) Bool)

(assert (=> start!94412 (array_inv!25155 _keys!1163)))

(declare-fun b!1067139 () Bool)

(declare-fun res!712255 () Bool)

(assert (=> b!1067139 (=> (not res!712255) (not e!608661))))

(assert (=> b!1067139 (= res!712255 (and (= (size!33240 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33239 _keys!1163) (size!33240 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067140 () Bool)

(assert (=> b!1067140 (= e!608659 tp_is_empty!25527)))

(assert (= (and start!94412 res!712252) b!1067139))

(assert (= (and b!1067139 res!712255) b!1067136))

(assert (= (and b!1067136 res!712254) b!1067134))

(assert (= (and b!1067134 res!712253) b!1067135))

(assert (= (and b!1067137 condMapEmpty!39982) mapIsEmpty!39982))

(assert (= (and b!1067137 (not condMapEmpty!39982)) mapNonEmpty!39982))

(get-info :version)

(assert (= (and mapNonEmpty!39982 ((_ is ValueCellFull!12060) mapValue!39982)) b!1067140))

(assert (= (and b!1067137 ((_ is ValueCellFull!12060) mapDefault!39982)) b!1067138))

(assert (= start!94412 b!1067137))

(declare-fun m!985967 () Bool)

(assert (=> b!1067136 m!985967))

(declare-fun m!985969 () Bool)

(assert (=> mapNonEmpty!39982 m!985969))

(declare-fun m!985971 () Bool)

(assert (=> b!1067134 m!985971))

(declare-fun m!985973 () Bool)

(assert (=> b!1067135 m!985973))

(declare-fun m!985975 () Bool)

(assert (=> b!1067135 m!985975))

(declare-fun m!985977 () Bool)

(assert (=> b!1067135 m!985977))

(declare-fun m!985979 () Bool)

(assert (=> start!94412 m!985979))

(declare-fun m!985981 () Bool)

(assert (=> start!94412 m!985981))

(declare-fun m!985983 () Bool)

(assert (=> start!94412 m!985983))

(check-sat (not start!94412) (not b!1067135) (not b!1067136) (not b!1067134) tp_is_empty!25527 b_and!34519 (not b_next!21717) (not mapNonEmpty!39982))
(check-sat b_and!34519 (not b_next!21717))
