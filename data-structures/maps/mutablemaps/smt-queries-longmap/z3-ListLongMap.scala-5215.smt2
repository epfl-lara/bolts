; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70366 () Bool)

(assert start!70366)

(declare-fun b_free!12699 () Bool)

(declare-fun b_next!12699 () Bool)

(assert (=> start!70366 (= b_free!12699 (not b_next!12699))))

(declare-fun tp!44824 () Bool)

(declare-fun b_and!21529 () Bool)

(assert (=> start!70366 (= tp!44824 b_and!21529)))

(declare-fun b!817035 () Bool)

(declare-fun e!453359 () Bool)

(declare-fun e!453360 () Bool)

(declare-fun mapRes!23206 () Bool)

(assert (=> b!817035 (= e!453359 (and e!453360 mapRes!23206))))

(declare-fun condMapEmpty!23206 () Bool)

(declare-datatypes ((V!24213 0))(
  ( (V!24214 (val!7252 Int)) )
))
(declare-datatypes ((ValueCell!6789 0))(
  ( (ValueCellFull!6789 (v!9677 V!24213)) (EmptyCell!6789) )
))
(declare-datatypes ((array!44994 0))(
  ( (array!44995 (arr!21549 (Array (_ BitVec 32) ValueCell!6789)) (size!21970 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44994)

(declare-fun mapDefault!23206 () ValueCell!6789)

(assert (=> b!817035 (= condMapEmpty!23206 (= (arr!21549 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6789)) mapDefault!23206)))))

(declare-fun b!817036 () Bool)

(declare-fun e!453361 () Bool)

(declare-fun tp_is_empty!14409 () Bool)

(assert (=> b!817036 (= e!453361 tp_is_empty!14409)))

(declare-fun b!817037 () Bool)

(declare-fun e!453362 () Bool)

(assert (=> b!817037 (= e!453362 (not true))))

(declare-datatypes ((tuple2!9532 0))(
  ( (tuple2!9533 (_1!4776 (_ BitVec 64)) (_2!4776 V!24213)) )
))
(declare-datatypes ((List!15401 0))(
  ( (Nil!15398) (Cons!15397 (h!16526 tuple2!9532) (t!21734 List!15401)) )
))
(declare-datatypes ((ListLongMap!8369 0))(
  ( (ListLongMap!8370 (toList!4200 List!15401)) )
))
(declare-fun lt!366092 () ListLongMap!8369)

(declare-fun lt!366090 () ListLongMap!8369)

(assert (=> b!817037 (= lt!366092 lt!366090)))

(declare-fun zeroValueBefore!34 () V!24213)

(declare-datatypes ((array!44996 0))(
  ( (array!44997 (arr!21550 (Array (_ BitVec 32) (_ BitVec 64))) (size!21971 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44996)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24213)

(declare-fun minValue!754 () V!24213)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27854 0))(
  ( (Unit!27855) )
))
(declare-fun lt!366091 () Unit!27854)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!362 (array!44996 array!44994 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24213 V!24213 V!24213 V!24213 (_ BitVec 32) Int) Unit!27854)

(assert (=> b!817037 (= lt!366091 (lemmaNoChangeToArrayThenSameMapNoExtras!362 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2246 (array!44996 array!44994 (_ BitVec 32) (_ BitVec 32) V!24213 V!24213 (_ BitVec 32) Int) ListLongMap!8369)

(assert (=> b!817037 (= lt!366090 (getCurrentListMapNoExtraKeys!2246 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817037 (= lt!366092 (getCurrentListMapNoExtraKeys!2246 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817038 () Bool)

(declare-fun res!557853 () Bool)

(assert (=> b!817038 (=> (not res!557853) (not e!453362))))

(declare-datatypes ((List!15402 0))(
  ( (Nil!15399) (Cons!15398 (h!16527 (_ BitVec 64)) (t!21735 List!15402)) )
))
(declare-fun arrayNoDuplicates!0 (array!44996 (_ BitVec 32) List!15402) Bool)

(assert (=> b!817038 (= res!557853 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15399))))

(declare-fun b!817039 () Bool)

(declare-fun res!557852 () Bool)

(assert (=> b!817039 (=> (not res!557852) (not e!453362))))

(assert (=> b!817039 (= res!557852 (and (= (size!21970 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21971 _keys!976) (size!21970 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!817040 () Bool)

(declare-fun res!557850 () Bool)

(assert (=> b!817040 (=> (not res!557850) (not e!453362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44996 (_ BitVec 32)) Bool)

(assert (=> b!817040 (= res!557850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23206 () Bool)

(declare-fun tp!44823 () Bool)

(assert (=> mapNonEmpty!23206 (= mapRes!23206 (and tp!44823 e!453361))))

(declare-fun mapValue!23206 () ValueCell!6789)

(declare-fun mapRest!23206 () (Array (_ BitVec 32) ValueCell!6789))

(declare-fun mapKey!23206 () (_ BitVec 32))

(assert (=> mapNonEmpty!23206 (= (arr!21549 _values!788) (store mapRest!23206 mapKey!23206 mapValue!23206))))

(declare-fun res!557851 () Bool)

(assert (=> start!70366 (=> (not res!557851) (not e!453362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70366 (= res!557851 (validMask!0 mask!1312))))

(assert (=> start!70366 e!453362))

(assert (=> start!70366 tp_is_empty!14409))

(declare-fun array_inv!17213 (array!44996) Bool)

(assert (=> start!70366 (array_inv!17213 _keys!976)))

(assert (=> start!70366 true))

(declare-fun array_inv!17214 (array!44994) Bool)

(assert (=> start!70366 (and (array_inv!17214 _values!788) e!453359)))

(assert (=> start!70366 tp!44824))

(declare-fun b!817041 () Bool)

(assert (=> b!817041 (= e!453360 tp_is_empty!14409)))

(declare-fun mapIsEmpty!23206 () Bool)

(assert (=> mapIsEmpty!23206 mapRes!23206))

(assert (= (and start!70366 res!557851) b!817039))

(assert (= (and b!817039 res!557852) b!817040))

(assert (= (and b!817040 res!557850) b!817038))

(assert (= (and b!817038 res!557853) b!817037))

(assert (= (and b!817035 condMapEmpty!23206) mapIsEmpty!23206))

(assert (= (and b!817035 (not condMapEmpty!23206)) mapNonEmpty!23206))

(get-info :version)

(assert (= (and mapNonEmpty!23206 ((_ is ValueCellFull!6789) mapValue!23206)) b!817036))

(assert (= (and b!817035 ((_ is ValueCellFull!6789) mapDefault!23206)) b!817041))

(assert (= start!70366 b!817035))

(declare-fun m!758745 () Bool)

(assert (=> b!817037 m!758745))

(declare-fun m!758747 () Bool)

(assert (=> b!817037 m!758747))

(declare-fun m!758749 () Bool)

(assert (=> b!817037 m!758749))

(declare-fun m!758751 () Bool)

(assert (=> b!817038 m!758751))

(declare-fun m!758753 () Bool)

(assert (=> start!70366 m!758753))

(declare-fun m!758755 () Bool)

(assert (=> start!70366 m!758755))

(declare-fun m!758757 () Bool)

(assert (=> start!70366 m!758757))

(declare-fun m!758759 () Bool)

(assert (=> b!817040 m!758759))

(declare-fun m!758761 () Bool)

(assert (=> mapNonEmpty!23206 m!758761))

(check-sat (not b!817040) (not start!70366) (not b!817037) (not b_next!12699) (not b!817038) tp_is_empty!14409 b_and!21529 (not mapNonEmpty!23206))
(check-sat b_and!21529 (not b_next!12699))
