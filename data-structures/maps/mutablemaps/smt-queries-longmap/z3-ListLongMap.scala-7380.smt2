; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94058 () Bool)

(assert start!94058)

(declare-fun b_free!21459 () Bool)

(declare-fun b_next!21459 () Bool)

(assert (=> start!94058 (= b_free!21459 (not b_next!21459))))

(declare-fun tp!75807 () Bool)

(declare-fun b_and!34209 () Bool)

(assert (=> start!94058 (= tp!75807 b_and!34209)))

(declare-fun b!1063380 () Bool)

(declare-fun e!605953 () Bool)

(declare-fun e!605952 () Bool)

(assert (=> b!1063380 (= e!605953 (not e!605952))))

(declare-fun res!710108 () Bool)

(assert (=> b!1063380 (=> res!710108 e!605952)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1063380 (= res!710108 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!38827 0))(
  ( (V!38828 (val!12685 Int)) )
))
(declare-datatypes ((tuple2!16148 0))(
  ( (tuple2!16149 (_1!8084 (_ BitVec 64)) (_2!8084 V!38827)) )
))
(declare-datatypes ((List!22754 0))(
  ( (Nil!22751) (Cons!22750 (h!23959 tuple2!16148) (t!32074 List!22754)) )
))
(declare-datatypes ((ListLongMap!14129 0))(
  ( (ListLongMap!14130 (toList!7080 List!22754)) )
))
(declare-fun lt!468667 () ListLongMap!14129)

(declare-fun lt!468666 () ListLongMap!14129)

