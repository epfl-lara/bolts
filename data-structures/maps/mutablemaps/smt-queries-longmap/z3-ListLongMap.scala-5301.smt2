; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71036 () Bool)

(assert start!71036)

(declare-fun b_free!13215 () Bool)

(declare-fun b_next!13215 () Bool)

(assert (=> start!71036 (= b_free!13215 (not b_next!13215))))

(declare-fun tp!46398 () Bool)

(declare-fun b_and!22137 () Bool)

(assert (=> start!71036 (= tp!46398 b_and!22137)))

(declare-fun b!824461 () Bool)

(declare-fun e!458763 () Bool)

(declare-fun tp_is_empty!14925 () Bool)

(assert (=> b!824461 (= e!458763 tp_is_empty!14925)))

(declare-fun b!824462 () Bool)

(declare-fun res!562206 () Bool)

(declare-fun e!458765 () Bool)

(assert (=> b!824462 (=> (not res!562206) (not e!458765))))

(declare-datatypes ((array!45996 0))(
  ( (array!45997 (arr!22041 (Array (_ BitVec 32) (_ BitVec 64))) (size!22462 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45996)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24901 0))(
  ( (V!24902 (val!7510 Int)) )
))
(declare-datatypes ((ValueCell!7047 0))(
  ( (ValueCellFull!7047 (v!9939 V!24901)) (EmptyCell!7047) )
))
(declare-datatypes ((array!45998 0))(
  ( (array!45999 (arr!22042 (Array (_ BitVec 32) ValueCell!7047)) (size!22463 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45998)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!824462 (= res!562206 (and (= (size!22463 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22462 _keys!976) (size!22463 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!824463 () Bool)

(declare-fun e!458766 () Bool)

(assert (=> b!824463 (= e!458766 tp_is_empty!14925)))

(declare-fun mapIsEmpty!24007 () Bool)

(declare-fun mapRes!24007 () Bool)

(assert (=> mapIsEmpty!24007 mapRes!24007))

(declare-fun res!562207 () Bool)

(assert (=> start!71036 (=> (not res!562207) (not e!458765))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71036 (= res!562207 (validMask!0 mask!1312))))

(assert (=> start!71036 e!458765))

(assert (=> start!71036 tp_is_empty!14925))

(declare-fun array_inv!17565 (array!45996) Bool)

(assert (=> start!71036 (array_inv!17565 _keys!976)))

(assert (=> start!71036 true))

(declare-fun e!458767 () Bool)

(declare-fun array_inv!17566 (array!45998) Bool)

(assert (=> start!71036 (and (array_inv!17566 _values!788) e!458767)))

(assert (=> start!71036 tp!46398))

(declare-fun b!824464 () Bool)

(declare-fun res!562204 () Bool)

(assert (=> b!824464 (=> (not res!562204) (not e!458765))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45996 (_ BitVec 32)) Bool)

(assert (=> b!824464 (= res!562204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!824465 () Bool)

(declare-fun e!458762 () Bool)

(assert (=> b!824465 (= e!458762 true)))

(declare-fun zeroValueBefore!34 () V!24901)

(declare-datatypes ((tuple2!9928 0))(
  ( (tuple2!9929 (_1!4974 (_ BitVec 64)) (_2!4974 V!24901)) )
))
(declare-datatypes ((List!15780 0))(
  ( (Nil!15777) (Cons!15776 (h!16905 tuple2!9928) (t!22131 List!15780)) )
))
(declare-datatypes ((ListLongMap!8765 0))(
  ( (ListLongMap!8766 (toList!4398 List!15780)) )
))
(declare-fun lt!371862 () ListLongMap!8765)

(declare-fun minValue!754 () V!24901)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2511 (array!45996 array!45998 (_ BitVec 32) (_ BitVec 32) V!24901 V!24901 (_ BitVec 32) Int) ListLongMap!8765)

(assert (=> b!824465 (= lt!371862 (getCurrentListMap!2511 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824466 () Bool)

(assert (=> b!824466 (= e!458765 (not e!458762))))

(declare-fun res!562205 () Bool)

(assert (=> b!824466 (=> res!562205 e!458762)))

(assert (=> b!824466 (= res!562205 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!371860 () ListLongMap!8765)

(declare-fun lt!371863 () ListLongMap!8765)

(assert (=> b!824466 (= lt!371860 lt!371863)))

(declare-fun zeroValueAfter!34 () V!24901)

(declare-datatypes ((Unit!28240 0))(
  ( (Unit!28241) )
))
(declare-fun lt!371861 () Unit!28240)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!535 (array!45996 array!45998 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24901 V!24901 V!24901 V!24901 (_ BitVec 32) Int) Unit!28240)

(assert (=> b!824466 (= lt!371861 (lemmaNoChangeToArrayThenSameMapNoExtras!535 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2419 (array!45996 array!45998 (_ BitVec 32) (_ BitVec 32) V!24901 V!24901 (_ BitVec 32) Int) ListLongMap!8765)

(assert (=> b!824466 (= lt!371863 (getCurrentListMapNoExtraKeys!2419 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824466 (= lt!371860 (getCurrentListMapNoExtraKeys!2419 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!24007 () Bool)

(declare-fun tp!46399 () Bool)

(assert (=> mapNonEmpty!24007 (= mapRes!24007 (and tp!46399 e!458766))))

(declare-fun mapValue!24007 () ValueCell!7047)

(declare-fun mapKey!24007 () (_ BitVec 32))

(declare-fun mapRest!24007 () (Array (_ BitVec 32) ValueCell!7047))

(assert (=> mapNonEmpty!24007 (= (arr!22042 _values!788) (store mapRest!24007 mapKey!24007 mapValue!24007))))

(declare-fun b!824467 () Bool)

(assert (=> b!824467 (= e!458767 (and e!458763 mapRes!24007))))

(declare-fun condMapEmpty!24007 () Bool)

(declare-fun mapDefault!24007 () ValueCell!7047)

(assert (=> b!824467 (= condMapEmpty!24007 (= (arr!22042 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7047)) mapDefault!24007)))))

(declare-fun b!824468 () Bool)

(declare-fun res!562208 () Bool)

(assert (=> b!824468 (=> (not res!562208) (not e!458765))))

(declare-datatypes ((List!15781 0))(
  ( (Nil!15778) (Cons!15777 (h!16906 (_ BitVec 64)) (t!22132 List!15781)) )
))
(declare-fun arrayNoDuplicates!0 (array!45996 (_ BitVec 32) List!15781) Bool)

(assert (=> b!824468 (= res!562208 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15778))))

(assert (= (and start!71036 res!562207) b!824462))

(assert (= (and b!824462 res!562206) b!824464))

(assert (= (and b!824464 res!562204) b!824468))

(assert (= (and b!824468 res!562208) b!824466))

(assert (= (and b!824466 (not res!562205)) b!824465))

(assert (= (and b!824467 condMapEmpty!24007) mapIsEmpty!24007))

(assert (= (and b!824467 (not condMapEmpty!24007)) mapNonEmpty!24007))

(get-info :version)

(assert (= (and mapNonEmpty!24007 ((_ is ValueCellFull!7047) mapValue!24007)) b!824463))

(assert (= (and b!824467 ((_ is ValueCellFull!7047) mapDefault!24007)) b!824461))

(assert (= start!71036 b!824467))

(declare-fun m!766611 () Bool)

(assert (=> mapNonEmpty!24007 m!766611))

(declare-fun m!766613 () Bool)

(assert (=> b!824465 m!766613))

(declare-fun m!766615 () Bool)

(assert (=> b!824464 m!766615))

(declare-fun m!766617 () Bool)

(assert (=> start!71036 m!766617))

(declare-fun m!766619 () Bool)

(assert (=> start!71036 m!766619))

(declare-fun m!766621 () Bool)

(assert (=> start!71036 m!766621))

(declare-fun m!766623 () Bool)

(assert (=> b!824466 m!766623))

(declare-fun m!766625 () Bool)

(assert (=> b!824466 m!766625))

(declare-fun m!766627 () Bool)

(assert (=> b!824466 m!766627))

(declare-fun m!766629 () Bool)

(assert (=> b!824468 m!766629))

(check-sat (not b!824465) b_and!22137 (not b!824468) (not start!71036) tp_is_empty!14925 (not mapNonEmpty!24007) (not b!824466) (not b!824464) (not b_next!13215))
(check-sat b_and!22137 (not b_next!13215))
