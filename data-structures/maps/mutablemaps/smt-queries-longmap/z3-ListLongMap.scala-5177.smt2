; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70074 () Bool)

(assert start!70074)

(declare-fun b_free!12471 () Bool)

(declare-fun b_next!12471 () Bool)

(assert (=> start!70074 (= b_free!12471 (not b_next!12471))))

(declare-fun tp!44127 () Bool)

(declare-fun b_and!21261 () Bool)

(assert (=> start!70074 (= tp!44127 b_and!21261)))

(declare-fun b!813941 () Bool)

(declare-fun e!451159 () Bool)

(assert (=> b!813941 (= e!451159 false)))

(declare-datatypes ((array!44550 0))(
  ( (array!44551 (arr!21331 (Array (_ BitVec 32) (_ BitVec 64))) (size!21752 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44550)

(declare-datatypes ((V!23909 0))(
  ( (V!23910 (val!7138 Int)) )
))
(declare-fun zeroValueAfter!34 () V!23909)

(declare-fun minValue!754 () V!23909)

(declare-datatypes ((ValueCell!6675 0))(
  ( (ValueCellFull!6675 (v!9561 V!23909)) (EmptyCell!6675) )
))
(declare-datatypes ((array!44552 0))(
  ( (array!44553 (arr!21332 (Array (_ BitVec 32) ValueCell!6675)) (size!21753 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44552)

(declare-datatypes ((tuple2!9360 0))(
  ( (tuple2!9361 (_1!4690 (_ BitVec 64)) (_2!4690 V!23909)) )
))
(declare-datatypes ((List!15235 0))(
  ( (Nil!15232) (Cons!15231 (h!16360 tuple2!9360) (t!21560 List!15235)) )
))
(declare-datatypes ((ListLongMap!8197 0))(
  ( (ListLongMap!8198 (toList!4114 List!15235)) )
))
(declare-fun lt!364430 () ListLongMap!8197)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2163 (array!44550 array!44552 (_ BitVec 32) (_ BitVec 32) V!23909 V!23909 (_ BitVec 32) Int) ListLongMap!8197)

(assert (=> b!813941 (= lt!364430 (getCurrentListMapNoExtraKeys!2163 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23909)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!364429 () ListLongMap!8197)

(assert (=> b!813941 (= lt!364429 (getCurrentListMapNoExtraKeys!2163 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813942 () Bool)

(declare-fun e!451160 () Bool)

(declare-fun e!451157 () Bool)

(declare-fun mapRes!22852 () Bool)

(assert (=> b!813942 (= e!451160 (and e!451157 mapRes!22852))))

(declare-fun condMapEmpty!22852 () Bool)

(declare-fun mapDefault!22852 () ValueCell!6675)

(assert (=> b!813942 (= condMapEmpty!22852 (= (arr!21332 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6675)) mapDefault!22852)))))

(declare-fun mapIsEmpty!22852 () Bool)

(assert (=> mapIsEmpty!22852 mapRes!22852))

(declare-fun b!813943 () Bool)

(declare-fun res!556097 () Bool)

(assert (=> b!813943 (=> (not res!556097) (not e!451159))))

(assert (=> b!813943 (= res!556097 (and (= (size!21753 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21752 _keys!976) (size!21753 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813944 () Bool)

(declare-fun tp_is_empty!14181 () Bool)

(assert (=> b!813944 (= e!451157 tp_is_empty!14181)))

(declare-fun b!813945 () Bool)

(declare-fun res!556096 () Bool)

(assert (=> b!813945 (=> (not res!556096) (not e!451159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44550 (_ BitVec 32)) Bool)

(assert (=> b!813945 (= res!556096 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!22852 () Bool)

(declare-fun tp!44128 () Bool)

(declare-fun e!451156 () Bool)

(assert (=> mapNonEmpty!22852 (= mapRes!22852 (and tp!44128 e!451156))))

(declare-fun mapKey!22852 () (_ BitVec 32))

(declare-fun mapValue!22852 () ValueCell!6675)

(declare-fun mapRest!22852 () (Array (_ BitVec 32) ValueCell!6675))

(assert (=> mapNonEmpty!22852 (= (arr!21332 _values!788) (store mapRest!22852 mapKey!22852 mapValue!22852))))

(declare-fun res!556094 () Bool)

(assert (=> start!70074 (=> (not res!556094) (not e!451159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70074 (= res!556094 (validMask!0 mask!1312))))

(assert (=> start!70074 e!451159))

(assert (=> start!70074 tp_is_empty!14181))

(declare-fun array_inv!17055 (array!44550) Bool)

(assert (=> start!70074 (array_inv!17055 _keys!976)))

(assert (=> start!70074 true))

(declare-fun array_inv!17056 (array!44552) Bool)

(assert (=> start!70074 (and (array_inv!17056 _values!788) e!451160)))

(assert (=> start!70074 tp!44127))

(declare-fun b!813946 () Bool)

(declare-fun res!556095 () Bool)

(assert (=> b!813946 (=> (not res!556095) (not e!451159))))

(declare-datatypes ((List!15236 0))(
  ( (Nil!15233) (Cons!15232 (h!16361 (_ BitVec 64)) (t!21561 List!15236)) )
))
(declare-fun arrayNoDuplicates!0 (array!44550 (_ BitVec 32) List!15236) Bool)

(assert (=> b!813946 (= res!556095 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15233))))

(declare-fun b!813947 () Bool)

(assert (=> b!813947 (= e!451156 tp_is_empty!14181)))

(assert (= (and start!70074 res!556094) b!813943))

(assert (= (and b!813943 res!556097) b!813945))

(assert (= (and b!813945 res!556096) b!813946))

(assert (= (and b!813946 res!556095) b!813941))

(assert (= (and b!813942 condMapEmpty!22852) mapIsEmpty!22852))

(assert (= (and b!813942 (not condMapEmpty!22852)) mapNonEmpty!22852))

(get-info :version)

(assert (= (and mapNonEmpty!22852 ((_ is ValueCellFull!6675) mapValue!22852)) b!813947))

(assert (= (and b!813942 ((_ is ValueCellFull!6675) mapDefault!22852)) b!813944))

(assert (= start!70074 b!813942))

(declare-fun m!755907 () Bool)

(assert (=> start!70074 m!755907))

(declare-fun m!755909 () Bool)

(assert (=> start!70074 m!755909))

(declare-fun m!755911 () Bool)

(assert (=> start!70074 m!755911))

(declare-fun m!755913 () Bool)

(assert (=> b!813941 m!755913))

(declare-fun m!755915 () Bool)

(assert (=> b!813941 m!755915))

(declare-fun m!755917 () Bool)

(assert (=> b!813946 m!755917))

(declare-fun m!755919 () Bool)

(assert (=> b!813945 m!755919))

(declare-fun m!755921 () Bool)

(assert (=> mapNonEmpty!22852 m!755921))

(check-sat (not start!70074) (not mapNonEmpty!22852) b_and!21261 tp_is_empty!14181 (not b!813946) (not b_next!12471) (not b!813941) (not b!813945))
(check-sat b_and!21261 (not b_next!12471))
