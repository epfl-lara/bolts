; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70762 () Bool)

(assert start!70762)

(declare-fun b_free!13011 () Bool)

(declare-fun b_next!13011 () Bool)

(assert (=> start!70762 (= b_free!13011 (not b_next!13011))))

(declare-fun tp!45775 () Bool)

(declare-fun b_and!21891 () Bool)

(assert (=> start!70762 (= tp!45775 b_and!21891)))

(declare-fun b!821490 () Bool)

(declare-fun res!560501 () Bool)

(declare-fun e!456628 () Bool)

(assert (=> b!821490 (=> (not res!560501) (not e!456628))))

(declare-datatypes ((array!45598 0))(
  ( (array!45599 (arr!21846 (Array (_ BitVec 32) (_ BitVec 64))) (size!22267 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45598)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45598 (_ BitVec 32)) Bool)

(assert (=> b!821490 (= res!560501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!560499 () Bool)

(assert (=> start!70762 (=> (not res!560499) (not e!456628))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70762 (= res!560499 (validMask!0 mask!1312))))

(assert (=> start!70762 e!456628))

(declare-fun tp_is_empty!14721 () Bool)

(assert (=> start!70762 tp_is_empty!14721))

(declare-fun array_inv!17425 (array!45598) Bool)

(assert (=> start!70762 (array_inv!17425 _keys!976)))

(assert (=> start!70762 true))

(declare-datatypes ((V!24629 0))(
  ( (V!24630 (val!7408 Int)) )
))
(declare-datatypes ((ValueCell!6945 0))(
  ( (ValueCellFull!6945 (v!9835 V!24629)) (EmptyCell!6945) )
))
(declare-datatypes ((array!45600 0))(
  ( (array!45601 (arr!21847 (Array (_ BitVec 32) ValueCell!6945)) (size!22268 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45600)

(declare-fun e!456626 () Bool)

(declare-fun array_inv!17426 (array!45600) Bool)

(assert (=> start!70762 (and (array_inv!17426 _values!788) e!456626)))

(assert (=> start!70762 tp!45775))

(declare-fun b!821491 () Bool)

(declare-fun e!456623 () Bool)

(assert (=> b!821491 (= e!456623 true)))

(declare-fun zeroValueBefore!34 () V!24629)

(declare-fun minValue!754 () V!24629)

(declare-fun defaultEntry!796 () Int)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((tuple2!9772 0))(
  ( (tuple2!9773 (_1!4896 (_ BitVec 64)) (_2!4896 V!24629)) )
))
(declare-datatypes ((List!15632 0))(
  ( (Nil!15629) (Cons!15628 (h!16757 tuple2!9772) (t!21975 List!15632)) )
))
(declare-datatypes ((ListLongMap!8609 0))(
  ( (ListLongMap!8610 (toList!4320 List!15632)) )
))
(declare-fun lt!369273 () ListLongMap!8609)

(declare-fun getCurrentListMap!2455 (array!45598 array!45600 (_ BitVec 32) (_ BitVec 32) V!24629 V!24629 (_ BitVec 32) Int) ListLongMap!8609)

(assert (=> b!821491 (= lt!369273 (getCurrentListMap!2455 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821492 () Bool)

(declare-fun e!456627 () Bool)

(assert (=> b!821492 (= e!456627 tp_is_empty!14721)))

(declare-fun mapIsEmpty!23689 () Bool)

(declare-fun mapRes!23689 () Bool)

(assert (=> mapIsEmpty!23689 mapRes!23689))

(declare-fun b!821493 () Bool)

(declare-fun e!456624 () Bool)

(assert (=> b!821493 (= e!456624 tp_is_empty!14721)))

(declare-fun b!821494 () Bool)

(assert (=> b!821494 (= e!456628 (not e!456623))))

(declare-fun res!560500 () Bool)

(assert (=> b!821494 (=> res!560500 e!456623)))

(assert (=> b!821494 (= res!560500 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!369272 () ListLongMap!8609)

(declare-fun lt!369271 () ListLongMap!8609)

(assert (=> b!821494 (= lt!369272 lt!369271)))

(declare-fun zeroValueAfter!34 () V!24629)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28083 0))(
  ( (Unit!28084) )
))
(declare-fun lt!369274 () Unit!28083)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!465 (array!45598 array!45600 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24629 V!24629 V!24629 V!24629 (_ BitVec 32) Int) Unit!28083)

(assert (=> b!821494 (= lt!369274 (lemmaNoChangeToArrayThenSameMapNoExtras!465 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2349 (array!45598 array!45600 (_ BitVec 32) (_ BitVec 32) V!24629 V!24629 (_ BitVec 32) Int) ListLongMap!8609)

(assert (=> b!821494 (= lt!369271 (getCurrentListMapNoExtraKeys!2349 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821494 (= lt!369272 (getCurrentListMapNoExtraKeys!2349 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821495 () Bool)

(assert (=> b!821495 (= e!456626 (and e!456624 mapRes!23689))))

(declare-fun condMapEmpty!23689 () Bool)

(declare-fun mapDefault!23689 () ValueCell!6945)

(assert (=> b!821495 (= condMapEmpty!23689 (= (arr!21847 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6945)) mapDefault!23689)))))

(declare-fun b!821496 () Bool)

(declare-fun res!560502 () Bool)

(assert (=> b!821496 (=> (not res!560502) (not e!456628))))

(declare-datatypes ((List!15633 0))(
  ( (Nil!15630) (Cons!15629 (h!16758 (_ BitVec 64)) (t!21976 List!15633)) )
))
(declare-fun arrayNoDuplicates!0 (array!45598 (_ BitVec 32) List!15633) Bool)

(assert (=> b!821496 (= res!560502 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15630))))

(declare-fun mapNonEmpty!23689 () Bool)

(declare-fun tp!45774 () Bool)

(assert (=> mapNonEmpty!23689 (= mapRes!23689 (and tp!45774 e!456627))))

(declare-fun mapRest!23689 () (Array (_ BitVec 32) ValueCell!6945))

(declare-fun mapValue!23689 () ValueCell!6945)

(declare-fun mapKey!23689 () (_ BitVec 32))

(assert (=> mapNonEmpty!23689 (= (arr!21847 _values!788) (store mapRest!23689 mapKey!23689 mapValue!23689))))

(declare-fun b!821497 () Bool)

(declare-fun res!560503 () Bool)

(assert (=> b!821497 (=> (not res!560503) (not e!456628))))

(assert (=> b!821497 (= res!560503 (and (= (size!22268 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22267 _keys!976) (size!22268 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!70762 res!560499) b!821497))

(assert (= (and b!821497 res!560503) b!821490))

(assert (= (and b!821490 res!560501) b!821496))

(assert (= (and b!821496 res!560502) b!821494))

(assert (= (and b!821494 (not res!560500)) b!821491))

(assert (= (and b!821495 condMapEmpty!23689) mapIsEmpty!23689))

(assert (= (and b!821495 (not condMapEmpty!23689)) mapNonEmpty!23689))

(get-info :version)

(assert (= (and mapNonEmpty!23689 ((_ is ValueCellFull!6945) mapValue!23689)) b!821492))

(assert (= (and b!821495 ((_ is ValueCellFull!6945) mapDefault!23689)) b!821493))

(assert (= start!70762 b!821495))

(declare-fun m!763343 () Bool)

(assert (=> b!821494 m!763343))

(declare-fun m!763345 () Bool)

(assert (=> b!821494 m!763345))

(declare-fun m!763347 () Bool)

(assert (=> b!821494 m!763347))

(declare-fun m!763349 () Bool)

(assert (=> start!70762 m!763349))

(declare-fun m!763351 () Bool)

(assert (=> start!70762 m!763351))

(declare-fun m!763353 () Bool)

(assert (=> start!70762 m!763353))

(declare-fun m!763355 () Bool)

(assert (=> mapNonEmpty!23689 m!763355))

(declare-fun m!763357 () Bool)

(assert (=> b!821496 m!763357))

(declare-fun m!763359 () Bool)

(assert (=> b!821491 m!763359))

(declare-fun m!763361 () Bool)

(assert (=> b!821490 m!763361))

(check-sat (not mapNonEmpty!23689) (not b_next!13011) (not b!821491) (not b!821496) (not b!821490) (not start!70762) (not b!821494) b_and!21891 tp_is_empty!14721)
(check-sat b_and!21891 (not b_next!13011))
