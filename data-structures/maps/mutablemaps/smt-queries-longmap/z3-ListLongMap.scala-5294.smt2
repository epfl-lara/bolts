; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70980 () Bool)

(assert start!70980)

(declare-fun b_free!13173 () Bool)

(declare-fun b_next!13173 () Bool)

(assert (=> start!70980 (= b_free!13173 (not b_next!13173))))

(declare-fun tp!46270 () Bool)

(declare-fun b_and!22087 () Bool)

(assert (=> start!70980 (= tp!46270 b_and!22087)))

(declare-fun mapNonEmpty!23941 () Bool)

(declare-fun mapRes!23941 () Bool)

(declare-fun tp!46269 () Bool)

(declare-fun e!458353 () Bool)

(assert (=> mapNonEmpty!23941 (= mapRes!23941 (and tp!46269 e!458353))))

(declare-fun mapKey!23941 () (_ BitVec 32))

(declare-datatypes ((V!24845 0))(
  ( (V!24846 (val!7489 Int)) )
))
(declare-datatypes ((ValueCell!7026 0))(
  ( (ValueCellFull!7026 (v!9918 V!24845)) (EmptyCell!7026) )
))
(declare-datatypes ((array!45912 0))(
  ( (array!45913 (arr!22000 (Array (_ BitVec 32) ValueCell!7026)) (size!22421 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45912)

(declare-fun mapValue!23941 () ValueCell!7026)

(declare-fun mapRest!23941 () (Array (_ BitVec 32) ValueCell!7026))

(assert (=> mapNonEmpty!23941 (= (arr!22000 _values!788) (store mapRest!23941 mapKey!23941 mapValue!23941))))

(declare-fun b!823894 () Bool)

(declare-fun res!561880 () Bool)

(declare-fun e!458351 () Bool)

(assert (=> b!823894 (=> (not res!561880) (not e!458351))))

(declare-datatypes ((array!45914 0))(
  ( (array!45915 (arr!22001 (Array (_ BitVec 32) (_ BitVec 64))) (size!22422 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45914)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823894 (= res!561880 (and (= (size!22421 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22422 _keys!976) (size!22421 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!823895 () Bool)

(declare-fun tp_is_empty!14883 () Bool)

(assert (=> b!823895 (= e!458353 tp_is_empty!14883)))

(declare-fun b!823896 () Bool)

(declare-fun res!561882 () Bool)

(assert (=> b!823896 (=> (not res!561882) (not e!458351))))

(declare-datatypes ((List!15754 0))(
  ( (Nil!15751) (Cons!15750 (h!16879 (_ BitVec 64)) (t!22103 List!15754)) )
))
(declare-fun arrayNoDuplicates!0 (array!45914 (_ BitVec 32) List!15754) Bool)

(assert (=> b!823896 (= res!561882 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15751))))

(declare-fun b!823897 () Bool)

(assert (=> b!823897 (= e!458351 (not true))))

(declare-datatypes ((tuple2!9896 0))(
  ( (tuple2!9897 (_1!4958 (_ BitVec 64)) (_2!4958 V!24845)) )
))
(declare-datatypes ((List!15755 0))(
  ( (Nil!15752) (Cons!15751 (h!16880 tuple2!9896) (t!22104 List!15755)) )
))
(declare-datatypes ((ListLongMap!8733 0))(
  ( (ListLongMap!8734 (toList!4382 List!15755)) )
))
(declare-fun lt!371592 () ListLongMap!8733)

(declare-fun lt!371591 () ListLongMap!8733)

(assert (=> b!823897 (= lt!371592 lt!371591)))

(declare-fun zeroValueBefore!34 () V!24845)

(declare-fun zeroValueAfter!34 () V!24845)

(declare-fun minValue!754 () V!24845)

(declare-datatypes ((Unit!28210 0))(
  ( (Unit!28211) )
))
(declare-fun lt!371590 () Unit!28210)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!520 (array!45914 array!45912 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24845 V!24845 V!24845 V!24845 (_ BitVec 32) Int) Unit!28210)

(assert (=> b!823897 (= lt!371590 (lemmaNoChangeToArrayThenSameMapNoExtras!520 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2404 (array!45914 array!45912 (_ BitVec 32) (_ BitVec 32) V!24845 V!24845 (_ BitVec 32) Int) ListLongMap!8733)

(assert (=> b!823897 (= lt!371591 (getCurrentListMapNoExtraKeys!2404 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823897 (= lt!371592 (getCurrentListMapNoExtraKeys!2404 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823899 () Bool)

(declare-fun res!561883 () Bool)

(assert (=> b!823899 (=> (not res!561883) (not e!458351))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45914 (_ BitVec 32)) Bool)

(assert (=> b!823899 (= res!561883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!823900 () Bool)

(declare-fun e!458354 () Bool)

(declare-fun e!458355 () Bool)

(assert (=> b!823900 (= e!458354 (and e!458355 mapRes!23941))))

(declare-fun condMapEmpty!23941 () Bool)

(declare-fun mapDefault!23941 () ValueCell!7026)

(assert (=> b!823900 (= condMapEmpty!23941 (= (arr!22000 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7026)) mapDefault!23941)))))

(declare-fun mapIsEmpty!23941 () Bool)

(assert (=> mapIsEmpty!23941 mapRes!23941))

(declare-fun res!561881 () Bool)

(assert (=> start!70980 (=> (not res!561881) (not e!458351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70980 (= res!561881 (validMask!0 mask!1312))))

(assert (=> start!70980 e!458351))

(assert (=> start!70980 tp_is_empty!14883))

(declare-fun array_inv!17531 (array!45914) Bool)

(assert (=> start!70980 (array_inv!17531 _keys!976)))

(assert (=> start!70980 true))

(declare-fun array_inv!17532 (array!45912) Bool)

(assert (=> start!70980 (and (array_inv!17532 _values!788) e!458354)))

(assert (=> start!70980 tp!46270))

(declare-fun b!823898 () Bool)

(assert (=> b!823898 (= e!458355 tp_is_empty!14883)))

(assert (= (and start!70980 res!561881) b!823894))

(assert (= (and b!823894 res!561880) b!823899))

(assert (= (and b!823899 res!561883) b!823896))

(assert (= (and b!823896 res!561882) b!823897))

(assert (= (and b!823900 condMapEmpty!23941) mapIsEmpty!23941))

(assert (= (and b!823900 (not condMapEmpty!23941)) mapNonEmpty!23941))

(get-info :version)

(assert (= (and mapNonEmpty!23941 ((_ is ValueCellFull!7026) mapValue!23941)) b!823895))

(assert (= (and b!823900 ((_ is ValueCellFull!7026) mapDefault!23941)) b!823898))

(assert (= start!70980 b!823900))

(declare-fun m!766141 () Bool)

(assert (=> start!70980 m!766141))

(declare-fun m!766143 () Bool)

(assert (=> start!70980 m!766143))

(declare-fun m!766145 () Bool)

(assert (=> start!70980 m!766145))

(declare-fun m!766147 () Bool)

(assert (=> b!823896 m!766147))

(declare-fun m!766149 () Bool)

(assert (=> b!823899 m!766149))

(declare-fun m!766151 () Bool)

(assert (=> b!823897 m!766151))

(declare-fun m!766153 () Bool)

(assert (=> b!823897 m!766153))

(declare-fun m!766155 () Bool)

(assert (=> b!823897 m!766155))

(declare-fun m!766157 () Bool)

(assert (=> mapNonEmpty!23941 m!766157))

(check-sat (not b!823897) b_and!22087 (not start!70980) (not b_next!13173) tp_is_empty!14883 (not mapNonEmpty!23941) (not b!823896) (not b!823899))
(check-sat b_and!22087 (not b_next!13173))
