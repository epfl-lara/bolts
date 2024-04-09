; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70184 () Bool)

(assert start!70184)

(declare-fun b_free!12567 () Bool)

(declare-fun b_next!12567 () Bool)

(assert (=> start!70184 (= b_free!12567 (not b_next!12567))))

(declare-fun tp!44419 () Bool)

(declare-fun b_and!21365 () Bool)

(assert (=> start!70184 (= tp!44419 b_and!21365)))

(declare-fun b!815034 () Bool)

(declare-fun res!556702 () Bool)

(declare-fun e!451931 () Bool)

(assert (=> b!815034 (=> (not res!556702) (not e!451931))))

(declare-datatypes ((array!44742 0))(
  ( (array!44743 (arr!21426 (Array (_ BitVec 32) (_ BitVec 64))) (size!21847 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44742)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((V!24037 0))(
  ( (V!24038 (val!7186 Int)) )
))
(declare-datatypes ((ValueCell!6723 0))(
  ( (ValueCellFull!6723 (v!9609 V!24037)) (EmptyCell!6723) )
))
(declare-datatypes ((array!44744 0))(
  ( (array!44745 (arr!21427 (Array (_ BitVec 32) ValueCell!6723)) (size!21848 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44744)

(assert (=> b!815034 (= res!556702 (and (= (size!21848 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21847 _keys!976) (size!21848 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!22999 () Bool)

(declare-fun mapRes!22999 () Bool)

(assert (=> mapIsEmpty!22999 mapRes!22999))

(declare-fun b!815035 () Bool)

(declare-fun res!556704 () Bool)

(assert (=> b!815035 (=> (not res!556704) (not e!451931))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44742 (_ BitVec 32)) Bool)

(assert (=> b!815035 (= res!556704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!815036 () Bool)

(assert (=> b!815036 (= e!451931 (not true))))

(declare-datatypes ((tuple2!9434 0))(
  ( (tuple2!9435 (_1!4727 (_ BitVec 64)) (_2!4727 V!24037)) )
))
(declare-datatypes ((List!15307 0))(
  ( (Nil!15304) (Cons!15303 (h!16432 tuple2!9434) (t!21634 List!15307)) )
))
(declare-datatypes ((ListLongMap!8271 0))(
  ( (ListLongMap!8272 (toList!4151 List!15307)) )
))
(declare-fun lt!364890 () ListLongMap!8271)

(declare-fun lt!364888 () ListLongMap!8271)

(assert (=> b!815036 (= lt!364890 lt!364888)))

(declare-fun zeroValueBefore!34 () V!24037)

(declare-fun zeroValueAfter!34 () V!24037)

(declare-fun minValue!754 () V!24037)

(declare-datatypes ((Unit!27758 0))(
  ( (Unit!27759) )
))
(declare-fun lt!364889 () Unit!27758)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!316 (array!44742 array!44744 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24037 V!24037 V!24037 V!24037 (_ BitVec 32) Int) Unit!27758)

(assert (=> b!815036 (= lt!364889 (lemmaNoChangeToArrayThenSameMapNoExtras!316 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2200 (array!44742 array!44744 (_ BitVec 32) (_ BitVec 32) V!24037 V!24037 (_ BitVec 32) Int) ListLongMap!8271)

(assert (=> b!815036 (= lt!364888 (getCurrentListMapNoExtraKeys!2200 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815036 (= lt!364890 (getCurrentListMapNoExtraKeys!2200 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815037 () Bool)

(declare-fun e!451933 () Bool)

(declare-fun e!451932 () Bool)

(assert (=> b!815037 (= e!451933 (and e!451932 mapRes!22999))))

(declare-fun condMapEmpty!22999 () Bool)

(declare-fun mapDefault!22999 () ValueCell!6723)

(assert (=> b!815037 (= condMapEmpty!22999 (= (arr!21427 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6723)) mapDefault!22999)))))

(declare-fun b!815038 () Bool)

(declare-fun tp_is_empty!14277 () Bool)

(assert (=> b!815038 (= e!451932 tp_is_empty!14277)))

(declare-fun b!815039 () Bool)

(declare-fun e!451935 () Bool)

(assert (=> b!815039 (= e!451935 tp_is_empty!14277)))

(declare-fun b!815040 () Bool)

(declare-fun res!556703 () Bool)

(assert (=> b!815040 (=> (not res!556703) (not e!451931))))

(declare-datatypes ((List!15308 0))(
  ( (Nil!15305) (Cons!15304 (h!16433 (_ BitVec 64)) (t!21635 List!15308)) )
))
(declare-fun arrayNoDuplicates!0 (array!44742 (_ BitVec 32) List!15308) Bool)

(assert (=> b!815040 (= res!556703 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15305))))

(declare-fun res!556701 () Bool)

(assert (=> start!70184 (=> (not res!556701) (not e!451931))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70184 (= res!556701 (validMask!0 mask!1312))))

(assert (=> start!70184 e!451931))

(assert (=> start!70184 tp_is_empty!14277))

(declare-fun array_inv!17125 (array!44742) Bool)

(assert (=> start!70184 (array_inv!17125 _keys!976)))

(assert (=> start!70184 true))

(declare-fun array_inv!17126 (array!44744) Bool)

(assert (=> start!70184 (and (array_inv!17126 _values!788) e!451933)))

(assert (=> start!70184 tp!44419))

(declare-fun mapNonEmpty!22999 () Bool)

(declare-fun tp!44418 () Bool)

(assert (=> mapNonEmpty!22999 (= mapRes!22999 (and tp!44418 e!451935))))

(declare-fun mapValue!22999 () ValueCell!6723)

(declare-fun mapRest!22999 () (Array (_ BitVec 32) ValueCell!6723))

(declare-fun mapKey!22999 () (_ BitVec 32))

(assert (=> mapNonEmpty!22999 (= (arr!21427 _values!788) (store mapRest!22999 mapKey!22999 mapValue!22999))))

(assert (= (and start!70184 res!556701) b!815034))

(assert (= (and b!815034 res!556702) b!815035))

(assert (= (and b!815035 res!556704) b!815040))

(assert (= (and b!815040 res!556703) b!815036))

(assert (= (and b!815037 condMapEmpty!22999) mapIsEmpty!22999))

(assert (= (and b!815037 (not condMapEmpty!22999)) mapNonEmpty!22999))

(get-info :version)

(assert (= (and mapNonEmpty!22999 ((_ is ValueCellFull!6723) mapValue!22999)) b!815039))

(assert (= (and b!815037 ((_ is ValueCellFull!6723) mapDefault!22999)) b!815038))

(assert (= start!70184 b!815037))

(declare-fun m!756827 () Bool)

(assert (=> b!815036 m!756827))

(declare-fun m!756829 () Bool)

(assert (=> b!815036 m!756829))

(declare-fun m!756831 () Bool)

(assert (=> b!815036 m!756831))

(declare-fun m!756833 () Bool)

(assert (=> start!70184 m!756833))

(declare-fun m!756835 () Bool)

(assert (=> start!70184 m!756835))

(declare-fun m!756837 () Bool)

(assert (=> start!70184 m!756837))

(declare-fun m!756839 () Bool)

(assert (=> b!815040 m!756839))

(declare-fun m!756841 () Bool)

(assert (=> mapNonEmpty!22999 m!756841))

(declare-fun m!756843 () Bool)

(assert (=> b!815035 m!756843))

(check-sat (not mapNonEmpty!22999) tp_is_empty!14277 (not b!815036) (not b_next!12567) b_and!21365 (not b!815040) (not b!815035) (not start!70184))
(check-sat b_and!21365 (not b_next!12567))