(assert (=> b!1063380 (= lt!468667 lt!468666)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((Unit!34825 0))(
  ( (Unit!34826) )
))
(declare-fun lt!468664 () Unit!34825)

(declare-fun zeroValueBefore!47 () V!38827)

(declare-datatypes ((ValueCell!11931 0))(
  ( (ValueCellFull!11931 (v!15297 V!38827)) (EmptyCell!11931) )
))
(declare-datatypes ((array!67510 0))(
  ( (array!67511 (arr!32457 (Array (_ BitVec 32) ValueCell!11931)) (size!32994 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67510)

(declare-fun minValue!907 () V!38827)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38827)

(declare-datatypes ((array!67512 0))(
  ( (array!67513 (arr!32458 (Array (_ BitVec 32) (_ BitVec 64))) (size!32995 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67512)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!674 (array!67512 array!67510 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38827 V!38827 V!38827 V!38827 (_ BitVec 32) Int) Unit!34825)

(assert (=> b!1063380 (= lt!468664 (lemmaNoChangeToArrayThenSameMapNoExtras!674 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3635 (array!67512 array!67510 (_ BitVec 32) (_ BitVec 32) V!38827 V!38827 (_ BitVec 32) Int) ListLongMap!14129)

(assert (=> b!1063380 (= lt!468666 (getCurrentListMapNoExtraKeys!3635 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063380 (= lt!468667 (getCurrentListMapNoExtraKeys!3635 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!710105 () Bool)

(assert (=> start!94058 (=> (not res!710105) (not e!605953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94058 (= res!710105 (validMask!0 mask!1515))))

(assert (=> start!94058 e!605953))

(assert (=> start!94058 true))

(declare-fun tp_is_empty!25269 () Bool)

(assert (=> start!94058 tp_is_empty!25269))

(declare-fun e!605954 () Bool)

(declare-fun array_inv!24978 (array!67510) Bool)

(assert (=> start!94058 (and (array_inv!24978 _values!955) e!605954)))

(assert (=> start!94058 tp!75807))

(declare-fun array_inv!24979 (array!67512) Bool)

(assert (=> start!94058 (array_inv!24979 _keys!1163)))

(declare-fun b!1063381 () Bool)

(declare-fun e!605950 () Bool)

(assert (=> b!1063381 (= e!605952 e!605950)))

(declare-fun res!710106 () Bool)

(assert (=> b!1063381 (=> res!710106 e!605950)))

(declare-fun lt!468665 () ListLongMap!14129)

(declare-fun contains!6275 (ListLongMap!14129 (_ BitVec 64)) Bool)

(assert (=> b!1063381 (= res!710106 (contains!6275 lt!468665 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4024 (array!67512 array!67510 (_ BitVec 32) (_ BitVec 32) V!38827 V!38827 (_ BitVec 32) Int) ListLongMap!14129)

(assert (=> b!1063381 (= lt!468665 (getCurrentListMap!4024 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063382 () Bool)

(declare-fun e!605955 () Bool)

(assert (=> b!1063382 (= e!605955 tp_is_empty!25269)))

(declare-fun mapIsEmpty!39580 () Bool)

(declare-fun mapRes!39580 () Bool)

(assert (=> mapIsEmpty!39580 mapRes!39580))

(declare-fun b!1063383 () Bool)

(declare-fun res!710104 () Bool)

(assert (=> b!1063383 (=> (not res!710104) (not e!605953))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67512 (_ BitVec 32)) Bool)

(assert (=> b!1063383 (= res!710104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1063384 () Bool)

(declare-fun e!605956 () Bool)

(assert (=> b!1063384 (= e!605956 tp_is_empty!25269)))

(declare-fun b!1063385 () Bool)

(assert (=> b!1063385 (= e!605950 true)))

(declare-fun -!588 (ListLongMap!14129 (_ BitVec 64)) ListLongMap!14129)

(assert (=> b!1063385 (= (-!588 lt!468665 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468665)))

(declare-fun lt!468663 () Unit!34825)

(declare-fun removeNotPresentStillSame!34 (ListLongMap!14129 (_ BitVec 64)) Unit!34825)

(assert (=> b!1063385 (= lt!468663 (removeNotPresentStillSame!34 lt!468665 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1063386 () Bool)

(assert (=> b!1063386 (= e!605954 (and e!605955 mapRes!39580))))

(declare-fun condMapEmpty!39580 () Bool)

(declare-fun mapDefault!39580 () ValueCell!11931)

(assert (=> b!1063386 (= condMapEmpty!39580 (= (arr!32457 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11931)) mapDefault!39580)))))

(declare-fun b!1063387 () Bool)

(declare-fun res!710103 () Bool)

(assert (=> b!1063387 (=> (not res!710103) (not e!605953))))

(declare-datatypes ((List!22755 0))(
  ( (Nil!22752) (Cons!22751 (h!23960 (_ BitVec 64)) (t!32075 List!22755)) )
))
(declare-fun arrayNoDuplicates!0 (array!67512 (_ BitVec 32) List!22755) Bool)

(assert (=> b!1063387 (= res!710103 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22752))))

(declare-fun b!1063388 () Bool)

(declare-fun res!710107 () Bool)

(assert (=> b!1063388 (=> (not res!710107) (not e!605953))))

(assert (=> b!1063388 (= res!710107 (and (= (size!32994 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32995 _keys!1163) (size!32994 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39580 () Bool)

(declare-fun tp!75806 () Bool)

(assert (=> mapNonEmpty!39580 (= mapRes!39580 (and tp!75806 e!605956))))

(declare-fun mapKey!39580 () (_ BitVec 32))

(declare-fun mapRest!39580 () (Array (_ BitVec 32) ValueCell!11931))

(declare-fun mapValue!39580 () ValueCell!11931)

(assert (=> mapNonEmpty!39580 (= (arr!32457 _values!955) (store mapRest!39580 mapKey!39580 mapValue!39580))))

(assert (= (and start!94058 res!710105) b!1063388))

(assert (= (and b!1063388 res!710107) b!1063383))

(assert (= (and b!1063383 res!710104) b!1063387))

(assert (= (and b!1063387 res!710103) b!1063380))

(assert (= (and b!1063380 (not res!710108)) b!1063381))

(assert (= (and b!1063381 (not res!710106)) b!1063385))

(assert (= (and b!1063386 condMapEmpty!39580) mapIsEmpty!39580))

(assert (= (and b!1063386 (not condMapEmpty!39580)) mapNonEmpty!39580))

(get-info :version)

(assert (= (and mapNonEmpty!39580 ((_ is ValueCellFull!11931) mapValue!39580)) b!1063384))

(assert (= (and b!1063386 ((_ is ValueCellFull!11931) mapDefault!39580)) b!1063382))

(assert (= start!94058 b!1063386))

(declare-fun m!982207 () Bool)

(assert (=> b!1063387 m!982207))

(declare-fun m!982209 () Bool)

(assert (=> start!94058 m!982209))

(declare-fun m!982211 () Bool)

(assert (=> start!94058 m!982211))

(declare-fun m!982213 () Bool)

(assert (=> start!94058 m!982213))

(declare-fun m!982215 () Bool)

(assert (=> b!1063383 m!982215))

(declare-fun m!982217 () Bool)

(assert (=> mapNonEmpty!39580 m!982217))

(declare-fun m!982219 () Bool)

(assert (=> b!1063385 m!982219))

(declare-fun m!982221 () Bool)

(assert (=> b!1063385 m!982221))

(declare-fun m!982223 () Bool)

(assert (=> b!1063380 m!982223))

(declare-fun m!982225 () Bool)

(assert (=> b!1063380 m!982225))

(declare-fun m!982227 () Bool)

(assert (=> b!1063380 m!982227))

(declare-fun m!982229 () Bool)

(assert (=> b!1063381 m!982229))

(declare-fun m!982231 () Bool)

(assert (=> b!1063381 m!982231))

(check-sat (not mapNonEmpty!39580) b_and!34209 (not b!1063380) (not b!1063381) (not b_next!21459) (not b!1063385) (not start!94058) (not b!1063383) (not b!1063387) tp_is_empty!25269)
(check-sat b_and!34209 (not b_next!21459))
