; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70384 () Bool)

(assert start!70384)

(declare-fun b_free!12717 () Bool)

(declare-fun b_next!12717 () Bool)

(assert (=> start!70384 (= b_free!12717 (not b_next!12717))))

(declare-fun tp!44877 () Bool)

(declare-fun b_and!21547 () Bool)

(assert (=> start!70384 (= tp!44877 b_and!21547)))

(declare-fun b!817224 () Bool)

(declare-fun res!557961 () Bool)

(declare-fun e!453493 () Bool)

(assert (=> b!817224 (=> (not res!557961) (not e!453493))))

(declare-datatypes ((array!45028 0))(
  ( (array!45029 (arr!21566 (Array (_ BitVec 32) (_ BitVec 64))) (size!21987 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45028)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45028 (_ BitVec 32)) Bool)

(assert (=> b!817224 (= res!557961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817225 () Bool)

(declare-fun e!453496 () Bool)

(declare-fun tp_is_empty!14427 () Bool)

(assert (=> b!817225 (= e!453496 tp_is_empty!14427)))

(declare-fun b!817226 () Bool)

(declare-fun e!453494 () Bool)

(assert (=> b!817226 (= e!453494 tp_is_empty!14427)))

(declare-fun b!817227 () Bool)

(declare-fun e!453495 () Bool)

(declare-fun mapRes!23233 () Bool)

(assert (=> b!817227 (= e!453495 (and e!453494 mapRes!23233))))

(declare-fun condMapEmpty!23233 () Bool)

(declare-datatypes ((V!24237 0))(
  ( (V!24238 (val!7261 Int)) )
))
(declare-datatypes ((ValueCell!6798 0))(
  ( (ValueCellFull!6798 (v!9686 V!24237)) (EmptyCell!6798) )
))
(declare-datatypes ((array!45030 0))(
  ( (array!45031 (arr!21567 (Array (_ BitVec 32) ValueCell!6798)) (size!21988 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45030)

(declare-fun mapDefault!23233 () ValueCell!6798)

(assert (=> b!817227 (= condMapEmpty!23233 (= (arr!21567 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6798)) mapDefault!23233)))))

(declare-fun b!817228 () Bool)

(declare-fun res!557958 () Bool)

(assert (=> b!817228 (=> (not res!557958) (not e!453493))))

(declare-datatypes ((List!15415 0))(
  ( (Nil!15412) (Cons!15411 (h!16540 (_ BitVec 64)) (t!21748 List!15415)) )
))
(declare-fun arrayNoDuplicates!0 (array!45028 (_ BitVec 32) List!15415) Bool)

(assert (=> b!817228 (= res!557958 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15412))))

(declare-fun res!557959 () Bool)

(assert (=> start!70384 (=> (not res!557959) (not e!453493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70384 (= res!557959 (validMask!0 mask!1312))))

(assert (=> start!70384 e!453493))

(assert (=> start!70384 tp_is_empty!14427))

(declare-fun array_inv!17227 (array!45028) Bool)

(assert (=> start!70384 (array_inv!17227 _keys!976)))

(assert (=> start!70384 true))

(declare-fun array_inv!17228 (array!45030) Bool)

(assert (=> start!70384 (and (array_inv!17228 _values!788) e!453495)))

(assert (=> start!70384 tp!44877))

(declare-fun b!817229 () Bool)

(assert (=> b!817229 (= e!453493 (not true))))

(declare-datatypes ((tuple2!9546 0))(
  ( (tuple2!9547 (_1!4783 (_ BitVec 64)) (_2!4783 V!24237)) )
))
(declare-datatypes ((List!15416 0))(
  ( (Nil!15413) (Cons!15412 (h!16541 tuple2!9546) (t!21749 List!15416)) )
))
(declare-datatypes ((ListLongMap!8383 0))(
  ( (ListLongMap!8384 (toList!4207 List!15416)) )
))
(declare-fun lt!366173 () ListLongMap!8383)

(declare-fun lt!366171 () ListLongMap!8383)

(assert (=> b!817229 (= lt!366173 lt!366171)))

(declare-fun zeroValueBefore!34 () V!24237)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24237)

(declare-fun minValue!754 () V!24237)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27868 0))(
  ( (Unit!27869) )
))
(declare-fun lt!366172 () Unit!27868)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!369 (array!45028 array!45030 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24237 V!24237 V!24237 V!24237 (_ BitVec 32) Int) Unit!27868)

(assert (=> b!817229 (= lt!366172 (lemmaNoChangeToArrayThenSameMapNoExtras!369 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2253 (array!45028 array!45030 (_ BitVec 32) (_ BitVec 32) V!24237 V!24237 (_ BitVec 32) Int) ListLongMap!8383)

(assert (=> b!817229 (= lt!366171 (getCurrentListMapNoExtraKeys!2253 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817229 (= lt!366173 (getCurrentListMapNoExtraKeys!2253 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817230 () Bool)

(declare-fun res!557960 () Bool)

(assert (=> b!817230 (=> (not res!557960) (not e!453493))))

(assert (=> b!817230 (= res!557960 (and (= (size!21988 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21987 _keys!976) (size!21988 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!23233 () Bool)

(declare-fun tp!44878 () Bool)

(assert (=> mapNonEmpty!23233 (= mapRes!23233 (and tp!44878 e!453496))))

(declare-fun mapRest!23233 () (Array (_ BitVec 32) ValueCell!6798))

(declare-fun mapKey!23233 () (_ BitVec 32))

(declare-fun mapValue!23233 () ValueCell!6798)

(assert (=> mapNonEmpty!23233 (= (arr!21567 _values!788) (store mapRest!23233 mapKey!23233 mapValue!23233))))

(declare-fun mapIsEmpty!23233 () Bool)

(assert (=> mapIsEmpty!23233 mapRes!23233))

(assert (= (and start!70384 res!557959) b!817230))

(assert (= (and b!817230 res!557960) b!817224))

(assert (= (and b!817224 res!557961) b!817228))

(assert (= (and b!817228 res!557958) b!817229))

(assert (= (and b!817227 condMapEmpty!23233) mapIsEmpty!23233))

(assert (= (and b!817227 (not condMapEmpty!23233)) mapNonEmpty!23233))

(get-info :version)

(assert (= (and mapNonEmpty!23233 ((_ is ValueCellFull!6798) mapValue!23233)) b!817225))

(assert (= (and b!817227 ((_ is ValueCellFull!6798) mapDefault!23233)) b!817226))

(assert (= start!70384 b!817227))

(declare-fun m!758907 () Bool)

(assert (=> b!817228 m!758907))

(declare-fun m!758909 () Bool)

(assert (=> start!70384 m!758909))

(declare-fun m!758911 () Bool)

(assert (=> start!70384 m!758911))

(declare-fun m!758913 () Bool)

(assert (=> start!70384 m!758913))

(declare-fun m!758915 () Bool)

(assert (=> mapNonEmpty!23233 m!758915))

(declare-fun m!758917 () Bool)

(assert (=> b!817224 m!758917))

(declare-fun m!758919 () Bool)

(assert (=> b!817229 m!758919))

(declare-fun m!758921 () Bool)

(assert (=> b!817229 m!758921))

(declare-fun m!758923 () Bool)

(assert (=> b!817229 m!758923))

(check-sat tp_is_empty!14427 (not b!817228) (not b_next!12717) (not b!817224) (not start!70384) b_and!21547 (not b!817229) (not mapNonEmpty!23233))
(check-sat b_and!21547 (not b_next!12717))
