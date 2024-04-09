; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70440 () Bool)

(assert start!70440)

(declare-fun b_free!12759 () Bool)

(declare-fun b_next!12759 () Bool)

(assert (=> start!70440 (= b_free!12759 (not b_next!12759))))

(declare-fun tp!45006 () Bool)

(declare-fun b_and!21597 () Bool)

(assert (=> start!70440 (= tp!45006 b_and!21597)))

(declare-fun b!817764 () Bool)

(declare-fun res!558255 () Bool)

(declare-fun e!453882 () Bool)

(assert (=> b!817764 (=> (not res!558255) (not e!453882))))

(declare-datatypes ((array!45114 0))(
  ( (array!45115 (arr!21608 (Array (_ BitVec 32) (_ BitVec 64))) (size!22029 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45114)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((V!24293 0))(
  ( (V!24294 (val!7282 Int)) )
))
(declare-datatypes ((ValueCell!6819 0))(
  ( (ValueCellFull!6819 (v!9707 V!24293)) (EmptyCell!6819) )
))
(declare-datatypes ((array!45116 0))(
  ( (array!45117 (arr!21609 (Array (_ BitVec 32) ValueCell!6819)) (size!22030 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45116)

(assert (=> b!817764 (= res!558255 (and (= (size!22030 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22029 _keys!976) (size!22030 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!558259 () Bool)

(assert (=> start!70440 (=> (not res!558259) (not e!453882))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70440 (= res!558259 (validMask!0 mask!1312))))

(assert (=> start!70440 e!453882))

(declare-fun tp_is_empty!14469 () Bool)

(assert (=> start!70440 tp_is_empty!14469))

(declare-fun array_inv!17257 (array!45114) Bool)

(assert (=> start!70440 (array_inv!17257 _keys!976)))

(assert (=> start!70440 true))

(declare-fun e!453878 () Bool)

(declare-fun array_inv!17258 (array!45116) Bool)

(assert (=> start!70440 (and (array_inv!17258 _values!788) e!453878)))

(assert (=> start!70440 tp!45006))

(declare-fun b!817765 () Bool)

(declare-fun e!453879 () Bool)

(assert (=> b!817765 (= e!453879 tp_is_empty!14469)))

(declare-fun b!817766 () Bool)

(declare-fun e!453877 () Bool)

(assert (=> b!817766 (= e!453877 tp_is_empty!14469)))

(declare-fun b!817767 () Bool)

(declare-fun res!558258 () Bool)

(assert (=> b!817767 (=> (not res!558258) (not e!453882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45114 (_ BitVec 32)) Bool)

(assert (=> b!817767 (= res!558258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23299 () Bool)

(declare-fun mapRes!23299 () Bool)

(declare-fun tp!45007 () Bool)

(assert (=> mapNonEmpty!23299 (= mapRes!23299 (and tp!45007 e!453879))))

(declare-fun mapKey!23299 () (_ BitVec 32))

(declare-fun mapValue!23299 () ValueCell!6819)

(declare-fun mapRest!23299 () (Array (_ BitVec 32) ValueCell!6819))

(assert (=> mapNonEmpty!23299 (= (arr!21609 _values!788) (store mapRest!23299 mapKey!23299 mapValue!23299))))

(declare-fun b!817768 () Bool)

(declare-fun e!453881 () Bool)

(assert (=> b!817768 (= e!453881 true)))

(declare-fun zeroValueBefore!34 () V!24293)

(declare-fun minValue!754 () V!24293)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9580 0))(
  ( (tuple2!9581 (_1!4800 (_ BitVec 64)) (_2!4800 V!24293)) )
))
(declare-datatypes ((List!15447 0))(
  ( (Nil!15444) (Cons!15443 (h!16572 tuple2!9580) (t!21782 List!15447)) )
))
(declare-datatypes ((ListLongMap!8417 0))(
  ( (ListLongMap!8418 (toList!4224 List!15447)) )
))
(declare-fun lt!366416 () ListLongMap!8417)

(declare-fun getCurrentListMap!2388 (array!45114 array!45116 (_ BitVec 32) (_ BitVec 32) V!24293 V!24293 (_ BitVec 32) Int) ListLongMap!8417)

(assert (=> b!817768 (= lt!366416 (getCurrentListMap!2388 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23299 () Bool)

(assert (=> mapIsEmpty!23299 mapRes!23299))

(declare-fun b!817769 () Bool)

(assert (=> b!817769 (= e!453882 (not e!453881))))

(declare-fun res!558257 () Bool)

(assert (=> b!817769 (=> res!558257 e!453881)))

(assert (=> b!817769 (= res!558257 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!366414 () ListLongMap!8417)

(declare-fun lt!366417 () ListLongMap!8417)

(assert (=> b!817769 (= lt!366414 lt!366417)))

(declare-fun zeroValueAfter!34 () V!24293)

(declare-datatypes ((Unit!27900 0))(
  ( (Unit!27901) )
))
(declare-fun lt!366415 () Unit!27900)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!385 (array!45114 array!45116 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24293 V!24293 V!24293 V!24293 (_ BitVec 32) Int) Unit!27900)

(assert (=> b!817769 (= lt!366415 (lemmaNoChangeToArrayThenSameMapNoExtras!385 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2269 (array!45114 array!45116 (_ BitVec 32) (_ BitVec 32) V!24293 V!24293 (_ BitVec 32) Int) ListLongMap!8417)

(assert (=> b!817769 (= lt!366417 (getCurrentListMapNoExtraKeys!2269 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817769 (= lt!366414 (getCurrentListMapNoExtraKeys!2269 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817770 () Bool)

(assert (=> b!817770 (= e!453878 (and e!453877 mapRes!23299))))

(declare-fun condMapEmpty!23299 () Bool)

(declare-fun mapDefault!23299 () ValueCell!6819)

(assert (=> b!817770 (= condMapEmpty!23299 (= (arr!21609 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6819)) mapDefault!23299)))))

(declare-fun b!817771 () Bool)

(declare-fun res!558256 () Bool)

(assert (=> b!817771 (=> (not res!558256) (not e!453882))))

(declare-datatypes ((List!15448 0))(
  ( (Nil!15445) (Cons!15444 (h!16573 (_ BitVec 64)) (t!21783 List!15448)) )
))
(declare-fun arrayNoDuplicates!0 (array!45114 (_ BitVec 32) List!15448) Bool)

(assert (=> b!817771 (= res!558256 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15445))))

(assert (= (and start!70440 res!558259) b!817764))

(assert (= (and b!817764 res!558255) b!817767))

(assert (= (and b!817767 res!558258) b!817771))

(assert (= (and b!817771 res!558256) b!817769))

(assert (= (and b!817769 (not res!558257)) b!817768))

(assert (= (and b!817770 condMapEmpty!23299) mapIsEmpty!23299))

(assert (= (and b!817770 (not condMapEmpty!23299)) mapNonEmpty!23299))

(get-info :version)

(assert (= (and mapNonEmpty!23299 ((_ is ValueCellFull!6819) mapValue!23299)) b!817765))

(assert (= (and b!817770 ((_ is ValueCellFull!6819) mapDefault!23299)) b!817766))

(assert (= start!70440 b!817770))

(declare-fun m!759359 () Bool)

(assert (=> b!817768 m!759359))

(declare-fun m!759361 () Bool)

(assert (=> start!70440 m!759361))

(declare-fun m!759363 () Bool)

(assert (=> start!70440 m!759363))

(declare-fun m!759365 () Bool)

(assert (=> start!70440 m!759365))

(declare-fun m!759367 () Bool)

(assert (=> b!817769 m!759367))

(declare-fun m!759369 () Bool)

(assert (=> b!817769 m!759369))

(declare-fun m!759371 () Bool)

(assert (=> b!817769 m!759371))

(declare-fun m!759373 () Bool)

(assert (=> b!817771 m!759373))

(declare-fun m!759375 () Bool)

(assert (=> mapNonEmpty!23299 m!759375))

(declare-fun m!759377 () Bool)

(assert (=> b!817767 m!759377))

(check-sat (not b!817768) (not b!817771) (not b!817769) (not b!817767) (not start!70440) tp_is_empty!14469 b_and!21597 (not mapNonEmpty!23299) (not b_next!12759))
(check-sat b_and!21597 (not b_next!12759))
