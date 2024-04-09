; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70092 () Bool)

(assert start!70092)

(declare-fun b_free!12489 () Bool)

(declare-fun b_next!12489 () Bool)

(assert (=> start!70092 (= b_free!12489 (not b_next!12489))))

(declare-fun tp!44182 () Bool)

(declare-fun b_and!21279 () Bool)

(assert (=> start!70092 (= tp!44182 b_and!21279)))

(declare-fun b!814130 () Bool)

(declare-fun res!556204 () Bool)

(declare-fun e!451295 () Bool)

(assert (=> b!814130 (=> (not res!556204) (not e!451295))))

(declare-datatypes ((array!44586 0))(
  ( (array!44587 (arr!21349 (Array (_ BitVec 32) (_ BitVec 64))) (size!21770 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44586)

(declare-datatypes ((List!15246 0))(
  ( (Nil!15243) (Cons!15242 (h!16371 (_ BitVec 64)) (t!21571 List!15246)) )
))
(declare-fun arrayNoDuplicates!0 (array!44586 (_ BitVec 32) List!15246) Bool)

(assert (=> b!814130 (= res!556204 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15243))))

(declare-fun mapIsEmpty!22879 () Bool)

(declare-fun mapRes!22879 () Bool)

(assert (=> mapIsEmpty!22879 mapRes!22879))

(declare-fun res!556203 () Bool)

(assert (=> start!70092 (=> (not res!556203) (not e!451295))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70092 (= res!556203 (validMask!0 mask!1312))))

(assert (=> start!70092 e!451295))

(declare-fun tp_is_empty!14199 () Bool)

(assert (=> start!70092 tp_is_empty!14199))

(declare-fun array_inv!17063 (array!44586) Bool)

(assert (=> start!70092 (array_inv!17063 _keys!976)))

(assert (=> start!70092 true))

(declare-datatypes ((V!23933 0))(
  ( (V!23934 (val!7147 Int)) )
))
(declare-datatypes ((ValueCell!6684 0))(
  ( (ValueCellFull!6684 (v!9570 V!23933)) (EmptyCell!6684) )
))
(declare-datatypes ((array!44588 0))(
  ( (array!44589 (arr!21350 (Array (_ BitVec 32) ValueCell!6684)) (size!21771 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44588)

(declare-fun e!451292 () Bool)

(declare-fun array_inv!17064 (array!44588) Bool)

(assert (=> start!70092 (and (array_inv!17064 _values!788) e!451292)))

(assert (=> start!70092 tp!44182))

(declare-fun b!814131 () Bool)

(declare-fun e!451291 () Bool)

(assert (=> b!814131 (= e!451291 tp_is_empty!14199)))

(declare-fun b!814132 () Bool)

(declare-fun e!451294 () Bool)

(assert (=> b!814132 (= e!451294 tp_is_empty!14199)))

(declare-fun b!814133 () Bool)

(assert (=> b!814133 (= e!451292 (and e!451291 mapRes!22879))))

(declare-fun condMapEmpty!22879 () Bool)

(declare-fun mapDefault!22879 () ValueCell!6684)

(assert (=> b!814133 (= condMapEmpty!22879 (= (arr!21350 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6684)) mapDefault!22879)))))

(declare-fun mapNonEmpty!22879 () Bool)

(declare-fun tp!44181 () Bool)

(assert (=> mapNonEmpty!22879 (= mapRes!22879 (and tp!44181 e!451294))))

(declare-fun mapRest!22879 () (Array (_ BitVec 32) ValueCell!6684))

(declare-fun mapKey!22879 () (_ BitVec 32))

(declare-fun mapValue!22879 () ValueCell!6684)

(assert (=> mapNonEmpty!22879 (= (arr!21350 _values!788) (store mapRest!22879 mapKey!22879 mapValue!22879))))

(declare-fun b!814134 () Bool)

(declare-fun res!556205 () Bool)

(assert (=> b!814134 (=> (not res!556205) (not e!451295))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44586 (_ BitVec 32)) Bool)

(assert (=> b!814134 (= res!556205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814135 () Bool)

(assert (=> b!814135 (= e!451295 (not true))))

(declare-datatypes ((tuple2!9372 0))(
  ( (tuple2!9373 (_1!4696 (_ BitVec 64)) (_2!4696 V!23933)) )
))
(declare-datatypes ((List!15247 0))(
  ( (Nil!15244) (Cons!15243 (h!16372 tuple2!9372) (t!21572 List!15247)) )
))
(declare-datatypes ((ListLongMap!8209 0))(
  ( (ListLongMap!8210 (toList!4120 List!15247)) )
))
(declare-fun lt!364499 () ListLongMap!8209)

(declare-fun lt!364497 () ListLongMap!8209)

(assert (=> b!814135 (= lt!364499 lt!364497)))

(declare-fun zeroValueBefore!34 () V!23933)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!23933)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27696 0))(
  ( (Unit!27697) )
))
(declare-fun lt!364498 () Unit!27696)

(declare-fun defaultEntry!796 () Int)

(declare-fun minValue!754 () V!23933)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!285 (array!44586 array!44588 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23933 V!23933 V!23933 V!23933 (_ BitVec 32) Int) Unit!27696)

(assert (=> b!814135 (= lt!364498 (lemmaNoChangeToArrayThenSameMapNoExtras!285 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2169 (array!44586 array!44588 (_ BitVec 32) (_ BitVec 32) V!23933 V!23933 (_ BitVec 32) Int) ListLongMap!8209)

(assert (=> b!814135 (= lt!364497 (getCurrentListMapNoExtraKeys!2169 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814135 (= lt!364499 (getCurrentListMapNoExtraKeys!2169 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814136 () Bool)

(declare-fun res!556202 () Bool)

(assert (=> b!814136 (=> (not res!556202) (not e!451295))))

(assert (=> b!814136 (= res!556202 (and (= (size!21771 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21770 _keys!976) (size!21771 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!70092 res!556203) b!814136))

(assert (= (and b!814136 res!556202) b!814134))

(assert (= (and b!814134 res!556205) b!814130))

(assert (= (and b!814130 res!556204) b!814135))

(assert (= (and b!814133 condMapEmpty!22879) mapIsEmpty!22879))

(assert (= (and b!814133 (not condMapEmpty!22879)) mapNonEmpty!22879))

(get-info :version)

(assert (= (and mapNonEmpty!22879 ((_ is ValueCellFull!6684) mapValue!22879)) b!814132))

(assert (= (and b!814133 ((_ is ValueCellFull!6684) mapDefault!22879)) b!814131))

(assert (= start!70092 b!814133))

(declare-fun m!756059 () Bool)

(assert (=> b!814130 m!756059))

(declare-fun m!756061 () Bool)

(assert (=> start!70092 m!756061))

(declare-fun m!756063 () Bool)

(assert (=> start!70092 m!756063))

(declare-fun m!756065 () Bool)

(assert (=> start!70092 m!756065))

(declare-fun m!756067 () Bool)

(assert (=> b!814134 m!756067))

(declare-fun m!756069 () Bool)

(assert (=> mapNonEmpty!22879 m!756069))

(declare-fun m!756071 () Bool)

(assert (=> b!814135 m!756071))

(declare-fun m!756073 () Bool)

(assert (=> b!814135 m!756073))

(declare-fun m!756075 () Bool)

(assert (=> b!814135 m!756075))

(check-sat (not b!814135) (not b_next!12489) (not b!814130) tp_is_empty!14199 (not b!814134) b_and!21279 (not mapNonEmpty!22879) (not start!70092))
(check-sat b_and!21279 (not b_next!12489))
