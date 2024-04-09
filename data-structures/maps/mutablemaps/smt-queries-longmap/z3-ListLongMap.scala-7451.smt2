; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94638 () Bool)

(assert start!94638)

(declare-fun b_free!21885 () Bool)

(declare-fun b_next!21885 () Bool)

(assert (=> start!94638 (= b_free!21885 (not b_next!21885))))

(declare-fun tp!77108 () Bool)

(declare-fun b_and!34715 () Bool)

(assert (=> start!94638 (= tp!77108 b_and!34715)))

(declare-fun mapIsEmpty!40243 () Bool)

(declare-fun mapRes!40243 () Bool)

(assert (=> mapIsEmpty!40243 mapRes!40243))

(declare-fun b!1069630 () Bool)

(declare-fun res!713749 () Bool)

(declare-fun e!610508 () Bool)

(assert (=> b!1069630 (=> (not res!713749) (not e!610508))))

(declare-datatypes ((array!68338 0))(
  ( (array!68339 (arr!32863 (Array (_ BitVec 32) (_ BitVec 64))) (size!33400 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68338)

(declare-datatypes ((List!23054 0))(
  ( (Nil!23051) (Cons!23050 (h!24259 (_ BitVec 64)) (t!32390 List!23054)) )
))
(declare-fun arrayNoDuplicates!0 (array!68338 (_ BitVec 32) List!23054) Bool)

(assert (=> b!1069630 (= res!713749 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23051))))

(declare-fun b!1069631 () Bool)

(assert (=> b!1069631 (= e!610508 (not true))))

(declare-datatypes ((V!39395 0))(
  ( (V!39396 (val!12898 Int)) )
))
(declare-datatypes ((tuple2!16466 0))(
  ( (tuple2!16467 (_1!8243 (_ BitVec 64)) (_2!8243 V!39395)) )
))
(declare-datatypes ((List!23055 0))(
  ( (Nil!23052) (Cons!23051 (h!24260 tuple2!16466) (t!32391 List!23055)) )
))
(declare-datatypes ((ListLongMap!14447 0))(
  ( (ListLongMap!14448 (toList!7239 List!23055)) )
))
(declare-fun lt!472691 () ListLongMap!14447)

(declare-fun lt!472692 () ListLongMap!14447)

(assert (=> b!1069631 (= lt!472691 lt!472692)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39395)

(declare-datatypes ((Unit!35144 0))(
  ( (Unit!35145) )
))
(declare-fun lt!472693 () Unit!35144)

(declare-fun minValue!907 () V!39395)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12144 0))(
  ( (ValueCellFull!12144 (v!15515 V!39395)) (EmptyCell!12144) )
))
(declare-datatypes ((array!68340 0))(
  ( (array!68341 (arr!32864 (Array (_ BitVec 32) ValueCell!12144)) (size!33401 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68340)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39395)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!815 (array!68338 array!68340 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39395 V!39395 V!39395 V!39395 (_ BitVec 32) Int) Unit!35144)

(assert (=> b!1069631 (= lt!472693 (lemmaNoChangeToArrayThenSameMapNoExtras!815 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3776 (array!68338 array!68340 (_ BitVec 32) (_ BitVec 32) V!39395 V!39395 (_ BitVec 32) Int) ListLongMap!14447)

(assert (=> b!1069631 (= lt!472692 (getCurrentListMapNoExtraKeys!3776 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069631 (= lt!472691 (getCurrentListMapNoExtraKeys!3776 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069632 () Bool)

(declare-fun res!713748 () Bool)

(assert (=> b!1069632 (=> (not res!713748) (not e!610508))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68338 (_ BitVec 32)) Bool)

(assert (=> b!1069632 (= res!713748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40243 () Bool)

(declare-fun tp!77109 () Bool)

(declare-fun e!610510 () Bool)

(assert (=> mapNonEmpty!40243 (= mapRes!40243 (and tp!77109 e!610510))))

(declare-fun mapRest!40243 () (Array (_ BitVec 32) ValueCell!12144))

(declare-fun mapKey!40243 () (_ BitVec 32))

(declare-fun mapValue!40243 () ValueCell!12144)

(assert (=> mapNonEmpty!40243 (= (arr!32864 _values!955) (store mapRest!40243 mapKey!40243 mapValue!40243))))

(declare-fun b!1069633 () Bool)

(declare-fun tp_is_empty!25695 () Bool)

(assert (=> b!1069633 (= e!610510 tp_is_empty!25695)))

(declare-fun b!1069634 () Bool)

(declare-fun res!713746 () Bool)

(assert (=> b!1069634 (=> (not res!713746) (not e!610508))))

(assert (=> b!1069634 (= res!713746 (and (= (size!33401 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33400 _keys!1163) (size!33401 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!713747 () Bool)

(assert (=> start!94638 (=> (not res!713747) (not e!610508))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94638 (= res!713747 (validMask!0 mask!1515))))

(assert (=> start!94638 e!610508))

(assert (=> start!94638 true))

(assert (=> start!94638 tp_is_empty!25695))

(declare-fun e!610507 () Bool)

(declare-fun array_inv!25276 (array!68340) Bool)

(assert (=> start!94638 (and (array_inv!25276 _values!955) e!610507)))

(assert (=> start!94638 tp!77108))

(declare-fun array_inv!25277 (array!68338) Bool)

(assert (=> start!94638 (array_inv!25277 _keys!1163)))

(declare-fun b!1069635 () Bool)

(declare-fun e!610509 () Bool)

(assert (=> b!1069635 (= e!610509 tp_is_empty!25695)))

(declare-fun b!1069636 () Bool)

(assert (=> b!1069636 (= e!610507 (and e!610509 mapRes!40243))))

(declare-fun condMapEmpty!40243 () Bool)

(declare-fun mapDefault!40243 () ValueCell!12144)

(assert (=> b!1069636 (= condMapEmpty!40243 (= (arr!32864 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12144)) mapDefault!40243)))))

(assert (= (and start!94638 res!713747) b!1069634))

(assert (= (and b!1069634 res!713746) b!1069632))

(assert (= (and b!1069632 res!713748) b!1069630))

(assert (= (and b!1069630 res!713749) b!1069631))

(assert (= (and b!1069636 condMapEmpty!40243) mapIsEmpty!40243))

(assert (= (and b!1069636 (not condMapEmpty!40243)) mapNonEmpty!40243))

(get-info :version)

(assert (= (and mapNonEmpty!40243 ((_ is ValueCellFull!12144) mapValue!40243)) b!1069633))

(assert (= (and b!1069636 ((_ is ValueCellFull!12144) mapDefault!40243)) b!1069635))

(assert (= start!94638 b!1069636))

(declare-fun m!988241 () Bool)

(assert (=> b!1069631 m!988241))

(declare-fun m!988243 () Bool)

(assert (=> b!1069631 m!988243))

(declare-fun m!988245 () Bool)

(assert (=> b!1069631 m!988245))

(declare-fun m!988247 () Bool)

(assert (=> b!1069630 m!988247))

(declare-fun m!988249 () Bool)

(assert (=> start!94638 m!988249))

(declare-fun m!988251 () Bool)

(assert (=> start!94638 m!988251))

(declare-fun m!988253 () Bool)

(assert (=> start!94638 m!988253))

(declare-fun m!988255 () Bool)

(assert (=> mapNonEmpty!40243 m!988255))

(declare-fun m!988257 () Bool)

(assert (=> b!1069632 m!988257))

(check-sat (not b_next!21885) (not start!94638) (not b!1069632) (not b!1069631) (not mapNonEmpty!40243) b_and!34715 (not b!1069630) tp_is_empty!25695)
(check-sat b_and!34715 (not b_next!21885))
