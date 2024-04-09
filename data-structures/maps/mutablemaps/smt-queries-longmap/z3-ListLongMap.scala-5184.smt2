; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70116 () Bool)

(assert start!70116)

(declare-fun b_free!12513 () Bool)

(declare-fun b_next!12513 () Bool)

(assert (=> start!70116 (= b_free!12513 (not b_next!12513))))

(declare-fun tp!44253 () Bool)

(declare-fun b_and!21303 () Bool)

(assert (=> start!70116 (= tp!44253 b_and!21303)))

(declare-fun b!814382 () Bool)

(declare-fun res!556346 () Bool)

(declare-fun e!451474 () Bool)

(assert (=> b!814382 (=> (not res!556346) (not e!451474))))

(declare-datatypes ((array!44634 0))(
  ( (array!44635 (arr!21373 (Array (_ BitVec 32) (_ BitVec 64))) (size!21794 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44634)

(declare-datatypes ((List!15265 0))(
  ( (Nil!15262) (Cons!15261 (h!16390 (_ BitVec 64)) (t!21590 List!15265)) )
))
(declare-fun arrayNoDuplicates!0 (array!44634 (_ BitVec 32) List!15265) Bool)

(assert (=> b!814382 (= res!556346 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15262))))

(declare-fun b!814383 () Bool)

(declare-fun e!451472 () Bool)

(declare-fun e!451473 () Bool)

(declare-fun mapRes!22915 () Bool)

(assert (=> b!814383 (= e!451472 (and e!451473 mapRes!22915))))

(declare-fun condMapEmpty!22915 () Bool)

(declare-datatypes ((V!23965 0))(
  ( (V!23966 (val!7159 Int)) )
))
(declare-datatypes ((ValueCell!6696 0))(
  ( (ValueCellFull!6696 (v!9582 V!23965)) (EmptyCell!6696) )
))
(declare-datatypes ((array!44636 0))(
  ( (array!44637 (arr!21374 (Array (_ BitVec 32) ValueCell!6696)) (size!21795 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44636)

(declare-fun mapDefault!22915 () ValueCell!6696)

(assert (=> b!814383 (= condMapEmpty!22915 (= (arr!21374 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6696)) mapDefault!22915)))))

(declare-fun mapIsEmpty!22915 () Bool)

(assert (=> mapIsEmpty!22915 mapRes!22915))

(declare-fun b!814384 () Bool)

(assert (=> b!814384 (= e!451474 (not true))))

(declare-datatypes ((tuple2!9392 0))(
  ( (tuple2!9393 (_1!4706 (_ BitVec 64)) (_2!4706 V!23965)) )
))
(declare-datatypes ((List!15266 0))(
  ( (Nil!15263) (Cons!15262 (h!16391 tuple2!9392) (t!21591 List!15266)) )
))
(declare-datatypes ((ListLongMap!8229 0))(
  ( (ListLongMap!8230 (toList!4130 List!15266)) )
))
(declare-fun lt!364606 () ListLongMap!8229)

(declare-fun lt!364605 () ListLongMap!8229)

(assert (=> b!814384 (= lt!364606 lt!364605)))

(declare-fun zeroValueBefore!34 () V!23965)

(declare-datatypes ((Unit!27716 0))(
  ( (Unit!27717) )
))
(declare-fun lt!364607 () Unit!27716)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!23965)

(declare-fun minValue!754 () V!23965)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!295 (array!44634 array!44636 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23965 V!23965 V!23965 V!23965 (_ BitVec 32) Int) Unit!27716)

(assert (=> b!814384 (= lt!364607 (lemmaNoChangeToArrayThenSameMapNoExtras!295 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2179 (array!44634 array!44636 (_ BitVec 32) (_ BitVec 32) V!23965 V!23965 (_ BitVec 32) Int) ListLongMap!8229)

(assert (=> b!814384 (= lt!364605 (getCurrentListMapNoExtraKeys!2179 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814384 (= lt!364606 (getCurrentListMapNoExtraKeys!2179 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814385 () Bool)

(declare-fun e!451471 () Bool)

(declare-fun tp_is_empty!14223 () Bool)

(assert (=> b!814385 (= e!451471 tp_is_empty!14223)))

(declare-fun b!814386 () Bool)

(declare-fun res!556349 () Bool)

(assert (=> b!814386 (=> (not res!556349) (not e!451474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44634 (_ BitVec 32)) Bool)

(assert (=> b!814386 (= res!556349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!22915 () Bool)

(declare-fun tp!44254 () Bool)

(assert (=> mapNonEmpty!22915 (= mapRes!22915 (and tp!44254 e!451471))))

(declare-fun mapValue!22915 () ValueCell!6696)

(declare-fun mapRest!22915 () (Array (_ BitVec 32) ValueCell!6696))

(declare-fun mapKey!22915 () (_ BitVec 32))

(assert (=> mapNonEmpty!22915 (= (arr!21374 _values!788) (store mapRest!22915 mapKey!22915 mapValue!22915))))

(declare-fun b!814387 () Bool)

(assert (=> b!814387 (= e!451473 tp_is_empty!14223)))

(declare-fun b!814388 () Bool)

(declare-fun res!556347 () Bool)

(assert (=> b!814388 (=> (not res!556347) (not e!451474))))

(assert (=> b!814388 (= res!556347 (and (= (size!21795 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21794 _keys!976) (size!21795 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!556348 () Bool)

(assert (=> start!70116 (=> (not res!556348) (not e!451474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70116 (= res!556348 (validMask!0 mask!1312))))

(assert (=> start!70116 e!451474))

(assert (=> start!70116 tp_is_empty!14223))

(declare-fun array_inv!17079 (array!44634) Bool)

(assert (=> start!70116 (array_inv!17079 _keys!976)))

(assert (=> start!70116 true))

(declare-fun array_inv!17080 (array!44636) Bool)

(assert (=> start!70116 (and (array_inv!17080 _values!788) e!451472)))

(assert (=> start!70116 tp!44253))

(assert (= (and start!70116 res!556348) b!814388))

(assert (= (and b!814388 res!556347) b!814386))

(assert (= (and b!814386 res!556349) b!814382))

(assert (= (and b!814382 res!556346) b!814384))

(assert (= (and b!814383 condMapEmpty!22915) mapIsEmpty!22915))

(assert (= (and b!814383 (not condMapEmpty!22915)) mapNonEmpty!22915))

(get-info :version)

(assert (= (and mapNonEmpty!22915 ((_ is ValueCellFull!6696) mapValue!22915)) b!814385))

(assert (= (and b!814383 ((_ is ValueCellFull!6696) mapDefault!22915)) b!814387))

(assert (= start!70116 b!814383))

(declare-fun m!756275 () Bool)

(assert (=> start!70116 m!756275))

(declare-fun m!756277 () Bool)

(assert (=> start!70116 m!756277))

(declare-fun m!756279 () Bool)

(assert (=> start!70116 m!756279))

(declare-fun m!756281 () Bool)

(assert (=> b!814382 m!756281))

(declare-fun m!756283 () Bool)

(assert (=> mapNonEmpty!22915 m!756283))

(declare-fun m!756285 () Bool)

(assert (=> b!814386 m!756285))

(declare-fun m!756287 () Bool)

(assert (=> b!814384 m!756287))

(declare-fun m!756289 () Bool)

(assert (=> b!814384 m!756289))

(declare-fun m!756291 () Bool)

(assert (=> b!814384 m!756291))

(check-sat (not b!814382) (not b_next!12513) tp_is_empty!14223 b_and!21303 (not mapNonEmpty!22915) (not b!814384) (not b!814386) (not start!70116))
(check-sat b_and!21303 (not b_next!12513))
