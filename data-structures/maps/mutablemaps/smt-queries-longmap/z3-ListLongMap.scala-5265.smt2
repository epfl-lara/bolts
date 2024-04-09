; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70750 () Bool)

(assert start!70750)

(declare-fun b_free!12999 () Bool)

(declare-fun b_next!12999 () Bool)

(assert (=> start!70750 (= b_free!12999 (not b_next!12999))))

(declare-fun tp!45738 () Bool)

(declare-fun b_and!21879 () Bool)

(assert (=> start!70750 (= tp!45738 b_and!21879)))

(declare-fun mapNonEmpty!23671 () Bool)

(declare-fun mapRes!23671 () Bool)

(declare-fun tp!45739 () Bool)

(declare-fun e!456515 () Bool)

(assert (=> mapNonEmpty!23671 (= mapRes!23671 (and tp!45739 e!456515))))

(declare-fun mapKey!23671 () (_ BitVec 32))

(declare-datatypes ((V!24613 0))(
  ( (V!24614 (val!7402 Int)) )
))
(declare-datatypes ((ValueCell!6939 0))(
  ( (ValueCellFull!6939 (v!9829 V!24613)) (EmptyCell!6939) )
))
(declare-fun mapRest!23671 () (Array (_ BitVec 32) ValueCell!6939))

(declare-fun mapValue!23671 () ValueCell!6939)

