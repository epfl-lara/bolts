; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94712 () Bool)

(assert start!94712)

(declare-fun b_free!21945 () Bool)

(declare-fun b_next!21945 () Bool)

(assert (=> start!94712 (= b_free!21945 (not b_next!21945))))

(declare-fun tp!77291 () Bool)

(declare-fun b_and!34783 () Bool)

(assert (=> start!94712 (= tp!77291 b_and!34783)))

(declare-fun b!1070395 () Bool)

(declare-fun e!611063 () Bool)

(declare-fun tp_is_empty!25755 () Bool)

(assert (=> b!1070395 (= e!611063 tp_is_empty!25755)))

(declare-fun b!1070396 () Bool)

(declare-fun res!714187 () Bool)

(declare-fun e!611062 () Bool)

(assert (=> b!1070396 (=> (not res!714187) (not e!611062))))

(declare-datatypes ((array!68450 0))(
  ( (array!68451 (arr!32918 (Array (_ BitVec 32) (_ BitVec 64))) (size!33455 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68450)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68450 (_ BitVec 32)) Bool)

(assert (=> b!1070396 (= res!714187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1070397 () Bool)

(declare-fun res!714188 () Bool)

(assert (=> b!1070397 (=> (not res!714188) (not e!611062))))

(declare-datatypes ((List!23094 0))(
  ( (Nil!23091) (Cons!23090 (h!24299 (_ BitVec 64)) (t!32432 List!23094)) )
))
(declare-fun arrayNoDuplicates!0 (array!68450 (_ BitVec 32) List!23094) Bool)

(assert (=> b!1070397 (= res!714188 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23091))))

(declare-fun b!1070398 () Bool)

(declare-fun res!714191 () Bool)

(assert (=> b!1070398 (=> (not res!714191) (not e!611062))))

(declare-datatypes ((V!39475 0))(
  ( (V!39476 (val!12928 Int)) )
))
(declare-datatypes ((ValueCell!12174 0))(
  ( (ValueCellFull!12174 (v!15545 V!39475)) (EmptyCell!12174) )
))
(declare-datatypes ((array!68452 0))(
  ( (array!68453 (arr!32919 (Array (_ BitVec 32) ValueCell!12174)) (size!33456 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68452)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1070398 (= res!714191 (and (= (size!33456 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33455 _keys!1163) (size!33456 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1070399 () Bool)

(declare-fun e!611067 () Bool)

(declare-fun mapRes!40336 () Bool)

(assert (=> b!1070399 (= e!611067 (and e!611063 mapRes!40336))))

(declare-fun condMapEmpty!40336 () Bool)

(declare-fun mapDefault!40336 () ValueCell!12174)

(assert (=> b!1070399 (= condMapEmpty!40336 (= (arr!32919 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12174)) mapDefault!40336)))))

(declare-fun b!1070400 () Bool)

(declare-fun e!611065 () Bool)

(assert (=> b!1070400 (= e!611065 tp_is_empty!25755)))

(declare-fun b!1070401 () Bool)

(declare-fun e!611066 () Bool)

(assert (=> b!1070401 (= e!611066 true)))

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39475)

(declare-datatypes ((tuple2!16508 0))(
  ( (tuple2!16509 (_1!8264 (_ BitVec 64)) (_2!8264 V!39475)) )
))
(declare-datatypes ((List!23095 0))(
  ( (Nil!23092) (Cons!23091 (h!24300 tuple2!16508) (t!32433 List!23095)) )
))
(declare-datatypes ((ListLongMap!14489 0))(
  ( (ListLongMap!14490 (toList!7260 List!23095)) )
))
(declare-fun lt!473053 () ListLongMap!14489)

(declare-fun zeroValueBefore!47 () V!39475)

(declare-fun getCurrentListMap!4126 (array!68450 array!68452 (_ BitVec 32) (_ BitVec 32) V!39475 V!39475 (_ BitVec 32) Int) ListLongMap!14489)

(assert (=> b!1070401 (= lt!473053 (getCurrentListMap!4126 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40336 () Bool)

(declare-fun tp!77292 () Bool)

(assert (=> mapNonEmpty!40336 (= mapRes!40336 (and tp!77292 e!611065))))

(declare-fun mapRest!40336 () (Array (_ BitVec 32) ValueCell!12174))

(declare-fun mapValue!40336 () ValueCell!12174)

(declare-fun mapKey!40336 () (_ BitVec 32))

(assert (=> mapNonEmpty!40336 (= (arr!32919 _values!955) (store mapRest!40336 mapKey!40336 mapValue!40336))))

(declare-fun b!1070402 () Bool)

(assert (=> b!1070402 (= e!611062 (not e!611066))))

(declare-fun res!714189 () Bool)

(assert (=> b!1070402 (=> res!714189 e!611066)))

(assert (=> b!1070402 (= res!714189 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!473051 () ListLongMap!14489)

(declare-fun lt!473052 () ListLongMap!14489)

(assert (=> b!1070402 (= lt!473051 lt!473052)))

(declare-datatypes ((Unit!35184 0))(
  ( (Unit!35185) )
))
(declare-fun lt!473054 () Unit!35184)

(declare-fun zeroValueAfter!47 () V!39475)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!835 (array!68450 array!68452 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39475 V!39475 V!39475 V!39475 (_ BitVec 32) Int) Unit!35184)

(assert (=> b!1070402 (= lt!473054 (lemmaNoChangeToArrayThenSameMapNoExtras!835 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3796 (array!68450 array!68452 (_ BitVec 32) (_ BitVec 32) V!39475 V!39475 (_ BitVec 32) Int) ListLongMap!14489)

(assert (=> b!1070402 (= lt!473052 (getCurrentListMapNoExtraKeys!3796 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070402 (= lt!473051 (getCurrentListMapNoExtraKeys!3796 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!714190 () Bool)

(assert (=> start!94712 (=> (not res!714190) (not e!611062))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94712 (= res!714190 (validMask!0 mask!1515))))

(assert (=> start!94712 e!611062))

(assert (=> start!94712 true))

(assert (=> start!94712 tp_is_empty!25755))

(declare-fun array_inv!25312 (array!68452) Bool)

(assert (=> start!94712 (and (array_inv!25312 _values!955) e!611067)))

(assert (=> start!94712 tp!77291))

(declare-fun array_inv!25313 (array!68450) Bool)

(assert (=> start!94712 (array_inv!25313 _keys!1163)))

(declare-fun mapIsEmpty!40336 () Bool)

(assert (=> mapIsEmpty!40336 mapRes!40336))

(assert (= (and start!94712 res!714190) b!1070398))

(assert (= (and b!1070398 res!714191) b!1070396))

(assert (= (and b!1070396 res!714187) b!1070397))

(assert (= (and b!1070397 res!714188) b!1070402))

(assert (= (and b!1070402 (not res!714189)) b!1070401))

(assert (= (and b!1070399 condMapEmpty!40336) mapIsEmpty!40336))

(assert (= (and b!1070399 (not condMapEmpty!40336)) mapNonEmpty!40336))

(get-info :version)

(assert (= (and mapNonEmpty!40336 ((_ is ValueCellFull!12174) mapValue!40336)) b!1070400))

(assert (= (and b!1070399 ((_ is ValueCellFull!12174) mapDefault!40336)) b!1070395))

(assert (= start!94712 b!1070399))

(declare-fun m!988879 () Bool)

(assert (=> b!1070397 m!988879))

(declare-fun m!988881 () Bool)

(assert (=> b!1070396 m!988881))

(declare-fun m!988883 () Bool)

(assert (=> start!94712 m!988883))

(declare-fun m!988885 () Bool)

(assert (=> start!94712 m!988885))

(declare-fun m!988887 () Bool)

(assert (=> start!94712 m!988887))

(declare-fun m!988889 () Bool)

(assert (=> b!1070402 m!988889))

(declare-fun m!988891 () Bool)

(assert (=> b!1070402 m!988891))

(declare-fun m!988893 () Bool)

(assert (=> b!1070402 m!988893))

(declare-fun m!988895 () Bool)

(assert (=> b!1070401 m!988895))

(declare-fun m!988897 () Bool)

(assert (=> mapNonEmpty!40336 m!988897))

(check-sat (not b!1070402) tp_is_empty!25755 (not b!1070401) b_and!34783 (not b_next!21945) (not b!1070396) (not b!1070397) (not mapNonEmpty!40336) (not start!94712))
(check-sat b_and!34783 (not b_next!21945))
