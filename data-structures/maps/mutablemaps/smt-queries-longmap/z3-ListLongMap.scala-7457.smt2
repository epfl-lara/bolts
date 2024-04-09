; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94688 () Bool)

(assert start!94688)

(declare-fun b_free!21921 () Bool)

(declare-fun b_next!21921 () Bool)

(assert (=> start!94688 (= b_free!21921 (not b_next!21921))))

(declare-fun tp!77220 () Bool)

(declare-fun b_and!34759 () Bool)

(assert (=> start!94688 (= tp!77220 b_and!34759)))

(declare-fun b!1070107 () Bool)

(declare-fun res!714007 () Bool)

(declare-fun e!610851 () Bool)

(assert (=> b!1070107 (=> (not res!714007) (not e!610851))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39443 0))(
  ( (V!39444 (val!12916 Int)) )
))
(declare-datatypes ((ValueCell!12162 0))(
  ( (ValueCellFull!12162 (v!15533 V!39443)) (EmptyCell!12162) )
))
(declare-datatypes ((array!68408 0))(
  ( (array!68409 (arr!32897 (Array (_ BitVec 32) ValueCell!12162)) (size!33434 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68408)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68410 0))(
  ( (array!68411 (arr!32898 (Array (_ BitVec 32) (_ BitVec 64))) (size!33435 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68410)

(assert (=> b!1070107 (= res!714007 (and (= (size!33434 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33435 _keys!1163) (size!33434 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1070108 () Bool)

(declare-fun e!610850 () Bool)

(declare-fun e!610848 () Bool)

(declare-fun mapRes!40300 () Bool)

(assert (=> b!1070108 (= e!610850 (and e!610848 mapRes!40300))))

(declare-fun condMapEmpty!40300 () Bool)

(declare-fun mapDefault!40300 () ValueCell!12162)

(assert (=> b!1070108 (= condMapEmpty!40300 (= (arr!32897 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12162)) mapDefault!40300)))))

(declare-fun mapNonEmpty!40300 () Bool)

(declare-fun tp!77219 () Bool)

(declare-fun e!610846 () Bool)

(assert (=> mapNonEmpty!40300 (= mapRes!40300 (and tp!77219 e!610846))))

(declare-fun mapValue!40300 () ValueCell!12162)

(declare-fun mapKey!40300 () (_ BitVec 32))

(declare-fun mapRest!40300 () (Array (_ BitVec 32) ValueCell!12162))

(assert (=> mapNonEmpty!40300 (= (arr!32897 _values!955) (store mapRest!40300 mapKey!40300 mapValue!40300))))

(declare-fun res!714011 () Bool)

(assert (=> start!94688 (=> (not res!714011) (not e!610851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94688 (= res!714011 (validMask!0 mask!1515))))

(assert (=> start!94688 e!610851))

(assert (=> start!94688 true))

(declare-fun tp_is_empty!25731 () Bool)

(assert (=> start!94688 tp_is_empty!25731))

(declare-fun array_inv!25294 (array!68408) Bool)

(assert (=> start!94688 (and (array_inv!25294 _values!955) e!610850)))

(assert (=> start!94688 tp!77220))

(declare-fun array_inv!25295 (array!68410) Bool)

(assert (=> start!94688 (array_inv!25295 _keys!1163)))

(declare-fun b!1070109 () Bool)

(declare-fun e!610849 () Bool)

(assert (=> b!1070109 (= e!610851 (not e!610849))))

(declare-fun res!714009 () Bool)

(assert (=> b!1070109 (=> res!714009 e!610849)))

(assert (=> b!1070109 (= res!714009 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16492 0))(
  ( (tuple2!16493 (_1!8256 (_ BitVec 64)) (_2!8256 V!39443)) )
))
(declare-datatypes ((List!23078 0))(
  ( (Nil!23075) (Cons!23074 (h!24283 tuple2!16492) (t!32416 List!23078)) )
))
(declare-datatypes ((ListLongMap!14473 0))(
  ( (ListLongMap!14474 (toList!7252 List!23078)) )
))
(declare-fun lt!472909 () ListLongMap!14473)

(declare-fun lt!472907 () ListLongMap!14473)

(assert (=> b!1070109 (= lt!472909 lt!472907)))

(declare-datatypes ((Unit!35168 0))(
  ( (Unit!35169) )
))
(declare-fun lt!472908 () Unit!35168)

(declare-fun minValue!907 () V!39443)

(declare-fun zeroValueBefore!47 () V!39443)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39443)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!827 (array!68410 array!68408 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39443 V!39443 V!39443 V!39443 (_ BitVec 32) Int) Unit!35168)

(assert (=> b!1070109 (= lt!472908 (lemmaNoChangeToArrayThenSameMapNoExtras!827 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3788 (array!68410 array!68408 (_ BitVec 32) (_ BitVec 32) V!39443 V!39443 (_ BitVec 32) Int) ListLongMap!14473)

(assert (=> b!1070109 (= lt!472907 (getCurrentListMapNoExtraKeys!3788 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070109 (= lt!472909 (getCurrentListMapNoExtraKeys!3788 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070110 () Bool)

(assert (=> b!1070110 (= e!610846 tp_is_empty!25731)))

(declare-fun b!1070111 () Bool)

(declare-fun res!714008 () Bool)

(assert (=> b!1070111 (=> (not res!714008) (not e!610851))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68410 (_ BitVec 32)) Bool)

(assert (=> b!1070111 (= res!714008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1070112 () Bool)

(assert (=> b!1070112 (= e!610849 true)))

(declare-fun lt!472910 () ListLongMap!14473)

(declare-fun getCurrentListMap!4118 (array!68410 array!68408 (_ BitVec 32) (_ BitVec 32) V!39443 V!39443 (_ BitVec 32) Int) ListLongMap!14473)

(assert (=> b!1070112 (= lt!472910 (getCurrentListMap!4118 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40300 () Bool)

(assert (=> mapIsEmpty!40300 mapRes!40300))

(declare-fun b!1070113 () Bool)

(declare-fun res!714010 () Bool)

(assert (=> b!1070113 (=> (not res!714010) (not e!610851))))

(declare-datatypes ((List!23079 0))(
  ( (Nil!23076) (Cons!23075 (h!24284 (_ BitVec 64)) (t!32417 List!23079)) )
))
(declare-fun arrayNoDuplicates!0 (array!68410 (_ BitVec 32) List!23079) Bool)

(assert (=> b!1070113 (= res!714010 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23076))))

(declare-fun b!1070114 () Bool)

(assert (=> b!1070114 (= e!610848 tp_is_empty!25731)))

(assert (= (and start!94688 res!714011) b!1070107))

(assert (= (and b!1070107 res!714007) b!1070111))

(assert (= (and b!1070111 res!714008) b!1070113))

(assert (= (and b!1070113 res!714010) b!1070109))

(assert (= (and b!1070109 (not res!714009)) b!1070112))

(assert (= (and b!1070108 condMapEmpty!40300) mapIsEmpty!40300))

(assert (= (and b!1070108 (not condMapEmpty!40300)) mapNonEmpty!40300))

(get-info :version)

(assert (= (and mapNonEmpty!40300 ((_ is ValueCellFull!12162) mapValue!40300)) b!1070110))

(assert (= (and b!1070108 ((_ is ValueCellFull!12162) mapDefault!40300)) b!1070114))

(assert (= start!94688 b!1070108))

(declare-fun m!988639 () Bool)

(assert (=> mapNonEmpty!40300 m!988639))

(declare-fun m!988641 () Bool)

(assert (=> b!1070112 m!988641))

(declare-fun m!988643 () Bool)

(assert (=> start!94688 m!988643))

(declare-fun m!988645 () Bool)

(assert (=> start!94688 m!988645))

(declare-fun m!988647 () Bool)

(assert (=> start!94688 m!988647))

(declare-fun m!988649 () Bool)

(assert (=> b!1070113 m!988649))

(declare-fun m!988651 () Bool)

(assert (=> b!1070109 m!988651))

(declare-fun m!988653 () Bool)

(assert (=> b!1070109 m!988653))

(declare-fun m!988655 () Bool)

(assert (=> b!1070109 m!988655))

(declare-fun m!988657 () Bool)

(assert (=> b!1070111 m!988657))

(check-sat (not b!1070112) (not b!1070111) (not mapNonEmpty!40300) (not start!94688) (not b_next!21921) (not b!1070109) b_and!34759 tp_is_empty!25731 (not b!1070113))
(check-sat b_and!34759 (not b_next!21921))
