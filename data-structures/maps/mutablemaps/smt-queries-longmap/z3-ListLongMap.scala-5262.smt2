; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70732 () Bool)

(assert start!70732)

(declare-fun b_free!12981 () Bool)

(declare-fun b_next!12981 () Bool)

(assert (=> start!70732 (= b_free!12981 (not b_next!12981))))

(declare-fun tp!45685 () Bool)

(declare-fun b_and!21861 () Bool)

(assert (=> start!70732 (= tp!45685 b_and!21861)))

(declare-fun b!821130 () Bool)

(declare-fun res!560278 () Bool)

(declare-fun e!456354 () Bool)

(assert (=> b!821130 (=> (not res!560278) (not e!456354))))

(declare-datatypes ((array!45540 0))(
  ( (array!45541 (arr!21817 (Array (_ BitVec 32) (_ BitVec 64))) (size!22238 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45540)

(declare-datatypes ((List!15605 0))(
  ( (Nil!15602) (Cons!15601 (h!16730 (_ BitVec 64)) (t!21948 List!15605)) )
))
(declare-fun arrayNoDuplicates!0 (array!45540 (_ BitVec 32) List!15605) Bool)

(assert (=> b!821130 (= res!560278 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15602))))

(declare-fun res!560275 () Bool)

(assert (=> start!70732 (=> (not res!560275) (not e!456354))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70732 (= res!560275 (validMask!0 mask!1312))))

(assert (=> start!70732 e!456354))

(declare-fun tp_is_empty!14691 () Bool)

(assert (=> start!70732 tp_is_empty!14691))

(declare-fun array_inv!17403 (array!45540) Bool)

(assert (=> start!70732 (array_inv!17403 _keys!976)))

(assert (=> start!70732 true))

(declare-datatypes ((V!24589 0))(
  ( (V!24590 (val!7393 Int)) )
))
(declare-datatypes ((ValueCell!6930 0))(
  ( (ValueCellFull!6930 (v!9820 V!24589)) (EmptyCell!6930) )
))
(declare-datatypes ((array!45542 0))(
  ( (array!45543 (arr!21818 (Array (_ BitVec 32) ValueCell!6930)) (size!22239 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45542)

(declare-fun e!456358 () Bool)

(declare-fun array_inv!17404 (array!45542) Bool)

(assert (=> start!70732 (and (array_inv!17404 _values!788) e!456358)))

(assert (=> start!70732 tp!45685))

(declare-fun mapNonEmpty!23644 () Bool)

(declare-fun mapRes!23644 () Bool)

(declare-fun tp!45684 () Bool)

(declare-fun e!456355 () Bool)

(assert (=> mapNonEmpty!23644 (= mapRes!23644 (and tp!45684 e!456355))))

(declare-fun mapRest!23644 () (Array (_ BitVec 32) ValueCell!6930))

(declare-fun mapKey!23644 () (_ BitVec 32))

(declare-fun mapValue!23644 () ValueCell!6930)

(assert (=> mapNonEmpty!23644 (= (arr!21818 _values!788) (store mapRest!23644 mapKey!23644 mapValue!23644))))

(declare-fun b!821131 () Bool)

(declare-fun res!560276 () Bool)

(assert (=> b!821131 (=> (not res!560276) (not e!456354))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!821131 (= res!560276 (and (= (size!22239 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22238 _keys!976) (size!22239 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!821132 () Bool)

(declare-fun e!456356 () Bool)

(assert (=> b!821132 (= e!456354 (not e!456356))))

(declare-fun res!560274 () Bool)

(assert (=> b!821132 (=> res!560274 e!456356)))

(assert (=> b!821132 (= res!560274 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9744 0))(
  ( (tuple2!9745 (_1!4882 (_ BitVec 64)) (_2!4882 V!24589)) )
))
(declare-datatypes ((List!15606 0))(
  ( (Nil!15603) (Cons!15602 (h!16731 tuple2!9744) (t!21949 List!15606)) )
))
(declare-datatypes ((ListLongMap!8581 0))(
  ( (ListLongMap!8582 (toList!4306 List!15606)) )
))
(declare-fun lt!369094 () ListLongMap!8581)

(declare-fun lt!369093 () ListLongMap!8581)

(assert (=> b!821132 (= lt!369094 lt!369093)))

(declare-fun zeroValueBefore!34 () V!24589)

(declare-fun minValue!754 () V!24589)

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueAfter!34 () V!24589)

(declare-datatypes ((Unit!28063 0))(
  ( (Unit!28064) )
))
(declare-fun lt!369091 () Unit!28063)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!455 (array!45540 array!45542 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24589 V!24589 V!24589 V!24589 (_ BitVec 32) Int) Unit!28063)

(assert (=> b!821132 (= lt!369091 (lemmaNoChangeToArrayThenSameMapNoExtras!455 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2339 (array!45540 array!45542 (_ BitVec 32) (_ BitVec 32) V!24589 V!24589 (_ BitVec 32) Int) ListLongMap!8581)

(assert (=> b!821132 (= lt!369093 (getCurrentListMapNoExtraKeys!2339 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821132 (= lt!369094 (getCurrentListMapNoExtraKeys!2339 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821133 () Bool)

(declare-fun e!456353 () Bool)

(assert (=> b!821133 (= e!456358 (and e!456353 mapRes!23644))))

(declare-fun condMapEmpty!23644 () Bool)

(declare-fun mapDefault!23644 () ValueCell!6930)

(assert (=> b!821133 (= condMapEmpty!23644 (= (arr!21818 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6930)) mapDefault!23644)))))

(declare-fun b!821134 () Bool)

(declare-fun res!560277 () Bool)

(assert (=> b!821134 (=> (not res!560277) (not e!456354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45540 (_ BitVec 32)) Bool)

(assert (=> b!821134 (= res!560277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23644 () Bool)

(assert (=> mapIsEmpty!23644 mapRes!23644))

(declare-fun b!821135 () Bool)

(assert (=> b!821135 (= e!456353 tp_is_empty!14691)))

(declare-fun b!821136 () Bool)

(assert (=> b!821136 (= e!456356 true)))

(declare-fun lt!369092 () ListLongMap!8581)

(declare-fun getCurrentListMap!2441 (array!45540 array!45542 (_ BitVec 32) (_ BitVec 32) V!24589 V!24589 (_ BitVec 32) Int) ListLongMap!8581)

(assert (=> b!821136 (= lt!369092 (getCurrentListMap!2441 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821137 () Bool)

(assert (=> b!821137 (= e!456355 tp_is_empty!14691)))

(assert (= (and start!70732 res!560275) b!821131))

(assert (= (and b!821131 res!560276) b!821134))

(assert (= (and b!821134 res!560277) b!821130))

(assert (= (and b!821130 res!560278) b!821132))

(assert (= (and b!821132 (not res!560274)) b!821136))

(assert (= (and b!821133 condMapEmpty!23644) mapIsEmpty!23644))

(assert (= (and b!821133 (not condMapEmpty!23644)) mapNonEmpty!23644))

(get-info :version)

(assert (= (and mapNonEmpty!23644 ((_ is ValueCellFull!6930) mapValue!23644)) b!821137))

(assert (= (and b!821133 ((_ is ValueCellFull!6930) mapDefault!23644)) b!821135))

(assert (= start!70732 b!821133))

(declare-fun m!763043 () Bool)

(assert (=> b!821132 m!763043))

(declare-fun m!763045 () Bool)

(assert (=> b!821132 m!763045))

(declare-fun m!763047 () Bool)

(assert (=> b!821132 m!763047))

(declare-fun m!763049 () Bool)

(assert (=> start!70732 m!763049))

(declare-fun m!763051 () Bool)

(assert (=> start!70732 m!763051))

(declare-fun m!763053 () Bool)

(assert (=> start!70732 m!763053))

(declare-fun m!763055 () Bool)

(assert (=> b!821136 m!763055))

(declare-fun m!763057 () Bool)

(assert (=> b!821130 m!763057))

(declare-fun m!763059 () Bool)

(assert (=> mapNonEmpty!23644 m!763059))

(declare-fun m!763061 () Bool)

(assert (=> b!821134 m!763061))

(check-sat (not b!821132) (not mapNonEmpty!23644) (not b!821130) (not b!821136) (not b_next!12981) b_and!21861 tp_is_empty!14691 (not start!70732) (not b!821134))
(check-sat b_and!21861 (not b_next!12981))