(declare-datatypes ((array!45574 0))(
  ( (array!45575 (arr!21834 (Array (_ BitVec 32) ValueCell!6939)) (size!22255 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45574)

(assert (=> mapNonEmpty!23671 (= (arr!21834 _values!788) (store mapRest!23671 mapKey!23671 mapValue!23671))))

(declare-fun b!821346 () Bool)

(declare-fun res!560412 () Bool)

(declare-fun e!456518 () Bool)

(assert (=> b!821346 (=> (not res!560412) (not e!456518))))

(declare-datatypes ((array!45576 0))(
  ( (array!45577 (arr!21835 (Array (_ BitVec 32) (_ BitVec 64))) (size!22256 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45576)

(declare-datatypes ((List!15620 0))(
  ( (Nil!15617) (Cons!15616 (h!16745 (_ BitVec 64)) (t!21963 List!15620)) )
))
(declare-fun arrayNoDuplicates!0 (array!45576 (_ BitVec 32) List!15620) Bool)

(assert (=> b!821346 (= res!560412 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15617))))

(declare-fun b!821347 () Bool)

(declare-fun e!456519 () Bool)

(assert (=> b!821347 (= e!456519 true)))

(declare-fun zeroValueBefore!34 () V!24613)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24613)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9760 0))(
  ( (tuple2!9761 (_1!4890 (_ BitVec 64)) (_2!4890 V!24613)) )
))
(declare-datatypes ((List!15621 0))(
  ( (Nil!15618) (Cons!15617 (h!16746 tuple2!9760) (t!21964 List!15621)) )
))
(declare-datatypes ((ListLongMap!8597 0))(
  ( (ListLongMap!8598 (toList!4314 List!15621)) )
))
(declare-fun lt!369199 () ListLongMap!8597)

(declare-fun getCurrentListMap!2449 (array!45576 array!45574 (_ BitVec 32) (_ BitVec 32) V!24613 V!24613 (_ BitVec 32) Int) ListLongMap!8597)

(assert (=> b!821347 (= lt!369199 (getCurrentListMap!2449 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23671 () Bool)

(assert (=> mapIsEmpty!23671 mapRes!23671))

(declare-fun b!821348 () Bool)

(declare-fun res!560413 () Bool)

(assert (=> b!821348 (=> (not res!560413) (not e!456518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45576 (_ BitVec 32)) Bool)

(assert (=> b!821348 (= res!560413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!821349 () Bool)

(declare-fun e!456517 () Bool)

(declare-fun tp_is_empty!14709 () Bool)

(assert (=> b!821349 (= e!456517 tp_is_empty!14709)))

(declare-fun b!821350 () Bool)

(assert (=> b!821350 (= e!456515 tp_is_empty!14709)))

(declare-fun b!821351 () Bool)

(declare-fun e!456520 () Bool)

(assert (=> b!821351 (= e!456520 (and e!456517 mapRes!23671))))

(declare-fun condMapEmpty!23671 () Bool)

(declare-fun mapDefault!23671 () ValueCell!6939)

(assert (=> b!821351 (= condMapEmpty!23671 (= (arr!21834 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6939)) mapDefault!23671)))))

(declare-fun res!560409 () Bool)

(assert (=> start!70750 (=> (not res!560409) (not e!456518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70750 (= res!560409 (validMask!0 mask!1312))))

(assert (=> start!70750 e!456518))

(assert (=> start!70750 tp_is_empty!14709))

(declare-fun array_inv!17415 (array!45576) Bool)

(assert (=> start!70750 (array_inv!17415 _keys!976)))

(assert (=> start!70750 true))

(declare-fun array_inv!17416 (array!45574) Bool)

(assert (=> start!70750 (and (array_inv!17416 _values!788) e!456520)))

(assert (=> start!70750 tp!45738))

(declare-fun b!821352 () Bool)

(assert (=> b!821352 (= e!456518 (not e!456519))))

(declare-fun res!560410 () Bool)

(assert (=> b!821352 (=> res!560410 e!456519)))

(assert (=> b!821352 (= res!560410 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!369201 () ListLongMap!8597)

(declare-fun lt!369202 () ListLongMap!8597)

(assert (=> b!821352 (= lt!369201 lt!369202)))

(declare-fun zeroValueAfter!34 () V!24613)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28075 0))(
  ( (Unit!28076) )
))
(declare-fun lt!369200 () Unit!28075)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!461 (array!45576 array!45574 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24613 V!24613 V!24613 V!24613 (_ BitVec 32) Int) Unit!28075)

(assert (=> b!821352 (= lt!369200 (lemmaNoChangeToArrayThenSameMapNoExtras!461 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2345 (array!45576 array!45574 (_ BitVec 32) (_ BitVec 32) V!24613 V!24613 (_ BitVec 32) Int) ListLongMap!8597)

(assert (=> b!821352 (= lt!369202 (getCurrentListMapNoExtraKeys!2345 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821352 (= lt!369201 (getCurrentListMapNoExtraKeys!2345 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821353 () Bool)

(declare-fun res!560411 () Bool)

(assert (=> b!821353 (=> (not res!560411) (not e!456518))))

(assert (=> b!821353 (= res!560411 (and (= (size!22255 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22256 _keys!976) (size!22255 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!70750 res!560409) b!821353))

(assert (= (and b!821353 res!560411) b!821348))

(assert (= (and b!821348 res!560413) b!821346))

(assert (= (and b!821346 res!560412) b!821352))

(assert (= (and b!821352 (not res!560410)) b!821347))

(assert (= (and b!821351 condMapEmpty!23671) mapIsEmpty!23671))

(assert (= (and b!821351 (not condMapEmpty!23671)) mapNonEmpty!23671))

(get-info :version)

(assert (= (and mapNonEmpty!23671 ((_ is ValueCellFull!6939) mapValue!23671)) b!821350))

(assert (= (and b!821351 ((_ is ValueCellFull!6939) mapDefault!23671)) b!821349))

(assert (= start!70750 b!821351))

(declare-fun m!763223 () Bool)

(assert (=> mapNonEmpty!23671 m!763223))

(declare-fun m!763225 () Bool)

(assert (=> b!821352 m!763225))

(declare-fun m!763227 () Bool)

(assert (=> b!821352 m!763227))

(declare-fun m!763229 () Bool)

(assert (=> b!821352 m!763229))

(declare-fun m!763231 () Bool)

(assert (=> b!821347 m!763231))

(declare-fun m!763233 () Bool)

(assert (=> start!70750 m!763233))

(declare-fun m!763235 () Bool)

(assert (=> start!70750 m!763235))

(declare-fun m!763237 () Bool)

(assert (=> start!70750 m!763237))

(declare-fun m!763239 () Bool)

(assert (=> b!821348 m!763239))

(declare-fun m!763241 () Bool)

(assert (=> b!821346 m!763241))

(check-sat (not b!821347) (not start!70750) (not b_next!12999) (not b!821352) (not mapNonEmpty!23671) (not b!821348) b_and!21879 (not b!821346) tp_is_empty!14709)
(check-sat b_and!21879 (not b_next!12999))
